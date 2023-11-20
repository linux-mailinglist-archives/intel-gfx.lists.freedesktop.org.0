Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBC67F1590
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 15:20:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A93A010E0C2;
	Mon, 20 Nov 2023 14:20:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6212910E0C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 14:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700489998; x=1732025998;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZntSCXtKtSTLuYChI93Wed+ZuVd0I64lAZ/2jIcyLo0=;
 b=UC1YPEXLSCD0S1KjU/iYfdnvr/c4r+NxuK3vIf/N4RUnGfmNC1jAibXn
 PCzRQRntvVFaPcz91lVP7CCPN3Qx57f2T116WYDbbfBufktdOmOJg9Ywu
 UvN8VXmPxLXIfc+8WwjtVpNW/OudGgTMrb+YlTiMMPr3i/d3T3pmNwVBa
 QVSeqX/u6jfw6nnAha/JRO34SIF41BcQ+dO+JNeeFfXBesJ2cxU1Gaua/
 Le/L0NPwWiYrvULFRF2sIGYGW/4UEfXWGPG6MrJ1QRfj6WT1r6/igyzDp
 lb1YhrsbEZVC+0A+W+RU5tr0vyYO3K4Exr67jM8gcgjWhJYBvAuH1pyij g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="458123668"
X-IronPort-AV: E=Sophos;i="6.04,214,1695711600"; d="scan'208";a="458123668"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 06:19:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="759796052"
X-IronPort-AV: E=Sophos;i="6.04,214,1695711600"; d="scan'208";a="759796052"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 20 Nov 2023 06:19:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Nov 2023 16:19:54 +0200
Date: Mon, 20 Nov 2023 16:19:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZVtrCn49e9lxvOf9@intel.com>
References: <20231120100833.3221946-1-jouni.hogander@intel.com>
 <20231120100833.3221946-3-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231120100833.3221946-3-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 2/3] drm/i915/display: Convert
 intel_fb_modifier_to_tiling as non-static
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

On Mon, Nov 20, 2023 at 12:08:32PM +0200, Jouni Högander wrote:
> We are about to split i915 specific code from intel_fb.c. Convert
> intel_fb_modifier_to_tiling as non-static to allow calling it from split
> code.

We should only need this in the i915 path.

> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 40 ++++++++++++-------------
>  drivers/gpu/drm/i915/display/intel_fb.h |  2 ++
>  2 files changed, 22 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 7c2df6c1f377..a235ec0f192d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -301,6 +301,26 @@ lookup_format_info(const struct drm_format_info formats[],
>  	return NULL;
>  }
>  
> +unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
> +{
> +	u8 tiling_caps = lookup_modifier(fb_modifier)->plane_caps &
> +			 INTEL_PLANE_CAP_TILING_MASK;
> +
> +	switch (tiling_caps) {
> +	case INTEL_PLANE_CAP_TILING_Y:
> +		return I915_TILING_Y;
> +	case INTEL_PLANE_CAP_TILING_X:
> +		return I915_TILING_X;
> +	case INTEL_PLANE_CAP_TILING_4:
> +	case INTEL_PLANE_CAP_TILING_Yf:
> +	case INTEL_PLANE_CAP_TILING_NONE:
> +		return I915_TILING_NONE;
> +	default:
> +		MISSING_CASE(tiling_caps);
> +		return I915_TILING_NONE;
> +	}
> +}
> +
>  /**
>   * intel_fb_get_format_info: Get a modifier specific format information
>   * @cmd: FB add command structure
> @@ -737,26 +757,6 @@ intel_fb_align_height(const struct drm_framebuffer *fb,
>  	return ALIGN(height, tile_height);
>  }
>  
> -static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
> -{
> -	u8 tiling_caps = lookup_modifier(fb_modifier)->plane_caps &
> -			 INTEL_PLANE_CAP_TILING_MASK;
> -
> -	switch (tiling_caps) {
> -	case INTEL_PLANE_CAP_TILING_Y:
> -		return I915_TILING_Y;
> -	case INTEL_PLANE_CAP_TILING_X:
> -		return I915_TILING_X;
> -	case INTEL_PLANE_CAP_TILING_4:
> -	case INTEL_PLANE_CAP_TILING_Yf:
> -	case INTEL_PLANE_CAP_TILING_NONE:
> -		return I915_TILING_NONE;
> -	default:
> -		MISSING_CASE(tiling_caps);
> -		return I915_TILING_NONE;
> -	}
> -}
> -
>  bool intel_fb_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier)
>  {
>  	return HAS_DPT(i915) && modifier != DRM_FORMAT_MOD_LINEAR;
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> index e85167d6bc34..23db6628f53e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -95,4 +95,6 @@ intel_user_framebuffer_create(struct drm_device *dev,
>  bool intel_fb_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier);
>  bool intel_fb_uses_dpt(const struct drm_framebuffer *fb);
>  
> +unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier);
> +
>  #endif /* __INTEL_FB_H__ */
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
