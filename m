Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDDE35E105
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 16:11:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 668986E28B;
	Tue, 13 Apr 2021 14:11:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 392DD6E1E8
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 14:11:33 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id p6so9910136wrn.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 07:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ch9ICwJVYl6LWPhkOy5IzPVLQgk9xqmcS3NQohJq950=;
 b=K98IC45z2TWPbT/eNHYVXv0rqaVWPKE/ZHbYx2D1N2Woqn4blubXbjPGvr4olQKryI
 NV2F03gdTZL8R3PX4N9uR7w5qL1a15UATL5VQIA5+kmaIJHoca7d9MVVfUyBwsp44gE3
 N368MRQxD6cmFAsXqLYI4ww8vLQMzRVnWW6Rc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ch9ICwJVYl6LWPhkOy5IzPVLQgk9xqmcS3NQohJq950=;
 b=jQBuEYqHH2MG7Eb22P6ktBREP3oILIJK2DoRWs/4P+gkT4KEuFuCGPmdw5tWEDkxOT
 2pu8438vJBUxaRs4fCCgO1bZV+3wf0qMs3YAc5tqx9/OZR8P7JWSoCBhEtRWa3comg8Q
 PoUGVG87y6QbzpoUHwfD3PFSnjXH1AKn/1pe+3PiGcDxjdp2ruhjH5QUSxIQMn+9Fziu
 SPCy13a3T7z/pWLvyfWUOg5wDu8LPml/UhGMZ6PcVkFow40XOSvKIdCgY92igOACD8ee
 3FTw43hA9FT0dfCoA3DKJvVPjDN8MBDdQRbB0vKdFOcoLp7VKMpg565a/aa9pS9p0YoD
 7oag==
X-Gm-Message-State: AOAM531fwgDhrvjjC5FwR8LfdRQeHaMvYg9v7c1pI9P1DmuauF/8Xpy2
 igQv6YP3vEGpg5G0RNF89xy9Zg==
X-Google-Smtp-Source: ABdhPJweAd+lUyXTaICdCL20hVt2OR1gW+lz9cRHc1biIAAPyBghzAapBI3eHK7eKEKFljOGp0muyA==
X-Received: by 2002:a5d:6c67:: with SMTP id r7mr3625415wrz.268.1618323091927; 
 Tue, 13 Apr 2021 07:11:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o62sm3195125wmo.3.2021.04.13.07.11.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 07:11:31 -0700 (PDT)
Date: Tue, 13 Apr 2021 16:11:29 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Pekka Paalanen <ppaalanen@gmail.com>
Message-ID: <YHWmkZYqUeZKQN9R@phenom.ffwll.local>
References: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
 <20210413094904.3736372-12-daniel.vetter@ffwll.ch>
 <20210413145602.70f674b1@eldfell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210413145602.70f674b1@eldfell>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 12/12] drm/modifiers: Enforce consistency
 between the cap an IN_FORMATS
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 13, 2021 at 02:56:02PM +0300, Pekka Paalanen wrote:
> On Tue, 13 Apr 2021 11:49:03 +0200
> Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> 
> > It's very confusing for userspace to have to deal with inconsistencies
> > here, and some drivers screwed this up a bit. Most just ommitted the
> > format list when they meant to say that only linear modifier is
> > allowed, but some also meant that only implied modifiers are
> > acceptable (because actually none of the planes registered supported
> > modifiers).
> > 
> > Now that this is all done consistently across all drivers, document
> > the rules and enforce it in the drm core.
> > 
> > Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > ---
> >  drivers/gpu/drm/drm_plane.c   | 16 +++++++++++++++-
> >  include/drm/drm_mode_config.h |  2 ++
> >  2 files changed, 17 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
> > index 0dd43882fe7c..16a7e3e57f7f 100644
> > --- a/drivers/gpu/drm/drm_plane.c
> > +++ b/drivers/gpu/drm/drm_plane.c
> > @@ -128,6 +128,11 @@
> >   *     pairs supported by this plane. The blob is a struct
> >   *     drm_format_modifier_blob. Without this property the plane doesn't
> >   *     support buffers with modifiers. Userspace cannot change this property.
> > + *
> > + *     Note that userspace can check the DRM_CAP_ADDFB2_MODIFIERS driver
> > + *     capability for general modifier support. If this flag is set then every
> > + *     plane will have the IN_FORMATS property, even when it only supports
> > + *     DRM_FORMAT_MOD_LINEAR.
> 
> Ooh, that's even better. But isn't that changing the meaning of the
> cap? Isn't the cap older than IN_FORMATS?

Hm indeed. But also how exactly are you going to user modifiers without
IN_FORMATS ... it's a bit hard. I think this is all because we've enabled
modifiers piece-by-piece and never across the entire thing (e.g. with
compositor and protocols), so the missing pieces only became apparent
later on.

I'm not sure whether compositors really want to support this, I guess
worst case we could disable the cap on these old kernels.

> What about the opposite? Is it allowed to have even a single IN_FORMATS
> if you don't have the cap?

That direction is enforced since 5.1, because some drivers screwed it up
and confusion in userspace ensued.

Should I add a bug that on kernels older than 5.1 the situation is more
murky and there's lots of bugs?

> 
> >   */
> >  
> >  static unsigned int drm_num_planes(struct drm_device *dev)
> > @@ -277,8 +282,14 @@ static int __drm_universal_plane_init(struct drm_device *dev,
> >  			format_modifier_count++;
> >  	}
> >  
> > -	if (format_modifier_count)
> > +	/* autoset the cap and check for consistency across all planes */
> > +	if (format_modifier_count) {
> > +		WARN_ON(!config->allow_fb_modifiers &&
> > +			!list_empty(&config->plane_list));
> 
> What does this mean?

If allow_fb_modifiers isn't set yet (we do that in the line below) and we
are _not_ the first plane that gets added to the driver (that's done
towards the end of the function) then that means there's already a plane
registered without modifiers and hence IN_FORMAT. Which we then warn
about.

> 
> >  		config->allow_fb_modifiers = true;
> > +	} else {
> > +		WARN_ON(config->allow_fb_modifiers);

This warning here checks the other case of an earlier plane with
modifiers, but the one we're adding now doesn't have them.
-Daniel

> > +	}
> >  
> >  	plane->modifier_count = format_modifier_count;
> >  	plane->modifiers = kmalloc_array(format_modifier_count,
> > @@ -360,6 +371,9 @@ static int __drm_universal_plane_init(struct drm_device *dev,
> >   * drm_universal_plane_init() to let the DRM managed resource infrastructure
> >   * take care of cleanup and deallocation.
> >   *
> > + * Drivers supporting modifiers must set @format_modifiers on all their planes,
> > + * even those that only support DRM_FORMAT_MOD_LINEAR.
> 
> Good.
> 
> > + *
> >   * Returns:
> >   * Zero on success, error code on failure.
> >   */
> > diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
> > index ab424ddd7665..1ddf7783fdf7 100644
> > --- a/include/drm/drm_mode_config.h
> > +++ b/include/drm/drm_mode_config.h
> > @@ -909,6 +909,8 @@ struct drm_mode_config {
> >  	 * @allow_fb_modifiers:
> >  	 *
> >  	 * Whether the driver supports fb modifiers in the ADDFB2.1 ioctl call.
> > +	 * Note that drivers should not set this directly, it is automatically
> > +	 * set in drm_universal_plane_init().
> >  	 *
> >  	 * IMPORTANT:
> >  	 *
> 
> Thanks,
> pq



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
