Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C7941CACD
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 18:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83CF86E1EC;
	Wed, 29 Sep 2021 16:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D1DD6E1EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 16:59:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="221784639"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="221784639"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 09:59:11 -0700
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="563428435"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 09:59:10 -0700
Date: Wed, 29 Sep 2021 19:59:06 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210929165906.GB2192289@ideak-desk.fi.intel.com>
References: <20210927182455.27119-1-ville.syrjala@linux.intel.com>
 <20210927182455.27119-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210927182455.27119-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: s/ddi_translations/trans/
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

On Mon, Sep 27, 2021 at 09:24:47PM +0300, Ville Syrjala wrote:
> From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> 
> "ddi_translations" is a bit too long, let's shorten it to just "trans".
> 
> Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  92 +--
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 628 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |  12 +-
>  3 files changed, 366 insertions(+), 366 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index a4667741d354..39bacef87ef2 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -104,10 +104,10 @@ void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
>  	u32 iboost_bit = 0;
>  	int i, n_entries;
>  	enum port port = encoder->port;
> -	const struct intel_ddi_buf_trans *ddi_translations;
> +	const struct intel_ddi_buf_trans *trans;
>  
> -	ddi_translations = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
> +	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> +	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
>  		return;
>  
>  	/* If we're boosting the current, set bit 31 of trans1 */
> @@ -117,9 +117,9 @@ void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
>  
>  	for (i = 0; i < n_entries; i++) {
>  		intel_de_write(dev_priv, DDI_BUF_TRANS_LO(port, i),
> -			       ddi_translations->entries[i].hsw.trans1 | iboost_bit);
> +			       trans->entries[i].hsw.trans1 | iboost_bit);
>  		intel_de_write(dev_priv, DDI_BUF_TRANS_HI(port, i),
> -			       ddi_translations->entries[i].hsw.trans2);
> +			       trans->entries[i].hsw.trans2);
>  	}
>  }
>  
> @@ -136,10 +136,10 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
>  	u32 iboost_bit = 0;
>  	int n_entries;
>  	enum port port = encoder->port;
> -	const struct intel_ddi_buf_trans *ddi_translations;
> +	const struct intel_ddi_buf_trans *trans;
>  
> -	ddi_translations = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
> +	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> +	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
>  		return;
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
>  		level = n_entries - 1;
> @@ -151,9 +151,9 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
>  
>  	/* Entry 9 is for HDMI: */
>  	intel_de_write(dev_priv, DDI_BUF_TRANS_LO(port, 9),
> -		       ddi_translations->entries[level].hsw.trans1 | iboost_bit);
> +		       trans->entries[level].hsw.trans1 | iboost_bit);
>  	intel_de_write(dev_priv, DDI_BUF_TRANS_HI(port, 9),
> -		       ddi_translations->entries[level].hsw.trans2);
> +		       trans->entries[level].hsw.trans2);
>  }
>  
>  void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
> @@ -971,16 +971,16 @@ static void skl_ddi_set_iboost(struct intel_encoder *encoder,
>  		iboost = intel_bios_encoder_dp_boost_level(encoder->devdata);
>  
>  	if (iboost == 0) {
> -		const struct intel_ddi_buf_trans *ddi_translations;
> +		const struct intel_ddi_buf_trans *trans;
>  		int n_entries;
>  
> -		ddi_translations = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> -		if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
> +		trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> +		if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
>  			return;
>  		if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
>  			level = n_entries - 1;
>  
> -		iboost = ddi_translations->entries[level].hsw.i_boost;
> +		iboost = trans->entries[level].hsw.i_boost;
>  	}
>  
>  	/* Make sure that the requested I_boost is valid */
> @@ -1000,21 +1000,21 @@ static void bxt_ddi_vswing_sequence(struct intel_encoder *encoder,
>  				    int level)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	const struct intel_ddi_buf_trans *ddi_translations;
> +	const struct intel_ddi_buf_trans *trans;
>  	enum port port = encoder->port;
>  	int n_entries;
>  
> -	ddi_translations = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
> +	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> +	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
>  		return;
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
>  		level = n_entries - 1;
>  
>  	bxt_ddi_phy_set_signal_level(dev_priv, port,
> -				     ddi_translations->entries[level].bxt.margin,
> -				     ddi_translations->entries[level].bxt.scale,
> -				     ddi_translations->entries[level].bxt.enable,
> -				     ddi_translations->entries[level].bxt.deemphasis);
> +				     trans->entries[level].bxt.margin,
> +				     trans->entries[level].bxt.scale,
> +				     trans->entries[level].bxt.enable,
> +				     trans->entries[level].bxt.deemphasis);
>  }
>  
>  static u8 intel_ddi_dp_voltage_max(struct intel_dp *intel_dp,
> @@ -1051,13 +1051,13 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
>  					 int level)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	const struct intel_ddi_buf_trans *ddi_translations;
> +	const struct intel_ddi_buf_trans *trans;
>  	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
>  	int n_entries, ln;
>  	u32 val;
>  
> -	ddi_translations = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
> +	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> +	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
>  		return;
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
>  		level = n_entries - 1;
> @@ -1066,7 +1066,7 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
>  		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  
>  		val = EDP4K2K_MODE_OVRD_EN | EDP4K2K_MODE_OVRD_OPTIMIZED;
> -		intel_dp->hobl_active = is_hobl_buf_trans(ddi_translations);
> +		intel_dp->hobl_active = is_hobl_buf_trans(trans);
>  		intel_de_rmw(dev_priv, ICL_PORT_CL_DW10(phy), val,
>  			     intel_dp->hobl_active ? val : 0);
>  	}
> @@ -1084,8 +1084,8 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
>  	val = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN0(phy));
>  	val &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
>  		 RCOMP_SCALAR_MASK);
> -	val |= SWING_SEL_UPPER(ddi_translations->entries[level].icl.dw2_swing_sel);
> -	val |= SWING_SEL_LOWER(ddi_translations->entries[level].icl.dw2_swing_sel);
> +	val |= SWING_SEL_UPPER(trans->entries[level].icl.dw2_swing_sel);
> +	val |= SWING_SEL_LOWER(trans->entries[level].icl.dw2_swing_sel);
>  	/* Program Rcomp scalar for every table entry */
>  	val |= RCOMP_SCALAR(0x98);
>  	intel_de_write(dev_priv, ICL_PORT_TX_DW2_GRP(phy), val);
> @@ -1096,16 +1096,16 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
>  		val = intel_de_read(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy));
>  		val &= ~(POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
>  			 CURSOR_COEFF_MASK);
> -		val |= POST_CURSOR_1(ddi_translations->entries[level].icl.dw4_post_cursor_1);
> -		val |= POST_CURSOR_2(ddi_translations->entries[level].icl.dw4_post_cursor_2);
> -		val |= CURSOR_COEFF(ddi_translations->entries[level].icl.dw4_cursor_coeff);
> +		val |= POST_CURSOR_1(trans->entries[level].icl.dw4_post_cursor_1);
> +		val |= POST_CURSOR_2(trans->entries[level].icl.dw4_post_cursor_2);
> +		val |= CURSOR_COEFF(trans->entries[level].icl.dw4_cursor_coeff);
>  		intel_de_write(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy), val);
>  	}
>  
>  	/* Program PORT_TX_DW7 */
>  	val = intel_de_read(dev_priv, ICL_PORT_TX_DW7_LN0(phy));
>  	val &= ~N_SCALAR_MASK;
> -	val |= N_SCALAR(ddi_translations->entries[level].icl.dw7_n_scalar);
> +	val |= N_SCALAR(trans->entries[level].icl.dw7_n_scalar);
>  	intel_de_write(dev_priv, ICL_PORT_TX_DW7_GRP(phy), val);
>  }
>  
> @@ -1176,15 +1176,15 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
> -	const struct intel_ddi_buf_trans *ddi_translations;
> +	const struct intel_ddi_buf_trans *trans;
>  	int n_entries, ln;
>  	u32 val;
>  
>  	if (enc_to_dig_port(encoder)->tc_mode == TC_PORT_TBT_ALT)
>  		return;
>  
> -	ddi_translations = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
> +	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> +	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
>  		return;
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
>  		level = n_entries - 1;
> @@ -1205,13 +1205,13 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
>  		val = intel_de_read(dev_priv, MG_TX1_SWINGCTRL(ln, tc_port));
>  		val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
>  		val |= CRI_TXDEEMPH_OVERRIDE_17_12(
> -			ddi_translations->entries[level].mg.cri_txdeemph_override_17_12);
> +			trans->entries[level].mg.cri_txdeemph_override_17_12);
>  		intel_de_write(dev_priv, MG_TX1_SWINGCTRL(ln, tc_port), val);
>  
>  		val = intel_de_read(dev_priv, MG_TX2_SWINGCTRL(ln, tc_port));
>  		val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
>  		val |= CRI_TXDEEMPH_OVERRIDE_17_12(
> -			ddi_translations->entries[level].mg.cri_txdeemph_override_17_12);
> +			trans->entries[level].mg.cri_txdeemph_override_17_12);
>  		intel_de_write(dev_priv, MG_TX2_SWINGCTRL(ln, tc_port), val);
>  	}
>  
> @@ -1221,9 +1221,9 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
>  		val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
>  			 CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
>  		val |= CRI_TXDEEMPH_OVERRIDE_5_0(
> -			ddi_translations->entries[level].mg.cri_txdeemph_override_5_0) |
> +			trans->entries[level].mg.cri_txdeemph_override_5_0) |
>  			CRI_TXDEEMPH_OVERRIDE_11_6(
> -				ddi_translations->entries[level].mg.cri_txdeemph_override_11_6) |
> +				trans->entries[level].mg.cri_txdeemph_override_11_6) |
>  			CRI_TXDEEMPH_OVERRIDE_EN;
>  		intel_de_write(dev_priv, MG_TX1_DRVCTRL(ln, tc_port), val);
>  
> @@ -1231,9 +1231,9 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
>  		val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
>  			 CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
>  		val |= CRI_TXDEEMPH_OVERRIDE_5_0(
> -			ddi_translations->entries[level].mg.cri_txdeemph_override_5_0) |
> +			trans->entries[level].mg.cri_txdeemph_override_5_0) |
>  			CRI_TXDEEMPH_OVERRIDE_11_6(
> -				ddi_translations->entries[level].mg.cri_txdeemph_override_11_6) |
> +				trans->entries[level].mg.cri_txdeemph_override_11_6) |
>  			CRI_TXDEEMPH_OVERRIDE_EN;
>  		intel_de_write(dev_priv, MG_TX2_DRVCTRL(ln, tc_port), val);
>  
> @@ -1313,15 +1313,15 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
> -	const struct intel_ddi_buf_trans *ddi_translations;
> +	const struct intel_ddi_buf_trans *trans;
>  	u32 val, dpcnt_mask, dpcnt_val;
>  	int n_entries, ln;
>  
>  	if (enc_to_dig_port(encoder)->tc_mode == TC_PORT_TBT_ALT)
>  		return;
>  
> -	ddi_translations = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
> +	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> +	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
>  		return;
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
>  		level = n_entries - 1;
> @@ -1329,9 +1329,9 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
>  	dpcnt_mask = (DKL_TX_PRESHOOT_COEFF_MASK |
>  		      DKL_TX_DE_EMPAHSIS_COEFF_MASK |
>  		      DKL_TX_VSWING_CONTROL_MASK);
> -	dpcnt_val = DKL_TX_VSWING_CONTROL(ddi_translations->entries[level].dkl.dkl_vswing_control);
> -	dpcnt_val |= DKL_TX_DE_EMPHASIS_COEFF(ddi_translations->entries[level].dkl.dkl_de_emphasis_control);
> -	dpcnt_val |= DKL_TX_PRESHOOT_COEFF(ddi_translations->entries[level].dkl.dkl_preshoot_control);
> +	dpcnt_val = DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.dkl_vswing_control);
> +	dpcnt_val |= DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.dkl_de_emphasis_control);
> +	dpcnt_val |= DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.dkl_preshoot_control);
>  
>  	for (ln = 0; ln < 2; ln++) {
>  		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 796dd04eae01..449daba7afb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -13,7 +13,7 @@
>   * them for both DP and FDI transports, allowing those ports to
>   * automatically adapt to HDMI connections as well
>   */
> -static const union intel_ddi_buf_trans_entry _hsw_ddi_translations_dp[] = {
> +static const union intel_ddi_buf_trans_entry _hsw_trans_dp[] = {
>  	{ .hsw = { 0x00FFFFFF, 0x0006000E, 0x0 } },
>  	{ .hsw = { 0x00D75FFF, 0x0005000A, 0x0 } },
>  	{ .hsw = { 0x00C30FFF, 0x00040006, 0x0 } },
> @@ -25,12 +25,12 @@ static const union intel_ddi_buf_trans_entry _hsw_ddi_translations_dp[] = {
>  	{ .hsw = { 0x80D75FFF, 0x000B0000, 0x0 } },
>  };
>  
> -static const struct intel_ddi_buf_trans hsw_ddi_translations_dp = {
> -	.entries = _hsw_ddi_translations_dp,
> -	.num_entries = ARRAY_SIZE(_hsw_ddi_translations_dp),
> +static const struct intel_ddi_buf_trans hsw_trans_dp = {
> +	.entries = _hsw_trans_dp,
> +	.num_entries = ARRAY_SIZE(_hsw_trans_dp),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _hsw_ddi_translations_fdi[] = {
> +static const union intel_ddi_buf_trans_entry _hsw_trans_fdi[] = {
>  	{ .hsw = { 0x00FFFFFF, 0x0007000E, 0x0 } },
>  	{ .hsw = { 0x00D75FFF, 0x000F000A, 0x0 } },
>  	{ .hsw = { 0x00C30FFF, 0x00060006, 0x0 } },
> @@ -42,12 +42,12 @@ static const union intel_ddi_buf_trans_entry _hsw_ddi_translations_fdi[] = {
>  	{ .hsw = { 0x00D75FFF, 0x001E0000, 0x0 } },
>  };
>  
> -static const struct intel_ddi_buf_trans hsw_ddi_translations_fdi = {
> -	.entries = _hsw_ddi_translations_fdi,
> -	.num_entries = ARRAY_SIZE(_hsw_ddi_translations_fdi),
> +static const struct intel_ddi_buf_trans hsw_trans_fdi = {
> +	.entries = _hsw_trans_fdi,
> +	.num_entries = ARRAY_SIZE(_hsw_trans_fdi),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _hsw_ddi_translations_hdmi[] = {
> +static const union intel_ddi_buf_trans_entry _hsw_trans_hdmi[] = {
>  							/* Idx	NT mV d	T mV d	db	*/
>  	{ .hsw = { 0x00FFFFFF, 0x0006000E, 0x0 } },	/* 0:	400	400	0	*/
>  	{ .hsw = { 0x00E79FFF, 0x000E000C, 0x0 } },	/* 1:	400	500	2	*/
> @@ -63,13 +63,13 @@ static const union intel_ddi_buf_trans_entry _hsw_ddi_translations_hdmi[] = {
>  	{ .hsw = { 0x80FFFFFF, 0x00030002, 0x0 } },	/* 11:	1000	1000	0	*/
>  };
>  
> -static const struct intel_ddi_buf_trans hsw_ddi_translations_hdmi = {
> -	.entries = _hsw_ddi_translations_hdmi,
> -	.num_entries = ARRAY_SIZE(_hsw_ddi_translations_hdmi),
> +static const struct intel_ddi_buf_trans hsw_trans_hdmi = {
> +	.entries = _hsw_trans_hdmi,
> +	.num_entries = ARRAY_SIZE(_hsw_trans_hdmi),
>  	.hdmi_default_entry = 6,
>  };
>  
> -static const union intel_ddi_buf_trans_entry _bdw_ddi_translations_edp[] = {
> +static const union intel_ddi_buf_trans_entry _bdw_trans_edp[] = {
>  	{ .hsw = { 0x00FFFFFF, 0x00000012, 0x0 } },
>  	{ .hsw = { 0x00EBAFFF, 0x00020011, 0x0 } },
>  	{ .hsw = { 0x00C71FFF, 0x0006000F, 0x0 } },
> @@ -81,12 +81,12 @@ static const union intel_ddi_buf_trans_entry _bdw_ddi_translations_edp[] = {
>  	{ .hsw = { 0x00DB6FFF, 0x000A000C, 0x0 } },
>  };
>  
> -static const struct intel_ddi_buf_trans bdw_ddi_translations_edp = {
> -	.entries = _bdw_ddi_translations_edp,
> -	.num_entries = ARRAY_SIZE(_bdw_ddi_translations_edp),
> +static const struct intel_ddi_buf_trans bdw_trans_edp = {
> +	.entries = _bdw_trans_edp,
> +	.num_entries = ARRAY_SIZE(_bdw_trans_edp),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _bdw_ddi_translations_dp[] = {
> +static const union intel_ddi_buf_trans_entry _bdw_trans_dp[] = {
>  	{ .hsw = { 0x00FFFFFF, 0x0007000E, 0x0 } },
>  	{ .hsw = { 0x00D75FFF, 0x000E000A, 0x0 } },
>  	{ .hsw = { 0x00BEFFFF, 0x00140006, 0x0 } },
> @@ -98,12 +98,12 @@ static const union intel_ddi_buf_trans_entry _bdw_ddi_translations_dp[] = {
>  	{ .hsw = { 0x80D75FFF, 0x001B0002, 0x0 } },
>  };
>  
> -static const struct intel_ddi_buf_trans bdw_ddi_translations_dp = {
> -	.entries = _bdw_ddi_translations_dp,
> -	.num_entries = ARRAY_SIZE(_bdw_ddi_translations_dp),
> +static const struct intel_ddi_buf_trans bdw_trans_dp = {
> +	.entries = _bdw_trans_dp,
> +	.num_entries = ARRAY_SIZE(_bdw_trans_dp),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _bdw_ddi_translations_fdi[] = {
> +static const union intel_ddi_buf_trans_entry _bdw_trans_fdi[] = {
>  	{ .hsw = { 0x00FFFFFF, 0x0001000E, 0x0 } },
>  	{ .hsw = { 0x00D75FFF, 0x0004000A, 0x0 } },
>  	{ .hsw = { 0x00C30FFF, 0x00070006, 0x0 } },
> @@ -115,12 +115,12 @@ static const union intel_ddi_buf_trans_entry _bdw_ddi_translations_fdi[] = {
>  	{ .hsw = { 0x00D75FFF, 0x000C0000, 0x0 } },
>  };
>  
> -static const struct intel_ddi_buf_trans bdw_ddi_translations_fdi = {
> -	.entries = _bdw_ddi_translations_fdi,
> -	.num_entries = ARRAY_SIZE(_bdw_ddi_translations_fdi),
> +static const struct intel_ddi_buf_trans bdw_trans_fdi = {
> +	.entries = _bdw_trans_fdi,
> +	.num_entries = ARRAY_SIZE(_bdw_trans_fdi),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _bdw_ddi_translations_hdmi[] = {
> +static const union intel_ddi_buf_trans_entry _bdw_trans_hdmi[] = {
>  							/* Idx	NT mV d	T mV df	db	*/
>  	{ .hsw = { 0x00FFFFFF, 0x0007000E, 0x0 } },	/* 0:	400	400	0	*/
>  	{ .hsw = { 0x00D75FFF, 0x000E000A, 0x0 } },	/* 1:	400	600	3.5	*/
> @@ -134,14 +134,14 @@ static const union intel_ddi_buf_trans_entry _bdw_ddi_translations_hdmi[] = {
>  	{ .hsw = { 0x80FFFFFF, 0x001B0002, 0x0 } },	/* 9:	1000	1000	0	*/
>  };
>  
> -static const struct intel_ddi_buf_trans bdw_ddi_translations_hdmi = {
> -	.entries = _bdw_ddi_translations_hdmi,
> -	.num_entries = ARRAY_SIZE(_bdw_ddi_translations_hdmi),
> +static const struct intel_ddi_buf_trans bdw_trans_hdmi = {
> +	.entries = _bdw_trans_hdmi,
> +	.num_entries = ARRAY_SIZE(_bdw_trans_hdmi),
>  	.hdmi_default_entry = 7,
>  };
>  
>  /* Skylake H and S */
> -static const union intel_ddi_buf_trans_entry _skl_ddi_translations_dp[] = {
> +static const union intel_ddi_buf_trans_entry _skl_trans_dp[] = {
>  	{ .hsw = { 0x00002016, 0x000000A0, 0x0 } },
>  	{ .hsw = { 0x00005012, 0x0000009B, 0x0 } },
>  	{ .hsw = { 0x00007011, 0x00000088, 0x0 } },
> @@ -153,13 +153,13 @@ static const union intel_ddi_buf_trans_entry _skl_ddi_translations_dp[] = {
>  	{ .hsw = { 0x80005012, 0x000000C0, 0x1 } },
>  };
>  
> -static const struct intel_ddi_buf_trans skl_ddi_translations_dp = {
> -	.entries = _skl_ddi_translations_dp,
> -	.num_entries = ARRAY_SIZE(_skl_ddi_translations_dp),
> +static const struct intel_ddi_buf_trans skl_trans_dp = {
> +	.entries = _skl_trans_dp,
> +	.num_entries = ARRAY_SIZE(_skl_trans_dp),
>  };
>  
>  /* Skylake U */
> -static const union intel_ddi_buf_trans_entry _skl_u_ddi_translations_dp[] = {
> +static const union intel_ddi_buf_trans_entry _skl_u_trans_dp[] = {
>  	{ .hsw = { 0x0000201B, 0x000000A2, 0x0 } },
>  	{ .hsw = { 0x00005012, 0x00000088, 0x0 } },
>  	{ .hsw = { 0x80007011, 0x000000CD, 0x1 } },
> @@ -171,13 +171,13 @@ static const union intel_ddi_buf_trans_entry _skl_u_ddi_translations_dp[] = {
>  	{ .hsw = { 0x80005012, 0x000000C0, 0x1 } },
>  };
>  
> -static const struct intel_ddi_buf_trans skl_u_ddi_translations_dp = {
> -	.entries = _skl_u_ddi_translations_dp,
> -	.num_entries = ARRAY_SIZE(_skl_u_ddi_translations_dp),
> +static const struct intel_ddi_buf_trans skl_u_trans_dp = {
> +	.entries = _skl_u_trans_dp,
> +	.num_entries = ARRAY_SIZE(_skl_u_trans_dp),
>  };
>  
>  /* Skylake Y */
> -static const union intel_ddi_buf_trans_entry _skl_y_ddi_translations_dp[] = {
> +static const union intel_ddi_buf_trans_entry _skl_y_trans_dp[] = {
>  	{ .hsw = { 0x00000018, 0x000000A2, 0x0 } },
>  	{ .hsw = { 0x00005012, 0x00000088, 0x0 } },
>  	{ .hsw = { 0x80007011, 0x000000CD, 0x3 } },
> @@ -189,13 +189,13 @@ static const union intel_ddi_buf_trans_entry _skl_y_ddi_translations_dp[] = {
>  	{ .hsw = { 0x80005012, 0x000000C0, 0x3 } },
>  };
>  
> -static const struct intel_ddi_buf_trans skl_y_ddi_translations_dp = {
> -	.entries = _skl_y_ddi_translations_dp,
> -	.num_entries = ARRAY_SIZE(_skl_y_ddi_translations_dp),
> +static const struct intel_ddi_buf_trans skl_y_trans_dp = {
> +	.entries = _skl_y_trans_dp,
> +	.num_entries = ARRAY_SIZE(_skl_y_trans_dp),
>  };
>  
>  /* Kabylake H and S */
> -static const union intel_ddi_buf_trans_entry _kbl_ddi_translations_dp[] = {
> +static const union intel_ddi_buf_trans_entry _kbl_trans_dp[] = {
>  	{ .hsw = { 0x00002016, 0x000000A0, 0x0 } },
>  	{ .hsw = { 0x00005012, 0x0000009B, 0x0 } },
>  	{ .hsw = { 0x00007011, 0x00000088, 0x0 } },
> @@ -207,13 +207,13 @@ static const union intel_ddi_buf_trans_entry _kbl_ddi_translations_dp[] = {
>  	{ .hsw = { 0x80005012, 0x000000C0, 0x1 } },
>  };
>  
> -static const struct intel_ddi_buf_trans kbl_ddi_translations_dp = {
> -	.entries = _kbl_ddi_translations_dp,
> -	.num_entries = ARRAY_SIZE(_kbl_ddi_translations_dp),
> +static const struct intel_ddi_buf_trans kbl_trans_dp = {
> +	.entries = _kbl_trans_dp,
> +	.num_entries = ARRAY_SIZE(_kbl_trans_dp),
>  };
>  
>  /* Kabylake U */
> -static const union intel_ddi_buf_trans_entry _kbl_u_ddi_translations_dp[] = {
> +static const union intel_ddi_buf_trans_entry _kbl_u_trans_dp[] = {
>  	{ .hsw = { 0x0000201B, 0x000000A1, 0x0 } },
>  	{ .hsw = { 0x00005012, 0x00000088, 0x0 } },
>  	{ .hsw = { 0x80007011, 0x000000CD, 0x3 } },
> @@ -225,13 +225,13 @@ static const union intel_ddi_buf_trans_entry _kbl_u_ddi_translations_dp[] = {
>  	{ .hsw = { 0x80005012, 0x000000C0, 0x3 } },
>  };
>  
> -static const struct intel_ddi_buf_trans kbl_u_ddi_translations_dp = {
> -	.entries = _kbl_u_ddi_translations_dp,
> -	.num_entries = ARRAY_SIZE(_kbl_u_ddi_translations_dp),
> +static const struct intel_ddi_buf_trans kbl_u_trans_dp = {
> +	.entries = _kbl_u_trans_dp,
> +	.num_entries = ARRAY_SIZE(_kbl_u_trans_dp),
>  };
>  
>  /* Kabylake Y */
> -static const union intel_ddi_buf_trans_entry _kbl_y_ddi_translations_dp[] = {
> +static const union intel_ddi_buf_trans_entry _kbl_y_trans_dp[] = {
>  	{ .hsw = { 0x00001017, 0x000000A1, 0x0 } },
>  	{ .hsw = { 0x00005012, 0x00000088, 0x0 } },
>  	{ .hsw = { 0x80007011, 0x000000CD, 0x3 } },
> @@ -243,16 +243,16 @@ static const union intel_ddi_buf_trans_entry _kbl_y_ddi_translations_dp[] = {
>  	{ .hsw = { 0x80005012, 0x000000C0, 0x3 } },
>  };
>  
> -static const struct intel_ddi_buf_trans kbl_y_ddi_translations_dp = {
> -	.entries = _kbl_y_ddi_translations_dp,
> -	.num_entries = ARRAY_SIZE(_kbl_y_ddi_translations_dp),
> +static const struct intel_ddi_buf_trans kbl_y_trans_dp = {
> +	.entries = _kbl_y_trans_dp,
> +	.num_entries = ARRAY_SIZE(_kbl_y_trans_dp),
>  };
>  
>  /*
>   * Skylake/Kabylake H and S
>   * eDP 1.4 low vswing translation parameters
>   */
> -static const union intel_ddi_buf_trans_entry _skl_ddi_translations_edp[] = {
> +static const union intel_ddi_buf_trans_entry _skl_trans_edp[] = {
>  	{ .hsw = { 0x00000018, 0x000000A8, 0x0 } },
>  	{ .hsw = { 0x00004013, 0x000000A9, 0x0 } },
>  	{ .hsw = { 0x00007011, 0x000000A2, 0x0 } },
> @@ -265,16 +265,16 @@ static const union intel_ddi_buf_trans_entry _skl_ddi_translations_edp[] = {
>  	{ .hsw = { 0x00000018, 0x000000DF, 0x0 } },
>  };
>  
> -static const struct intel_ddi_buf_trans skl_ddi_translations_edp = {
> -	.entries = _skl_ddi_translations_edp,
> -	.num_entries = ARRAY_SIZE(_skl_ddi_translations_edp),
> +static const struct intel_ddi_buf_trans skl_trans_edp = {
> +	.entries = _skl_trans_edp,
> +	.num_entries = ARRAY_SIZE(_skl_trans_edp),
>  };
>  
>  /*
>   * Skylake/Kabylake U
>   * eDP 1.4 low vswing translation parameters
>   */
> -static const union intel_ddi_buf_trans_entry _skl_u_ddi_translations_edp[] = {
> +static const union intel_ddi_buf_trans_entry _skl_u_trans_edp[] = {
>  	{ .hsw = { 0x00000018, 0x000000A8, 0x0 } },
>  	{ .hsw = { 0x00004013, 0x000000A9, 0x0 } },
>  	{ .hsw = { 0x00007011, 0x000000A2, 0x0 } },
> @@ -287,16 +287,16 @@ static const union intel_ddi_buf_trans_entry _skl_u_ddi_translations_edp[] = {
>  	{ .hsw = { 0x00000018, 0x000000DF, 0x0 } },
>  };
>  
> -static const struct intel_ddi_buf_trans skl_u_ddi_translations_edp = {
> -	.entries = _skl_u_ddi_translations_edp,
> -	.num_entries = ARRAY_SIZE(_skl_u_ddi_translations_edp),
> +static const struct intel_ddi_buf_trans skl_u_trans_edp = {
> +	.entries = _skl_u_trans_edp,
> +	.num_entries = ARRAY_SIZE(_skl_u_trans_edp),
>  };
>  
>  /*
>   * Skylake/Kabylake Y
>   * eDP 1.4 low vswing translation parameters
>   */
> -static const union intel_ddi_buf_trans_entry _skl_y_ddi_translations_edp[] = {
> +static const union intel_ddi_buf_trans_entry _skl_y_trans_edp[] = {
>  	{ .hsw = { 0x00000018, 0x000000A8, 0x0 } },
>  	{ .hsw = { 0x00004013, 0x000000AB, 0x0 } },
>  	{ .hsw = { 0x00007011, 0x000000A4, 0x0 } },
> @@ -309,13 +309,13 @@ static const union intel_ddi_buf_trans_entry _skl_y_ddi_translations_edp[] = {
>  	{ .hsw = { 0x00000018, 0x0000008A, 0x0 } },
>  };
>  
> -static const struct intel_ddi_buf_trans skl_y_ddi_translations_edp = {
> -	.entries = _skl_y_ddi_translations_edp,
> -	.num_entries = ARRAY_SIZE(_skl_y_ddi_translations_edp),
> +static const struct intel_ddi_buf_trans skl_y_trans_edp = {
> +	.entries = _skl_y_trans_edp,
> +	.num_entries = ARRAY_SIZE(_skl_y_trans_edp),
>  };
>  
>  /* Skylake/Kabylake U, H and S */
> -static const union intel_ddi_buf_trans_entry _skl_ddi_translations_hdmi[] = {
> +static const union intel_ddi_buf_trans_entry _skl_trans_hdmi[] = {
>  	{ .hsw = { 0x00000018, 0x000000AC, 0x0 } },
>  	{ .hsw = { 0x00005012, 0x0000009D, 0x0 } },
>  	{ .hsw = { 0x00007011, 0x00000088, 0x0 } },
> @@ -329,14 +329,14 @@ static const union intel_ddi_buf_trans_entry _skl_ddi_translations_hdmi[] = {
>  	{ .hsw = { 0x80000018, 0x000000C0, 0x1 } },
>  };
>  
> -static const struct intel_ddi_buf_trans skl_ddi_translations_hdmi = {
> -	.entries = _skl_ddi_translations_hdmi,
> -	.num_entries = ARRAY_SIZE(_skl_ddi_translations_hdmi),
> +static const struct intel_ddi_buf_trans skl_trans_hdmi = {
> +	.entries = _skl_trans_hdmi,
> +	.num_entries = ARRAY_SIZE(_skl_trans_hdmi),
>  	.hdmi_default_entry = 8,
>  };
>  
>  /* Skylake/Kabylake Y */
> -static const union intel_ddi_buf_trans_entry _skl_y_ddi_translations_hdmi[] = {
> +static const union intel_ddi_buf_trans_entry _skl_y_trans_hdmi[] = {
>  	{ .hsw = { 0x00000018, 0x000000A1, 0x0 } },
>  	{ .hsw = { 0x00005012, 0x000000DF, 0x0 } },
>  	{ .hsw = { 0x80007011, 0x000000CB, 0x3 } },
> @@ -350,13 +350,13 @@ static const union intel_ddi_buf_trans_entry _skl_y_ddi_translations_hdmi[] = {
>  	{ .hsw = { 0x80000018, 0x000000C0, 0x3 } },
>  };
>  
> -static const struct intel_ddi_buf_trans skl_y_ddi_translations_hdmi = {
> -	.entries = _skl_y_ddi_translations_hdmi,
> -	.num_entries = ARRAY_SIZE(_skl_y_ddi_translations_hdmi),
> +static const struct intel_ddi_buf_trans skl_y_trans_hdmi = {
> +	.entries = _skl_y_trans_hdmi,
> +	.num_entries = ARRAY_SIZE(_skl_y_trans_hdmi),
>  	.hdmi_default_entry = 8,
>  };
>  
> -static const union intel_ddi_buf_trans_entry _bxt_ddi_translations_dp[] = {
> +static const union intel_ddi_buf_trans_entry _bxt_trans_dp[] = {
>  						/* Idx	NT mV diff	db  */
>  	{ .bxt = { 52,  0x9A, 0, 128, } },	/* 0:	400		0   */
>  	{ .bxt = { 78,  0x9A, 0, 85,  } },	/* 1:	400		3.5 */
> @@ -370,12 +370,12 @@ static const union intel_ddi_buf_trans_entry _bxt_ddi_translations_dp[] = {
>  	{ .bxt = { 154, 0x9A, 1, 128, } },	/* 9:	1200		0   */
>  };
>  
> -static const struct intel_ddi_buf_trans bxt_ddi_translations_dp = {
> -	.entries = _bxt_ddi_translations_dp,
> -	.num_entries = ARRAY_SIZE(_bxt_ddi_translations_dp),
> +static const struct intel_ddi_buf_trans bxt_trans_dp = {
> +	.entries = _bxt_trans_dp,
> +	.num_entries = ARRAY_SIZE(_bxt_trans_dp),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _bxt_ddi_translations_edp[] = {
> +static const union intel_ddi_buf_trans_entry _bxt_trans_edp[] = {
>  					/* Idx	NT mV diff	db  */
>  	{ .bxt = { 26, 0, 0, 128, } },	/* 0:	200		0   */
>  	{ .bxt = { 38, 0, 0, 112, } },	/* 1:	200		1.5 */
> @@ -389,15 +389,15 @@ static const union intel_ddi_buf_trans_entry _bxt_ddi_translations_edp[] = {
>  	{ .bxt = { 48, 0, 0, 128, } },	/* 9:	300		0   */
>  };
>  
> -static const struct intel_ddi_buf_trans bxt_ddi_translations_edp = {
> -	.entries = _bxt_ddi_translations_edp,
> -	.num_entries = ARRAY_SIZE(_bxt_ddi_translations_edp),
> +static const struct intel_ddi_buf_trans bxt_trans_edp = {
> +	.entries = _bxt_trans_edp,
> +	.num_entries = ARRAY_SIZE(_bxt_trans_edp),
>  };
>  
>  /* BSpec has 2 recommended values - entries 0 and 8.
>   * Using the entry with higher vswing.
>   */
> -static const union intel_ddi_buf_trans_entry _bxt_ddi_translations_hdmi[] = {
> +static const union intel_ddi_buf_trans_entry _bxt_trans_hdmi[] = {
>  						/* Idx	NT mV diff	db  */
>  	{ .bxt = { 52,  0x9A, 0, 128, } },	/* 0:	400		0   */
>  	{ .bxt = { 52,  0x9A, 0, 85,  } },	/* 1:	400		3.5 */
> @@ -411,14 +411,14 @@ static const union intel_ddi_buf_trans_entry _bxt_ddi_translations_hdmi[] = {
>  	{ .bxt = { 154, 0x9A, 1, 128, } },	/* 9:	1200		0   */
>  };
>  
> -static const struct intel_ddi_buf_trans bxt_ddi_translations_hdmi = {
> -	.entries = _bxt_ddi_translations_hdmi,
> -	.num_entries = ARRAY_SIZE(_bxt_ddi_translations_hdmi),
> -	.hdmi_default_entry = ARRAY_SIZE(_bxt_ddi_translations_hdmi) - 1,
> +static const struct intel_ddi_buf_trans bxt_trans_hdmi = {
> +	.entries = _bxt_trans_hdmi,
> +	.num_entries = ARRAY_SIZE(_bxt_trans_hdmi),
> +	.hdmi_default_entry = ARRAY_SIZE(_bxt_trans_hdmi) - 1,
>  };
>  
> -/* icl_combo_phy_ddi_translations */
> -static const union intel_ddi_buf_trans_entry _icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3[] = {
> +/* icl_combo_phy_trans */
> +static const union intel_ddi_buf_trans_entry _icl_combo_phy_trans_dp_hbr2_edp_hbr3[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
> @@ -432,12 +432,12 @@ static const union intel_ddi_buf_trans_entry _icl_combo_phy_ddi_translations_dp_
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3 = {
> -	.entries = _icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3,
> -	.num_entries = ARRAY_SIZE(_icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3),
> +static const struct intel_ddi_buf_trans icl_combo_phy_trans_dp_hbr2_edp_hbr3 = {
> +	.entries = _icl_combo_phy_trans_dp_hbr2_edp_hbr3,
> +	.num_entries = ARRAY_SIZE(_icl_combo_phy_trans_dp_hbr2_edp_hbr3),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _icl_combo_phy_ddi_translations_edp_hbr2[] = {
> +static const union intel_ddi_buf_trans_entry _icl_combo_phy_trans_edp_hbr2[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0x0, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
>  	{ .icl = { 0x8, 0x7F, 0x38, 0x00, 0x07 } },	/* 200   250      1.9   */
> @@ -451,12 +451,12 @@ static const union intel_ddi_buf_trans_entry _icl_combo_phy_ddi_translations_edp
>  	{ .icl = { 0x9, 0x7F, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans icl_combo_phy_ddi_translations_edp_hbr2 = {
> -	.entries = _icl_combo_phy_ddi_translations_edp_hbr2,
> -	.num_entries = ARRAY_SIZE(_icl_combo_phy_ddi_translations_edp_hbr2),
> +static const struct intel_ddi_buf_trans icl_combo_phy_trans_edp_hbr2 = {
> +	.entries = _icl_combo_phy_trans_edp_hbr2,
> +	.num_entries = ARRAY_SIZE(_icl_combo_phy_trans_edp_hbr2),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _icl_combo_phy_ddi_translations_hdmi[] = {
> +static const union intel_ddi_buf_trans_entry _icl_combo_phy_trans_hdmi[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0xA, 0x60, 0x3F, 0x00, 0x00 } },	/* 450   450      0.0   */
>  	{ .icl = { 0xB, 0x73, 0x36, 0x00, 0x09 } },	/* 450   650      3.2   */
> @@ -467,13 +467,13 @@ static const union intel_ddi_buf_trans_entry _icl_combo_phy_ddi_translations_hdm
>  	{ .icl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   850      3.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans icl_combo_phy_ddi_translations_hdmi = {
> -	.entries = _icl_combo_phy_ddi_translations_hdmi,
> -	.num_entries = ARRAY_SIZE(_icl_combo_phy_ddi_translations_hdmi),
> -	.hdmi_default_entry = ARRAY_SIZE(_icl_combo_phy_ddi_translations_hdmi) - 1,
> +static const struct intel_ddi_buf_trans icl_combo_phy_trans_hdmi = {
> +	.entries = _icl_combo_phy_trans_hdmi,
> +	.num_entries = ARRAY_SIZE(_icl_combo_phy_trans_hdmi),
> +	.hdmi_default_entry = ARRAY_SIZE(_icl_combo_phy_trans_hdmi) - 1,
>  };
>  
> -static const union intel_ddi_buf_trans_entry _ehl_combo_phy_ddi_translations_dp[] = {
> +static const union intel_ddi_buf_trans_entry _ehl_combo_phy_trans_dp[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0xA, 0x33, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  	{ .icl = { 0xA, 0x47, 0x36, 0x00, 0x09 } },	/* 350   500      3.1   */
> @@ -487,12 +487,12 @@ static const union intel_ddi_buf_trans_entry _ehl_combo_phy_ddi_translations_dp[
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans ehl_combo_phy_ddi_translations_dp = {
> -	.entries = _ehl_combo_phy_ddi_translations_dp,
> -	.num_entries = ARRAY_SIZE(_ehl_combo_phy_ddi_translations_dp),
> +static const struct intel_ddi_buf_trans ehl_combo_phy_trans_dp = {
> +	.entries = _ehl_combo_phy_trans_dp,
> +	.num_entries = ARRAY_SIZE(_ehl_combo_phy_trans_dp),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _ehl_combo_phy_ddi_translations_edp_hbr2[] = {
> +static const union intel_ddi_buf_trans_entry _ehl_combo_phy_trans_edp_hbr2[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
>  	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   250      1.9   */
> @@ -506,12 +506,12 @@ static const union intel_ddi_buf_trans_entry _ehl_combo_phy_ddi_translations_edp
>  	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans ehl_combo_phy_ddi_translations_edp_hbr2 = {
> -	.entries = _ehl_combo_phy_ddi_translations_edp_hbr2,
> -	.num_entries = ARRAY_SIZE(_ehl_combo_phy_ddi_translations_edp_hbr2),
> +static const struct intel_ddi_buf_trans ehl_combo_phy_trans_edp_hbr2 = {
> +	.entries = _ehl_combo_phy_trans_edp_hbr2,
> +	.num_entries = ARRAY_SIZE(_ehl_combo_phy_trans_edp_hbr2),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _jsl_combo_phy_ddi_translations_edp_hbr[] = {
> +static const union intel_ddi_buf_trans_entry _jsl_combo_phy_trans_edp_hbr[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
>  	{ .icl = { 0x8, 0x7F, 0x38, 0x00, 0x07 } },	/* 200   250      1.9   */
> @@ -525,12 +525,12 @@ static const union intel_ddi_buf_trans_entry _jsl_combo_phy_ddi_translations_edp
>  	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans jsl_combo_phy_ddi_translations_edp_hbr = {
> -	.entries = _jsl_combo_phy_ddi_translations_edp_hbr,
> -	.num_entries = ARRAY_SIZE(_jsl_combo_phy_ddi_translations_edp_hbr),
> +static const struct intel_ddi_buf_trans jsl_combo_phy_trans_edp_hbr = {
> +	.entries = _jsl_combo_phy_trans_edp_hbr,
> +	.num_entries = ARRAY_SIZE(_jsl_combo_phy_trans_edp_hbr),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _jsl_combo_phy_ddi_translations_edp_hbr2[] = {
> +static const union intel_ddi_buf_trans_entry _jsl_combo_phy_trans_edp_hbr2[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
>  	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   250      1.9   */
> @@ -544,12 +544,12 @@ static const union intel_ddi_buf_trans_entry _jsl_combo_phy_ddi_translations_edp
>  	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans jsl_combo_phy_ddi_translations_edp_hbr2 = {
> -	.entries = _jsl_combo_phy_ddi_translations_edp_hbr2,
> -	.num_entries = ARRAY_SIZE(_jsl_combo_phy_ddi_translations_edp_hbr2),
> +static const struct intel_ddi_buf_trans jsl_combo_phy_trans_edp_hbr2 = {
> +	.entries = _jsl_combo_phy_trans_edp_hbr2,
> +	.num_entries = ARRAY_SIZE(_jsl_combo_phy_trans_edp_hbr2),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _dg1_combo_phy_ddi_translations_dp_rbr_hbr[] = {
> +static const union intel_ddi_buf_trans_entry _dg1_combo_phy_trans_dp_rbr_hbr[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0xA, 0x32, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  	{ .icl = { 0xA, 0x48, 0x35, 0x00, 0x0A } },	/* 350   500      3.1   */
> @@ -563,12 +563,12 @@ static const union intel_ddi_buf_trans_entry _dg1_combo_phy_ddi_translations_dp_
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans dg1_combo_phy_ddi_translations_dp_rbr_hbr = {
> -	.entries = _dg1_combo_phy_ddi_translations_dp_rbr_hbr,
> -	.num_entries = ARRAY_SIZE(_dg1_combo_phy_ddi_translations_dp_rbr_hbr),
> +static const struct intel_ddi_buf_trans dg1_combo_phy_trans_dp_rbr_hbr = {
> +	.entries = _dg1_combo_phy_trans_dp_rbr_hbr,
> +	.num_entries = ARRAY_SIZE(_dg1_combo_phy_trans_dp_rbr_hbr),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _dg1_combo_phy_ddi_translations_dp_hbr2_hbr3[] = {
> +static const union intel_ddi_buf_trans_entry _dg1_combo_phy_trans_dp_hbr2_hbr3[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0xA, 0x32, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  	{ .icl = { 0xA, 0x48, 0x35, 0x00, 0x0A } },	/* 350   500      3.1   */
> @@ -582,12 +582,12 @@ static const union intel_ddi_buf_trans_entry _dg1_combo_phy_ddi_translations_dp_
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans dg1_combo_phy_ddi_translations_dp_hbr2_hbr3 = {
> -	.entries = _dg1_combo_phy_ddi_translations_dp_hbr2_hbr3,
> -	.num_entries = ARRAY_SIZE(_dg1_combo_phy_ddi_translations_dp_hbr2_hbr3),
> +static const struct intel_ddi_buf_trans dg1_combo_phy_trans_dp_hbr2_hbr3 = {
> +	.entries = _dg1_combo_phy_trans_dp_hbr2_hbr3,
> +	.num_entries = ARRAY_SIZE(_dg1_combo_phy_trans_dp_hbr2_hbr3),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _icl_mg_phy_ddi_translations_rbr_hbr[] = {
> +static const union intel_ddi_buf_trans_entry _icl_mg_phy_trans_rbr_hbr[] = {
>  					/* Voltage swing  pre-emphasis */
>  	{ .mg = { 0x18, 0x00, 0x00 } },	/* 0              0   */
>  	{ .mg = { 0x1D, 0x00, 0x05 } },	/* 0              1   */
> @@ -601,12 +601,12 @@ static const union intel_ddi_buf_trans_entry _icl_mg_phy_ddi_translations_rbr_hb
>  	{ .mg = { 0x3F, 0x00, 0x00 } },	/* 3              0   */
>  };
>  
> -static const struct intel_ddi_buf_trans icl_mg_phy_ddi_translations_rbr_hbr = {
> -	.entries = _icl_mg_phy_ddi_translations_rbr_hbr,
> -	.num_entries = ARRAY_SIZE(_icl_mg_phy_ddi_translations_rbr_hbr),
> +static const struct intel_ddi_buf_trans icl_mg_phy_trans_rbr_hbr = {
> +	.entries = _icl_mg_phy_trans_rbr_hbr,
> +	.num_entries = ARRAY_SIZE(_icl_mg_phy_trans_rbr_hbr),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _icl_mg_phy_ddi_translations_hbr2_hbr3[] = {
> +static const union intel_ddi_buf_trans_entry _icl_mg_phy_trans_hbr2_hbr3[] = {
>  					/* Voltage swing  pre-emphasis */
>  	{ .mg = { 0x18, 0x00, 0x00 } },	/* 0              0   */
>  	{ .mg = { 0x1D, 0x00, 0x05 } },	/* 0              1   */
> @@ -620,12 +620,12 @@ static const union intel_ddi_buf_trans_entry _icl_mg_phy_ddi_translations_hbr2_h
>  	{ .mg = { 0x3F, 0x00, 0x00 } },	/* 3              0   */
>  };
>  
> -static const struct intel_ddi_buf_trans icl_mg_phy_ddi_translations_hbr2_hbr3 = {
> -	.entries = _icl_mg_phy_ddi_translations_hbr2_hbr3,
> -	.num_entries = ARRAY_SIZE(_icl_mg_phy_ddi_translations_hbr2_hbr3),
> +static const struct intel_ddi_buf_trans icl_mg_phy_trans_hbr2_hbr3 = {
> +	.entries = _icl_mg_phy_trans_hbr2_hbr3,
> +	.num_entries = ARRAY_SIZE(_icl_mg_phy_trans_hbr2_hbr3),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _icl_mg_phy_ddi_translations_hdmi[] = {
> +static const union intel_ddi_buf_trans_entry _icl_mg_phy_trans_hdmi[] = {
>  					/* HDMI Preset	VS	Pre-emph */
>  	{ .mg = { 0x1A, 0x0, 0x0 } },	/* 1		400mV	0dB */
>  	{ .mg = { 0x20, 0x0, 0x0 } },	/* 2		500mV	0dB */
> @@ -639,13 +639,13 @@ static const union intel_ddi_buf_trans_entry _icl_mg_phy_ddi_translations_hdmi[]
>  	{ .mg = { 0x36, 0x0, 0x9 } },	/* 10		Full	-3 dB */
>  };
>  
> -static const struct intel_ddi_buf_trans icl_mg_phy_ddi_translations_hdmi = {
> -	.entries = _icl_mg_phy_ddi_translations_hdmi,
> -	.num_entries = ARRAY_SIZE(_icl_mg_phy_ddi_translations_hdmi),
> -	.hdmi_default_entry = ARRAY_SIZE(_icl_mg_phy_ddi_translations_hdmi) - 1,
> +static const struct intel_ddi_buf_trans icl_mg_phy_trans_hdmi = {
> +	.entries = _icl_mg_phy_trans_hdmi,
> +	.num_entries = ARRAY_SIZE(_icl_mg_phy_trans_hdmi),
> +	.hdmi_default_entry = ARRAY_SIZE(_icl_mg_phy_trans_hdmi) - 1,
>  };
>  
> -static const union intel_ddi_buf_trans_entry _tgl_dkl_phy_ddi_translations_dp_hbr[] = {
> +static const union intel_ddi_buf_trans_entry _tgl_dkl_phy_trans_dp_hbr[] = {
>  					/* VS	pre-emp	Non-trans mV	Pre-emph dB */
>  	{ .dkl = { 0x7, 0x0, 0x00 } },	/* 0	0	400mV		0 dB */
>  	{ .dkl = { 0x5, 0x0, 0x05 } },	/* 0	1	400mV		3.5 dB */
> @@ -659,12 +659,12 @@ static const union intel_ddi_buf_trans_entry _tgl_dkl_phy_ddi_translations_dp_hb
>  	{ .dkl = { 0x0, 0x0, 0x00 } },	/* 3	0	1200mV		0 dB HDMI default */
>  };
>  
> -static const struct intel_ddi_buf_trans tgl_dkl_phy_ddi_translations_dp_hbr = {
> -	.entries = _tgl_dkl_phy_ddi_translations_dp_hbr,
> -	.num_entries = ARRAY_SIZE(_tgl_dkl_phy_ddi_translations_dp_hbr),
> +static const struct intel_ddi_buf_trans tgl_dkl_phy_trans_dp_hbr = {
> +	.entries = _tgl_dkl_phy_trans_dp_hbr,
> +	.num_entries = ARRAY_SIZE(_tgl_dkl_phy_trans_dp_hbr),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _tgl_dkl_phy_ddi_translations_dp_hbr2[] = {
> +static const union intel_ddi_buf_trans_entry _tgl_dkl_phy_trans_dp_hbr2[] = {
>  					/* VS	pre-emp	Non-trans mV	Pre-emph dB */
>  	{ .dkl = { 0x7, 0x0, 0x00 } },	/* 0	0	400mV		0 dB */
>  	{ .dkl = { 0x5, 0x0, 0x05 } },	/* 0	1	400mV		3.5 dB */
> @@ -678,12 +678,12 @@ static const union intel_ddi_buf_trans_entry _tgl_dkl_phy_ddi_translations_dp_hb
>  	{ .dkl = { 0x0, 0x0, 0x00 } },	/* 3	0	1200mV		0 dB HDMI default */
>  };
>  
> -static const struct intel_ddi_buf_trans tgl_dkl_phy_ddi_translations_dp_hbr2 = {
> -	.entries = _tgl_dkl_phy_ddi_translations_dp_hbr2,
> -	.num_entries = ARRAY_SIZE(_tgl_dkl_phy_ddi_translations_dp_hbr2),
> +static const struct intel_ddi_buf_trans tgl_dkl_phy_trans_dp_hbr2 = {
> +	.entries = _tgl_dkl_phy_trans_dp_hbr2,
> +	.num_entries = ARRAY_SIZE(_tgl_dkl_phy_trans_dp_hbr2),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _tgl_dkl_phy_ddi_translations_hdmi[] = {
> +static const union intel_ddi_buf_trans_entry _tgl_dkl_phy_trans_hdmi[] = {
>  					/* HDMI Preset	VS	Pre-emph */
>  	{ .dkl = { 0x7, 0x0, 0x0 } },	/* 1		400mV	0dB */
>  	{ .dkl = { 0x6, 0x0, 0x0 } },	/* 2		500mV	0dB */
> @@ -697,13 +697,13 @@ static const union intel_ddi_buf_trans_entry _tgl_dkl_phy_ddi_translations_hdmi[
>  	{ .dkl = { 0x0, 0x0, 0xA } },	/* 10		Full	-3 dB */
>  };
>  
> -static const struct intel_ddi_buf_trans tgl_dkl_phy_ddi_translations_hdmi = {
> -	.entries = _tgl_dkl_phy_ddi_translations_hdmi,
> -	.num_entries = ARRAY_SIZE(_tgl_dkl_phy_ddi_translations_hdmi),
> -	.hdmi_default_entry = ARRAY_SIZE(_tgl_dkl_phy_ddi_translations_hdmi) - 1,
> +static const struct intel_ddi_buf_trans tgl_dkl_phy_trans_hdmi = {
> +	.entries = _tgl_dkl_phy_trans_hdmi,
> +	.num_entries = ARRAY_SIZE(_tgl_dkl_phy_trans_hdmi),
> +	.hdmi_default_entry = ARRAY_SIZE(_tgl_dkl_phy_trans_hdmi) - 1,
>  };
>  
> -static const union intel_ddi_buf_trans_entry _tgl_combo_phy_ddi_translations_dp_hbr[] = {
> +static const union intel_ddi_buf_trans_entry _tgl_combo_phy_trans_dp_hbr[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0xA, 0x32, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
> @@ -717,12 +717,12 @@ static const union intel_ddi_buf_trans_entry _tgl_combo_phy_ddi_translations_dp_
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans tgl_combo_phy_ddi_translations_dp_hbr = {
> -	.entries = _tgl_combo_phy_ddi_translations_dp_hbr,
> -	.num_entries = ARRAY_SIZE(_tgl_combo_phy_ddi_translations_dp_hbr),
> +static const struct intel_ddi_buf_trans tgl_combo_phy_trans_dp_hbr = {
> +	.entries = _tgl_combo_phy_trans_dp_hbr,
> +	.num_entries = ARRAY_SIZE(_tgl_combo_phy_trans_dp_hbr),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _tgl_combo_phy_ddi_translations_dp_hbr2[] = {
> +static const union intel_ddi_buf_trans_entry _tgl_combo_phy_trans_dp_hbr2[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
> @@ -736,12 +736,12 @@ static const union intel_ddi_buf_trans_entry _tgl_combo_phy_ddi_translations_dp_
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans tgl_combo_phy_ddi_translations_dp_hbr2 = {
> -	.entries = _tgl_combo_phy_ddi_translations_dp_hbr2,
> -	.num_entries = ARRAY_SIZE(_tgl_combo_phy_ddi_translations_dp_hbr2),
> +static const struct intel_ddi_buf_trans tgl_combo_phy_trans_dp_hbr2 = {
> +	.entries = _tgl_combo_phy_trans_dp_hbr2,
> +	.num_entries = ARRAY_SIZE(_tgl_combo_phy_trans_dp_hbr2),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _tgl_uy_combo_phy_ddi_translations_dp_hbr2[] = {
> +static const union intel_ddi_buf_trans_entry _tgl_uy_combo_phy_trans_dp_hbr2[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  	{ .icl = { 0xA, 0x4F, 0x36, 0x00, 0x09 } },	/* 350   500      3.1   */
> @@ -755,16 +755,16 @@ static const union intel_ddi_buf_trans_entry _tgl_uy_combo_phy_ddi_translations_
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans tgl_uy_combo_phy_ddi_translations_dp_hbr2 = {
> -	.entries = _tgl_uy_combo_phy_ddi_translations_dp_hbr2,
> -	.num_entries = ARRAY_SIZE(_tgl_uy_combo_phy_ddi_translations_dp_hbr2),
> +static const struct intel_ddi_buf_trans tgl_uy_combo_phy_trans_dp_hbr2 = {
> +	.entries = _tgl_uy_combo_phy_trans_dp_hbr2,
> +	.num_entries = ARRAY_SIZE(_tgl_uy_combo_phy_trans_dp_hbr2),
>  };
>  
>  /*
>   * Cloned the HOBL entry to comply with the voltage and pre-emphasis entries
>   * that DisplayPort specification requires
>   */
> -static const union intel_ddi_buf_trans_entry _tgl_combo_phy_ddi_translations_edp_hbr2_hobl[] = {
> +static const union intel_ddi_buf_trans_entry _tgl_combo_phy_trans_edp_hbr2_hobl[] = {
>  							/* VS	pre-emp	*/
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 0	0	*/
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 0	1	*/
> @@ -777,12 +777,12 @@ static const union intel_ddi_buf_trans_entry _tgl_combo_phy_ddi_translations_edp
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 2	1	*/
>  };
>  
> -static const struct intel_ddi_buf_trans tgl_combo_phy_ddi_translations_edp_hbr2_hobl = {
> -	.entries = _tgl_combo_phy_ddi_translations_edp_hbr2_hobl,
> -	.num_entries = ARRAY_SIZE(_tgl_combo_phy_ddi_translations_edp_hbr2_hobl),
> +static const struct intel_ddi_buf_trans tgl_combo_phy_trans_edp_hbr2_hobl = {
> +	.entries = _tgl_combo_phy_trans_edp_hbr2_hobl,
> +	.num_entries = ARRAY_SIZE(_tgl_combo_phy_trans_edp_hbr2_hobl),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _rkl_combo_phy_ddi_translations_dp_hbr[] = {
> +static const union intel_ddi_buf_trans_entry _rkl_combo_phy_trans_dp_hbr[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0xA, 0x2F, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
> @@ -796,12 +796,12 @@ static const union intel_ddi_buf_trans_entry _rkl_combo_phy_ddi_translations_dp_
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans rkl_combo_phy_ddi_translations_dp_hbr = {
> -	.entries = _rkl_combo_phy_ddi_translations_dp_hbr,
> -	.num_entries = ARRAY_SIZE(_rkl_combo_phy_ddi_translations_dp_hbr),
> +static const struct intel_ddi_buf_trans rkl_combo_phy_trans_dp_hbr = {
> +	.entries = _rkl_combo_phy_trans_dp_hbr,
> +	.num_entries = ARRAY_SIZE(_rkl_combo_phy_trans_dp_hbr),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _rkl_combo_phy_ddi_translations_dp_hbr2_hbr3[] = {
> +static const union intel_ddi_buf_trans_entry _rkl_combo_phy_trans_dp_hbr2_hbr3[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  	{ .icl = { 0xA, 0x50, 0x38, 0x00, 0x07 } },	/* 350   500      3.1   */
> @@ -815,12 +815,12 @@ static const union intel_ddi_buf_trans_entry _rkl_combo_phy_ddi_translations_dp_
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans rkl_combo_phy_ddi_translations_dp_hbr2_hbr3 = {
> -	.entries = _rkl_combo_phy_ddi_translations_dp_hbr2_hbr3,
> -	.num_entries = ARRAY_SIZE(_rkl_combo_phy_ddi_translations_dp_hbr2_hbr3),
> +static const struct intel_ddi_buf_trans rkl_combo_phy_trans_dp_hbr2_hbr3 = {
> +	.entries = _rkl_combo_phy_trans_dp_hbr2_hbr3,
> +	.num_entries = ARRAY_SIZE(_rkl_combo_phy_trans_dp_hbr2_hbr3),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _adls_combo_phy_ddi_translations_dp_hbr2_hbr3[] = {
> +static const union intel_ddi_buf_trans_entry _adls_combo_phy_trans_dp_hbr2_hbr3[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
> @@ -834,12 +834,12 @@ static const union intel_ddi_buf_trans_entry _adls_combo_phy_ddi_translations_dp
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans adls_combo_phy_ddi_translations_dp_hbr2_hbr3 = {
> -	.entries = _adls_combo_phy_ddi_translations_dp_hbr2_hbr3,
> -	.num_entries = ARRAY_SIZE(_adls_combo_phy_ddi_translations_dp_hbr2_hbr3),
> +static const struct intel_ddi_buf_trans adls_combo_phy_trans_dp_hbr2_hbr3 = {
> +	.entries = _adls_combo_phy_trans_dp_hbr2_hbr3,
> +	.num_entries = ARRAY_SIZE(_adls_combo_phy_trans_dp_hbr2_hbr3),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _adls_combo_phy_ddi_translations_edp_hbr2[] = {
> +static const union intel_ddi_buf_trans_entry _adls_combo_phy_trans_edp_hbr2[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0x9, 0x73, 0x3D, 0x00, 0x02 } },	/* 200   200      0.0   */
>  	{ .icl = { 0x9, 0x7A, 0x3C, 0x00, 0x03 } },	/* 200   250      1.9   */
> @@ -853,12 +853,12 @@ static const union intel_ddi_buf_trans_entry _adls_combo_phy_ddi_translations_ed
>  	{ .icl = { 0x4, 0x6C, 0x3A, 0x00, 0x05 } },	/* 350   350      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans adls_combo_phy_ddi_translations_edp_hbr2 = {
> -	.entries = _adls_combo_phy_ddi_translations_edp_hbr2,
> -	.num_entries = ARRAY_SIZE(_adls_combo_phy_ddi_translations_edp_hbr2),
> +static const struct intel_ddi_buf_trans adls_combo_phy_trans_edp_hbr2 = {
> +	.entries = _adls_combo_phy_trans_edp_hbr2,
> +	.num_entries = ARRAY_SIZE(_adls_combo_phy_trans_edp_hbr2),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _adls_combo_phy_ddi_translations_edp_hbr3[] = {
> +static const union intel_ddi_buf_trans_entry _adls_combo_phy_trans_edp_hbr3[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
> @@ -872,12 +872,12 @@ static const union intel_ddi_buf_trans_entry _adls_combo_phy_ddi_translations_ed
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans adls_combo_phy_ddi_translations_edp_hbr3 = {
> -	.entries = _adls_combo_phy_ddi_translations_edp_hbr3,
> -	.num_entries = ARRAY_SIZE(_adls_combo_phy_ddi_translations_edp_hbr3),
> +static const struct intel_ddi_buf_trans adls_combo_phy_trans_edp_hbr3 = {
> +	.entries = _adls_combo_phy_trans_edp_hbr3,
> +	.num_entries = ARRAY_SIZE(_adls_combo_phy_trans_edp_hbr3),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _adlp_combo_phy_ddi_translations_hdmi[] = {
> +static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_hdmi[] = {
>  							/* NT mV Trans mV    db   */
>  	{ .icl = { 0x6, 0x60, 0x3F, 0x00, 0x00 } },	/*  400    400      0.0 */
>  	{ .icl = { 0x6, 0x68, 0x3F, 0x00, 0x00 } },	/*  500    500      0.0 */
> @@ -891,13 +891,13 @@ static const union intel_ddi_buf_trans_entry _adlp_combo_phy_ddi_translations_hd
>  	{ .icl = { 0xB, 0x7F, 0x33, 0x00, 0x0C } },	/* Full    Red     -3.0 */
>  };
>  
> -static const struct intel_ddi_buf_trans adlp_combo_phy_ddi_translations_hdmi = {
> -	.entries = _adlp_combo_phy_ddi_translations_hdmi,
> -	.num_entries = ARRAY_SIZE(_adlp_combo_phy_ddi_translations_hdmi),
> -	.hdmi_default_entry = ARRAY_SIZE(_adlp_combo_phy_ddi_translations_hdmi) - 1,
> +static const struct intel_ddi_buf_trans adlp_combo_phy_trans_hdmi = {
> +	.entries = _adlp_combo_phy_trans_hdmi,
> +	.num_entries = ARRAY_SIZE(_adlp_combo_phy_trans_hdmi),
> +	.hdmi_default_entry = ARRAY_SIZE(_adlp_combo_phy_trans_hdmi) - 1,
>  };
>  
> -static const union intel_ddi_buf_trans_entry _adlp_combo_phy_ddi_translations_dp_hbr[] = {
> +static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
> @@ -911,12 +911,12 @@ static const union intel_ddi_buf_trans_entry _adlp_combo_phy_ddi_translations_dp
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans adlp_combo_phy_ddi_translations_dp_hbr = {
> -	.entries = _adlp_combo_phy_ddi_translations_dp_hbr,
> -	.num_entries = ARRAY_SIZE(_adlp_combo_phy_ddi_translations_dp_hbr),
> +static const struct intel_ddi_buf_trans adlp_combo_phy_trans_dp_hbr = {
> +	.entries = _adlp_combo_phy_trans_dp_hbr,
> +	.num_entries = ARRAY_SIZE(_adlp_combo_phy_trans_dp_hbr),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _adlp_combo_phy_ddi_translations_dp_hbr2_hbr3[] = {
> +static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr2_hbr3[] = {
>  							/* NT mV Trans mV db    */
>  	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
>  	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
> @@ -930,22 +930,22 @@ static const union intel_ddi_buf_trans_entry _adlp_combo_phy_ddi_translations_dp
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };
>  
> -static const struct intel_ddi_buf_trans adlp_combo_phy_ddi_translations_dp_hbr2_hbr3 = {
> -	.entries = _adlp_combo_phy_ddi_translations_dp_hbr2_hbr3,
> -	.num_entries = ARRAY_SIZE(_adlp_combo_phy_ddi_translations_dp_hbr2_hbr3),
> +static const struct intel_ddi_buf_trans adlp_combo_phy_trans_dp_hbr2_hbr3 = {
> +	.entries = _adlp_combo_phy_trans_dp_hbr2_hbr3,
> +	.num_entries = ARRAY_SIZE(_adlp_combo_phy_trans_dp_hbr2_hbr3),
>  };
>  
> -static const struct intel_ddi_buf_trans adlp_combo_phy_ddi_translations_edp_hbr3 = {
> -	.entries = _icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3,
> -	.num_entries = ARRAY_SIZE(_icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3),
> +static const struct intel_ddi_buf_trans adlp_combo_phy_trans_edp_hbr3 = {
> +	.entries = _icl_combo_phy_trans_dp_hbr2_edp_hbr3,
> +	.num_entries = ARRAY_SIZE(_icl_combo_phy_trans_dp_hbr2_edp_hbr3),
>  };
>  
> -static const struct intel_ddi_buf_trans adlp_combo_phy_ddi_translations_edp_up_to_hbr2 = {
> -	.entries = _icl_combo_phy_ddi_translations_edp_hbr2,
> -	.num_entries = ARRAY_SIZE(_icl_combo_phy_ddi_translations_edp_hbr2),
> +static const struct intel_ddi_buf_trans adlp_combo_phy_trans_edp_up_to_hbr2 = {
> +	.entries = _icl_combo_phy_trans_edp_hbr2,
> +	.num_entries = ARRAY_SIZE(_icl_combo_phy_trans_edp_hbr2),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _adlp_dkl_phy_ddi_translations_dp_hbr[] = {
> +static const union intel_ddi_buf_trans_entry _adlp_dkl_phy_trans_dp_hbr[] = {
>  					/* VS	pre-emp	Non-trans mV	Pre-emph dB */
>  	{ .dkl = { 0x7, 0x0, 0x01 } },	/* 0	0	400mV		0 dB */
>  	{ .dkl = { 0x5, 0x0, 0x06 } },	/* 0	1	400mV		3.5 dB */
> @@ -959,12 +959,12 @@ static const union intel_ddi_buf_trans_entry _adlp_dkl_phy_ddi_translations_dp_h
>  	{ .dkl = { 0x0, 0x0, 0x00 } },	/* 3	0	1200mV		0 dB */
>  };
>  
> -static const struct intel_ddi_buf_trans adlp_dkl_phy_ddi_translations_dp_hbr = {
> -	.entries = _adlp_dkl_phy_ddi_translations_dp_hbr,
> -	.num_entries = ARRAY_SIZE(_adlp_dkl_phy_ddi_translations_dp_hbr),
> +static const struct intel_ddi_buf_trans adlp_dkl_phy_trans_dp_hbr = {
> +	.entries = _adlp_dkl_phy_trans_dp_hbr,
> +	.num_entries = ARRAY_SIZE(_adlp_dkl_phy_trans_dp_hbr),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _adlp_dkl_phy_ddi_translations_dp_hbr2_hbr3[] = {
> +static const union intel_ddi_buf_trans_entry _adlp_dkl_phy_trans_dp_hbr2_hbr3[] = {
>  					/* VS	pre-emp	Non-trans mV	Pre-emph dB */
>  	{ .dkl = { 0x7, 0x0, 0x00 } },	/* 0	0	400mV		0 dB */
>  	{ .dkl = { 0x5, 0x0, 0x04 } },	/* 0	1	400mV		3.5 dB */
> @@ -978,12 +978,12 @@ static const union intel_ddi_buf_trans_entry _adlp_dkl_phy_ddi_translations_dp_h
>  	{ .dkl = { 0x0, 0x0, 0x00 } },	/* 3	0	1200mV		0 dB */
>  };
>  
> -static const struct intel_ddi_buf_trans adlp_dkl_phy_ddi_translations_dp_hbr2_hbr3 = {
> -	.entries = _adlp_dkl_phy_ddi_translations_dp_hbr2_hbr3,
> -	.num_entries = ARRAY_SIZE(_adlp_dkl_phy_ddi_translations_dp_hbr2_hbr3),
> +static const struct intel_ddi_buf_trans adlp_dkl_phy_trans_dp_hbr2_hbr3 = {
> +	.entries = _adlp_dkl_phy_trans_dp_hbr2_hbr3,
> +	.num_entries = ARRAY_SIZE(_adlp_dkl_phy_trans_dp_hbr2_hbr3),
>  };
>  
> -static const union intel_ddi_buf_trans_entry _dg2_snps_translations[] = {
> +static const union intel_ddi_buf_trans_entry _dg2_snps_trans[] = {
>  	{ .snps = { 26, 0, 0 } },	/* VS 0, pre-emph 0 */
>  	{ .snps = { 33, 0, 6 } },	/* VS 0, pre-emph 1 */
>  	{ .snps = { 38, 0, 12 } },	/* VS 0, pre-emph 2 */
> @@ -996,13 +996,13 @@ static const union intel_ddi_buf_trans_entry _dg2_snps_translations[] = {
>  	{ .snps = { 62, 0, 0 } },	/* VS 3, pre-emph 0 */
>  };
>  
> -static const struct intel_ddi_buf_trans dg2_snps_translations = {
> -	.entries = _dg2_snps_translations,
> -	.num_entries = ARRAY_SIZE(_dg2_snps_translations),
> -	.hdmi_default_entry = ARRAY_SIZE(_dg2_snps_translations) - 1,
> +static const struct intel_ddi_buf_trans dg2_snps_trans = {
> +	.entries = _dg2_snps_trans,
> +	.num_entries = ARRAY_SIZE(_dg2_snps_trans),
> +	.hdmi_default_entry = ARRAY_SIZE(_dg2_snps_trans) - 1,
>  };
>  
> -static const union intel_ddi_buf_trans_entry _dg2_snps_translations_uhbr[] = {
> +static const union intel_ddi_buf_trans_entry _dg2_snps_trans_uhbr[] = {
>  	{ .snps = { 62, 0, 0 } },	/* preset 0 */
>  	{ .snps = { 56, 0, 6 } },	/* preset 1 */
>  	{ .snps = { 51, 0, 11 } },	/* preset 2 */
> @@ -1021,21 +1021,21 @@ static const union intel_ddi_buf_trans_entry _dg2_snps_translations_uhbr[] = {
>  	{ .snps = { 56, 3, 3 } },	/* preset 15 */
>  };
>  
> -static const struct intel_ddi_buf_trans dg2_snps_translations_uhbr = {
> -	.entries = _dg2_snps_translations_uhbr,
> -	.num_entries = ARRAY_SIZE(_dg2_snps_translations_uhbr),
> +static const struct intel_ddi_buf_trans dg2_snps_trans_uhbr = {
> +	.entries = _dg2_snps_trans_uhbr,
> +	.num_entries = ARRAY_SIZE(_dg2_snps_trans_uhbr),
>  };
>  
>  bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
>  {
> -	return table == &tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
> +	return table == &tgl_combo_phy_trans_edp_hbr2_hobl;
>  }
>  
>  static const struct intel_ddi_buf_trans *
> -intel_get_buf_trans(const struct intel_ddi_buf_trans *ddi_translations, int *num_entries)
> +intel_get_buf_trans(const struct intel_ddi_buf_trans *trans, int *num_entries)
>  {
> -	*num_entries = ddi_translations->num_entries;
> -	return ddi_translations;
> +	*num_entries = trans->num_entries;
> +	return trans;
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1044,11 +1044,11 @@ hsw_get_buf_trans(struct intel_encoder *encoder,
>  		  int *n_entries)
>  {
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG))
> -		return intel_get_buf_trans(&hsw_ddi_translations_fdi, n_entries);
> +		return intel_get_buf_trans(&hsw_trans_fdi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&hsw_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&hsw_trans_hdmi, n_entries);
>  	else
> -		return intel_get_buf_trans(&hsw_ddi_translations_dp, n_entries);
> +		return intel_get_buf_trans(&hsw_trans_dp, n_entries);
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1059,14 +1059,14 @@ bdw_get_buf_trans(struct intel_encoder *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG))
> -		return intel_get_buf_trans(&bdw_ddi_translations_fdi, n_entries);
> +		return intel_get_buf_trans(&bdw_trans_fdi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&bdw_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&bdw_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
>  		 i915->vbt.edp.low_vswing)
> -		return intel_get_buf_trans(&bdw_ddi_translations_edp, n_entries);
> +		return intel_get_buf_trans(&bdw_trans_edp, n_entries);
>  	else
> -		return intel_get_buf_trans(&bdw_ddi_translations_dp, n_entries);
> +		return intel_get_buf_trans(&bdw_trans_dp, n_entries);
>  }
>  
>  static int skl_buf_trans_num_entries(enum port port, int n_entries)
> @@ -1080,12 +1080,12 @@ static int skl_buf_trans_num_entries(enum port port, int n_entries)
>  
>  static const struct intel_ddi_buf_trans *
>  _skl_get_buf_trans_dp(struct intel_encoder *encoder,
> -		      const struct intel_ddi_buf_trans *ddi_translations,
> +		      const struct intel_ddi_buf_trans *trans,
>  		      int *n_entries)
>  {
> -	ddi_translations = intel_get_buf_trans(ddi_translations, n_entries);
> +	trans = intel_get_buf_trans(trans, n_entries);
>  	*n_entries = skl_buf_trans_num_entries(encoder->port, *n_entries);
> -	return ddi_translations;
> +	return trans;
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1096,12 +1096,12 @@ skl_y_get_buf_trans(struct intel_encoder *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&skl_y_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&skl_y_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
>  		 i915->vbt.edp.low_vswing)
> -		return _skl_get_buf_trans_dp(encoder, &skl_y_ddi_translations_edp, n_entries);
> +		return _skl_get_buf_trans_dp(encoder, &skl_y_trans_edp, n_entries);
>  	else
> -		return _skl_get_buf_trans_dp(encoder, &skl_y_ddi_translations_dp, n_entries);
> +		return _skl_get_buf_trans_dp(encoder, &skl_y_trans_dp, n_entries);
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1112,12 +1112,12 @@ skl_u_get_buf_trans(struct intel_encoder *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&skl_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&skl_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
>  		 i915->vbt.edp.low_vswing)
> -		return _skl_get_buf_trans_dp(encoder, &skl_u_ddi_translations_edp, n_entries);
> +		return _skl_get_buf_trans_dp(encoder, &skl_u_trans_edp, n_entries);
>  	else
> -		return _skl_get_buf_trans_dp(encoder, &skl_u_ddi_translations_dp, n_entries);
> +		return _skl_get_buf_trans_dp(encoder, &skl_u_trans_dp, n_entries);
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1128,12 +1128,12 @@ skl_get_buf_trans(struct intel_encoder *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&skl_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&skl_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
>  		 i915->vbt.edp.low_vswing)
> -		return _skl_get_buf_trans_dp(encoder, &skl_ddi_translations_edp, n_entries);
> +		return _skl_get_buf_trans_dp(encoder, &skl_trans_edp, n_entries);
>  	else
> -		return _skl_get_buf_trans_dp(encoder, &skl_ddi_translations_dp, n_entries);
> +		return _skl_get_buf_trans_dp(encoder, &skl_trans_dp, n_entries);
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1144,12 +1144,12 @@ kbl_y_get_buf_trans(struct intel_encoder *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&skl_y_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&skl_y_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
>  		 i915->vbt.edp.low_vswing)
> -		return _skl_get_buf_trans_dp(encoder, &skl_y_ddi_translations_edp, n_entries);
> +		return _skl_get_buf_trans_dp(encoder, &skl_y_trans_edp, n_entries);
>  	else
> -		return _skl_get_buf_trans_dp(encoder, &kbl_y_ddi_translations_dp, n_entries);
> +		return _skl_get_buf_trans_dp(encoder, &kbl_y_trans_dp, n_entries);
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1160,12 +1160,12 @@ kbl_u_get_buf_trans(struct intel_encoder *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&skl_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&skl_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
>  		 i915->vbt.edp.low_vswing)
> -		return _skl_get_buf_trans_dp(encoder, &skl_u_ddi_translations_edp, n_entries);
> +		return _skl_get_buf_trans_dp(encoder, &skl_u_trans_edp, n_entries);
>  	else
> -		return _skl_get_buf_trans_dp(encoder, &kbl_u_ddi_translations_dp, n_entries);
> +		return _skl_get_buf_trans_dp(encoder, &kbl_u_trans_dp, n_entries);
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1176,12 +1176,12 @@ kbl_get_buf_trans(struct intel_encoder *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&skl_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&skl_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
>  		 i915->vbt.edp.low_vswing)
> -		return _skl_get_buf_trans_dp(encoder, &skl_ddi_translations_edp, n_entries);
> +		return _skl_get_buf_trans_dp(encoder, &skl_trans_edp, n_entries);
>  	else
> -		return _skl_get_buf_trans_dp(encoder, &kbl_ddi_translations_dp, n_entries);
> +		return _skl_get_buf_trans_dp(encoder, &kbl_trans_dp, n_entries);
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1192,12 +1192,12 @@ bxt_get_buf_trans(struct intel_encoder *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&bxt_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&bxt_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
>  		 i915->vbt.edp.low_vswing)
> -		return intel_get_buf_trans(&bxt_ddi_translations_edp, n_entries);
> +		return intel_get_buf_trans(&bxt_trans_edp, n_entries);
>  	else
> -		return intel_get_buf_trans(&bxt_ddi_translations_dp, n_entries);
> +		return intel_get_buf_trans(&bxt_trans_dp, n_entries);
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1205,7 +1205,7 @@ icl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
>  			   const struct intel_crtc_state *crtc_state,
>  			   int *n_entries)
>  {
> -	return intel_get_buf_trans(&icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3,
> +	return intel_get_buf_trans(&icl_combo_phy_trans_dp_hbr2_edp_hbr3,
>  				   n_entries);
>  }
>  
> @@ -1217,10 +1217,10 @@ icl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  
>  	if (crtc_state->port_clock > 540000) {
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3,
> +		return intel_get_buf_trans(&icl_combo_phy_trans_dp_hbr2_edp_hbr3,
>  					   n_entries);
>  	} else if (dev_priv->vbt.edp.low_vswing) {
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_edp_hbr2,
> +		return intel_get_buf_trans(&icl_combo_phy_trans_edp_hbr2,
>  					   n_entries);
>  	}
>  
> @@ -1233,7 +1233,7 @@ icl_get_combo_buf_trans(struct intel_encoder *encoder,
>  			int *n_entries)
>  {
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&icl_combo_phy_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  		return icl_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
>  	else
> @@ -1246,10 +1246,10 @@ icl_get_mg_buf_trans_dp(struct intel_encoder *encoder,
>  			int *n_entries)
>  {
>  	if (crtc_state->port_clock > 270000) {
> -		return intel_get_buf_trans(&icl_mg_phy_ddi_translations_hbr2_hbr3,
> +		return intel_get_buf_trans(&icl_mg_phy_trans_hbr2_hbr3,
>  					   n_entries);
>  	} else {
> -		return intel_get_buf_trans(&icl_mg_phy_ddi_translations_rbr_hbr,
> +		return intel_get_buf_trans(&icl_mg_phy_trans_rbr_hbr,
>  					   n_entries);
>  	}
>  }
> @@ -1260,7 +1260,7 @@ icl_get_mg_buf_trans(struct intel_encoder *encoder,
>  		     int *n_entries)
>  {
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&icl_mg_phy_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&icl_mg_phy_trans_hdmi, n_entries);
>  	else
>  		return icl_get_mg_buf_trans_dp(encoder, crtc_state, n_entries);
>  }
> @@ -1271,9 +1271,9 @@ ehl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
>  			    int *n_entries)
>  {
>  	if (crtc_state->port_clock > 270000)
> -		return intel_get_buf_trans(&ehl_combo_phy_ddi_translations_edp_hbr2, n_entries);
> +		return intel_get_buf_trans(&ehl_combo_phy_trans_edp_hbr2, n_entries);
>  	else
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_edp_hbr2, n_entries);
> +		return intel_get_buf_trans(&icl_combo_phy_trans_edp_hbr2, n_entries);
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1284,12 +1284,12 @@ ehl_get_combo_buf_trans(struct intel_encoder *encoder,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&icl_combo_phy_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
>  		 dev_priv->vbt.edp.low_vswing)
>  		return ehl_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
>  	else
> -		return intel_get_buf_trans(&ehl_combo_phy_ddi_translations_dp, n_entries);
> +		return intel_get_buf_trans(&ehl_combo_phy_trans_dp, n_entries);
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1298,9 +1298,9 @@ jsl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
>  			    int *n_entries)
>  {
>  	if (crtc_state->port_clock > 270000)
> -		return intel_get_buf_trans(&jsl_combo_phy_ddi_translations_edp_hbr2, n_entries);
> +		return intel_get_buf_trans(&jsl_combo_phy_trans_edp_hbr2, n_entries);
>  	else
> -		return intel_get_buf_trans(&jsl_combo_phy_ddi_translations_edp_hbr, n_entries);
> +		return intel_get_buf_trans(&jsl_combo_phy_trans_edp_hbr, n_entries);
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1311,12 +1311,12 @@ jsl_get_combo_buf_trans(struct intel_encoder *encoder,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&icl_combo_phy_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
>  		 dev_priv->vbt.edp.low_vswing)
>  		return jsl_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
>  	else
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3, n_entries);
> +		return intel_get_buf_trans(&icl_combo_phy_trans_dp_hbr2_edp_hbr3, n_entries);
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1328,14 +1328,14 @@ tgl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
>  
>  	if (crtc_state->port_clock > 270000) {
>  		if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
> -			return intel_get_buf_trans(&tgl_uy_combo_phy_ddi_translations_dp_hbr2,
> +			return intel_get_buf_trans(&tgl_uy_combo_phy_trans_dp_hbr2,
>  						   n_entries);
>  		} else {
> -			return intel_get_buf_trans(&tgl_combo_phy_ddi_translations_dp_hbr2,
> +			return intel_get_buf_trans(&tgl_combo_phy_trans_dp_hbr2,
>  						   n_entries);
>  		}
>  	} else {
> -		return intel_get_buf_trans(&tgl_combo_phy_ddi_translations_dp_hbr,
> +		return intel_get_buf_trans(&tgl_combo_phy_trans_dp_hbr,
>  					   n_entries);
>  	}
>  }
> @@ -1349,13 +1349,13 @@ tgl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  
>  	if (crtc_state->port_clock > 540000) {
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3,
> +		return intel_get_buf_trans(&icl_combo_phy_trans_dp_hbr2_edp_hbr3,
>  					   n_entries);
>  	} else if (dev_priv->vbt.edp.hobl && !intel_dp->hobl_failed) {
> -		return intel_get_buf_trans(&tgl_combo_phy_ddi_translations_edp_hbr2_hobl,
> +		return intel_get_buf_trans(&tgl_combo_phy_trans_edp_hbr2_hobl,
>  					   n_entries);
>  	} else if (dev_priv->vbt.edp.low_vswing) {
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_edp_hbr2,
> +		return intel_get_buf_trans(&icl_combo_phy_trans_edp_hbr2,
>  					   n_entries);
>  	}
>  
> @@ -1368,7 +1368,7 @@ tgl_get_combo_buf_trans(struct intel_encoder *encoder,
>  			int *n_entries)
>  {
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&icl_combo_phy_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  		return tgl_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
>  	else
> @@ -1381,10 +1381,10 @@ dg1_get_combo_buf_trans_dp(struct intel_encoder *encoder,
>  			   int *n_entries)
>  {
>  	if (crtc_state->port_clock > 270000)
> -		return intel_get_buf_trans(&dg1_combo_phy_ddi_translations_dp_hbr2_hbr3,
> +		return intel_get_buf_trans(&dg1_combo_phy_trans_dp_hbr2_hbr3,
>  					   n_entries);
>  	else
> -		return intel_get_buf_trans(&dg1_combo_phy_ddi_translations_dp_rbr_hbr,
> +		return intel_get_buf_trans(&dg1_combo_phy_trans_dp_rbr_hbr,
>  					   n_entries);
>  }
>  
> @@ -1397,13 +1397,13 @@ dg1_get_combo_buf_trans_edp(struct intel_encoder *encoder,
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  
>  	if (crtc_state->port_clock > 540000)
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3,
> +		return intel_get_buf_trans(&icl_combo_phy_trans_dp_hbr2_edp_hbr3,
>  					   n_entries);
>  	else if (dev_priv->vbt.edp.hobl && !intel_dp->hobl_failed)
> -		return intel_get_buf_trans(&tgl_combo_phy_ddi_translations_edp_hbr2_hobl,
> +		return intel_get_buf_trans(&tgl_combo_phy_trans_edp_hbr2_hobl,
>  					   n_entries);
>  	else if (dev_priv->vbt.edp.low_vswing)
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_edp_hbr2,
> +		return intel_get_buf_trans(&icl_combo_phy_trans_edp_hbr2,
>  					   n_entries);
>  	else
>  		return dg1_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
> @@ -1415,7 +1415,7 @@ dg1_get_combo_buf_trans(struct intel_encoder *encoder,
>  			int *n_entries)
>  {
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&icl_combo_phy_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  		return dg1_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
>  	else
> @@ -1428,9 +1428,9 @@ rkl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
>  			   int *n_entries)
>  {
>  	if (crtc_state->port_clock > 270000)
> -		return intel_get_buf_trans(&rkl_combo_phy_ddi_translations_dp_hbr2_hbr3, n_entries);
> +		return intel_get_buf_trans(&rkl_combo_phy_trans_dp_hbr2_hbr3, n_entries);
>  	else
> -		return intel_get_buf_trans(&rkl_combo_phy_ddi_translations_dp_hbr, n_entries);
> +		return intel_get_buf_trans(&rkl_combo_phy_trans_dp_hbr, n_entries);
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1442,13 +1442,13 @@ rkl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  
>  	if (crtc_state->port_clock > 540000) {
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3,
> +		return intel_get_buf_trans(&icl_combo_phy_trans_dp_hbr2_edp_hbr3,
>  					   n_entries);
>  	} else if (dev_priv->vbt.edp.hobl && !intel_dp->hobl_failed) {
> -		return intel_get_buf_trans(&tgl_combo_phy_ddi_translations_edp_hbr2_hobl,
> +		return intel_get_buf_trans(&tgl_combo_phy_trans_edp_hbr2_hobl,
>  					   n_entries);
>  	} else if (dev_priv->vbt.edp.low_vswing) {
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_edp_hbr2,
> +		return intel_get_buf_trans(&icl_combo_phy_trans_edp_hbr2,
>  					   n_entries);
>  	}
>  
> @@ -1461,7 +1461,7 @@ rkl_get_combo_buf_trans(struct intel_encoder *encoder,
>  			int *n_entries)
>  {
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&icl_combo_phy_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  		return rkl_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
>  	else
> @@ -1474,9 +1474,9 @@ adls_get_combo_buf_trans_dp(struct intel_encoder *encoder,
>  			    int *n_entries)
>  {
>  	if (crtc_state->port_clock > 270000)
> -		return intel_get_buf_trans(&adls_combo_phy_ddi_translations_dp_hbr2_hbr3, n_entries);
> +		return intel_get_buf_trans(&adls_combo_phy_trans_dp_hbr2_hbr3, n_entries);
>  	else
> -		return intel_get_buf_trans(&tgl_combo_phy_ddi_translations_dp_hbr, n_entries);
> +		return intel_get_buf_trans(&tgl_combo_phy_trans_dp_hbr, n_entries);
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1488,11 +1488,11 @@ adls_get_combo_buf_trans_edp(struct intel_encoder *encoder,
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  
>  	if (crtc_state->port_clock > 540000)
> -		return intel_get_buf_trans(&adls_combo_phy_ddi_translations_edp_hbr3, n_entries);
> +		return intel_get_buf_trans(&adls_combo_phy_trans_edp_hbr3, n_entries);
>  	else if (i915->vbt.edp.hobl && !intel_dp->hobl_failed)
> -		return intel_get_buf_trans(&tgl_combo_phy_ddi_translations_edp_hbr2_hobl, n_entries);
> +		return intel_get_buf_trans(&tgl_combo_phy_trans_edp_hbr2_hobl, n_entries);
>  	else if (i915->vbt.edp.low_vswing)
> -		return intel_get_buf_trans(&adls_combo_phy_ddi_translations_edp_hbr2, n_entries);
> +		return intel_get_buf_trans(&adls_combo_phy_trans_edp_hbr2, n_entries);
>  	else
>  		return adls_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
>  }
> @@ -1503,7 +1503,7 @@ adls_get_combo_buf_trans(struct intel_encoder *encoder,
>  			 int *n_entries)
>  {
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&icl_combo_phy_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  		return adls_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
>  	else
> @@ -1516,9 +1516,9 @@ adlp_get_combo_buf_trans_dp(struct intel_encoder *encoder,
>  			    int *n_entries)
>  {
>  	if (crtc_state->port_clock > 270000)
> -		return intel_get_buf_trans(&adlp_combo_phy_ddi_translations_dp_hbr2_hbr3, n_entries);
> +		return intel_get_buf_trans(&adlp_combo_phy_trans_dp_hbr2_hbr3, n_entries);
>  	else
> -		return intel_get_buf_trans(&adlp_combo_phy_ddi_translations_dp_hbr, n_entries);
> +		return intel_get_buf_trans(&adlp_combo_phy_trans_dp_hbr, n_entries);
>  }
>  
>  static const struct intel_ddi_buf_trans *
> @@ -1530,13 +1530,13 @@ adlp_get_combo_buf_trans_edp(struct intel_encoder *encoder,
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  
>  	if (crtc_state->port_clock > 540000) {
> -		return intel_get_buf_trans(&adlp_combo_phy_ddi_translations_edp_hbr3,
> +		return intel_get_buf_trans(&adlp_combo_phy_trans_edp_hbr3,
>  					   n_entries);
>  	} else if (dev_priv->vbt.edp.hobl && !intel_dp->hobl_failed) {
> -		return intel_get_buf_trans(&tgl_combo_phy_ddi_translations_edp_hbr2_hobl,
> +		return intel_get_buf_trans(&tgl_combo_phy_trans_edp_hbr2_hobl,
>  					   n_entries);
>  	} else if (dev_priv->vbt.edp.low_vswing) {
> -		return intel_get_buf_trans(&adlp_combo_phy_ddi_translations_edp_up_to_hbr2,
> +		return intel_get_buf_trans(&adlp_combo_phy_trans_edp_up_to_hbr2,
>  					   n_entries);
>  	}
>  
> @@ -1549,7 +1549,7 @@ adlp_get_combo_buf_trans(struct intel_encoder *encoder,
>  			 int *n_entries)
>  {
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&adlp_combo_phy_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&adlp_combo_phy_trans_hdmi, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  		return adlp_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
>  	else
> @@ -1562,10 +1562,10 @@ tgl_get_dkl_buf_trans_dp(struct intel_encoder *encoder,
>  			 int *n_entries)
>  {
>  	if (crtc_state->port_clock > 270000) {
> -		return intel_get_buf_trans(&tgl_dkl_phy_ddi_translations_dp_hbr2,
> +		return intel_get_buf_trans(&tgl_dkl_phy_trans_dp_hbr2,
>  					   n_entries);
>  	} else {
> -		return intel_get_buf_trans(&tgl_dkl_phy_ddi_translations_dp_hbr,
> +		return intel_get_buf_trans(&tgl_dkl_phy_trans_dp_hbr,
>  					   n_entries);
>  	}
>  }
> @@ -1576,7 +1576,7 @@ tgl_get_dkl_buf_trans(struct intel_encoder *encoder,
>  		      int *n_entries)
>  {
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&tgl_dkl_phy_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&tgl_dkl_phy_trans_hdmi, n_entries);
>  	else
>  		return tgl_get_dkl_buf_trans_dp(encoder, crtc_state, n_entries);
>  }
> @@ -1587,10 +1587,10 @@ adlp_get_dkl_buf_trans_dp(struct intel_encoder *encoder,
>  			  int *n_entries)
>  {
>  	if (crtc_state->port_clock > 270000) {
> -		return intel_get_buf_trans(&adlp_dkl_phy_ddi_translations_dp_hbr2_hbr3,
> +		return intel_get_buf_trans(&adlp_dkl_phy_trans_dp_hbr2_hbr3,
>  					   n_entries);
>  	} else {
> -		return intel_get_buf_trans(&adlp_dkl_phy_ddi_translations_dp_hbr,
> +		return intel_get_buf_trans(&adlp_dkl_phy_trans_dp_hbr,
>  					   n_entries);
>  	}
>  }
> @@ -1601,7 +1601,7 @@ adlp_get_dkl_buf_trans(struct intel_encoder *encoder,
>  		       int *n_entries)
>  {
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		return intel_get_buf_trans(&tgl_dkl_phy_ddi_translations_hdmi, n_entries);
> +		return intel_get_buf_trans(&tgl_dkl_phy_trans_hdmi, n_entries);
>  	else
>  		return adlp_get_dkl_buf_trans_dp(encoder, crtc_state, n_entries);
>  }
> @@ -1612,9 +1612,9 @@ dg2_get_snps_buf_trans(struct intel_encoder *encoder,
>  		       int *n_entries)
>  {
>  	if (crtc_state->port_clock > 1000000)
> -		return intel_get_buf_trans(&dg2_snps_translations_uhbr, n_entries);
> +		return intel_get_buf_trans(&dg2_snps_trans_uhbr, n_entries);
>  	else
> -		return intel_get_buf_trans(&dg2_snps_translations, n_entries);
> +		return intel_get_buf_trans(&dg2_snps_trans, n_entries);
>  }
>  
>  int intel_ddi_hdmi_num_entries(struct intel_encoder *encoder,
> @@ -1622,17 +1622,17 @@ int intel_ddi_hdmi_num_entries(struct intel_encoder *encoder,
>  			       int *default_entry)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	const struct intel_ddi_buf_trans *ddi_translations;
> +	const struct intel_ddi_buf_trans *trans;
>  	int n_entries;
>  
> -	ddi_translations = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> +	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
>  
> -	if (drm_WARN_ON(&dev_priv->drm, !ddi_translations)) {
> +	if (drm_WARN_ON(&dev_priv->drm, !trans)) {
>  		*default_entry = 0;
>  		return 0;
>  	}
>  
> -	*default_entry = ddi_translations->hdmi_default_entry;
> +	*default_entry = trans->hdmi_default_entry;
>  
>  	return n_entries;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index 2405f70d82de..3734e349f91d 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -56,12 +56,12 @@ void intel_snps_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
>  					int level)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	const struct intel_ddi_buf_trans *ddi_translations;
> +	const struct intel_ddi_buf_trans *trans;
>  	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
>  	int n_entries, ln;
>  
> -	ddi_translations = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
> +	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> +	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
>  		return;
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, level < 0 || level >= n_entries))
>  		level = n_entries - 1;
> @@ -69,9 +69,9 @@ void intel_snps_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
>  	for (ln = 0; ln < 4; ln++) {
>  		u32 val = 0;
>  
> -		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, ddi_translations->entries[level].snps.snps_vswing);
> -		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_PRE, ddi_translations->entries[level].snps.snps_pre_cursor);
> -		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, ddi_translations->entries[level].snps.snps_post_cursor);
> +		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, trans->entries[level].snps.snps_vswing);
> +		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_PRE, trans->entries[level].snps.snps_pre_cursor);
> +		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, trans->entries[level].snps.snps_post_cursor);
>  
>  		intel_de_write(dev_priv, SNPS_PHY_TX_EQ(ln, phy), val);
>  	}
> -- 
> 2.32.0
> 
