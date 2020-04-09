Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B0F1A2E8C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 06:52:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D82D26EB42;
	Thu,  9 Apr 2020 04:52:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27DEE6EB42
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 04:52:43 +0000 (UTC)
IronPort-SDR: JmZ9/USkogDXS59lHmbNh1zYEdr2O+spSpiZqi1MWtMAHO4uT2rgkP1Z1f8ezOhs+CkxvWqgx3
 sNy2kI2byJYw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 21:52:41 -0700
IronPort-SDR: MgkRuKMiHNXtYAqmyZYMOit2Wsax82NmbRt5oh3sCPr9UG5F8UVo7jTYykIbsbggQszqcMm2vs
 DFNNyjQF6vUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,361,1580803200"; d="scan'208";a="244223866"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga008.fm.intel.com with ESMTP; 08 Apr 2020 21:52:41 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Apr 2020 21:52:41 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 8 Apr 2020 21:52:41 -0700
Received: from bgsmsx109.gar.corp.intel.com (10.223.4.211) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 8 Apr 2020 21:52:40 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX109.gar.corp.intel.com ([169.254.10.57]) with mapi id 14.03.0439.000;
 Thu, 9 Apr 2020 10:22:38 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kadiyala, Kishore" <kishore.kadiyala@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v5] drm/i915: Add Plane color encoding support for
 YCBCR_BT2020
Thread-Index: AQHWDbEnfNCZdMTCdUygIqaNKIx18ahwObjw
Date: Thu, 9 Apr 2020 04:52:38 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8244A875@BGSMSX104.gar.corp.intel.com>
References: <20200408142227.21000-1-kishore.kadiyala@intel.com>
In-Reply-To: <20200408142227.21000-1-kishore.kadiyala@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Add Plane color encoding
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Kadiyala, Kishore <kishore.kadiyala@intel.com>
> Sent: Wednesday, April 8, 2020 7:52 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kadiyala, Kishore <kishore.kadiyala@intel.com>; Ville Syrjala
> <ville.syrjala@linux.intel.com>; Shankar, Uma <uma.shankar@intel.com>; Nikula,
> Jani <jani.nikula@intel.com>
> Subject: [PATCH v5] drm/i915: Add Plane color encoding support for YCBCR_BT2020
> 
> Currently the plane property doesn't have support for YCBCR_BT2020, which enables
> the corresponding color conversion mode on plane CSC.
> Enabling the plane property for the planes for GLK & ICL+ platforms.
> 
> V2: Enabling support for YCBCT_BT2020 for HDR planes on
>     platforms GLK & ICL
> 
> V3: Refined the condition check to handle GLK & ICL+ HDR planes
>     Also added BT2020 handling in glk_plane_color_ctl.
> 
> V4: Combine If-else into single If
> 
> V5: Drop the checking for HDR planes and enable YCBCR_BT2020
>     for platforms GLK & ICL+.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Kishore Kadiyala <kishore.kadiyala@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++---
> drivers/gpu/drm/i915/display/intel_sprite.c  |  9 +++++++--
>  2 files changed, 16 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 70ec301fe6e3..f2dfa61a49fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4808,11 +4808,17 @@ u32 glk_plane_color_ctl(const struct intel_crtc_state
> *crtc_state,
>  	plane_color_ctl |= glk_plane_color_ctl_alpha(plane_state);
> 
>  	if (fb->format->is_yuv && !icl_is_hdr_plane(dev_priv, plane->id)) {
> -		if (plane_state->hw.color_encoding ==
> DRM_COLOR_YCBCR_BT709)
> +		switch (plane_state->hw.color_encoding) {
> +		case DRM_COLOR_YCBCR_BT709:
>  			plane_color_ctl |=
> PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
> -		else
> +			break;
> +		case DRM_COLOR_YCBCR_BT2020:
> +			plane_color_ctl |=
> +
> 	PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
> +			break;
> +		default:
>  			plane_color_ctl |=
> PLANE_COLOR_CSC_MODE_YUV601_TO_RGB709;
> -
> +		}
>  		if (plane_state->hw.color_range ==
> DRM_COLOR_YCBCR_FULL_RANGE)
>  			plane_color_ctl |=
> PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
>  	} else if (fb->format->is_yuv) {
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> b/drivers/gpu/drm/i915/display/intel_sprite.c
> index deda351719db..0072525046a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -3031,6 +3031,7 @@ skl_universal_plane_create(struct drm_i915_private
> *dev_priv,
>  	struct intel_plane *plane;
>  	enum drm_plane_type plane_type;
>  	unsigned int supported_rotations;
> +	unsigned int supported_csc;
>  	const u64 *modifiers;
>  	const u32 *formats;
>  	int num_formats;
> @@ -3105,9 +3106,13 @@ skl_universal_plane_create(struct drm_i915_private
> *dev_priv,
>  					   DRM_MODE_ROTATE_0,
>  					   supported_rotations);
> 
> +	supported_csc = BIT(DRM_COLOR_YCBCR_BT601) |
> +BIT(DRM_COLOR_YCBCR_BT709);
> +
> +	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
> +		supported_csc |= BIT(DRM_COLOR_YCBCR_BT2020);
> +
>  	drm_plane_create_color_properties(&plane->base,
> -					  BIT(DRM_COLOR_YCBCR_BT601) |
> -					  BIT(DRM_COLOR_YCBCR_BT709),
> +					  supported_csc,
> 
> BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
>  					  BIT(DRM_COLOR_YCBCR_FULL_RANGE),
>  					  DRM_COLOR_YCBCR_BT709,
> --
> 2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
