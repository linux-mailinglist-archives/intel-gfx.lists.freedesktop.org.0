Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A23C3751D9
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 11:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A8076ECAD;
	Thu,  6 May 2021 09:55:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C266ECAF
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 May 2021 09:55:33 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 s5-20020a7bc0c50000b0290147d0c21c51so2696037wmh.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 May 2021 02:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NwbQgMXxJH+U7giHK2xrMy3kQoZttL0h2+a1jCDh5pU=;
 b=j9nrIit/0MEbOMYbCt/3aRLIE0yAWFTSBB3Q0ov8L3QGoFcyHrce+87OQT1JIlOQ7p
 BbQpHgFC92m4r0B+ZzOf5gbUyy8aMF93VGHH1jFhGTovud3WuAHymNFiKIbgCqgNLc9F
 jNa9Rz1loYNfoJrwDlHIYtBA0LUNCYlUaloyA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NwbQgMXxJH+U7giHK2xrMy3kQoZttL0h2+a1jCDh5pU=;
 b=n/ld4BYga27tbQ3w4nNh44Aulb/iDCHnPdHU0LeoPgg6fpxJMRRuxU5uWafmyFL594
 hcLJop8HKJxQYEqIJI8MiF0YyIfC6gqVb1RrdyfOLyyFGsZcqHCmG0PHC/nbmU5TzocX
 q+PpXBz5BGz9ZHjScShFl04HGKSRL0zQ6J1QUZCZ6zkvU2VbFwmm9dMBnvI06QwRnDNs
 GVL/jUteOJ0HAs2vsOUaQQehSNLHnmDir2Jx5faMjq3ab2U2KYU56SkkOaPKGJ71MNCK
 6fnmRVIjC2ilhlCG8UAkLUXuRmOdKm7xhUg6STPVXkoG8Or6MjSsE1qLWAIpT10QPSnU
 3Q+Q==
X-Gm-Message-State: AOAM530vDMY8K99PZbV/glVG5CSPZnhYkGmtb+/J46MFhyvTTj88BDm5
 Cg61G/ygA3Qgx5x23LvhjAm/xQ==
X-Google-Smtp-Source: ABdhPJzqlxoMvjddwWEC1ZK4H+Q4SKb/pxImvJpdoWsRgGB6x6DaqmJHa9ajoloKuqKWoLrqXgaRlw==
X-Received: by 2002:a7b:c0c4:: with SMTP id s4mr13974720wmh.174.1620294932610; 
 Thu, 06 May 2021 02:55:32 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i13sm3436726wrs.12.2021.05.06.02.55.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 02:55:31 -0700 (PDT)
Date: Thu, 6 May 2021 11:55:29 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <YJO9EfqeFaUdqlJE@phenom.ffwll.local>
References: <20210427092018.832258-1-daniel.vetter@ffwll.ch>
 <20210427092018.832258-8-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210427092018.832258-8-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/modifiers: Enforce consistency
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
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 Thomas Zimmermann <tzimmermann@suse.de>, Simon Ser <contact@emersion.fr>,
 Daniel Vetter <daniel.vetter@intel.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 27, 2021 at 11:20:18AM +0200, Daniel Vetter wrote:
> It's very confusing for userspace to have to deal with inconsistencies
> here, and some drivers screwed this up a bit. Most just ommitted the
> format list when they meant to say that only linear modifier is
> allowed, but some also meant that only implied modifiers are
> acceptable (because actually none of the planes registered supported
> modifiers).
> 
> Now that this is all done consistently across all drivers, document
> the rules and enforce it in the drm core.
> 
> v2:
> - Make the capability a link (Simon)
> - Note that all is lost before 5.1.
> 
> Acked-by: Maxime Ripard <maxime@cerno.tech>
> Cc: Simon Ser <contact@emersion.fr>
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>

I merged all the driver patches to drm-misc-next, I'll resend v3 of this
one shortly.
-Daniel

> ---
>  drivers/gpu/drm/drm_plane.c   | 18 +++++++++++++++++-
>  include/drm/drm_mode_config.h |  2 ++
>  2 files changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
> index 0dd43882fe7c..20c7a1665414 100644
> --- a/drivers/gpu/drm/drm_plane.c
> +++ b/drivers/gpu/drm/drm_plane.c
> @@ -128,6 +128,13 @@
>   *     pairs supported by this plane. The blob is a struct
>   *     drm_format_modifier_blob. Without this property the plane doesn't
>   *     support buffers with modifiers. Userspace cannot change this property.
> + *
> + *     Note that userspace can check the &DRM_CAP_ADDFB2_MODIFIERS driver
> + *     capability for general modifier support. If this flag is set then every
> + *     plane will have the IN_FORMATS property, even when it only supports
> + *     DRM_FORMAT_MOD_LINEAR. Before linux kernel release v5.1 there have been
> + *     various bugs in this area with inconsistencies between the capability
> + *     flag and per-plane properties.
>   */
>  
>  static unsigned int drm_num_planes(struct drm_device *dev)
> @@ -277,8 +284,14 @@ static int __drm_universal_plane_init(struct drm_device *dev,
>  			format_modifier_count++;
>  	}
>  
> -	if (format_modifier_count)
> +	/* autoset the cap and check for consistency across all planes */
> +	if (format_modifier_count) {
> +		WARN_ON(!config->allow_fb_modifiers &&
> +			!list_empty(&config->plane_list));
>  		config->allow_fb_modifiers = true;
> +	} else {
> +		WARN_ON(config->allow_fb_modifiers);
> +	}
>  
>  	plane->modifier_count = format_modifier_count;
>  	plane->modifiers = kmalloc_array(format_modifier_count,
> @@ -360,6 +373,9 @@ static int __drm_universal_plane_init(struct drm_device *dev,
>   * drm_universal_plane_init() to let the DRM managed resource infrastructure
>   * take care of cleanup and deallocation.
>   *
> + * Drivers supporting modifiers must set @format_modifiers on all their planes,
> + * even those that only support DRM_FORMAT_MOD_LINEAR.
> + *
>   * Returns:
>   * Zero on success, error code on failure.
>   */
> diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
> index ab424ddd7665..1ddf7783fdf7 100644
> --- a/include/drm/drm_mode_config.h
> +++ b/include/drm/drm_mode_config.h
> @@ -909,6 +909,8 @@ struct drm_mode_config {
>  	 * @allow_fb_modifiers:
>  	 *
>  	 * Whether the driver supports fb modifiers in the ADDFB2.1 ioctl call.
> +	 * Note that drivers should not set this directly, it is automatically
> +	 * set in drm_universal_plane_init().
>  	 *
>  	 * IMPORTANT:
>  	 *
> -- 
> 2.31.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
