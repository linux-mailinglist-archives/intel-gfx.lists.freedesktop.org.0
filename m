Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D11B168737
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 20:07:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 934176F4FD;
	Fri, 21 Feb 2020 19:07:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F6226F4FD
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 19:07:09 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id p17so3030092wma.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 11:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=wCJZIJBsl8BfkE4SOBO7WIFZReHZXh56+FCvc62m9Cc=;
 b=GomYsQdJoXeyeWOE2Nfdh4Pt5RZAFPbIj/5OJTBr9DWkLBAW+0W4j8XoGGCmsuQjYL
 E/lJGFo4+h1/WGaiesgMFrfBgvY8t2gUy/wh6WP1rrcjVsABvTZG47XISLBVL7cJKasQ
 L12nBvaxuD1oSVkPV/Yjz/WxtLALtgFlda3t0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wCJZIJBsl8BfkE4SOBO7WIFZReHZXh56+FCvc62m9Cc=;
 b=kTwlL75xf9QXxxa7gc1cyeMXt0rh1pSVtU7Nast5/hcwhdlBzt6H6SaBQf4MKDB536
 rD06Y/Z1fwZaxPma08xgJ96/pR9JITl4qYYUq7Z0n/okljeKu4jvLOGBZGn/KVsi+YwF
 /zjSaDmYosNJhXVKnSsEV3/GdPeORtztucvfzIX9m9GGIyFuDHPLzzEutG2J6LrAH8Yl
 nllJu3t0nug/TWJs0ZcgGNGlK8VeCXVlrnxb7yDiEjYdPRvuqm8eSgkEM986D/BIgAwM
 VKlmg6xYdykBdlIEhMnGqlV2vB78TlaYUtDww4vUW54CqVqIizr4Id1ghnmJtrDYN4pL
 DrHQ==
X-Gm-Message-State: APjAAAWYizHz/ohj0frlXvt7JZcaoTlcsW4IdGfyna1RyAiefMdhh7a6
 NTzrEUssbo1yUfprB/A0DTL0EA==
X-Google-Smtp-Source: APXvYqwgNpuvFJU7CwtvbAQ1bO4ndpaSvDW3zyS30U3j1uE4WIAzyS/rj7UPe0BebjHk0H4Zh4/4Tw==
X-Received: by 2002:a1c:7c18:: with SMTP id x24mr5582135wmc.185.1582312028145; 
 Fri, 21 Feb 2020 11:07:08 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w8sm5124316wmm.0.2020.02.21.11.07.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 11:07:06 -0800 (PST)
Date: Fri, 21 Feb 2020 20:07:04 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20200221190704.GH2363188@phenom.ffwll.local>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
 <20200219102122.1607365-5-daniel.vetter@ffwll.ch>
 <20200219133900.GE5070@pendragon.ideasonboard.com>
 <CAKMK7uFACJa15K6OfnPFj2nP_WQ=a1tWAe09BJ3Mt+KX-VQ1-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uFACJa15K6OfnPFj2nP_WQ=a1tWAe09BJ3Mt+KX-VQ1-g@mail.gmail.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 04/52] drm: Set final_kfree in drm_dev_alloc
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
Cc: Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 David Airlie <airlied@linux.ie>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 19, 2020 at 03:41:07PM +0100, Daniel Vetter wrote:
> On Wed, Feb 19, 2020 at 2:39 PM Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> >
> > Hi Daniel,
> >
> > Thank you for the patch.
> >
> > On Wed, Feb 19, 2020 at 11:20:34AM +0100, Daniel Vetter wrote:
> > > I also did a full review of all callers, and only the xen driver
> > > forgot to call drm_dev_put in the failure path. Fix that up too.
> >
> > I'd split this patch in two then, with the Xen first coming first, and
> > with an explanation in the commit message of the second patch about why
> > you call drmm_add_final_kfree() in drm_dev_alloc().

Forgot to reply to this I think.

Breaks biscting, so no can't split. It's just a leak, but this entire
series is full of these "would break bisecting because it would introduce
a subtle leak or use-after-free". Still isn't as simple as it looks
unfortunately :-/

> >
> > > v2: I noticed that xen has a drm_driver.release hook, and uses
> > > drm_dev_alloc(). We need to remove the kfree from
> > > xen_drm_drv_release().
> > >
> > > bochs also has a release hook, but leaked the drm_device ever since
> > >
> > > commit 0a6659bdc5e8221da99eebb176fd9591435e38de
> > > Author: Gerd Hoffmann <kraxel@redhat.com>
> > > Date:   Tue Dec 17 18:04:46 2013 +0100
> > >
> > >     drm/bochs: new driver
> > >
> > > This patch here fixes that leak.
> > >
> > > Same for virtio, started leaking with
> > >
> > > commit b1df3a2b24a917f8853d43fe9683c0e360d2c33a
> > > Author: Gerd Hoffmann <kraxel@redhat.com>
> > > Date:   Tue Feb 11 14:58:04 2020 +0100
> > >
> > >     drm/virtio: add drm_driver.release callback.
> > >
> > > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > > Cc: Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>
> > > Cc: xen-devel@lists.xenproject.org
> > >
> > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Cc: Maxime Ripard <mripard@kernel.org>
> > > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > > Cc: David Airlie <airlied@linux.ie>
> > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > Cc: Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>
> > > Cc: xen-devel@lists.xenproject.org
> > > ---
> > >  drivers/gpu/drm/drm_drv.c           | 3 +++
> > >  drivers/gpu/drm/xen/xen_drm_front.c | 2 +-
> > >  2 files changed, 4 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> > > index 3e5627d6eba6..9e62e28bbc62 100644
> > > --- a/drivers/gpu/drm/drm_drv.c
> > > +++ b/drivers/gpu/drm/drm_drv.c
> > > @@ -39,6 +39,7 @@
> > >  #include <drm/drm_color_mgmt.h>
> > >  #include <drm/drm_drv.h>
> > >  #include <drm/drm_file.h>
> > > +#include <drm/drm_managed.h>
> > >  #include <drm/drm_mode_object.h>
> > >  #include <drm/drm_print.h>
> > >
> > > @@ -819,6 +820,8 @@ struct drm_device *drm_dev_alloc(struct drm_driver *driver,
> > >               return ERR_PTR(ret);
> > >       }
> > >
> > > +     drmm_add_final_kfree(dev, dev);
> >
> > drmm_add_final_kfree() can only be called once. Does this mean that a
> > driver using drm_dev_alloc() isn't allowed to use drmm_add_final_kfree()
> > to tract its own private structure ?
> 
> There is only _one_ final kfree() for the structure containing
> drm_device. Anything else you can just allocate with drmm_kzalloc, and
> it will be cleaned up before. The chicken/egg doesn't just exist
> around init time with drm_device, but also at cleanup time - the list
> of cleanup actions is stored in drm_device, plus the logging macros
> also need a drm_device. Which means we really, really, really need to
> make sure that the drm_device is the very last thing that goes away.
> Hence this special case. I was semi-tempted to drill through the slab
> debug layer and add a check that the drm_device pointer in the
> final_kfree is actually within the slab allocation block. Just to make
> sure people use this correctly, and not just as a "hey here's a random
> kmalloc block I want you to release, thxokbye". Because doing that
> would cause a few use-after-free (or a leak).

I've added those checks now.
-Daniel


> -Daniel
> 
> >
> > > +
> > >       return dev;
> > >  }
> > >  EXPORT_SYMBOL(drm_dev_alloc);
> > > diff --git a/drivers/gpu/drm/xen/xen_drm_front.c b/drivers/gpu/drm/xen/xen_drm_front.c
> > > index 4be49c1aef51..d22b5da38935 100644
> > > --- a/drivers/gpu/drm/xen/xen_drm_front.c
> > > +++ b/drivers/gpu/drm/xen/xen_drm_front.c
> > > @@ -461,7 +461,6 @@ static void xen_drm_drv_release(struct drm_device *dev)
> > >       drm_mode_config_cleanup(dev);
> > >
> > >       drm_dev_fini(dev);
> > > -     kfree(dev);
> > >
> > >       if (front_info->cfg.be_alloc)
> > >               xenbus_switch_state(front_info->xb_dev,
> > > @@ -561,6 +560,7 @@ static int xen_drm_drv_init(struct xen_drm_front_info *front_info)
> > >  fail_modeset:
> > >       drm_kms_helper_poll_fini(drm_dev);
> > >       drm_mode_config_cleanup(drm_dev);
> > > +     drm_dev_put(drm_dev);
> > >  fail:
> > >       kfree(drm_info);
> > >       return ret;
> >
> > --
> > Regards,
> >
> > Laurent Pinchart
> 
> 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
