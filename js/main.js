var nexmoe = {
    init: function () {
        $('.header__nav a').each(function () {
            if (this.href === location.href) {
                this.className = 'active nexmoe-list-item mdui-list-item mdui-ripple'
            }
        }).click(function () {
            $('.header__nav a').removeClass('active')
            if (this.href === location.href) {
                this.className = 'active nexmoe-list-item mdui-list-item mdui-ripple'
            }
        })
        $('.post__toc .article__toc').find("li").find("a").on('click', function (e) {
            e.preventDefault();
            let _id = $(this).attr('href');
            $('html,body').animate({scrollTop: $(_id).offset().top}, 800)
        });
    },
    backToTop: function (scrolldom, scrolltime) {
        $(scrolldom).click(function () {
            $(this).addClass("active").siblings().removeClass("active");
            $('html, body').animate({
                scrollTop: $('body').offset().top
            }, scrolltime);
            return false;
        });
    }
}
$(function () {
    nexmoe.init();
    nexmoe.backToTop(".back-to-top", 800);
});
