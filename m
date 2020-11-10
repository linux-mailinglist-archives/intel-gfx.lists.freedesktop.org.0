Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 256F12ADC7D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Nov 2020 17:54:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D69A892D8;
	Tue, 10 Nov 2020 16:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44FD5892D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Nov 2020 16:54:33 +0000 (UTC)
IronPort-SDR: +MvHFxq5HgEBGHgSJkaI7xCxsQcXIGcQu3CQFk4jeW6iGPTSLyeeMHaR1MYqPzFzhNVrNudiLB
 8kY5qjcjg85g==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="231635848"
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="231635848"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 08:54:28 -0800
IronPort-SDR: 1yX7GKSZkO4gTL8M2rWK7tdJgazGRWi4FNOc6kIAaVAZAtjh3kAzA16i1GTFH/tNwiIxK0yb4M
 M1k+8wIVzOig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="356220889"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 10 Nov 2020 08:54:27 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Nov 2020 08:54:27 -0800
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Nov 2020 08:54:25 -0800
Received: from bgsmsx606.gar.corp.intel.com ([10.67.234.8]) by
 BGSMSX606.gar.corp.intel.com ([10.67.234.8]) with mapi id 15.01.1713.004;
 Tue, 10 Nov 2020 22:24:23 +0530
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v15 09/14] drm/i915/dp: Modify VDSC helpers
 to configure DSC for Bigjoiner slave
Thread-Index: AQHWs/GXdtiJcSbaYESOgavYs5bjY6nBnChA
Date: Tue, 10 Nov 2020 16:54:23 +0000
Message-ID: <c46fb91266be4b32aef182d1cb60126b@intel.com>
References: <20201106040355.12809-1-manasi.d.navare@intel.com>
 <20201106040355.12809-10-manasi.d.navare@intel.com>
In-Reply-To: <20201106040355.12809-10-manasi.d.navare@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v15 09/14] drm/i915/dp: Modify VDSC helpers
 to configure DSC for Bigjoiner slave
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Manasi
> Navare
> Sent: Friday, November 6, 2020 9:34 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v15 09/14] drm/i915/dp: Modify VDSC helpers to
> configure DSC for Bigjoiner slave
> 
> Make vdsc work when no output is enabled. The big joiner needs VDSC on the
> slave, so enable it and set the appropriate bits.
> So remove encoder usage from dsc functions.
> 
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>

Changes looks good to me.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c       |   2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c     |   9 +-
>  drivers/gpu/drm/i915/display/intel_display.c |   3 +
>  drivers/gpu/drm/i915/display/intel_dp.c      |   6 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c    | 201 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_vdsc.h    |   6 +-
>  6 files changed, 110 insertions(+), 117 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 096652921453..0fecf372be11 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1492,7 +1492,7 @@ static void gen11_dsi_get_config(struct intel_encoder
> *encoder,
>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> 
> -	intel_dsc_get_config(encoder, pipe_config);
> +	intel_dsc_get_config(pipe_config);
> 
>  	/* FIXME: adapt icl_ddi_clock_get() for DSI and use that? */
>  	pipe_config->port_clock = intel_dpll_get_freq(i915, diff --git
> a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 19b16517a502..fbfb8935f10f 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2216,13 +2216,6 @@ static void intel_ddi_get_power_domains(struct
> intel_encoder *encoder,
>  	    intel_phy_is_tc(dev_priv, phy))
>  		intel_display_power_get(dev_priv,
> 
> 	intel_ddi_main_link_aux_domain(dig_port));
> -
> -	/*
> -	 * VDSC power is needed when DSC is enabled
> -	 */
> -	if (crtc_state->dsc.compression_enable)
> -		intel_display_power_get(dev_priv,
> -					intel_dsc_power_domain(crtc_state));
>  }
> 
>  void intel_ddi_enable_pipe_clock(struct intel_encoder *encoder, @@ -4408,7
> +4401,7 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
>  	if (drm_WARN_ON(&dev_priv->drm,
> transcoder_is_dsi(cpu_transcoder)))
>  		return;
> 
> -	intel_dsc_get_config(encoder, pipe_config);
> +	intel_dsc_get_config(pipe_config);
> 
>  	temp = intel_de_read(dev_priv,
> TRANS_DDI_FUNC_CTL(cpu_transcoder));
>  	if (temp & TRANS_DDI_PHSYNC)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 2fded062d810..e70e8aaf6a8c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7602,6 +7602,9 @@ static u64 get_crtc_power_domains(struct
> intel_crtc_state *crtc_state)
>  	if (crtc_state->shared_dpll)
>  		mask |= BIT_ULL(POWER_DOMAIN_DISPLAY_CORE);
> 
> +	if (crtc_state->dsc.compression_enable)
> +		mask |= BIT_ULL(intel_dsc_power_domain(crtc_state));
> +
>  	return mask;
>  }
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1bdcc3cd88c1..b5cd9c848d8f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2100,12 +2100,10 @@ static bool intel_dp_supports_fec(struct intel_dp
> *intel_dp,  static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
>  				  const struct intel_crtc_state *crtc_state)  {
> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> -
> -	if (!intel_dp_is_edp(intel_dp) && !crtc_state->fec_enable)
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) &&
> +!crtc_state->fec_enable)
>  		return false;
> 
> -	return intel_dsc_source_support(encoder, crtc_state) &&
> +	return intel_dsc_source_support(crtc_state) &&
>  		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
>  }
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index c5735c365659..e2716a67b281 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -332,11 +332,10 @@ static const struct rc_parameters
> *get_rc_params(u16 compressed_bpp,
>  	return &rc_parameters[row_index][column_index];
>  }
> 
> -bool intel_dsc_source_support(struct intel_encoder *encoder,
> -			      const struct intel_crtc_state *crtc_state)
> +bool intel_dsc_source_support(const struct intel_crtc_state
> +*crtc_state)
>  {
>  	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	enum pipe pipe = crtc->pipe;
> 
> @@ -490,11 +489,10 @@ intel_dsc_power_domain(const struct
> intel_crtc_state *crtc_state)
>  		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;  }
> 
> -static void intel_dsc_pps_configure(struct intel_encoder *encoder,
> -				    const struct intel_crtc_state *crtc_state)
> +static void intel_dsc_pps_configure(const struct intel_crtc_state
> +*crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>  	enum pipe pipe = crtc->pipe;
>  	u32 pps_val = 0;
> @@ -503,6 +501,9 @@ static void intel_dsc_pps_configure(struct intel_encoder
> *encoder,
>  	u8 num_vdsc_instances = (crtc_state->dsc.dsc_split) ? 2 : 1;
>  	int i = 0;
> 
> +	if (crtc_state->bigjoiner)
> +		num_vdsc_instances *= 2;
> +
>  	/* Populate PICTURE_PARAMETER_SET_0 registers */
>  	pps_val = DSC_VER_MAJ | vdsc_cfg->dsc_version_minor <<
>  		DSC_VER_MIN_SHIFT |
> @@ -973,55 +974,6 @@ static void intel_dsc_pps_configure(struct
> intel_encoder *encoder,
>  	}
>  }
> 
> -void intel_dsc_get_config(struct intel_encoder *encoder,
> -			  struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	enum pipe pipe = crtc->pipe;
> -	enum intel_display_power_domain power_domain;
> -	intel_wakeref_t wakeref;
> -	u32 dss_ctl1, dss_ctl2, val;
> -
> -	if (!intel_dsc_source_support(encoder, crtc_state))
> -		return;
> -
> -	power_domain = intel_dsc_power_domain(crtc_state);
> -
> -	wakeref = intel_display_power_get_if_enabled(dev_priv,
> power_domain);
> -	if (!wakeref)
> -		return;
> -
> -	if (!is_pipe_dsc(crtc_state)) {
> -		dss_ctl1 = intel_de_read(dev_priv, DSS_CTL1);
> -		dss_ctl2 = intel_de_read(dev_priv, DSS_CTL2);
> -	} else {
> -		dss_ctl1 = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
> -		dss_ctl2 = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL2(pipe));
> -	}
> -
> -	crtc_state->dsc.compression_enable = dss_ctl2 &
> LEFT_BRANCH_VDSC_ENABLE;
> -	if (!crtc_state->dsc.compression_enable)
> -		goto out;
> -
> -	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE)
> &&
> -		(dss_ctl1 & JOINER_ENABLE);
> -
> -	/* FIXME: add more state readout as needed */
> -
> -	/* PPS1 */
> -	if (!is_pipe_dsc(crtc_state))
> -		val = intel_de_read(dev_priv,
> DSCA_PICTURE_PARAMETER_SET_1);
> -	else
> -		val = intel_de_read(dev_priv,
> -
> ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> -	vdsc_cfg->bits_per_pixel = val;
> -	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> -out:
> -	intel_display_power_put(dev_priv, power_domain, wakeref);
> -}
> -
>  static void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *crtc_state)  {
> @@ -1060,77 +1012,126 @@ static void intel_dsc_dp_pps_write(struct
> intel_encoder *encoder,
>  				  sizeof(dp_dsc_pps_sdp));
>  }
> 
> +static i915_reg_t dss_ctl1_reg(const struct intel_crtc_state
> +*crtc_state) {
> +	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> +
> +	if (crtc_state->cpu_transcoder == TRANSCODER_EDP)
> +		return DSS_CTL1;
> +
> +	return ICL_PIPE_DSS_CTL1(pipe);
> +}
> +
> +static i915_reg_t dss_ctl2_reg(const struct intel_crtc_state
> +*crtc_state) {
> +	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> +
> +	if (crtc_state->cpu_transcoder == TRANSCODER_EDP)
> +		return DSS_CTL2;
> +
> +	return ICL_PIPE_DSS_CTL2(pipe);
> +}
> +
>  void intel_dsc_enable(struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *crtc_state)  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	enum pipe pipe = crtc->pipe;
> -	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	u32 dss_ctl1_val = 0;
>  	u32 dss_ctl2_val = 0;
> 
>  	if (!crtc_state->dsc.compression_enable)
>  		return;
> 
> -	/* Enable Power wells for VDSC/joining */
> -	intel_display_power_get(dev_priv,
> -				intel_dsc_power_domain(crtc_state));
> -
> -	intel_dsc_pps_configure(encoder, crtc_state);
> +	intel_dsc_pps_configure(crtc_state);
> 
> -	if (encoder->type == INTEL_OUTPUT_DSI)
> -		intel_dsc_dsi_pps_write(encoder, crtc_state);
> -	else
> -		intel_dsc_dp_pps_write(encoder, crtc_state);
> -
> -	if (!is_pipe_dsc(crtc_state)) {
> -		dss_ctl1_reg = DSS_CTL1;
> -		dss_ctl2_reg = DSS_CTL2;
> -	} else {
> -		dss_ctl1_reg = ICL_PIPE_DSS_CTL1(pipe);
> -		dss_ctl2_reg = ICL_PIPE_DSS_CTL2(pipe);
> +	if (!crtc_state->bigjoiner_slave) {
> +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> +			intel_dsc_dsi_pps_write(encoder, crtc_state);
> +		else
> +			intel_dsc_dp_pps_write(encoder, crtc_state);
>  	}
> +
>  	dss_ctl2_val |= LEFT_BRANCH_VDSC_ENABLE;
>  	if (crtc_state->dsc.dsc_split) {
>  		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
>  		dss_ctl1_val |= JOINER_ENABLE;
>  	}
> -	intel_de_write(dev_priv, dss_ctl1_reg, dss_ctl1_val);
> -	intel_de_write(dev_priv, dss_ctl2_reg, dss_ctl2_val);
> +	if (crtc_state->bigjoiner) {
> +		dss_ctl1_val |= BIG_JOINER_ENABLE;
> +		if (!crtc_state->bigjoiner_slave)
> +			dss_ctl1_val |= MASTER_BIG_JOINER_ENABLE;
> +	}
> +	intel_de_write(dev_priv, dss_ctl1_reg(crtc_state), dss_ctl1_val);
> +	intel_de_write(dev_priv, dss_ctl2_reg(crtc_state), dss_ctl2_val);
>  }
> 
>  void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)  {
>  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	enum pipe pipe = crtc->pipe;
> -	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
> -	u32 dss_ctl1_val = 0, dss_ctl2_val = 0;
> 
>  	if (!old_crtc_state->dsc.compression_enable)
>  		return;
> 
> -	if (!is_pipe_dsc(old_crtc_state)) {
> -		dss_ctl1_reg = DSS_CTL1;
> -		dss_ctl2_reg = DSS_CTL2;
> -	} else {
> -		dss_ctl1_reg = ICL_PIPE_DSS_CTL1(pipe);
> -		dss_ctl2_reg = ICL_PIPE_DSS_CTL2(pipe);
> +	intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
> +	intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0); }
> +
> +void intel_dsc_get_config(struct intel_crtc_state *crtc_state) {
> +	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	enum pipe pipe = crtc->pipe;
> +	enum intel_display_power_domain power_domain;
> +	intel_wakeref_t wakeref;
> +	u32 dss_ctl1, dss_ctl2, val;
> +
> +	if (!intel_dsc_source_support(crtc_state))
> +		return;
> +
> +	power_domain = intel_dsc_power_domain(crtc_state);
> +
> +	wakeref = intel_display_power_get_if_enabled(dev_priv,
> power_domain);
> +	if (!wakeref)
> +		return;
> +
> +	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc_state));
> +	dss_ctl2 = intel_de_read(dev_priv, dss_ctl2_reg(crtc_state));
> +
> +	crtc_state->dsc.compression_enable = dss_ctl2 &
> LEFT_BRANCH_VDSC_ENABLE;
> +	if (!crtc_state->dsc.compression_enable)
> +		goto out;
> +
> +	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE)
> &&
> +		(dss_ctl1 & JOINER_ENABLE);
> +
> +	if (dss_ctl1 & BIG_JOINER_ENABLE) {
> +		crtc_state->bigjoiner = true;
> +
> +		if (!(dss_ctl1 & MASTER_BIG_JOINER_ENABLE)) {
> +			crtc_state->bigjoiner_slave = true;
> +			if (!WARN_ON(crtc->pipe == PIPE_A))
> +				crtc_state->bigjoiner_linked_crtc =
> +					intel_get_crtc_for_pipe(dev_priv, crtc-
> >pipe - 1);
> +		} else {
> +			if (!WARN_ON(INTEL_NUM_PIPES(dev_priv) == crtc-
> >pipe + 1))
> +				crtc_state->bigjoiner_linked_crtc =
> +					intel_get_crtc_for_pipe(dev_priv, crtc-
> >pipe + 1);
> +		}
>  	}
> -	dss_ctl1_val = intel_de_read(dev_priv, dss_ctl1_reg);
> -	if (dss_ctl1_val & JOINER_ENABLE)
> -		dss_ctl1_val &= ~JOINER_ENABLE;
> -	intel_de_write(dev_priv, dss_ctl1_reg, dss_ctl1_val);
> -
> -	dss_ctl2_val = intel_de_read(dev_priv, dss_ctl2_reg);
> -	if (dss_ctl2_val & LEFT_BRANCH_VDSC_ENABLE ||
> -	    dss_ctl2_val & RIGHT_BRANCH_VDSC_ENABLE)
> -		dss_ctl2_val &= ~(LEFT_BRANCH_VDSC_ENABLE |
> -				  RIGHT_BRANCH_VDSC_ENABLE);
> -	intel_de_write(dev_priv, dss_ctl2_reg, dss_ctl2_val);
> -
> -	/* Disable Power wells for VDSC/joining */
> -	intel_display_power_put_unchecked(dev_priv,
> -
> intel_dsc_power_domain(old_crtc_state));
> +
> +	/* FIXME: add more state readout as needed */
> +
> +	/* PPS1 */
> +	if (!is_pipe_dsc(crtc_state))
> +		val = intel_de_read(dev_priv,
> DSCA_PICTURE_PARAMETER_SET_1);
> +	else
> +		val = intel_de_read(dev_priv,
> +
> ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> +	vdsc_cfg->bits_per_pixel = val;
> +	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +out:
> +	intel_display_power_put(dev_priv, power_domain, wakeref);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h
> b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index e56a3254c214..65d301c23580 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -11,15 +11,13 @@
>  struct intel_encoder;
>  struct intel_crtc_state;
> 
> -bool intel_dsc_source_support(struct intel_encoder *encoder,
> -			      const struct intel_crtc_state *crtc_state);
> +bool intel_dsc_source_support(const struct intel_crtc_state
> +*crtc_state);
>  void intel_dsc_enable(struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *crtc_state);  void
> intel_dsc_disable(const struct intel_crtc_state *crtc_state);  int
> intel_dsc_compute_params(struct intel_encoder *encoder,
>  			     struct intel_crtc_state *pipe_config); -void
> intel_dsc_get_config(struct intel_encoder *encoder,
> -			  struct intel_crtc_state *crtc_state);
> +void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
>  enum intel_display_power_domain
>  intel_dsc_power_domain(const struct intel_crtc_state *crtc_state);
> 
> --
> 2.19.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
