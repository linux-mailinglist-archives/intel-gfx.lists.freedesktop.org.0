Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32081399BF3
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 09:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7E26F41A;
	Thu,  3 Jun 2021 07:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2138B6F41C
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 07:49:22 +0000 (UTC)
IronPort-SDR: vUsTCaRif3hQJSm4ULcSvT8d8TMaU2Nl2XUXPBW4wmj9S3Y7RK6PMhcHefHM24TnCCTeiw7/Gf
 t/7sgIjweXTw==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="184362539"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="184362539"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 00:49:06 -0700
IronPort-SDR: RJj8+bK4qvi8nmfg3KAUUhrSdzNi9kIEpEzFFeIRlpplqH9yw4Krsm+LUFYbutIf/LQwxpbCpS
 0kfPXygFS1aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="633610929"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by fmsmga006.fm.intel.com with ESMTP; 03 Jun 2021 00:49:05 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 3 Jun 2021 08:49:04 +0100
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2242.008;
 Thu, 3 Jun 2021 08:49:04 +0100
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adl_p: CDCLK crawl support for ADL
Thread-Index: AQHXWERPzJ1y//YhI0ClhqJ/574HsqsB6S4g
Date: Thu, 3 Jun 2021 07:49:04 +0000
Message-ID: <64d081808dd64ce3a57405ffb7144106@intel.com>
References: <20210603065038.7298-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20210603065038.7298-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.184.70.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_p: CDCLK crawl support for ADL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Stanislav Lisovskiy
> Sent: Thursday, June 3, 2021 9:51 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915/adl_p: CDCLK crawl support for ADL
> 
> CDCLK crawl feature allows to change CDCLK frequency without disabling the
> actual PLL and doesn't require a full modeset.
> 
> v2: - Added has_cdclk_crawl as a feature flag to
>       intel_device_info(Matt Roper)
>     - s/gen13_cdclk_pll_crawl/adlp_cdclk_pll_crawl/
>       (Matt Roper)
> 
> Cc: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 72 +++++++++++++++++++---
>  drivers/gpu/drm/i915/i915_pci.c            |  1 +
>  drivers/gpu/drm/i915/i915_reg.h            |  2 +
>  drivers/gpu/drm/i915/intel_device_info.h   |  2 +
>  4 files changed, 68 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 4656a6edc3be..f24bd9cf1318 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1547,6 +1547,35 @@ static void cnl_cdclk_pll_enable(struct
> drm_i915_private *dev_priv, int vco)
>  	dev_priv->cdclk.hw.vco = vco;
>  }
> 
> +static bool has_cdclk_crawl(struct drm_i915_private *i915) {
> +	return INTEL_INFO(i915)->has_cdclk_crawl;
> +}
> +
> +static void adlp_cdclk_pll_crawl(struct drm_i915_private *dev_priv, int
> +vco) {
> +	int ratio = DIV_ROUND_CLOSEST(vco, dev_priv->cdclk.hw.ref);
> +	u32 val;
> +
> +	/* Write PLL ratio without disabling */
> +	val = CNL_CDCLK_PLL_RATIO(ratio) | BXT_DE_PLL_PLL_ENABLE;
> +	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
> +
> +	/* Submit freq change request */
> +	val |= BXT_DE_PLL_FREQ_REQ;
> +	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
> +
> +	/* Timeout 200us */
> +	if (intel_de_wait_for_set(dev_priv, BXT_DE_PLL_ENABLE,
> +				  BXT_DE_PLL_LOCK |
> BXT_DE_PLL_FREQ_REQ_ACK, 1))
> +		DRM_ERROR("timeout waiting for FREQ change request
> ack\n");
> +
> +	val &= ~BXT_DE_PLL_FREQ_REQ;
> +	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
> +
> +	dev_priv->cdclk.hw.vco = vco;
> +}
> +
>  static u32 bxt_cdclk_cd2x_pipe(struct drm_i915_private *dev_priv, enum
> pipe pipe)  {
>  	if (DISPLAY_VER(dev_priv) >= 12) {
> @@ -1619,14 +1648,16 @@ static void bxt_set_cdclk(struct
> drm_i915_private *dev_priv,
>  		return;
>  	}
> 
> -	if (DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) {
> +	if (has_cdclk_crawl(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco
> > 0) {
> +		if (dev_priv->cdclk.hw.vco != vco)
> +			adlp_cdclk_pll_crawl(dev_priv, vco);
> +	} else if (DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv))
> {
>  		if (dev_priv->cdclk.hw.vco != 0 &&
>  		    dev_priv->cdclk.hw.vco != vco)
>  			cnl_cdclk_pll_disable(dev_priv);
> 
>  		if (dev_priv->cdclk.hw.vco != vco)
>  			cnl_cdclk_pll_enable(dev_priv, vco);
> -
>  	} else {
>  		if (dev_priv->cdclk.hw.vco != 0 &&
>  		    dev_priv->cdclk.hw.vco != vco)
> @@ -1819,6 +1850,28 @@ void intel_cdclk_uninit_hw(struct
> drm_i915_private *i915)
>  		skl_cdclk_uninit_hw(i915);
>  }
> 
> +static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
> +				  const struct intel_cdclk_config *a,
> +				  const struct intel_cdclk_config *b) {
> +	int a_div, b_div;
> +
> +	if (!has_cdclk_crawl(dev_priv))
> +		return false;
> +
> +	/*
> +	 * The vco and cd2x divider will change independently
> +	 * from each, so we disallow cd2x change when crawling.
> +	 */
> +	a_div = DIV_ROUND_CLOSEST(a->vco, a->cdclk);
> +	b_div = DIV_ROUND_CLOSEST(b->vco, b->cdclk);
> +
> +	return a->vco != 0 && b->vco != 0 &&
> +		a->vco != b->vco &&
> +		a_div == b_div &&
> +		a->ref == b->ref;
> +}
> +
>  /**
>   * intel_cdclk_needs_modeset - Determine if changong between the CDCLK
>   *                             configurations requires a modeset on all pipes
> @@ -2462,7 +2515,7 @@ int intel_modeset_calc_cdclk(struct
> intel_atomic_state *state)
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
>  	const struct intel_cdclk_state *old_cdclk_state;
>  	struct intel_cdclk_state *new_cdclk_state;
> -	enum pipe pipe;
> +	enum pipe pipe = INVALID_PIPE;
>  	int ret;
> 
>  	new_cdclk_state = intel_atomic_get_cdclk_state(state);
> @@ -2514,15 +2567,18 @@ int intel_modeset_calc_cdclk(struct
> intel_atomic_state *state)
> 
>  		if (drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
>  			pipe = INVALID_PIPE;
> -	} else {
> -		pipe = INVALID_PIPE;
>  	}
> 
> -	if (pipe != INVALID_PIPE) {
> +	if (intel_cdclk_can_crawl(dev_priv,
> +				  &old_cdclk_state->actual,
> +				  &new_cdclk_state->actual)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Can change cdclk via crawl\n");
> +	} else if (pipe != INVALID_PIPE) {
>  		new_cdclk_state->pipe = pipe;
> 
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "Can change cdclk with pipe %c active\n",
> +			    "Can change cdclk cd2x divider with pipe %c
> active\n",
>  			    pipe_name(pipe));
>  	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
>  					     &new_cdclk_state->actual)) {
> @@ -2531,8 +2587,6 @@ int intel_modeset_calc_cdclk(struct
> intel_atomic_state *state)
>  		if (ret)
>  			return ret;
> 
> -		new_cdclk_state->pipe = INVALID_PIPE;
> -
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Modeset required for cdclk change\n");
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_pci.c
> b/drivers/gpu/drm/i915/i915_pci.c index 97c98f4fb265..83b500bb170c
> 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -953,6 +953,7 @@ static const struct intel_device_info adl_p_info = {
>  	GEN12_FEATURES,
>  	XE_LPD_FEATURES,
>  	PLATFORM(INTEL_ALDERLAKE_P),
> +	.has_cdclk_crawl = 1,
>  	.require_force_probe = 1,
>  	.display.has_modular_fia = 1,
>  	.platform_engine_mask =
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 24307c49085f..c9963b615dd3
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -10993,6 +10993,8 @@ enum skl_power_gate {
>  #define BXT_DE_PLL_ENABLE		_MMIO(0x46070)
>  #define   BXT_DE_PLL_PLL_ENABLE		(1 << 31)
>  #define   BXT_DE_PLL_LOCK		(1 << 30)
> +#define   BXT_DE_PLL_FREQ_REQ		(1 << 23)
> +#define   BXT_DE_PLL_FREQ_REQ_ACK	(1 << 22)
>  #define   CNL_CDCLK_PLL_RATIO(x)	(x)
>  #define   CNL_CDCLK_PLL_RATIO_MASK	0xff
> 
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h
> b/drivers/gpu/drm/i915/intel_device_info.h
> index 1390fad5ec06..b326aff65cd6 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -185,6 +185,8 @@ struct intel_device_info {
> 
>  	u8 abox_mask;
> 
> +	u8 has_cdclk_crawl;  /* does support CDCLK crawling */
> +
>  #define DEFINE_FLAG(name) u8 name:1
>  	DEV_INFO_FOR_EACH_FLAG(DEFINE_FLAG);
>  #undef DEFINE_FLAG
> --
> 2.24.1.485.gad05a3d8e5
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
