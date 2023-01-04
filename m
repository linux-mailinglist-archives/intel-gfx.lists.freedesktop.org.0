Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 858C965D063
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 11:08:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F66D10E56D;
	Wed,  4 Jan 2023 10:08:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2F0A10E56A
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 10:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672826912; x=1704362912;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Gnht3hTvFMk49fMRUcV4Mn+YaSO0yEb/U1I0ifQHAiI=;
 b=YqwNNdijN6cvNTwXxH/SlsnWVlrpqBjPQDyAVb5I7T9i7zOrbBsNUZE4
 njzEX+/mYAVUMmbMEEA3OHNlCmVHblSSGi4IvO6n7kfQOA0+xF4jtVWbb
 hjRVVoQc9dtfjimVF15u+HT7Filg2K/cnG9C3sNECrFJE3fFoGyZm6SPr
 T2AHUqgycZK7QXugjhIpqrRBHjfhYAL5V5M6I20PnD+zEhCDEbebNev+v
 dUyA5wzgoAuM1ahytuNFoXA3pkK+YnqPJlWlYaj2R/JJhvWZdn4osjoGx
 dqPsvnRcnKoUCCqRSLi1oIpLC6RVbqmJ90ub7nLYUtbQQ9SKao/yiCAE5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="320611342"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="320611342"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 02:08:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="632743951"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="632743951"
Received: from mkabdel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.25.63])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 02:08:28 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221220120023.1214620-1-andrzej.hajda@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221220120023.1214620-1-andrzej.hajda@intel.com>
Date: Wed, 04 Jan 2023 12:08:26 +0200
Message-ID: <87edsay5lx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/core: use intel_de_rmw
 if possible
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 20 Dec 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> The helper makes the code more compact and readable.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
> Hi all,
>
> This is the last patchset converting different flavours
> of register updates to intel_de_rmw. There are probably
> still some remnants, which would require functional changes
> to allow conversion. They would need probably more individual
> approach.
>
> Jani, thank you for reviews.
>
> And the final diffstat for all patches:
> 26 files changed, 425 insertions(+), 952 deletions(-)

I think this is doing too much per patch. Please just chop it up a bit,
if only for the sake of the reviewer.

BR,
Jani.


>
> Regards
> Andrzej
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  22 +--
>  .../drm/i915/display/intel_display_power.c    |  49 ++----
>  .../i915/display/intel_display_power_well.c   |  82 +++------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 165 ++++++------------
>  .../drm/i915/display/intel_modeset_setup.c    |  17 +-
>  5 files changed, 108 insertions(+), 227 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e75b9b2a0e015a..c6c566a6572b8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -293,11 +293,11 @@ static void
>  skl_wa_827(struct drm_i915_private *dev_priv, enum pipe pipe, bool enable)
>  {
>  	if (enable)
> -		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
> -		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DUPS1_GATING_DIS | DUPS2_GATING_DIS);
> +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
> +			     0, DUPS1_GATING_DIS | DUPS2_GATING_DIS);
>  	else
> -		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
> -		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~(DUPS1_GATING_DIS | DUPS2_GATING_DIS));
> +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
> +		             DUPS1_GATING_DIS | DUPS2_GATING_DIS, 0);
>  }
>  
>  /* Wa_2006604312:icl,ehl */
> @@ -306,11 +306,9 @@ icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
>  		       bool enable)
>  {
>  	if (enable)
> -		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
> -		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DPFR_GATING_DIS);
> +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe), 0, DPFR_GATING_DIS);
>  	else
> -		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
> -		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);
> +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe), DPFR_GATING_DIS, 0);
>  }
>  
>  /* Wa_1604331009:icl,jsl,ehl */
> @@ -1852,12 +1850,10 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
>  	enum transcoder transcoder = crtc_state->cpu_transcoder;
>  	i915_reg_t reg = DISPLAY_VER(dev_priv) >= 14 ? MTL_CHICKEN_TRANS(transcoder) :
>  			 CHICKEN_TRANS(transcoder);
> -	u32 val;
>  
> -	val = intel_de_read(dev_priv, reg);
> -	val &= ~HSW_FRAME_START_DELAY_MASK;
> -	val |= HSW_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
> -	intel_de_write(dev_priv, reg, val);
> +	intel_de_rmw(dev_priv, reg,
> +		     HSW_FRAME_START_DELAY_MASK,
> +		     HSW_FRAME_START_DELAY(crtc_state->framestart_delay - 1));
>  }
>  
>  static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 1a23ecd4623a53..90d7a623d6e3cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1260,9 +1260,7 @@ static void hsw_disable_lcpll(struct drm_i915_private *dev_priv,
>  		drm_err(&dev_priv->drm, "D_COMP RCOMP still in progress\n");
>  
>  	if (allow_power_down) {
> -		val = intel_de_read(dev_priv, LCPLL_CTL);
> -		val |= LCPLL_POWER_DOWN_ALLOW;
> -		intel_de_write(dev_priv, LCPLL_CTL, val);
> +		intel_de_rmw(dev_priv, LCPLL_CTL, 0, LCPLL_POWER_DOWN_ALLOW);
>  		intel_de_posting_read(dev_priv, LCPLL_CTL);
>  	}
>  }
> @@ -1306,9 +1304,7 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
>  		drm_err(&dev_priv->drm, "LCPLL not locked yet\n");
>  
>  	if (val & LCPLL_CD_SOURCE_FCLK) {
> -		val = intel_de_read(dev_priv, LCPLL_CTL);
> -		val &= ~LCPLL_CD_SOURCE_FCLK;
> -		intel_de_write(dev_priv, LCPLL_CTL, val);
> +		intel_de_rmw(dev_priv, LCPLL_CTL, LCPLL_CD_SOURCE_FCLK, 0);
>  
>  		if (wait_for_us((intel_de_read(dev_priv, LCPLL_CTL) &
>  				 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
> @@ -1347,15 +1343,11 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
>   */
>  static void hsw_enable_pc8(struct drm_i915_private *dev_priv)
>  {
> -	u32 val;
> -
>  	drm_dbg_kms(&dev_priv->drm, "Enabling package C8+\n");
>  
> -	if (HAS_PCH_LPT_LP(dev_priv)) {
> -		val = intel_de_read(dev_priv, SOUTH_DSPCLK_GATE_D);
> -		val &= ~PCH_LP_PARTITION_LEVEL_DISABLE;
> -		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D, val);
> -	}
> +	if (HAS_PCH_LPT_LP(dev_priv))
> +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
> +			     PCH_LP_PARTITION_LEVEL_DISABLE, 0);
>  
>  	lpt_disable_clkout_dp(dev_priv);
>  	hsw_disable_lcpll(dev_priv, true, true);
> @@ -1363,25 +1355,21 @@ static void hsw_enable_pc8(struct drm_i915_private *dev_priv)
>  
>  static void hsw_disable_pc8(struct drm_i915_private *dev_priv)
>  {
> -	u32 val;
> -
>  	drm_dbg_kms(&dev_priv->drm, "Disabling package C8+\n");
>  
>  	hsw_restore_lcpll(dev_priv);
>  	intel_init_pch_refclk(dev_priv);
>  
> -	if (HAS_PCH_LPT_LP(dev_priv)) {
> -		val = intel_de_read(dev_priv, SOUTH_DSPCLK_GATE_D);
> -		val |= PCH_LP_PARTITION_LEVEL_DISABLE;
> -		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D, val);
> -	}
> +	if (HAS_PCH_LPT_LP(dev_priv))
> +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
> +			     0, PCH_LP_PARTITION_LEVEL_DISABLE);
>  }
>  
>  static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
>  				      bool enable)
>  {
>  	i915_reg_t reg;
> -	u32 reset_bits, val;
> +	u32 reset_bits;
>  
>  	if (IS_IVYBRIDGE(dev_priv)) {
>  		reg = GEN7_MSG_CTL;
> @@ -1394,14 +1382,7 @@ static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
>  	if (DISPLAY_VER(dev_priv) >= 14)
>  		reset_bits |= MTL_RESET_PICA_HANDSHAKE_EN;
>  
> -	val = intel_de_read(dev_priv, reg);
> -
> -	if (enable)
> -		val |= reset_bits;
> -	else
> -		val &= ~reset_bits;
> -
> -	intel_de_write(dev_priv, reg, val);
> +	intel_de_rmw(dev_priv, reg, reset_bits, enable ? reset_bits : 0);
>  }
>  
>  static void skl_display_core_init(struct drm_i915_private *dev_priv,
> @@ -1618,7 +1599,6 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  {
>  	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
>  	struct i915_power_well *well;
> -	u32 val;
>  
>  	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
>  
> @@ -1670,11 +1650,10 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  		intel_dmc_load_program(dev_priv);
>  
>  	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p */
> -	if (DISPLAY_VER(dev_priv) >= 12) {
> -		val = DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
> -		      DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR;
> -		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0, val);
> -	}
> +	if (DISPLAY_VER(dev_priv) >= 12)
> +		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0,
> +			     DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
> +			     DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR);
>  
>  	/* Wa_14011503030:xelpd */
>  	if (DISPLAY_VER(dev_priv) >= 13)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 8710dd41ffd4c6..05b431f968cb49 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -333,7 +333,6 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
>  {
>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
> -	u32 val;
>  
>  	if (power_well->desc->has_fuses) {
>  		enum skl_power_gate pg;
> @@ -356,9 +355,7 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
>  			gen9_wait_for_power_well_fuses(dev_priv, SKL_PG0);
>  	}
>  
> -	val = intel_de_read(dev_priv, regs->driver);
> -	intel_de_write(dev_priv, regs->driver,
> -		       val | HSW_PWR_WELL_CTL_REQ(pw_idx));
> +	intel_de_rmw(dev_priv, regs->driver, 0, HSW_PWR_WELL_CTL_REQ(pw_idx));
>  
>  	hsw_wait_for_power_well_enable(dev_priv, power_well, false);
>  
> @@ -380,14 +377,11 @@ static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
>  {
>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
> -	u32 val;
>  
>  	hsw_power_well_pre_disable(dev_priv,
>  				   power_well->desc->irq_pipe_mask);
>  
> -	val = intel_de_read(dev_priv, regs->driver);
> -	intel_de_write(dev_priv, regs->driver,
> -		       val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
> +	intel_de_rmw(dev_priv, regs->driver, HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
>  	hsw_wait_for_power_well_disable(dev_priv, power_well);
>  }
>  
> @@ -398,29 +392,22 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
>  	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
> -	u32 val;
>  
>  	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
>  
> -	val = intel_de_read(dev_priv, regs->driver);
> -	intel_de_write(dev_priv, regs->driver,
> -		       val | HSW_PWR_WELL_CTL_REQ(pw_idx));
> +	intel_de_rmw(dev_priv, regs->driver, 0, HSW_PWR_WELL_CTL_REQ(pw_idx));
>  
> -	if (DISPLAY_VER(dev_priv) < 12) {
> -		val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
> -		intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
> -			       val | ICL_LANE_ENABLE_AUX);
> -	}
> +	if (DISPLAY_VER(dev_priv) < 12)
> +		intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(phy),
> +			     0, ICL_LANE_ENABLE_AUX);
>  
>  	hsw_wait_for_power_well_enable(dev_priv, power_well, false);
>  
>  	/* Display WA #1178: icl */
>  	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
> -	    !intel_bios_is_port_edp(dev_priv, (enum port)phy)) {
> -		val = intel_de_read(dev_priv, ICL_AUX_ANAOVRD1(pw_idx));
> -		val |= ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS;
> -		intel_de_write(dev_priv, ICL_AUX_ANAOVRD1(pw_idx), val);
> -	}
> +	    !intel_bios_is_port_edp(dev_priv, (enum port)phy))
> +		intel_de_rmw(dev_priv, ICL_AUX_ANAOVRD1(pw_idx),
> +			     0, ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS);
>  }
>  
>  static void
> @@ -430,17 +417,12 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
>  	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
> -	u32 val;
>  
>  	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
>  
> -	val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
> -	intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
> -		       val & ~ICL_LANE_ENABLE_AUX);
> +	intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(phy), ICL_LANE_ENABLE_AUX, 0);
>  
> -	val = intel_de_read(dev_priv, regs->driver);
> -	intel_de_write(dev_priv, regs->driver,
> -		       val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
> +	intel_de_rmw(dev_priv, regs->driver, HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
>  
>  	hsw_wait_for_power_well_disable(dev_priv, power_well);
>  }
> @@ -502,19 +484,15 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>  	bool is_tbt = power_well->desc->is_tc_tbt;
>  	bool timeout_expected;
> -	u32 val;
>  
>  	icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
>  
> -	val = intel_de_read(dev_priv, DP_AUX_CH_CTL(aux_ch));
> -	val &= ~DP_AUX_CH_CTL_TBT_IO;
> -	if (is_tbt)
> -		val |= DP_AUX_CH_CTL_TBT_IO;
> -	intel_de_write(dev_priv, DP_AUX_CH_CTL(aux_ch), val);
> +	intel_de_rmw(dev_priv, DP_AUX_CH_CTL(aux_ch),
> +		     DP_AUX_CH_CTL_TBT_IO, is_tbt ? DP_AUX_CH_CTL_TBT_IO : 0);
>  
> -	val = intel_de_read(dev_priv, regs->driver);
> -	intel_de_write(dev_priv, regs->driver,
> -		       val | HSW_PWR_WELL_CTL_REQ(i915_power_well_instance(power_well)->hsw.idx));
> +	intel_de_rmw(dev_priv, regs->driver,
> +		     0,
> +		     HSW_PWR_WELL_CTL_REQ(i915_power_well_instance(power_well)->hsw.idx));
>  
>  	/*
>  	 * An AUX timeout is expected if the TBT DP tunnel is down,
> @@ -776,12 +754,8 @@ static void tgl_enable_dc3co(struct drm_i915_private *dev_priv)
>  
>  static void tgl_disable_dc3co(struct drm_i915_private *dev_priv)
>  {
> -	u32 val;
> -
>  	drm_dbg_kms(&dev_priv->drm, "Disabling DC3CO\n");
> -	val = intel_de_read(dev_priv, DC_STATE_EN);
> -	val &= ~DC_STATE_DC3CO_STATUS;
> -	intel_de_write(dev_priv, DC_STATE_EN, val);
> +	intel_de_rmw(dev_priv, DC_STATE_EN, DC_STATE_DC3CO_STATUS, 0);
>  	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
>  	/*
>  	 * Delay of 200us DC3CO Exit time B.Spec 49196
> @@ -820,8 +794,8 @@ void gen9_enable_dc5(struct drm_i915_private *dev_priv)
>  
>  	/* Wa Display #1183: skl,kbl,cfl */
>  	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
> -		intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
> -			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
> +		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> +			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
>  
>  	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC5);
>  }
> @@ -847,8 +821,8 @@ void skl_enable_dc6(struct drm_i915_private *dev_priv)
>  
>  	/* Wa Display #1183: skl,kbl,cfl */
>  	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
> -		intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
> -			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
> +		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> +			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
>  
>  	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
>  }
> @@ -1149,18 +1123,14 @@ static bool vlv_power_well_enabled(struct drm_i915_private *dev_priv,
>  
>  static void vlv_init_display_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	u32 val;
> -
>  	/*
>  	 * On driver load, a pipe may be active and driving a DSI display.
>  	 * Preserve DPOUNIT_CLOCK_GATE_DISABLE to avoid the pipe getting stuck
>  	 * (and never recovering) in this case. intel_dsi_post_disable() will
>  	 * clear it when we turn off the display.
>  	 */
> -	val = intel_de_read(dev_priv, DSPCLK_GATE_D(dev_priv));
> -	val &= DPOUNIT_CLOCK_GATE_DISABLE;
> -	val |= VRHUNIT_CLOCK_GATE_DISABLE;
> -	intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv), val);
> +	intel_de_rmw(dev_priv, DSPCLK_GATE_D(dev_priv),
> +		     ~DPOUNIT_CLOCK_GATE_DISABLE, VRHUNIT_CLOCK_GATE_DISABLE);
>  
>  	/*
>  	 * Disable trickle feed and enable pnd deadline calculation
> @@ -1276,8 +1246,7 @@ static void vlv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
>  	 * both PLLs disabled, or we risk losing DPIO and PLL
>  	 * synchronization.
>  	 */
> -	intel_de_write(dev_priv, DPIO_CTL,
> -		       intel_de_read(dev_priv, DPIO_CTL) | DPIO_CMNRST);
> +	intel_de_rmw(dev_priv, DPIO_CTL, 0, DPIO_CMNRST);
>  }
>  
>  static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
> @@ -1289,8 +1258,7 @@ static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
>  		assert_pll_disabled(dev_priv, pipe);
>  
>  	/* Assert common reset */
> -	intel_de_write(dev_priv, DPIO_CTL,
> -		       intel_de_read(dev_priv, DPIO_CTL) & ~DPIO_CMNRST);
> +	intel_de_rmw(dev_priv, DPIO_CTL, DPIO_CMNRST, 0);
>  
>  	vlv_set_power_well(dev_priv, power_well, false);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 1974eb580ed198..e9215ebcdfc44d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -608,10 +608,8 @@ static void hsw_ddi_wrpll_disable(struct drm_i915_private *dev_priv,
>  				  struct intel_shared_dpll *pll)
>  {
>  	const enum intel_dpll_id id = pll->info->id;
> -	u32 val;
>  
> -	val = intel_de_read(dev_priv, WRPLL_CTL(id));
> -	intel_de_write(dev_priv, WRPLL_CTL(id), val & ~WRPLL_PLL_ENABLE);
> +	intel_de_rmw(dev_priv, WRPLL_CTL(id), WRPLL_PLL_ENABLE, 0);
>  	intel_de_posting_read(dev_priv, WRPLL_CTL(id));
>  
>  	/*
> @@ -626,10 +624,8 @@ static void hsw_ddi_spll_disable(struct drm_i915_private *dev_priv,
>  				 struct intel_shared_dpll *pll)
>  {
>  	enum intel_dpll_id id = pll->info->id;
> -	u32 val;
>  
> -	val = intel_de_read(dev_priv, SPLL_CTL);
> -	intel_de_write(dev_priv, SPLL_CTL, val & ~SPLL_PLL_ENABLE);
> +	intel_de_rmw(dev_priv, SPLL_CTL, SPLL_PLL_ENABLE, 0);
>  	intel_de_posting_read(dev_priv, SPLL_CTL);
>  
>  	/*
> @@ -1238,16 +1234,10 @@ static void skl_ddi_pll_write_ctrl1(struct drm_i915_private *dev_priv,
>  				    struct intel_shared_dpll *pll)
>  {
>  	const enum intel_dpll_id id = pll->info->id;
> -	u32 val;
>  
> -	val = intel_de_read(dev_priv, DPLL_CTRL1);
> -
> -	val &= ~(DPLL_CTRL1_HDMI_MODE(id) |
> -		 DPLL_CTRL1_SSC(id) |
> -		 DPLL_CTRL1_LINK_RATE_MASK(id));
> -	val |= pll->state.hw_state.ctrl1 << (id * 6);
> -
> -	intel_de_write(dev_priv, DPLL_CTRL1, val);
> +	intel_de_rmw(dev_priv, DPLL_CTRL1,
> +		     DPLL_CTRL1_HDMI_MODE(id) | DPLL_CTRL1_SSC(id) | DPLL_CTRL1_LINK_RATE_MASK(id),
> +		     pll->state.hw_state.ctrl1 << (id * 6));
>  	intel_de_posting_read(dev_priv, DPLL_CTRL1);
>  }
>  
> @@ -1265,8 +1255,7 @@ static void skl_ddi_pll_enable(struct drm_i915_private *dev_priv,
>  	intel_de_posting_read(dev_priv, regs[id].cfgcr2);
>  
>  	/* the enable bit is always bit 31 */
> -	intel_de_write(dev_priv, regs[id].ctl,
> -		       intel_de_read(dev_priv, regs[id].ctl) | LCPLL_PLL_ENABLE);
> +	intel_de_rmw(dev_priv, regs[id].ctl, 0, LCPLL_PLL_ENABLE);
>  
>  	if (intel_de_wait_for_set(dev_priv, DPLL_STATUS, DPLL_LOCK(id), 5))
>  		drm_err(&dev_priv->drm, "DPLL %d not locked\n", id);
> @@ -1285,8 +1274,7 @@ static void skl_ddi_pll_disable(struct drm_i915_private *dev_priv,
>  	const enum intel_dpll_id id = pll->info->id;
>  
>  	/* the enable bit is always bit 31 */
> -	intel_de_write(dev_priv, regs[id].ctl,
> -		       intel_de_read(dev_priv, regs[id].ctl) & ~LCPLL_PLL_ENABLE);
> +	intel_de_rmw(dev_priv, regs[id].ctl, LCPLL_PLL_ENABLE, 0);
>  	intel_de_posting_read(dev_priv, regs[id].ctl);
>  }
>  
> @@ -1902,14 +1890,11 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
>  	bxt_port_to_phy_channel(dev_priv, port, &phy, &ch);
>  
>  	/* Non-SSC reference */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
> -	temp |= PORT_PLL_REF_SEL;
> -	intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_REF_SEL);
>  
>  	if (IS_GEMINILAKE(dev_priv)) {
> -		temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
> -		temp |= PORT_PLL_POWER_ENABLE;
> -		intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
> +		intel_de_rmw(dev_priv, BXT_PORT_PLL_ENABLE(port),
> +			     0, PORT_PLL_POWER_ENABLE);
>  
>  		if (wait_for_us((intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) &
>  				 PORT_PLL_POWER_STATE), 200))
> @@ -1918,39 +1903,28 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
>  	}
>  
>  	/* Disable 10 bit clock */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch));
> -	temp &= ~PORT_PLL_10BIT_CLK_ENABLE;
> -	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch),
> +		     PORT_PLL_10BIT_CLK_ENABLE, 0);
>  
>  	/* Write P1 & P2 */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_0(phy, ch));
> -	temp &= ~(PORT_PLL_P1_MASK | PORT_PLL_P2_MASK);
> -	temp |= pll->state.hw_state.ebb0;
> -	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_0(phy, ch), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL_EBB_0(phy, ch),
> +		     PORT_PLL_P1_MASK | PORT_PLL_P2_MASK, pll->state.hw_state.ebb0);
>  
>  	/* Write M2 integer */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 0));
> -	temp &= ~PORT_PLL_M2_INT_MASK;
> -	temp |= pll->state.hw_state.pll0;
> -	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 0), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 0),
> +		     PORT_PLL_M2_INT_MASK, pll->state.hw_state.pll0);
>  
>  	/* Write N */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 1));
> -	temp &= ~PORT_PLL_N_MASK;
> -	temp |= pll->state.hw_state.pll1;
> -	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 1), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 1),
> +		     PORT_PLL_N_MASK, pll->state.hw_state.pll1);
>  
>  	/* Write M2 fraction */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 2));
> -	temp &= ~PORT_PLL_M2_FRAC_MASK;
> -	temp |= pll->state.hw_state.pll2;
> -	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 2), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 2),
> +		     PORT_PLL_M2_FRAC_MASK, pll->state.hw_state.pll2);
>  
>  	/* Write M2 fraction enable */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 3));
> -	temp &= ~PORT_PLL_M2_FRAC_ENABLE;
> -	temp |= pll->state.hw_state.pll3;
> -	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 3), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 3),
> +		     PORT_PLL_M2_FRAC_ENABLE, pll->state.hw_state.pll3);
>  
>  	/* Write coeff */
>  	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 6));
> @@ -1961,15 +1935,11 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
>  	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 6), temp);
>  
>  	/* Write calibration val */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 8));
> -	temp &= ~PORT_PLL_TARGET_CNT_MASK;
> -	temp |= pll->state.hw_state.pll8;
> -	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 8), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 8),
> +		     PORT_PLL_TARGET_CNT_MASK, pll->state.hw_state.pll8);
>  
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 9));
> -	temp &= ~PORT_PLL_LOCK_THRESHOLD_MASK;
> -	temp |= pll->state.hw_state.pll9;
> -	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 9), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 9),
> +		     PORT_PLL_LOCK_THRESHOLD_MASK, pll->state.hw_state.pll9);
>  
>  	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 10));
>  	temp &= ~PORT_PLL_DCO_AMP_OVR_EN_H;
> @@ -1986,9 +1956,7 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
>  	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch), temp);
>  
>  	/* Enable PLL */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
> -	temp |= PORT_PLL_ENABLE;
> -	intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_ENABLE);
>  	intel_de_posting_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
>  
>  	if (wait_for_us((intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) & PORT_PLL_LOCK),
> @@ -2016,17 +1984,13 @@ static void bxt_ddi_pll_disable(struct drm_i915_private *dev_priv,
>  					struct intel_shared_dpll *pll)
>  {
>  	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
> -	u32 temp;
>  
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
> -	temp &= ~PORT_PLL_ENABLE;
> -	intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL_ENABLE(port), PORT_PLL_ENABLE, 0);
>  	intel_de_posting_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
>  
>  	if (IS_GEMINILAKE(dev_priv)) {
> -		temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
> -		temp &= ~PORT_PLL_POWER_ENABLE;
> -		intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
> +		intel_de_rmw(dev_priv, BXT_PORT_PLL_ENABLE(port),
> +			     PORT_PLL_POWER_ENABLE, 0);
>  
>  		if (wait_for_us(!(intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) &
>  				  PORT_PLL_POWER_STATE), 200))
> @@ -3641,8 +3605,8 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
>  			 !i915_mmio_reg_valid(div0_reg));
>  	if (dev_priv->display.vbt.override_afc_startup &&
>  	    i915_mmio_reg_valid(div0_reg))
> -		intel_de_rmw(dev_priv, div0_reg, TGL_DPLL0_DIV0_AFC_STARTUP_MASK,
> -			     hw_state->div0);
> +		intel_de_rmw(dev_priv, div0_reg,
> +			     TGL_DPLL0_DIV0_AFC_STARTUP_MASK, hw_state->div0);
>  	intel_de_posting_read(dev_priv, cfgcr1_reg);
>  }
>  
> @@ -3651,7 +3615,6 @@ static void icl_mg_pll_write(struct drm_i915_private *dev_priv,
>  {
>  	struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
>  	enum tc_port tc_port = icl_pll_id_to_tc_port(pll->info->id);
> -	u32 val;
>  
>  	/*
>  	 * Some of the following registers have reserved fields, so program
> @@ -3659,23 +3622,19 @@ static void icl_mg_pll_write(struct drm_i915_private *dev_priv,
>  	 * during the calc/readout phase if the mask depends on some other HW
>  	 * state like refclk, see icl_calc_mg_pll_state().
>  	 */
> -	val = intel_de_read(dev_priv, MG_REFCLKIN_CTL(tc_port));
> -	val &= ~MG_REFCLKIN_CTL_OD_2_MUX_MASK;
> -	val |= hw_state->mg_refclkin_ctl;
> -	intel_de_write(dev_priv, MG_REFCLKIN_CTL(tc_port), val);
> +	intel_de_rmw(dev_priv, MG_REFCLKIN_CTL(tc_port),
> +		     MG_REFCLKIN_CTL_OD_2_MUX_MASK, hw_state->mg_refclkin_ctl);
>  
> -	val = intel_de_read(dev_priv, MG_CLKTOP2_CORECLKCTL1(tc_port));
> -	val &= ~MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
> -	val |= hw_state->mg_clktop2_coreclkctl1;
> -	intel_de_write(dev_priv, MG_CLKTOP2_CORECLKCTL1(tc_port), val);
> +	intel_de_rmw(dev_priv, MG_CLKTOP2_CORECLKCTL1(tc_port),
> +		     MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK,
> +		     hw_state->mg_clktop2_coreclkctl1);
>  
> -	val = intel_de_read(dev_priv, MG_CLKTOP2_HSCLKCTL(tc_port));
> -	val &= ~(MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
> -		 MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
> -		 MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
> -		 MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK);
> -	val |= hw_state->mg_clktop2_hsclkctl;
> -	intel_de_write(dev_priv, MG_CLKTOP2_HSCLKCTL(tc_port), val);
> +	intel_de_rmw(dev_priv, MG_CLKTOP2_HSCLKCTL(tc_port),
> +		     MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
> +		     MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
> +		     MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
> +		     MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK,
> +		     hw_state->mg_clktop2_hsclkctl);
>  
>  	intel_de_write(dev_priv, MG_PLL_DIV0(tc_port), hw_state->mg_pll_div0);
>  	intel_de_write(dev_priv, MG_PLL_DIV1(tc_port), hw_state->mg_pll_div1);
> @@ -3684,15 +3643,12 @@ static void icl_mg_pll_write(struct drm_i915_private *dev_priv,
>  		       hw_state->mg_pll_frac_lock);
>  	intel_de_write(dev_priv, MG_PLL_SSC(tc_port), hw_state->mg_pll_ssc);
>  
> -	val = intel_de_read(dev_priv, MG_PLL_BIAS(tc_port));
> -	val &= ~hw_state->mg_pll_bias_mask;
> -	val |= hw_state->mg_pll_bias;
> -	intel_de_write(dev_priv, MG_PLL_BIAS(tc_port), val);
> +	intel_de_rmw(dev_priv, MG_PLL_BIAS(tc_port),
> +		     hw_state->mg_pll_bias_mask, hw_state->mg_pll_bias);
>  
> -	val = intel_de_read(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port));
> -	val &= ~hw_state->mg_pll_tdc_coldst_bias_mask;
> -	val |= hw_state->mg_pll_tdc_coldst_bias;
> -	intel_de_write(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port), val);
> +	intel_de_rmw(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port),
> +		     hw_state->mg_pll_tdc_coldst_bias_mask,
> +		     hw_state->mg_pll_tdc_coldst_bias);
>  
>  	intel_de_posting_read(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port));
>  }
> @@ -3766,11 +3722,7 @@ static void icl_pll_power_enable(struct drm_i915_private *dev_priv,
>  				 struct intel_shared_dpll *pll,
>  				 i915_reg_t enable_reg)
>  {
> -	u32 val;
> -
> -	val = intel_de_read(dev_priv, enable_reg);
> -	val |= PLL_POWER_ENABLE;
> -	intel_de_write(dev_priv, enable_reg, val);
> +	intel_de_rmw(dev_priv, enable_reg, 0, PLL_POWER_ENABLE);
>  
>  	/*
>  	 * The spec says we need to "wait" but it also says it should be
> @@ -3785,11 +3737,7 @@ static void icl_pll_enable(struct drm_i915_private *dev_priv,
>  			   struct intel_shared_dpll *pll,
>  			   i915_reg_t enable_reg)
>  {
> -	u32 val;
> -
> -	val = intel_de_read(dev_priv, enable_reg);
> -	val |= PLL_ENABLE;
> -	intel_de_write(dev_priv, enable_reg, val);
> +	intel_de_rmw(dev_priv, enable_reg, 0, PLL_ENABLE);
>  
>  	/* Timeout is actually 600us. */
>  	if (intel_de_wait_for_set(dev_priv, enable_reg, PLL_LOCK, 1))
> @@ -3815,8 +3763,7 @@ static void adlp_cmtg_clock_gating_wa(struct drm_i915_private *i915, struct inte
>  	 * since TRANS_CMTG_CHICKEN is only accessible while DPLL0 is enabled.
>  	 */
>  	val = intel_de_read(i915, TRANS_CMTG_CHICKEN);
> -	val = intel_de_read(i915, TRANS_CMTG_CHICKEN);
> -	intel_de_write(i915, TRANS_CMTG_CHICKEN, DISABLE_DPT_CLK_GATING);
> +	val = intel_de_rmw(i915, TRANS_CMTG_CHICKEN, ~0, DISABLE_DPT_CLK_GATING);
>  	if (drm_WARN_ON(&i915->drm, val & ~DISABLE_DPT_CLK_GATING))
>  		drm_dbg_kms(&i915->drm, "Unexpected flags in TRANS_CMTG_CHICKEN: %08x\n", val);
>  }
> @@ -3900,8 +3847,6 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
>  			    struct intel_shared_dpll *pll,
>  			    i915_reg_t enable_reg)
>  {
> -	u32 val;
> -
>  	/* The first steps are done by intel_ddi_post_disable(). */
>  
>  	/*
> @@ -3910,9 +3855,7 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
>  	 * nothing here.
>  	 */
>  
> -	val = intel_de_read(dev_priv, enable_reg);
> -	val &= ~PLL_ENABLE;
> -	intel_de_write(dev_priv, enable_reg, val);
> +	intel_de_rmw(dev_priv, enable_reg, PLL_ENABLE, 0);
>  
>  	/* Timeout is actually 1us. */
>  	if (intel_de_wait_for_clear(dev_priv, enable_reg, PLL_LOCK, 1))
> @@ -3920,9 +3863,7 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
>  
>  	/* DVFS post sequence would be here. See the comment above. */
>  
> -	val = intel_de_read(dev_priv, enable_reg);
> -	val &= ~PLL_POWER_ENABLE;
> -	intel_de_write(dev_priv, enable_reg, val);
> +	intel_de_rmw(dev_priv, enable_reg, PLL_POWER_ENABLE, 0);
>  
>  	/*
>  	 * The spec says we need to "wait" but it also says it should be
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 96395bfbd41dfb..6f6dc7c6b88b0c 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -647,17 +647,14 @@ static void intel_early_display_was(struct drm_i915_private *i915)
>  	 * Also known as Wa_14010480278.
>  	 */
>  	if (IS_DISPLAY_VER(i915, 10, 12))
> -		intel_de_write(i915, GEN9_CLKGATE_DIS_0,
> -			       intel_de_read(i915, GEN9_CLKGATE_DIS_0) | DARBF_GATING_DIS);
> +		intel_de_rmw(i915, GEN9_CLKGATE_DIS_0, 0, DARBF_GATING_DIS);
>  
> -	if (IS_HASWELL(i915)) {
> -		/*
> -		 * WaRsPkgCStateDisplayPMReq:hsw
> -		 * System hang if this isn't done before disabling all planes!
> -		 */
> -		intel_de_write(i915, CHICKEN_PAR1_1,
> -			       intel_de_read(i915, CHICKEN_PAR1_1) | FORCE_ARB_IDLE_PLANES);
> -	}
> +	/*
> +	 * WaRsPkgCStateDisplayPMReq:hsw
> +	 * System hang if this isn't done before disabling all planes!
> +	 */
> +	if (IS_HASWELL(i915))
> +		intel_de_rmw(i915, CHICKEN_PAR1_1, 0, FORCE_ARB_IDLE_PLANES);
>  
>  	if (IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) {
>  		/* Display WA #1142:kbl,cfl,cml */

-- 
Jani Nikula, Intel Open Source Graphics Center
