Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B02784ADA85
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 14:58:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DED010E5AF;
	Tue,  8 Feb 2022 13:58:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B86A810E5AF
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 13:58:25 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 l35-20020a05600c1d2300b0034d477271c1so1711174wms.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 05:58:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=BXt38BIb4BsxmoILV2hS+yHc+uwdusfiide0L8IIR1w=;
 b=QPvCr8f7gt0O2rdEekCD8+qTME+d1PPtM0V5sOWL3bUEB8tbWqHQQDQ4TK0TBubO1/
 OOeEGgPCuJi+N1RI7D4rz4v3o5dPlS3VWgT0fLpjup8sX3RJ+yes9sgJrZvn60nLCDBO
 DiPyhjP+yvCnkh9C4e9Cc1T/AnlWS7qMHGwtA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=BXt38BIb4BsxmoILV2hS+yHc+uwdusfiide0L8IIR1w=;
 b=t709qLwv4S5gkt/GRBVKf/R4pBDnj4xQR6+ph/lAPhWGoQsGq/n2Swp77gO8m6DsLH
 0ag7R0UobfFTth/XL1FxB/SAgLYS6LDx102BID8mZ5rDfCCaeEsmCH0fMtTJmVCHauvo
 fn7ULFOcWsi4wV4E0KXVmy50ifPXX8LP6200DHMjjKuZI3UpHvfVtaVMGjVWXBPOOkOg
 t45HwX5WV1wXDQnc7Nrr93OT/C7Sv7UVY9r88VK54w4Srhzf+mn0ljgpRxnCFbpPYuct
 QuukvNUNZPFjDr1MN6nOyVnrelLSkFKh6iLpKWor3qnh7hul9bnd9lM7om9fD4MUzsUN
 WagA==
X-Gm-Message-State: AOAM530MiN8tuYJbqZWuPlBceOj4+rOVc/HcwPSUwJ1Vi4w3EV3rDFtu
 sQ71wDJnxjd1QWhcZJvzC15jtw==
X-Google-Smtp-Source: ABdhPJzdeujBUAvhxBgM0LVFjxQE9jxZBHA6iHD27bYNRbhNiWAgC4twmcARBAp52TAiQ2rAx4vANw==
X-Received: by 2002:a05:600c:3848:: with SMTP id
 s8mr1230909wmr.151.1644328704022; 
 Tue, 08 Feb 2022 05:58:24 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k6sm3370850wms.14.2022.02.08.05.58.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 05:58:23 -0800 (PST)
Date: Tue, 8 Feb 2022 14:58:21 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <YgJ2/f/JkKlyTJdh@phenom.ffwll.local>
Mail-Followup-To: Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org, Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Claudio Suarez <cssk@net-c.es>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
 <20220131210552.482606-19-daniel.vetter@ffwll.ch>
 <Yf2HTungn5DFhAPa@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yf2HTungn5DFhAPa@ravnborg.org>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
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
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 04, 2022 at 09:06:38PM +0100, Sam Ravnborg wrote:
> Hi Daniel,
> 
> On Mon, Jan 31, 2022 at 10:05:49PM +0100, Daniel Vetter wrote:
> > There's a bunch of confusions going on here:
> > - The deferred fbcon setup notifier should only be cleaned up from
> >   fb_console_exit(), to be symmetric with fb_console_init()
> > - We also need to make sure we don't race with the work, which means
> >   temporarily dropping the console lock (or we can deadlock)
> > - That also means no point in clearing deferred_takeover, we are
> >   unloading everything anyway.
> > - Finally rename fbcon_exit to fbcon_release_all and move it, since
> >   that's what's it doing when being called from consw->con_deinit
> >   through fbcon_deinit.
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: Claudio Suarez <cssk@net-c.es>
> > Cc: Du Cheng <ducheng2@gmail.com>
> > Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> > ---
> >  drivers/video/fbdev/core/fbcon.c | 63 ++++++++++++++++----------------
> >  1 file changed, 32 insertions(+), 31 deletions(-)
> > 
> > diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
> > index 5c14e24d14a1..22581952b4fd 100644
> > --- a/drivers/video/fbdev/core/fbcon.c
> > +++ b/drivers/video/fbdev/core/fbcon.c
> > @@ -185,7 +185,6 @@ static void fbcon_set_disp(struct fb_info *info, struct fb_var_screeninfo *var,
> >  			   int unit);
> >  static void fbcon_modechanged(struct fb_info *info);
> >  static void fbcon_set_all_vcs(struct fb_info *info);
> > -static void fbcon_exit(void);
> >  
> >  static struct device *fbcon_device;
> >  
> > @@ -1149,6 +1148,27 @@ static void fbcon_free_font(struct fbcon_display *p, bool freefont)
> >  
> >  static void set_vc_hi_font(struct vc_data *vc, bool set);
> >  
> > +static void fbcon_release_all(void)
> > +{
> > +	struct fb_info *info;
> > +	int i, j, mapped;
> > +
> > +	for_each_registered_fb(i) {
> > +		mapped = 0;
> > +		info = registered_fb[i];
> > +
> > +		for (j = first_fb_vc; j <= last_fb_vc; j++) {
> > +			if (con2fb_map[j] == i) {
> > +				mapped = 1;
> > +				con2fb_map[j] = -1;
> > +			}
> > +		}
> > +
> > +		if (mapped)
> > +			fbcon_release(info);
> > +	}
> > +}
> > +
> >  static void fbcon_deinit(struct vc_data *vc)
> >  {
> >  	struct fbcon_display *p = &fb_display[vc->vc_num];
> > @@ -1188,7 +1208,7 @@ static void fbcon_deinit(struct vc_data *vc)
> >  		set_vc_hi_font(vc, false);
> >  
> >  	if (!con_is_bound(&fb_con))
> > -		fbcon_exit();
> > +		fbcon_release_all();
> >  
> >  	if (vc->vc_num == logo_shown)
> >  		logo_shown = FBCON_LOGO_CANSHOW;
> > @@ -3316,34 +3336,6 @@ static void fbcon_start(void)
> >  #endif
> >  }
> >  
> > -static void fbcon_exit(void)
> > -{
> > -	struct fb_info *info;
> > -	int i, j, mapped;
> > -
> > -#ifdef CONFIG_FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER
> > -	if (deferred_takeover) {
> > -		dummycon_unregister_output_notifier(&fbcon_output_nb);
> > -		deferred_takeover = false;
> > -	}
> > -#endif
> > -
> > -	for_each_registered_fb(i) {
> > -		mapped = 0;
> > -		info = registered_fb[i];
> > -
> > -		for (j = first_fb_vc; j <= last_fb_vc; j++) {
> > -			if (con2fb_map[j] == i) {
> > -				mapped = 1;
> > -				con2fb_map[j] = -1;
> > -			}
> > -		}
> > -
> > -		if (mapped)
> > -			fbcon_release(info);
> > -	}
> > -}
> > -
> >  void __init fb_console_init(void)
> >  {
> >  	int i;
> > @@ -3383,10 +3375,19 @@ static void __exit fbcon_deinit_device(void)
> >  
> >  void __exit fb_console_exit(void)
> >  {
> > +#ifdef CONFIG_FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER
> > +	console_lock();
> > +	if (deferred_takeover)
> > +		dummycon_unregister_output_notifier(&fbcon_output_nb);
> > +	console_unlock();
> > +
> > +	cancel_work_sync(&fbcon_deferred_takeover_work);
> > +#endif
> > +
> >  	console_lock();
> >  	fbcon_deinit_device();
> >  	device_destroy(fb_class, MKDEV(0, 0));
> > -	fbcon_exit();
> > +
> We loose the call to fbcon_release_all() here.
> We have part of the old fbcon_exit() above, but miss the release parts.
> 
> Maybe I missed something obvious?

Ah yes that's the entire point of this change. The release_all in the
fbcon exit path was only needed when fbcon was a separate module
indepedent from core fb.ko. Which means it was possible to unload fbcon
while having fbdev drivers registered.

But since we've merged them that has become impossible, so by the time the
fb.ko module can be unloaded, there's guaranteed to be no fbdev drivers
left. And hence removing them is pointless.

Ack with that explainer added to the commit message?
-Daniel

> 
> The rest looks fine.
> 
> 	Sam
> 
> >  	do_unregister_con_driver(&fb_con);
> >  	console_unlock();
> >  }	
> > -- 
> > 2.33.0

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
