Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2FB119F1F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 00:12:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77EB36EA1C;
	Tue, 10 Dec 2019 23:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E9066EA1C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 23:12:14 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 15:12:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="225314472"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga002.jf.intel.com with ESMTP; 10 Dec 2019 15:12:10 -0800
Date: Tue, 10 Dec 2019 15:13:29 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191210231328.GB12192@intel.com>
References: <cover.1575974743.git.jani.nikula@intel.com>
 <3fb018cf9bd9a4c275aab389b6ec0f2a4e938bb9.1575974743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3fb018cf9bd9a4c275aab389b6ec0f2a4e938bb9.1575974743.git.jani.nikula@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [v4.1 08/16] drm/i915/dsc: add basic hardware state
 readout support
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

On Tue, Dec 10, 2019 at 12:50:52PM +0200, Jani Nikula wrote:
> Add basic hardware state readout for DSC, and check the most relevant
> details in the state checker.
> 
> v2:
> - check for DSC power before reading its state
> - check if source supports DSC at all
> 
> As a side effect, this should also get the power domains for the enabled
> DSC on takeover, and subsequently disable DSC if it's not needed.
> 
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

This looks great, thank you for adding the readout. And we should
add more DSC parameters in the readout soon like Ville had suggested
adding all the PPS readout, but for now:

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  2 +
>  drivers/gpu/drm/i915/display/intel_display.c |  4 ++
>  drivers/gpu/drm/i915/display/intel_vdsc.c    | 49 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vdsc.h    |  2 +
>  4 files changed, 57 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 3e81c54c349e..5b6f32517c75 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4294,6 +4294,8 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
>  	if (WARN_ON(transcoder_is_dsi(cpu_transcoder)))
>  		return;
>  
> +	intel_dsc_get_config(encoder, pipe_config);
> +
>  	temp = I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
>  	if (temp & TRANS_DDI_PHSYNC)
>  		flags |= DRM_MODE_FLAG_PHSYNC;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1d2fad1610ef..5a4bd37863e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13301,6 +13301,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_I(sync_mode_slaves_mask);
>  	PIPE_CONF_CHECK_I(master_transcoder);
>  
> +	PIPE_CONF_CHECK_I(dsc.compression_enable);
> +	PIPE_CONF_CHECK_I(dsc.dsc_split);
> +	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
> +
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I
>  #undef PIPE_CONF_CHECK_BOOL
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index a1b0f7cf1a96..ed9048140937 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -864,6 +864,55 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
>  	}
>  }
>  
> +void intel_dsc_get_config(struct intel_encoder *encoder,
> +			  struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	enum pipe pipe = crtc->pipe;
> +	enum intel_display_power_domain power_domain;
> +	intel_wakeref_t wakeref;
> +	u32 dss_ctl1, dss_ctl2, val;
> +
> +	if (!intel_dsc_source_support(encoder, crtc_state))
> +		return;
> +
> +	power_domain = intel_dsc_power_domain(crtc_state);
> +
> +	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
> +	if (!wakeref)
> +		return;
> +
> +	if (crtc_state->cpu_transcoder == TRANSCODER_EDP) {
> +		dss_ctl1 = I915_READ(DSS_CTL1);
> +		dss_ctl2 = I915_READ(DSS_CTL2);
> +	} else {
> +		dss_ctl1 = I915_READ(ICL_PIPE_DSS_CTL1(pipe));
> +		dss_ctl2 = I915_READ(ICL_PIPE_DSS_CTL2(pipe));
> +	}
> +
> +	crtc_state->dsc.compression_enable = dss_ctl2 & LEFT_BRANCH_VDSC_ENABLE;
> +	if (!crtc_state->dsc.compression_enable)
> +		goto out;
> +
> +	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
> +		(dss_ctl1 & JOINER_ENABLE);
> +
> +	/* FIXME: add more state readout as needed */
> +
> +	/* PPS1 */
> +	if (cpu_transcoder == TRANSCODER_EDP)
> +		val = I915_READ(DSCA_PICTURE_PARAMETER_SET_1);
> +	else
> +		val = I915_READ(ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> +	vdsc_cfg->bits_per_pixel = val;
> +	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +out:
> +	intel_display_power_put(dev_priv, power_domain, wakeref);
> +}
> +
>  static void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *crtc_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index e6e9f5b5c6ff..4dd6bbf35e42 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -16,6 +16,8 @@ void intel_dsc_enable(struct intel_encoder *encoder,
>  void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
>  int intel_dsc_compute_params(struct intel_encoder *encoder,
>  			     struct intel_crtc_state *pipe_config);
> +void intel_dsc_get_config(struct intel_encoder *encoder,
> +			  struct intel_crtc_state *crtc_state);
>  enum intel_display_power_domain
>  intel_dsc_power_domain(const struct intel_crtc_state *crtc_state);
>  
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
