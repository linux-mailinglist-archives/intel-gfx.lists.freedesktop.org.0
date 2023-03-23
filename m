Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD7D6C6B18
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:34:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8281B10EAB0;
	Thu, 23 Mar 2023 14:33:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DBCF10EAB0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679582038; x=1711118038;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Zm2yVm9ET31QEyMFbw+K87XYBeL6xDiXnuxzmgS5M0c=;
 b=C3Ixl2KUFOypu6mEETEDOVshskD/l8hlpjDD12tpxqo5CAP8g/MQnZUL
 GqlO/0m2j1UJ7jMwWHzZR/UA1rvUi3A4IFbMXaVAcUbaG6le07g6L04jf
 VHHxfGGoKOan/ps70lK2KSOMoj0Wb02m07t9HCPTAAsxpVxNHv4Z8ABDk
 TYFk30QFumDIIyRdqYKErVnXJ4CfTy75RQ3quMhQQ43/4QDUZKkenYwKD
 3x8VRcBIUoeXXbsQnZUNYu6ajMAkf+Hufs0ZiSl+qUQ/Yd/FpY0fZNdh7
 w+NOuA4uO6wJ2uhkmx5nxeKeCqwN1Z2lmba+CTtgPD9ahVidY3ZshDbVG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="319891230"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="319891230"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:33:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="1011820589"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="1011820589"
Received: from rkiss-mobl.ger.corp.intel.com (HELO localhost) ([10.252.63.51])
 by fmsmga005-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2023 07:33:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230323142035.1432621-21-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-21-imre.deak@intel.com>
Date: Thu, 23 Mar 2023 16:33:54 +0200
Message-ID: <87sfdv5ygd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 20/29] drm/i915/tc: Add asserts in TC PHY
 hooks that the required power is on
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

On Thu, 23 Mar 2023, Imre Deak <imre.deak@intel.com> wrote:
> Add an assert to each TC PHY hook that their required power domain is
> enabled.
>
> While at it add a comment describing the domains used on each platform
> and TC mode.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 61 +++++++++++++++++++++++++
>  1 file changed, 61 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index e68346c5e6036..7bcd93f1f0597 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -111,6 +111,46 @@ bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port)
>  	return intel_tc_port_in_mode(dig_port, TC_PORT_LEGACY);
>  }
>  
> +/**

This also shouldn't be a kernel-doc comment.

BR,
Jani.

> + * The display power domains used for TC ports depending on the
> + * platform and TC mode (legacy, DP-alt, TBT):
> + *
> + * POWER_DOMAIN_DISPLAY_CORE:
> + * --------------------------
> + * ADLP/all modes:
> + *   - TCSS/IOM access for PHY ready state.
> + * ADLP+/all modes:
> + *   - DE/north-,south-HPD ISR access for HPD live state.
> + *
> + * POWER_DOMAIN_PORT_DDI_LANES_<port>:
> + * -----------------------------------
> + * ICL+/all modes:
> + *   - DE/DDI_BUF access for port enabled state.
> + * ADLP/all modes:
> + *   - DE/DDI_BUF access for PHY owned state.
> + *
> + * POWER_DOMAIN_AUX_USBC<TC port index>:
> + * -------------------------------------
> + * ICL/legacy mode:
> + *   - TCSS/IOM,FIA access for PHY ready, owned and HPD live state
> + *   - TCSS/PHY: block TC-cold power state for using the PHY AUX and
> + *     main lanes.
> + * ADLP/legacy, DP-alt modes:
> + *   - TCSS/PHY: block TC-cold power state for using the PHY AUX and
> + *     main lanes.
> + *
> + * POWER_DOMAIN_TC_COLD_OFF:
> + * -------------------------
> + * TGL/legacy, DP-alt modes:
> + *   - TCSS/IOM,FIA access for PHY ready, owned and HPD live state
> + *   - TCSS/PHY: block TC-cold power state for using the PHY AUX and
> + *     main lanes.
> + *
> + * ICL, TGL, ADLP/TBT mode:
> + *   - TCSS/IOM,FIA access for HPD live state
> + *   - TCSS/TBT: block TC-cold power state for using the (TBT DP-IN)
> + *     AUX and main lanes.
> + */
>  bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> @@ -163,6 +203,15 @@ tc_cold_unblock(struct intel_tc_port *tc, intel_wakeref_t wakeref)
>  	__tc_cold_unblock(tc, domain, wakeref);
>  }
>  
> +static void
> +assert_display_core_power_enabled(struct intel_tc_port *tc)
> +{
> +	struct drm_i915_private *i915 = tc_to_i915(tc);
> +
> +	drm_WARN_ON(&i915->drm,
> +		    !intel_display_power_is_enabled(i915, POWER_DOMAIN_DISPLAY_CORE));
> +}
> +
>  static void
>  assert_tc_cold_blocked(struct intel_tc_port *tc)
>  {
> @@ -378,6 +427,8 @@ static bool icl_tc_phy_is_ready(struct intel_tc_port *tc)
>  	struct drm_i915_private *i915 = tc_to_i915(tc);
>  	u32 val;
>  
> +	assert_tc_cold_blocked(tc);
> +
>  	val = intel_de_read(i915, PORT_TX_DFLEXDPPMS(tc->phy_fia));
>  	if (val == 0xffffffff) {
>  		drm_dbg_kms(&i915->drm,
> @@ -395,6 +446,8 @@ static bool icl_tc_phy_take_ownership(struct intel_tc_port *tc,
>  	struct drm_i915_private *i915 = tc_to_i915(tc);
>  	u32 val;
>  
> +	assert_tc_cold_blocked(tc);
> +
>  	val = intel_de_read(i915, PORT_TX_DFLEXDPCSSS(tc->phy_fia));
>  	if (val == 0xffffffff) {
>  		drm_dbg_kms(&i915->drm,
> @@ -418,6 +471,8 @@ static bool icl_tc_phy_is_owned(struct intel_tc_port *tc)
>  	struct drm_i915_private *i915 = tc_to_i915(tc);
>  	u32 val;
>  
> +	assert_tc_cold_blocked(tc);
> +
>  	val = intel_de_read(i915, PORT_TX_DFLEXDPCSSS(tc->phy_fia));
>  	if (val == 0xffffffff) {
>  		drm_dbg_kms(&i915->drm,
> @@ -626,6 +681,8 @@ static bool adlp_tc_phy_is_ready(struct intel_tc_port *tc)
>  	enum tc_port tc_port = intel_port_to_tc(i915, tc->dig_port->base.port);
>  	u32 val;
>  
> +	assert_display_core_power_enabled(tc);
> +
>  	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
>  	if (val == 0xffffffff) {
>  		drm_dbg_kms(&i915->drm,
> @@ -643,6 +700,8 @@ static bool adlp_tc_phy_take_ownership(struct intel_tc_port *tc,
>  	struct drm_i915_private *i915 = tc_to_i915(tc);
>  	enum port port = tc->dig_port->base.port;
>  
> +	assert_tc_port_power_enabled(tc);
> +
>  	intel_de_rmw(i915, DDI_BUF_CTL(port), DDI_BUF_CTL_TC_PHY_OWNERSHIP,
>  		     take ? DDI_BUF_CTL_TC_PHY_OWNERSHIP : 0);
>  
> @@ -655,6 +714,8 @@ static bool adlp_tc_phy_is_owned(struct intel_tc_port *tc)
>  	enum port port = tc->dig_port->base.port;
>  	u32 val;
>  
> +	assert_tc_port_power_enabled(tc);
> +
>  	val = intel_de_read(i915, DDI_BUF_CTL(port));
>  	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
