Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3589A752162
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 14:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77CF710E129;
	Thu, 13 Jul 2023 12:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF05710E129
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 12:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689251918; x=1720787918;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=PMIAsZkX2S6swZA2+jUGUTpsapgU5N3wNH36OIp0z5M=;
 b=i+h0xF3m/FfzwFsz6vOqfabKwfRnC4HgHEhJ0dKTpdTfycNTgFjtOaCu
 OO6FMA5uefQggs9NHRBVexPebcVfQaeUq0M41t7pD/TUHlxV8M10qaaBr
 Hvxp0k39+n/vkM/6uNzaO/i3PA55mP3q5Mo7Chy5MSc4pPCmMQvrF7CE6
 XthPg7GWqnAwbCcNLn4b3iL7gcMe/5aqTLKgjA5PYzkN/J/3lT1miM+Y+
 rRw/1r/yZQkDmUJb0DonkPD3dlzePIDU2QHXRRZgOUntWbcvna5loPQd0
 /nwzeEer+GRnhl3gmKfiHROZBY0Q8d8YAyTF1HJ1Q85ZJmkQBPnFDMiyT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="350025549"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="350025549"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 05:38:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="787431791"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="787431791"
Received: from atadj-mobl1.amr.corp.intel.com (HELO localhost) ([10.252.50.30])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 05:38:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230713062924.2894736-4-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230713062924.2894736-1-suraj.kandpal@intel.com>
 <20230713062924.2894736-4-suraj.kandpal@intel.com>
Date: Thu, 13 Jul 2023 15:38:33 +0300
Message-ID: <87pm4wf0l2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm/i915/vdsc: Add function to read
 any PPS register
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

On Thu, 13 Jul 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Add function to read any PPS register based on the
> intel_dsc_pps enum provided. Add a function which will call the
> new pps read function and place it in crtc state. Only PPS0 and
> PPS1 are readout the rest of the registers will be read in upcoming
> patches.
>
> --v2
> -Changes in read function as PPS enum is removed
> -Initialize pps_val as 0 in pps_read func itself [Jani]
> -Create a function that gets the required register and call that
> in the common read function [Jani]
> -Move the drm_WARN_ON one abstraction layer above [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 276 +++++++++++++++++++---
>  1 file changed, 242 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index d48b8306bfc3..48273a3618c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -303,6 +303,196 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>  	return num_vdsc_instances;
>  }
>  
> +static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state, int pps,
> +				  int dsc_eng_no, i915_reg_t *dsc_reg)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	enum pipe pipe = crtc->pipe;
> +	bool pipe_dsc;
> +
> +	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
> +
> +	switch (pps) {
> +	case 0:
> +		if (pipe_dsc) {
> +			if (dsc_eng_no == 2)

What's "dsc_eng_no", and why is it 0 or 2?

> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe);
> +			else
> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe);
> +		} else {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_0;
> +			else
> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_0;
> +		}

I think the branches are backwards here. Above it's DSC1, DSC0 and here
it's DSCA, DSCC.

I think I'd prefer having

	if (dsc_eng_no == 0)
        else

ordering in both.

> +		break;
> +	case 1:
> +		if (pipe_dsc) {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe);
> +			else
> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe);
> +		} else {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_1;
> +			else
> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_1;
> +		}
> +		break;
> +	case 2:
> +		if (pipe_dsc) {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe);
> +			else
> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe);
> +		} else {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_2;
> +			else
> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_2;
> +		}
> +		break;
> +	case 3:
> +		if (pipe_dsc) {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe);
> +			else
> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe);
> +		} else {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_3;
> +			else
> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_3;
> +		}
> +		break;
> +	case 4:
> +		if (pipe_dsc) {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe);
> +			else
> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe);
> +		} else {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_4;
> +			else
> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_4;
> +		}
> +		break;
> +	case 5:
> +		if (pipe_dsc) {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe);
> +			else
> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe);
> +		} else {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_5;
> +			else
> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_5;
> +		}
> +		break;
> +	case 6:
> +		if (pipe_dsc) {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe);
> +			else
> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe);
> +		} else {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_6;
> +			else
> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_6;
> +		}
> +		break;
> +	case 7:
> +		if (pipe_dsc) {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe);
> +			else
> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe);
> +		} else {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_7;
> +			else
> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_7;
> +		}
> +		break;
> +	case 8:
> +		if (pipe_dsc) {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe);
> +			else
> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe);
> +		} else {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_8;
> +			else
> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_8;
> +		}
> +		break;
> +	case 9:
> +		if (pipe_dsc) {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe);
> +			else
> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe);
> +		} else {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_9;
> +			else
> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_9;
> +		}
> +		break;
> +	case 10:
> +		if (pipe_dsc) {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe);
> +			else
> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe);
> +		} else {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_10;
> +			else
> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_10;
> +		}
> +		break;
> +	case 16:
> +		if (pipe_dsc) {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe);
> +			else
> +				*dsc_reg = ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe);
> +		} else {
> +			if (dsc_eng_no == 2)
> +				*dsc_reg = DSCA_PICTURE_PARAMETER_SET_16;
> +			else
> +				*dsc_reg = DSCC_PICTURE_PARAMETER_SET_16;
> +		}
> +		break;
> +	/*
> +	 * Since PPS_17 and PPS_18 were introduced from MTL dsc check
> +	 * need not be done
> +	 */
> +	case 17:
> +		if (dsc_eng_no == 2)
> +			*dsc_reg = MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe);
> +		else
> +			*dsc_reg = MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe);
> +		break;
> +	case 18:
> +		if (dsc_eng_no == 2)
> +			*dsc_reg = MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe);
> +		else
> +			*dsc_reg = MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe);
> +		break;
> +	default:
> +		drm_err(&i915->drm, "PPS register does not exist\n");

It's a programming error if we hit here. drm_WARN() or MISSING_CASE() or
something would be better to be loud about it.

> +		break;
> +	}
> +}
> +
>  static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -930,16 +1120,64 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>  	}
>  }
>  
> +static bool intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
> +				   int pps, u32 *pps_val)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
> +	i915_reg_t dsc_reg;
> +	u32 pps_temp;
> +
> +	*pps_val = 0;
> +
> +	intel_dsc_get_pps_reg(crtc_state, pps, 0, &dsc_reg);
> +	*pps_val = intel_de_read(i915, dsc_reg);
> +	if (num_vdsc_instances > 1) {
> +		intel_dsc_get_pps_reg(crtc_state, pps, 2, &dsc_reg);
> +		pps_temp = intel_de_read(i915, dsc_reg);
> +		if (*pps_val != pps_temp)
> +			return true;
> +	}
> +	return false;

I'd really like the dsc reg read function to return the register value,
instead of returning it through a pointer variable. Dunno how to make it
work nicely with the verification, though.

Usually functions returning int, ret == 0 means success, and for
functions returning bool, ret == true means success. Here, ret == true
means failure, which is kind of backwards.

> +}
> +
> +static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state *crtc_state,
> +					      int pps, u32 *pps_val)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	bool is_dsc_diff;
> +
> +	is_dsc_diff = intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
> +	drm_WARN_ON(&i915->drm, is_dsc_diff);
> +}
> +
> +static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> +	u32 pps_temp1, pps_temp2;
> +
> +	/* Readout PPS_0 and PPS_1 registers */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
> +
> +	vdsc_cfg->bits_per_pixel = pps_temp2;
> +
> +	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
> +		vdsc_cfg->bits_per_pixel >>= 1;
> +
> +	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +}
> +
>  void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> -	enum pipe pipe = crtc->pipe;
>  	enum intel_display_power_domain power_domain;
>  	intel_wakeref_t wakeref;
> -	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0 = 0, pps_temp1 = 1;
> +	u32 dss_ctl1, dss_ctl2;
>  
>  	if (!intel_dsc_source_support(crtc_state))
>  		return;
> @@ -960,37 +1198,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>  	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
>  		(dss_ctl1 & JOINER_ENABLE);
>  
> -	/* FIXME: add more state readout as needed */
> -
> -	/* PPS0 & PPS1 */
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		pps1 = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
> -		if (crtc_state->dsc.dsc_split) {
> -			pps_temp1 = intel_de_read(dev_priv, DSCC_PICTURE_PARAMETER_SET_1);
> -			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> -		}
> -
> -	} else {
> -		pps0 = intel_de_read(dev_priv,
> -				     ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
> -		pps1 = intel_de_read(dev_priv,
> -				     ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> -		if (crtc_state->dsc.dsc_split) {
> -			pps_temp0 = intel_de_read(dev_priv,
> -						  ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
> -			pps_temp1 = intel_de_read(dev_priv,
> -						  ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> -			drm_WARN_ON(&dev_priv->drm, pps0 != pps_temp0);
> -			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> -		}
> -	}
> -
> -	vdsc_cfg->bits_per_pixel = pps1;
> -
> -	if (pps0 & DSC_NATIVE_420_ENABLE)
> -		vdsc_cfg->bits_per_pixel >>= 1;
> -
> -	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +	intel_dsc_get_pps_config(crtc_state);
>  out:
>  	intel_display_power_put(dev_priv, power_domain, wakeref);
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
