Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC3F690B79
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Feb 2023 15:16:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2263A10E1BC;
	Thu,  9 Feb 2023 14:16:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A809610E1BC
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Feb 2023 14:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1675952188;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UyJQ2V6OUoGVtLaq/bsURHNDQDpONLSuKUQ+fRTBOmM=;
 b=N/B7BaoDs5Wa5YO1m3Gm7lowUi2F+Gnn9aJ9UV2OmyVwZqNDKfBrofFISdqlyU5YH3H3bN
 9Ume+xuQXlHqhPKckCkKJJ68EnYV5RcgfcI10OAMXS2RxJiGVmnvZ7x6o7QHNA2DYpW1uz
 nfdtdm0O9lHK3IzlN6RLJnZYOt/qbZs=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-491-YmXaiRVbMSCWu4Ty6SyJlw-1; Thu, 09 Feb 2023 09:16:27 -0500
X-MC-Unique: YmXaiRVbMSCWu4Ty6SyJlw-1
Received: by mail-ej1-f70.google.com with SMTP id
 i7-20020a17090685c700b008ab19875638so1591452ejy.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Feb 2023 06:16:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UyJQ2V6OUoGVtLaq/bsURHNDQDpONLSuKUQ+fRTBOmM=;
 b=X0esxvlkVmCV0Mdf9XyZQqNcdxFlrikEXLGvb3saDd6CF9dFbaWtcSj2QKgX0u66Ti
 boJnTWE0NetwkVjqNjVIYgqA17N1WoeboMTxtupD0J5e2+3G1Jd/7fbilptCkDb9+bCz
 A+pijGT5ah3+1zyXNnAOjh/bY2sLlXFnHjy9sSb193Yqc3zijQiZmqRwzlCZ80LuRS8D
 XYrOnGv0pNX/uPiYuX5hagXrr/GUd0173vEd4nIzN9cqJcvPGcItoY5GQsptSyU3+fKk
 MRV2AMLa3Kkm3WEdvdpzrfIq7/+ypiG0edZhtjbU8XTsE5UhiIJCWhQSbML7nUfzY437
 3/Ag==
X-Gm-Message-State: AO0yUKVAhKaMm+WKz2My4KC2aUqfbj6NMiy3QoCw63Cj0FrXzPoAM7g6
 QXvZK+dt5NLE/XSZWlysre0QZ7b2PaHBq0Ym9h3szdJqbYtvutRmh7bUC2Yc5FYce5/APAZ3TM9
 q/U0VxjEplYyHJVMWIeNhO//TpPu3
X-Received: by 2002:a17:906:651:b0:88e:e498:109b with SMTP id
 t17-20020a170906065100b0088ee498109bmr12458444ejb.5.1675952186258; 
 Thu, 09 Feb 2023 06:16:26 -0800 (PST)
X-Google-Smtp-Source: AK7set/rJu9Z3yKCKf3qx21yVK9ctyOV5jDy3kCvS+pTwgJweaGwo7g8XTNVjXz154MFq0G3stNAPw==
X-Received: by 2002:a17:906:651:b0:88e:e498:109b with SMTP id
 t17-20020a170906065100b0088ee498109bmr12458423ejb.5.1675952186063; 
 Thu, 09 Feb 2023 06:16:26 -0800 (PST)
Received: from redhat.com (host-95-193-75-109.mobileonline.telia.com.
 [95.193.75.109]) by smtp.gmail.com with ESMTPSA id
 k16-20020a170906681000b0087223b8d6efsm948548ejr.16.2023.02.09.06.16.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Feb 2023 06:16:25 -0800 (PST)
Date: Thu, 9 Feb 2023 15:16:23 +0100
From: Jonas =?iso-8859-1?Q?=C5dahl?= <jadahl@redhat.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <Y+UAN7V+kA58yMfn@redhat.com>
References: <20230208040911.12590-2-ville.syrjala@linux.intel.com>
 <20230208211016.7034-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20230208211016.7034-1-ville.syrjala@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm: Introduce plane SIZE_HINTS
 property
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
 Simon Ser <contact@emersion.fr>, intel-gfx@lists.freedesktop.org,
 Daniel Stone <daniel@fooishbar.org>, dri-devel@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 08, 2023 at 11:10:16PM +0200, Ville Syrjala wrote:
> From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> 
> Add a new immutable plane property by which a plane can advertise
> a handful of recommended plane sizes. This would be mostly exposed
> by cursor planes as a slightly more capable replacement for
> the DRM_CAP_CURSOR_WIDTH/HEIGHT caps, which can only declare
> a one size fits all limit for the whole device.
> 
> Currently eg. amdgpu/i915/nouveau just advertize the max cursor
> size via the cursor size caps. But always using the max sized
> cursor can waste a surprising amount of power, so a better
> stragey is desirable.
> 
> Most other drivers don't specify any cursor size at all, in
> which case the ioctl code just claims that 64x64 is a great
> choice. Whether that is actually true is debatable.
> 
> A poll of various compositor developers informs us that
> blindly probing with setcursor/atomic ioctl to determine
> suitable cursor sizes is not acceptable, thus the
> introduction of the new property to supplant the cursor
> size caps. The compositor will now be free to select a
> more optimal cursor size from the short list of options.
> 
> Note that the reported sizes (either via the property or the
> caps) make no claims about things such as plane scaling. So
> these things should only really be consulted for simple
> "cursor like" use cases.
> 
> v2: Try to add some docs
> 
> Cc: Simon Ser <contact@emersion.fr>
> Cc: Jonas �dahl <jadahl@redhat.com>
> Cc: Daniel Stone <daniel@fooishbar.org>
> Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
> Acked-by: Harry Wentland <harry.wentland@amd.com>
> Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/drm_mode_config.c |  7 +++++
>  drivers/gpu/drm/drm_plane.c       | 48 +++++++++++++++++++++++++++++++
>  include/drm/drm_mode_config.h     |  5 ++++
>  include/drm/drm_plane.h           |  4 +++
>  include/uapi/drm/drm_mode.h       | 11 +++++++
>  5 files changed, 75 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
> index 87eb591fe9b5..21860f94a18c 100644
> --- a/drivers/gpu/drm/drm_mode_config.c
> +++ b/drivers/gpu/drm/drm_mode_config.c
> @@ -374,6 +374,13 @@ static int drm_mode_create_standard_properties(struct drm_device *dev)
>  		return -ENOMEM;
>  	dev->mode_config.modifiers_property = prop;
>  
> +	prop = drm_property_create(dev,
> +				   DRM_MODE_PROP_IMMUTABLE | DRM_MODE_PROP_BLOB,
> +				   "SIZE_HINTS", 0);
> +	if (!prop)
> +		return -ENOMEM;
> +	dev->mode_config.size_hints_property = prop;
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
> index 24e7998d1731..ae51b1f83755 100644
> --- a/drivers/gpu/drm/drm_plane.c
> +++ b/drivers/gpu/drm/drm_plane.c
> @@ -140,6 +140,21 @@
>   *     DRM_FORMAT_MOD_LINEAR. Before linux kernel release v5.1 there have been
>   *     various bugs in this area with inconsistencies between the capability
>   *     flag and per-plane properties.
> + *
> + * SIZE_HINTS:
> + *     Blob property which contains the set of recommended plane size
> + *     which can used for simple "cursor like" use cases (eg. no scaling).
> + *     Using these hints frees userspace from extensive probing of
> + *     supported plane sizes through atomic/setcursor ioctls.
> + *
> + *     For optimal usage userspace should pick the smallest size
> + *     that satisfies its own requirements.
> + *
> + *     The blob contains an array of struct drm_plane_size_hint.
> + *
> + *     Drivers should only attach this property to planes that
> + *     support a very limited set of sizes (eg. cursor planes
> + *     on typical hardware).

This is a bit awkward since problematic drivers would only expose
this property if they are new enough.

A way to avoid this is for all new drivers expose this property, but
special case the size 0x0 as "everything below the max limit goes". Then
userspace can do (ignoring the missing cap fallback).

    if (has(SIZE_HINTS))
        size = figure_out_size(SIZE_HINTS,
	                       DRM_CAP_CURSOR_WIDTH,
			       DRM_CAP_CURSOR_HEIGHT,
			       preferred_size);
    else
        size = DRM_CAP_CURSOR_WIDTH x DRM_CAP_CURSOR_WIDTH;

With `figure_out_size()` knowing how to deal with 0x0 in the size hints
to use `preferred_size` directly.


Jonas

>   */
>  
>  static unsigned int drm_num_planes(struct drm_device *dev)
> @@ -1582,3 +1597,36 @@ int drm_plane_create_scaling_filter_property(struct drm_plane *plane,
>  	return 0;
>  }
>  EXPORT_SYMBOL(drm_plane_create_scaling_filter_property);
> +
> +/**
> + * drm_plane_add_size_hint_property - create a size hint property
> + *
> + * @plane: drm plane
> + * @hints: size hints
> + * @num_hints: number of size hints
> + *
> + * Create a size hints property for the plane.
> + *
> + * RETURNS:
> + * Zero for success or -errno
> + */
> +int drm_plane_add_size_hints_property(struct drm_plane *plane,
> +				      const struct drm_plane_size_hint *hints,
> +				      int num_hints)
> +{
> +	struct drm_device *dev = plane->dev;
> +	struct drm_mode_config *config = &dev->mode_config;
> +	struct drm_property_blob *blob;
> +
> +	blob = drm_property_create_blob(dev,
> +					array_size(sizeof(hints[0]), num_hints),
> +					hints);
> +	if (IS_ERR(blob))
> +		return PTR_ERR(blob);
> +
> +	drm_object_attach_property(&plane->base, config->size_hints_property,
> +				   blob->base.id);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_plane_add_size_hints_property);
> diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
> index e5b053001d22..5bc8aed9b445 100644
> --- a/include/drm/drm_mode_config.h
> +++ b/include/drm/drm_mode_config.h
> @@ -949,6 +949,11 @@ struct drm_mode_config {
>  	 */
>  	struct drm_property *modifiers_property;
>  
> +	/**
> +	 * @size_hints_propertty: Plane SIZE_HINTS property.
> +	 */
> +	struct drm_property *size_hints_property;
> +
>  	/* cursor size */
>  	uint32_t cursor_width, cursor_height;
>  
> diff --git a/include/drm/drm_plane.h b/include/drm/drm_plane.h
> index 51291983ea44..1997d7d64b69 100644
> --- a/include/drm/drm_plane.h
> +++ b/include/drm/drm_plane.h
> @@ -32,6 +32,7 @@
>  #include <drm/drm_util.h>
>  
>  struct drm_crtc;
> +struct drm_plane_size_hint;
>  struct drm_printer;
>  struct drm_modeset_acquire_ctx;
>  
> @@ -945,5 +946,8 @@ drm_plane_get_damage_clips(const struct drm_plane_state *state);
>  
>  int drm_plane_create_scaling_filter_property(struct drm_plane *plane,
>  					     unsigned int supported_filters);
> +int drm_plane_add_size_hints_property(struct drm_plane *plane,
> +				      const struct drm_plane_size_hint *hints,
> +				      int num_hints);
>  
>  #endif
> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
> index 46becedf5b2f..9d7c5967264f 100644
> --- a/include/uapi/drm/drm_mode.h
> +++ b/include/uapi/drm/drm_mode.h
> @@ -849,6 +849,17 @@ struct drm_color_lut {
>  	__u16 reserved;
>  };
>  
> +/**
> + * struct drm_plane_size_hint - Plane size hints
> + *
> + * The plane SIZE_HINTS property blob contains an
> + * array of struct drm_plane_size_hint.
> + */
> +struct drm_plane_size_hint {
> +	__u16 width;
> +	__u16 height;
> +};
> +
>  /**
>   * struct hdr_metadata_infoframe - HDR Metadata Infoframe Data.
>   *
> -- 
> 2.39.1
> 

