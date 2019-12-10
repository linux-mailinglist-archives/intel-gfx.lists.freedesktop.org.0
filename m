Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D61F01181A5
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 09:03:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2FE9899FF;
	Tue, 10 Dec 2019 08:03:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 08:03:10 UTC
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25BD6899FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 08:03:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 23:56:02 -0800
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="207191749"
Received: from wwisnei1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.33.29])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 23:56:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <583761dfb63e63f7b5d5ae5fccee91c84d57a548.1575907078.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1575907078.git.jani.nikula@intel.com>
 <583761dfb63e63f7b5d5ae5fccee91c84d57a548.1575907078.git.jani.nikula@intel.com>
Date: Tue, 10 Dec 2019 09:56:04 +0200
Message-ID: <87tv68vckr.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 07/15] drm/i915/dsc: add basic hardware
 state readout support
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

On Mon, 09 Dec 2019, Jani Nikula <jani.nikula@intel.com> wrote:
> Add basic hardware state readout for DSC, and check the most relevant
> details in the state checker.
>
> As a side effect, this should also get the power domains for the enabled
> DSC on takeover, and subsequently disable DSC if it's not needed.

This was hasty...

Need to check for source DSC support and DSC power domain power before
readout. Duh.

BR,
Jani.


>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  2 ++
>  drivers/gpu/drm/i915/display/intel_display.c |  4 +++
>  drivers/gpu/drm/i915/display/intel_vdsc.c    | 36 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vdsc.h    |  2 ++
>  4 files changed, 44 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 3cacb1e279c1..98964d127cd1 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4291,6 +4291,8 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
>  	if (WARN_ON(transcoder_is_dsi(cpu_transcoder)))
>  		return;
>  
> +	intel_dsc_get_config(encoder, pipe_config);
> +
>  	temp = I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
>  	if (temp & TRANS_DDI_PHSYNC)
>  		flags |= DRM_MODE_FLAG_PHSYNC;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3190aa27ffdc..4fd34d2cba4f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13316,6 +13316,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
> index 7bd727129a8f..4c1b1c5c55ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -845,6 +845,42 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
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
> +	u32 dss_ctl1, dss_ctl2, val;
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
> +		return;
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
> +}
> +
>  static void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *crtc_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index 4ed2256750c3..541c28a9e158 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -14,6 +14,8 @@ void intel_dsc_enable(struct intel_encoder *encoder,
>  void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
>  int intel_dsc_compute_params(struct intel_encoder *encoder,
>  			     struct intel_crtc_state *pipe_config);
> +void intel_dsc_get_config(struct intel_encoder *encoder,
> +			  struct intel_crtc_state *crtc_state);
>  enum intel_display_power_domain
>  intel_dsc_power_domain(const struct intel_crtc_state *crtc_state);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
