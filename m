Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB5F74D451
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 13:12:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C9EB10E11B;
	Mon, 10 Jul 2023 11:11:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AA6710E263
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 11:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688987516; x=1720523516;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=F3T9jl34Uup2j/XEEGWhf5J03i9SxSGudLTXUtbMtpk=;
 b=j9fbGIBi+p5UUx3q/tBVnd5n5hsPdDYGlmA6kIAEcO9yL7QaZItddyBx
 PAETnTBkpxMeA1u8tF7RPo/zKPHeHT3rFZ5+4qBHi6aRKlntms/h/rfVH
 sGtOwMC98DyNG2Tlii1Md4Tv+0szEl5X3SUU66kGtdXBGH9O/8wcqhKPk
 LDw2jURUIdgM/6oGe9Ic134AmkMmbehRHPFdpy+a2EJecH0Y44oYPyoOg
 FAKsPcBhChgCGF5Q5/WVFAfI3OfFAvA+HFTlkx8QccGTWULwvpHaZS1Gw
 8RRL+duvAjEL9d9XhDF98750rhm6Qvd62XmF01d5pOThRZI71/2ihce/2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="343909197"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="343909197"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 04:11:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="697958501"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="697958501"
Received: from stoicaan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.170])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 04:11:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230710100911.2736389-5-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230710100911.2736389-1-suraj.kandpal@intel.com>
 <20230710100911.2736389-5-suraj.kandpal@intel.com>
Date: Mon, 10 Jul 2023 14:11:46 +0300
Message-ID: <87wmz8hvgt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/vdsc: Fill the
 intel_dsc_get_pps_config function
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
> We have setup both the read and write functions so we can
> move ahead and fill in all the readout state from PPS register
> into the crtc_state so we can send it for comparision.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 152 +++++++++++++++---
>  .../gpu/drm/i915/display/intel_vdsc_regs.h    |  53 ++++--
>  2 files changed, 172 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 274d82360c1a..a4f5b4aceb33 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -596,51 +596,51 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  	/* Populate PICTURE_PARAMETER_SET_2 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
> -		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
> +		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances, true);

So absolutely *no* register macros with boolean flags to shift or
not. Just no.

This is totally unreadable.

Define the macros in terms of the REG_FIELD_MASK and REG_FIELD_PREP, and
use REG_FIELD_GET to read the values.

#define   DSC_PIC_WIDTH(pic_width)    REG_FIELD_PREP(DSC_PIC_WIDTH_MASK, pic_width)

	pps_val |= DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances)

This should probably be a first cleanup patch before the other changes.

>  	drm_dbg_kms(&dev_priv->drm, "PPS2 = 0x%08x\n", pps_val);
>  	intel_dsc_write_pps_reg(crtc_state, PPS_2, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_3 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
> -		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
> +		DSC_SLICE_WIDTH(vdsc_cfg->slice_width, true);
>  	drm_dbg_kms(&dev_priv->drm, "PPS3 = 0x%08x\n", pps_val);
>  	intel_dsc_write_pps_reg(crtc_state, PPS_3, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_4 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
> -		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
> +		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay, true);
>  	drm_dbg_kms(&dev_priv->drm, "PPS4 = 0x%08x\n", pps_val);
>  	intel_dsc_write_pps_reg(crtc_state, PPS_4, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_5 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
> -		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
> +		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval, true);
>  	drm_dbg_kms(&dev_priv->drm, "PPS5 = 0x%08x\n", pps_val);
>  	intel_dsc_write_pps_reg(crtc_state, PPS_5, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_6 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_INITIAL_SCALE_VALUE(vdsc_cfg->initial_scale_value) |
> -		DSC_FIRST_LINE_BPG_OFFSET(vdsc_cfg->first_line_bpg_offset) |
> -		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
> -		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
> +		DSC_FIRST_LINE_BPG_OFFSET(vdsc_cfg->first_line_bpg_offset, true) |
> +		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp, true) |
> +		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp, true);
>  	drm_dbg_kms(&dev_priv->drm, "PPS6 = 0x%08x\n", pps_val);
>  	intel_dsc_write_pps_reg(crtc_state, PPS_6, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_7 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
> -		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
> +		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset, true);
>  	drm_dbg_kms(&dev_priv->drm, "PPS7 = 0x%08x\n", pps_val);
>  	intel_dsc_write_pps_reg(crtc_state, PPS_7, pps_val);
>  
>  	/* Populate PICTURE_PARAMETER_SET_8 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
> -		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
> +		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset, true);
>  	drm_dbg_kms(&dev_priv->drm, "PPS8 = 0x%08x\n", pps_val);
>  	intel_dsc_write_pps_reg(crtc_state, PPS_8, pps_val);
>  
> @@ -654,7 +654,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  	/* Populate PICTURE_PARAMETER_SET_10 registers */
>  	pps_val = 0;
>  	pps_val |= DSC_RC_QUANT_INC_LIMIT0(vdsc_cfg->rc_quant_incr_limit0) |
> -		DSC_RC_QUANT_INC_LIMIT1(vdsc_cfg->rc_quant_incr_limit1) |
> +		DSC_RC_QUANT_INC_LIMIT1(vdsc_cfg->rc_quant_incr_limit1, true) |
>  		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST) |
>  		DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
>  	drm_dbg_kms(&dev_priv->drm, "PPS10 = 0x%08x\n", pps_val);
> @@ -673,13 +673,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  	if (DISPLAY_VER(dev_priv) >= 14) {
>  		/* Populate PICTURE_PARAMETER_SET_17 registers */
>  		pps_val = 0;
> -		pps_val |= DSC_SL_BPG_OFFSET(vdsc_cfg->second_line_bpg_offset);
> +		pps_val |= DSC_SL_BPG_OFFSET(vdsc_cfg->second_line_bpg_offset,
> +					     true);
>  		drm_dbg_kms(&dev_priv->drm, "PPS17 = 0x%08x\n", pps_val);
>  		intel_dsc_write_pps_reg(crtc_state, PPS_17, pps_val);
>  
>  		/* Populate PICTURE_PARAMETER_SET_18 registers */
>  		pps_val = 0;
> -		pps_val |= DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
> +		pps_val |= DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset, true) |
>  			   DSC_SL_OFFSET_ADJ(vdsc_cfg->second_line_offset_adj);
>  		drm_dbg_kms(&dev_priv->drm, "PPS18 = 0x%08x\n", pps_val);
>  		intel_dsc_write_pps_reg(crtc_state, PPS_18, pps_val);
> @@ -1206,18 +1207,133 @@ static void intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
>  static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> -	u32 pps_temp1, pps_temp2;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	u32 pps_temp;
> +
> +	/* Readout PPS_0 register */

The comments may be helpful as headings, but a simple /* PPS 0 */ etc
will do.

> +	pps_temp = 0;

Please define the read function so that you don't have to initialize
this to zero every time.

> +	intel_dsc_read_pps_reg(crtc_state, PPS_0, &pps_temp);
>  
> -	/* Readout PPS_0 and PPS_1 registers */
> -	intel_dsc_read_pps_reg(crtc_state, PPS_0, &pps_temp1);
> -	intel_dsc_read_pps_reg(crtc_state, PPS_1, &pps_temp2);
> +	vdsc_cfg->bits_per_component = (pps_temp & DSC_BPC_MASK) >> DSC_BPC_SHIFT;

Use REG_FIELD_GET(), throw out the shifts.

> +	vdsc_cfg->line_buf_depth =
> +		(pps_temp & DSC_LINE_BUF_DEPTH_MASK) >> DSC_LINE_BUF_DEPTH_SHIFT;
> +	vdsc_cfg->block_pred_enable = pps_temp & DSC_BLOCK_PREDICTION ? true : false;

For assigning booleans just pps_temp & DSC_BLOCK_PREDICTION is
enough. The ternary operator is superfluous. Ditto below.

> +	vdsc_cfg->convert_rgb = pps_temp & DSC_COLOR_SPACE_CONVERSION ? true : false;
> +	vdsc_cfg->simple_422 = pps_temp & DSC_422_ENABLE ? true : false;
> +	vdsc_cfg->native_422 = pps_temp & DSC_NATIVE_422_ENABLE ? true : false;
> +	vdsc_cfg->native_420 = pps_temp & DSC_NATIVE_420_ENABLE ? true : false;
> +	vdsc_cfg->vbr_enable = pps_temp & DSC_VBR_ENABLE ? true : false;
>  
> -	vdsc_cfg->bits_per_pixel = pps_temp2;
> +	/* Readout PPS_1 register */
> +	pps_temp = 0;
> +	intel_dsc_read_pps_reg(crtc_state, PPS_1, &pps_temp);
>  
> -	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
> +	vdsc_cfg->bits_per_pixel = pps_temp;
> +
> +	if (vdsc_cfg->native_420)
>  		vdsc_cfg->bits_per_pixel >>= 1;
>  
>  	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +
> +	/* Readout PPS_2 register */
> +	pps_temp = 0;
> +	intel_dsc_read_pps_reg(crtc_state, PPS_2, &pps_temp);
> +
> +	vdsc_cfg->pic_width =
> +		DSC_PIC_WIDTH(pps_temp & DSC_PIC_WIDTH_MASK, false);

This is the way to go:

	vdsc_cfg->pic_width = REG_FIELD_GET(DSC_PIC_WIDTH_MASK, pps_temp);

> +	vdsc_cfg->pic_height = pps_temp & ~DSC_PIC_WIDTH_MASK;

Nope, just use REG_FIELD_GET() for all of it.

> +
> +	/* Readout PPS_3 register */
> +	pps_temp = 0;
> +	intel_dsc_read_pps_reg(crtc_state, PPS_3, &pps_temp);
> +
> +	vdsc_cfg->slice_width =
> +		DSC_SLICE_WIDTH(pps_temp & DSC_SLICE_WIDTH_MASK, false);
> +	vdsc_cfg->slice_height = pps_temp & ~DSC_SLICE_WIDTH_MASK;
> +
> +	/* Readout PPS_4 register */
> +	pps_temp = 0;
> +	intel_dsc_read_pps_reg(crtc_state, PPS_4, &pps_temp);
> +
> +	vdsc_cfg->initial_dec_delay =
> +		DSC_INITIAL_DEC_DELAY(pps_temp & DSC_INITIAL_DEC_DELAY_MASK, false);
> +	vdsc_cfg->initial_xmit_delay = pps_temp & DSC_INITIAL_XMIT_DELAY_MASK;
> +
> +	/* Readout PPS_5 register */
> +	pps_temp = 0;
> +	intel_dsc_read_pps_reg(crtc_state, PPS_5, &pps_temp);
> +
> +	vdsc_cfg->scale_decrement_interval =
> +		DSC_SCALE_DEC_INT(pps_temp & DSC_SCALE_DEC_INT_MASK, false);
> +	vdsc_cfg->scale_increment_interval = pps_temp & DSC_SCALE_INC_INT_MASK;
> +
> +	/* Readout PPS_6 register */
> +	pps_temp = 0;
> +	intel_dsc_read_pps_reg(crtc_state, PPS_6, &pps_temp);
> +
> +	vdsc_cfg->initial_scale_value = pps_temp & DSC_INITIAL_SCALE_VALUE_MASK;
> +	vdsc_cfg->first_line_bpg_offset =
> +		DSC_FIRST_LINE_BPG_OFFSET(pps_temp &
> +					  DSC_FIRST_LINE_BPG_OFFSET_MASK, false);
> +	vdsc_cfg->flatness_min_qp =
> +		DSC_FLATNESS_MIN_QP(pps_temp & DSC_FLATNESS_MIN_QP_MASK, false);
> +	vdsc_cfg->flatness_max_qp =
> +		DSC_FLATNESS_MAX_QP(pps_temp & DSC_FLATNESS_MAX_QP_MASK, false);
> +
> +	/* Readout PPS_7 register */
> +	pps_temp = 0;
> +	intel_dsc_read_pps_reg(crtc_state, PPS_7, &pps_temp);
> +
> +	vdsc_cfg->nfl_bpg_offset =
> +		DSC_NFL_BPG_OFFSET(pps_temp & DSC_NFL_BPG_OFFSET_MASK, false);
> +	vdsc_cfg->slice_bpg_offset = pps_temp & ~DSC_NFL_BPG_OFFSET_MASK;
> +
> +	/* Readout PPS_8 register */
> +	pps_temp = 0;
> +	intel_dsc_read_pps_reg(crtc_state, PPS_8, &pps_temp);
> +
> +	vdsc_cfg->initial_offset =
> +		DSC_INITIAL_OFFSET(pps_temp & DSC_INITIAL_OFFSET_MASK, false);
> +	vdsc_cfg->final_offset = pps_temp & ~DSC_INITIAL_OFFSET_MASK;
> +
> +	/* Readout PPS_9 register */
> +	pps_temp = 0;
> +	intel_dsc_read_pps_reg(crtc_state, PPS_9, &pps_temp);
> +
> +	vdsc_cfg->rc_model_size = pps_temp & DSC_RC_MODEL_SIZE_MASK;
> +
> +	/* Readout PPS_10 register */
> +	pps_temp = 0;
> +	intel_dsc_read_pps_reg(crtc_state, PPS_10, &pps_temp);
> +
> +	vdsc_cfg->rc_quant_incr_limit0 = pps_temp & DSC_RC_QUANT_INC_LIMIT0_MASK;
> +	vdsc_cfg->rc_quant_incr_limit1 =
> +		DSC_RC_QUANT_INC_LIMIT1(pps_temp & DSC_RC_QUANT_INC_LIMIT1_MASK, false);
> +
> +	/* Readout PPS_16 register */
> +	pps_temp = 0;
> +	intel_dsc_read_pps_reg(crtc_state, PPS_16, &pps_temp);
> +
> +	vdsc_cfg->slice_chunk_size = pps_temp & DSC_SLICE_CHUNK_SIZE_MASK;
> +
> +	if (DISPLAY_VER(i915) >= 14) {
> +		/* Readout PPS_17 register */
> +		pps_temp = 0;
> +		intel_dsc_read_pps_reg(crtc_state, PPS_17, &pps_temp);
> +
> +		vdsc_cfg->second_line_bpg_offset =
> +			DSC_SL_BPG_OFFSET(pps_temp & DSC_SL_BPG_OFFSET_MASK, false);
> +
> +		/* Readout PPS_18 register */
> +		pps_temp = 0;
> +		intel_dsc_read_pps_reg(crtc_state, PPS_18, &pps_temp);
> +
> +		vdsc_cfg->nsl_bpg_offset =
> +			DSC_NSL_BPG_OFFSET(pps_temp & DSC_NSL_BPG_OFFSET_MASK, false);
> +		vdsc_cfg->second_line_offset_adj =
> +			pps_temp & ~DSC_NSL_BPG_OFFSET_MASK;
> +	}
>  }
>  
>  void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index b71f00b5c761..605d37c2978b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -57,7 +57,8 @@
>  #define MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>  							   _MTL_DSC1_PICTURE_PARAMETER_SET_17_PB, \
>  							   _MTL_DSC1_PICTURE_PARAMETER_SET_17_PC)
> -#define DSC_SL_BPG_OFFSET(offset)		((offset) << 27)
> +#define DSC_SL_BPG_OFFSET(offset, shift)	(shift ? (offset) << 27 : (offset) >> 27)
> +#define DSC_SL_BPG_OFFSET_MASK			REG_GENMASK(31, 27)
>  
>  #define _MTL_DSC0_PICTURE_PARAMETER_SET_18_PB	0x782B8
>  #define _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB	0x783B8
> @@ -69,8 +70,9 @@
>  #define MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>  							   _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB, \
>  							   _MTL_DSC1_PICTURE_PARAMETER_SET_18_PC)
> -#define DSC_NSL_BPG_OFFSET(offset)		((offset) << 16)
> +#define DSC_NSL_BPG_OFFSET(offset, shift)	(shift ? (offset) << 16 : (offset) >> 16)
>  #define DSC_SL_OFFSET_ADJ(offset)		((offset) << 0)
> +#define DSC_NSL_BPG_OFFSET_MASK			REG_GENMASK(31, 16)
>  
>  /* Icelake Display Stream Compression Registers */
>  #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
> @@ -96,6 +98,9 @@
>  #define  DSC_BPC_SHIFT			8
>  #define  DSC_VER_MIN_SHIFT		4
>  #define  DSC_VER_MAJ			(0x1 << 0)
> +#define  DSC_LINE_BUF_DEPTH_MASK	REG_GENMASK(15, 12)
> +#define  DSC_BPC_MASK			REG_GENMASK(11, 8)
> +
>  
>  #define DSCA_PICTURE_PARAMETER_SET_1		_MMIO(0x6B204)
>  #define DSCC_PICTURE_PARAMETER_SET_1		_MMIO(0x6BA04)
> @@ -123,8 +128,9 @@
>  #define ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>  					    _ICL_DSC1_PICTURE_PARAMETER_SET_2_PB, \
>  					    _ICL_DSC1_PICTURE_PARAMETER_SET_2_PC)
> -#define  DSC_PIC_WIDTH(pic_width)	((pic_width) << 16)
> -#define  DSC_PIC_HEIGHT(pic_height)	((pic_height) << 0)
> +#define  DSC_PIC_WIDTH(pic_width, shift)	(shift ? (pic_width) << 16 : (pic_width >> 16))
> +#define  DSC_PIC_HEIGHT(pic_height)		((pic_height) << 0)
> +#define  DSC_PIC_WIDTH_MASK			REG_GENMASK(31, 16)
>  
>  #define DSCA_PICTURE_PARAMETER_SET_3		_MMIO(0x6B20C)
>  #define DSCC_PICTURE_PARAMETER_SET_3		_MMIO(0x6BA0C)
> @@ -138,8 +144,9 @@
>  #define ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>  							   _ICL_DSC1_PICTURE_PARAMETER_SET_3_PB, \
>  							   _ICL_DSC1_PICTURE_PARAMETER_SET_3_PC)
> -#define  DSC_SLICE_WIDTH(slice_width)   ((slice_width) << 16)
> +#define  DSC_SLICE_WIDTH(slice_width, shift)   (shift ? (slice_width) << 16 : (slice_width >> 16))
>  #define  DSC_SLICE_HEIGHT(slice_height) ((slice_height) << 0)
> +#define  DSC_SLICE_WIDTH_MASK			REG_GENMASK(31, 16)
>  
>  #define DSCA_PICTURE_PARAMETER_SET_4		_MMIO(0x6B210)
>  #define DSCC_PICTURE_PARAMETER_SET_4		_MMIO(0x6BA10)
> @@ -153,8 +160,11 @@
>  #define ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>  							   _ICL_DSC1_PICTURE_PARAMETER_SET_4_PB, \
>  							   _ICL_DSC1_PICTURE_PARAMETER_SET_4_PC)
> -#define  DSC_INITIAL_DEC_DELAY(dec_delay)       ((dec_delay) << 16)
> -#define  DSC_INITIAL_XMIT_DELAY(xmit_delay)     ((xmit_delay) << 0)
> +#define  DSC_INITIAL_DEC_DELAY(dec_delay, shift)	(shift ? (dec_delay) << 16 : \
> +							 (dec_delay) >> 16)
> +#define  DSC_INITIAL_XMIT_DELAY(xmit_delay)		((xmit_delay) << 0)
> +#define  DSC_INITIAL_DEC_DELAY_MASK			REG_GENMASK(31, 16)
> +#define  DSC_INITIAL_XMIT_DELAY_MASK			REG_GENMASK(9, 0)
>  
>  #define DSCA_PICTURE_PARAMETER_SET_5		_MMIO(0x6B214)
>  #define DSCC_PICTURE_PARAMETER_SET_5		_MMIO(0x6BA14)
> @@ -168,8 +178,10 @@
>  #define ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>  							   _ICL_DSC1_PICTURE_PARAMETER_SET_5_PB, \
>  							   _ICL_DSC1_PICTURE_PARAMETER_SET_5_PC)
> -#define  DSC_SCALE_DEC_INT(scale_dec)	((scale_dec) << 16)
> +#define  DSC_SCALE_DEC_INT(scale_dec, shift)	(shift ? (scale_dec) << 16 : (scale_dec) >> 16)
>  #define  DSC_SCALE_INC_INT(scale_inc)		((scale_inc) << 0)
> +#define  DSC_SCALE_DEC_INT_MASK			REG_GENMASK(27, 16)
> +#define  DSC_SCALE_INC_INT_MASK			REG_GENMASK(15, 0)
>  
>  #define DSCA_PICTURE_PARAMETER_SET_6		_MMIO(0x6B218)
>  #define DSCC_PICTURE_PARAMETER_SET_6		_MMIO(0x6BA18)
> @@ -183,10 +195,14 @@
>  #define ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>  							   _ICL_DSC1_PICTURE_PARAMETER_SET_6_PB, \
>  							   _ICL_DSC1_PICTURE_PARAMETER_SET_6_PC)
> -#define  DSC_FLATNESS_MAX_QP(max_qp)		((max_qp) << 24)
> -#define  DSC_FLATNESS_MIN_QP(min_qp)		((min_qp) << 16)
> -#define  DSC_FIRST_LINE_BPG_OFFSET(offset)	((offset) << 8)
> -#define  DSC_INITIAL_SCALE_VALUE(value)		((value) << 0)
> +#define  DSC_FLATNESS_MAX_QP(max_qp, shift)		(shift ? (max_qp) << 24 : (max_qp) >> 24)
> +#define  DSC_FLATNESS_MIN_QP(min_qp, shift)		(shift ? (min_qp) << 16 : (min_qp) >> 16)
> +#define  DSC_FIRST_LINE_BPG_OFFSET(offset, shift)	(shift ? (offset) << 8 : (offset) >> 8)
> +#define  DSC_INITIAL_SCALE_VALUE(value)			((value) << 0)
> +#define  DSC_FLATNESS_MAX_QP_MASK			REG_GENMASK(28, 24)
> +#define  DSC_FLATNESS_MIN_QP_MASK			REG_GENMASK(20, 16)
> +#define  DSC_FIRST_LINE_BPG_OFFSET_MASK			REG_GENMASK(12, 8)
> +#define  DSC_INITIAL_SCALE_VALUE_MASK			REG_GENMASK(5, 0)
>  
>  #define DSCA_PICTURE_PARAMETER_SET_7		_MMIO(0x6B21C)
>  #define DSCC_PICTURE_PARAMETER_SET_7		_MMIO(0x6BA1C)
> @@ -200,8 +216,9 @@
>  #define ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>  							    _ICL_DSC1_PICTURE_PARAMETER_SET_7_PB, \
>  							    _ICL_DSC1_PICTURE_PARAMETER_SET_7_PC)
> -#define  DSC_NFL_BPG_OFFSET(bpg_offset)		((bpg_offset) << 16)
> +#define  DSC_NFL_BPG_OFFSET(bpg_offset, shift)	(shift ? (bpg_offset) << 16 : (bpg_offset) >> 16)
>  #define  DSC_SLICE_BPG_OFFSET(bpg_offset)	((bpg_offset) << 0)
> +#define  DSC_NFL_BPG_OFFSET_MASK		REG_GENMASK(31, 16)
>  
>  #define DSCA_PICTURE_PARAMETER_SET_8		_MMIO(0x6B220)
>  #define DSCC_PICTURE_PARAMETER_SET_8		_MMIO(0x6BA20)
> @@ -215,8 +232,10 @@
>  #define ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>  							   _ICL_DSC1_PICTURE_PARAMETER_SET_8_PB, \
>  							   _ICL_DSC1_PICTURE_PARAMETER_SET_8_PC)
> -#define  DSC_INITIAL_OFFSET(initial_offset)		((initial_offset) << 16)
> +#define  DSC_INITIAL_OFFSET(initial_offset, shift)	(shift ? (initial_offset) << 16 : \
> +							 (initial_offset) >> 16)
>  #define  DSC_FINAL_OFFSET(final_offset)			((final_offset) << 0)
> +#define  DSC_INITIAL_OFFSET_MASK			REG_GENMASK(31, 16)
>  
>  #define DSCA_PICTURE_PARAMETER_SET_9		_MMIO(0x6B224)
>  #define DSCC_PICTURE_PARAMETER_SET_9		_MMIO(0x6BA24)
> @@ -232,6 +251,7 @@
>  							   _ICL_DSC1_PICTURE_PARAMETER_SET_9_PC)
>  #define  DSC_RC_EDGE_FACTOR(rc_edge_fact)	((rc_edge_fact) << 16)
>  #define  DSC_RC_MODEL_SIZE(rc_model_size)	((rc_model_size) << 0)
> +#define  DSC_RC_MODEL_SIZE_MASK			REG_GENMASK(15, 0)
>  
>  #define DSCA_PICTURE_PARAMETER_SET_10		_MMIO(0x6B228)
>  #define DSCC_PICTURE_PARAMETER_SET_10		_MMIO(0x6BA28)
> @@ -247,8 +267,10 @@
>  							   _ICL_DSC1_PICTURE_PARAMETER_SET_10_PC)
>  #define  DSC_RC_TARGET_OFF_LOW(rc_tgt_off_low)		((rc_tgt_off_low) << 20)
>  #define  DSC_RC_TARGET_OFF_HIGH(rc_tgt_off_high)	((rc_tgt_off_high) << 16)
> -#define  DSC_RC_QUANT_INC_LIMIT1(lim)			((lim) << 8)
> +#define  DSC_RC_QUANT_INC_LIMIT1(lim, shift)		(shift ? (lim) << 8 : (lim) >> 8)
>  #define  DSC_RC_QUANT_INC_LIMIT0(lim)			((lim) << 0)
> +#define  DSC_RC_QUANT_INC_LIMIT1_MASK			REG_GENMASK(12, 8)
> +#define  DSC_RC_QUANT_INC_LIMIT0_MASK			REG_GENMASK(4, 0)
>  
>  #define DSCA_PICTURE_PARAMETER_SET_11		_MMIO(0x6B22C)
>  #define DSCC_PICTURE_PARAMETER_SET_11		_MMIO(0x6BA2C)
> @@ -330,6 +352,7 @@
>  #define  DSC_SLICE_ROW_PER_FRAME(slice_row_per_frame)	((slice_row_per_frame) << 20)
>  #define  DSC_SLICE_PER_LINE(slice_per_line)		((slice_per_line) << 16)
>  #define  DSC_SLICE_CHUNK_SIZE(slice_chunk_size)		((slice_chunk_size) << 0)
> +#define  DSC_SLICE_CHUNK_SIZE_MASK		REG_GENMASK(15, 0)
>  
>  /* Icelake Rate Control Buffer Threshold Registers */
>  #define DSCA_RC_BUF_THRESH_0			_MMIO(0x6B230)

-- 
Jani Nikula, Intel Open Source Graphics Center
