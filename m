Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C605164B84F
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 16:22:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E04410E32F;
	Tue, 13 Dec 2022 15:22:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85D1B10E32F;
 Tue, 13 Dec 2022 15:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670944928; x=1702480928;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=L71Chqtos+Sg8A4a3rAV+qevVNGyX3TvtLAte+gKzwo=;
 b=Z9JYayUajpDfINd5s9ecTYmMRRpZtAFJaVndltFkNvnsWY6D/JheUC1f
 B7OYeYgRXlgmLgbkGPFi6rmi/VWsiXgn9s7QDZFlYCe5xByw5IZgx7dZF
 vzCTTSUzgBQ5oAP+YaXQ06ip4D7uBVhRv7XPkVkzdW75kRL5Rqv95vN6S
 IpgjrUDssX6dwHhCEUWx33sfyJ6q7Svm5EITQccEhDDpBbuwoMvY68wnH
 MsBcOGJMI8mOq/TGR/aliTeUhB+P8VnV8WkBHmCTP78J0quTt81SWbVW3
 qYLGhKkPnMXEToPwyQWDq3/Z1+HlK7QCNUsETkD2qFw1clTW2KNT8LeN3 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="380361835"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="380361835"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 07:22:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="650768735"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="650768735"
Received: from lherman-mobl.ger.corp.intel.com (HELO [10.213.234.101])
 ([10.213.234.101])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 07:22:06 -0800
Message-ID: <57262bf1-3e35-32a2-c527-d7fb9f18f356@linux.intel.com>
Date: Tue, 13 Dec 2022 15:22:04 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, Intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20221213123917.4066375-1-tvrtko.ursulin@linux.intel.com>
 <20221213123917.4066375-2-tvrtko.ursulin@linux.intel.com>
 <e51aa6f3-cc26-4fad-3ef2-591bf9715399@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <e51aa6f3-cc26-4fad-3ef2-591bf9715399@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Consolidate TLB invalidation
 flow
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


On 13/12/2022 14:52, Andrzej Hajda wrote:
> On 13.12.2022 13:39, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> As the logic for selecting the register and corresponsing values grew, 
>> the
>> code become a bit unsightly. Consolidate by storing the required 
>> values at
>> engine init time in the engine itself, and by doing so minimise the 
>> amount
>> of invariant platform and engine checks during each and every TLB
>> invalidation.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>> ---
>> I think this looks nicer, but I don't really want to merge any flavour of
>> consolidation until we get IGT coverage for the issue upstreamed.
> 
> 
> Yep, the important is to have 1st patch merged.

Agreed.

1)
Can you send it standalone so it gets CI results and can get merged?

2)
Could you check internally where did gem_exec_tlb get stuck?

>> ---
>>   drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  81 ++++++++++++
>>   drivers/gpu/drm/i915/gt/intel_engine_types.h |  16 +++
>>   drivers/gpu/drm/i915/gt/intel_gt.c           | 126 ++++---------------
>>   3 files changed, 120 insertions(+), 103 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c 
>> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> index 99c4b866addd..97cdd9853e38 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> @@ -1143,6 +1143,84 @@ static int init_status_page(struct 
>> intel_engine_cs *engine)
>>       return ret;
>>   }
>> +static bool intel_engine_init_tlb_invalidation(struct intel_engine_cs 
>> *engine)
>> +{
>> +    static const union intel_engine_tlb_inv_reg gen8_regs[] = {
>> +        [RENDER_CLASS].reg        = GEN8_RTCR,
>> +        [VIDEO_DECODE_CLASS].reg    = GEN8_M1TCR, /* , GEN8_M2TCR */
>> +        [VIDEO_ENHANCEMENT_CLASS].reg    = GEN8_VTCR,
>> +        [COPY_ENGINE_CLASS].reg        = GEN8_BTCR,
>> +    };
>> +    static const union intel_engine_tlb_inv_reg gen12_regs[] = {
>> +        [RENDER_CLASS].reg        = GEN12_GFX_TLB_INV_CR,
>> +        [VIDEO_DECODE_CLASS].reg    = GEN12_VD_TLB_INV_CR,
>> +        [VIDEO_ENHANCEMENT_CLASS].reg    = GEN12_VE_TLB_INV_CR,
>> +        [COPY_ENGINE_CLASS].reg        = GEN12_BLT_TLB_INV_CR,
>> +        [COMPUTE_CLASS].reg        = GEN12_COMPCTX_TLB_INV_CR,
>> +    };
>> +    static const union intel_engine_tlb_inv_reg xehp_regs[] = {
>> +        [RENDER_CLASS].mcr_reg          = XEHP_GFX_TLB_INV_CR,
>> +        [VIDEO_DECODE_CLASS].mcr_reg      = XEHP_VD_TLB_INV_CR,
>> +        [VIDEO_ENHANCEMENT_CLASS].mcr_reg = XEHP_VE_TLB_INV_CR,
>> +        [COPY_ENGINE_CLASS].mcr_reg      = XEHP_BLT_TLB_INV_CR,
>> +        [COMPUTE_CLASS].mcr_reg          = XEHP_COMPCTX_TLB_INV_CR,
>> +    };
>> +    struct drm_i915_private *i915 = engine->i915;
>> +    const union intel_engine_tlb_inv_reg *regs;
>> +    union intel_engine_tlb_inv_reg reg;
>> +    unsigned int class = engine->class;
>> +    unsigned int num = 0;
>> +    u32 val;
>> +
>> +    if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
>> +        regs = xehp_regs;
>> +        num = ARRAY_SIZE(xehp_regs);
>> +    } else if (GRAPHICS_VER(i915) == 12) {
>> +        regs = gen12_regs;
>> +        num = ARRAY_SIZE(gen12_regs);
>> +    } else if (GRAPHICS_VER(i915) >= 8 && GRAPHICS_VER(i915) <= 11) {
> 
> "GRAPHICS_VER(i915) <= 11" seems redundant.

Code movement... Fixes: "patch which added >= 12,50" to clean just that 
part up. Before it was deliberately made to hit the below warn on so 
that any new platform added requires a human checking if the registers 
are still same and compatible. (Instead of assuming future platforms 
remain compatible - which is IMO too big risk to take.)

> 
>> +        regs = gen8_regs;
>> +        num = ARRAY_SIZE(gen8_regs);
>> +    } else if (GRAPHICS_VER(i915) < 8) {
> 
> ditto

How? We want to do nothing before gen 8.

>> +        return false;
>> +    }
>> +
>> +    if (drm_WARN_ONCE(&i915->drm, !num,
>> +              "Platform does not implement TLB invalidation!"))
>> +        return false;
> 
> It never happens.

As above a) it's just code movement and b) it would be safer if it could 
happen.

>> +
>> +    if (drm_WARN_ON_ONCE(&i915->drm,
>> +                 class >= num ||
>> +                 (!regs[class].reg.reg &&
>> +                  !regs[class].mcr_reg.reg)))
>> +        return false;
>> +
>> +    reg = regs[class];
>> +
>> +    if (GRAPHICS_VER(i915) == 8 && class == VIDEO_DECODE_CLASS) {
>> +        reg.reg.reg += 4 * engine->instance; /* GEN8_M2TCR */
>> +        val = 0;
>> +    } else {
>> +        val = engine->instance;
>> +    }
>> +
>> +    val = BIT(val);
>> +
>> +    engine->tlb_inv.mcr = regs == xehp_regs;
>> +    engine->tlb_inv.reg = reg;
>> +    engine->tlb_inv.done = val;
>> +
>> +    if (GRAPHICS_VER(i915) >= 12 &&
>> +        (engine->class == VIDEO_DECODE_CLASS ||
>> +         engine->class == VIDEO_ENHANCEMENT_CLASS ||
>> +         engine->class == COMPUTE_CLASS))
>> +        engine->tlb_inv.request = _MASKED_BIT_ENABLE(val);
>> +    else
>> +        engine->tlb_inv.request = val;
>> +
>> +    return true;
>> +}
>> +
>>   static int engine_setup_common(struct intel_engine_cs *engine)
>>   {
>>       int err;
>> @@ -1182,6 +1260,9 @@ static int engine_setup_common(struct 
>> intel_engine_cs *engine)
>>       intel_engine_init_whitelist(engine);
>>       intel_engine_init_ctx_wa(engine);
>> +    if (intel_engine_init_tlb_invalidation(engine))
>> +        engine->flags |= I915_ENGINE_HAS_TLB_INVALIDATION;
>> +
>>       if (GRAPHICS_VER(engine->i915) >= 12)
>>           engine->flags |= I915_ENGINE_HAS_RELATIVE_MMIO;
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h 
>> b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> index 4fd54fb8810f..8df4a09a6022 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> @@ -341,6 +341,19 @@ struct intel_engine_guc_stats {
>>       u64 start_gt_clk;
>>   };
>> +union intel_engine_tlb_inv_reg {
>> +    i915_reg_t    reg;
>> +    i915_mcr_reg_t    mcr_reg;
>> +};
>> +
>> +struct intel_engine_tlb_inv
>> +{
>> +    bool mcr;
>> +    union intel_engine_tlb_inv_reg reg;
>> +    u32 request;
>> +    u32 done;
>> +};
>> +
>>   struct intel_engine_cs {
>>       struct drm_i915_private *i915;
>>       struct intel_gt *gt;
>> @@ -372,6 +385,8 @@ struct intel_engine_cs {
>>       u32 context_size;
>>       u32 mmio_base;
>> +    struct intel_engine_tlb_inv tlb_inv;
>> +
>>       /*
>>        * Some w/a require forcewake to be held (which prevents RC6) while
>>        * a particular engine is active. If so, we set fw_domain to which
>> @@ -556,6 +571,7 @@ struct intel_engine_cs {
>>   #define I915_ENGINE_HAS_EU_PRIORITY    BIT(10)
>>   #define I915_ENGINE_FIRST_RENDER_COMPUTE BIT(11)
>>   #define I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT BIT(12)
>> +#define I915_ENGINE_HAS_TLB_INVALIDATION BIT(13)
>>       unsigned int flags;
>>       /*
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c 
>> b/drivers/gpu/drm/i915/gt/intel_gt.c
>> index 7eeee5a7cb33..df7afff16fd6 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>> @@ -983,36 +983,6 @@ void intel_gt_info_print(const struct 
>> intel_gt_info *info,
>>       intel_sseu_dump(&info->sseu, p);
>>   }
>> -struct reg_and_bit {
>> -    union {
>> -        i915_reg_t reg;
>> -        i915_mcr_reg_t mcr_reg;
>> -    };
>> -    u32 bit;
>> -};
>> -
>> -static struct reg_and_bit
>> -get_reg_and_bit(const struct intel_engine_cs *engine, const bool gen8,
>> -        const i915_reg_t *regs, const unsigned int num)
>> -{
>> -    const unsigned int class = engine->class;
>> -    struct reg_and_bit rb = { };
>> -
>> -    if (drm_WARN_ON_ONCE(&engine->i915->drm,
>> -                 class >= num || !regs[class].reg))
>> -        return rb;
>> -
>> -    rb.reg = regs[class];
>> -    if (gen8 && class == VIDEO_DECODE_CLASS)
>> -        rb.reg.reg += 4 * engine->instance; /* GEN8_M2TCR */
>> -    else
>> -        rb.bit = engine->instance;
>> -
>> -    rb.bit = BIT(rb.bit);
>> -
>> -    return rb;
>> -}
>> -
>>   /*
>>    * HW architecture suggest typical invalidation time at 40us,
>>    * with pessimistic cases up to 100us and a recommendation to
>> @@ -1026,14 +996,20 @@ get_reg_and_bit(const struct intel_engine_cs 
>> *engine, const bool gen8,
>>    * but are now considered MCR registers.  Since they exist within a 
>> GAM range,
>>    * the primary instance of the register rolls up the status from 
>> each unit.
>>    */
>> -static int wait_for_invalidate(struct intel_gt *gt, struct 
>> reg_and_bit rb)
>> +static int wait_for_invalidate(struct intel_engine_cs *engine)
>>   {
>> -    if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50))
>> -        return intel_gt_mcr_wait_for_reg(gt, rb.mcr_reg, rb.bit, 0,
>> +    if (engine->tlb_inv.mcr)
>> +        return intel_gt_mcr_wait_for_reg(engine->gt,
>> +                         engine->tlb_inv.reg.mcr_reg,
>> +                         engine->tlb_inv.done,
>> +                         0,
>>                            TLB_INVAL_TIMEOUT_US,
>>                            TLB_INVAL_TIMEOUT_MS);
>>       else
>> -        return __intel_wait_for_register_fw(gt->uncore, rb.reg, 
>> rb.bit, 0,
>> +        return __intel_wait_for_register_fw(engine->gt->uncore,
>> +                            engine->tlb_inv.reg.reg,
>> +                            engine->tlb_inv.done,
>> +                            0,
>>                               TLB_INVAL_TIMEOUT_US,
>>                               TLB_INVAL_TIMEOUT_MS,
>>                               NULL);
>> @@ -1041,50 +1017,14 @@ static int wait_for_invalidate(struct intel_gt 
>> *gt, struct reg_and_bit rb)
>>   static void mmio_invalidate_full(struct intel_gt *gt)
>>   {
>> -    static const i915_reg_t gen8_regs[] = {
>> -        [RENDER_CLASS]            = GEN8_RTCR,
>> -        [VIDEO_DECODE_CLASS]        = GEN8_M1TCR, /* , GEN8_M2TCR */
>> -        [VIDEO_ENHANCEMENT_CLASS]    = GEN8_VTCR,
>> -        [COPY_ENGINE_CLASS]        = GEN8_BTCR,
>> -    };
>> -    static const i915_reg_t gen12_regs[] = {
>> -        [RENDER_CLASS]            = GEN12_GFX_TLB_INV_CR,
>> -        [VIDEO_DECODE_CLASS]        = GEN12_VD_TLB_INV_CR,
>> -        [VIDEO_ENHANCEMENT_CLASS]    = GEN12_VE_TLB_INV_CR,
>> -        [COPY_ENGINE_CLASS]        = GEN12_BLT_TLB_INV_CR,
>> -        [COMPUTE_CLASS]            = GEN12_COMPCTX_TLB_INV_CR,
>> -    };
>> -    static const i915_mcr_reg_t xehp_regs[] = {
>> -        [RENDER_CLASS]            = XEHP_GFX_TLB_INV_CR,
>> -        [VIDEO_DECODE_CLASS]        = XEHP_VD_TLB_INV_CR,
>> -        [VIDEO_ENHANCEMENT_CLASS]    = XEHP_VE_TLB_INV_CR,
>> -        [COPY_ENGINE_CLASS]        = XEHP_BLT_TLB_INV_CR,
>> -        [COMPUTE_CLASS]            = XEHP_COMPCTX_TLB_INV_CR,
>> -    };
>>       struct drm_i915_private *i915 = gt->i915;
>>       struct intel_uncore *uncore = gt->uncore;
>>       struct intel_engine_cs *engine;
>>       intel_engine_mask_t awake, tmp;
>>       enum intel_engine_id id;
>> -    const i915_reg_t *regs;
>> -    unsigned int num = 0;
>>       unsigned long flags;
>> -    if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
>> -        regs = NULL;
>> -        num = ARRAY_SIZE(xehp_regs);
>> -    } else if (GRAPHICS_VER(i915) == 12) {
>> -        regs = gen12_regs;
>> -        num = ARRAY_SIZE(gen12_regs);
>> -    } else if (GRAPHICS_VER(i915) >= 8 && GRAPHICS_VER(i915) <= 11) {
>> -        regs = gen8_regs;
>> -        num = ARRAY_SIZE(gen8_regs);
>> -    } else if (GRAPHICS_VER(i915) < 8) {
>> -        return;
>> -    }
>> -
>> -    if (drm_WARN_ONCE(&i915->drm, !num,
>> -              "Platform does not implement TLB invalidation!"))
>> +    if (GRAPHICS_VER(i915) < 8)
>>           return;
>>       intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
>> @@ -1094,33 +1034,22 @@ static void mmio_invalidate_full(struct 
>> intel_gt *gt)
>>       awake = 0;
>>       for_each_engine(engine, gt, id) {
>> -        struct reg_and_bit rb;
>> -
>>           if (!intel_engine_pm_is_awake(engine))
>>               continue;
>> -        if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
>> -            u32 val = BIT(engine->instance);
>> +        if (drm_WARN_ON_ONCE(&i915->drm,
>> +                     !(engine->flags & 
>> I915_ENGINE_HAS_TLB_INVALIDATION)))
>> +            continue;
> 
> Hmm, can this flag change dynamically? If not why not put it in 
> initialization phase.

Could do. In that case I couldn't have any asserts that engine->tlb_inv 
is valid but perhaps that is okay. Could just fail engine probe from 
there if register table is incomplete. Sounds better indeed, I'll change it.

> 
>> -            if (engine->class == VIDEO_DECODE_CLASS ||
>> -                engine->class == VIDEO_ENHANCEMENT_CLASS ||
>> -                engine->class == COMPUTE_CLASS)
>> -                val = _MASKED_BIT_ENABLE(val);
>> +        if (engine->tlb_inv.mcr)
>>               intel_gt_mcr_multicast_write_fw(gt,
>> -                            xehp_regs[engine->class],
>> -                            val);
>> -        } else {
>> -            rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
>> -            if (!i915_mmio_reg_offset(rb.reg))
>> -                continue;
>> -
>> -            if (GRAPHICS_VER(i915) == 12 && (engine->class == 
>> VIDEO_DECODE_CLASS ||
>> -                engine->class == VIDEO_ENHANCEMENT_CLASS ||
>> -                engine->class == COMPUTE_CLASS))
>> -                rb.bit = _MASKED_BIT_ENABLE(rb.bit);
>> -
>> -            intel_uncore_write_fw(uncore, rb.reg, rb.bit);
>> -        }
>> +                            engine->tlb_inv.reg.mcr_reg,
>> +                            engine->tlb_inv.request);
>> +        else
>> +            intel_uncore_write_fw(uncore,
>> +                          engine->tlb_inv.reg.reg,
>> +                          engine->tlb_inv.request);
>> +
>>           awake |= engine->mask;
>>       }
>> @@ -1139,16 +1068,7 @@ static void mmio_invalidate_full(struct 
>> intel_gt *gt)
>>       intel_gt_mcr_unlock(gt, flags);
>>       for_each_engine_masked(engine, gt, awake, tmp) {
>> -        struct reg_and_bit rb;
>> -
>> -        if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
>> -            rb.mcr_reg = xehp_regs[engine->class];
>> -            rb.bit = BIT(engine->instance);
>> -        } else {
>> -            rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
>> -        }
>> -
>> -        if (wait_for_invalidate(gt, rb))
>> +        if (wait_for_invalidate(engine))
>>               drm_err_ratelimited(&gt->i915->drm,
>>                           "%s TLB invalidation did not complete in 
>> %ums!\n",
>>                           engine->name, TLB_INVAL_TIMEOUT_MS);
> 
> With minor comments addressed:
> 
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

I'll send v2 at some point, please stand by.

Regards,

Tvrtko
