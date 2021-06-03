Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 027E6399E3E
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 11:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B05D66E10D;
	Thu,  3 Jun 2021 09:59:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A1046E10D
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 09:59:11 +0000 (UTC)
IronPort-SDR: HUD+Izzo0BO1FeOvj+mUGP5cOnoTCan8DKLJHxyUVw7iNM5HYk/q5vRCG+Ajl3ASJOn8hBk+1m
 LEaWiFSWO8Nw==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="225306319"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="225306319"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 02:59:10 -0700
IronPort-SDR: oCUO58rKRfJz6LB1YwBs9Z0YcWm1keKsdyzHBpJaeVVzgnh+5OL+QghpVSe1Hj9ublo5+C2V7k
 aOg4N2gep9Pw==
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="480160197"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 02:59:08 -0700
Date: Thu, 3 Jun 2021 15:13:58 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20210603094357.GG8620@intel.com>
References: <20210526143729.2563672-1-imre.deak@intel.com>
 <20210526143729.2563672-3-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210526143729.2563672-3-imre.deak@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/adlp: Fix AUX power well ->
 PHY mapping
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-05-26 at 20:07:29 +0530, Imre Deak wrote:
> On ADL_P the power well->PHY mapping doesn't follow the mapping on previous
> platforms, fix this up.
> 
> While at it remove the redundant dev_priv param from
> icl_tc_phy_aux_ch().
Looks good to me.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 34 ++++++++++---------
>  1 file changed, 18 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index a95bbf23e6b7c..7ddd63114b36b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -291,8 +291,7 @@ static void hsw_power_well_pre_disable(struct drm_i915_private *dev_priv,
>  #define ICL_TBT_AUX_PW_TO_CH(pw_idx)	\
>  	((pw_idx) - ICL_PW_CTL_IDX_AUX_TBT1 + AUX_CH_C)
>  
> -static enum aux_ch icl_tc_phy_aux_ch(struct drm_i915_private *dev_priv,
> -				     struct i915_power_well *power_well)
> +static enum aux_ch icl_aux_pw_to_ch(const struct i915_power_well *power_well)
>  {
>  	int pw_idx = power_well->desc->hsw.idx;
>  
> @@ -327,6 +326,15 @@ aux_ch_to_digital_port(struct drm_i915_private *dev_priv,
>  	return dig_port;
>  }
>  
> +static enum phy icl_aux_pw_to_phy(struct drm_i915_private *i915,
> +				  const struct i915_power_well *power_well)
> +{
> +	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
> +	struct intel_digital_port *dig_port = aux_ch_to_digital_port(i915, aux_ch);
> +
> +	return intel_port_to_phy(i915, dig_port->base.port);
> +}
> +
>  static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
>  					   struct i915_power_well *power_well,
>  					   bool timeout_expected)
> @@ -468,15 +476,13 @@ static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
>  	hsw_wait_for_power_well_disable(dev_priv, power_well);
>  }
>  
> -#define ICL_AUX_PW_TO_PHY(pw_idx)	((pw_idx) - ICL_PW_CTL_IDX_AUX_A)
> -
>  static void
>  icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  				    struct i915_power_well *power_well)
>  {
>  	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
>  	int pw_idx = power_well->desc->hsw.idx;
> -	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
> +	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
>  	u32 val;
>  
>  	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
> @@ -508,7 +514,7 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
>  {
>  	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
>  	int pw_idx = power_well->desc->hsw.idx;
> -	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
> +	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
>  	u32 val;
>  
>  	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
> @@ -595,7 +601,7 @@ static void
>  icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  				 struct i915_power_well *power_well)
>  {
> -	enum aux_ch aux_ch = icl_tc_phy_aux_ch(dev_priv, power_well);
> +	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
>  	struct intel_digital_port *dig_port = aux_ch_to_digital_port(dev_priv, aux_ch);
>  	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
>  	bool is_tbt = power_well->desc->hsw.is_tc_tbt;
> @@ -643,7 +649,7 @@ static void
>  icl_tc_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
>  				  struct i915_power_well *power_well)
>  {
> -	enum aux_ch aux_ch = icl_tc_phy_aux_ch(dev_priv, power_well);
> +	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
>  	struct intel_digital_port *dig_port = aux_ch_to_digital_port(dev_priv, aux_ch);
>  
>  	icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
> @@ -655,11 +661,9 @@ static void
>  icl_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  			  struct i915_power_well *power_well)
>  {
> -	int pw_idx = power_well->desc->hsw.idx;
> -	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);  /* non-TBT only */
> -	bool is_tbt = power_well->desc->hsw.is_tc_tbt;
> +	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
>  
> -	if (is_tbt || intel_phy_is_tc(dev_priv, phy))
> +	if (intel_phy_is_tc(dev_priv, phy))
>  		return icl_tc_phy_aux_power_well_enable(dev_priv, power_well);
>  	else if (IS_ICELAKE(dev_priv))
>  		return icl_combo_phy_aux_power_well_enable(dev_priv,
> @@ -672,11 +676,9 @@ static void
>  icl_aux_power_well_disable(struct drm_i915_private *dev_priv,
>  			   struct i915_power_well *power_well)
>  {
> -	int pw_idx = power_well->desc->hsw.idx;
> -	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);  /* non-TBT only */
> -	bool is_tbt = power_well->desc->hsw.is_tc_tbt;
> +	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
>  
> -	if (is_tbt || intel_phy_is_tc(dev_priv, phy))
> +	if (intel_phy_is_tc(dev_priv, phy))
>  		return icl_tc_phy_aux_power_well_disable(dev_priv, power_well);
>  	else if (IS_ICELAKE(dev_priv))
>  		return icl_combo_phy_aux_power_well_disable(dev_priv,
> -- 
> 2.27.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
