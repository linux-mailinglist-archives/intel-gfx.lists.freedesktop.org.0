Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A0537B949
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 11:32:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E47F6E1E9;
	Wed, 12 May 2021 09:32:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE1BD6E1E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 09:32:00 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id l4so33985865ejc.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 02:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FxN1mNiqtzyWswcEtikVuygVgaup/LPEtaLefcc9yyw=;
 b=aYp5GJqSdtuz2jbX+wFHv/yCCDDvZrwTiSXRI9+XM3cHUAsv2n86TUDpeYrDnzpojV
 8sph5HKDHVpo2DZRSE26Ead+jshmZlqUJDjDed1HVkkB5LJzj8iOe0h/3hqslC3aLC8d
 hSnWArNQ++s6gya+vSB6DfmhnK0XAZ9OlFppQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FxN1mNiqtzyWswcEtikVuygVgaup/LPEtaLefcc9yyw=;
 b=B+ON9N+F0TbAmB97D8P4cBC2SE7SyYA+FwFucugK0qBGEcnPBgnhtnISBqJwhKHhd1
 LAmYLHmSHlhpRVX5yz/xBiwI4Mjx68os28KBplSyB9Mp+15os7adsHw4xYQyZvA0T392
 9zf3hVjio3EIiZIR6qHeDA2SmYh1QyP+fMoTjDVf8EXkfXbK7vNcMvfa0v6lS3zh1C/P
 I/MUeC85PbtfKxLlGrnwaJQuDXQDNCVcfcZMKnh2OAzzo+nr6NUdLK1lplSjbcESPFBc
 1w2FUoc8BnAUQzz8J7gONxM1MAVpihMYjCU2voR8RiEpQjoBadZwpXM3o0pTVP5Vk9IL
 oG/A==
X-Gm-Message-State: AOAM532REKTlZxk5ANKIETGNXm+RCjs0c7L8rh0S4P9OzpYioTaRw28N
 mspWXV1pEXQkMSt3RlxiLhe1RQ==
X-Google-Smtp-Source: ABdhPJwaTAoDgi+Tal0ProfkP0bpaJD8tASaEXhualguXP4a0PY1SEcYGZaK1R2A0X3vxbaSrA+Csg==
X-Received: by 2002:a17:906:e88:: with SMTP id
 p8mr36913765ejf.31.1620811919415; 
 Wed, 12 May 2021 02:31:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id lg20sm13752409ejb.13.2021.05.12.02.31.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 May 2021 02:31:58 -0700 (PDT)
Date: Wed, 12 May 2021 11:31:57 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <YJugjT3lXOdzwEkQ@phenom.ffwll.local>
References: <20210506132343.2873699-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210506132343.2873699-1-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH] drm/modifiers: Enforce consistency between
 the cap an IN_FORMATS
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>,
 Maxime Ripard <maxime@cerno.tech>, Thomas Zimmermann <tzimmermann@suse.de>,
 Simon Ser <contact@emersion.fr>, Pekka Paalanen <pekka.paalanen@collabora.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 06, 2021 at 03:23:43PM +0200, Daniel Vetter wrote:
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
> v3:
> - Use drm_WARN_ON (Lyude)
> 
> Acked-by: Pekka Paalanen <pekka.paalanen@collabora.com>
> Reviewed-by: Emil Velikov <emil.velikov@collabora.com>
> Reviewed-by: Lyude Paul <lyude@redhat.com>
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

Pushed to drm-misc-next after another round of intel-gfx CI testing.
-Daniel

> ---
>  drivers/gpu/drm/drm_plane.c   | 18 +++++++++++++++++-
>  include/drm/drm_mode_config.h |  2 ++
>  2 files changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
> index 0dd43882fe7c..b373958ecb30 100644
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
> +		drm_WARN_ON(dev, !config->allow_fb_modifiers &&
> +			    !list_empty(&config->plane_list));
>  		config->allow_fb_modifiers = true;
> +	} else {
> +		drm_WARN_ON(dev, config->allow_fb_modifiers);
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
