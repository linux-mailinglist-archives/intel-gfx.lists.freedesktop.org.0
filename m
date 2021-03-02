Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1815132994B
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 11:20:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D29B76E106;
	Tue,  2 Mar 2021 10:20:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDFF16E106
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 10:20:07 +0000 (UTC)
IronPort-SDR: qOf0+95h6XzF44ujbaELpGTu9DAhC21i91p9Z5xnRjN+XwWgOFmPNioAlhCK5Zk+zZWRUDI8bb
 W1d4cnJ5SJcg==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="174399949"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="174399949"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 02:20:06 -0800
IronPort-SDR: jZCWG5lK4xdjyuf4XuBnvSQjgnFqnp/nf0WYtsaNLrGSVnZ4KeE0e4+oyZPfb/5H6pYh+nPMiE
 9Qt5Yb68STdg==
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="406651116"
Received: from rwathan-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.61.106])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 02:20:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201117194718.11462-5-manasi.d.navare@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201117194718.11462-1-manasi.d.navare@intel.com>
 <20201117194718.11462-5-manasi.d.navare@intel.com>
Date: Tue, 02 Mar 2021 12:20:01 +0200
Message-ID: <87eegxq2lq.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI 04/15] drm/i915/dp: Modify VDSC helpers to
 configure DSC for Bigjoiner slave
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

On Tue, 17 Nov 2020, Manasi Navare <manasi.d.navare@intel.com> wrote:
> Make vdsc work when no output is enabled. The big joiner needs VDSC
> on the slave, so enable it and set the appropriate bits.
> So remove encoder usage from dsc functions.

Hi Manasi -

I'm reading intel_vdsc.c code for something else, and stumbled upon the
changes introduced in this patch that I think break ICL DSI DSC.

Please fix.

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
> -	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
> -	if (!wakeref)
> -		return;
> -
> -	if (!is_pipe_dsc(crtc_state)) {
> -		dss_ctl1 = intel_de_read(dev_priv, DSS_CTL1);
> -		dss_ctl2 = intel_de_read(dev_priv, DSS_CTL2);

Note how is_pipe_dsc() decides which registers to use. We'll use pipe
dsc for non-eDP/DSI transcoders on gen 11, and all transcoders on gen
12+.

(Gen 12+ also does not have separate eDP transcoder.)

> +static i915_reg_t dss_ctl1_reg(const struct intel_crtc_state *crtc_state)
> +{
> +	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> +
> +	if (crtc_state->cpu_transcoder == TRANSCODER_EDP)
> +		return DSS_CTL1;
> +
> +	return ICL_PIPE_DSS_CTL1(pipe);
> +}
> +
> +static i915_reg_t dss_ctl2_reg(const struct intel_crtc_state *crtc_state)
> +{
> +	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> +
> +	if (crtc_state->cpu_transcoder == TRANSCODER_EDP)
> +		return DSS_CTL2;
> +
> +	return ICL_PIPE_DSS_CTL2(pipe);
> +}

However, after the changes, here we only look at cpu_transcoder to make
the decision on the registers. This works for gen 12+ and gen 11 eDP,
but picks the wrong registers on gen 11 DSI DSC.

Bypassing is_pipe_dsc() also skips the crucial check and warning on
trying to use pipe A DSC engine on ICL, which CI would have caught. If
the issue only causes a black or garbled screen, we can't detect that.

---

There's nothing wrong with adding abstractions for dss_ctl{1,2}_reg, but
they certainly do not belong in the same patch with everything else that
is going on here. If separated, the functional change would have stood
out better, and review would have had a better chance of catching it.


BR,
Jani.



> +
>  void intel_dsc_enable(struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *crtc_state)
>  {
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
>  void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>  {
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
> +	intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);
> +}
> +
> +void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
> +{
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
> +	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
> +	if (!wakeref)
> +		return;
> +
> +	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc_state));
> +	dss_ctl2 = intel_de_read(dev_priv, dss_ctl2_reg(crtc_state));
> +
> +	crtc_state->dsc.compression_enable = dss_ctl2 & LEFT_BRANCH_VDSC_ENABLE;
> +	if (!crtc_state->dsc.compression_enable)
> +		goto out;
> +
> +	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
> +		(dss_ctl1 & JOINER_ENABLE);
> +
> +	if (dss_ctl1 & BIG_JOINER_ENABLE) {
> +		crtc_state->bigjoiner = true;
> +
> +		if (!(dss_ctl1 & MASTER_BIG_JOINER_ENABLE)) {
> +			crtc_state->bigjoiner_slave = true;
> +			if (!WARN_ON(crtc->pipe == PIPE_A))
> +				crtc_state->bigjoiner_linked_crtc =
> +					intel_get_crtc_for_pipe(dev_priv, crtc->pipe - 1);
> +		} else {
> +			if (!WARN_ON(INTEL_NUM_PIPES(dev_priv) == crtc->pipe + 1))
> +				crtc_state->bigjoiner_linked_crtc =
> +					intel_get_crtc_for_pipe(dev_priv, crtc->pipe + 1);
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
> -					  intel_dsc_power_domain(old_crtc_state));
> +
> +	/* FIXME: add more state readout as needed */
> +
> +	/* PPS1 */
> +	if (!is_pipe_dsc(crtc_state))
> +		val = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
> +	else
> +		val = intel_de_read(dev_priv,
> +				    ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> +	vdsc_cfg->bits_per_pixel = val;
> +	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +out:
> +	intel_display_power_put(dev_priv, power_domain, wakeref);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index e56a3254c214..65d301c23580 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -11,15 +11,13 @@
>  struct intel_encoder;
>  struct intel_crtc_state;
>  
> -bool intel_dsc_source_support(struct intel_encoder *encoder,
> -			      const struct intel_crtc_state *crtc_state);
> +bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
>  void intel_dsc_enable(struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *crtc_state);
>  void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
>  int intel_dsc_compute_params(struct intel_encoder *encoder,
>  			     struct intel_crtc_state *pipe_config);
> -void intel_dsc_get_config(struct intel_encoder *encoder,
> -			  struct intel_crtc_state *crtc_state);
> +void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
>  enum intel_display_power_domain
>  intel_dsc_power_domain(const struct intel_crtc_state *crtc_state);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
