Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8BD422013
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 10:04:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05D6D6E364;
	Tue,  5 Oct 2021 08:04:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 618246E364
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Oct 2021 08:04:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="223097863"
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="223097863"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 01:04:07 -0700
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="438604340"
Received: from gionascu-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.40.237])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 01:04:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, animesh.manna@intel.com
In-Reply-To: <20211005071531.2274972-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211005071531.2274972-1-ankit.k.nautiyal@intel.com>
Date: Tue, 05 Oct 2021 11:04:02 +0300
Message-ID: <87lf3728zx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 05 Oct 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> The low voltage sku check can be ignored as OEMs need to consider that
> when designing the board and then put any limits in VBT.

"can" or "must"?

VBT has been notoriously buggy over the years, and we need to safeguard
against that. Are there any cases where having these checks are wrong?

BR,
Jani.

> Same is now changed in Bspec (53720).
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 32 +++----------------------
>  1 file changed, 3 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 74a657ae131a..75c364c3c88e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -297,23 +297,13 @@ static int dg2_max_source_rate(struct intel_dp *intel_dp)
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
> @@ -321,23 +311,7 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
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
> @@ -380,7 +354,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  			max_rate = dg2_max_source_rate(intel_dp);
>  		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
>  			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> -			max_rate = dg1_max_source_rate(intel_dp);
> +			max_rate = 810000;
>  		else if (IS_JSL_EHL(dev_priv))
>  			max_rate = ehl_max_source_rate(intel_dp);
>  		else

-- 
Jani Nikula, Intel Open Source Graphics Center
