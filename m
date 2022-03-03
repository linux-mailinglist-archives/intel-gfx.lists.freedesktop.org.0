Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E1A4CBFC9
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 15:16:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2DB910E89C;
	Thu,  3 Mar 2022 14:16:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E145E10E3FF
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 14:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646316978; x=1677852978;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=krG7/jJfLl07t0WWgVpDqAmMIn5HNfdFf1e/0MsWscc=;
 b=L1fYHx9P3eOncMCi5Oc2N+l9aZsFZNupfdFdxayuG0zADU2s+/6cAmD5
 freVe6LFaLjSM7v3IUVyLY4Py68DbdAQQ3U/sLBeAEAEBSZSIPxabK+b2
 xjFKiJL/VGS16C2m37XaARzbUzK3Ou/+8eVV/oZ2aqTKvBmk5Y6OBcFrK
 baZ0yLmXMDcfdAlkT7i/nu/4emAeU2Pde4Y4Bt5Cs/VD+xmUmD/CMjrCn
 einoIW7bGck+a2zCkC5oZtXTaFxFdNieRBQL0HTmUeizTwtoaM8Zj660E
 roidvCmVGRZKJnRBArjrvqyYGG8aZliZWz5jy4gLqnUtF1tQ+ErqUfq00 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="233648192"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="233648192"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 06:16:18 -0800
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="511442885"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 06:16:17 -0800
Date: Thu, 3 Mar 2022 16:16:44 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220303141644.GD10068@intel.com>
References: <20220214105532.13049-1-ville.syrjala@linux.intel.com>
 <20220214105532.13049-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220214105532.13049-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Pimp async flip debugs
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

On Mon, Feb 14, 2022 at 12:55:32PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Print the offending plane/crtc id+name in the async flip debugs.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 63 ++++++++++++++------
>  1 file changed, 44 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 93db8ffa54f8..51ef393ff87b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7541,18 +7541,24 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
>  	if (!new_crtc_state->uapi.async_flip)
>  		return 0;
>  
> -	if (intel_crtc_needs_modeset(new_crtc_state)) {
> -		drm_dbg_kms(&i915->drm, "Modeset Required. Async flip not supported\n");
> -		return -EINVAL;
> -	}
> -
>  	if (!new_crtc_state->hw.active) {
> -		drm_dbg_kms(&i915->drm, "CRTC inactive\n");
> +		drm_dbg_kms(&i915->drm,
> +			    "[CRTC:%d:%s] not active\n",
> +			    crtc->base.base.id, crtc->base.name);
>  		return -EINVAL;
>  	}
> +
> +	if (intel_crtc_needs_modeset(new_crtc_state)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "[CRTC:%d:%s] modeset required\n",
> +			    crtc->base.base.id, crtc->base.name);
> +		return -EINVAL;
> +	}
> +
>  	if (old_crtc_state->active_planes != new_crtc_state->active_planes) {
>  		drm_dbg_kms(&i915->drm,
> -			    "Active planes cannot be changed during async flip\n");
> +			    "[CRTC:%d:%s] Active planes cannot be in async flip\n",
> +			    crtc->base.base.id, crtc->base.name);
>  		return -EINVAL;
>  	}
>  
> @@ -7593,75 +7599,94 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
>  			break;
>  		default:
>  			drm_dbg_kms(&i915->drm,
> -				    "Linear memory/CCS does not support async flips\n");
> +				    "[PLANE:%d:%s] Modifier does not support async flips\n",
> +				    plane->base.base.id, plane->base.name);
>  			return -EINVAL;
>  		}
>  
>  		if (new_plane_state->hw.fb->format->num_planes > 1) {
>  			drm_dbg_kms(&i915->drm,
> -				    "Planar formats not supported with async flips\n");
> +				    "[PLANE:%d:%s] Planar formats do not support async flips\n",
> +				    plane->base.base.id, plane->base.name);
>  			return -EINVAL;
>  		}
>  
>  		if (old_plane_state->view.color_plane[0].mapping_stride !=
>  		    new_plane_state->view.color_plane[0].mapping_stride) {
> -			drm_dbg_kms(&i915->drm, "Stride cannot be changed in async flip\n");
> +			drm_dbg_kms(&i915->drm,
> +				    "[PLANE:%d:%s] Stride cannot be changed in async flip\n",
> +				    plane->base.base.id, plane->base.name);
>  			return -EINVAL;
>  		}
>  
>  		if (old_plane_state->hw.fb->modifier !=
>  		    new_plane_state->hw.fb->modifier) {
>  			drm_dbg_kms(&i915->drm,
> -				    "Framebuffer modifiers cannot be changed in async flip\n");
> +				    "[PLANE:%d:%s] Modifier cannot be changed in async flip\n",
> +				    plane->base.base.id, plane->base.name);
>  			return -EINVAL;
>  		}
>  
>  		if (old_plane_state->hw.fb->format !=
>  		    new_plane_state->hw.fb->format) {
>  			drm_dbg_kms(&i915->drm,
> -				    "Framebuffer format cannot be changed in async flip\n");
> +				    "[PLANE:%d:%s] Pixel format cannot be changed in async flip\n",
> +				    plane->base.base.id, plane->base.name);
>  			return -EINVAL;
>  		}
>  
>  		if (old_plane_state->hw.rotation !=
>  		    new_plane_state->hw.rotation) {
> -			drm_dbg_kms(&i915->drm, "Rotation cannot be changed in async flip\n");
> +			drm_dbg_kms(&i915->drm,
> +				    "[PLANE:%d:%s] Rotation cannot be changed in async flip\n",
> +				    plane->base.base.id, plane->base.name);
>  			return -EINVAL;
>  		}
>  
>  		if (!drm_rect_equals(&old_plane_state->uapi.src, &new_plane_state->uapi.src) ||
>  		    !drm_rect_equals(&old_plane_state->uapi.dst, &new_plane_state->uapi.dst)) {
>  			drm_dbg_kms(&i915->drm,
> -				    "Plane size/co-ordinates cannot be changed in async flip\n");
> +				    "[PLANE:%d:%s] Size/co-ordinates cannot be changed in async flip\n",
> +				    plane->base.base.id, plane->base.name);
>  			return -EINVAL;
>  		}
>  
>  		if (old_plane_state->hw.alpha != new_plane_state->hw.alpha) {
> -			drm_dbg_kms(&i915->drm, "Alpha value cannot be changed in async flip\n");
> +			drm_dbg_kms(&i915->drm,
> +				    "[PLANES:%d:%s] Alpha value cannot be changed in async flip\n",
> +				    plane->base.base.id, plane->base.name);
>  			return -EINVAL;
>  		}
>  
>  		if (old_plane_state->hw.pixel_blend_mode !=
>  		    new_plane_state->hw.pixel_blend_mode) {
>  			drm_dbg_kms(&i915->drm,
> -				    "Pixel blend mode cannot be changed in async flip\n");
> +				    "[PLANE:%d:%s] Pixel blend mode cannot be changed in async flip\n",
> +				    plane->base.base.id, plane->base.name);
>  			return -EINVAL;
>  		}
>  
>  		if (old_plane_state->hw.color_encoding != new_plane_state->hw.color_encoding) {
>  			drm_dbg_kms(&i915->drm,
> -				    "Color encoding cannot be changed in async flip\n");
> +				    "[PLANE:%d:%s] Color encoding cannot be changed in async flip\n",
> +				    plane->base.base.id, plane->base.name);
>  			return -EINVAL;
>  		}
>  
>  		if (old_plane_state->hw.color_range != new_plane_state->hw.color_range) {
> -			drm_dbg_kms(&i915->drm, "Color range cannot be changed in async flip\n");
> +			drm_dbg_kms(&i915->drm,
> +				    "[PLANE:%d:%s] Color range cannot be changed in async flip\n",
> +				    plane->base.base.id, plane->base.name);
>  			return -EINVAL;
>  		}
>  
>  		/* plane decryption is allow to change only in synchronous flips */
> -		if (old_plane_state->decrypt != new_plane_state->decrypt)
> +		if (old_plane_state->decrypt != new_plane_state->decrypt) {
> +			drm_dbg_kms(&i915->drm,
> +				    "[PLANE:%d:%s] Decryption cannot be changed in async flip\n",
> +				    plane->base.base.id, plane->base.name);
>  			return -EINVAL;
> +		}
>  	}
>  
>  	return 0;
> -- 
> 2.34.1
> 
