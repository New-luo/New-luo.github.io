document.addEventListener('DOMContentLoaded', () => {
    // 获取所有标签和内容
    const tabs = document.querySelectorAll('.tab');
    const contents = document.querySelectorAll('.content');
    const notification = document.getElementById('notification');
    const tabNameSpan = document.getElementById('tab-name');
    console.log('Tabs:', tabs);
    console.log('Contents:', contents);

    // 显示通知
    function showNotification(tabName) {
        const tabNames = {
            'Social': '社交媒体',
            'Coding': '编程开发',
            'Design': '设计资源',
            'Productivity': '效率工具'
        };
        tabNameSpan.textContent = tabNames[tabName] || tabName;
        notification.classList.add('show');
        setTimeout(() => {
            notification.classList.remove('show');
        }, 2000);
    }

    // 切换标签函数
    function switchTab(tabName) {
        console.log('Switching to tab:', tabName);
        // 更新标签状态
        tabs.forEach(tab => {
            tab.classList.remove('active');
            if (tab.dataset.tab === tabName) {
                tab.classList.add('active');
            }
        });
        // 更新内容显示
        contents.forEach(content => {
            content.classList.remove('active');
            if (content.id === `content-${tabName}`) {
                content.classList.add('active');
            }
        });
        // 保存用户选择到localStorage
        localStorage.setItem('lastActiveTab', tabName);
        // 显示通知
        showNotification(tabName);
    }

    // 绑定标签点击事件
    tabs.forEach(tab => {
        tab.addEventListener('click', () => {
            switchTab(tab.dataset.tab);
        });
    });

    // 初始化标签状态
    function initTabs() {
        console.log('Initializing tabs...');
        // 检查URL中是否有标签参数
        const urlParams = new URLSearchParams(window.location.search);
        const tabParam = urlParams.get('tab');
        // 尝试从URL参数获取标签
        if (tabParam && document.getElementById(`content-${tabParam}`)) {
            switchTab(tabParam);
            console.log('Tab from URL:', tabParam);
        } else {
            // 尝试从localStorage获取上次选择的标签
            const lastActiveTab = localStorage.getItem('lastActiveTab');
            if (lastActiveTab && document.getElementById(`content-${lastActiveTab}`)) {
                switchTab(lastActiveTab);
                console.log('Tab from localStorage:', lastActiveTab);
            } else {
                // 默认激活第一个标签
                switchTab(tabs[0].dataset.tab);
                console.log('Default tab:', tabs[0].dataset.tab);
            }
        }
    }

    // 初始化标签
    initTabs();
});