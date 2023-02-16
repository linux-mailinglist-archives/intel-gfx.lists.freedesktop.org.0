Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 504906999FF
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 17:28:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51C1010EE02;
	Thu, 16 Feb 2023 16:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD17A10EDF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 16:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676564880; x=1708100880;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6uq88C/rh4g6QZbu4ReuIWhS1F1OhGbO0+0nVzlJKTc=;
 b=Nhxgq1FSIGIagp7rXV9Cp35ioVMil8cEWbHyek1DwmLndppOM+tGpj3A
 A5ND/1x9XRo3orjVcGFpIDKxUVXsjb5+/OIDnBGh05ZSVr1w3qUisRUub
 Nr82L4K/KZQFzryjnBqcl7zg7lPpMZ6m8xjsCBpBtZ9W/D8HIgmuJexqX
 1E24kPY1G7LRTqk0EMcT/Qz/hE5vZBhYf8PKBye7taPGw4moQmjQZvKdG
 9iykKMT9RAr7svayp6cRrtfsnvRYW9pelrtUNNS6jKLhoi0FS9FkFhDLy
 47dghHnp+CgPDQIBiD8ec5YY44GR0F3g0voCg51NnKH6P1aEgqJoCbTn+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="312122533"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="312122533"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 08:27:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="758987945"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="758987945"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.155])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 08:27:23 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>
In-Reply-To: <Y7cywxMBJPmR/Vfj@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
 <20230105131046.2173431-2-andrzej.hajda@intel.com>
 <Y7cywxMBJPmR/Vfj@intel.com>
Date: Thu, 16 Feb 2023 18:27:20 +0200
Message-ID: <87v8k1zic7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 2/9] drm/i915/display/power: use
 intel_de_rmw if possible
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 05 Jan 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Jan 05, 2023 at 02:10:39PM +0100, Andrzej Hajda wrote:
>> The helper makes the code more compact and readable.
>> 
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_power.c    | 49 ++++-------
>>  .../i915/display/intel_display_power_well.c   | 82 ++++++-------------
>>  2 files changed, 39 insertions(+), 92 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 1a23ecd4623a53..90d7a623d6e3cc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -1260,9 +1260,7 @@ static void hsw_disable_lcpll(struct drm_i915_private *dev_priv,
>>  		drm_err(&dev_priv->drm, "D_COMP RCOMP still in progress\n");
>>  
>>  	if (allow_power_down) {
>> -		val = intel_de_read(dev_priv, LCPLL_CTL);
>> -		val |= LCPLL_POWER_DOWN_ALLOW;
>> -		intel_de_write(dev_priv, LCPLL_CTL, val);
>> +		intel_de_rmw(dev_priv, LCPLL_CTL, 0, LCPLL_POWER_DOWN_ALLOW);
>>  		intel_de_posting_read(dev_priv, LCPLL_CTL);
>>  	}
>>  }
>> @@ -1306,9 +1304,7 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
>>  		drm_err(&dev_priv->drm, "LCPLL not locked yet\n");
>>  
>>  	if (val & LCPLL_CD_SOURCE_FCLK) {
>> -		val = intel_de_read(dev_priv, LCPLL_CTL);
>> -		val &= ~LCPLL_CD_SOURCE_FCLK;
>> -		intel_de_write(dev_priv, LCPLL_CTL, val);
>> +		intel_de_rmw(dev_priv, LCPLL_CTL, LCPLL_CD_SOURCE_FCLK, 0);
>>  
>>  		if (wait_for_us((intel_de_read(dev_priv, LCPLL_CTL) &
>>  				 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
>> @@ -1347,15 +1343,11 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
>>   */
>>  static void hsw_enable_pc8(struct drm_i915_private *dev_priv)
>>  {
>> -	u32 val;
>> -
>>  	drm_dbg_kms(&dev_priv->drm, "Enabling package C8+\n");
>>  
>> -	if (HAS_PCH_LPT_LP(dev_priv)) {
>> -		val = intel_de_read(dev_priv, SOUTH_DSPCLK_GATE_D);
>> -		val &= ~PCH_LP_PARTITION_LEVEL_DISABLE;
>> -		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D, val);
>> -	}
>> +	if (HAS_PCH_LPT_LP(dev_priv))
>> +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
>> +			     PCH_LP_PARTITION_LEVEL_DISABLE, 0);
>>  
>>  	lpt_disable_clkout_dp(dev_priv);
>>  	hsw_disable_lcpll(dev_priv, true, true);
>> @@ -1363,25 +1355,21 @@ static void hsw_enable_pc8(struct drm_i915_private *dev_priv)
>>  
>>  static void hsw_disable_pc8(struct drm_i915_private *dev_priv)
>>  {
>> -	u32 val;
>> -
>>  	drm_dbg_kms(&dev_priv->drm, "Disabling package C8+\n");
>>  
>>  	hsw_restore_lcpll(dev_priv);
>>  	intel_init_pch_refclk(dev_priv);
>>  
>> -	if (HAS_PCH_LPT_LP(dev_priv)) {
>> -		val = intel_de_read(dev_priv, SOUTH_DSPCLK_GATE_D);
>> -		val |= PCH_LP_PARTITION_LEVEL_DISABLE;
>> -		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D, val);
>> -	}
>> +	if (HAS_PCH_LPT_LP(dev_priv))
>> +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
>> +			     0, PCH_LP_PARTITION_LEVEL_DISABLE);
>>  }
>>  
>>  static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
>>  				      bool enable)
>>  {
>>  	i915_reg_t reg;
>> -	u32 reset_bits, val;
>> +	u32 reset_bits;
>>  
>>  	if (IS_IVYBRIDGE(dev_priv)) {
>>  		reg = GEN7_MSG_CTL;
>> @@ -1394,14 +1382,7 @@ static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
>>  	if (DISPLAY_VER(dev_priv) >= 14)
>>  		reset_bits |= MTL_RESET_PICA_HANDSHAKE_EN;
>>  
>> -	val = intel_de_read(dev_priv, reg);
>> -
>> -	if (enable)
>> -		val |= reset_bits;
>> -	else
>> -		val &= ~reset_bits;
>> -
>> -	intel_de_write(dev_priv, reg, val);
>> +	intel_de_rmw(dev_priv, reg, reset_bits, enable ? reset_bits : 0);
>
> I believe we have a risk here since we were only cleaning if not enable.
> But anyway this looks the right thing to do here...
>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Pushed everything else in the series *except* this one, because there
was a minor conflict. Please rebase and resend.

Sorry for the delay, and thanks for the patches and review.

BR,
Jani.



>
>
>>  }
>>  
>>  static void skl_display_core_init(struct drm_i915_private *dev_priv,
>> @@ -1618,7 +1599,6 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>>  {
>>  	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
>>  	struct i915_power_well *well;
>> -	u32 val;
>>  
>>  	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
>>  
>> @@ -1670,11 +1650,10 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>>  		intel_dmc_load_program(dev_priv);
>>  
>>  	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p */
>> -	if (DISPLAY_VER(dev_priv) >= 12) {
>> -		val = DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
>> -		      DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR;
>> -		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0, val);
>> -	}
>> +	if (DISPLAY_VER(dev_priv) >= 12)
>> +		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0,
>> +			     DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
>> +			     DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR);
>>  
>>  	/* Wa_14011503030:xelpd */
>>  	if (DISPLAY_VER(dev_priv) >= 13)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> index 8710dd41ffd4c6..05b431f968cb49 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -333,7 +333,6 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
>>  {
>>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
>> -	u32 val;
>>  
>>  	if (power_well->desc->has_fuses) {
>>  		enum skl_power_gate pg;
>> @@ -356,9 +355,7 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
>>  			gen9_wait_for_power_well_fuses(dev_priv, SKL_PG0);
>>  	}
>>  
>> -	val = intel_de_read(dev_priv, regs->driver);
>> -	intel_de_write(dev_priv, regs->driver,
>> -		       val | HSW_PWR_WELL_CTL_REQ(pw_idx));
>> +	intel_de_rmw(dev_priv, regs->driver, 0, HSW_PWR_WELL_CTL_REQ(pw_idx));
>>  
>>  	hsw_wait_for_power_well_enable(dev_priv, power_well, false);
>>  
>> @@ -380,14 +377,11 @@ static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
>>  {
>>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
>> -	u32 val;
>>  
>>  	hsw_power_well_pre_disable(dev_priv,
>>  				   power_well->desc->irq_pipe_mask);
>>  
>> -	val = intel_de_read(dev_priv, regs->driver);
>> -	intel_de_write(dev_priv, regs->driver,
>> -		       val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
>> +	intel_de_rmw(dev_priv, regs->driver, HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
>>  	hsw_wait_for_power_well_disable(dev_priv, power_well);
>>  }
>>  
>> @@ -398,29 +392,22 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
>>  	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
>> -	u32 val;
>>  
>>  	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
>>  
>> -	val = intel_de_read(dev_priv, regs->driver);
>> -	intel_de_write(dev_priv, regs->driver,
>> -		       val | HSW_PWR_WELL_CTL_REQ(pw_idx));
>> +	intel_de_rmw(dev_priv, regs->driver, 0, HSW_PWR_WELL_CTL_REQ(pw_idx));
>>  
>> -	if (DISPLAY_VER(dev_priv) < 12) {
>> -		val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
>> -		intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
>> -			       val | ICL_LANE_ENABLE_AUX);
>> -	}
>> +	if (DISPLAY_VER(dev_priv) < 12)
>> +		intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(phy),
>> +			     0, ICL_LANE_ENABLE_AUX);
>>  
>>  	hsw_wait_for_power_well_enable(dev_priv, power_well, false);
>>  
>>  	/* Display WA #1178: icl */
>>  	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
>> -	    !intel_bios_is_port_edp(dev_priv, (enum port)phy)) {
>> -		val = intel_de_read(dev_priv, ICL_AUX_ANAOVRD1(pw_idx));
>> -		val |= ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS;
>> -		intel_de_write(dev_priv, ICL_AUX_ANAOVRD1(pw_idx), val);
>> -	}
>> +	    !intel_bios_is_port_edp(dev_priv, (enum port)phy))
>> +		intel_de_rmw(dev_priv, ICL_AUX_ANAOVRD1(pw_idx),
>> +			     0, ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS);
>>  }
>>  
>>  static void
>> @@ -430,17 +417,12 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
>>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
>>  	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
>> -	u32 val;
>>  
>>  	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
>>  
>> -	val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
>> -	intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
>> -		       val & ~ICL_LANE_ENABLE_AUX);
>> +	intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(phy), ICL_LANE_ENABLE_AUX, 0);
>>  
>> -	val = intel_de_read(dev_priv, regs->driver);
>> -	intel_de_write(dev_priv, regs->driver,
>> -		       val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
>> +	intel_de_rmw(dev_priv, regs->driver, HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
>>  
>>  	hsw_wait_for_power_well_disable(dev_priv, power_well);
>>  }
>> @@ -502,19 +484,15 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>>  	bool is_tbt = power_well->desc->is_tc_tbt;
>>  	bool timeout_expected;
>> -	u32 val;
>>  
>>  	icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
>>  
>> -	val = intel_de_read(dev_priv, DP_AUX_CH_CTL(aux_ch));
>> -	val &= ~DP_AUX_CH_CTL_TBT_IO;
>> -	if (is_tbt)
>> -		val |= DP_AUX_CH_CTL_TBT_IO;
>> -	intel_de_write(dev_priv, DP_AUX_CH_CTL(aux_ch), val);
>> +	intel_de_rmw(dev_priv, DP_AUX_CH_CTL(aux_ch),
>> +		     DP_AUX_CH_CTL_TBT_IO, is_tbt ? DP_AUX_CH_CTL_TBT_IO : 0);
>>  
>> -	val = intel_de_read(dev_priv, regs->driver);
>> -	intel_de_write(dev_priv, regs->driver,
>> -		       val | HSW_PWR_WELL_CTL_REQ(i915_power_well_instance(power_well)->hsw.idx));
>> +	intel_de_rmw(dev_priv, regs->driver,
>> +		     0,
>> +		     HSW_PWR_WELL_CTL_REQ(i915_power_well_instance(power_well)->hsw.idx));
>>  
>>  	/*
>>  	 * An AUX timeout is expected if the TBT DP tunnel is down,
>> @@ -776,12 +754,8 @@ static void tgl_enable_dc3co(struct drm_i915_private *dev_priv)
>>  
>>  static void tgl_disable_dc3co(struct drm_i915_private *dev_priv)
>>  {
>> -	u32 val;
>> -
>>  	drm_dbg_kms(&dev_priv->drm, "Disabling DC3CO\n");
>> -	val = intel_de_read(dev_priv, DC_STATE_EN);
>> -	val &= ~DC_STATE_DC3CO_STATUS;
>> -	intel_de_write(dev_priv, DC_STATE_EN, val);
>> +	intel_de_rmw(dev_priv, DC_STATE_EN, DC_STATE_DC3CO_STATUS, 0);
>>  	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
>>  	/*
>>  	 * Delay of 200us DC3CO Exit time B.Spec 49196
>> @@ -820,8 +794,8 @@ void gen9_enable_dc5(struct drm_i915_private *dev_priv)
>>  
>>  	/* Wa Display #1183: skl,kbl,cfl */
>>  	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
>> -		intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
>> -			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
>> +		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
>> +			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
>>  
>>  	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC5);
>>  }
>> @@ -847,8 +821,8 @@ void skl_enable_dc6(struct drm_i915_private *dev_priv)
>>  
>>  	/* Wa Display #1183: skl,kbl,cfl */
>>  	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
>> -		intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
>> -			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
>> +		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
>> +			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
>>  
>>  	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
>>  }
>> @@ -1149,18 +1123,14 @@ static bool vlv_power_well_enabled(struct drm_i915_private *dev_priv,
>>  
>>  static void vlv_init_display_clock_gating(struct drm_i915_private *dev_priv)
>>  {
>> -	u32 val;
>> -
>>  	/*
>>  	 * On driver load, a pipe may be active and driving a DSI display.
>>  	 * Preserve DPOUNIT_CLOCK_GATE_DISABLE to avoid the pipe getting stuck
>>  	 * (and never recovering) in this case. intel_dsi_post_disable() will
>>  	 * clear it when we turn off the display.
>>  	 */
>> -	val = intel_de_read(dev_priv, DSPCLK_GATE_D(dev_priv));
>> -	val &= DPOUNIT_CLOCK_GATE_DISABLE;
>> -	val |= VRHUNIT_CLOCK_GATE_DISABLE;
>> -	intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv), val);
>> +	intel_de_rmw(dev_priv, DSPCLK_GATE_D(dev_priv),
>> +		     ~DPOUNIT_CLOCK_GATE_DISABLE, VRHUNIT_CLOCK_GATE_DISABLE);
>>  
>>  	/*
>>  	 * Disable trickle feed and enable pnd deadline calculation
>> @@ -1276,8 +1246,7 @@ static void vlv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
>>  	 * both PLLs disabled, or we risk losing DPIO and PLL
>>  	 * synchronization.
>>  	 */
>> -	intel_de_write(dev_priv, DPIO_CTL,
>> -		       intel_de_read(dev_priv, DPIO_CTL) | DPIO_CMNRST);
>> +	intel_de_rmw(dev_priv, DPIO_CTL, 0, DPIO_CMNRST);
>>  }
>>  
>>  static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
>> @@ -1289,8 +1258,7 @@ static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
>>  		assert_pll_disabled(dev_priv, pipe);
>>  
>>  	/* Assert common reset */
>> -	intel_de_write(dev_priv, DPIO_CTL,
>> -		       intel_de_read(dev_priv, DPIO_CTL) & ~DPIO_CMNRST);
>> +	intel_de_rmw(dev_priv, DPIO_CTL, DPIO_CMNRST, 0);
>>  
>>  	vlv_set_power_well(dev_priv, power_well, false);
>>  }
>> -- 
>> 2.34.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
