Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 400FA4EED6B
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 14:47:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2659C10E173;
	Fri,  1 Apr 2022 12:47:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B097010E173
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 12:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648817249; x=1680353249;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Bv1Va18jS3zB1hpvxkGQ7uGwqe/PAkWSD1zKPkKuvEo=;
 b=NlcyYObF265sT+OJE1KPxmCa3nSKUG6XEr73xbKcVUeFm0XJGX5fPQFQ
 miry2RBkqrv52IrFDmHqMyyX3VANGBxRSPUaQV0Yjjl7T6/vMYCovdDRZ
 XELenajfuF+CwpzXLHfkvr3Zo6pdlFrcu/rwg7QwB+3WFZcjpV8M2QiN8
 qIipVAwl4gFEvlwPKcnRMPFvXeTtuoIkYZYMbKAvcT9cxtsn0/RVRmcxP
 6X0e54BE43JaWMhtBL3vneWmb5wBPUy3tEdjVu9dYB9ur28WfCHRqGtLD
 pIXUbnAJ09sTofQlKR2cZ7fLrOrLXeDwCtsKZnpsKr6JhQTR9ZJWA9ED4 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="247635615"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="247635615"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:47:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="567464334"
Received: from kohnenth-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.214])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:47:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220328153445.2578957-1-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220328153445.2578957-1-anusha.srivatsa@intel.com>
Date: Fri, 01 Apr 2022 15:47:24 +0300
Message-ID: <874k3d7yxv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Add DMC_EVT_HTP and
 DMC_EVT_CTL programming
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

On Mon, 28 Mar 2022, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> We need add some checks around DMC reloading to
> prevents the rare possibility of some adversary
> writing to a random mmio register

I've recently merged cleanup to localize all DMC register definitions to
a new file display/intel_dmc_regs.h, and all DMC register access to
intel_dmc.c.

Basically if it's about DMC, it should be in intel_dmc.c, not spread
around.

BR,
Jani.


>
> BSpec: 49193
>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 23 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               | 10 ++++++++
>  2 files changed, 33 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 3dc859032bac..81cc4c658e3f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -29,6 +29,8 @@
>  #include "intel_vga.h"
>  #include "vlv_sideband.h"
>  
> +#define DMC_EVT_HTP_CTL_MAX	8
> +
>  const char *
>  intel_display_power_domain_str(enum intel_display_power_domain domain)
>  {
> @@ -1101,6 +1103,26 @@ static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
>  		 enabled_dbuf_slices);
>  }
>  
> +static void tgl_dmc_mmio_prog(struct drm_i915_private *dev_priv)
> +{
> +	struct intel_dmc *dmc = &dev_priv->dmc;
> +	int i, id;
> +
> +	for (i = 0; i <= DMC_EVT_HTP_CTL_MAX; i++) {
> +		intel_de_write(dev_priv, TGL_MAIN_DMC_EVT_CTL(i), DMC_EVT_CTL_VAL);
> +		intel_de_write(dev_priv, TGL_MAIN_DMC_EVT_HTP(i), DMC_EVT_HTP_VAL);
> +	}
> +	/* Pipe DMC MMIOs */
> +	for (id = 1; i <= DMC_FW_MAX; id++) {
> +		for (i = 0; i <= DMC_EVT_HTP_CTL_MAX; i++) {
> +			intel_de_write(dev_priv, PIPEDMC_EVT_CTL_OFFSET(dmc->dmc_info[id].start_mmioaddr, i),
> +			DMC_EVT_CTL_VAL);
> +			intel_de_write(dev_priv, PIPEDMC_EVT_HTP_OFFSET(dmc->dmc_info[id].start_mmioaddr, i),
> +			DMC_EVT_HTP_VAL);
> +		}
> +	}
> +}
> +
>  static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_cdclk_config cdclk_config = {};
> @@ -1139,6 +1161,7 @@ static void gen9_dc_off_power_well_enable(struct drm_i915_private *dev_priv,
>  					  struct i915_power_well *power_well)
>  {
>  	gen9_disable_dc_states(dev_priv);
> +	tgl_dmc_mmio_prog(dev_priv);
>  }
>  
>  static void gen9_dc_off_power_well_disable(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index a0d652f19ff9..7e3ef777c26d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5525,6 +5525,16 @@
>  #define TGL_DMC_DEBUG3		_MMIO(0x101090)
>  #define DG1_DMC_DEBUG3		_MMIO(0x13415c)
>  
> +/* Main DMC EVT_HTP and EVT_CTL registers  */
> +#define DMC_EVT_CTL_VAL		0x00030100
> +#define DMC_EVT_HTP_VAL		0x00000000
> +#define TGL_MAIN_DMC_EVT_HTP(n)	_MMIO(0x8F004 + (n) * 4)
> +#define TGL_MAIN_DMC_EVT_CTL(n)	_MMIO(0x8F034 + (n) * 4)
> +#define PIPEDMC_EVT_HTP_BASE	0x00004
> +#define PIPEDMC_EVT_CTL_BASE	0x00034
> +#define PIPEDMC_EVT_HTP_OFFSET(addr, i)		_MMIO(addr + PIPEDMC_EVT_HTP_BASE + (i * 4))
> +#define PIPEDMC_EVT_CTL_OFFSET(addr, i)		_MMIO(addr + PIPEDMC_EVT_CTL_BASE + (i * 4))
> +
>  /* Display Internal Timeout Register */
>  #define RM_TIMEOUT		_MMIO(0x42060)
>  #define  MMIO_TIMEOUT_US(us)	((us) << 0)

-- 
Jani Nikula, Intel Open Source Graphics Center
