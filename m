Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BFF14BC8C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 16:02:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAEBF6EE69;
	Tue, 28 Jan 2020 15:02:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 476D16E06B
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 15:02:06 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id p17so2916373wma.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 07:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7XoF0plGDCzaQQj/DdAEdPuSDr2qTr4cuR0UW8Rmz84=;
 b=W6nYxWEz+rkPjKwxlUEnXVMdEJ5kUG6KxMml96C/WQBYBsJuTmt4kTbb9ClSDd28sH
 OyBY1p3iA5iMnfwQrR+Nw3V6TIzr/JgRUaTB/YqiNdsLwoftqDFcRj3FONPK5YTBXBmb
 Ms/tZB5ymClVZsLurBYs/MfWLEkhBe5G0M2W8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7XoF0plGDCzaQQj/DdAEdPuSDr2qTr4cuR0UW8Rmz84=;
 b=UV0F180yv9+xcLk98u10GT2SJ1Q0ZoVcecKugsFvoa7uZgqMGqDt9tezmP+lQxSzGv
 REXziaw7QB+4kAZgegibLHF4YKAC7ZdplKGhU5+gcJ+BCzFyOWMKu6A1Tkg0+kqcSJ/H
 Q6HfVYYopSILdHS76zmfJc+UxiUpZq1xyb9i4ohHaZ2IVb83sDYiuFTmO/BK40iTcxpC
 kHg9K1dq9631/gLnmyWNNv52K4o0RVQ6zCto3zGuY2rJoLUU8LPF8HJUZiXRaMRzKCqY
 52GnhzPxaGKHOtFWZMDsc4KBNpq5EWJ2O8+4CWu3IA2XdphXnIRrBWPMQEe8wavS+fcW
 8chg==
X-Gm-Message-State: APjAAAXktgOg3iPgQnNG9V9pMgJjC6IccTT1EfkSlHv8k+FdAzWqxgmP
 bFrMvTLUC7SCFUsODXVaY7Qdl1fYqVGT2w==
X-Google-Smtp-Source: APXvYqz2B0u+017u8gfxyGI38dajvt8J16sEWM3hF4TXxjVbukoktIS7OTSNcojeoSomzACzCnXGfg==
X-Received: by 2002:a7b:c753:: with SMTP id w19mr5656661wmk.34.1580223724968; 
 Tue, 28 Jan 2020 07:02:04 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u1sm3275039wmc.5.2020.01.28.07.02.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 07:02:04 -0800 (PST)
Date: Tue, 28 Jan 2020 16:02:02 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200128150202.GG43062@phenom.ffwll.local>
References: <20200128104602.1459802-1-daniel.vetter@ffwll.ch>
 <158020847932.30113.5492073782079336156@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158020847932.30113.5492073782079336156@skylake-alporthouse-com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/4] drm: Complain if drivers still use the
 ->load callback
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 28, 2020 at 10:47:59AM +0000, Chris Wilson wrote:
> Quoting Daniel Vetter (2020-01-28 10:45:58)
> > Kinda time to get this sorted. The locking around this really is not
> > nice.
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >  drivers/gpu/drm/drm_drv.c | 6 ++++++
> >  include/drm/drm_drv.h     | 3 +++
> >  2 files changed, 9 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> > index 7c18a980cd4b..8deff75b484c 100644
> > --- a/drivers/gpu/drm/drm_drv.c
> > +++ b/drivers/gpu/drm/drm_drv.c
> > @@ -948,6 +948,12 @@ int drm_dev_register(struct drm_device *dev, unsigned long flags)
> >  
> >         mutex_lock(&drm_global_mutex);
> >  
> > +       if (dev->driver->load) {
> > +               if (!drm_core_check_feature(dev, DRIVER_LEGACY))
> > +                       DRM_INFO("drm driver %s is using deprecated ->load callback\n",
> > +                                dev->driver->name);
> 
> DRM_WARN() if the plan is to remove it?

Consensus from the security check work that Kees Cook is doing seems to
be:
- Put new thing in place, convert lots
- Start to do opt-in/informational stuff
- Once you're sure it's all gone, put in the big splat that kills the
  box/driver. Apparently radeon/amdgpu are the hold-outs, once those are
  done I think I'll just outright disable ->load/unload for
  !DRIVER_LEGACY.

Cheers, Daniel

> That should encourage people to complain louder.
> -Chris
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
