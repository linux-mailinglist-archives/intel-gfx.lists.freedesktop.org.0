Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 510F1648223
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 13:04:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F39C10E526;
	Fri,  9 Dec 2022 12:04:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D30F510E526
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 12:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670587486; x=1702123486;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ThyeFC1qWrwSSFnZaOZiZC5OyqKDpwIO7I7+d71TxP4=;
 b=LljLD9XCMfbYg3pqCSJAVWC2UFXaY/HqNlouwEBlEo5lKYEeNLRiLCAD
 V9PYGJCxamEar8uErfX+PGUAi7r5fV4mZkX9weyWbWuhzZanqDBx+/0AZ
 5TC7D3G27srj9cKD8sFFVjF00joLoeSisrRALRU08tLiPJouFAESnpCN6
 3i8GZWHEx5PGFAnH2KjKVcEF6GZ1pCkNRgh5HL7ZpVp5jHOthsNTGwiNL
 8pYYmB4mWc56hYbTAo9x54ZvFh+2URs39ceCfRE+ARfrA7Wpt5PonpC1n
 Cb0k24jToto2kbZDnxBhYawDzonUiWPgAOkDaAvuHhxfsJrhPNEswOTC+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="381751482"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="381751482"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 04:04:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="716001708"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="716001708"
Received: from efoley-mobl2.ger.corp.intel.com (HELO [10.213.214.59])
 ([10.213.214.59])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 04:04:30 -0800
Message-ID: <2988493a-a1d6-9560-3a60-dba6fc664994@linux.intel.com>
Date: Fri, 9 Dec 2022 12:04:28 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221207173630.973662-1-andrzej.hajda@intel.com>
 <20221207173630.973662-2-andrzej.hajda@intel.com>
 <148f6384-ee73-378a-5ccd-521729924ecf@linux.intel.com>
 <c25155ba-7ab4-3aea-6494-829482021532@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <c25155ba-7ab4-3aea-6494-829482021532@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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


On 09/12/2022 11:33, Andrzej Hajda wrote:
> 
> 
> On 09.12.2022 11:16, Tvrtko Ursulin wrote:
>>
>> On 07/12/2022 17:36, Andrzej Hajda wrote:
>>> Whole register/bit selection logic has been moved to separate helper.
>>
>> Why is missing.
> 
> ...to clean up mmio_invalidate_full function.
> 
> Will add.
> 
>>
>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/intel_gt.c | 136 +++++++++++------------------
>>>   1 file changed, 51 insertions(+), 85 deletions(-)
>>
>> Diffstat suggests because more streamlined code. Any other reason?
>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c 
>>> b/drivers/gpu/drm/i915/gt/intel_gt.c
>>> index f0224b607aa4a7..05520ec3264db8 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>>> @@ -1003,32 +1003,59 @@ void intel_gt_info_print(const struct 
>>> intel_gt_info *info,
>>>       intel_sseu_dump(&info->sseu, p);
>>>   }
>>>   -struct reg_and_bit {
>>> +struct reg_and_bits {
>>>       union {
>>>           i915_reg_t reg;
>>>           i915_mcr_reg_t mcr_reg;
>>>       };
>>> -    u32 bit;
>>> +    u32 bits;
>>>   };
>>>   -static struct reg_and_bit
>>> -get_reg_and_bit(const struct intel_engine_cs *engine, const bool gen8,
>>> -        const i915_reg_t *regs, const unsigned int num)
>>> +static struct reg_and_bits
>>> +get_tlb_inv_reg_and_bits(const struct intel_engine_cs *engine, bool 
>>> write)
>>>   {
>>> +    static const i915_reg_t gen8_regs[MAX_ENGINE_CLASS + 1] = {
>>> +        [RENDER_CLASS]            = GEN8_RTCR,
>>> +        [VIDEO_DECODE_CLASS]        = GEN8_M1TCR,
>>> +        [VIDEO_ENHANCEMENT_CLASS]    = GEN8_VTCR,
>>> +        [COPY_ENGINE_CLASS]        = GEN8_BTCR,
>>> +    };
>>> +    static const i915_reg_t gen12_regs[MAX_ENGINE_CLASS + 1] = {
>>> +        [RENDER_CLASS]            = GEN12_GFX_TLB_INV_CR,
>>> +        [VIDEO_DECODE_CLASS]        = GEN12_VD_TLB_INV_CR,
>>> +        [VIDEO_ENHANCEMENT_CLASS]    = GEN12_VE_TLB_INV_CR,
>>> +        [COPY_ENGINE_CLASS]        = GEN12_BLT_TLB_INV_CR,
>>> +        [COMPUTE_CLASS]            = GEN12_COMPCTX_TLB_INV_CR,
>>> +    };
>>> +    static const i915_mcr_reg_t xehp_regs[MAX_ENGINE_CLASS + 1] = {
>>> +        [RENDER_CLASS]            = XEHP_GFX_TLB_INV_CR,
>>> +        [VIDEO_DECODE_CLASS]        = XEHP_VD_TLB_INV_CR,
>>> +        [VIDEO_ENHANCEMENT_CLASS]    = XEHP_VE_TLB_INV_CR,
>>> +        [COPY_ENGINE_CLASS]        = XEHP_BLT_TLB_INV_CR,
>>> +        [COMPUTE_CLASS]            = XEHP_COMPCTX_TLB_INV_CR,
>>> +    };
>>>       const unsigned int class = engine->class;
>>> -    struct reg_and_bit rb = { };
>>> +    struct reg_and_bits rb = { .bits = BIT(engine->instance) };
>>>   -    if (drm_WARN_ON_ONCE(&engine->i915->drm,
>>> -                 class >= num || !regs[class].reg))
>>> +    if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
>>> +        rb.mcr_reg = xehp_regs[class];
>>> +    else if (GRAPHICS_VER(engine->i915) >= 12)
>>> +        rb.reg = gen12_regs[class];
>>> +    else if (GRAPHICS_VER(engine->i915) >= 8)
>>> +        rb.reg = gen8_regs[class];
>>> +
>>> +    if (drm_WARN_ON_ONCE(&engine->i915->drm, 
>>> !i915_mmio_reg_offset(rb.reg)))
>>
>> I'd prefer user readable message was kept but not a blocker.
> 
> Tried to avoid changes in refactoring, will change.
> 
>>
>>>           return rb;
>>>   -    rb.reg = regs[class];
>>> -    if (gen8 && class == VIDEO_DECODE_CLASS)
>>> -        rb.reg.reg += 4 * engine->instance; /* GEN8_M2TCR */
>>> -    else
>>> -        rb.bit = engine->instance;
>>> +    if (GRAPHICS_VER(engine->i915) < 12 && class == 
>>> VIDEO_DECODE_CLASS) {
>>> +        rb.bits = 1;
>>> +        rb.reg.reg += 4 * engine->instance;
>>
>> No reason to drop the comment IMO. It explains things somewhat, or at 
>> least provides a hint.
> 
> OK
> 
>>
>>> +    }
>>>   -    rb.bit = BIT(rb.bit);
>>> +    if (write && GRAPHICS_VER(engine->i915) >= 12 &&
>>> +        (class == VIDEO_DECODE_CLASS || class == 
>>> VIDEO_ENHANCEMENT_CLASS ||
>>> +         class == COMPUTE_CLASS))
>>> +        rb.bits = _MASKED_BIT_ENABLE(rb.bits);
>>
>> This could be else if to not have < 12 followed by explicit >= 12, but 
>> perhaps it is clearer like this, to signify it's two completely 
>> separate quirks.
>>
>> Also, I would perhaps consider having a local i915 since there's a 
>> good number of engine->i915, but it's up to you what looks nicer.
> 
> OK
> 
>>
>>>         return rb;
>>>   }
>>> @@ -1046,14 +1073,14 @@ get_reg_and_bit(const struct intel_engine_cs 
>>> *engine, const bool gen8,
>>>    * but are now considered MCR registers.  Since they exist within a 
>>> GAM range,
>>>    * the primary instance of the register rolls up the status from 
>>> each unit.
>>>    */
>>> -static int wait_for_invalidate(struct intel_gt *gt, struct 
>>> reg_and_bit rb)
>>> +static int wait_for_invalidate(struct intel_gt *gt, struct 
>>> reg_and_bits rb)
>>>   {
>>>       if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50))
>>> -        return intel_gt_mcr_wait_for_reg(gt, rb.mcr_reg, rb.bit, 0,
>>> +        return intel_gt_mcr_wait_for_reg(gt, rb.mcr_reg, rb.bits, 0,
>>>                            TLB_INVAL_TIMEOUT_US,
>>>                            TLB_INVAL_TIMEOUT_MS);
>>>       else
>>> -        return __intel_wait_for_register_fw(gt->uncore, rb.reg, 
>>> rb.bit, 0,
>>> +        return __intel_wait_for_register_fw(gt->uncore, rb.reg, 
>>> rb.bits, 0,
>>>                               TLB_INVAL_TIMEOUT_US,
>>>                               TLB_INVAL_TIMEOUT_MS,
>>>                               NULL);
>>> @@ -1061,50 +1088,14 @@ static int wait_for_invalidate(struct 
>>> intel_gt *gt, struct reg_and_bit rb)
>>>     static void mmio_invalidate_full(struct intel_gt *gt)
>>>   {
>>> -    static const i915_reg_t gen8_regs[] = {
>>> -        [RENDER_CLASS]            = GEN8_RTCR,
>>> -        [VIDEO_DECODE_CLASS]        = GEN8_M1TCR, /* , GEN8_M2TCR */
>>> -        [VIDEO_ENHANCEMENT_CLASS]    = GEN8_VTCR,
>>> -        [COPY_ENGINE_CLASS]        = GEN8_BTCR,
>>> -    };
>>> -    static const i915_reg_t gen12_regs[] = {
>>> -        [RENDER_CLASS]            = GEN12_GFX_TLB_INV_CR,
>>> -        [VIDEO_DECODE_CLASS]        = GEN12_VD_TLB_INV_CR,
>>> -        [VIDEO_ENHANCEMENT_CLASS]    = GEN12_VE_TLB_INV_CR,
>>> -        [COPY_ENGINE_CLASS]        = GEN12_BLT_TLB_INV_CR,
>>> -        [COMPUTE_CLASS]            = GEN12_COMPCTX_TLB_INV_CR,
>>> -    };
>>> -    static const i915_mcr_reg_t xehp_regs[] = {
>>> -        [RENDER_CLASS]            = XEHP_GFX_TLB_INV_CR,
>>> -        [VIDEO_DECODE_CLASS]        = XEHP_VD_TLB_INV_CR,
>>> -        [VIDEO_ENHANCEMENT_CLASS]    = XEHP_VE_TLB_INV_CR,
>>> -        [COPY_ENGINE_CLASS]        = XEHP_BLT_TLB_INV_CR,
>>> -        [COMPUTE_CLASS]            = XEHP_COMPCTX_TLB_INV_CR,
>>> -    };
>>>       struct drm_i915_private *i915 = gt->i915;
>>>       struct intel_uncore *uncore = gt->uncore;
>>>       struct intel_engine_cs *engine;
>>>       intel_engine_mask_t awake, tmp;
>>>       enum intel_engine_id id;
>>> -    const i915_reg_t *regs;
>>> -    unsigned int num = 0;
>>>       unsigned long flags;
>>>   -    if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
>>> -        regs = NULL;
>>> -        num = ARRAY_SIZE(xehp_regs);
>>> -    } else if (GRAPHICS_VER(i915) == 12) {
>>> -        regs = gen12_regs;
>>> -        num = ARRAY_SIZE(gen12_regs);
>>> -    } else if (GRAPHICS_VER(i915) >= 8 && GRAPHICS_VER(i915) <= 11) {
>>> -        regs = gen8_regs;
>>> -        num = ARRAY_SIZE(gen8_regs);
>>> -    } else if (GRAPHICS_VER(i915) < 8) {
>>> -        return;
>>> -    }
>>> -
>>> -    if (drm_WARN_ONCE(&i915->drm, !num,
>>> -              "Platform does not implement TLB invalidation!"))
>>> +    if (GRAPHICS_VER(i915) < 8)
>>>           return;
>>>         intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
>>> @@ -1114,33 +1105,15 @@ static void mmio_invalidate_full(struct 
>>> intel_gt *gt)
>>>         awake = 0;
>>>       for_each_engine(engine, gt, id) {
>>> -        struct reg_and_bit rb;
>>> +        struct reg_and_bits rb = get_tlb_inv_reg_and_bits(engine, 
>>> true);
>>
>> Ugh so actually what was a once per invalidation lookup is now 
>> repeated per engine, times two. I wonder if we can do this better. 
>> Lets think about it a bit.
> 
> It was always twice, see below.
> 
>>
>> Regards,
>>
>> Tvrtko
>>
>>>             if (!intel_engine_pm_is_awake(engine))
>>>               continue;
>>>   -        if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
>>> -            u32 val = BIT(engine->instance);
>>> -
>>> -            if (engine->class == VIDEO_DECODE_CLASS ||
>>> -                engine->class == VIDEO_ENHANCEMENT_CLASS ||
>>> -                engine->class == COMPUTE_CLASS)
>>> -                val = _MASKED_BIT_ENABLE(val);
>>> -            intel_gt_mcr_multicast_write_fw(gt,
>>> -                            xehp_regs[engine->class],
>>> -                            val);
>>> -        } else {
>>> -            rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
> 
> Here is the 2nd call, from old code.
> Since there are two separate loops there are two calls, caching call 
> results would be overkill IMO.
> Or I can put back whole logic to mmio_invalidate_full, GEN12 quirk is 
> needed only in 1st loop (write), the only redundancy will be with GEN8 
> quirk, which could be handled with some helper.
> Is it worth trying? I guess it is no big gain.

Yes it was always twice in get_reg_and_bit but not the whole register table selection.

We have some checkes which are per platform, and some which are platform and engine. I propose to keep them split. I made a stab at it like this:

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 0377e1b25be9..d907b9005dd6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -988,33 +988,50 @@ void intel_gt_info_print(const struct intel_gt_info *info,
         intel_sseu_dump(&info->sseu, p);
  }
  
-struct reg_and_bit {
+struct inv_reg {
         union {
                 i915_reg_t reg;
                 i915_mcr_reg_t mcr_reg;
         };
+};
+
+struct reg_and_bit {
+       struct inv_reg reg;
         u32 bit;
  };
  
  static struct reg_and_bit
-get_reg_and_bit(const struct intel_engine_cs *engine, const bool gen8,
-               const i915_reg_t *regs, const unsigned int num)
+get_reg_and_bit(const struct intel_engine_cs *engine,
+               const i915_reg_t *regs, const unsigned int num,
+               bool write)
  {
+       struct drm_i915_private *i915 = engine->i915;
         const unsigned int class = engine->class;
         struct reg_and_bit rb = { };
  
+       BUILD_BUG_ON(sizeof(rb.reg.reg) != sizeof(rb.reg.mcr_reg));
+       BUILD_BUG_ON(!__builtin_types_compatible_p(typeof(rb.reg.reg.reg),
+                                                  typeof(rb.reg.mcr_reg.reg)));
+
         if (drm_WARN_ON_ONCE(&engine->i915->drm,
                              class >= num || !regs[class].reg))
                 return rb;
  
-       rb.reg = regs[class];
-       if (gen8 && class == VIDEO_DECODE_CLASS)
-               rb.reg.reg += 4 * engine->instance; /* GEN8_M2TCR */
+       rb.reg.reg = regs[class];
+
+       if (GRAPHICS_VER(i915) < 12 && class == VIDEO_DECODE_CLASS)
+               rb.reg.reg.reg += 4 * engine->instance; /* GEN8_M2TCR */
         else
                 rb.bit = engine->instance;
  
         rb.bit = BIT(rb.bit);
  
+       if (write && GRAPHICS_VER(i915) >= 12 &&
+           (engine->class == VIDEO_DECODE_CLASS ||
+            engine->class == VIDEO_ENHANCEMENT_CLASS ||
+            engine->class == COMPUTE_CLASS))
+               rb.bit = _MASKED_BIT_ENABLE(rb.bit);
+
         return rb;
  }
  
@@ -1031,14 +1048,16 @@ get_reg_and_bit(const struct intel_engine_cs *engine, const bool gen8,
   * but are now considered MCR registers.  Since they exist within a GAM range,
   * the primary instance of the register rolls up the status from each unit.
   */
-static int wait_for_invalidate(struct intel_gt *gt, struct reg_and_bit rb)
+static int
+wait_for_invalidate(struct intel_gt *gt, struct reg_and_bit rb, bool mcr)
  {
-       if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50))
-               return intel_gt_mcr_wait_for_reg(gt, rb.mcr_reg, rb.bit, 0,
+       if (mcr)
+               return intel_gt_mcr_wait_for_reg(gt, rb.reg.mcr_reg, rb.bit, 0,
                                                  TLB_INVAL_TIMEOUT_US,
                                                  TLB_INVAL_TIMEOUT_MS);
         else
-               return __intel_wait_for_register_fw(gt->uncore, rb.reg, rb.bit, 0,
+               return __intel_wait_for_register_fw(gt->uncore,
+                                                   rb.reg.reg, rb.bit, 0,
                                                     TLB_INVAL_TIMEOUT_US,
                                                     TLB_INVAL_TIMEOUT_MS,
                                                     NULL);
@@ -1068,6 +1087,7 @@ static void mmio_invalidate_full(struct intel_gt *gt)
         };
         struct drm_i915_private *i915 = gt->i915;
         struct intel_uncore *uncore = gt->uncore;
+       const bool mcr = GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50);
         struct intel_engine_cs *engine;
         intel_engine_mask_t awake, tmp;
         enum intel_engine_id id;
@@ -1076,7 +1096,7 @@ static void mmio_invalidate_full(struct intel_gt *gt)
         unsigned long flags;
  
         if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
-               regs = NULL;
+               regs = (i915_reg_t *)xehp_regs;
                 num = ARRAY_SIZE(xehp_regs);
         } else if (GRAPHICS_VER(i915) == 12) {
                 regs = gen12_regs;
@@ -1104,28 +1124,15 @@ static void mmio_invalidate_full(struct intel_gt *gt)
                 if (!intel_engine_pm_is_awake(engine))
                         continue;
  
-               if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
-                       u32 val = BIT(engine->instance);
-
-                       if (engine->class == VIDEO_DECODE_CLASS ||
-                           engine->class == VIDEO_ENHANCEMENT_CLASS ||
-                           engine->class == COMPUTE_CLASS)
-                               val = _MASKED_BIT_ENABLE(val);
-                       intel_gt_mcr_multicast_write_fw(gt,
-                                                       xehp_regs[engine->class],
-                                                       val);
-               } else {
-                       rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
-                       if (!i915_mmio_reg_offset(rb.reg))
-                               continue;
-
-                       if (GRAPHICS_VER(i915) == 12 && (engine->class == VIDEO_DECODE_CLASS ||
-                           engine->class == VIDEO_ENHANCEMENT_CLASS ||
-                           engine->class == COMPUTE_CLASS))
-                               rb.bit = _MASKED_BIT_ENABLE(rb.bit);
-
-                       intel_uncore_write_fw(uncore, rb.reg, rb.bit);
-               }
+               rb = get_reg_and_bit(engine, regs, num, true);
+               if (!i915_mmio_reg_offset(rb.reg.reg))
+                       continue;
+
+               if (mcr)
+                       intel_gt_mcr_multicast_write_fw(gt, rb.reg.mcr_reg,
+                                                       rb.bit);
+               else
+                       intel_uncore_write_fw(uncore, rb.reg.reg, rb.bit);
                 awake |= engine->mask;
         }
  
@@ -1144,16 +1151,10 @@ static void mmio_invalidate_full(struct intel_gt *gt)
         intel_gt_mcr_unlock(gt, flags);
  
         for_each_engine_masked(engine, gt, awake, tmp) {
-               struct reg_and_bit rb;
-
-               if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
-                       rb.mcr_reg = xehp_regs[engine->class];
-                       rb.bit = BIT(engine->instance);
-               } else {
-                       rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
-               }
+               struct reg_and_bit rb =
+                       get_reg_and_bit(engine, regs, num, false);
  
-               if (wait_for_invalidate(gt, rb))
+               if (wait_for_invalidate(gt, rb, mcr))
                         drm_err_ratelimited(&gt->i915->drm,
                                             "%s TLB invalidation did not complete in %ums!\n",
                                             engine->name, TLB_INVAL_TIMEOUT_MS);

So only questions which vary per engine are asked in the engine loops.

A bit hacky with asserts i915_reg_t and i915_mcr_reg_t are the same underlying type really but may be passable. See what you think.

Regards,

Tvrtko
