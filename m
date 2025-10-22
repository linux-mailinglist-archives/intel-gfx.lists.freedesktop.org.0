Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7ACDBFBD83
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 14:28:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4394A10E76A;
	Wed, 22 Oct 2025 12:28:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VyL1xRgc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3B6F10E768;
 Wed, 22 Oct 2025 12:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761136123; x=1792672123;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cssdBK5U7FRhrQq+c8n1PlmNi+X5se5OmAXFi6I0vqo=;
 b=VyL1xRgcYRVfhoa6bNIgZ97xVLvj6xTiKRIs5//1soe3JxMRqL088Mow
 i+TutP/hlBuVJ3wC8vRX2ApmOHLfDJM6s1OEJNy6vGDQGZORtKW/1v7MF
 396VZm9xXdwuAwo4QgoV9n2XI1AbCMEquzKbdLrOHwdtTxgkDTrOdKFUE
 /tCPLQMU+wbNLABX+fCRm9O2I0XqiDJ4IQeSMLGSjeTnarEfUDUcPGlVN
 wPRqA70eABCyNGd4wma+LlGmzLUCohvbuh6jorp1kHN3m6HQ93+qk048V
 ySHddSPqa7pwfjPAjbTnmWl3d4NLZ7+NAx4QORnI/cRFIMapZWsWGB+U7 Q==;
X-CSE-ConnectionGUID: Rt5/Hs2GTqmIqeTM5C6dow==
X-CSE-MsgGUID: NoF0fQfCTjaIY1Uvf990iA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74626447"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="74626447"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 05:28:33 -0700
X-CSE-ConnectionGUID: 10MtsczyQAWwZGW7beIAyA==
X-CSE-MsgGUID: chhYgwF3T1eGd/FJgi52Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="183563752"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.74])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 05:28:29 -0700
Date: Wed, 22 Oct 2025 15:28:26 +0300
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
Subject: Re: [PATCH v2 07/32] drm/i915/xe3p_lpd: Support UINT16 formats
Message-ID: <aPjN6jrrJsMcD0h-@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-7-10eae6d655b8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-7-10eae6d655b8@intel.com>
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

On Tue, Oct 21, 2025 at 09:28:32PM -0300, Gustavo Sousa wrote:
> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> 
> Starting from display Xe3p_LPD, UINT16 formats are also supported. Add
> its corresponding PLANE_CTL bit and add the format in the necessary
> functions.

Those have been supported by the hardware for a lot longer
than that.

I have an old branch that adds them here:
https://github.com/vsyrjala/linux.git uint16
but I never landed that.

> 
> v2:
>   - Add reference to Bspec 68911. (Matt Atwood)
> 
> Bspec: 68904, 69853, 68911
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 96 +++++++++++++++-------
>  .../drm/i915/display/skl_universal_plane_regs.h    |  1 +
>  2 files changed, 68 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 0319174adf95..530adff81b99 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -136,36 +136,47 @@ static const u32 icl_sdr_uv_plane_formats[] = {
>  	DRM_FORMAT_XVYU2101010,
>  };
>  
> +#define ICL_HDR_PLANE_FORMATS		\
> +	DRM_FORMAT_C8,			\
> +	DRM_FORMAT_RGB565,		\
> +	DRM_FORMAT_XRGB8888,		\
> +	DRM_FORMAT_XBGR8888,		\
> +	DRM_FORMAT_ARGB8888,		\
> +	DRM_FORMAT_ABGR8888,		\
> +	DRM_FORMAT_XRGB2101010,		\
> +	DRM_FORMAT_XBGR2101010,		\
> +	DRM_FORMAT_ARGB2101010,		\
> +	DRM_FORMAT_ABGR2101010,		\
> +	DRM_FORMAT_XRGB16161616F,	\
> +	DRM_FORMAT_XBGR16161616F,	\
> +	DRM_FORMAT_ARGB16161616F,	\
> +	DRM_FORMAT_ABGR16161616F,	\
> +	DRM_FORMAT_YUYV,		\
> +	DRM_FORMAT_YVYU,		\
> +	DRM_FORMAT_UYVY,		\
> +	DRM_FORMAT_VYUY,		\
> +	DRM_FORMAT_NV12,		\
> +	DRM_FORMAT_P010,		\
> +	DRM_FORMAT_P012,		\
> +	DRM_FORMAT_P016,		\
> +	DRM_FORMAT_Y210,		\
> +	DRM_FORMAT_Y212,		\
> +	DRM_FORMAT_Y216,		\
> +	DRM_FORMAT_XYUV8888,		\
> +	DRM_FORMAT_XVYU2101010,		\
> +	DRM_FORMAT_XVYU12_16161616,	\
> +	DRM_FORMAT_XVYU16161616
> +
>  static const u32 icl_hdr_plane_formats[] = {
> -	DRM_FORMAT_C8,
> -	DRM_FORMAT_RGB565,
> -	DRM_FORMAT_XRGB8888,
> -	DRM_FORMAT_XBGR8888,
> -	DRM_FORMAT_ARGB8888,
> -	DRM_FORMAT_ABGR8888,
> -	DRM_FORMAT_XRGB2101010,
> -	DRM_FORMAT_XBGR2101010,
> -	DRM_FORMAT_ARGB2101010,
> -	DRM_FORMAT_ABGR2101010,
> -	DRM_FORMAT_XRGB16161616F,
> -	DRM_FORMAT_XBGR16161616F,
> -	DRM_FORMAT_ARGB16161616F,
> -	DRM_FORMAT_ABGR16161616F,
> -	DRM_FORMAT_YUYV,
> -	DRM_FORMAT_YVYU,
> -	DRM_FORMAT_UYVY,
> -	DRM_FORMAT_VYUY,
> -	DRM_FORMAT_NV12,
> -	DRM_FORMAT_P010,
> -	DRM_FORMAT_P012,
> -	DRM_FORMAT_P016,
> -	DRM_FORMAT_Y210,
> -	DRM_FORMAT_Y212,
> -	DRM_FORMAT_Y216,
> -	DRM_FORMAT_XYUV8888,
> -	DRM_FORMAT_XVYU2101010,
> -	DRM_FORMAT_XVYU12_16161616,
> -	DRM_FORMAT_XVYU16161616,
> +	ICL_HDR_PLANE_FORMATS,
> +};
> +
> +static const u32 xe3p_lpd_hdr_plane_formats[] = {
> +	ICL_HDR_PLANE_FORMATS,
> +	DRM_FORMAT_XRGB16161616,
> +	DRM_FORMAT_XBGR16161616,
> +	DRM_FORMAT_ARGB16161616,
> +	DRM_FORMAT_ABGR16161616,
>  };
>  
>  int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
> @@ -220,6 +231,18 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
>  			else
>  				return DRM_FORMAT_XRGB2101010;
>  		}
> +	case PLANE_CTL_FORMAT_XRGB_16161616:
> +		if (rgb_order) {
> +			if (alpha)
> +				return DRM_FORMAT_ABGR16161616;
> +			else
> +				return DRM_FORMAT_XBGR16161616;
> +		} else {
> +			if (alpha)
> +				return DRM_FORMAT_ARGB16161616;
> +			else
> +				return DRM_FORMAT_XRGB16161616;
> +		}
>  	case PLANE_CTL_FORMAT_XRGB_16161616F:
>  		if (rgb_order) {
>  			if (alpha)
> @@ -960,6 +983,12 @@ static u32 skl_plane_ctl_format(u32 pixel_format)
>  	case DRM_FORMAT_XRGB2101010:
>  	case DRM_FORMAT_ARGB2101010:
>  		return PLANE_CTL_FORMAT_XRGB_2101010;
> +	case DRM_FORMAT_XBGR16161616:
> +	case DRM_FORMAT_ABGR16161616:
> +		return PLANE_CTL_FORMAT_XRGB_16161616 | PLANE_CTL_ORDER_RGBX;
> +	case DRM_FORMAT_XRGB16161616:
> +	case DRM_FORMAT_ARGB16161616:
> +		return PLANE_CTL_FORMAT_XRGB_16161616;
>  	case DRM_FORMAT_XBGR16161616F:
>  	case DRM_FORMAT_ABGR16161616F:
>  		return PLANE_CTL_FORMAT_XRGB_16161616F | PLANE_CTL_ORDER_RGBX;
> @@ -2479,6 +2508,11 @@ static const u32 *icl_get_plane_formats(struct intel_display *display,
>  					int *num_formats)
>  {
>  	if (icl_is_hdr_plane(display, plane_id)) {
> +		if (DISPLAY_VER(display) >= 35) {
> +			*num_formats = ARRAY_SIZE(xe3p_lpd_hdr_plane_formats);
> +			return xe3p_lpd_hdr_plane_formats;
> +		}
> +
>  		*num_formats = ARRAY_SIZE(icl_hdr_plane_formats);
>  		return icl_hdr_plane_formats;
>  	} else if (icl_is_nv12_y_plane(display, plane_id)) {
> @@ -2637,6 +2671,10 @@ static bool tgl_plane_format_mod_supported(struct drm_plane *_plane,
>  	case DRM_FORMAT_RGB565:
>  	case DRM_FORMAT_XVYU2101010:
>  	case DRM_FORMAT_C8:
> +	case DRM_FORMAT_XBGR16161616:
> +	case DRM_FORMAT_ABGR16161616:
> +	case DRM_FORMAT_XRGB16161616:
> +	case DRM_FORMAT_ARGB16161616:
>  	case DRM_FORMAT_Y210:
>  	case DRM_FORMAT_Y212:
>  	case DRM_FORMAT_Y216:
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index 479bb3f7f92b..84cf565bd653 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -64,6 +64,7 @@
>  #define   PLANE_CTL_FORMAT_Y410			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 7)
>  #define   PLANE_CTL_FORMAT_Y412			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 9)
>  #define   PLANE_CTL_FORMAT_Y416			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 11)
> +#define   PLANE_CTL_FORMAT_XRGB_16161616	REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 18)
>  #define   PLANE_CTL_PIPE_CSC_ENABLE		REG_BIT(23) /* Pre-GLK */
>  #define   PLANE_CTL_KEY_ENABLE_MASK		REG_GENMASK(22, 21)
>  #define   PLANE_CTL_KEY_ENABLE_SOURCE		REG_FIELD_PREP(PLANE_CTL_KEY_ENABLE_MASK, 1)
> 
> -- 
> 2.51.0

-- 
Ville Syrjälä
Intel
