Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D5E6C6B10
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:33:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6FDF10E48F;
	Thu, 23 Mar 2023 14:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16CDC10E48F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581995; x=1711117995;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=ePyaTsZKPV1Egph1OwecnGT1tBk7pS2odv/vuDK5GvA=;
 b=bDFyGGtHW7DqsVYmNRSx8sCQ0S8GNiyVJjh6ECMB1ZdnccU98pzNDwQo
 HiYBEKWnqM2GXnlo2yPOHeBHE2TF6QAC7/B40P9TOsYEsBdExg0ci2mCK
 aOPf456JEUxahY9iqMgAN+kSiPjvpnj1fZYI1Ywm6GLNhbMt/PdD0dtDQ
 wJEl/ZCsw7mLZwc3RW/RGnwT1QjnT3cE8Va7qZF2IQn9oDmZsIrfW55la
 H2Nb7WZCS2isSU6nJUNhJSWMlV/TtfwJ2kIqCZTO2yCggUTljy22kLW2E
 lUYX5L3o0+bVjDHbAYijkEeTQn3/bQ9ZtblnafHYHDHjeZg3FY0auqA5n w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="404407074"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="404407074"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:33:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="793040523"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="793040523"
Received: from rkiss-mobl.ger.corp.intel.com (HELO localhost) ([10.252.63.51])
 by fmsmga002-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2023 07:33:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230323142035.1432621-2-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-2-imre.deak@intel.com>
Date: Thu, 23 Mar 2023 16:33:10 +0200
Message-ID: <87v8ir5yhl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 01/29] drm/i915/tc: Group the TC PHY
 setup/query functions per platform
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
> Arrange the TC PHY HW state setup/query functions into platform
> specific and generic groups. This prepares for upcoming patches adding
> generic TC PHY handlers and platform specific hooks for these,
> replacing the corresponding if ladders.
>
> No functional changes.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 244 +++++++++++++-----------
>  1 file changed, 130 insertions(+), 114 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index bd8c9df5f98fe..b6e425c44fcb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -15,6 +15,10 @@
>  #include "intel_mg_phy_regs.h"
>  #include "intel_tc.h"
>  
> +static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port);
> +static bool tc_phy_status_complete(struct intel_digital_port *dig_port);
> +static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, bool take);
> +
>  static const char *tc_port_mode_name(enum tc_port_mode mode)
>  {
>  	static const char * const names[] = {
> @@ -256,6 +260,10 @@ static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
>  	dig_port->tc_legacy_port = !dig_port->tc_legacy_port;
>  }
>  
> +/**
> + * ICL TC PHY handlers
> + * -------------------
> + */

These should not be kernel-doc comments, please replace /** with /*.

BR,
Jani.



>  static u32 icl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> @@ -287,44 +295,6 @@ static u32 icl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
>  	return mask;
>  }
>  
> -static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
> -{
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
> -	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
> -	u32 val, mask = 0;
> -
> -	/*
> -	 * On ADL-P HW/FW will wake from TCCOLD to complete the read access of
> -	 * registers in IOM. Note that this doesn't apply to PHY and FIA
> -	 * registers.
> -	 */
> -	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
> -	if (val & TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT)
> -		mask |= BIT(TC_PORT_DP_ALT);
> -	if (val & TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT)
> -		mask |= BIT(TC_PORT_TBT_ALT);
> -
> -	if (intel_de_read(i915, SDEISR) & isr_bit)
> -		mask |= BIT(TC_PORT_LEGACY);
> -
> -	/* The sink can be connected only in a single mode. */
> -	if (!drm_WARN_ON(&i915->drm, hweight32(mask) > 1))
> -		tc_port_fixup_legacy_flag(dig_port, mask);
> -
> -	return mask;
> -}
> -
> -static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
> -{
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -
> -	if (IS_ALDERLAKE_P(i915))
> -		return adl_tc_port_live_status_mask(dig_port);
> -
> -	return icl_tc_port_live_status_mask(dig_port);
> -}
> -
>  /*
>   * Return the PHY status complete flag indicating that display can acquire the
>   * PHY ownership. The IOM firmware sets this flag when a DP-alt or legacy sink
> @@ -349,40 +319,6 @@ static bool icl_tc_phy_status_complete(struct intel_digital_port *dig_port)
>  	return val & DP_PHY_MODE_STATUS_COMPLETED(dig_port->tc_phy_fia_idx);
>  }
>  
> -/*
> - * Return the PHY status complete flag indicating that display can acquire the
> - * PHY ownership. The IOM firmware sets this flag when it's ready to switch
> - * the ownership to display, regardless of what sink is connected (TBT-alt,
> - * DP-alt, legacy or nothing). For TBT-alt sinks the PHY is owned by the TBT
> - * subsystem and so switching the ownership to display is not required.
> - */
> -static bool adl_tc_phy_status_complete(struct intel_digital_port *dig_port)
> -{
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
> -	u32 val;
> -
> -	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
> -	if (val == 0xffffffff) {
> -		drm_dbg_kms(&i915->drm,
> -			    "Port %s: PHY in TCCOLD, assuming not complete\n",
> -			    dig_port->tc_port_name);
> -		return false;
> -	}
> -
> -	return val & TCSS_DDI_STATUS_READY;
> -}
> -
> -static bool tc_phy_status_complete(struct intel_digital_port *dig_port)
> -{
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -
> -	if (IS_ALDERLAKE_P(i915))
> -		return adl_tc_phy_status_complete(dig_port);
> -
> -	return icl_tc_phy_status_complete(dig_port);
> -}
> -
>  static bool icl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
>  				      bool take)
>  {
> @@ -407,28 +343,6 @@ static bool icl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
>  	return true;
>  }
>  
> -static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
> -				      bool take)
> -{
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -	enum port port = dig_port->base.port;
> -
> -	intel_de_rmw(i915, DDI_BUF_CTL(port), DDI_BUF_CTL_TC_PHY_OWNERSHIP,
> -		     take ? DDI_BUF_CTL_TC_PHY_OWNERSHIP : 0);
> -
> -	return true;
> -}
> -
> -static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, bool take)
> -{
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -
> -	if (IS_ALDERLAKE_P(i915))
> -		return adl_tc_phy_take_ownership(dig_port, take);
> -
> -	return icl_tc_phy_take_ownership(dig_port, take);
> -}
> -
>  static bool icl_tc_phy_is_owned(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> @@ -445,26 +359,6 @@ static bool icl_tc_phy_is_owned(struct intel_digital_port *dig_port)
>  	return val & DP_PHY_MODE_STATUS_NOT_SAFE(dig_port->tc_phy_fia_idx);
>  }
>  
> -static bool adl_tc_phy_is_owned(struct intel_digital_port *dig_port)
> -{
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -	enum port port = dig_port->base.port;
> -	u32 val;
> -
> -	val = intel_de_read(i915, DDI_BUF_CTL(port));
> -	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> -}
> -
> -static bool tc_phy_is_owned(struct intel_digital_port *dig_port)
> -{
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -
> -	if (IS_ALDERLAKE_P(i915))
> -		return adl_tc_phy_is_owned(dig_port);
> -
> -	return icl_tc_phy_is_owned(dig_port);
> -}
> -
>  /*
>   * This function implements the first part of the Connect Flow described by our
>   * specification, Gen11 TypeC Programming chapter. The rest of the flow (reading
> @@ -559,6 +453,128 @@ static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
>  	}
>  }
>  
> +/**
> + * ADLP TC PHY handlers
> + * --------------------
> + */
> +static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
> +	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
> +	u32 val, mask = 0;
> +
> +	/*
> +	 * On ADL-P HW/FW will wake from TCCOLD to complete the read access of
> +	 * registers in IOM. Note that this doesn't apply to PHY and FIA
> +	 * registers.
> +	 */
> +	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
> +	if (val & TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT)
> +		mask |= BIT(TC_PORT_DP_ALT);
> +	if (val & TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT)
> +		mask |= BIT(TC_PORT_TBT_ALT);
> +
> +	if (intel_de_read(i915, SDEISR) & isr_bit)
> +		mask |= BIT(TC_PORT_LEGACY);
> +
> +	/* The sink can be connected only in a single mode. */
> +	if (!drm_WARN_ON(&i915->drm, hweight32(mask) > 1))
> +		tc_port_fixup_legacy_flag(dig_port, mask);
> +
> +	return mask;
> +}
> +
> +/*
> + * Return the PHY status complete flag indicating that display can acquire the
> + * PHY ownership. The IOM firmware sets this flag when it's ready to switch
> + * the ownership to display, regardless of what sink is connected (TBT-alt,
> + * DP-alt, legacy or nothing). For TBT-alt sinks the PHY is owned by the TBT
> + * subsystem and so switching the ownership to display is not required.
> + */
> +static bool adl_tc_phy_status_complete(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
> +	u32 val;
> +
> +	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
> +	if (val == 0xffffffff) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Port %s: PHY in TCCOLD, assuming not complete\n",
> +			    dig_port->tc_port_name);
> +		return false;
> +	}
> +
> +	return val & TCSS_DDI_STATUS_READY;
> +}
> +
> +static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
> +				      bool take)
> +{
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	enum port port = dig_port->base.port;
> +
> +	intel_de_rmw(i915, DDI_BUF_CTL(port), DDI_BUF_CTL_TC_PHY_OWNERSHIP,
> +		     take ? DDI_BUF_CTL_TC_PHY_OWNERSHIP : 0);
> +
> +	return true;
> +}
> +
> +static bool adl_tc_phy_is_owned(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	enum port port = dig_port->base.port;
> +	u32 val;
> +
> +	val = intel_de_read(i915, DDI_BUF_CTL(port));
> +	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> +}
> +
> +/**
> + * Generic TC PHY handlers
> + * -----------------------
> + */
> +static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +
> +	if (IS_ALDERLAKE_P(i915))
> +		return adl_tc_port_live_status_mask(dig_port);
> +
> +	return icl_tc_port_live_status_mask(dig_port);
> +}
> +
> +static bool tc_phy_status_complete(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +
> +	if (IS_ALDERLAKE_P(i915))
> +		return adl_tc_phy_status_complete(dig_port);
> +
> +	return icl_tc_phy_status_complete(dig_port);
> +}
> +
> +static bool tc_phy_is_owned(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +
> +	if (IS_ALDERLAKE_P(i915))
> +		return adl_tc_phy_is_owned(dig_port);
> +
> +	return icl_tc_phy_is_owned(dig_port);
> +}
> +
> +static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, bool take)
> +{
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +
> +	if (IS_ALDERLAKE_P(i915))
> +		return adl_tc_phy_take_ownership(dig_port, take);
> +
> +	return icl_tc_phy_take_ownership(dig_port, take);
> +}
> +
>  static bool tc_phy_is_ready_and_owned(struct intel_digital_port *dig_port,
>  				      bool phy_is_ready, bool phy_is_owned)
>  {

-- 
Jani Nikula, Intel Open Source Graphics Center
