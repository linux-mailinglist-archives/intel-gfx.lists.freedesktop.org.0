Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F056B2ABD
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 17:30:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A23F810E175;
	Thu,  9 Mar 2023 16:30:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3085610E175
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 16:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678379415; x=1709915415;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6HT0eqgwaXyfnDYfl1VvXEC9mkIFcbjDO+cVqA/PdW8=;
 b=LIJ1nlT9m44zv6ESAMK32K0YNdp2cxFiU7b3CpW+dnV1Xq8bmGSMhfEl
 TkQ27iH5cFgTuKuvxi8WWQ13lGVVE/WZdPhNYeoZcxnWuCqLZjgyADnny
 Wot4KvWx/li0ZbPXTCA09Dj4+a5C4ytbUnANrF2t9KPSNE0keiYMknOUD
 e0mqEGIedRLPOob1eAcjGfL0uYLZE7vIwFXxxGHYj582axiorjc/aaEsj
 mRDmrbPc8A/YPUvOF5gQdDliggqGr16yzMGbLGsmz+iIw5gyQt8dKanTP
 wR1kLqaZYmlLzulK7SVW4st1X/HMTSlAEJnq6bQ6V0juPDhyHPY4SJSeE w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="338039500"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="338039500"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 08:30:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="677438204"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="677438204"
Received: from pmezinca-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.219.71])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 08:30:12 -0800
Date: Thu, 9 Mar 2023 17:30:08 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <ZAoJkJ5VwGRiUDTD@ashyti-mobl2.lan>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
 <20230301201053.928709-2-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230301201053.928709-2-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915/mtl: Fix Wa_16015201720
 implementation
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Radhakrishna,

On Wed, Mar 01, 2023 at 12:10:49PM -0800, Radhakrishna Sripada wrote:
> The commit 2357f2b271ad ("drm/i915/mtl: Initial display workarounds")
> extended the workaround Wa_16015201720 to MTL. However the registers
> that the original WA implemented moved for MTL.
> 
> Implement the workaround with the correct register.
> 
> v3: Skip clock gating for pipe C, D DMC's and fix the title
> 
> Fixes: 2357f2b271ad ("drm/i915/mtl: Initial display workarounds")
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 26 +++++++++++++++++++-----
>  drivers/gpu/drm/i915/i915_reg.h          | 10 ++++++---
>  2 files changed, 28 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index f70ada2357dc..b4283cf319f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -389,15 +389,12 @@ static void disable_all_event_handlers(struct drm_i915_private *i915)
>  	}
>  }
>  
> -static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> +static void adlp_pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
>  {
>  	enum pipe pipe;
>  
> -	if (DISPLAY_VER(i915) < 13)
> -		return;
> -

Why is this not needed anyomore?

>  	/*
> -	 * Wa_16015201720:adl-p,dg2, mtl
> +	 * Wa_16015201720:adl-p,dg2
>  	 * The WA requires clock gating to be disabled all the time
>  	 * for pipe A and B.
>  	 * For pipe C and D clock gating needs to be disabled only
> @@ -413,6 +410,25 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
>  				     PIPEDMC_GATING_DIS, 0);
>  }
>  
> +static void mtl_pipedmc_clock_gating_wa(struct drm_i915_private *i915)
> +{
> +	/*
> +	 * Wa_16015201720
> +	 * The WA requires clock gating to be disabled all the time
> +	 * for pipe A and B.
> +	 */
> +	intel_de_rmw(i915, GEN9_CLKGATE_DIS_0, 0,
> +		     MTL_PIPEDMC_GATING_DIS_A | MTL_PIPEDMC_GATING_DIS_B);
> +}
> +
> +static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> +{
> +	if (DISPLAY_VER(i915) >= 14 && enable)
> +		return mtl_pipedmc_clock_gating_wa(i915);
> +	else if (DISPLAY_VER(i915) == 13)
> +		return adlp_pipedmc_clock_gating_wa(i915, enable);

don't you get an error here? Please don't return anything.

> +}
> +
>  void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
>  {
>  	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c1efa655fb68..7c9ac5b43831 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1794,9 +1794,13 @@
>   * GEN9 clock gating regs
>   */
>  #define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
> -#define   DARBF_GATING_DIS		(1 << 27)
> -#define   PWM2_GATING_DIS		(1 << 14)
> -#define   PWM1_GATING_DIS		(1 << 13)
> +#define   DARBF_GATING_DIS		REG_BIT(27)
> +#define   MTL_PIPEDMC_GATING_DIS_A	REG_BIT(15)
> +#define   MTL_PIPEDMC_GATING_DIS_B	REG_BIT(14)

you could eventually use a GENMASK here and it can be:

#define   MTL_PIPEDMC_GATING_DIS	REG_GENMASK(15, 14)

> +#define   PWM2_GATING_DIS		REG_BIT(14)
> +#define   MTL_PIPEDMC_GATING_DIS_C	REG_BIT(13)

Is this needed?

> +#define   PWM1_GATING_DIS		REG_BIT(13)
> +#define   MTL_PIPEDMC_GATING_DIS_D	REG_BIT(12)

Is this needed?

Thanks,
Andi

>  #define GEN9_CLKGATE_DIS_3		_MMIO(0x46538)
>  #define   TGL_VRH_GATING_DIS		REG_BIT(31)
> -- 
> 2.34.1
