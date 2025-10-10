Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B12FFBCD5E3
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 15:57:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00DD310EC0A;
	Fri, 10 Oct 2025 13:57:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m2erk5e6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F5F410E0BA;
 Fri, 10 Oct 2025 13:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760104630; x=1791640630;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TD2/JgrHoAePyoGFCe2/z+jIe+ciYNmfVfugR/cZgyk=;
 b=m2erk5e6BzxcbRAm8ps5jKqDVxFwMttcvzJZUe/O5ZeVdVTBwCHGwZIh
 Vr8wORqH5Bunzg7V7ANcdHfufXyRKKy00GVbvGNiNhn7Z6wkuSBSj68HN
 Rezl21+zXJZGII8uMvghgmewsuTd6qv7wokspdDvr6GIJjrPtkT+Q4aAi
 Q22peuiRuuaWdYx2O/s9uCepPKYqqDgK+u5gsMAWji/dESRr+jZdCn8Tv
 9BSC+X8myzl2fMp+wTWjpnRV0dJpi+/MxlYgFkwL1KLWsU7IXmhQ4aDwn
 RzfVV330RjE0pmZd8N19aSKHm+lxN8ijlFG4zkSAHy345x76YSYfv3V0S g==;
X-CSE-ConnectionGUID: ijLbyhPnRMa6en3OvPqIKQ==
X-CSE-MsgGUID: SMQeMBDoTEOfKNiBwm9jMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11578"; a="62026631"
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="62026631"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 06:57:10 -0700
X-CSE-ConnectionGUID: etHN8UWvTk6aZ9E+7NtFGw==
X-CSE-MsgGUID: LLAdSWPDSWWfEL4uK2ODAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="211635086"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.174])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 06:57:08 -0700
Date: Fri, 10 Oct 2025 16:57:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915: include gen 2 in HAS_128_BYTE_Y_TILING()
Message-ID: <aOkQsaOGg9wiILT-@intel.com>
References: <cover.1760094361.git.jani.nikula@intel.com>
 <41bf9d67a11f38f4ab0f82740f38d5c8fe0bb58b.1760094361.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <41bf9d67a11f38f4ab0f82740f38d5c8fe0bb58b.1760094361.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 10, 2025 at 02:07:51PM +0300, Jani Nikula wrote:
> Gen 2 platforms actually have 128-byte Y-tile, it's just different from
> the 128-byte Y-tile on i945+. Make the HAS_128_BYTE_Y_TILING() feature
> check macro and its usage slightly less convoluted by including gen 2 in
> it.
> 
> i915_tiling_ok() would strictly not need changing, but separate the if
> clauses to emphasize gen 2 X-tile also being 128 bytes.
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I think I want to redo the gem side tile size stuff with a
bigger hammer a bit at some point, but this seems fine 
for now.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c    | 2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_tiling.c | 5 +++--
>  drivers/gpu/drm/i915/i915_drv.h            | 3 +--
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 99823ef42ef1..3bfd211d64ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -814,7 +814,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
>  			return 64;
>  		fallthrough;
>  	case I915_FORMAT_MOD_Y_TILED:
> -		if (DISPLAY_VER(display) == 2 || HAS_128_BYTE_Y_TILING(i915))
> +		if (HAS_128_BYTE_Y_TILING(i915))
>  			return 128;
>  		else
>  			return 512;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> index 5a296ba3758a..567b97d28d30 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> @@ -145,8 +145,9 @@ i915_tiling_ok(struct drm_i915_gem_object *obj,
>  			return false;
>  	}
>  
> -	if (GRAPHICS_VER(i915) == 2 ||
> -	    (tiling == I915_TILING_Y && HAS_128_BYTE_Y_TILING(i915)))
> +	if (tiling == I915_TILING_Y && HAS_128_BYTE_Y_TILING(i915))
> +		tile_width = 128;
> +	else if (GRAPHICS_VER(i915) == 2)
>  		tile_width = 128;
>  	else
>  		tile_width = 512;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 6e159bb8ad2f..4b66e5d017d9 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -602,8 +602,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  /* With the 945 and later, Y tiling got adjusted so that it was 32 128-byte
>   * rows, which changed the alignment requirements and fence programming.
>   */
> -#define HAS_128_BYTE_Y_TILING(i915) (GRAPHICS_VER(i915) != 2 && \
> -					 !(IS_I915G(i915) || IS_I915GM(i915)))
> +#define HAS_128_BYTE_Y_TILING(i915) (!IS_I915G(i915) && !IS_I915GM(i915))
>  
>  #define HAS_RC6(i915)		 (INTEL_INFO(i915)->has_rc6)
>  #define HAS_RC6p(i915)		 (INTEL_INFO(i915)->has_rc6p)
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
