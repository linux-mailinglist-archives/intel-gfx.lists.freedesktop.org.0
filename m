Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E56824FF36E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 11:25:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A82F10F0A5;
	Wed, 13 Apr 2022 09:25:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B2DF10F0A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 09:25:06 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id 21so1652695edv.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 02:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4a+KwZ9O7ePc1lJlI7Aul+JRsitXWR/8aN0R46dtP1g=;
 b=d5++MrZ49m3/7hfX8bHqQn1ZwneBnzCFt+huh+QmSz7czye923xn+t0niWJyEXc1N3
 RIa3RBWXx5nGU+w32dxGUWxGmwKkbF6+DK3s4yAJsyNubZIfHNWhqJ/Lnhj7bMzgJd2L
 ZKdW1p/lTN1EmOcTHz2cZ15LqxoIVRsaGybrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4a+KwZ9O7ePc1lJlI7Aul+JRsitXWR/8aN0R46dtP1g=;
 b=DsOEdVRclLC7pAxbKcw8Q3HG6R++6iODRxNAdDWwckhdjacmbkUNatbqsMyBSIhnZl
 OTBqjAZtaoHgh8tj6bK7L/CdCnsZ/Mz5MvRM0ts8ZB5sOdmpmvfB1w6OefKrvjNO5tVr
 aqLAEwTbAsqdcEyfukn3yk46kOcB7JcliDghUlBz8nzVoFUUJGeJN6vvPd+lQBN89lQ9
 0xI/+1kmkCoJXxTs7dWncgEltHnr2KeO5XQ9ttSjlhH1B1ewGk+lhStKTR1BUPvFzksf
 /tV7cL0qy9VyoiAgOjVA6I0UK/8gH04017eO/PGAs3c2tvfjsysA07QjFTw9BAb6M4VW
 Uikg==
X-Gm-Message-State: AOAM532axMBGW48XgTOx1BWqZzqlXtiXlgilfC6Vz1KeIlhRmoYb7NV4
 KV/06i6ZSPbJKR18Tyfgy09dKQ==
X-Google-Smtp-Source: ABdhPJxMfrNLcHwSkWqBAyaWOKHQCj1lJBLsPAFGNtXSvqojqiOSV5Tnb2nI+vJvSdN4FufjNogQEQ==
X-Received: by 2002:aa7:db0f:0:b0:41d:7b44:2613 with SMTP id
 t15-20020aa7db0f000000b0041d7b442613mr14222034eds.126.1649841904607; 
 Wed, 13 Apr 2022 02:25:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 gj3-20020a170906e10300b006e8ac161bcfsm1980889ejb.203.2022.04.13.02.25.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 02:25:04 -0700 (PDT)
Date: Wed, 13 Apr 2022 11:25:02 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <YlaW7mq/LbHMN7AZ@phenom.ffwll.local>
References: <20220413082128.348186-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220413082128.348186-1-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] fbcon: Fix delayed takeover locking
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
Cc: Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Zheyu Ma <zheyuma97@gmail.com>, Javier Martinez Canillas <javierm@redhat.com>,
 Matthew Wilcox <willy@infradead.org>, Nathan Chancellor <nathan@kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>, Guenter Roeck <linux@roeck-us.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 13, 2022 at 10:21:28AM +0200, Daniel Vetter wrote:
> I messed up the delayed takover path in the locking conversion in
> 6e7da3af008b ("fbcon: Move console_lock for register/unlink/unregister").
> 
> Fix it by re-extracting the lockless function and using it in the
> delayed takeover path, where we need to hold the lock already to
> iterate over the list of already registered fb. Well the current code
> still is broken in there (since the list is protected by a
> registration_lock, which we can't take here because it nests the other
> way round with console_lock), but in the future this will be a list
> protected by console_lock when this is all sorted out.
> 
> Reported-by: Nathan Chancellor <nathan@kernel.org>
> Cc: Nathan Chancellor <nathan@kernel.org>

Nathan, if you can supply a tested-by today still I could push it before I
disappear into easter w/e. I'm pretty sure this is it, but better safe
than sorry.
-Daniel

> Fixes: 6e7da3af008b ("fbcon: Move console_lock for register/unlink/unregister")
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Du Cheng <ducheng2@gmail.com>
> Cc: Claudio Suarez <cssk@net-c.es>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> Cc: Matthew Wilcox <willy@infradead.org>
> Cc: Zheyu Ma <zheyuma97@gmail.com>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Cc: Helge Deller <deller@gmx.de>
> Cc: Geert Uytterhoeven <geert@linux-m68k.org>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> ---
>  drivers/video/fbdev/core/fbcon.c | 28 ++++++++++++++++++----------
>  1 file changed, 18 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
> index 6a7d470beec7..b4e43b39d9a8 100644
> --- a/drivers/video/fbdev/core/fbcon.c
> +++ b/drivers/video/fbdev/core/fbcon.c
> @@ -2772,7 +2772,6 @@ static void fbcon_unbind(void)
>  static inline void fbcon_unbind(void) {}
>  #endif /* CONFIG_VT_HW_CONSOLE_BINDING */
>  
> -/* called with console_lock held */
>  void fbcon_fb_unbind(struct fb_info *info)
>  {
>  	int i, new_idx = -1;
> @@ -2822,7 +2821,6 @@ void fbcon_fb_unbind(struct fb_info *info)
>  	console_unlock();
>  }
>  
> -/* called with console_lock held */
>  void fbcon_fb_unregistered(struct fb_info *info)
>  {
>  	int i, idx;
> @@ -2928,14 +2926,11 @@ MODULE_PARM_DESC(lockless_register_fb,
>  	"Lockless framebuffer registration for debugging [default=off]");
>  
>  /* called with console_lock held */
> -int fbcon_fb_registered(struct fb_info *info)
> +static int do_fb_registered(struct fb_info *info)
>  {
>  	int ret = 0, i, idx;
>  
> -	if (!lockless_register_fb)
> -		console_lock();
> -	else
> -		atomic_inc(&ignore_console_lock_warning);
> +	WARN_CONSOLE_UNLOCKED();
>  
>  	fbcon_registered_fb[info->node] = info;
>  	fbcon_num_registered_fb++;
> @@ -2945,7 +2940,7 @@ int fbcon_fb_registered(struct fb_info *info)
>  
>  	if (deferred_takeover) {
>  		pr_info("fbcon: Deferring console take-over\n");
> -		goto out;
> +		return 0;
>  	}
>  
>  	if (info_idx == -1) {
> @@ -2965,7 +2960,20 @@ int fbcon_fb_registered(struct fb_info *info)
>  		}
>  	}
>  
> -out:
> +	return ret;
> +}
> +
> +int fbcon_fb_registered(struct fb_info *info)
> +{
> +	int ret;
> +
> +	if (!lockless_register_fb)
> +		console_lock();
> +	else
> +		atomic_inc(&ignore_console_lock_warning);
> +
> +	ret = do_fb_registered(info);
> +
>  	if (!lockless_register_fb)
>  		console_unlock();
>  	else
> @@ -3280,7 +3288,7 @@ static void fbcon_register_existing_fbs(struct work_struct *work)
>  	logo_shown = FBCON_LOGO_DONTSHOW;
>  
>  	fbcon_for_each_registered_fb(i)
> -		fbcon_fb_registered(fbcon_registered_fb[i]);
> +		do_fb_registered(fbcon_registered_fb[i]);
>  
>  	console_unlock();
>  }
> -- 
> 2.34.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
