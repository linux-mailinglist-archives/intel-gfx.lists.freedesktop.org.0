Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 297946480C3
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 11:16:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3132B10E518;
	Fri,  9 Dec 2022 10:16:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F6EB10E518
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 10:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670581001; x=1702117001;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8JEaayol44st2YNsLG/Zg97XdbePLXU3H6C1P0LIJNc=;
 b=ZCkV4LWm66LsGfgA77xW3FhbumGlZUo+MdyEaZCwPf3dmuR4Ix3VnkDv
 6TH7fLdJOS43a9q0etfq9e8MIU2EA2QJpooAXaUjS+dzmrNPHAEe7Dv1H
 9iJQIfqjb1d9ZUeUPTOgwpYEnnFndtBu6D9ck5SwxOYhSC35UkLsY4tXd
 pUsXwP0Y9+Aha2M0xDRPcWGDYuX4UH26IGnsPOyDDBaPmYEqZ0PZlDy07
 5MPWHNj5zQhAIXfZLI97dVcKeJP/IPvUfalRlZROY/9qfq5jakyzGcQyu
 xYEmCBR+DvlFuSg1I52jpNbBd9bdZG6pJFUi5hBleW2cSNoWykxbNouK/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="403685479"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="403685479"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 02:16:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="679886280"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="679886280"
Received: from efoley-mobl2.ger.corp.intel.com (HELO [10.213.214.59])
 ([10.213.214.59])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 02:16:26 -0800
Message-ID: <148f6384-ee73-378a-5ccd-521729924ecf@linux.intel.com>
Date: Fri, 9 Dec 2022 10:16:24 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221207173630.973662-1-andrzej.hajda@intel.com>
 <20221207173630.973662-2-andrzej.hajda@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221207173630.973662-2-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: cleanup TLB invalidation code
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 07/12/2022 17:36, Andrzej Hajda wrote:
> Whole register/bit selection logic has been moved to separate helper.

Why is missing.

> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt.c | 136 +++++++++++------------------
>   1 file changed, 51 insertions(+), 85 deletions(-)

Diffstat suggests because more streamlined code. Any other reason?

> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index f0224b607aa4a7..05520ec3264db8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -1003,32 +1003,59 @@ void intel_gt_info_print(const struct intel_gt_info *info,
>   	intel_sseu_dump(&info->sseu, p);
>   }
>   
> -struct reg_and_bit {
> +struct reg_and_bits {
>   	union {
>   		i915_reg_t reg;
>   		i915_mcr_reg_t mcr_reg;
>   	};
> -	u32 bit;
> +	u32 bits;
>   };
>   
> -static struct reg_and_bit
> -get_reg_and_bit(const struct intel_engine_cs *engine, const bool gen8,
> -		const i915_reg_t *regs, const unsigned int num)
> +static struct reg_and_bits
> +get_tlb_inv_reg_and_bits(const struct intel_engine_cs *engine, bool write)
>   {
> +	static const i915_reg_t gen8_regs[MAX_ENGINE_CLASS + 1] = {
> +		[RENDER_CLASS]			= GEN8_RTCR,
> +		[VIDEO_DECODE_CLASS]		= GEN8_M1TCR,
> +		[VIDEO_ENHANCEMENT_CLASS]	= GEN8_VTCR,
> +		[COPY_ENGINE_CLASS]		= GEN8_BTCR,
> +	};
> +	static const i915_reg_t gen12_regs[MAX_ENGINE_CLASS + 1] = {
> +		[RENDER_CLASS]			= GEN12_GFX_TLB_INV_CR,
> +		[VIDEO_DECODE_CLASS]		= GEN12_VD_TLB_INV_CR,
> +		[VIDEO_ENHANCEMENT_CLASS]	= GEN12_VE_TLB_INV_CR,
> +		[COPY_ENGINE_CLASS]		= GEN12_BLT_TLB_INV_CR,
> +		[COMPUTE_CLASS]			= GEN12_COMPCTX_TLB_INV_CR,
> +	};
> +	static const i915_mcr_reg_t xehp_regs[MAX_ENGINE_CLASS + 1] = {
> +		[RENDER_CLASS]			= XEHP_GFX_TLB_INV_CR,
> +		[VIDEO_DECODE_CLASS]		= XEHP_VD_TLB_INV_CR,
> +		[VIDEO_ENHANCEMENT_CLASS]	= XEHP_VE_TLB_INV_CR,
> +		[COPY_ENGINE_CLASS]		= XEHP_BLT_TLB_INV_CR,
> +		[COMPUTE_CLASS]			= XEHP_COMPCTX_TLB_INV_CR,
> +	};
>   	const unsigned int class = engine->class;
> -	struct reg_and_bit rb = { };
> +	struct reg_and_bits rb = { .bits = BIT(engine->instance) };
>   
> -	if (drm_WARN_ON_ONCE(&engine->i915->drm,
> -			     class >= num || !regs[class].reg))
> +	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
> +		rb.mcr_reg = xehp_regs[class];
> +	else if (GRAPHICS_VER(engine->i915) >= 12)
> +		rb.reg = gen12_regs[class];
> +	else if (GRAPHICS_VER(engine->i915) >= 8)
> +		rb.reg = gen8_regs[class];
> +
> +	if (drm_WARN_ON_ONCE(&engine->i915->drm, !i915_mmio_reg_offset(rb.reg)))

I'd prefer user readable message was kept but not a blocker.

>   		return rb;
>   
> -	rb.reg = regs[class];
> -	if (gen8 && class == VIDEO_DECODE_CLASS)
> -		rb.reg.reg += 4 * engine->instance; /* GEN8_M2TCR */
> -	else
> -		rb.bit = engine->instance;
> +	if (GRAPHICS_VER(engine->i915) < 12 && class == VIDEO_DECODE_CLASS) {
> +		rb.bits = 1;
> +		rb.reg.reg += 4 * engine->instance;

No reason to drop the comment IMO. It explains things somewhat, or at 
least provides a hint.

> +	}
>   
> -	rb.bit = BIT(rb.bit);
> +	if (write && GRAPHICS_VER(engine->i915) >= 12 &&
> +	    (class == VIDEO_DECODE_CLASS || class == VIDEO_ENHANCEMENT_CLASS ||
> +	     class == COMPUTE_CLASS))
> +		rb.bits = _MASKED_BIT_ENABLE(rb.bits);

This could be else if to not have < 12 followed by explicit >= 12, but 
perhaps it is clearer like this, to signify it's two completely separate 
quirks.

Also, I would perhaps consider having a local i915 since there's a good 
number of engine->i915, but it's up to you what looks nicer.

>   
>   	return rb;
>   }
> @@ -1046,14 +1073,14 @@ get_reg_and_bit(const struct intel_engine_cs *engine, const bool gen8,
>    * but are now considered MCR registers.  Since they exist within a GAM range,
>    * the primary instance of the register rolls up the status from each unit.
>    */
> -static int wait_for_invalidate(struct intel_gt *gt, struct reg_and_bit rb)
> +static int wait_for_invalidate(struct intel_gt *gt, struct reg_and_bits rb)
>   {
>   	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50))
> -		return intel_gt_mcr_wait_for_reg(gt, rb.mcr_reg, rb.bit, 0,
> +		return intel_gt_mcr_wait_for_reg(gt, rb.mcr_reg, rb.bits, 0,
>   						 TLB_INVAL_TIMEOUT_US,
>   						 TLB_INVAL_TIMEOUT_MS);
>   	else
> -		return __intel_wait_for_register_fw(gt->uncore, rb.reg, rb.bit, 0,
> +		return __intel_wait_for_register_fw(gt->uncore, rb.reg, rb.bits, 0,
>   						    TLB_INVAL_TIMEOUT_US,
>   						    TLB_INVAL_TIMEOUT_MS,
>   						    NULL);
> @@ -1061,50 +1088,14 @@ static int wait_for_invalidate(struct intel_gt *gt, struct reg_and_bit rb)
>   
>   static void mmio_invalidate_full(struct intel_gt *gt)
>   {
> -	static const i915_reg_t gen8_regs[] = {
> -		[RENDER_CLASS]			= GEN8_RTCR,
> -		[VIDEO_DECODE_CLASS]		= GEN8_M1TCR, /* , GEN8_M2TCR */
> -		[VIDEO_ENHANCEMENT_CLASS]	= GEN8_VTCR,
> -		[COPY_ENGINE_CLASS]		= GEN8_BTCR,
> -	};
> -	static const i915_reg_t gen12_regs[] = {
> -		[RENDER_CLASS]			= GEN12_GFX_TLB_INV_CR,
> -		[VIDEO_DECODE_CLASS]		= GEN12_VD_TLB_INV_CR,
> -		[VIDEO_ENHANCEMENT_CLASS]	= GEN12_VE_TLB_INV_CR,
> -		[COPY_ENGINE_CLASS]		= GEN12_BLT_TLB_INV_CR,
> -		[COMPUTE_CLASS]			= GEN12_COMPCTX_TLB_INV_CR,
> -	};
> -	static const i915_mcr_reg_t xehp_regs[] = {
> -		[RENDER_CLASS]			= XEHP_GFX_TLB_INV_CR,
> -		[VIDEO_DECODE_CLASS]		= XEHP_VD_TLB_INV_CR,
> -		[VIDEO_ENHANCEMENT_CLASS]	= XEHP_VE_TLB_INV_CR,
> -		[COPY_ENGINE_CLASS]		= XEHP_BLT_TLB_INV_CR,
> -		[COMPUTE_CLASS]			= XEHP_COMPCTX_TLB_INV_CR,
> -	};
>   	struct drm_i915_private *i915 = gt->i915;
>   	struct intel_uncore *uncore = gt->uncore;
>   	struct intel_engine_cs *engine;
>   	intel_engine_mask_t awake, tmp;
>   	enum intel_engine_id id;
> -	const i915_reg_t *regs;
> -	unsigned int num = 0;
>   	unsigned long flags;
>   
> -	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
> -		regs = NULL;
> -		num = ARRAY_SIZE(xehp_regs);
> -	} else if (GRAPHICS_VER(i915) == 12) {
> -		regs = gen12_regs;
> -		num = ARRAY_SIZE(gen12_regs);
> -	} else if (GRAPHICS_VER(i915) >= 8 && GRAPHICS_VER(i915) <= 11) {
> -		regs = gen8_regs;
> -		num = ARRAY_SIZE(gen8_regs);
> -	} else if (GRAPHICS_VER(i915) < 8) {
> -		return;
> -	}
> -
> -	if (drm_WARN_ONCE(&i915->drm, !num,
> -			  "Platform does not implement TLB invalidation!"))
> +	if (GRAPHICS_VER(i915) < 8)
>   		return;
>   
>   	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
> @@ -1114,33 +1105,15 @@ static void mmio_invalidate_full(struct intel_gt *gt)
>   
>   	awake = 0;
>   	for_each_engine(engine, gt, id) {
> -		struct reg_and_bit rb;
> +		struct reg_and_bits rb = get_tlb_inv_reg_and_bits(engine, true);

Ugh so actually what was a once per invalidation lookup is now repeated 
per engine, times two. I wonder if we can do this better. Lets think 
about it a bit.

Regards,

Tvrtko

>   
>   		if (!intel_engine_pm_is_awake(engine))
>   			continue;
>   
> -		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
> -			u32 val = BIT(engine->instance);
> -
> -			if (engine->class == VIDEO_DECODE_CLASS ||
> -			    engine->class == VIDEO_ENHANCEMENT_CLASS ||
> -			    engine->class == COMPUTE_CLASS)
> -				val = _MASKED_BIT_ENABLE(val);
> -			intel_gt_mcr_multicast_write_fw(gt,
> -							xehp_regs[engine->class],
> -							val);
> -		} else {
> -			rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
> -			if (!i915_mmio_reg_offset(rb.reg))
> -				continue;
> -
> -			if (GRAPHICS_VER(i915) == 12 && (engine->class == VIDEO_DECODE_CLASS ||
> -			    engine->class == VIDEO_ENHANCEMENT_CLASS ||
> -			    engine->class == COMPUTE_CLASS))
> -				rb.bit = _MASKED_BIT_ENABLE(rb.bit);
> -
> -			intel_uncore_write_fw(uncore, rb.reg, rb.bit);
> -		}
> +		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
> +			intel_gt_mcr_multicast_write_fw(gt, rb.mcr_reg, rb.bits);
> +		else
> +			intel_uncore_write_fw(uncore, rb.reg, rb.bits);
>   		awake |= engine->mask;
>   	}
>   
> @@ -1159,14 +1132,7 @@ static void mmio_invalidate_full(struct intel_gt *gt)
>   	intel_gt_mcr_unlock(gt, flags);
>   
>   	for_each_engine_masked(engine, gt, awake, tmp) {
> -		struct reg_and_bit rb;
> -
> -		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
> -			rb.mcr_reg = xehp_regs[engine->class];
> -			rb.bit = BIT(engine->instance);
> -		} else {
> -			rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
> -		}
> +		struct reg_and_bits rb = get_tlb_inv_reg_and_bits(engine, false);
>   
>   		if (wait_for_invalidate(gt, rb))
>   			drm_err_ratelimited(&gt->i915->drm,
