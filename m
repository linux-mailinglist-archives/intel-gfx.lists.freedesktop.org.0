Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5325ABFBE3D
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 14:39:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B209710E771;
	Wed, 22 Oct 2025 12:39:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ex1CkGKX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 582CC10E771;
 Wed, 22 Oct 2025 12:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761136765; x=1792672765;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Kp3EPDRPEosCEJNp+cwvxYvQ47zKI+dU4GEFDPA6ljg=;
 b=ex1CkGKXlKFBgDjGfPQuwfUklCdP/4JWCB7sSwz0B/FPsYd4CDI7z0WF
 1ok+OO1Sfydc5mRzxrtzWoJJhwPXBQmJSU10SpIR/6dzsIOsIkKQ8/CoK
 OChCBx4eIlEgnSasYeo0JXiP3CmCuMxVDjwzxuggnZNY/5dVXARd8VvqZ
 fSG/21yR80wgaKvdSHDLVQQofm+ZnR5seoTQU7xGyhDP7E24psT5WbnGw
 MnMs72WF3F9ZMICc8znyEVu/Vg2yZytT2YdJjibTiXSkh+mDkC6dmTVYg
 5AtP3dw6DE01Cuoh0U2b2aAODQLAPbzyrWwf2os5tlBTib/8aF0HqF3uD w==;
X-CSE-ConnectionGUID: 7W2C9BoqTlW5nuGbmLZDGw==
X-CSE-MsgGUID: N4+Rq4P6TUuHBGYqVQksvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74400940"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="74400940"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 05:39:25 -0700
X-CSE-ConnectionGUID: judo2azUQYKDrNOkfZs2IQ==
X-CSE-MsgGUID: /+qh+RSWSEi397pbk/UezA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="188143739"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.74])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 05:39:21 -0700
Date: Wed, 22 Oct 2025 15:39:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: Re: [PATCH v2 08/32] drm/i915/xe3p_lpd: Extend FBC support to UINT16
 formats
Message-ID: <aPjQdtGHkctqp77F@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-8-10eae6d655b8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-8-10eae6d655b8@intel.com>
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

On Tue, Oct 21, 2025 at 09:28:33PM -0300, Gustavo Sousa wrote:
> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> 
> Starting Xe3p_LPD, FBC is supported on UINT16 formats as well. Also
> UINT16 being a 64bpp format, will use cpp of 8 for cfb stride and thus
> size calculations.
> 
> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
> BSpec: 68881, 68904, 69560
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 42 ++++++++++++++++++++++++++++----
>  1 file changed, 37 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 10ef3136dadc..af3585aeefd3 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -141,15 +141,25 @@ static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane
>  	return stride;
>  }
>  
> -static unsigned int intel_fbc_cfb_cpp(void)
> +static unsigned int intel_fbc_cfb_cpp(const struct intel_plane_state *plane_state)
>  {
> -	return 4; /* FBC always 4 bytes per pixel */
> +	const struct drm_framebuffer *fb = plane_state->hw.fb;
> +
> +	switch (fb->format->format) {
> +	case DRM_FORMAT_XRGB16161616:
> +	case DRM_FORMAT_XBGR16161616:
> +	case DRM_FORMAT_ARGB16161616:
> +	case DRM_FORMAT_ABGR16161616:
> +		return 8;
> +	default:
> +		return 4;
> +	}

return max(cpp, 4);

>  }
>  
>  /* plane stride based cfb stride in bytes, assuming 1:1 compression limit */
>  static unsigned int intel_fbc_plane_cfb_stride(const struct intel_plane_state *plane_state)
>  {
> -	unsigned int cpp = intel_fbc_cfb_cpp();
> +	unsigned int cpp = intel_fbc_cfb_cpp(plane_state);
>  
>  	return intel_fbc_plane_stride(plane_state) * cpp;
>  }
> @@ -203,7 +213,7 @@ static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_s
>  	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
>  	unsigned int stride = intel_fbc_plane_cfb_stride(plane_state);
>  	unsigned int width = drm_rect_width(&plane_state->uapi.src) >> 16;
> -	unsigned int cpp = intel_fbc_cfb_cpp();
> +	unsigned int cpp = intel_fbc_cfb_cpp(plane_state);
>  
>  	return _intel_fbc_cfb_stride(display, cpp, width, stride);
>  }
> @@ -1081,11 +1091,33 @@ static bool lnl_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_
>  	}
>  }
>  
> +static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_state)
> +{
> +	const struct drm_framebuffer *fb = plane_state->hw.fb;
> +
> +	switch (fb->format->format) {
> +	case DRM_FORMAT_XRGB8888:
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_ARGB8888:
> +	case DRM_FORMAT_ABGR8888:
> +	case DRM_FORMAT_RGB565:
> +	case DRM_FORMAT_XRGB16161616:
> +	case DRM_FORMAT_XBGR16161616:
> +	case DRM_FORMAT_ARGB16161616:
> +	case DRM_FORMAT_ABGR16161616:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
>  static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
>  
> -	if (DISPLAY_VER(display) >= 20)
> +	if (DISPLAY_VER(display) >= 35)
> +		return xe3p_lpd_fbc_pixel_format_is_valid(plane_state);
> +	else if (DISPLAY_VER(display) >= 20)
>  		return lnl_fbc_pixel_format_is_valid(plane_state);
>  	else if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
>  		return g4x_fbc_pixel_format_is_valid(plane_state);
> 
> -- 
> 2.51.0

-- 
Ville Syrjälä
Intel
