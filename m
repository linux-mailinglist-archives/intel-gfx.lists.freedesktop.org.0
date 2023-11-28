Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BE77FBB8E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 14:29:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0403810E522;
	Tue, 28 Nov 2023 13:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87C3610E522
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 13:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701178172; x=1732714172;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HzzJ7lSoRPhN/Oq0CYSR6JvZwV7kFN9WOKZNukR91xk=;
 b=PD97ZIYbKe1btUW9KnuphWwaU4UjawBJ1hSCkAOsEEzdHWSkDjxVI43C
 YYYgIyEUT2jDwygF3O3CxhEL0+S5ax/ooqzN5mkTrTiaqfkajxxb4NOwL
 +fFG48bDOUXaEvTxTzW2Xrb9/H4BAja+uppmD2n4uT6KPmiM1gkpjRu2a
 XqtEBtt/obmSKJnr8aFFUnmfD1eO6T5IoHxiS39KjTLCsR//slvXzEBQu
 h2M6lkZd78+fMWceuXDPJh0ZX25rMvjGfbuv7Sl5LmvM86fkirci2DBgY
 sqbJlglKzYcziSa5/hgQoAe6g4ralz19A/oepu6PWzfGqaYWwUb0lZMq1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="392672752"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="392672752"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 05:29:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761935183"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="761935183"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 28 Nov 2023 05:29:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Nov 2023 15:29:27 +0200
Date: Tue, 28 Nov 2023 15:29:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZWXrNyDLj3SYVgLY@intel.com>
References: <20231123074120.1641630-1-jouni.hogander@intel.com>
 <20231123074120.1641630-5-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231123074120.1641630-5-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v6 4/4] drm/i915/display: Split i915
 specific code away from intel_fb.c
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 23, 2023 at 09:41:20AM +0200, Jouni Högander wrote:
> We are preparing for Xe driver. Backing object implementation is differing
> between i915 and Xe. Split i915 specific code into separate source file
> built only for i915.
> 
> v6: Add missing intel_fb_bo.[ch]
> v5:
>   - Keep drm_any_plane_has_format check in intel_fb.c
>   - Use mode_cmd instead of user_mode_cmd for intel_fb_bo_lookup_valid_bo
> v4: Move drm_any_plane_has_format check into intel_fb_bo.c
> v3: Fix failure handling in intel_framebuffer_init
> v2: Couple of fixes to error value handling
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile              |  1 +
>  drivers/gpu/drm/i915/display/intel_fb.c    | 69 ++--------------
>  drivers/gpu/drm/i915/display/intel_fb_bo.c | 93 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fb_bo.h | 24 ++++++
>  4 files changed, 126 insertions(+), 61 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 7e5d6a39d450..c14ba1212b84 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -279,6 +279,7 @@ i915-y += \
>  	display/intel_dsb.o \
>  	display/intel_dsb_buffer.o \
>  	display/intel_fb.o \
> +	display/intel_fb_bo.o \
>  	display/intel_fb_pin.o \
>  	display/intel_fbc.o \
>  	display/intel_fdi.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index f63f56b24b11..d5de213be2c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -4,7 +4,6 @@
>   */
>  
>  #include <drm/drm_blend.h>
> -#include <drm/drm_framebuffer.h>
>  #include <drm/drm_modeset_helper.h>
>  
>  #include <linux/dma-fence.h>
> @@ -15,6 +14,7 @@
>  #include "intel_display_types.h"
>  #include "intel_dpt.h"
>  #include "intel_fb.h"
> +#include "intel_fb_bo.h"
>  #include "intel_frontbuffer.h"
>  
>  #define check_array_bounds(i915, a, i) drm_WARN_ON(&(i915)->drm, (i) >= ARRAY_SIZE(a))
> @@ -1985,7 +1985,6 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
>  	struct drm_i915_private *dev_priv = to_i915(intel_bo_to_drm_bo(obj)->dev);
>  	struct drm_framebuffer *fb = &intel_fb->base;
>  	u32 max_stride;
> -	unsigned int tiling, stride;
>  	int ret = -EINVAL;
>  	int i;
>  
> @@ -1993,32 +1992,11 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
>  	if (!intel_fb->frontbuffer)
>  		return -ENOMEM;
>  
> -	i915_gem_object_lock(obj, NULL);
> -	tiling = i915_gem_object_get_tiling(obj);
> -	stride = i915_gem_object_get_stride(obj);
> -	i915_gem_object_unlock(obj);
> -
> -	if (mode_cmd->flags & DRM_MODE_FB_MODIFIERS) {
> -		/*
> -		 * If there's a fence, enforce that
> -		 * the fb modifier and tiling mode match.
> -		 */
> -		if (tiling != I915_TILING_NONE &&
> -		    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "tiling_mode doesn't match fb modifier\n");
> -			goto err;
> -		}
> -	} else {
> -		if (tiling == I915_TILING_X) {
> -			mode_cmd->modifier[0] = I915_FORMAT_MOD_X_TILED;
> -		} else if (tiling == I915_TILING_Y) {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "No Y tiling for legacy addfb\n");
> -			goto err;
> -		}
> -	}
> +	ret = intel_fb_bo_framebuffer_init(intel_fb, obj, mode_cmd);
> +	if (ret)
> +		goto err;
>  
> +	ret = -EINVAL;
>  	if (!drm_any_plane_has_format(&dev_priv->drm,
>  				      mode_cmd->pixel_format,
>  				      mode_cmd->modifier[0])) {
> @@ -2028,17 +2006,6 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
>  		goto err;
>  	}
>  
> -	/*
> -	 * gen2/3 display engine uses the fence if present,
> -	 * so the tiling mode must match the fb modifier exactly.
> -	 */
> -	if (DISPLAY_VER(dev_priv) < 4 &&
> -	    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "tiling_mode must match fb modifier exactly on gen2/3\n");
> -		goto err;
> -	}
> -
>  	max_stride = intel_fb_max_stride(dev_priv, mode_cmd->pixel_format,
>  					 mode_cmd->modifier[0]);
>  	if (mode_cmd->pitches[0] > max_stride) {
> @@ -2050,17 +2017,6 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
>  		goto err;
>  	}
>  
> -	/*
> -	 * If there's a fence, enforce that
> -	 * the fb pitch and fence stride match.
> -	 */
> -	if (tiling != I915_TILING_NONE && mode_cmd->pitches[0] != stride) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "pitch (%d) must match tiling stride (%d)\n",
> -			    mode_cmd->pitches[0], stride);
> -		goto err;
> -	}
> -
>  	/* FIXME need to adjust LINOFF/TILEOFF accordingly. */
>  	if (mode_cmd->offsets[0] != 0) {
>  		drm_dbg_kms(&dev_priv->drm,
> @@ -2144,21 +2100,12 @@ intel_user_framebuffer_create(struct drm_device *dev,
>  	struct drm_framebuffer *fb;
>  	struct drm_i915_gem_object *obj;
>  	struct drm_mode_fb_cmd2 mode_cmd = *user_mode_cmd;
> -	struct drm_i915_private *i915;
> +	struct drm_i915_private *i915 = to_i915(dev);
>  
> -	obj = i915_gem_object_lookup(filp, mode_cmd.handles[0]);
> -	if (!obj)
> +	obj = intel_fb_bo_lookup_valid_bo(i915, filp, &mode_cmd);
> +	if (IS_ERR(obj))
>  		return ERR_PTR(-ENOENT);
>  
> -	/* object is backed with LMEM for discrete */
> -	i915 = to_i915(obj->base.dev);
> -	if (HAS_LMEM(i915) && !i915_gem_object_can_migrate(obj, INTEL_REGION_LMEM_0)) {
> -		/* object is "remote", not in local memory */
> -		i915_gem_object_put(obj);
> -		drm_dbg_kms(&i915->drm, "framebuffer must reside in local memory\n");
> -		return ERR_PTR(-EREMOTE);
> -	}
> -
>  	fb = intel_framebuffer_create(obj, &mode_cmd);
>  	drm_gem_object_put(intel_bo_to_drm_bo(obj));
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display/intel_fb_bo.c
> new file mode 100644
> index 000000000000..9844b100fa0c
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
> @@ -0,0 +1,93 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2021 Intel Corporation
> + */
> +
> +#include <drm/drm_framebuffer.h>
> +#include <drm/drm_plane.h>

Do we still need that?

> +
> +#include "gem/i915_gem_object.h"
> +
> +#include "i915_drv.h"
> +#include "intel_fb.h"
> +#include "intel_fb_bo.h"
> +
> +int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
> +				 struct drm_i915_gem_object *obj,
> +				 struct drm_mode_fb_cmd2 *mode_cmd)
> +{
> +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
> +	unsigned int tiling, stride;
> +
> +	i915_gem_object_lock(obj, NULL);
> +	tiling = i915_gem_object_get_tiling(obj);
> +	stride = i915_gem_object_get_stride(obj);
> +	i915_gem_object_unlock(obj);
> +
> +	if (mode_cmd->flags & DRM_MODE_FB_MODIFIERS) {
> +		/*
> +		 * If there's a fence, enforce that
> +		 * the fb modifier and tiling mode match.
> +		 */
> +		if (tiling != I915_TILING_NONE &&
> +		    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
> +			drm_dbg_kms(&i915->drm,
> +				    "tiling_mode doesn't match fb modifier\n");
> +			return -EINVAL;
> +		}
> +	} else {
> +		if (tiling == I915_TILING_X) {
> +			mode_cmd->modifier[0] = I915_FORMAT_MOD_X_TILED;
> +		} else if (tiling == I915_TILING_Y) {
> +			drm_dbg_kms(&i915->drm,
> +				    "No Y tiling for legacy addfb\n");
> +			return -EINVAL;
> +		}
> +	}
> +
> +	/*
> +	 * gen2/3 display engine uses the fence if present,
> +	 * so the tiling mode must match the fb modifier exactly.
> +	 */
> +	if (DISPLAY_VER(i915) < 4 &&
> +	    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
> +		drm_dbg_kms(&i915->drm,
> +			    "tiling_mode must match fb modifier exactly on gen2/3\n");
> +		return -EINVAL;
> +	}
> +
> +	/*
> +	 * If there's a fence, enforce that
> +	 * the fb pitch and fence stride match.
> +	 */
> +	if (tiling != I915_TILING_NONE && mode_cmd->pitches[0] != stride) {
> +		drm_dbg_kms(&i915->drm,
> +			    "pitch (%d) must match tiling stride (%d)\n",
> +			    mode_cmd->pitches[0], stride);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +struct drm_i915_gem_object *
> +intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
> +			    struct drm_file *filp,
> +			    const struct drm_mode_fb_cmd2 *user_mode_cmd)

I'd so a s/user_mode_cmd/mode_cmd/ here too. Or we could pass just the
handle.

> +{
> +	struct drm_i915_gem_object *obj = i915_gem_object_lookup(filp, user_mode_cmd->handles[0]);

I'd split the declaration and assignment to separate statements since
this can fail. More obvious what the check below does if the assignment
is just before it.

> +
> +	if (!obj)
> +		return ERR_PTR(-ENOENT);
> +
> +	/* object is backed with LMEM for discrete */
> +	i915 = to_i915(obj->base.dev);

You already passed that in explicitly. Doing both makes it look
as if there's some magic going on here where it's possible
that the passed i915 != obj->base.dev. I'd probably go with
passing it in explicitly since then we don't have to worry
about the obj==NULL, or try to dig out the device from the file.

> +	if (HAS_LMEM(i915) && !i915_gem_object_can_migrate(obj, INTEL_REGION_LMEM_0)) {
> +		/* object is "remote", not in local memory */
> +		i915_gem_object_put(obj);
> +		drm_dbg_kms(&i915->drm, "framebuffer must reside in local memory\n");
> +		return ERR_PTR(-EREMOTE);
> +	}
> +
> +	return obj;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.h b/drivers/gpu/drm/i915/display/intel_fb_bo.h
> new file mode 100644
> index 000000000000..dd06ceec8601
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_fb_bo.h
> @@ -0,0 +1,24 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2021 Intel Corporation
> + */
> +
> +#ifndef __INTEL_FB_BO_H__
> +#define __INTEL_FB_BO_H__
> +
> +struct drm_file;
> +struct drm_mode_fb_cmd2;
> +struct drm_i915_gem_object;
> +struct drm_i915_private;
> +struct intel_framebuffer;
> +
> +int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
> +				 struct drm_i915_gem_object *obj,
> +				 struct drm_mode_fb_cmd2 *mode_cmd);
> +
> +struct drm_i915_gem_object *
> +intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
> +			    struct drm_file *filp,
> +			    const struct drm_mode_fb_cmd2 *user_mode_cmd);

s/user_mode_cmd/mode_cmd/ here too.

> +
> +#endif
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
