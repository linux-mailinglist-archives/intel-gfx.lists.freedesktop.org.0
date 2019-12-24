Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B01E129C04
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 01:16:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D17E6E52C;
	Tue, 24 Dec 2019 00:16:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A866E52C
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 00:16:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 16:16:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="214385740"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga008.fm.intel.com with ESMTP; 23 Dec 2019 16:16:24 -0800
Date: Mon, 23 Dec 2019 16:16:24 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191224001624.GX2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
 <20191223195850.25997-10-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223195850.25997-10-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/display: use port_info on
 intel_ddi_init
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

On Mon, Dec 23, 2019 at 11:58:50AM -0800, Lucas De Marchi wrote:
> Now that we have tables for all platforms using ddi, keep the port_info
> around so we can use it for decisions like "what phy does it have?"
> instead of keep checking the platform/gen everywhere.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 36 ++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_ddi.h      |  8 ++++-
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>  .../drm/i915/display/intel_display_types.h    |  3 ++
>  4 files changed, 35 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index a1b7075ea6be..9d06a34f5f8e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4782,14 +4782,25 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_port)
>  	return max_lanes;
>  }
>  
> -void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> +bool __pure intel_ddi_has_tc_phy(const struct intel_digital_port *dig_port)
>  {
> +	return dig_port->port_info->phy_type == PHY_TYPE_TC;
> +}
> +
> +bool __pure intel_ddi_has_combo_phy(const struct intel_digital_port *dig_port)
> +{
> +	return dig_port->port_info->phy_type == PHY_TYPE_COMBO;
> +}
> +
> +void intel_ddi_init(struct drm_i915_private *dev_priv,
> +		    const struct intel_ddi_port_info *port_info)
> +{
> +	enum port port = port_info->port;
>  	struct ddi_vbt_port_info *vbt_port_info =
>  		&dev_priv->vbt.ddi_port_info[port];
>  	struct intel_digital_port *intel_dig_port;
>  	struct intel_encoder *encoder;
>  	bool init_hdmi, init_dp, init_lspcon = false;
> -	enum phy phy = intel_port_to_phy(dev_priv, port);
>  
>  	init_hdmi = vbt_port_info->supports_dvi || vbt_port_info->supports_hdmi;
>  	init_dp = vbt_port_info->supports_dp;
> @@ -4803,12 +4814,12 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  		init_dp = true;
>  		init_lspcon = true;
>  		init_hdmi = false;
> -		DRM_DEBUG_KMS("VBT says port %c has lspcon\n", port_name(port));
> +		DRM_DEBUG_KMS("VBT says port %s has lspcon\n", port_info->name);
>  	}
>  
>  	if (!init_dp && !init_hdmi) {
> -		DRM_DEBUG_KMS("VBT says port %c is not DVI/HDMI/DP compatible, respect it\n",
> -			      port_name(port));
> +		DRM_DEBUG_KMS("VBT says %s is not DVI/HDMI/DP compatible, respect it\n",
> +			      port_info->name);
>  		return;
>  	}
>  
> @@ -4819,7 +4830,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  	encoder = &intel_dig_port->base;
>  
>  	drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
> -			 DRM_MODE_ENCODER_TMDS, "DDI %c", port_name(port));
> +			 DRM_MODE_ENCODER_TMDS, port_info->name);
>  
>  	encoder->hotplug = intel_ddi_hotplug;
>  	encoder->compute_output_type = intel_ddi_compute_output_type;
> @@ -4837,7 +4848,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  
>  	encoder->type = INTEL_OUTPUT_DDI;
>  	encoder->power_domain = intel_port_to_power_domain(port);
> -	encoder->port = port;
> +	encoder->port = port_info->port;

In theory, shouldn't we be able to drop encoder->port completely once
we've converted everything over to the proper ddi/phy/vbt namespace?

Overall I like the direction this series is going.  The continued use of
'port' terminology, both in the driver and in the hardware specs has
become increasingly confusing as things get chopped up and indexed
differently.  I think this will help clarify exactly what a platform is
expecting and force people to think about which namespace is correct for
the part of the hardware they're working with.


Matt

>  	encoder->cloneable = 0;
>  	encoder->pipe_mask = ~0;
>  
> @@ -4851,8 +4862,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  	intel_dig_port->dp.output_reg = INVALID_MMIO_REG;
>  	intel_dig_port->max_lanes = intel_ddi_max_lanes(intel_dig_port);
>  	intel_dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
> +	intel_dig_port->port_info = port_info;
>  
> -	if (intel_phy_is_tc(dev_priv, phy)) {
> +	if (intel_ddi_has_tc_phy(intel_dig_port)) {
>  		bool is_legacy = !vbt_port_info->supports_typec_usb &&
>  				 !vbt_port_info->supports_tbt;
>  
> @@ -4883,15 +4895,15 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  	if (init_lspcon) {
>  		if (lspcon_init(intel_dig_port))
>  			/* TODO: handle hdmi info frame part */
> -			DRM_DEBUG_KMS("LSPCON init success on port %c\n",
> -				port_name(port));
> +			DRM_DEBUG_KMS("LSPCON init success on port %s\n",
> +				      port_info->name);
>  		else
>  			/*
>  			 * LSPCON init faied, but DP init was success, so
>  			 * lets try to drive as DP++ port.
>  			 */
> -			DRM_ERROR("LSPCON init failed on port %c\n",
> -				port_name(port));
> +			DRM_ERROR("LSPCON init failed on port %s\n",
> +				  port_info->name);
>  	}
>  
>  	intel_infoframe_init(intel_dig_port);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
> index 167c6579d972..c500d473963e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -15,6 +15,7 @@ struct drm_i915_private;
>  struct intel_connector;
>  struct intel_crtc;
>  struct intel_crtc_state;
> +struct intel_ddi_port_info;
>  struct intel_dp;
>  struct intel_dpll_hw_state;
>  struct intel_encoder;
> @@ -24,7 +25,8 @@ void intel_ddi_fdi_post_disable(struct intel_encoder *intel_encoder,
>  				const struct drm_connector_state *old_conn_state);
>  void hsw_fdi_link_train(struct intel_encoder *encoder,
>  			const struct intel_crtc_state *crtc_state);
> -void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port);
> +void intel_ddi_init(struct drm_i915_private *dev_priv,
> +		    const struct intel_ddi_port_info *port_info);
>  bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe);
>  void intel_ddi_enable_transcoder_func(const struct intel_crtc_state *crtc_state);
>  void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state);
> @@ -50,4 +52,8 @@ void icl_sanitize_encoder_pll_mapping(struct intel_encoder *encoder);
>  int cnl_calc_wrpll_link(struct drm_i915_private *dev_priv,
>  			struct intel_dpll_hw_state *state);
>  
> +
> +bool __pure intel_ddi_has_tc_phy(const struct intel_digital_port *dig_port);
> +bool __pure intel_ddi_has_combo_phy(const struct intel_digital_port *dig_port);
> +
>  #endif /* __INTEL_DDI_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 219f180fa395..96207dc83fac 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16363,7 +16363,7 @@ static void setup_ddi_outputs(struct drm_i915_private *i915)
>  		    !output->is_port_present(i915, port_info))
>  			continue;
>  
> -		intel_ddi_init(i915, port_info->port);
> +		intel_ddi_init(i915, port_info);
>  	}
>  
>  	if (output->dsi_init)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 23a885895803..c54b0178e885 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1346,6 +1346,9 @@ struct intel_digital_port {
>  	enum intel_display_power_domain ddi_io_power_domain;
>  	struct mutex tc_lock;	/* protects the TypeC port mode */
>  	intel_wakeref_t tc_lock_wakeref;
> +
> +	const struct intel_ddi_port_info *port_info;
> +
>  	int tc_link_refcount;
>  	bool tc_legacy_port:1;
>  	char tc_port_name[8];
> -- 
> 2.24.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
