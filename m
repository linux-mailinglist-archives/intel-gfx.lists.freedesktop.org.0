Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5B84D4CBE
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 16:25:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21A8D10E139;
	Thu, 10 Mar 2022 15:25:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79D2610E139
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 15:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646925926; x=1678461926;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=t2Zqw3sCXSDO6XtbeYsRRNmiNNGe//O1HZQVsHgJS14=;
 b=PKJxIms+yID4W9kUvHMW9BT38F92b1cJGBZlU6ApOzAHwrZzo1GYMu8+
 d6tiV043ioZovs1rfg1FxjseJBM1THTyMtDTWD+l+6bs2Olfg54L2GF8Y
 XXagTb+xaqr2uKfCm2RweG9p6q6RScXnC5gGLkJbqIC/rvBXD87klNuyo
 Vovus3u3Izi/BMsdm40kI/5tFHXefq/qF1L7dU4IQ1nGK0AJpeVSIk5Jn
 WFLYJlopAvNy93Tt67oUtZxgxAe9KoVH2V1fR3wOa50FSLbycUXf08JOT
 vVOgpC3LwODQewD9OTF2pcJvuC3sTfSh2f6xmFuKx4odPw1hlO8uWsVpa Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="254105717"
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="254105717"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 07:25:25 -0800
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="578828462"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 07:25:24 -0800
Date: Thu, 10 Mar 2022 17:25:20 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <20220310152520.GB2275631@ideak-desk.fi.intel.com>
References: <20211026053821.162028-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211026053821.162028-1-ankit.k.nautiyal@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Remove check for low
 voltage sku for max dp source rate
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

On Tue, Oct 26, 2021 at 11:08:21AM +0530, Ankit Nautiyal wrote:
> The low voltage sku check can be ignored as OEMs need to consider that
> when designing the board and then put any limits in VBT.
> 
> Same is now changed in Bspec pages.
> 
> v2: Added debug print for combo PHY procmon reference values
> to get voltage configuration of combo PHY ports. (Imre)

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5272

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_combo_phy.c    |  4 +++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 32 ++-----------------
>  2 files changed, 7 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index 634e8d449457..01ff86b3ff91 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -112,6 +112,10 @@ static bool icl_verify_procmon_ref_values(struct drm_i915_private *dev_priv,
>  
>  	procmon = icl_get_procmon_ref_values(dev_priv, phy);
>  
> +	drm_dbg(&dev_priv->drm,
> +		"Combo PHY %c PROCMON values : 0x%x, 0x%x, 0x%x\n",
> +		phy_name(phy), procmon->dw1, procmon->dw9, procmon->dw10);

The expected encodings are not descriptive, could we instead add a .name
(initing them to "0.85V dot0 (low-voltage)", "0.95V dot0", etc.) to struct
icl_procmon and print that here?

Otherwise, the spec matches now the code:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> +
>  	ret = check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW1(phy),
>  			    (0xff << 16) | 0xff, procmon->dw1);
>  	ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW9(phy),
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f5dc2126d140..693d7e097295 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -385,23 +385,13 @@ static int dg2_max_source_rate(struct intel_dp *intel_dp)
>  	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
>  }
>  
> -static bool is_low_voltage_sku(struct drm_i915_private *i915, enum phy phy)
> -{
> -	u32 voltage;
> -
> -	voltage = intel_de_read(i915, ICL_PORT_COMP_DW3(phy)) & VOLTAGE_INFO_MASK;
> -
> -	return voltage == VOLTAGE_INFO_0_85V;
> -}
> -
>  static int icl_max_source_rate(struct intel_dp *intel_dp)
>  {
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>  	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>  
> -	if (intel_phy_is_combo(dev_priv, phy) &&
> -	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
> +	if (intel_phy_is_combo(dev_priv, phy) && !intel_dp_is_edp(intel_dp))
>  		return 540000;
>  
>  	return 810000;
> @@ -409,23 +399,7 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
>  
>  static int ehl_max_source_rate(struct intel_dp *intel_dp)
>  {
> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> -	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
> -	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
> -
> -	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
> -		return 540000;
> -
> -	return 810000;
> -}
> -
> -static int dg1_max_source_rate(struct intel_dp *intel_dp)
> -{
> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
> -
> -	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
> +	if (intel_dp_is_edp(intel_dp))
>  		return 540000;
>  
>  	return 810000;
> @@ -468,7 +442,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  			max_rate = dg2_max_source_rate(intel_dp);
>  		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
>  			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> -			max_rate = dg1_max_source_rate(intel_dp);
> +			max_rate = 810000;
>  		else if (IS_JSL_EHL(dev_priv))
>  			max_rate = ehl_max_source_rate(intel_dp);
>  		else
> -- 
> 2.25.1
> 
