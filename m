Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E50643748AD
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 21:24:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E0A76EC41;
	Wed,  5 May 2021 19:24:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com
 [IPv6:2607:f8b0:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D7FE6E508
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 May 2021 19:24:31 +0000 (UTC)
Received: by mail-ot1-x329.google.com with SMTP id
 c8-20020a9d78480000b0290289e9d1b7bcso2734067otm.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 May 2021 12:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w2iAvbCyLFycmcr9Xfo6S7svKciTe5uUj6eEhIstxAA=;
 b=MiSPZ+hWpT+F66dVgAERJ3LEED+jdU8axKqykr6ZRGH7IKw0wf2DUW2mVoOQlx88ta
 gI3lMjqFm+2zlkgKlnx5XfPwDIJ3O+Aa8jEG+heZ6cZaa+IRQMNjmyXOlXBhNv9j5nYr
 QULKhwAO9pIqdnau7Y50oJ99m67c9RFqK/nt8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w2iAvbCyLFycmcr9Xfo6S7svKciTe5uUj6eEhIstxAA=;
 b=Vz1HNjg51/XmIXog8P5ep8QgzXAcBTfxx4CWvJxkkv88TuaQI/7fbRCNWSD3l7BENN
 AHgC+gcApC/hGp9yGw+V73MahiZkg2xL5/1vfF255+cXp7J2WjH6x7ndU30LxwgIuXXU
 Apzxg6ER7G511fr9t3Bhd+KXgVtoVACNE7EHn6pIZZKmfJA6NJ9IW+bfQ6CM2Q1GupZ5
 N8Y2cg3Yt7jOpCPlrAirjxFFdcCq6e9IkLrrK71R9kDwj/Pm+QPQ5ieu49rzKOnC8ZIl
 SoRZzuDjT6iS5BJxMk5pFpoEA0NhUPv5E4E92+435cpOW7WJWULRO3mnF5DtyuPomq7n
 mjGQ==
X-Gm-Message-State: AOAM531B24bhYUFS7WmrVKCr1PzrqlCgtIVYpxeQeYCdsT59AEsuyOcx
 t3oBAkjNtdeBGGJwiI1WpXcNVhrHtebsZ6bHOb/lJA==
X-Google-Smtp-Source: ABdhPJwAI+3/6J0r853SXM1iP6LqwiH1gzALGa5w1LgD5RPj1VQInh8I6eApgMBEGFdWEZZo7FsRDFytwWm5yJzR7hM=
X-Received: by 2002:a9d:10a:: with SMTP id 10mr229626otu.188.1620242670551;
 Wed, 05 May 2021 12:24:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210427092018.832258-1-daniel.vetter@ffwll.ch>
 <20210427092018.832258-8-daniel.vetter@ffwll.ch>
In-Reply-To: <20210427092018.832258-8-daniel.vetter@ffwll.ch>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 5 May 2021 21:24:19 +0200
Message-ID: <CAKMK7uHnkxaqKMU+K9ioj0YFjqa+sc5NH6Jy6fW1eeViSZ4=vA@mail.gmail.com>
To: DRI Development <dri-devel@lists.freedesktop.org>, Lyude <lyude@redhat.com>
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
 David Airlie <airlied@linux.ie>, Simon Ser <contact@emersion.fr>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 27, 2021 at 11:20 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
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

Lyude's irc review:

<Lyude> btw danvet (sorry I didn't reply in-line, for some reason I
can't actually seem to find the emails for your allow_fb_modifiers
series in my email client), I just looked over your allow_fb_modifiers
series and everything looks fine with one comment:
https://lore.kernel.org/dri-devel/20210427092018.832258-8-daniel.vetter@ffwll.ch/
we should probably use drm_WARN_ON() here instead
<Lyude> with that fixed: Reviewed-by: Lyude Paul <lyude@redhat.com>

I'll merge the driver patches and respin this one afterwards.
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
>                         format_modifier_count++;
>         }
>
> -       if (format_modifier_count)
> +       /* autoset the cap and check for consistency across all planes */
> +       if (format_modifier_count) {
> +               WARN_ON(!config->allow_fb_modifiers &&
> +                       !list_empty(&config->plane_list));
>                 config->allow_fb_modifiers = true;
> +       } else {
> +               WARN_ON(config->allow_fb_modifiers);
> +       }
>
>         plane->modifier_count = format_modifier_count;
>         plane->modifiers = kmalloc_array(format_modifier_count,
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
>          * @allow_fb_modifiers:
>          *
>          * Whether the driver supports fb modifiers in the ADDFB2.1 ioctl call.
> +        * Note that drivers should not set this directly, it is automatically
> +        * set in drm_universal_plane_init().
>          *
>          * IMPORTANT:
>          *
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
