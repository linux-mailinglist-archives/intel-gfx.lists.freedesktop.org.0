Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F0C8BE834
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 18:06:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A44DA10FD9B;
	Tue,  7 May 2024 16:06:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HA/TtMJt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2462411241D;
 Tue,  7 May 2024 16:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715097976; x=1746633976;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ab47YVQDUknQ7xPxko5stbYTYCZV/5WlcSECEZw/OpU=;
 b=HA/TtMJtfMj8UWCsqczYt+CbiCV9su4yxZ6WwwGEx1FQ3GooA2HrRJmA
 99v4NouukUfdByY0xizdt4GJpK6I4VkHuUKPnUSqeDnRQwNDXRA55HbLT
 q4MYGv0tfxA2JiXGdJhJJmwhCd90Xy1zfiHJFvWNHd/yHuxXVr2NQRVHC
 ol/QM0jrUiWB93D8QkswycfV6JcwdF1WE+yI6JT4XmrL+QXqr4oG1jXqM
 SHwyAcXmq+oshUybZrKdsGU/4Xm9Wil3+PxoirfHrti/7i7ac4cI15rQm
 L5slR3aiEggWOa5kJ/0LCWl8MWxqIgXvkUnsZ/XMJPh91jNHCpBPcWlJE Q==;
X-CSE-ConnectionGUID: 7KROs2ZDSrGzvILd41U6lw==
X-CSE-MsgGUID: CmtouPiZSMKsTfN6T4dvgA==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="14693457"
X-IronPort-AV: E=Sophos;i="6.08,142,1712646000"; d="scan'208";a="14693457"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 09:06:15 -0700
X-CSE-ConnectionGUID: viBnxFmaQhimJh8wt4oEJw==
X-CSE-MsgGUID: cgpyRsQHSRKYv2X8GG/jwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,142,1712646000"; d="scan'208";a="28546633"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 May 2024 09:06:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 May 2024 19:06:10 +0300
Date: Tue, 7 May 2024 19:06:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 "Chery, Nanley G" <nanley.g.chery@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Graunke, Kenneth W" <kenneth.w.graunke@intel.com>,
 "Souza, Jose" <jose.souza@intel.com>,
 "Mathew, Alwin" <alwin.mathew@intel.com>,
 "Zhang, Jianxun" <jianxun.zhang@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: Re: [RFC PATCH 3/3] drm/i915/display: allow creation of case
 I915_FORMAT_MOD_4_TILED_XE2_CCS type framebuffer
Message-ID: <ZjpRcqvy7BSCV5fo@intel.com>
References: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
 <20240506185238.364539-4-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240506185238.364539-4-juhapekka.heikkila@gmail.com>
X-Patchwork-Hint: comment
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

On Mon, May 06, 2024 at 09:52:38PM +0300, Juha-Pekka Heikkila wrote:
> Add I915_FORMAT_MOD_4_TILED_XE2_CCS to possible created tiling for new framebuffer
> on Xe driver.
> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c       |  1 +
>  drivers/gpu/drm/i915/display/intel_fb.c            | 10 ++++++++++
>  drivers/gpu/drm/i915/display/skl_universal_plane.c |  4 +++-
>  3 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ef986b508431..083147a21edb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6150,6 +6150,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
>  		case I915_FORMAT_MOD_Y_TILED:
>  		case I915_FORMAT_MOD_Yf_TILED:
>  		case I915_FORMAT_MOD_4_TILED:
> +		case I915_FORMAT_MOD_4_TILED_XE2_CCS:
>  			break;
>  		default:
>  			drm_dbg_kms(&i915->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index bf24f48a1e76..6a44746b8381 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -161,6 +161,10 @@ struct intel_modifier_desc {
>  
>  static const struct intel_modifier_desc intel_modifiers[] = {
>  	{
> +		.modifier = I915_FORMAT_MOD_4_TILED_XE2_CCS,
> +		.display_ver = { 14, -1 },

Should that say 20?

> +		.plane_caps = INTEL_PLANE_CAP_TILING_4,
> +	}, {
>  		.modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS,
>  		.display_ver = { 14, 14 },
>  		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
> @@ -435,6 +439,10 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
>  	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
>  		return false;
>  
> +	if (md->modifier == I915_FORMAT_MOD_4_TILED_XE2_CCS &&
> +	    GRAPHICS_VER(i915) < 20)
> +		return false;
> +
>  	return true;
>  }
>  
> @@ -657,6 +665,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
>  			return 128;
>  		else
>  			return 512;
> +	case I915_FORMAT_MOD_4_TILED_XE2_CCS:
>  	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
>  	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
>  	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
> @@ -858,6 +867,7 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
>  	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
>  	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
>  		return 16 * 1024;
> +	case I915_FORMAT_MOD_4_TILED_XE2_CCS:
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  	case I915_FORMAT_MOD_Yf_TILED_CCS:
>  	case I915_FORMAT_MOD_Y_TILED:
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 0a8e781a3648..e590fea1180a 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -792,6 +792,7 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
>  	case I915_FORMAT_MOD_Y_TILED:
>  		return PLANE_CTL_TILED_Y;
>  	case I915_FORMAT_MOD_4_TILED:
> +	case I915_FORMAT_MOD_4_TILED_XE2_CCS:
>  		return PLANE_CTL_TILED_4;
>  	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
>  		return PLANE_CTL_TILED_4 |
> @@ -949,7 +950,8 @@ static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
>  		plane_ctl |= adlp_plane_ctl_arb_slots(plane_state);
>  
>  	if (GRAPHICS_VER(dev_priv) >= 20 &&
> -	    fb->modifier == I915_FORMAT_MOD_4_TILED) {
> +	    (fb->modifier == I915_FORMAT_MOD_4_TILED ||
> +	     fb->modifier == I915_FORMAT_MOD_4_TILED_XE2_CCS)) {
>  		plane_ctl |= PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;

If we got to the trouble of adding a new modifier then we should
just let skl_plane_ctl_tiling() handle this, like it does for
every other platform.

>  	}
>  
> -- 
> 2.43.2

-- 
Ville Syrjälä
Intel
