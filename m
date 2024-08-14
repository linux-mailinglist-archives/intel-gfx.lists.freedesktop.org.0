Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD54951A01
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2024 13:34:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 961A810E43E;
	Wed, 14 Aug 2024 11:34:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FKj9aI9b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2307C10E43E
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2024 11:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723635290; x=1755171290;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Kojaf9C7GGDVsHahwFLX0sdnwdGQIukvG+9DkCtsEOQ=;
 b=FKj9aI9bWHSgvwrLF7PQZjzk8gxOBAaX+9cE0ts0j4EvhSV316EEkAaE
 CJbe5Wq+etUlk19B3r2+g+O95edZ/wIS+0Gi0qfcBvci4gTn87kMNQAeC
 EwTej/BF07u87PxpGl2fra6PJp32Y9Ydv83vIJ/k58NzhF3xUCP5N3KSR
 E9RxwVS3Kq/DthW+Y2XRWBLIA+nllbbtBJDm2J9G77IM2lPH+kpLvsPO1
 UXBnNSI+1BRKlk+mbh8rW+rDP4F0D5Q7iJtAGj94ka9ilupp0Up+3bbmy
 0CdjzRiNVuJA+fvw5M1ra57/ap3Gyk2mv0/kr4+IgmcC1luU77G9mufS+ Q==;
X-CSE-ConnectionGUID: T39bgSR1SLWVSeIdEROYdQ==
X-CSE-MsgGUID: bJOSgPS/RWKdMj8rOT+WWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="25604850"
X-IronPort-AV: E=Sophos;i="6.09,145,1716274800"; d="scan'208";a="25604850"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 04:34:50 -0700
X-CSE-ConnectionGUID: wK0XBPfLTpyFPFOHPw4EDw==
X-CSE-MsgGUID: KlZvypM0Su+VZqMRnP8O6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,145,1716274800"; d="scan'208";a="63384312"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.62])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 04:34:47 -0700
Date: Wed, 14 Aug 2024 13:34:43 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org, venkata.ramana.nayana@intel.com,
 john.c.harrison@intel.com, chris.p.wilson@intel.com,
 tejas.upadhyay@intel.com
Subject: Re: [PATCH v10] drm/i915: WA context support for L3flush
Message-ID: <ZryWU748yzXFf81B@ashyti-mobl2.lan>
References: <20240813061657.925443-1-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240813061657.925443-1-nitin.r.gote@intel.com>
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

Hi Nitin,

I had a quick read through and just few comments for now.

On Tue, Aug 13, 2024 at 11:46:57AM +0530, Nitin Gote wrote:

...

> Another key requirement is to have this context dummy mapped so that the
> HW doesn't generate any PFs. This H/W issue may cause L3 cached GPUVAs
> which belong to previous context to get associated with the l3flush
> context. So, w/o dummy mapping, HW is expected to PF whenever these stale
> addresses are referenced.
> 
> This patch has been co-developed with John Harrison.

Please, remove this line.

> v2: CONTEXT_WA_L3FLUSH bit set calling function change (Chris)
>     Handled ce and ppgtt leaks (Chris)
> v3: s/setup_dummy_context/setup_wa_l3flush_context (JohnH)
>     Replace firmware wording with IFWI (JohnH)
>     Inplace of REG_BIT(31) use meaningfull BIT define (JohnH)
>     Replace few GUC #def with enum (JohnH)
> v4: Replace 'dummy/wa_l3flush' (JohnH)
> v5 (Tejas): For old IFWI, print warning and let driver proceed (Matt)
>             Adjust IS_DG2 check as G12 does not need this WA (Matt)
>             Use correct WA# (Matt)
>             Rename APIs to dg2 specific (Matt)
> v6 (Tejas): Drop ppgtt->vm ref right after context create (Chris)
>             Change variable to destroy context (Chris)
>             Use MI_LRI for multiple reg ops (Chris)
> v7 (Tejas): MTL does not have BCS0, handled it
> v8 (Tejas): Resolve recursive merge error
> v9 (Tejas): Use s/engine->uncore/engine->i915->uncore (Chris)
>             Modify no.of regs 4->2 for MI_LRI (Chris)
>             Unref ppgtt->vm only for err
>             Modify GEM_BUG_ON for dg2_10/11
>             Handle return value for l3flush context setup
> v10 (Nitin): Rebase this patch.

In which list have been all these versions sent?

> Cc: John Harrison <john.c.harrison@intel.com>

Replace this line with:

Co-developed-by: John Harrison <john.c.harrison@intel.com>
Signed-off-by: John Harrison <john.c.harrison@intel.com>

> Signed-off-by: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

...

>  #define I915_GEM_HWS_MIGRATE		(0x42 * sizeof(u32))
>  #define I915_GEM_HWS_GGTT_BIND		0x46
>  #define I915_GEM_HWS_GGTT_BIND_ADDR	(I915_GEM_HWS_GGTT_BIND * sizeof(u32))
> +#define I915_GEM_HWS_WA_L3FLUSH         0x48
> +#define I915_GEM_HWS_WA_L3FLUSH_ADDR	(I915_GEM_HWS_WA_L3FLUSH * sizeof(u32))

please, use tabs here.

>  #define I915_GEM_HWS_PXP		0x60
>  #define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP * sizeof(u32))
>  #define I915_GEM_HWS_GSC		0x62

...

> +	/* BIT(31) unlockbit manage by IFWI */
> +	if (misccpctl & GEN12_DOP_CLOCK_GATE_LOCK) {
> +		drm_warn(&engine->i915->drm, "MISCCPCTL lockbit set, update IFWI\n");
> +		ret = -EPERM;
> +		return ret;

just return -EPERM.

> +	}
> +
> +	ppgtt = i915_ppgtt_create(engine->gt, 0);
> +	if (IS_ERR(ppgtt))
> +		return PTR_ERR(ppgtt);
> +
> +	ce = intel_engine_create_pinned_context(engine,
> +						&ppgtt->vm, SZ_4K,
> +						I915_GEM_HWS_WA_L3FLUSH_ADDR,
> +						&wa_l3flush, "wa_l3flush_context");
> +	if (IS_ERR(ce)) {
> +		/* Keep this vm isolated! */
> +		i915_vm_put(&ppgtt->vm);

Please, add this in the goto error path because...

> +		return PTR_ERR(ce);
> +	}
> +
> +	/* Ensure this context does not get registered for use as a real context */
> +	__set_bit(CONTEXT_WA_L3FLUSH, &ce->flags);
> +
> +	ret = intel_guc_assign_wa_guc_id(&engine->gt->uc.guc, ce);
> +	if (ret < 0)
> +		goto err;

... you are missing it here

> +	engine->wa_l3flush_context = ce;
> +	i915_vm_put(ce->vm);
> +	return 0;
> +
> +err:
> +	intel_engine_destroy_pinned_context(ce);
> +	return ret;
> +}

...

>  #define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
>  #define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
>  #define   GEN8_DOP_CLOCK_GATE_MEDIA_ENABLE	(1 << 6)
> +#define   GEN12_DOP_CLOCK_GATE_LOCK             REG_BIT(31) /* bits[0, 31] RO */

use tabs

>  
>  #define GEN8_UCGCTL6				_MMIO(0x9430)
>  #define   GEN8_GAPSUNIT_CLOCK_GATE_DISABLE	(1 << 24)

...

> +/*
> + * Global workaround keys.
> + */
> +enum  {
> +	GUC_WORKAROUND_KLV_ID_COPY_ENGINE_SECURITY_WA = 0x301,
> +};

are we expecting more keys? Why a single element enum?

> +
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index 7995f059f30d..b981be11a59c 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -834,10 +834,40 @@ static void guc_waklv_enable_simple(struct intel_guc *guc,
>  	*remain -= size;
>  }
>  
> +/* Wa_14015997824: DG2 */

does it make sense to put this on a different patch?

Andi

> +static void guc_waklv_init_bcs(struct intel_guc *guc, struct intel_context *dummy_ce)
> +{
> +	u32 offset, addr_ggtt, alloc_size, real_size;
> +	u32 klv_entry[] = {
