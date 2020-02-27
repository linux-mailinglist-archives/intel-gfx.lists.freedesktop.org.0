Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBC717255E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 18:46:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68B406E073;
	Thu, 27 Feb 2020 17:46:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 844746E083
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 17:46:56 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id j7so4458095wrp.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 09:46:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=70aqxkS3NxHV9F5C3IPmK5hfce2NFGEmVqiZUXpXbIc=;
 b=f0LEmJaAL6Va8rYS/Cy9thYL+A/usOGWaNkG+ffgd/i9wcAngBT+wb+WgWIVwp6wQB
 2v3PFXRP14N63GPXYld2qVvavMnWBPeXx5X6GwWk98xT0B/xel/Ip1sfmw2E0icZBaJM
 ItgEJdEdQsNcb/JtAw/xXdM+kYNS0jE8mexCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=70aqxkS3NxHV9F5C3IPmK5hfce2NFGEmVqiZUXpXbIc=;
 b=rEVSG/bL9SmEN7ZmUOFGIjR4gRx0hU1VOOYDaf07pb9iopXepX9aVuRx/2t9sOoO/d
 cE88e+y/M0q7J34frw06qpvdki8jNZjxpHpln2jN0C6IPE6p/TJXMC4L8YnHCiSRJJVK
 nHg5zSShUwLBZee5e31QzbpU+GjWKuKOimimiuA0u02umsSoukp6LOJ5DEgXlOiUbDKQ
 x0YoE3GJoMjWG/bpCX2DoxsGV+AinPKQq94S7aW95URe4ytcLef2bxN8fFc/81ZfN8mb
 30dVQS9bXmrsv2egnZnUFzrMFn723FEhYTeKUIV7nkm5hM6LUMh+kpPKiQ5eCwQJj5bq
 h9RA==
X-Gm-Message-State: APjAAAXwePDnRo1se3gHOryQQmrpVnaqRhh4j1ZDBi61j2UXu75/RixW
 9jryGF2RIkoptJ+QXdLWo+ZpTg==
X-Google-Smtp-Source: APXvYqxE9AtJkjf0kZJOUOWra/2NJVIH4fuYIsfAyeYU7p+G4vmm9st12W83eR4XlhcLchYfDmkZjw==
X-Received: by 2002:a5d:56ca:: with SMTP id m10mr6169540wrw.313.1582825615199; 
 Thu, 27 Feb 2020 09:46:55 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 19sm2089561wma.3.2020.02.27.09.46.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 09:46:54 -0800 (PST)
Date: Thu, 27 Feb 2020 18:46:52 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Message-ID: <20200227174652.GZ2363188@phenom.ffwll.local>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
 <20200221210319.2245170-19-daniel.vetter@ffwll.ch>
 <20200222151624.GN25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222151624.GN25745@shell.armlinux.org.uk>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 18/51] drm/<drivers>: Use
 drmm_add_final_kfree
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
 "James \(Qian\) Wang" <james.qian.wang@arm.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Feb 22, 2020 at 03:16:24PM +0000, Russell King - ARM Linux admin wrote:
> On Fri, Feb 21, 2020 at 10:02:46PM +0100, Daniel Vetter wrote:
> > These are the leftover drivers that didn't have a ->release hook that
> > needed to be updated.
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: "James (Qian) Wang" <james.qian.wang@arm.com>
> > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > Cc: Mihail Atanassov <mihail.atanassov@arm.com>
> > Cc: Russell King <linux@armlinux.org.uk>
> > Cc: Hans de Goede <hdegoede@redhat.com>
> > ---
> >  drivers/gpu/drm/arm/display/komeda/komeda_kms.c | 2 ++
> >  drivers/gpu/drm/armada/armada_drv.c             | 2 ++
> >  drivers/gpu/drm/vboxvideo/vbox_drv.c            | 2 ++
> >  3 files changed, 6 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
> > index 197dca3fc84c..dd9ed71ed942 100644
> > --- a/drivers/gpu/drm/armada/armada_drv.c
> > +++ b/drivers/gpu/drm/armada/armada_drv.c
> > @@ -12,6 +12,7 @@
> >  #include <drm/drm_atomic_helper.h>
> >  #include <drm/drm_drv.h>
> >  #include <drm/drm_ioctl.h>
> > +#include <drm/drm_managed.h>
> >  #include <drm/drm_prime.h>
> >  #include <drm/drm_probe_helper.h>
> >  #include <drm/drm_fb_helper.h>
> > @@ -103,6 +104,7 @@ static int armada_drm_bind(struct device *dev)
> >  		kfree(priv);
> >  		return ret;
> >  	}
> > +	drmm_add_final_kfree(&priv->drm, priv);
> >  
> >  	/* Remove early framebuffers */
> >  	ret = drm_fb_helper_remove_conflicting_framebuffers(NULL,
> 
> I have no visibility of what the changes behind this are, so I
> can't ack this change.

dri-devel is on lore, you can grab the entire thread there with the new
tooling that's being discussed on ksummit-discuss.

I can't cc everyone on the entire thread for big changes like this because
many smtp servers reject your mail with more than about 25 recipients.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
