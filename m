Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 308252DC73E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 20:34:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1F2689ACC;
	Wed, 16 Dec 2020 19:33:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F276289AC0;
 Wed, 16 Dec 2020 19:33:52 +0000 (UTC)
IronPort-SDR: GKNdTX/u/hxC0j/musJ1vKwP1MXNft8HTeSndtW/l1sjUK77QJ23PLAsbeAjCPIX+Pbqc008x0
 T00fqQ4iPZQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="236705217"
X-IronPort-AV: E=Sophos;i="5.78,425,1599548400"; d="scan'208";a="236705217"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 11:33:51 -0800
IronPort-SDR: t4OafLvB/Jj1tRFYHKQcGo9vmLLBCEEZ2bWZKq8tOPgxUdXzyTAwe6cH0+iW7TkuFgXeFs7SSg
 PrmhQOY0Iy2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,425,1599548400"; d="scan'208";a="338768894"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 16 Dec 2020 11:33:51 -0800
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Dec 2020 11:33:50 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Dec 2020 01:03:48 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Thu, 17 Dec 2020 01:03:48 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v6 15/15] drm/i915/display: Let PCON convert from RGB to
 YUV if it can
Thread-Index: AQHW05/NM+voD7quM0i2ftrBc9wx36n6GPjQ
Date: Wed, 16 Dec 2020 19:33:48 +0000
Message-ID: <807c09eb4c524e70bcb36f61e2fb9c71@intel.com>
References: <20201216053121.18819-16-ankit.k.nautiyal@intel.com>
 <20201216113104.20669-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20201216113104.20669-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v6 15/15] drm/i915/display: Let PCON convert
 from RGB to YUV if it can
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
Cc: "airlied@linux.ie" <airlied@linux.ie>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Wednesday, December 16, 2020 5:01 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> airlied@linux.ie; jani.nikula@linux.intel.com; ville.syrjala@linux.intel.com;
> Kulkarni, Vandita <vandita.kulkarni@intel.com>; Sharma, Swati2
> <swati2.sharma@intel.com>
> Subject: [PATCH v6 15/15] drm/i915/display: Let PCON convert from RGB to YUV
> if it can
> 
> If PCON has capability to convert RGB->YUV colorspace and also to 444->420
> downsampling then for any YUV420 only mode, we can let the PCON do all the
> conversion.
> 
> v2: As suggested by Uma Shankar, considered case for colorspace
> BT709 and BT2020, and default to BT609. Also appended dir 'display' in commit
> message.
> 
> v3: Fixed typo in condition for printing one of the error msg.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  3 +-
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 68 +++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_dp.h       |  3 +-
>  4 files changed, 58 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index fbc07a93504b..17eaa56c5a99 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3644,6 +3644,7 @@ static void tgl_ddi_pre_enable_dp(struct
> intel_atomic_state *state,
>  	if (!is_mst)
>  		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
> 
> +	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
>  	intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
>  	/*
>  	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
> @@ -3731,7 +3732,7 @@ static void hsw_ddi_pre_enable_dp(struct
> intel_atomic_state *state,
>  	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
>  	if (!is_mst)
>  		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
> -	intel_dp_configure_protocol_converter(intel_dp);
> +	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
>  	intel_dp_sink_set_decompression_state(intel_dp, crtc_state,
>  					      true);
>  	intel_dp_sink_set_fec_ready(intel_dp, crtc_state); diff --git
> a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 4c01c7c23dfd..2009ae9e9678 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1460,6 +1460,7 @@ struct intel_dp {
>  		int pcon_max_frl_bw;
>  		u8 max_bpc;
>  		bool ycbcr_444_to_420;
> +		bool rgb_to_ycbcr;
>  	} dfp;
> 
>  	/* Display stream compression testing */ diff --git
> a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index abc9b772d1c8..366b2e4e7f4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -651,6 +651,10 @@ intel_dp_output_format(struct drm_connector
> *connector,
>  	    !drm_mode_is_420_only(info, mode))
>  		return INTEL_OUTPUT_FORMAT_RGB;
> 
> +	if (intel_dp->dfp.rgb_to_ycbcr &&
> +	    intel_dp->dfp.ycbcr_444_to_420)
> +		return INTEL_OUTPUT_FORMAT_RGB;
> +
>  	if (intel_dp->dfp.ycbcr_444_to_420)
>  		return INTEL_OUTPUT_FORMAT_YCBCR444;
>  	else
> @@ -4311,7 +4315,8 @@ static void intel_dp_enable_port(struct intel_dp
> *intel_dp,
>  	intel_de_posting_read(dev_priv, intel_dp->output_reg);  }
> 
> -void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp)
> +void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
> +					   const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	u8 tmp;
> @@ -4338,14 +4343,34 @@ void intel_dp_configure_protocol_converter(struct
> intel_dp *intel_dp)
>  		drm_dbg_kms(&i915->drm,
>  			    "Failed to set protocol converter YCbCr 4:2:0
> conversion mode to %s\n",
>  			    enableddisabled(intel_dp->dfp.ycbcr_444_to_420));
> -
> -	tmp = 0;
> -
> -	if (drm_dp_dpcd_writeb(&intel_dp->aux,
> -			       DP_PROTOCOL_CONVERTER_CONTROL_2, tmp) <= 0)
> +	if (intel_dp->dfp.rgb_to_ycbcr) {
> +		bool bt2020, bt709;
> +
> +		bt2020 =
> drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
> +							intel_dp-
> >downstream_ports,
> +
> 	DP_DS_HDMI_BT2020_RGB_YCBCR_CONV);

Next line should match the parenthesis, seems off.

> +		bt709 =
> drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
> +							intel_dp-
> >downstream_ports,
> +
> 	DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
> +		switch (crtc_state->infoframes.vsc.colorimetry) {
> +		case DP_COLORIMETRY_BT2020_RGB:
> +		case DP_COLORIMETRY_BT2020_YCC:
> +			tmp = bt2020 ?
> DP_CONVERSION_BT2020_RGB_YCBCR_ENABLE : 0;

One concern I have here is what will happen if pcon returns 0 here. From SOC we will be sending
BT2020 RGB, so we expect it to be able to support this conversion. So ideally this should not be optional
but kind of mandatory for pcon to support.

> +			break;
> +		case DP_COLORIMETRY_BT709_YCC:
> +		case DP_COLORIMETRY_XVYCC_709:
> +			tmp = bt709 ?
> DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
> +			break;
> +		default:
> +			tmp = DP_CONVERSION_BT601_RGB_YCBCR_ENABLE;
> +		}
> +	} else {
> +		tmp = 0;
> +	}

Just initialize tmp to 0 and drop this else.

> +	if (drm_dp_pcon_convert_rgb_to_ycbcr(&intel_dp->aux, tmp) < 0)
>  		drm_dbg_kms(&i915->drm,
> -			    "Failed to set protocol converter YCbCr 4:2:2
> conversion mode to %s\n",
> -			    enableddisabled(false));
> +			   "Failed to set protocol converter RGB->YCbCr
> conversion mode to %s\n",
> +			   enableddisabled(tmp ? true : false));
>  }
> 
>  static void intel_enable_dp(struct intel_atomic_state *state, @@ -4385,7
> +4410,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
>  	}
> 
>  	intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
> -	intel_dp_configure_protocol_converter(intel_dp);
> +	intel_dp_configure_protocol_converter(intel_dp, pipe_config);
>  	intel_dp_check_frl_training(intel_dp);
>  	intel_dp_pcon_dsc_configure(intel_dp, pipe_config);
>  	intel_dp_start_link_train(intel_dp, pipe_config); @@ -6853,7 +6878,7
> @@ intel_dp_update_420(struct intel_dp *intel_dp)  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	struct intel_connector *connector = intel_dp->attached_connector;
> -	bool is_branch, ycbcr_420_passthrough, ycbcr_444_to_420;
> +	bool is_branch, ycbcr_420_passthrough, ycbcr_444_to_420, rgb_to_ycbcr;
> 
>  	/* No YCbCr output support on gmch platforms */
>  	if (HAS_GMCH(i915))
> @@ -6875,14 +6900,26 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>  		dp_to_dig_port(intel_dp)->lspcon.active ||
>  		drm_dp_downstream_444_to_420_conversion(intel_dp->dpcd,
>  							intel_dp-
> >downstream_ports);
> +	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp-
> >dpcd,
> +							intel_dp-
> >downstream_ports,
> +
> 	DP_DS_HDMI_BT601_RGB_YCBCR_CONV ||
> +
> 	DP_DS_HDMI_BT709_RGB_YCBCR_CONV ||
> +
> 	DP_DS_HDMI_BT2020_RGB_YCBCR_CONV);

Here also, match the parenthesis.

> 
>  	if (INTEL_GEN(i915) >= 11) {
> +		/* Let PCON convert from RGB->YCbCr if possible */
> +		if (is_branch && rgb_to_ycbcr && ycbcr_444_to_420) {
> +			intel_dp->dfp.rgb_to_ycbcr = true;
> +			intel_dp->dfp.ycbcr_444_to_420 = true;
> +			connector->base.ycbcr_420_allowed = true;
> +		} else {
>  		/* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
> -		intel_dp->dfp.ycbcr_444_to_420 =
> -			ycbcr_444_to_420 && !ycbcr_420_passthrough;
> +			intel_dp->dfp.ycbcr_444_to_420 =
> +				ycbcr_444_to_420 && !ycbcr_420_passthrough;
> 
> -		connector->base.ycbcr_420_allowed =
> -			!is_branch || ycbcr_444_to_420 ||
> ycbcr_420_passthrough;
> +			connector->base.ycbcr_420_allowed =
> +				!is_branch || ycbcr_444_to_420 ||
> ycbcr_420_passthrough;
> +		}
>  	} else {
>  		/* 4:4:4->4:2:0 conversion is the only way */
>  		intel_dp->dfp.ycbcr_444_to_420 = ycbcr_444_to_420; @@ -
> 6891,8 +6928,9 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>  	}
> 
>  	drm_dbg_kms(&i915->drm,
> -		    "[CONNECTOR:%d:%s] YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4-
> >4:2:0 conversion? %s\n",
> +		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0
> +allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
>  		    connector->base.base.id, connector->base.name,
> +		    yesno(intel_dp->dfp.rgb_to_ycbcr),
>  		    yesno(connector->base.ycbcr_420_allowed),
>  		    yesno(intel_dp->dfp.ycbcr_444_to_420));
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 1bfde4f89019..4280a09fd8fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -51,7 +51,8 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp
> *intel_dp,  int intel_dp_retrain_link(struct intel_encoder *encoder,
>  			  struct drm_modeset_acquire_ctx *ctx);  void
> intel_dp_set_power(struct intel_dp *intel_dp, u8 mode); -void
> intel_dp_configure_protocol_converter(struct intel_dp *intel_dp);
> +void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
> +					   const struct intel_crtc_state
> *crtc_state);
>  void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
>  					   const struct intel_crtc_state *crtc_state,
>  					   bool enable);
> --
> 2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
