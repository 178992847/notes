1、如何获取当前页面的滚动位置？
-------
const getScrollPosition = (el = window) => ({
  x: el.pageXOffset !== undefined ? el.pageXOffset : el.scrollLeft,
  y: el.pageYOffset !== undefined ? el.pageYOffset : el.scrollTop
})

// 事例
getScrollPosition(); // {x: 0, y: 200}

2、如何平滑滚动到页面顶部（back to Top）
-------
const scrollToTop = () => {
  const c = document.documentElement.scrollTop || document.body.scrollTop
  if (c > 0) {
    window.requestAnimationFrame(scrollToTop)
    window.scrollTo(0, c - c / 8)
  }
}

// 事例
scrollToTop()

3、如何确定设备是移动设备还是台式机/笔记本电脑？
-------- 
const detectDeviceType = () =>
  /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)
    ? 'Mobile'
    : 'Desktop'

// 事例
detectDeviceType() // "Mobile" or "Desktop"
