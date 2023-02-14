Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 402696962AC
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 12:50:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5241610E89F;
	Tue, 14 Feb 2023 11:50:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FBC610E89F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 11:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676375407; x=1707911407;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=CumQ+9sS6Pr28HbUXmInwdcFaWzBgsDF1NCx/jWYQWc=;
 b=AVFlldGNz7Ia9jRNgmIDxrssa1dfVzTSf6X1jkFOu72OXDcnjBiaJWvS
 ouGgcAfJwf/LaIA3DADJ+HCJaYyYXHsNS5M7BAG+EFdEJ3qhA8mkSiIxv
 bl8ktuAvb6OfIQvL6uf4y4+bdzQniRgtl6VG7EVCdO8b/cZ68X+L7+2FI
 lcJE0bPcKaInG4klKV8UiupKnrytwvlpISKwix+U/A0/xrl0wGT3Rc/EZ
 rNBPQHh53NT/7Ub4OA7J/JZdfBCIIf50z/I3XEMjuU4gh5DsYMT0ci7yX
 DoIHCVdklHWMN1R5CFIQuIwF5sHbvoXQdNPJXnZ/RPLMc1iFMC9+4NQTL g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="314785408"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="314785408"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 03:50:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="699515458"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="699515458"
Received: from skalyan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.13])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 03:50:05 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230207074416.3209722-6-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230207074416.3209722-1-suraj.kandpal@intel.com>
 <20230207074416.3209722-6-suraj.kandpal@intel.com>
Date: Tue, 14 Feb 2023 13:50:02 +0200
Message-ID: <87lel0sbyt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v9 5/7] drm/i915: Fill in native_420 field
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

On Tue, 07 Feb 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Now that we have laid the groundwork for YUV420 Enablement
> we fill up native_420 field in vdsc_cfg and add appropriate
> checks wherever required.
>
> ---v2
> -adding native_422 field as 0 [Vandita]
> -filling in second_line_bpg_offset, second_line_offset_adj
> and nsl_bpg_offset in vds_cfg when native_420 is true
>
> ---v3
> -adding display version check to solve igt issue
>
> --v7
> -remove is_pipe_dsc check as its always true for D14 [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c    |  2 -
>  drivers/gpu/drm/i915/display/intel_dp.c   |  3 -
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 72 ++++++++++++++++++++++-
>  3 files changed, 69 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 003cac918228..f8c999fa3242 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1534,8 +1534,6 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
>  	if (crtc_state->dsc.slice_count > 1)
>  		crtc_state->dsc.dsc_split = true;
>  
> -	vdsc_cfg->convert_rgb = true;
> -
>  	/* FIXME: initialize from VBT */
>  	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 73a7baccd7d0..250d9cdd14b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1470,9 +1470,6 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>  		min(intel_dp_source_dsc_version_minor(intel_dp),
>  		    intel_dp_sink_dsc_version_minor(intel_dp));
>  
> -	vdsc_cfg->convert_rgb = intel_dp->dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] &
> -		DP_DSC_RGB;

Are the sink caps taken into account somewhere else?

> -
>  	line_buf_depth = drm_dp_dsc_sink_line_buf_depth(intel_dp->dsc_dpcd);
>  	if (!line_buf_depth) {
>  		drm_dbg_kms(&i915->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index ed16f63d6355..13ad853e24eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -460,14 +460,47 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>  	vdsc_cfg->pic_width = pipe_config->hw.adjusted_mode.crtc_hdisplay;
>  	vdsc_cfg->slice_width = DIV_ROUND_UP(vdsc_cfg->pic_width,
>  					     pipe_config->dsc.slice_count);
> -
> -	/* Gen 11 does not support YCbCr */
> +	/*
> +	 * According to DSC 1.2 specs if colorspace is YCbCr then convert_rgb is 0
> +	 * else 1
> +	 */
> +	vdsc_cfg->convert_rgb = !(pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> +				  pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR444);

Nitpick, IMO "format != x && format != y" reads better than "!(format ==
x || format == y)"

> +
> +	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
> +		vdsc_cfg->native_420 = true;
> +	/* We do not support YcBCr422 as of now */
> +	vdsc_cfg->native_422 = false;
> +	/* Gen 11 does not support YCbCr422 */
>  	vdsc_cfg->simple_422 = false;
>  	/* Gen 11 does not support VBR */
>  	vdsc_cfg->vbr_enable = false;
>  
>  	/* Gen 11 only supports integral values of bpp */
>  	vdsc_cfg->bits_per_pixel = compressed_bpp << 4;
> +	/*
> +	 * According to DSC 1.2 specs if native_420 is set:
> +	 * -We need to double the current bpp.
> +	 * -second_line_bpg_offset is 12 in general and equal to 2*(slice_height-1) if slice
> +	 * height < 8.
> +	 * -second_line_offset_adj is 512 as shown by emperical values to yeild best chroma
> +	 * preservation in second line.
> +	 * -nsl_bpg_offset is calculated as second_line_offset/slice_height -1 then rounded
> +	 * up to 16 fractional bits, we left shift second line offset by 11 to preserve 11
> +	 * fractional bits.
> +	 */
> +	if (vdsc_cfg->native_420) {
> +		vdsc_cfg->bits_per_pixel <<= 1;
> +		if (vdsc_cfg->slice_height >= 8)
> +			vdsc_cfg->second_line_bpg_offset = 12;
> +		else
> +			vdsc_cfg->second_line_bpg_offset =
> +				2 * (vdsc_cfg->slice_height - 1);
> +		vdsc_cfg->second_line_offset_adj = 512;
> +		vdsc_cfg->nsl_bpg_offset = DIV_ROUND_UP(vdsc_cfg->second_line_bpg_offset << 11,
> +							vdsc_cfg->slice_height - 1);
> +	}
> +
>  	vdsc_cfg->bits_per_component = pipe_config->pipe_bpp / 3;
>  
>  	for (i = 0; i < DSC_NUM_BUF_RANGES - 1; i++) {
> @@ -594,8 +627,13 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  		DSC_VER_MIN_SHIFT |
>  		vdsc_cfg->bits_per_component << DSC_BPC_SHIFT |
>  		vdsc_cfg->line_buf_depth << DSC_LINE_BUF_DEPTH_SHIFT;
> -	if (vdsc_cfg->dsc_version_minor == 2)
> +	if (vdsc_cfg->dsc_version_minor == 2) {
>  		pps_val |= DSC_ALT_ICH_SEL;
> +		if (vdsc_cfg->native_420)
> +			pps_val |= DSC_NATIVE_420_ENABLE;
> +		if (vdsc_cfg->native_422)
> +			pps_val |= DSC_NATIVE_422_ENABLE;
> +	}
>  	if (vdsc_cfg->block_pred_enable)
>  		pps_val |= DSC_BLOCK_PREDICTION;
>  	if (vdsc_cfg->convert_rgb)
> @@ -906,6 +944,34 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  				       pps_val);
>  	}
>  
> +	if (DISPLAY_VER(dev_priv) >= 14) {
> +		/* Populate PICTURE_PARAMETER_SET_17 registers */
> +		pps_val = 0;
> +		pps_val |= DSC_SL_BPG_OFFSET(vdsc_cfg->second_line_bpg_offset);
> +		drm_dbg_kms(&dev_priv->drm, "PPS17 = 0x%08x\n", pps_val);
> +		intel_de_write(dev_priv,
> +			       MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe),
> +			       pps_val);
> +		if (crtc_state->dsc.dsc_split)
> +			intel_de_write(dev_priv,
> +				       MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe),
> +				       pps_val);
> +
> +		/* Populate PICTURE_PARAMETER_SET_18 registers */
> +		pps_val = 0;
> +		pps_val |= DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
> +			   DSC_SL_OFFSET_ADJ(vdsc_cfg->second_line_offset_adj);
> +		drm_dbg_kms(&dev_priv->drm, "PPS18 = 0x%08x\n", pps_val);
> +		if (is_pipe_dsc(crtc, cpu_transcoder)) {

This is still always true for display ver >= 14.

> +			intel_de_write(dev_priv,
> +				       MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe),
> +				       pps_val);
> +			if (crtc_state->dsc.dsc_split)
> +				intel_de_write(dev_priv,
> +					       MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe),
> +					       pps_val);
> +		}
> +	}
>  	/* Populate the RC_BUF_THRESH registers */
>  	memset(rc_buf_thresh_dword, 0, sizeof(rc_buf_thresh_dword));
>  	for (i = 0; i < DSC_NUM_BUF_RANGES - 1; i++) {

-- 
Jani Nikula, Intel Open Source Graphics Center
