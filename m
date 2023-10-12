Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A665F7C6DC4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:16:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 169C110E4C1;
	Thu, 12 Oct 2023 12:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47FF810E4C1
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697112965; x=1728648965;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=AgZFNaxzj7Mp3Twb+PKsfTMw6lgqq4iCvNSQgS7rRWI=;
 b=MD9PQEPb49YZi6R4YVPTXOjzirzyUB/wUDp/aDKfyvvz28UpBJaPehEl
 g9Xg7HYGGzLASWMIUtBZhM+bPaC/d9ko/S8sTFL/9AbLDM30QXf/9Vmbr
 YIuUHjHJgljXX5VeNGXANctIehHfy6pskWIVmgmIPSIVJ+7lU/68vRzhc
 71+VFPeI2eKIPM82y3OyihHs95RJsFVoEPa/kBH3w0d/hGtzZyQGHPWF5
 yfXAcWobscK8wXrZCzZN08Pqfcwc91vOm5FVPk2Wrws+2mHZRv33iLFw1
 51+udswb/nuS4h28yT1cOb/1OrSZaW4pRVALaM8xQlxGC8sfm9FxgoZKf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="451390413"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="451390413"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:16:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="754225760"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="754225760"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.58.232])
 ([10.252.58.232])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:16:04 -0700
Message-ID: <677df522-1bc1-28a1-19bc-48d33863151e@linux.intel.com>
Date: Thu, 12 Oct 2023 14:16:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231011201533.1081368-1-jani.nikula@intel.com>
 <20231011201533.1081368-2-jani.nikula@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20231011201533.1081368-2-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/aux: rename dev_priv to i915
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


On 10/11/2023 10:15 PM, Jani Nikula wrote:
> No reason to stick to dev_priv, rename to i915.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_dp_aux.c | 58 ++++++++++-----------
>   1 file changed, 28 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index c106598a78c5..2e2af71bcd5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -74,7 +74,7 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>   
>   static u32 g4x_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
>   {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>   
>   	if (index)
>   		return 0;
> @@ -83,12 +83,12 @@ static u32 g4x_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
>   	 * The clock divider is based off the hrawclk, and would like to run at
>   	 * 2MHz.  So, take the hrawclk value and divide by 2000 and use that
>   	 */
> -	return DIV_ROUND_CLOSEST(RUNTIME_INFO(dev_priv)->rawclk_freq, 2000);
> +	return DIV_ROUND_CLOSEST(RUNTIME_INFO(i915)->rawclk_freq, 2000);
>   }
>   
>   static u32 ilk_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
>   {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	u32 freq;
>   
> @@ -101,18 +101,18 @@ static u32 ilk_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
>   	 * divide by 2000 and use that
>   	 */
>   	if (dig_port->aux_ch == AUX_CH_A)
> -		freq = dev_priv->display.cdclk.hw.cdclk;
> +		freq = i915->display.cdclk.hw.cdclk;
>   	else
> -		freq = RUNTIME_INFO(dev_priv)->rawclk_freq;
> +		freq = RUNTIME_INFO(i915)->rawclk_freq;
>   	return DIV_ROUND_CLOSEST(freq, 2000);
>   }
>   
>   static u32 hsw_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
>   {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   
> -	if (dig_port->aux_ch != AUX_CH_A && HAS_PCH_LPT_H(dev_priv)) {
> +	if (dig_port->aux_ch != AUX_CH_A && HAS_PCH_LPT_H(i915)) {
>   		/* Workaround for non-ULT HSW */
>   		switch (index) {
>   		case 0: return 63;
> @@ -165,12 +165,11 @@ static u32 g4x_get_aux_send_ctl(struct intel_dp *intel_dp,
>   				u32 aux_clock_divider)
>   {
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> -	struct drm_i915_private *dev_priv =
> -			to_i915(dig_port->base.base.dev);
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>   	u32 timeout;
>   
>   	/* Max timeout value on G4x-BDW: 1.6ms */
> -	if (IS_BROADWELL(dev_priv))
> +	if (IS_BROADWELL(i915))
>   		timeout = DP_AUX_CH_CTL_TIME_OUT_600us;
>   	else
>   		timeout = DP_AUX_CH_CTL_TIME_OUT_400us;
> @@ -229,8 +228,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>   		  u32 aux_send_ctl_flags)
>   {
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> -	struct drm_i915_private *i915 =
> -			to_i915(dig_port->base.base.dev);
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>   	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>   	bool is_tc_port = intel_phy_is_tc(i915, phy);
>   	i915_reg_t ch_ctl, ch_data[5];
> @@ -715,7 +713,7 @@ static i915_reg_t tgl_aux_data_reg(struct intel_dp *intel_dp, int index)
>   
>   static i915_reg_t xelpdp_aux_ctl_reg(struct intel_dp *intel_dp)
>   {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	enum aux_ch aux_ch = dig_port->aux_ch;
>   
> @@ -726,16 +724,16 @@ static i915_reg_t xelpdp_aux_ctl_reg(struct intel_dp *intel_dp)
>   	case AUX_CH_USBC2:
>   	case AUX_CH_USBC3:
>   	case AUX_CH_USBC4:
> -		return XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch);
> +		return XELPDP_DP_AUX_CH_CTL(i915, aux_ch);
>   	default:
>   		MISSING_CASE(aux_ch);
> -		return XELPDP_DP_AUX_CH_CTL(dev_priv, AUX_CH_A);
> +		return XELPDP_DP_AUX_CH_CTL(i915, AUX_CH_A);
>   	}
>   }
>   
>   static i915_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
>   {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	enum aux_ch aux_ch = dig_port->aux_ch;
>   
> @@ -746,10 +744,10 @@ static i915_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
>   	case AUX_CH_USBC2:
>   	case AUX_CH_USBC3:
>   	case AUX_CH_USBC4:
> -		return XELPDP_DP_AUX_CH_DATA(dev_priv, aux_ch, index);
> +		return XELPDP_DP_AUX_CH_DATA(i915, aux_ch, index);
>   	default:
>   		MISSING_CASE(aux_ch);
> -		return XELPDP_DP_AUX_CH_DATA(dev_priv, AUX_CH_A, index);
> +		return XELPDP_DP_AUX_CH_DATA(i915, AUX_CH_A, index);
>   	}
>   }
>   
> @@ -763,25 +761,25 @@ void intel_dp_aux_fini(struct intel_dp *intel_dp)
>   
>   void intel_dp_aux_init(struct intel_dp *intel_dp)
>   {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	struct intel_encoder *encoder = &dig_port->base;
>   	enum aux_ch aux_ch = dig_port->aux_ch;
>   	char buf[AUX_CH_NAME_BUFSIZE];
>   
> -	if (DISPLAY_VER(dev_priv) >= 14) {
> +	if (DISPLAY_VER(i915) >= 14) {
>   		intel_dp->aux_ch_ctl_reg = xelpdp_aux_ctl_reg;
>   		intel_dp->aux_ch_data_reg = xelpdp_aux_data_reg;
> -	} else if (DISPLAY_VER(dev_priv) >= 12) {
> +	} else if (DISPLAY_VER(i915) >= 12) {
>   		intel_dp->aux_ch_ctl_reg = tgl_aux_ctl_reg;
>   		intel_dp->aux_ch_data_reg = tgl_aux_data_reg;
> -	} else if (DISPLAY_VER(dev_priv) >= 9) {
> +	} else if (DISPLAY_VER(i915) >= 9) {
>   		intel_dp->aux_ch_ctl_reg = skl_aux_ctl_reg;
>   		intel_dp->aux_ch_data_reg = skl_aux_data_reg;
> -	} else if (HAS_PCH_SPLIT(dev_priv)) {
> +	} else if (HAS_PCH_SPLIT(i915)) {
>   		intel_dp->aux_ch_ctl_reg = ilk_aux_ctl_reg;
>   		intel_dp->aux_ch_data_reg = ilk_aux_data_reg;
> -	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> +	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
>   		intel_dp->aux_ch_ctl_reg = vlv_aux_ctl_reg;
>   		intel_dp->aux_ch_data_reg = vlv_aux_data_reg;
>   	} else {
> @@ -789,26 +787,26 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>   		intel_dp->aux_ch_data_reg = g4x_aux_data_reg;
>   	}
>   
> -	if (DISPLAY_VER(dev_priv) >= 9)
> +	if (DISPLAY_VER(i915) >= 9)
>   		intel_dp->get_aux_clock_divider = skl_get_aux_clock_divider;
> -	else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> +	else if (IS_BROADWELL(i915) || IS_HASWELL(i915))
>   		intel_dp->get_aux_clock_divider = hsw_get_aux_clock_divider;
> -	else if (HAS_PCH_SPLIT(dev_priv))
> +	else if (HAS_PCH_SPLIT(i915))
>   		intel_dp->get_aux_clock_divider = ilk_get_aux_clock_divider;
>   	else
>   		intel_dp->get_aux_clock_divider = g4x_get_aux_clock_divider;
>   
> -	if (DISPLAY_VER(dev_priv) >= 9)
> +	if (DISPLAY_VER(i915) >= 9)
>   		intel_dp->get_aux_send_ctl = skl_get_aux_send_ctl;
>   	else
>   		intel_dp->get_aux_send_ctl = g4x_get_aux_send_ctl;
>   
> -	intel_dp->aux.drm_dev = &dev_priv->drm;
> +	intel_dp->aux.drm_dev = &i915->drm;
>   	drm_dp_aux_init(&intel_dp->aux);
>   
>   	/* Failure to allocate our preferred name is not critical */
>   	intel_dp->aux.name = kasprintf(GFP_KERNEL, "AUX %s/%s",
> -				       aux_ch_name(dev_priv, buf, sizeof(buf), aux_ch),
> +				       aux_ch_name(i915, buf, sizeof(buf), aux_ch),
>   				       encoder->base.name);
>   
>   	intel_dp->aux.transfer = intel_dp_aux_transfer;
