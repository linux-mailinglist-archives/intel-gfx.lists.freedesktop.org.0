Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A5E74D407
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 12:57:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9082010E250;
	Mon, 10 Jul 2023 10:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E0C310E250
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 10:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688986648; x=1720522648;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Zex5EEGZ55bF0okiZJ5SicXYANQev3ob+uQz1D5fM44=;
 b=Xfc6K/X4RYmoCFSeZkgRN4V/SvFy4kg3+T0IWYDxrwqoVXL/DMFa8YTj
 2RmkuVOiG30Z0wz4eMNVXtDiyWdZGawAgr6hGn3Z6HpUcJxxj9ymkeIs9
 ZR1w537NTdRHkxHC6w38208coqMKDtGO5Bar8kYTokXoRYWQHppECHclu
 kP7HkLASQa7etzcACrlgeaDOuE0y4vYdxBJ0CiyIYjrrTF2FXVq6p9CZC
 JTx92GxRK+8MgvytFTL6YTSRlD5Y49vJU4sG3wWPF/e9n6z7FS9H7ElO6
 e6OaMpiogHTDt1LLKdg6i0E6PumEOAFc9PPRpUZivP4QZPiRt7BsXnZXH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="430387492"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="430387492"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 03:57:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="750300778"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="750300778"
Received: from stoicaan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.170])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 03:57:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230710100911.2736389-4-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230710100911.2736389-1-suraj.kandpal@intel.com>
 <20230710100911.2736389-4-suraj.kandpal@intel.com>
Date: Mon, 10 Jul 2023 13:57:21 +0300
Message-ID: <87zg44hw4u.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/vdsc: Add function to write in
 PPS registers
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

On Mon, 10 Jul 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Now that we have a function that reads any PPS register based
> on intel_dsc_pps enum provided lets create a function that can
> write on any PPS.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 494 +++++++++++-----------
>  1 file changed, 252 insertions(+), 242 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 53eac8d9c80f..274d82360c1a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -310,6 +310,244 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>  		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
>  }
>  
> +static void intel_dsc_write_pps_reg(const struct intel_crtc_state *crtc_state,
> +				    enum intel_dsc_pps pps, u32 pps_val)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	enum pipe pipe = crtc->pipe;
> +
> +	switch (pps) {
> +	case PPS_0:
> +		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> +			intel_de_write(i915, DSCA_PICTURE_PARAMETER_SET_0,
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915, DSCC_PICTURE_PARAMETER_SET_0,
> +					       pps_val);
> +		} else {
> +			intel_de_write(i915,
> +				       ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe),
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915,
> +					       ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe),
> +					       pps_val);
> +		}

Ditto here, lots of duplication that just shouldn't exist.

BR,
Jani.

> +		break;
> +	case PPS_1:
> +		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> +			intel_de_write(i915, DSCA_PICTURE_PARAMETER_SET_1,
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915, DSCC_PICTURE_PARAMETER_SET_1,
> +					       pps_val);
> +		} else {
> +			intel_de_write(i915,
> +				       ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe),
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915,
> +					       ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe),
> +					       pps_val);
> +		}
> +		break;
> +	case PPS_2:
> +		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> +			intel_de_write(i915, DSCA_PICTURE_PARAMETER_SET_2,
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915, DSCC_PICTURE_PARAMETER_SET_2,
> +					       pps_val);
> +		} else {
> +			intel_de_write(i915,
> +				       ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe),
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915,
> +					       ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe),
> +					       pps_val);
> +		}
> +		break;
> +	case PPS_3:
> +		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> +			intel_de_write(i915, DSCA_PICTURE_PARAMETER_SET_3,
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915, DSCC_PICTURE_PARAMETER_SET_3,
> +					       pps_val);
> +		} else {
> +			intel_de_write(i915,
> +				       ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe),
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915,
> +					       ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe),
> +					       pps_val);
> +		}
> +		break;
> +	case PPS_4:
> +		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> +			intel_de_write(i915, DSCA_PICTURE_PARAMETER_SET_4,
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915, DSCC_PICTURE_PARAMETER_SET_4,
> +					       pps_val);
> +		} else {
> +			intel_de_write(i915,
> +				       ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe),
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915,
> +					       ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe),
> +					       pps_val);
> +		}
> +		break;
> +	case PPS_5:
> +		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> +			intel_de_write(i915, DSCA_PICTURE_PARAMETER_SET_5,
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915, DSCC_PICTURE_PARAMETER_SET_5,
> +					       pps_val);
> +		} else {
> +			intel_de_write(i915,
> +				       ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe),
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915,
> +					       ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe),
> +					       pps_val);
> +		}
> +		break;
> +	case PPS_6:
> +		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> +			intel_de_write(i915, DSCA_PICTURE_PARAMETER_SET_6,
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915, DSCC_PICTURE_PARAMETER_SET_6,
> +					       pps_val);
> +		} else {
> +			intel_de_write(i915,
> +				       ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe),
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915,
> +					       ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe),
> +					       pps_val);
> +		}
> +		break;
> +	case PPS_7:
> +		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> +			intel_de_write(i915, DSCA_PICTURE_PARAMETER_SET_7,
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915, DSCC_PICTURE_PARAMETER_SET_7,
> +					       pps_val);
> +		} else {
> +			intel_de_write(i915,
> +				       ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe),
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915,
> +					       ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe),
> +					       pps_val);
> +		}
> +		break;
> +	case PPS_8:
> +		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> +			intel_de_write(i915, DSCA_PICTURE_PARAMETER_SET_8,
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915, DSCC_PICTURE_PARAMETER_SET_8,
> +					       pps_val);
> +		} else {
> +			intel_de_write(i915,
> +				       ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe),
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915,
> +					       ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe),
> +					       pps_val);
> +		}
> +		break;
> +	case PPS_9:
> +		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> +			intel_de_write(i915, DSCA_PICTURE_PARAMETER_SET_9,
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915, DSCC_PICTURE_PARAMETER_SET_9,
> +					       pps_val);
> +		} else {
> +			intel_de_write(i915,
> +				       ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe),
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915,
> +					       ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe),
> +					       pps_val);
> +		}
> +		break;
> +	case PPS_10:
> +		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> +			intel_de_write(i915, DSCA_PICTURE_PARAMETER_SET_10,
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915, DSCC_PICTURE_PARAMETER_SET_10,
> +					       pps_val);
> +		} else {
> +			intel_de_write(i915,
> +				       ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe),
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915,
> +					       ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe),
> +					       pps_val);
> +		}
> +		break;
> +	case PPS_16:
> +		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> +			intel_de_write(i915, DSCA_PICTURE_PARAMETER_SET_16,
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915, DSCC_PICTURE_PARAMETER_SET_16,
> +					       pps_val);
> +		} else {
> +			intel_de_write(i915,
> +				       ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe),
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(i915,
> +					       ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe),
> +					       pps_val);
> +		}
> +		break;
> +	/* Since PPS_17 and PPS_18 were introduced from MTL dsc check need not be done */
> +	case PPS_17:
> +		intel_de_write(i915,
> +			       MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe),
> +			       pps_val);
> +		if (crtc_state->dsc.dsc_split)
> +			intel_de_write(i915,
> +				       MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe),
> +				       pps_val);
> +		break;
> +	case PPS_18:
> +		intel_de_write(i915,
> +			       MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe),
> +			       pps_val);
> +		if (crtc_state->dsc.dsc_split)
> +			intel_de_write(i915,
> +				       MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe),
> +				       pps_val);
> +		break;
> +	default:
> +		drm_err(&i915->drm, "PPS register does not exist\n");
> +		break;
> +	}
> +}
> +
>  static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -347,149 +585,41 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  	if (vdsc_cfg->vbr_enable)
>  		pps_val |= DSC_VBR_ENABLE;
>  	drm_dbg_kms(&dev_priv->drm, "PPS0 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_0,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_0,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe),
> -			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, PPS_0, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_1 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_BPP(vdsc_cfg->bits_per_pixel);
>  	drm_dbg_kms(&dev_priv->drm, "PPS1 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_1,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_1,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe),
> -			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, PPS_1, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_2 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
>  		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
>  	drm_dbg_kms(&dev_priv->drm, "PPS2 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_2,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_2,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe),
> -			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, PPS_2, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_3 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
>  		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
>  	drm_dbg_kms(&dev_priv->drm, "PPS3 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_3,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_3,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe),
> -			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, PPS_3, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_4 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
>  		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
>  	drm_dbg_kms(&dev_priv->drm, "PPS4 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_4,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_4,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe),
> -			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, PPS_4, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_5 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
>  		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
>  	drm_dbg_kms(&dev_priv->drm, "PPS5 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_5,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_5,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe),
> -			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, PPS_5, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_6 registers */
>  	pps_val = 0;
> @@ -498,100 +628,28 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
>  		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
>  	drm_dbg_kms(&dev_priv->drm, "PPS6 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_6,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_6,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe),
> -			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, PPS_6, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_7 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
>  		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
>  	drm_dbg_kms(&dev_priv->drm, "PPS7 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_7,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_7,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe),
> -			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, PPS_7, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_8 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
>  		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
>  	drm_dbg_kms(&dev_priv->drm, "PPS8 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_8,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_8,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe),
> -			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, PPS_8, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_9 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
>  		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
>  	drm_dbg_kms(&dev_priv->drm, "PPS9 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_9,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_9,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe),
> -			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, PPS_9, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_10 registers */
>  	pps_val = 0;
> @@ -600,25 +658,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST) |
>  		DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
>  	drm_dbg_kms(&dev_priv->drm, "PPS10 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_10,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       DSCC_PICTURE_PARAMETER_SET_10, pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe),
> -			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, PPS_10, pps_val);
>  
>  	/* Populate Picture parameter set 16 */
>  	pps_val = 0;
> @@ -628,51 +668,21 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  		DSC_SLICE_ROW_PER_FRAME(vdsc_cfg->pic_height /
>  					vdsc_cfg->slice_height);
>  	drm_dbg_kms(&dev_priv->drm, "PPS16 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_16,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       DSCC_PICTURE_PARAMETER_SET_16, pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe),
> -			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, PPS_16, pps_val);
>  
>  	if (DISPLAY_VER(dev_priv) >= 14) {
>  		/* Populate PICTURE_PARAMETER_SET_17 registers */
>  		pps_val = 0;
>  		pps_val |= DSC_SL_BPG_OFFSET(vdsc_cfg->second_line_bpg_offset);
>  		drm_dbg_kms(&dev_priv->drm, "PPS17 = 0x%08x\n", pps_val);
> -		intel_de_write(dev_priv,
> -			       MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe),
> -			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe),
> -				       pps_val);
> +		intel_dsc_write_pps_reg(crtc_state, PPS_17, pps_val);
>  
>  		/* Populate PICTURE_PARAMETER_SET_18 registers */
>  		pps_val = 0;
>  		pps_val |= DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
>  			   DSC_SL_OFFSET_ADJ(vdsc_cfg->second_line_offset_adj);
>  		drm_dbg_kms(&dev_priv->drm, "PPS18 = 0x%08x\n", pps_val);
> -		intel_de_write(dev_priv,
> -			       MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe),
> -			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> -			intel_de_write(dev_priv,
> -				       MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe),
> -				       pps_val);
> +		intel_dsc_write_pps_reg(crtc_state, PPS_18, pps_val);
>  	}
>  
>  	/* Populate the RC_BUF_THRESH registers */

-- 
Jani Nikula, Intel Open Source Graphics Center
