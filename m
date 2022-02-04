Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED0F4AA0E2
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 21:06:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 722EA10E477;
	Fri,  4 Feb 2022 20:06:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.smtp.larsendata.com (mx1.smtp.larsendata.com
 [91.221.196.215])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 487EF10E499
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Feb 2022 20:06:42 +0000 (UTC)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx1.smtp.larsendata.com (Halon) with ESMTPS
 id 1ba87e0c-85f6-11ec-b20b-0050568c148b;
 Fri, 04 Feb 2022 20:07:41 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id 92CD0194B8B;
 Fri,  4 Feb 2022 21:06:40 +0100 (CET)
Date: Fri, 4 Feb 2022 21:06:38 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <Yf2HTungn5DFhAPa@ravnborg.org>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
 <20220131210552.482606-19-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220131210552.482606-19-daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 18/21] fbcon: untangle fbcon_exit
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: linux-fbdev@vger.kernel.org, Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Daniel,

On Mon, Jan 31, 2022 at 10:05:49PM +0100, Daniel Vetter wrote:
> There's a bunch of confusions going on here:
> - The deferred fbcon setup notifier should only be cleaned up from
>   fb_console_exit(), to be symmetric with fb_console_init()
> - We also need to make sure we don't race with the work, which means
>   temporarily dropping the console lock (or we can deadlock)
> - That also means no point in clearing deferred_takeover, we are
>   unloading everything anyway.
> - Finally rename fbcon_exit to fbcon_release_all and move it, since
>   that's what's it doing when being called from consw->con_deinit
>   through fbcon_deinit.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Claudio Suarez <cssk@net-c.es>
> Cc: Du Cheng <ducheng2@gmail.com>
> Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> ---
>  drivers/video/fbdev/core/fbcon.c | 63 ++++++++++++++++----------------
>  1 file changed, 32 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
> index 5c14e24d14a1..22581952b4fd 100644
> --- a/drivers/video/fbdev/core/fbcon.c
> +++ b/drivers/video/fbdev/core/fbcon.c
> @@ -185,7 +185,6 @@ static void fbcon_set_disp(struct fb_info *info, struct fb_var_screeninfo *var,
>  			   int unit);
>  static void fbcon_modechanged(struct fb_info *info);
>  static void fbcon_set_all_vcs(struct fb_info *info);
> -static void fbcon_exit(void);
>  
>  static struct device *fbcon_device;
>  
> @@ -1149,6 +1148,27 @@ static void fbcon_free_font(struct fbcon_display *p, bool freefont)
>  
>  static void set_vc_hi_font(struct vc_data *vc, bool set);
>  
> +static void fbcon_release_all(void)
> +{
> +	struct fb_info *info;
> +	int i, j, mapped;
> +
> +	for_each_registered_fb(i) {
> +		mapped = 0;
> +		info = registered_fb[i];
> +
> +		for (j = first_fb_vc; j <= last_fb_vc; j++) {
> +			if (con2fb_map[j] == i) {
> +				mapped = 1;
> +				con2fb_map[j] = -1;
> +			}
> +		}
> +
> +		if (mapped)
> +			fbcon_release(info);
> +	}
> +}
> +
>  static void fbcon_deinit(struct vc_data *vc)
>  {
>  	struct fbcon_display *p = &fb_display[vc->vc_num];
> @@ -1188,7 +1208,7 @@ static void fbcon_deinit(struct vc_data *vc)
>  		set_vc_hi_font(vc, false);
>  
>  	if (!con_is_bound(&fb_con))
> -		fbcon_exit();
> +		fbcon_release_all();
>  
>  	if (vc->vc_num == logo_shown)
>  		logo_shown = FBCON_LOGO_CANSHOW;
> @@ -3316,34 +3336,6 @@ static void fbcon_start(void)
>  #endif
>  }
>  
> -static void fbcon_exit(void)
> -{
> -	struct fb_info *info;
> -	int i, j, mapped;
> -
> -#ifdef CONFIG_FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER
> -	if (deferred_takeover) {
> -		dummycon_unregister_output_notifier(&fbcon_output_nb);
> -		deferred_takeover = false;
> -	}
> -#endif
> -
> -	for_each_registered_fb(i) {
> -		mapped = 0;
> -		info = registered_fb[i];
> -
> -		for (j = first_fb_vc; j <= last_fb_vc; j++) {
> -			if (con2fb_map[j] == i) {
> -				mapped = 1;
> -				con2fb_map[j] = -1;
> -			}
> -		}
> -
> -		if (mapped)
> -			fbcon_release(info);
> -	}
> -}
> -
>  void __init fb_console_init(void)
>  {
>  	int i;
> @@ -3383,10 +3375,19 @@ static void __exit fbcon_deinit_device(void)
>  
>  void __exit fb_console_exit(void)
>  {
> +#ifdef CONFIG_FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER
> +	console_lock();
> +	if (deferred_takeover)
> +		dummycon_unregister_output_notifier(&fbcon_output_nb);
> +	console_unlock();
> +
> +	cancel_work_sync(&fbcon_deferred_takeover_work);
> +#endif
> +
>  	console_lock();
>  	fbcon_deinit_device();
>  	device_destroy(fb_class, MKDEV(0, 0));
> -	fbcon_exit();
> +
We loose the call to fbcon_release_all() here.
We have part of the old fbcon_exit() above, but miss the release parts.

Maybe I missed something obvious?

The rest looks fine.

	Sam

>  	do_unregister_con_driver(&fb_con);
>  	console_unlock();
>  }	
> -- 
> 2.33.0
