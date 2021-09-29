Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8837341CC83
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 21:18:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A78E26EADA;
	Wed, 29 Sep 2021 19:18:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 119766EAD9
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 19:17:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="205167600"
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="205167600"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 12:17:58 -0700
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="479383764"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 12:17:56 -0700
Date: Wed, 29 Sep 2021 22:17:52 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210929191752.GC2192289@ideak-desk.fi.intel.com>
References: <20210927182455.27119-1-ville.syrjala@linux.intel.com>
 <20210927182455.27119-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210927182455.27119-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915: Generalize
 .set_signal_levels()
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

On Mon, Sep 27, 2021 at 09:24:48PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Currently .set_signal_levels() is only used by encoders in DP mode.
> For most modern platforms there is no essential difference between
> DP and HDMI, and both codepaths just end up calling the same function
> under the hood. Let's get remove the need for that extra indirection
> by moving .set_signal_levels() into the encoder from intel_dp.
> Since we already plumb the crtc_state/etc. into .set_signal_levels()
> the code will do the right thing for both DP and HDMI.

I wondered about the rational to add vfuncs to intel_digital_port or
intel_encoder, I assume the latter needs less type casting.

> HSW/BDW/SKL are the only platforms that need a bit of care on
> account of having to preload the hardware buf_trans register
> with the full set of values. So we must still remember to call
> hsw_prepare_{dp,hdmi}_ddi_buffers() to do said preloading, and
> .set_signal_levels() will just end up selecting the correct entry
> for DP, and also setting up the iboost magic for both DP and HDMI.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  33 +++---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 108 +++++++++---------
>  .../drm/i915/display/intel_display_types.h    |   5 +-
>  .../drm/i915/display/intel_dp_link_training.c |   5 +-
>  4 files changed, 75 insertions(+), 76 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 8e0620ae2ed1..e348f075a41d 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -813,10 +813,10 @@ static u8 intel_dp_preemph_max_3(struct intel_dp *intel_dp)
>  	return DP_TRAIN_PRE_EMPH_LEVEL_3;
>  }
>  
> -static void vlv_set_signal_levels(struct intel_dp *intel_dp,
> +static void vlv_set_signal_levels(struct intel_encoder *encoder,
>  				  const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	unsigned long demph_reg_value, preemph_reg_value,
>  		uniqtranscale_reg_value;
>  	u8 train_set = intel_dp->train_set[0];
> @@ -899,10 +899,10 @@ static void vlv_set_signal_levels(struct intel_dp *intel_dp,
>  				 uniqtranscale_reg_value, 0);
>  }
>  
> -static void chv_set_signal_levels(struct intel_dp *intel_dp,
> +static void chv_set_signal_levels(struct intel_encoder *encoder,
>  				  const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	u32 deemph_reg_value, margin_reg_value;
>  	bool uniq_trans_scale = false;
>  	u8 train_set = intel_dp->train_set[0];
> @@ -1020,10 +1020,11 @@ static u32 g4x_signal_levels(u8 train_set)
>  }
>  
>  static void
> -g4x_set_signal_levels(struct intel_dp *intel_dp,
> +g4x_set_signal_levels(struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	u8 train_set = intel_dp->train_set[0];
>  	u32 signal_levels;
>  
> @@ -1067,10 +1068,11 @@ static u32 snb_cpu_edp_signal_levels(u8 train_set)
>  }
>  
>  static void
> -snb_cpu_edp_set_signal_levels(struct intel_dp *intel_dp,
> +snb_cpu_edp_set_signal_levels(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	u8 train_set = intel_dp->train_set[0];
>  	u32 signal_levels;
>  
> @@ -1118,10 +1120,11 @@ static u32 ivb_cpu_edp_signal_levels(u8 train_set)
>  }
>  
>  static void
> -ivb_cpu_edp_set_signal_levels(struct intel_dp *intel_dp,
> +ivb_cpu_edp_set_signal_levels(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	u8 train_set = intel_dp->train_set[0];
>  	u32 signal_levels;
>  
> @@ -1364,15 +1367,15 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
>  		dig_port->dp.set_link_train = g4x_set_link_train;
>  
>  	if (IS_CHERRYVIEW(dev_priv))
> -		dig_port->dp.set_signal_levels = chv_set_signal_levels;
> +		intel_encoder->set_signal_levels = chv_set_signal_levels;
>  	else if (IS_VALLEYVIEW(dev_priv))
> -		dig_port->dp.set_signal_levels = vlv_set_signal_levels;
> +		intel_encoder->set_signal_levels = vlv_set_signal_levels;

I suppose vlv,chv hdmi encoders could also use these, but that'd need deciphering
the hard-coded values there.

>  	else if (IS_IVYBRIDGE(dev_priv) && port == PORT_A)
> -		dig_port->dp.set_signal_levels = ivb_cpu_edp_set_signal_levels;
> +		intel_encoder->set_signal_levels = ivb_cpu_edp_set_signal_levels;
>  	else if (IS_SANDYBRIDGE(dev_priv) && port == PORT_A)
> -		dig_port->dp.set_signal_levels = snb_cpu_edp_set_signal_levels;
> +		intel_encoder->set_signal_levels = snb_cpu_edp_set_signal_levels;
>  	else
> -		dig_port->dp.set_signal_levels = g4x_set_signal_levels;
> +		intel_encoder->set_signal_levels = g4x_set_signal_levels;
>  
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv) ||
>  	    (HAS_PCH_SPLIT(dev_priv) && port != PORT_A)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 39bacef87ef2..4a22dcde66d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -129,10 +129,10 @@ void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
>   * HDMI/DVI use cases.
>   */
>  static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
> -					 const struct intel_crtc_state *crtc_state,
> -					 int level)
> +					 const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	int level = intel_ddi_hdmi_level(encoder, crtc_state);
>  	u32 iboost_bit = 0;
>  	int n_entries;
>  	enum port port = encoder->port;
> @@ -1395,8 +1395,7 @@ static int translate_signal_level(struct intel_dp *intel_dp,
>  	return 0;
>  }
>  
> -static int intel_ddi_dp_level(struct intel_dp *intel_dp,
> -			      const struct intel_crtc_state *crtc_state)
> +static int intel_ddi_dp_level(struct intel_dp *intel_dp)
>  {
>  	u8 train_set = intel_dp->train_set[0];
>  	u8 signal_levels = train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
> @@ -1405,56 +1404,68 @@ static int intel_ddi_dp_level(struct intel_dp *intel_dp,
>  	return translate_signal_level(intel_dp, signal_levels);
>  }
>  
> +static int intel_ddi_level(struct intel_encoder *encoder,
> +			   const struct intel_crtc_state *crtc_state)
> +{
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		return intel_ddi_hdmi_level(encoder, crtc_state);
> +	else
> +		return intel_ddi_dp_level(enc_to_intel_dp(encoder));
> +}
> +
>  static void
> -dg2_set_signal_levels(struct intel_dp *intel_dp,
> +dg2_set_signal_levels(struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> -	int level = intel_ddi_dp_level(intel_dp, crtc_state);
> +	int level = intel_ddi_level(encoder, crtc_state);
>  
>  	intel_snps_phy_ddi_vswing_sequence(encoder, crtc_state, level);
>  }
>  
>  static void
> -tgl_set_signal_levels(struct intel_dp *intel_dp,
> +tgl_set_signal_levels(struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> -	int level = intel_ddi_dp_level(intel_dp, crtc_state);
> +	int level = intel_ddi_level(encoder, crtc_state);
>  
>  	tgl_ddi_vswing_sequence(encoder, crtc_state, level);
>  }
>  
>  static void
> -icl_set_signal_levels(struct intel_dp *intel_dp,
> +icl_set_signal_levels(struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> -	int level = intel_ddi_dp_level(intel_dp, crtc_state);
> +	int level = intel_ddi_level(encoder, crtc_state);
>  
>  	icl_ddi_vswing_sequence(encoder, crtc_state, level);
>  }
>  
>  static void
> -bxt_set_signal_levels(struct intel_dp *intel_dp,
> +bxt_set_signal_levels(struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> -	int level = intel_ddi_dp_level(intel_dp, crtc_state);
> +	int level = intel_ddi_level(encoder, crtc_state);
>  
>  	bxt_ddi_vswing_sequence(encoder, crtc_state, level);
>  }
>  
>  static void
> -hsw_set_signal_levels(struct intel_dp *intel_dp,
> +hsw_set_signal_levels(struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	int level = intel_ddi_dp_level(intel_dp, crtc_state);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	int level = intel_ddi_level(encoder, crtc_state);
>  	enum port port = encoder->port;
>  	u32 signal_levels;
>  
> +	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
> +		skl_ddi_set_iboost(encoder, crtc_state, level);
> +
> +	/* HDMI ignores the rest */
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		return;
> +
>  	signal_levels = DDI_BUF_TRANS_SELECT(level);
>  
>  	drm_dbg_kms(&dev_priv->drm, "Using signal levels %08x\n",
> @@ -1463,9 +1474,6 @@ hsw_set_signal_levels(struct intel_dp *intel_dp,
>  	intel_dp->DP &= ~DDI_BUF_EMP_MASK;
>  	intel_dp->DP |= signal_levels;
>  
> -	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
> -		skl_ddi_set_iboost(encoder, crtc_state, level);
> -
>  	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
>  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
>  }
> @@ -2357,7 +2365,6 @@ static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> -	int level = intel_ddi_dp_level(intel_dp, crtc_state);
>  
>  	intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
>  				 crtc_state->lane_count);
> @@ -2417,7 +2424,7 @@ static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 */
>  
>  	/* 5.e Configure voltage swing and related IO settings */
> -	intel_snps_phy_ddi_vswing_sequence(encoder, crtc_state, level);
> +	encoder->set_signal_levels(encoder, crtc_state);
>  
>  	/*
>  	 * 5.f Configure and enable DDI_BUF_CTL
> @@ -2471,7 +2478,6 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> -	int level = intel_ddi_dp_level(intel_dp, crtc_state);
>  
>  	intel_dp_set_link_params(intel_dp,
>  				 crtc_state->port_clock,
> @@ -2546,7 +2552,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 */
>  
>  	/* 7.e Configure voltage swing and related IO settings */
> -	tgl_ddi_vswing_sequence(encoder, crtc_state, level);
> +	encoder->set_signal_levels(encoder, crtc_state);
>  
>  	/*
>  	 * 7.f Combo PHY: Configure PORT_CL_DW10 Static Power Down to power up
> @@ -2614,7 +2620,6 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	enum phy phy = intel_port_to_phy(dev_priv, port);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> -	int level = intel_ddi_dp_level(intel_dp, crtc_state);
>  
>  	if (DISPLAY_VER(dev_priv) < 11)
>  		drm_WARN_ON(&dev_priv->drm,
> @@ -2639,13 +2644,12 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  
>  	icl_program_mg_dp_mode(dig_port, crtc_state);
>  
> -	if (DISPLAY_VER(dev_priv) >= 11)
> -		icl_ddi_vswing_sequence(encoder, crtc_state, level);
> -	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> -		bxt_ddi_vswing_sequence(encoder, crtc_state, level);
> -	else
> +	if ((DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv)) ||
> +	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))

Could be DISPLAY_VER <= 9 && !IS_BXT ?

>  		hsw_prepare_dp_ddi_buffers(encoder, crtc_state);
>  
> +	encoder->set_signal_levels(encoder, crtc_state);

hsw_set_signal_levels() wasn't called before, but writing DDI_BUF_CTL
w/o enabling it is ok I think. Maybe it's worth zeroing
intel_dp->train_set already in intel_dp_set_link_params()?

> +
>  	intel_ddi_power_up_lanes(encoder, crtc_state);
>  
>  	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
> @@ -3074,7 +3078,6 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	struct drm_connector *connector = conn_state->connector;
> -	int level = intel_ddi_hdmi_level(encoder, crtc_state);
>  	enum port port = encoder->port;
>  
>  	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
> @@ -3084,19 +3087,11 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  			    "[CONNECTOR:%d:%s] Failed to configure sink scrambling/TMDS bit clock ratio\n",
>  			    connector->base.id, connector->name);
>  
> -	if (IS_DG2(dev_priv))
> -		intel_snps_phy_ddi_vswing_sequence(encoder, crtc_state, level);
> -	else if (DISPLAY_VER(dev_priv) >= 12)
> -		tgl_ddi_vswing_sequence(encoder, crtc_state, level);
> -	else if (DISPLAY_VER(dev_priv) == 11)
> -		icl_ddi_vswing_sequence(encoder, crtc_state, level);
> -	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> -		bxt_ddi_vswing_sequence(encoder, crtc_state, level);
> -	else
> -		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state, level);
> +	if ((DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv)) ||
> +	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))

Here too could be DISPLAY_VER<=9 && !BXT.

Regardless of the above nits, the patch looks ok:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> +		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state);
>  
> -	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
> -		skl_ddi_set_iboost(encoder, crtc_state, level);
> +	encoder->set_signal_levels(encoder, crtc_state);
>  
>  	/* Display WA #1143: skl,kbl,cfl */
>  	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv)) {
> @@ -4047,7 +4042,6 @@ static const struct drm_encoder_funcs intel_ddi_funcs = {
>  static struct intel_connector *
>  intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>  	struct intel_connector *connector;
>  	enum port port = dig_port->base.port;
>  
> @@ -4060,17 +4054,6 @@ intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
>  	dig_port->dp.set_link_train = intel_ddi_set_link_train;
>  	dig_port->dp.set_idle_link_train = intel_ddi_set_idle_link_train;
>  
> -	if (IS_DG2(dev_priv))
> -		dig_port->dp.set_signal_levels = dg2_set_signal_levels;
> -	else if (DISPLAY_VER(dev_priv) >= 12)
> -		dig_port->dp.set_signal_levels = tgl_set_signal_levels;
> -	else if (DISPLAY_VER(dev_priv) >= 11)
> -		dig_port->dp.set_signal_levels = icl_set_signal_levels;
> -	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> -		dig_port->dp.set_signal_levels = bxt_set_signal_levels;
> -	else
> -		dig_port->dp.set_signal_levels = hsw_set_signal_levels;
> -
>  	dig_port->dp.voltage_max = intel_ddi_dp_voltage_max;
>  	dig_port->dp.preemph_max = intel_ddi_dp_preemph_max;
>  
> @@ -4642,6 +4625,17 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  		encoder->get_config = hsw_ddi_get_config;
>  	}
>  
> +	if (IS_DG2(dev_priv))
> +		encoder->set_signal_levels = dg2_set_signal_levels;
> +	else if (DISPLAY_VER(dev_priv) >= 12)
> +		encoder->set_signal_levels = tgl_set_signal_levels;
> +	else if (DISPLAY_VER(dev_priv) >= 11)
> +		encoder->set_signal_levels = icl_set_signal_levels;
> +	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> +		encoder->set_signal_levels = bxt_set_signal_levels;
> +	else
> +		encoder->set_signal_levels = hsw_set_signal_levels;
> +
>  	intel_ddi_buf_trans_init(encoder);
>  
>  	if (DISPLAY_VER(dev_priv) >= 13)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 9413ebae15f5..44e4eaa1ed8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -269,6 +269,9 @@ struct intel_encoder {
>  	const struct intel_ddi_buf_trans *(*get_buf_trans)(struct intel_encoder *encoder,
>  							   const struct intel_crtc_state *crtc_state,
>  							   int *n_entries);
> +	void (*set_signal_levels)(struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *crtc_state);
> +
>  	enum hpd_pin hpd_pin;
>  	enum intel_display_power_domain power_domain;
>  	/* for communication with audio component; protected by av_mutex */
> @@ -1601,8 +1604,6 @@ struct intel_dp {
>  			       u8 dp_train_pat);
>  	void (*set_idle_link_train)(struct intel_dp *intel_dp,
>  				    const struct intel_crtc_state *crtc_state);
> -	void (*set_signal_levels)(struct intel_dp *intel_dp,
> -				  const struct intel_crtc_state *crtc_state);
>  
>  	u8 (*preemph_max)(struct intel_dp *intel_dp);
>  	u8 (*voltage_max)(struct intel_dp *intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 4f116cd32846..d52929855cd0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -398,7 +398,8 @@ void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
>  				const struct intel_crtc_state *crtc_state,
>  				enum drm_dp_phy dp_phy)
>  {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	u8 train_set = intel_dp->train_set[0];
>  	char phy_name[10];
>  
> @@ -412,7 +413,7 @@ void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
>  		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
>  
>  	if (intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy))
> -		intel_dp->set_signal_levels(intel_dp, crtc_state);
> +		encoder->set_signal_levels(encoder, crtc_state);
>  }
>  
>  static bool
> -- 
> 2.32.0
> 
