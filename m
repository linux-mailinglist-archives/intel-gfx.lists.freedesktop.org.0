Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 502BC1A200E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 13:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A5506E0FB;
	Wed,  8 Apr 2020 11:43:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B1836E0FB
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 11:43:06 +0000 (UTC)
IronPort-SDR: YkNXsv7GtjvMFbBx8tmQgkFZmRveBdMgxAjo0dRxRcCAwmkSzORsY+feROHkyOiXi6k6qaXYeW
 1Hg9mm3RR+fQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 04:43:05 -0700
IronPort-SDR: xeGvD/bQjBVdELtNNR/U+FTLzOwTi8aCzyOqR7+2j+ZotOJcB7JSHIIUHlabpYqx62Pr05xjBd
 UQo9VJoBmTgg==
X-IronPort-AV: E=Sophos;i="5.72,358,1580803200"; d="scan'208";a="425111104"
Received: from slinke-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.237])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 04:43:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Kishore Kadiyala <kishore.kadiyala@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200408111347.5156-1-kishore.kadiyala@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200408111347.5156-1-kishore.kadiyala@intel.com>
Date: Wed, 08 Apr 2020 14:43:00 +0300
Message-ID: <87v9magq4b.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Add Plane color encoding
 support for YCBCR_BT2020
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
Cc: Kishore Kadiyala <kishore.kadiyala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 08 Apr 2020, Kishore Kadiyala <kishore.kadiyala@intel.com> wrote:
> Currently the plane property doesn't have support for YCBCR_BT2020,
> which enables the corresponding color conversion mode on plane CSC.
> In ICL+ platforms , this property setting is confined only to HDR
> Planes as there is limitation in SDR Planes and while in GLK it
> set for all planes.
>
> V2: Enabling support for YCBCT_BT2020 for HDR planes on
>     platforms GLK & ICL
>
> V3: Refined the condition check to handle GLK & ICL+ HDR planes
>     Also added BT2020 handling in glk_plane_color_ctl.
>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Kishore Kadiyala <kishore.kadiyala@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++---
>  drivers/gpu/drm/i915/display/intel_sprite.c  | 17 +++++++++++++++--
>  2 files changed, 24 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 70ec301fe6e3..f2dfa61a49fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4808,11 +4808,17 @@ u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
>  	plane_color_ctl |= glk_plane_color_ctl_alpha(plane_state);
>  
>  	if (fb->format->is_yuv && !icl_is_hdr_plane(dev_priv, plane->id)) {
> -		if (plane_state->hw.color_encoding == DRM_COLOR_YCBCR_BT709)
> +		switch (plane_state->hw.color_encoding) {
> +		case DRM_COLOR_YCBCR_BT709:
>  			plane_color_ctl |= PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
> -		else
> +			break;
> +		case DRM_COLOR_YCBCR_BT2020:
> +			plane_color_ctl |=
> +					PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
> +			break;
> +		default:
>  			plane_color_ctl |= PLANE_COLOR_CSC_MODE_YUV601_TO_RGB709;
> -
> +		}
>  		if (plane_state->hw.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
>  			plane_color_ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
>  	} else if (fb->format->is_yuv) {
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> index deda351719db..237c4b951f02 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -3031,6 +3031,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
>  	struct intel_plane *plane;
>  	enum drm_plane_type plane_type;
>  	unsigned int supported_rotations;
> +	unsigned int supported_csc;
>  	const u64 *modifiers;
>  	const u32 *formats;
>  	int num_formats;
> @@ -3105,9 +3106,21 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
>  					   DRM_MODE_ROTATE_0,
>  					   supported_rotations);
>  
> +	supported_csc = BIT(DRM_COLOR_YCBCR_BT601) | BIT(DRM_COLOR_YCBCR_BT709);
> +
> +	/*
> +	 * Setting the CSC BT2020 for all the planes in case of GLK
> +	 * While for ICL+ platforms it is set only for HDR planes 1 through 3
> +	 * as there are issues seen with SDR planes
> +	 */
> +	if ((INTEL_GEN(dev_priv) == 10) ||  IS_GEMINILAKE(dev_priv))
> +		supported_csc |= BIT(DRM_COLOR_YCBCR_BT2020);
> +	else
> +		if (icl_is_hdr_plane(dev_priv, plane_id))
> +			supported_csc |= BIT(DRM_COLOR_YCBCR_BT2020);

IOW,

        if (IS_GEN(dev_priv, 10) || IS_GEMINILAKE(dev_priv) ||
            icl_is_hdr_plane(dev_priv, plane_id))
                supported_csc |= BIT(DRM_COLOR_YCBCR_BT2020);

> +
>  	drm_plane_create_color_properties(&plane->base,
> -					  BIT(DRM_COLOR_YCBCR_BT601) |
> -					  BIT(DRM_COLOR_YCBCR_BT709),
> +					  supported_csc,
>  					  BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
>  					  BIT(DRM_COLOR_YCBCR_FULL_RANGE),
>  					  DRM_COLOR_YCBCR_BT709,

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
