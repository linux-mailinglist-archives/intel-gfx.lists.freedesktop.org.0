Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 895604AE2B0
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 21:56:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B82F10E11F;
	Tue,  8 Feb 2022 20:56:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCE3E10E11F
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 20:56:42 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id h6so504202wrb.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 12:56:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=8rCyE259QoTAuF9ujcMI8WQXkRdDBnGG4G9shkzQjfs=;
 b=TClcMH3/O8IpIo3td4YsN56mO1iC7OT2x7WX2FMn/DpIGkX8EwvlmyzJbHfyaO9kmA
 QR+OyCNEr5uu9lVSwWwjtgl0lfk3CYGV3p3l0yw3SkRJWXcGZ93pUtqvBqM9Zhqox2W1
 OsfUI+doa0d/YIr1nV4EX0pA8AvKm9sFFLitM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=8rCyE259QoTAuF9ujcMI8WQXkRdDBnGG4G9shkzQjfs=;
 b=dS3WFJiXWvQsocb4wAKz0uphydcjX8s4fhHhhsg0aA4BkwgtqWHQ541/vjnV6JD5Hs
 /XlJnBmS1qFApcouyMFCZJdO1VRiMFl5Y1ZL14WazqtcGQ1jQdYVvO0UEgwJqJfIq2UN
 v0R1vjB/+/cWeGS6zmyXkUs3BKCKFw44QaOPb2w6+R2TfQnvCam75YY3g+9+gPTcPeXq
 FPjOa2hN6YES5MZhKOhiiUJEYUqUk1vNTZcG9j1ewAJIq34aEUdO4WixFA6DE7DCh0tF
 CCccd2cqk7IaV+y1q7WM4zcDNXfYMiFqJt5TXge/0juOs/A2nlukOLfapKQnSgSTS7tc
 IQbg==
X-Gm-Message-State: AOAM531bxPk/dddmmvdBTG9EOyBiAmyBd8Xl/UhYSHddTW/mMDgV19l3
 xlLTuQ3yhmBz1idUN6bmR5J0Vw==
X-Google-Smtp-Source: ABdhPJz/N9Po0VxZ50ccE3Hf10GsDJ0883pAqCSvxgXcU5GA5wUMfraP7XMA8MXRBfr2C51K9jlMiQ==
X-Received: by 2002:a05:6000:1a89:: with SMTP id
 f9mr5048305wry.573.1644353801125; 
 Tue, 08 Feb 2022 12:56:41 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b16sm3490549wrj.26.2022.02.08.12.56.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 12:56:40 -0800 (PST)
Date: Tue, 8 Feb 2022 21:56:38 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <YgLZBlrXW+DYNkFN@phenom.ffwll.local>
Mail-Followup-To: Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org, Zheyu Ma <zheyuma97@gmail.com>,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>,
 Jens Frederich <jfrederich@gmail.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-staging@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 Zhen Lei <thunder.leizhen@huawei.com>,
 Guenter Roeck <linux@roeck-us.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jon Nettleton <jon.nettleton@gmail.com>,
 Helge Deller <deller@gmx.de>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
 <20220131210552.482606-22-daniel.vetter@ffwll.ch>
 <YgK91i6zHWPBwYOq@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YgK91i6zHWPBwYOq@ravnborg.org>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 21/21] fbdev: Make registered_fb[] private
 to fbmem.c
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
Cc: linux-fbdev@vger.kernel.org, linux-staging@lists.linux.dev,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>, Jens Frederich <jfrederich@gmail.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Zheyu Ma <zheyuma97@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthew Wilcox <willy@infradead.org>, Helge Deller <deller@gmx.de>,
 Zhen Lei <thunder.leizhen@huawei.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jon Nettleton <jon.nettleton@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 08, 2022 at 08:00:38PM +0100, Sam Ravnborg wrote:
> Hi Daniel,
> 
> On Mon, Jan 31, 2022 at 10:05:52PM +0100, Daniel Vetter wrote:
> > Well except when the olpc dcon fbdev driver is enabled, that thing
> > digs around in there in rather unfixable ways.
> > 
> > Cc oldc_dcon maintainers as fyi.
> > 
> > Cc: Jens Frederich <jfrederich@gmail.com>
> > Cc: Jon Nettleton <jon.nettleton@gmail.com>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: linux-staging@lists.linux.dev
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: Helge Deller <deller@gmx.de>
> > Cc: Matthew Wilcox <willy@infradead.org>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
> > Cc: Zhen Lei <thunder.leizhen@huawei.com>
> > Cc: Alex Deucher <alexander.deucher@amd.com>
> > Cc: Xiyu Yang <xiyuyang19@fudan.edu.cn>
> > Cc: linux-fbdev@vger.kernel.org
> > Cc: Zheyu Ma <zheyuma97@gmail.com>
> > Cc: Guenter Roeck <linux@roeck-us.net>
> 
> with the build thingy fixed:
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> 
> I do wonder if there is a more clean way to trigger a blank
> in the main fbdev driver from the olpc driver.
> 
> The current hack is not nice and it would be good to see it gone.

Yeah this is just badly engineered. In drm we'd do this with the self
refresh helpers, which pretty much give you this exact functionality, but
in the helpers, while not randomly breaking actual visible behaviour of
the display driver.

Well ok the illusion is not perfect, since if the display is suspended the
next page flip will take a tad longer. But that's it.

I'll also add this to the TODO.
-Daniel

> 
> 	Sam
> 
> > ---
> >  drivers/video/fbdev/core/fbmem.c | 8 ++++++--
> >  include/linux/fb.h               | 7 +++----
> >  2 files changed, 9 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/video/fbdev/core/fbmem.c b/drivers/video/fbdev/core/fbmem.c
> > index 904ef1250677..dad6572942fa 100644
> > --- a/drivers/video/fbdev/core/fbmem.c
> > +++ b/drivers/video/fbdev/core/fbmem.c
> > @@ -48,10 +48,14 @@
> >  static DEFINE_MUTEX(registration_lock);
> >  
> >  struct fb_info *registered_fb[FB_MAX] __read_mostly;
> > -EXPORT_SYMBOL(registered_fb);
> > -
> >  int num_registered_fb __read_mostly;
> > +#if IS_ENABLED(CONFIG_OLPC_DCON)
> > +EXPORT_SYMBOL(registered_fb);
> >  EXPORT_SYMBOL(num_registered_fb);
> > +#endif
> > +#define for_each_registered_fb(i)		\
> > +	for (i = 0; i < FB_MAX; i++)		\
> > +		if (!registered_fb[i]) {} else
> >  
> >  bool fb_center_logo __read_mostly;
> >  
> > diff --git a/include/linux/fb.h b/include/linux/fb.h
> > index a8a00d2ba1f3..e236817502c2 100644
> > --- a/include/linux/fb.h
> > +++ b/include/linux/fb.h
> > @@ -622,16 +622,15 @@ extern int fb_get_color_depth(struct fb_var_screeninfo *var,
> >  extern int fb_get_options(const char *name, char **option);
> >  extern int fb_new_modelist(struct fb_info *info);
> >  
> > +#if IS_ENABLED(CONFIG_OLPC_DCON)
> >  extern struct fb_info *registered_fb[FB_MAX];
> > +
> >  extern int num_registered_fb;
> > +#endif
> >  extern bool fb_center_logo;
> >  extern int fb_logo_count;
> >  extern struct class *fb_class;
> >  
> > -#define for_each_registered_fb(i)		\
> > -	for (i = 0; i < FB_MAX; i++)		\
> > -		if (!registered_fb[i]) {} else
> > -
> >  static inline void lock_fb_info(struct fb_info *info)
> >  {
> >  	mutex_lock(&info->lock);
> > -- 
> > 2.33.0

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
