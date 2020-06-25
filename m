Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE20D20A383
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 19:02:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB5986E042;
	Thu, 25 Jun 2020 17:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 533D46E09A
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 17:02:31 +0000 (UTC)
IronPort-SDR: J+r9c/GB6YMepuOGliPKv1jf4CmfTVBrRMCQzXZI9mMW4Wj6VQ2cS9nUrFxjE5OOIeSFYrZ9D8
 uII9m1Xb0KCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="206509373"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="206509373"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 10:02:30 -0700
IronPort-SDR: dfCcG/DaWwj1XBvHwNFhlE974/gugqei7XvpoWfuQyArVPXWt1YZyjJsF/dTcvW1ZuzWEpVBww
 trG1JCXSL8oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="276087604"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.165.21.212])
 by orsmga003.jf.intel.com with ESMTP; 25 Jun 2020 10:02:30 -0700
Date: Thu, 25 Jun 2020 10:03:58 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20200625170358.GA25333@InViCtUs>
References: <20200624215723.2316-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200624215723.2316-1-matthew.s.atwood@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: implement Wa_14011508470;gen12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 24, 2020 at 02:57:23PM -0700, Matt Atwood wrote:

Set the title to drm/i915/gen12: Impl... and let go the semicolon.
> Update code to reflect recent bspec changes
> 
> Bspec: 52890
> Bspec: 53508
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
With the title fixed,
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
>  drivers/gpu/drm/i915/i915_reg.h                    | 6 ++++++
>  2 files changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index c3eeebadc0b8..22395be35364 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -6007,6 +6007,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  {
>  	struct i915_power_domains *power_domains = &dev_priv->power_domains;
>  	struct i915_power_well *well;
> +	u32 val;
>  
>  	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
>  
> @@ -6043,6 +6044,13 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  
>  	if (resume && dev_priv->csr.dmc_payload)
>  		intel_csr_load_program(dev_priv);
> +
> +	/* Wa_14011508470 */
> +	if (IS_GEN(dev_priv, 12)) {
> +		val = DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
> +		      DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR;
> +		intel_uncore_rmw(&dev_priv->uncore, GEN11_CHICKEN_DCPR_2, 0, val);
> +	}
>  }
>  
>  static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 450564e28332..5344d20c9070 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8105,6 +8105,12 @@ enum hardware_error {
>  #define   MASK_WAKEMEM			(1 << 13)
>  #define   CNL_DDI_CLOCK_REG_ACCESS_ON	(1 << 7)
>  
> +#define GEN11_CHICKEN_DCPR_2			_MMIO(0x46434)
> +#define   DCPR_MASK_MAXLATENCY_MEMUP_CLR	REG_BIT(27)
> +#define   DCPR_MASK_LPMODE			REG_BIT(26)
> +#define   DCPR_SEND_RESP_IMM			REG_BIT(25)
> +#define   DCPR_CLEAR_MEMSTAT_DIS		REG_BIT(24)
> +
>  #define SKL_DFSM			_MMIO(0x51000)
>  #define   SKL_DFSM_DISPLAY_PM_DISABLE	(1 << 27)
>  #define   SKL_DFSM_DISPLAY_HDCP_DISABLE	(1 << 25)
> -- 
> 2.21.3
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
