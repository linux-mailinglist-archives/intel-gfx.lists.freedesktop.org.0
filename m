Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A1D6961AC
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 12:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A96410E87A;
	Tue, 14 Feb 2023 11:02:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2619310E881
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 11:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1676372517;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8b9p/fvt5+n9OOpxKgfeIj6wIuTrg7IC7U73UoDlpc0=;
 b=UQJkyjmWc4Z7/n7G4YRr3B4jaHJdS8+IKtTOu/1+2jPu9I3t4XAOfnINQ4mrKRH4ALKpzY
 97q3PWUEzN6eJN0mvk5B7L4IsdSJJSGuBFpi1bhflEn5vkjD1NyBYRbTElax5F3KgMB/Lr
 cAV6398IUmfvVCxaveQ8bPMaAyBcGgs=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-622-GmQjHJCyNiC6a3zz5eN1gA-1; Tue, 14 Feb 2023 06:01:54 -0500
X-MC-Unique: GmQjHJCyNiC6a3zz5eN1gA-1
Received: by mail-ej1-f70.google.com with SMTP id
 qk8-20020a1709077f8800b008af3fb43869so9063552ejc.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 03:01:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8b9p/fvt5+n9OOpxKgfeIj6wIuTrg7IC7U73UoDlpc0=;
 b=ING3a1wNuR539Ar46W2XeNrh5SYaNu8WLfO/8lXz8qUGd783/mipDdH3qStYX01KkB
 3LGXi8ZiszxQf1auTuz84Z4P+W26wmI7lPLYanzVXdq3sxtCGcQOdqgsajvKuo+ZGWUY
 KA7mdgnM0QDhETdI4+6gNgcUK7g3qzwEXlCS6ocXqtnMdRXmuChcHA6Yh4c9a6dJaOUv
 IhkA93fSt4z0zEb6Zjf6bjgPSxUX3ARNw5C3sjLt+bGzPNfc01Jxapn7jQCk/v1Q6lLn
 JPteXKKbPHtsu/eEhgriWJpscSyUI5r/zTDTiva9mwWAFc/1bOzp9IUL7wvcrmk2MTJV
 iCZQ==
X-Gm-Message-State: AO0yUKUe9rHa7vfkTrpqF9Zc3ww8AskQIcQkxMdzAkuWOdKf8b+r9qg3
 lbae2jiNvKXBn8alH87XoOXY5KCLB+poF05MjXxhQRHhe5Zq4v0OkbZdMC3XUFAJn0aDeFaT1iR
 4kiAXz4NwVblcmwqX0jhBhbZPO8Fc
X-Received: by 2002:a17:907:11dc:b0:88f:13f0:4565 with SMTP id
 va28-20020a17090711dc00b0088f13f04565mr2090753ejb.69.1676372513023; 
 Tue, 14 Feb 2023 03:01:53 -0800 (PST)
X-Google-Smtp-Source: AK7set+LAHCrVcn3GbZDnHJgOQ/w9D/ZDBvGVyEJ1AdGzJ5kjZPNNGppUGO0emHnnhI/wnJy39vNaA==
X-Received: by 2002:a17:907:11dc:b0:88f:13f0:4565 with SMTP id
 va28-20020a17090711dc00b0088f13f04565mr2090731ejb.69.1676372512713; 
 Tue, 14 Feb 2023 03:01:52 -0800 (PST)
Received: from redhat.com (host-90-235-85-221.mobileonline.telia.com.
 [90.235.85.221]) by smtp.gmail.com with ESMTPSA id
 u19-20020a1709067d1300b0088b93bfa765sm8082122ejo.138.2023.02.14.03.01.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Feb 2023 03:01:52 -0800 (PST)
Date: Tue, 14 Feb 2023 12:01:49 +0100
From: Jonas =?iso-8859-1?Q?=C5dahl?= <jadahl@redhat.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y+tqHZQ/sg3u/VxR@redhat.com>
References: <20230208040911.12590-2-ville.syrjala@linux.intel.com>
 <20230208211016.7034-1-ville.syrjala@linux.intel.com>
 <Y+UAN7V+kA58yMfn@redhat.com> <Y+tTpH1nfHIG/Dxg@intel.com>
 <Y+taU+zDiTO9aA0U@redhat.com> <Y+tiXJglfpzgUEFD@intel.com>
MIME-Version: 1.0
In-Reply-To: <Y+tiXJglfpzgUEFD@intel.com>
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

On Tue, Feb 14, 2023 at 12:28:44PM +0200, Ville Syrjälä wrote:
> On Tue, Feb 14, 2023 at 10:54:27AM +0100, Jonas Ådahl wrote:
> > On Tue, Feb 14, 2023 at 11:25:56AM +0200, Ville Syrjälä wrote:
> > > On Thu, Feb 09, 2023 at 03:16:23PM +0100, Jonas Ådahl wrote:
> > > > On Wed, Feb 08, 2023 at 11:10:16PM +0200, Ville Syrjala wrote:
> > > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > 
> > > > > Add a new immutable plane property by which a plane can advertise
> > > > > a handful of recommended plane sizes. This would be mostly exposed
> > > > > by cursor planes as a slightly more capable replacement for
> > > > > the DRM_CAP_CURSOR_WIDTH/HEIGHT caps, which can only declare
> > > > > a one size fits all limit for the whole device.
> > > > > 
> > > > > Currently eg. amdgpu/i915/nouveau just advertize the max cursor
> > > > > size via the cursor size caps. But always using the max sized
> > > > > cursor can waste a surprising amount of power, so a better
> > > > > stragey is desirable.
> > > > > 
> > > > > Most other drivers don't specify any cursor size at all, in
> > > > > which case the ioctl code just claims that 64x64 is a great
> > > > > choice. Whether that is actually true is debatable.
> > > > > 
> > > > > A poll of various compositor developers informs us that
> > > > > blindly probing with setcursor/atomic ioctl to determine
> > > > > suitable cursor sizes is not acceptable, thus the
> > > > > introduction of the new property to supplant the cursor
> > > > > size caps. The compositor will now be free to select a
> > > > > more optimal cursor size from the short list of options.
> > > > > 
> > > > > Note that the reported sizes (either via the property or the
> > > > > caps) make no claims about things such as plane scaling. So
> > > > > these things should only really be consulted for simple
> > > > > "cursor like" use cases.
> > > > > 
> > > > > v2: Try to add some docs
> > > > > 
> > > > > Cc: Simon Ser <contact@emersion.fr>
> > > > > Cc: Jonas Ådahl <jadahl@redhat.com>
> > > > > Cc: Daniel Stone <daniel@fooishbar.org>
> > > > > Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
> > > > > Acked-by: Harry Wentland <harry.wentland@amd.com>
> > > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/drm_mode_config.c |  7 +++++
> > > > >  drivers/gpu/drm/drm_plane.c       | 48 +++++++++++++++++++++++++++++++
> > > > >  include/drm/drm_mode_config.h     |  5 ++++
> > > > >  include/drm/drm_plane.h           |  4 +++
> > > > >  include/uapi/drm/drm_mode.h       | 11 +++++++
> > > > >  5 files changed, 75 insertions(+)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
> > > > > index 87eb591fe9b5..21860f94a18c 100644
> > > > > --- a/drivers/gpu/drm/drm_mode_config.c
> > > > > +++ b/drivers/gpu/drm/drm_mode_config.c
> > > > > @@ -374,6 +374,13 @@ static int drm_mode_create_standard_properties(struct drm_device *dev)
> > > > >  		return -ENOMEM;
> > > > >  	dev->mode_config.modifiers_property = prop;
> > > > >  
> > > > > +	prop = drm_property_create(dev,
> > > > > +				   DRM_MODE_PROP_IMMUTABLE | DRM_MODE_PROP_BLOB,
> > > > > +				   "SIZE_HINTS", 0);
> > > > > +	if (!prop)
> > > > > +		return -ENOMEM;
> > > > > +	dev->mode_config.size_hints_property = prop;
> > > > > +
> > > > >  	return 0;
> > > > >  }
> > > > >  
> > > > > diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
> > > > > index 24e7998d1731..ae51b1f83755 100644
> > > > > --- a/drivers/gpu/drm/drm_plane.c
> > > > > +++ b/drivers/gpu/drm/drm_plane.c
> > > > > @@ -140,6 +140,21 @@
> > > > >   *     DRM_FORMAT_MOD_LINEAR. Before linux kernel release v5.1 there have been
> > > > >   *     various bugs in this area with inconsistencies between the capability
> > > > >   *     flag and per-plane properties.
> > > > > + *
> > > > > + * SIZE_HINTS:
> > > > > + *     Blob property which contains the set of recommended plane size
> > > > > + *     which can used for simple "cursor like" use cases (eg. no scaling).
> > > > > + *     Using these hints frees userspace from extensive probing of
> > > > > + *     supported plane sizes through atomic/setcursor ioctls.
> > > > > + *
> > > > > + *     For optimal usage userspace should pick the smallest size
> > > > > + *     that satisfies its own requirements.
> > > > > + *
> > > > > + *     The blob contains an array of struct drm_plane_size_hint.
> > > > > + *
> > > > > + *     Drivers should only attach this property to planes that
> > > > > + *     support a very limited set of sizes (eg. cursor planes
> > > > > + *     on typical hardware).
> > > > 
> > > > This is a bit awkward since problematic drivers would only expose
> > > > this property if they are new enough.
> > > > 
> > > > A way to avoid this is for all new drivers expose this property, but
> > > > special case the size 0x0 as "everything below the max limit goes". Then
> > > > userspace can do (ignoring the missing cap fallback).
> > > 
> > > I don't think there are any drivers that need that.
> > > So I'm thinking we can just ignore that for now.
> > 
> > None the less, userspace not seeing SIZE_HINTS will be required to
> > indefinitely use the existing "old" behavior using the size cap as the
> > buffer size with a fallback, and drivers without any size limitations
> > that, i.e. details that are hard to express with a set of accepted
> > sizes, will still use the inoptimal buffer sizes.
> > 
> > If I read [1] correctly, AMD has no particular size limitations other
> > than a size limit, but without a SIZE_HINTS, userspace still needs to
> > use the maximum size.
> 
> Simon pointed out they have pretty much the same exact limits as i915.
> Ie. only a few power of two sizes, and stride must match width.

How about various ARM drivers, where the cursor plane is a regular
overlay plane with an artificial 'cursor' stamp on it?

Either way, the documentation creates an impossible expectation -
drivers, existing of future, that does not "support for a very limited
set of sizes" but actually any size below a limit, can't communicate to
userspace that it can handle cursor buffers with an arbitrary sizes,
without userspace breaking on todays kernels.


Jonas

> 
> > 
> > [1] https://gitlab.freedesktop.org/drm/intel/-/issues/7687#note_1760865
> > 
> > 
> > Jonas
> > 
> > > 
> > > > 
> > > >     if (has(SIZE_HINTS))
> > > >         size = figure_out_size(SIZE_HINTS,
> > > > 	                       DRM_CAP_CURSOR_WIDTH,
> > > > 			       DRM_CAP_CURSOR_HEIGHT,
> > > > 			       preferred_size);
> > > >     else
> > > >         size = DRM_CAP_CURSOR_WIDTH x DRM_CAP_CURSOR_WIDTH;
> > > > 
> > > > With `figure_out_size()` knowing how to deal with 0x0 in the size hints
> > > > to use `preferred_size` directly.
> > > > 
> > > > 
> > > > Jonas
> > > > 
> > > > >   */
> > > > >  
> > > > >  static unsigned int drm_num_planes(struct drm_device *dev)
> > > > > @@ -1582,3 +1597,36 @@ int drm_plane_create_scaling_filter_property(struct drm_plane *plane,
> > > > >  	return 0;
> > > > >  }
> > > > >  EXPORT_SYMBOL(drm_plane_create_scaling_filter_property);
> > > > > +
> > > > > +/**
> > > > > + * drm_plane_add_size_hint_property - create a size hint property
> > > > > + *
> > > > > + * @plane: drm plane
> > > > > + * @hints: size hints
> > > > > + * @num_hints: number of size hints
> > > > > + *
> > > > > + * Create a size hints property for the plane.
> > > > > + *
> > > > > + * RETURNS:
> > > > > + * Zero for success or -errno
> > > > > + */
> > > > > +int drm_plane_add_size_hints_property(struct drm_plane *plane,
> > > > > +				      const struct drm_plane_size_hint *hints,
> > > > > +				      int num_hints)
> > > > > +{
> > > > > +	struct drm_device *dev = plane->dev;
> > > > > +	struct drm_mode_config *config = &dev->mode_config;
> > > > > +	struct drm_property_blob *blob;
> > > > > +
> > > > > +	blob = drm_property_create_blob(dev,
> > > > > +					array_size(sizeof(hints[0]), num_hints),
> > > > > +					hints);
> > > > > +	if (IS_ERR(blob))
> > > > > +		return PTR_ERR(blob);
> > > > > +
> > > > > +	drm_object_attach_property(&plane->base, config->size_hints_property,
> > > > > +				   blob->base.id);
> > > > > +
> > > > > +	return 0;
> > > > > +}
> > > > > +EXPORT_SYMBOL(drm_plane_add_size_hints_property);
> > > > > diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
> > > > > index e5b053001d22..5bc8aed9b445 100644
> > > > > --- a/include/drm/drm_mode_config.h
> > > > > +++ b/include/drm/drm_mode_config.h
> > > > > @@ -949,6 +949,11 @@ struct drm_mode_config {
> > > > >  	 */
> > > > >  	struct drm_property *modifiers_property;
> > > > >  
> > > > > +	/**
> > > > > +	 * @size_hints_propertty: Plane SIZE_HINTS property.
> > > > > +	 */
> > > > > +	struct drm_property *size_hints_property;
> > > > > +
> > > > >  	/* cursor size */
> > > > >  	uint32_t cursor_width, cursor_height;
> > > > >  
> > > > > diff --git a/include/drm/drm_plane.h b/include/drm/drm_plane.h
> > > > > index 51291983ea44..1997d7d64b69 100644
> > > > > --- a/include/drm/drm_plane.h
> > > > > +++ b/include/drm/drm_plane.h
> > > > > @@ -32,6 +32,7 @@
> > > > >  #include <drm/drm_util.h>
> > > > >  
> > > > >  struct drm_crtc;
> > > > > +struct drm_plane_size_hint;
> > > > >  struct drm_printer;
> > > > >  struct drm_modeset_acquire_ctx;
> > > > >  
> > > > > @@ -945,5 +946,8 @@ drm_plane_get_damage_clips(const struct drm_plane_state *state);
> > > > >  
> > > > >  int drm_plane_create_scaling_filter_property(struct drm_plane *plane,
> > > > >  					     unsigned int supported_filters);
> > > > > +int drm_plane_add_size_hints_property(struct drm_plane *plane,
> > > > > +				      const struct drm_plane_size_hint *hints,
> > > > > +				      int num_hints);
> > > > >  
> > > > >  #endif
> > > > > diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
> > > > > index 46becedf5b2f..9d7c5967264f 100644
> > > > > --- a/include/uapi/drm/drm_mode.h
> > > > > +++ b/include/uapi/drm/drm_mode.h
> > > > > @@ -849,6 +849,17 @@ struct drm_color_lut {
> > > > >  	__u16 reserved;
> > > > >  };
> > > > >  
> > > > > +/**
> > > > > + * struct drm_plane_size_hint - Plane size hints
> > > > > + *
> > > > > + * The plane SIZE_HINTS property blob contains an
> > > > > + * array of struct drm_plane_size_hint.
> > > > > + */
> > > > > +struct drm_plane_size_hint {
> > > > > +	__u16 width;
> > > > > +	__u16 height;
> > > > > +};
> > > > > +
> > > > >  /**
> > > > >   * struct hdr_metadata_infoframe - HDR Metadata Infoframe Data.
> > > > >   *
> > > > > -- 
> > > > > 2.39.1
> > > > > 
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> > > 
> 
> -- 
> Ville Syrjälä
> Intel
> 

