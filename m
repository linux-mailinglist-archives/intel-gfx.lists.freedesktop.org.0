Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A777811BF9D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 23:07:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B9F96EC01;
	Wed, 11 Dec 2019 22:07:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94B886EC01
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 22:07:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 14:07:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="225694027"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga002.jf.intel.com with ESMTP; 11 Dec 2019 14:07:17 -0800
Date: Wed, 11 Dec 2019 14:08:37 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191211220837.GE12192@intel.com>
References: <cover.1576081155.git.jani.nikula@intel.com>
 <01bcddcdf397b1c8eb859ed18ebe023fb64383d9.1576081155.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <01bcddcdf397b1c8eb859ed18ebe023fb64383d9.1576081155.git.jani.nikula@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dsc: fix DSC register
 selection for ICL DSI transcoders
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 11, 2019 at 06:23:46PM +0200, Jani Nikula wrote:
> ICL eDP and DSI transcoders have a DSC engine separate from the
> pipe. Abstract the register selection and fix it for ICL.
> 
> Add a warning for pipe A DSC on ICL; it does not exist.
> 
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 58 +++++++++++++++--------
>  1 file changed, 38 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index ed9048140937..e6f60be9ee84 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -353,6 +353,26 @@ bool intel_dsc_source_support(struct intel_encoder *encoder,
>  	return false;
>  }
>  
> +static bool is_pipe_dsc(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	const struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	if (INTEL_GEN(i915) >= 12)
> +		return true;
> +
> +	if (cpu_transcoder == TRANSCODER_EDP ||
> +	    cpu_transcoder == TRANSCODER_DSI_0 ||
> +	    cpu_transcoder == TRANSCODER_DSI_1)
> +		return false;
> +
> +	/* There's no pipe A DSC engine on ICL */
> +	WARN_ON(crtc->pipe == PIPE_A);
> +
> +	return true;
> +}
> +

So for >=Gen12, it will always go to the else part in PPS configure and use
ICL_DSC0_PICTURE_PARAMETER_SET_1 register per pipe.
Right now this only calculates register addresses for PIPE_B and PIPE_C for ICL but
no register defs for DSC_PPS for GEN >=12

As far as the selection logic this patch looks good and will work for <12 GEN , but it will
currently fail for DSC on >=12

Lucas, Jose - Is thsi something anyone's looking at adding?

Regards
Manasi

>  int intel_dsc_compute_params(struct intel_encoder *encoder,
>  			     struct intel_crtc_state *pipe_config)
>  {
> @@ -471,7 +491,6 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>  	enum pipe pipe = crtc->pipe;
> -	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	u32 pps_val = 0;
>  	u32 rc_buf_thresh_dword[4];
>  	u32 rc_range_params_dword[8];
> @@ -492,7 +511,7 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  	if (vdsc_cfg->vbr_enable)
>  		pps_val |= DSC_VBR_ENABLE;
>  	DRM_INFO("PPS0 = 0x%08x\n", pps_val);
> -	if (cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_0, pps_val);
>  		/*
>  		 * If 2 VDSC instances are needed, configure PPS for second
> @@ -511,7 +530,7 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  	pps_val = 0;
>  	pps_val |= DSC_BPP(vdsc_cfg->bits_per_pixel);
>  	DRM_INFO("PPS1 = 0x%08x\n", pps_val);
> -	if (cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_1, pps_val);
>  		/*
>  		 * If 2 VDSC instances are needed, configure PPS for second
> @@ -531,7 +550,7 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  	pps_val |= DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
>  		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
>  	DRM_INFO("PPS2 = 0x%08x\n", pps_val);
> -	if (cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_2, pps_val);
>  		/*
>  		 * If 2 VDSC instances are needed, configure PPS for second
> @@ -551,7 +570,7 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  	pps_val |= DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
>  		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
>  	DRM_INFO("PPS3 = 0x%08x\n", pps_val);
> -	if (cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_3, pps_val);
>  		/*
>  		 * If 2 VDSC instances are needed, configure PPS for second
> @@ -571,7 +590,7 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  	pps_val |= DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
>  		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
>  	DRM_INFO("PPS4 = 0x%08x\n", pps_val);
> -	if (cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_4, pps_val);
>  		/*
>  		 * If 2 VDSC instances are needed, configure PPS for second
> @@ -591,7 +610,7 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  	pps_val |= DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
>  		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
>  	DRM_INFO("PPS5 = 0x%08x\n", pps_val);
> -	if (cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_5, pps_val);
>  		/*
>  		 * If 2 VDSC instances are needed, configure PPS for second
> @@ -613,7 +632,7 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
>  		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
>  	DRM_INFO("PPS6 = 0x%08x\n", pps_val);
> -	if (cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_6, pps_val);
>  		/*
>  		 * If 2 VDSC instances are needed, configure PPS for second
> @@ -633,7 +652,7 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  	pps_val |= DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
>  		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
>  	DRM_INFO("PPS7 = 0x%08x\n", pps_val);
> -	if (cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_7, pps_val);
>  		/*
>  		 * If 2 VDSC instances are needed, configure PPS for second
> @@ -653,7 +672,7 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  	pps_val |= DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
>  		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
>  	DRM_INFO("PPS8 = 0x%08x\n", pps_val);
> -	if (cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_8, pps_val);
>  		/*
>  		 * If 2 VDSC instances are needed, configure PPS for second
> @@ -673,7 +692,7 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  	pps_val |= DSC_RC_MODEL_SIZE(DSC_RC_MODEL_SIZE_CONST) |
>  		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
>  	DRM_INFO("PPS9 = 0x%08x\n", pps_val);
> -	if (cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_9, pps_val);
>  		/*
>  		 * If 2 VDSC instances are needed, configure PPS for second
> @@ -695,7 +714,7 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST) |
>  		DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
>  	DRM_INFO("PPS10 = 0x%08x\n", pps_val);
> -	if (cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_10, pps_val);
>  		/*
>  		 * If 2 VDSC instances are needed, configure PPS for second
> @@ -718,7 +737,7 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  		DSC_SLICE_ROW_PER_FRAME(vdsc_cfg->pic_height /
>  					vdsc_cfg->slice_height);
>  	DRM_INFO("PPS16 = 0x%08x\n", pps_val);
> -	if (cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_16, pps_val);
>  		/*
>  		 * If 2 VDSC instances are needed, configure PPS for second
> @@ -742,7 +761,7 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  		DRM_INFO(" RC_BUF_THRESH%d = 0x%08x\n", i,
>  			 rc_buf_thresh_dword[i / 4]);
>  	}
> -	if (cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		I915_WRITE(DSCA_RC_BUF_THRESH_0, rc_buf_thresh_dword[0]);
>  		I915_WRITE(DSCA_RC_BUF_THRESH_0_UDW, rc_buf_thresh_dword[1]);
>  		I915_WRITE(DSCA_RC_BUF_THRESH_1, rc_buf_thresh_dword[2]);
> @@ -791,7 +810,7 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  		DRM_INFO(" RC_RANGE_PARAM_%d = 0x%08x\n", i,
>  			 rc_range_params_dword[i / 2]);
>  	}
> -	if (cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		I915_WRITE(DSCA_RC_RANGE_PARAMETERS_0,
>  			   rc_range_params_dword[0]);
>  		I915_WRITE(DSCA_RC_RANGE_PARAMETERS_0_UDW,
> @@ -870,7 +889,6 @@ void intel_dsc_get_config(struct intel_encoder *encoder,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	enum pipe pipe = crtc->pipe;
>  	enum intel_display_power_domain power_domain;
>  	intel_wakeref_t wakeref;
> @@ -885,7 +903,7 @@ void intel_dsc_get_config(struct intel_encoder *encoder,
>  	if (!wakeref)
>  		return;
>  
> -	if (crtc_state->cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		dss_ctl1 = I915_READ(DSS_CTL1);
>  		dss_ctl2 = I915_READ(DSS_CTL2);
>  	} else {
> @@ -903,7 +921,7 @@ void intel_dsc_get_config(struct intel_encoder *encoder,
>  	/* FIXME: add more state readout as needed */
>  
>  	/* PPS1 */
> -	if (cpu_transcoder == TRANSCODER_EDP)
> +	if (!is_pipe_dsc(crtc_state))
>  		val = I915_READ(DSCA_PICTURE_PARAMETER_SET_1);
>  	else
>  		val = I915_READ(ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> @@ -975,7 +993,7 @@ void intel_dsc_enable(struct intel_encoder *encoder,
>  	else
>  		intel_dsc_dp_pps_write(encoder, crtc_state);
>  
> -	if (crtc_state->cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(crtc_state)) {
>  		dss_ctl1_reg = DSS_CTL1;
>  		dss_ctl2_reg = DSS_CTL2;
>  	} else {
> @@ -1002,7 +1020,7 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>  	if (!old_crtc_state->dsc.compression_enable)
>  		return;
>  
> -	if (old_crtc_state->cpu_transcoder == TRANSCODER_EDP) {
> +	if (!is_pipe_dsc(old_crtc_state)) {
>  		dss_ctl1_reg = DSS_CTL1;
>  		dss_ctl2_reg = DSS_CTL2;
>  	} else {
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
