Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C49B4132A0
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 13:34:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED7556E969;
	Tue, 21 Sep 2021 11:34:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 273056E92E
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 11:34:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="245750817"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="245750817"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 04:34:49 -0700
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="556899596"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 04:34:49 -0700
Date: Tue, 21 Sep 2021 04:46:26 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210921114626.GA5521@labuser-Z97X-UD5H>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
 <20210913144440.23008-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210913144440.23008-10-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 09/16] drm/i915: Pimp HSW+ transcoder state
 readout
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

On Mon, Sep 13, 2021 at 05:44:33PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Adjust the HSW+ transcoder state readout to just read through
> all the possible transcoders for the pipe, and stuff the results
> in a bitmask.
> 
> We can conveniently cross check the bitmask for invalid
> combinations of enabled transcoders, and later we can easily
> extend the bitmask readout to handle the bigjoiner case.
> 
> One slight change in behaviour is that we no longer read out
> the AONOFF->force_pfit.pfit bit for all the enabled "panel
> transcoders". But having more than one enabled would anyway
> be illegal so no big loss. Also the AONOFF selection should
> only ever be used on HSW, which only has the EDP transcoder
> an no DSI transcoders.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Looks good to me

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 130 ++++++++++++++-----
>  1 file changed, 95 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3848f7963cec..2430142b0337 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5577,6 +5577,21 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
>  	return ret;
>  }
>  
> +static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
> +					   enum transcoder cpu_transcoder)
> +{
> +	enum intel_display_power_domain power_domain;
> +	intel_wakeref_t wakeref;
> +	u32 tmp = 0;
> +
> +	power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
> +
> +	with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref)
> +		tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> +
> +	return tmp & TRANS_DDI_FUNC_ENABLE;
> +}
> +
>  static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
>  {
>  	u8 panel_transcoder_mask = BIT(TRANSCODER_EDP);
> @@ -5587,55 +5602,39 @@ static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
>  	return panel_transcoder_mask;
>  }
>  
> -static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
> -				     struct intel_crtc_state *pipe_config,
> -				     struct intel_display_power_domain_set *power_domain_set)
> +static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
>  {
>  	struct drm_device *dev = crtc->base.dev;
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	u8 panel_transcoder_mask = hsw_panel_transcoders(dev_priv);
> -	unsigned long enabled_panel_transcoders = 0;
> -	enum transcoder panel_transcoder;
> -	u32 tmp;
> -
> -	/*
> -	 * The pipe->transcoder mapping is fixed with the exception of the eDP
> -	 * and DSI transcoders handled below.
> -	 */
> -	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
> +	enum transcoder cpu_transcoder;
> +	u8 enabled_transcoders = 0;
>  
>  	/*
>  	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
>  	 * consistency and less surprising code; it's in always on power).
>  	 */
> -	for_each_cpu_transcoder_masked(dev_priv, panel_transcoder,
> +	for_each_cpu_transcoder_masked(dev_priv, cpu_transcoder,
>  				       panel_transcoder_mask) {
> -		bool force_thru = false;
> +		enum intel_display_power_domain power_domain;
> +		intel_wakeref_t wakeref;
>  		enum pipe trans_pipe;
> +		u32 tmp = 0;
> +
> +		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
> +		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref)
> +			tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
>  
> -		tmp = intel_de_read(dev_priv,
> -				    TRANS_DDI_FUNC_CTL(panel_transcoder));
>  		if (!(tmp & TRANS_DDI_FUNC_ENABLE))
>  			continue;
>  
> -		/*
> -		 * Log all enabled ones, only use the first one.
> -		 *
> -		 * FIXME: This won't work for two separate DSI displays.
> -		 */
> -		enabled_panel_transcoders |= BIT(panel_transcoder);
> -		if (enabled_panel_transcoders != BIT(panel_transcoder))
> -			continue;
> -
>  		switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
>  		default:
>  			drm_WARN(dev, 1,
>  				 "unknown pipe linked to transcoder %s\n",
> -				 transcoder_name(panel_transcoder));
> +				 transcoder_name(cpu_transcoder));
>  			fallthrough;
>  		case TRANS_DDI_EDP_INPUT_A_ONOFF:
> -			force_thru = true;
> -			fallthrough;
>  		case TRANS_DDI_EDP_INPUT_A_ON:
>  			trans_pipe = PIPE_A;
>  			break;
> @@ -5650,22 +5649,83 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
>  			break;
>  		}
>  
> -		if (trans_pipe == crtc->pipe) {
> -			pipe_config->cpu_transcoder = panel_transcoder;
> -			pipe_config->pch_pfit.force_thru = force_thru;
> -		}
> +		if (trans_pipe == crtc->pipe)
> +			enabled_transcoders |= BIT(cpu_transcoder);
>  	}
>  
> +	cpu_transcoder = (enum transcoder) crtc->pipe;
> +	if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
> +		enabled_transcoders |= BIT(cpu_transcoder);
> +
> +	return enabled_transcoders;
> +}
> +
> +static bool has_edp_transcoders(u8 enabled_transcoders)
> +{
> +	return enabled_transcoders & BIT(TRANSCODER_EDP);
> +}
> +
> +static bool has_dsi_transcoders(u8 enabled_transcoders)
> +{
> +	return enabled_transcoders & (BIT(TRANSCODER_DSI_0) |
> +				      BIT(TRANSCODER_DSI_1));
> +}
> +
> +static bool has_pipe_transcoders(u8 enabled_transcoders)
> +{
> +	return enabled_transcoders & ~(BIT(TRANSCODER_EDP) |
> +				       BIT(TRANSCODER_DSI_0) |
> +				       BIT(TRANSCODER_DSI_1));
> +}
> +
> +static void assert_enabled_transcoders(struct drm_i915_private *i915,
> +				       u8 enabled_transcoders)
> +{
> +	/* Only one type of transcoder please */
> +	drm_WARN_ON(&i915->drm,
> +		    has_edp_transcoders(enabled_transcoders) +
> +		    has_dsi_transcoders(enabled_transcoders) +
> +		    has_pipe_transcoders(enabled_transcoders) > 1);
> +
> +	/* Only DSI transcoders can be ganged */
> +	drm_WARN_ON(&i915->drm,
> +		    !has_dsi_transcoders(enabled_transcoders) &&
> +		    !is_power_of_2(enabled_transcoders));
> +}
> +
> +static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
> +				     struct intel_crtc_state *pipe_config,
> +				     struct intel_display_power_domain_set *power_domain_set)
> +{
> +	struct drm_device *dev = crtc->base.dev;
> +	struct drm_i915_private *dev_priv = to_i915(dev);
> +	unsigned long enabled_transcoders;
> +	u32 tmp;
> +
> +	enabled_transcoders = hsw_enabled_transcoders(crtc);
> +	if (!enabled_transcoders)
> +		return false;
> +
> +	assert_enabled_transcoders(dev_priv, enabled_transcoders);
> +
>  	/*
> -	 * Valid combos: none, eDP, DSI0, DSI1, DSI0+DSI1
> +	 * With the exception of DSI we should only ever have
> +	 * a single enabled transcoder. With DSI let's just
> +	 * pick the first one.
>  	 */
> -	drm_WARN_ON(dev, (enabled_panel_transcoders & BIT(TRANSCODER_EDP)) &&
> -		    enabled_panel_transcoders != BIT(TRANSCODER_EDP));
> +	pipe_config->cpu_transcoder = ffs(enabled_transcoders) - 1;
>  
>  	if (!intel_display_power_get_in_set_if_enabled(dev_priv, power_domain_set,
>  						       POWER_DOMAIN_TRANSCODER(pipe_config->cpu_transcoder)))
>  		return false;
>  
> +	if (hsw_panel_transcoders(dev_priv) & BIT(pipe_config->cpu_transcoder)) {
> +		tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(pipe_config->cpu_transcoder));
> +
> +		if ((tmp & TRANS_DDI_EDP_INPUT_MASK) == TRANS_DDI_EDP_INPUT_A_ONOFF)
> +			pipe_config->pch_pfit.force_thru = true;
> +	}
> +
>  	tmp = intel_de_read(dev_priv, PIPECONF(pipe_config->cpu_transcoder));
>  
>  	return tmp & PIPECONF_ENABLE;
> -- 
> 2.32.0
> 
