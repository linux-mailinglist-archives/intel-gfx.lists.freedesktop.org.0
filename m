Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4123BE761
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 13:46:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64B516E0F7;
	Wed,  7 Jul 2021 11:46:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64D4B6E0F7
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 11:46:21 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 i2-20020a05600c3542b02902058529ea07so1479865wmq.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Jul 2021 04:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Fn6YLWL5c68dBpWGXuGInnD6RFdKHUx3RvOBxeQkxRY=;
 b=Sm/AALoQBrdBodcdqGUe5hiMq1LKUKQX2aXdrXkAjY5Mo97GatUQv7IOpoHTDNgkMZ
 p7rF30HV/k5+/VtnoWWwCuYqdB1QLfe0Awm7TFBl5q713bNblrzKyXQcN61BlzpbpZXU
 4ZFTsqWbHHCxc7BjDIIFUcBpBTTyneiLk3X60=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Fn6YLWL5c68dBpWGXuGInnD6RFdKHUx3RvOBxeQkxRY=;
 b=nbHspVHkODURZb6wj/2hxrS8Bhzwpu18sK9EXnR4yX6C2hp0bfZxfxAunfIHgVgcdh
 TiYHpz0LS6sRgvS6mVVXMtnv7tSdDUV75gi6L2Mv8ehmPxpf+Vi+KQXyWnULywxvCL0z
 DjyXbFFNDvfOhpmKgP5LqMJIcAePG8pU75iQYUH2osyo86GUG42bVe9cSycva/1m/jZ1
 0xZG9jjhqrAmy8iKUH9zhbGjyF2M1fgtWrVi+tQPKC+AFrUj68UBOzVlJa8OsUT3iP6B
 dJNt5JJPTC/pOt4JbFceNAJgTlXKp6Ov2uL94Of/UudVB91CvSWSPzOXNalrPape1/6i
 4enQ==
X-Gm-Message-State: AOAM532naCOmemBNwBjloRqn+7g8bMgDcFa6YEvkpstw7XXab3K9mQlR
 k/sTiOx2ogqPKpzgQgE0cIBaHg==
X-Google-Smtp-Source: ABdhPJxuGSoBaWkbsLHDV5MPCVwS1KEjjjJqHaoNeAmmEwHOUHsGqpfEl+lSa1nsjHPDQgorYtXl7g==
X-Received: by 2002:a7b:c092:: with SMTP id r18mr26671243wmh.181.1625658380031; 
 Wed, 07 Jul 2021 04:46:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r13sm9694704wrt.38.2021.07.07.04.46.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Jul 2021 04:46:19 -0700 (PDT)
Date: Wed, 7 Jul 2021 13:46:17 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YOWUCZy354RR53i0@phenom.ffwll.local>
References: <20210705135310.1502437-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210705135310.1502437-1-matthew.auld@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915: use consistent CPU
 mappings for pin_map users
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 05, 2021 at 02:53:06PM +0100, Matthew Auld wrote:
> For discrete, users of pin_map() needs to obey the same rules at the TTM
> backend, where we map system only objects as WB, and everything else as
> WC. The simplest for now is to just force the correct mapping type as
> per the new rules for discrete.
> =

> Suggested-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Ramalingam C <ramalingam.c@intel.com>

Huge thanks for doing all the kerneldoc work for uapi you're doing in this
series, this should help a lot with umd conversions since we can just
point them at the docs and tell them to pls update code.

Yes I know there's no kerneldoc here, but I didn't see the cover letter
:-)

Cheers, Daniel

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.c | 34 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/gem/i915_gem_object.h |  4 +++
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 22 ++++++++++++--
>  3 files changed, 58 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm=
/i915/gem/i915_gem_object.c
> index 547cc9dad90d..9da7b288b7ed 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -625,6 +625,40 @@ int i915_gem_object_migrate(struct drm_i915_gem_obje=
ct *obj,
>  	return obj->ops->migrate(obj, mr);
>  }
>  =

> +/**
> + * i915_gem_object_placement_possible - Check whether the object can be
> + * placed at certain memory type
> + * @obj: Pointer to the object
> + * @type: The memory type to check
> + *
> + * Return: True if the object can be placed in @type. False otherwise.
> + */
> +bool i915_gem_object_placement_possible(struct drm_i915_gem_object *obj,
> +					enum intel_memory_type type)
> +{
> +	unsigned int i;
> +
> +	if (!obj->mm.n_placements) {
> +		switch (type) {
> +		case INTEL_MEMORY_LOCAL:
> +			return i915_gem_object_has_iomem(obj);
> +		case INTEL_MEMORY_SYSTEM:
> +			return i915_gem_object_has_pages(obj);
> +		default:
> +			/* Ignore stolen for now */
> +			GEM_BUG_ON(1);
> +			return false;
> +		}
> +	}
> +
> +	for (i =3D 0; i < obj->mm.n_placements; i++) {
> +		if (obj->mm.placements[i]->type =3D=3D type)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>  void i915_gem_init__objects(struct drm_i915_private *i915)
>  {
>  	INIT_WORK(&i915->mm.free_work, __i915_gem_free_work);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm=
/i915/gem/i915_gem_object.h
> index d423d8cac4f2..8be4fadeee48 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -12,6 +12,7 @@
>  #include <drm/drm_device.h>
>  =

>  #include "display/intel_frontbuffer.h"
> +#include "intel_memory_region.h"
>  #include "i915_gem_object_types.h"
>  #include "i915_gem_gtt.h"
>  #include "i915_gem_ww.h"
> @@ -607,6 +608,9 @@ bool i915_gem_object_can_migrate(struct drm_i915_gem_=
object *obj,
>  int i915_gem_object_wait_migration(struct drm_i915_gem_object *obj,
>  				   unsigned int flags);
>  =

> +bool i915_gem_object_placement_possible(struct drm_i915_gem_object *obj,
> +					enum intel_memory_type type);
> +
>  #ifdef CONFIG_MMU_NOTIFIER
>  static inline bool
>  i915_gem_object_is_userptr(struct drm_i915_gem_object *obj)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/=
i915/gem/i915_gem_pages.c
> index f2f850e31b8e..810a157a18f8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -321,8 +321,7 @@ static void *i915_gem_object_map_pfn(struct drm_i915_=
gem_object *obj,
>  	dma_addr_t addr;
>  	void *vaddr;
>  =

> -	if (type !=3D I915_MAP_WC)
> -		return ERR_PTR(-ENODEV);
> +	GEM_BUG_ON(type !=3D I915_MAP_WC);
>  =

>  	if (n_pfn > ARRAY_SIZE(stack)) {
>  		/* Too big for stack -- allocate temporary array instead */
> @@ -374,6 +373,25 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_ob=
ject *obj,
>  	}
>  	GEM_BUG_ON(!i915_gem_object_has_pages(obj));
>  =

> +	/*
> +	 * For discrete our CPU mappings needs to be consistent in order to
> +	 * function correctly on !x86. When mapping things through TTM, we use
> +	 * the same rules to determine the caching type.
> +	 *
> +	 * Internal users of lmem are already expected to get this right, so no
> +	 * fudging needed there.
> +	 */
> +	if (i915_gem_object_placement_possible(obj, INTEL_MEMORY_LOCAL)) {
> +		if (type !=3D I915_MAP_WC && !obj->mm.n_placements) {
> +			ptr =3D ERR_PTR(-ENODEV);
> +			goto err_unpin;
> +		}
> +
> +		type =3D I915_MAP_WC;
> +	} else if (IS_DGFX(to_i915(obj->base.dev))) {
> +		type =3D I915_MAP_WB;
> +	}
> +
>  	ptr =3D page_unpack_bits(obj->mm.mapping, &has_type);
>  	if (ptr && has_type !=3D type) {
>  		if (pinned) {
> -- =

> 2.26.3
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
