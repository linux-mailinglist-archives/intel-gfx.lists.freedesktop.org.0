Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF96A7B79CE
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 10:12:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 063D410E0E1;
	Wed,  4 Oct 2023 08:12:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FA0B10E0E1
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 08:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696407147; x=1727943147;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=fVjNfC5KJPrWLNiIgRukCHX1dllI+2wGYTVcMCIF+7U=;
 b=JsYKSbqFGH9pr6C5CXSyaOelJip5G289rtF9v+KDxR7KviazACNYfLRz
 GGuoc3TCwvN0vKGPiiH8/t3wsRAk2qPYXOwTd30tJddOho4d4wM/7SlQi
 IKgKcGIB50FMZ1D+lKIjEv3Gsb4YMRHYPB31xMI802en2AzGzQvq7FAlS
 KtL0Po3cjo0IEhRpntlHoO0F2J+kCrHhQ7RFqUwjsTo11FX4Y3ZxYqPzC
 CMlbPRhwHeU+PAHN1SOXfE9Bt8StMiBxshc2v+dIuqD5MBiNdCvcOXSvr
 qXl6Wqq5AYrNad1ULy7Xh+2zH7Fj9AGlvXAknZAf6A7EwFesNPqONdVnj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="373437990"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="373437990"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 01:12:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="867247459"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="867247459"
Received: from mridgewa-mobl.ger.corp.intel.com (HELO [10.213.209.90])
 ([10.213.209.90])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 01:12:23 -0700
Message-ID: <b4b95bee-bf36-821b-6fad-b099cac25da9@linux.intel.com>
Date: Wed, 4 Oct 2023 09:12:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: John Harrison <john.c.harrison@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231002172419.1017044-1-jonathan.cavitt@intel.com>
 <813ae801-b774-7d7a-df8a-00b5b0e36695@linux.intel.com>
 <0b815613-adc5-1f4c-c322-1cacbb5f299c@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <0b815613-adc5-1f4c-c322-1cacbb5f299c@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3 1/4] drm/i915: Define and use GuC and CTB
 TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/10/2023 21:23, John Harrison wrote:
> On 10/3/2023 03:28, Tvrtko Ursulin wrote:
>> On 02/10/2023 18:24, Jonathan Cavitt wrote:
>>> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>>>
>>> The GuC firmware had defined the interface for Translation Look-Aside
>>> Buffer (TLB) invalidation.  We should use this interface when
>>> invalidating the engine and GuC TLBs.
>>> Add additional functionality to intel_gt_invalidate_tlb, invalidating
>>> the GuC TLBs and falling back to GT invalidation when the GuC is
>>> disabled.
>>> The invalidation is done by sending a request directly to the GuC
>>> tlb_lookup that invalidates the table.  The invalidation is submitted as
>>> a wait request and is performed in the CT event handler.  This means we
>>> cannot perform this TLB invalidation path if the CT is not enabled.
>>> If the request isn't fulfilled in two seconds, this would constitute
>>> an error in the invalidation as that would constitute either a lost
>>> request or a severe GuC overload.
>>>
>>> With this new invalidation routine, we can perform GuC-based GGTT
>>> invalidations.  We should only do this when GuC is enabled and fall
>>> back to the original path when GuC is disabled to prevent concurrent
>>> issuance between GuC and KMD.
>>>
>>> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>>> Signed-off-by: Bruce Chang <yu.bruce.chang@intel.com>
>>> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
>>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>>> Signed-off-by: Fei Yang <fei.yang@intel.com>
>>> CC: Andi Shyti <andi.shyti@linux.intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  43 ++--
>>>   drivers/gpu/drm/i915/gt/intel_tlb.c           |  14 +-
>>>   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
>>>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  22 ++
>>>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   9 +
>>>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   5 +
>>>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 212 +++++++++++++++++-
>>>   7 files changed, 322 insertions(+), 16 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c 
>>> b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> index 4d7d88b92632b..db5644b0146ca 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> @@ -206,22 +206,38 @@ static void gen8_ggtt_invalidate(struct 
>>> i915_ggtt *ggtt)
>>>       intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6, 
>>> GFX_FLSH_CNTL_EN);
>>>   }
>>>   -static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>>> +static void guc_ggtt_ct_invalidate(struct intel_gt *gt)
>>>   {
>>> -    struct drm_i915_private *i915 = ggtt->vm.i915;
>>> +    struct intel_uncore *uncore = gt->uncore;
>>> +    intel_wakeref_t wakeref;
>>>   -    gen8_ggtt_invalidate(ggtt);
>>> +    with_intel_runtime_pm_if_active(uncore->rpm, wakeref) {
>>> +        struct intel_guc *guc = &gt->uc.guc;
>>>   -    if (GRAPHICS_VER(i915) >= 12) {
>>> -        struct intel_gt *gt;
>>> +        intel_guc_invalidate_tlb(guc);
>>> +    }
>>> +}
>>>   -        list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
>>> -            intel_uncore_write_fw(gt->uncore,
>>> -                          GEN12_GUC_TLB_INV_CR,
>>> -                          GEN12_GUC_TLB_INV_CR_INVALIDATE);
>>> -    } else {
>>> -        intel_uncore_write_fw(ggtt->vm.gt->uncore,
>>> -                      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
>>> +static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>>> +{
>>> +    struct drm_i915_private *i915 = ggtt->vm.i915;
>>> +    struct intel_gt *gt;
>>> +
>>> +    if (!IS_GEN9_LP(i915) && GRAPHICS_VER(i915) < 11)
>>> +        gen8_ggtt_invalidate(ggtt);
>>> +
>>> +    list_for_each_entry(gt, &ggtt->gt_list, ggtt_link) {
>>> +        if (INTEL_GUC_SUPPORTS_TLB_INVALIDATION(&gt->uc.guc) &&
>>> +            intel_guc_is_ready(&gt->uc.guc)) {
>>
>> The condition here expands to a relatively heavy one:
>>
>> +#define INTEL_GUC_SUPPORTS_TLB_INVALIDATION(guc) \
>> +    ((intel_guc_ct_enabled(&(guc)->ct)) && \
>> +     (intel_guc_submission_is_used(guc)) && \
>> +     (GRAPHICS_VER(guc_to_gt((guc))->i915) >= 12))
>>
>>
>> &&
>>
>> static inline bool intel_guc_is_ready(struct intel_guc *guc)
>> {
>>     return intel_guc_is_fw_running(guc) && 
>> intel_guc_ct_enabled(&guc->ct);
>> }
>>
>> intel_guc_ct_enabled is even duplicated.
>>
>> Is there scope to consolidate the parts which are platform invariant, 
>> or even runtime invariant, or at least guaranteed not to transition 
>> back and forth but one way only?
>>
>> In other words, if we know during init we will want it, mark it as a 
>> flag in intel_guc or somewhere, and then at runtime do only those 
>> conditions which can transition back and forth due driver flows.
>>
>> I am not saying this is performance sensitive, but in terms of 
>> elegance, readability and self-documentation the proposed version 
>> looks a bit sub-optimal to me.
>>
>>> +            guc_ggtt_ct_invalidate(gt);
>>> +        } else if (GRAPHICS_VER(i915) >= 12) {
>>> +            intel_uncore_write(gt->uncore,
>>> +                       GEN12_GUC_TLB_INV_CR,
>>> +                       GEN12_GUC_TLB_INV_CR_INVALIDATE);
>>> +        } else {
>>> +            intel_uncore_write(gt->uncore,
>>> +                       GEN8_GTCR, GEN8_GTCR_INVALIDATE);
>>> +        }
>>>       }
>>>   }
>>>   @@ -1243,7 +1259,8 @@ static int gen8_gmch_probe(struct i915_ggtt 
>>> *ggtt)
>>>           ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
>>>       }
>>>   -    if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
>>> +    if (intel_uc_wants_guc(&ggtt->vm.gt->uc) &&
>>> + intel_uc_wants_guc_submission(&ggtt->vm.gt->uc))
>>
>> Is 2nd condition perhaps a superset of the 1st?
>>
>>>           ggtt->invalidate = guc_ggtt_invalidate;
>>>       else
>>>           ggtt->invalidate = gen8_ggtt_invalidate;
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c 
>>> b/drivers/gpu/drm/i915/gt/intel_tlb.c
>>> index 139608c30d978..efe002f14413d 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_tlb.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
>>> @@ -12,6 +12,7 @@
>>>   #include "intel_gt_print.h"
>>>   #include "intel_gt_regs.h"
>>>   #include "intel_tlb.h"
>>> +#include "uc/intel_guc.h"
>>>     /*
>>>    * HW architecture suggest typical invalidation time at 40us,
>>> @@ -131,11 +132,22 @@ void intel_gt_invalidate_tlb_full(struct 
>>> intel_gt *gt, u32 seqno)
>>>           return;
>>>         with_intel_gt_pm_if_awake(gt, wakeref) {
>>> +        struct intel_guc *guc = &gt->uc.guc;
>>> +
>>>           mutex_lock(&gt->tlb.invalidate_lock);
>>>           if (tlb_seqno_passed(gt, seqno))
>>>               goto unlock;
>>>   -        mmio_invalidate_full(gt);
>>> +        if (INTEL_GUC_SUPPORTS_TLB_INVALIDATION(guc)) {
>>> +            if (intel_guc_is_ready(guc))
>>> +                intel_guc_invalidate_tlb_full(guc);
>>> +        } else {
>>> +            /*
>>> +             * Fall back to old path if GuC is disabled.
>>> +             * This is safe because GuC is not enabled and not 
>>> writing to MMIO.
>>> +             */
>>
>> It is safe for intel_guc_is_ready() transitioning from false to true 
>> during GuC init? No way for some path to start issuing invalidations 
>> as that is happening?
> Are you concerned that it will take the GuC path too early? Or that it 
> will take the MMIO path too late?
> 
> The guc_is_ready() helper should only return true if we are genuinely 
> ready to start sending H2G messages. So even if the GuC init sequence is 
> still in progress in another thread, it should be valid to send GuC 
> based inval requests from this thread if the test returns true.
> 
> I'm not sure about the 'safe' comment which seems to be implying it is 
> unsafe to use MMIO based invalidations if GuC is active. That is surely 
> exactly what we are currently doing all the time? Prior to this patch, 
> all invalidations are MMIO based because that is the only code we have. 
> So it really should be safe to keep doing that otherwise why didn't we 
> implement GuC invalidations as part of the initial GuC enablement?

Right, not too early, not too late, but interleaved at the wrong time 
(insufficient serialization of the condition determining which method to 
use).

My concern was that the comment perhaps suggests that if both i915 and 
GuC would try to invalidate using MMIO _at the same time_ bad things 
could happen.

And since the conditions for INTEL_GUC_SUPPORTS_TLB_INVALIDATION and 
intel_guc_is_ready need expert GuC knowledge to untangle, I did not know 
what is possible at runtime and what not.

Like early init or reset flows. Can we have i915 submit mmio invalidate 
is guc is not read at that point, then guc becomes ready and it submits 
some too, while the direct mmio ones are still waiting for acks, and 
then the hw times out or something.

> 
> 
>>
>>> +            mmio_invalidate_full(gt);
>>> +        }
>>>             write_seqcount_invalidate(&gt->tlb.seqno);
>>>   unlock:
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h 
>>> b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>>> index f359bef046e0b..9dff8012d5e76 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>>> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>>> @@ -138,6 +138,8 @@ enum intel_guc_action {
>>>       INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
>>>       INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
>>>       INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
>>> +    INTEL_GUC_ACTION_TLB_INVALIDATION = 0x7000,
>>> +    INTEL_GUC_ACTION_TLB_INVALIDATION_DONE = 0x7001,
>>>       INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
>>>       INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE = 0x8003,
>>>       INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED = 0x8004,
>>> @@ -181,4 +183,35 @@ enum intel_guc_state_capture_event_status {
>>>     #define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK 0x000000FF
>>>   +#define INTEL_GUC_TLB_INVAL_TYPE_MASK    REG_GENMASK(7, 0)
>>> +#define INTEL_GUC_TLB_INVAL_MODE_MASK    REG_GENMASK(11, 8)
>>> +#define INTEL_GUC_TLB_INVAL_FLUSH_CACHE REG_BIT(31)
>>> +
>>> +enum intel_guc_tlb_invalidation_type {
>>> +    INTEL_GUC_TLB_INVAL_FULL = 0x0,
>>> +    INTEL_GUC_TLB_INVAL_GUC = 0x3,
>>> +};
>>> +
>>> +/*
>>> + * 0: Heavy mode of Invalidation:
>>> + * The pipeline of the engine(s) for which the invalidation is 
>>> targeted to is
>>> + * blocked, and all the in-flight transactions are guaranteed to be 
>>> Globally
>>> + * Observed before completing the TLB invalidation
>>> + * 1: Lite mode of Invalidation:
>>> + * TLBs of the targeted engine(s) are immediately invalidated.
>>> + * In-flight transactions are NOT guaranteed to be Globally Observed 
>>> before
>>> + * completing TLB invalidation.
>>> + * Light Invalidation Mode is to be used only when
>>> + * it can be guaranteed (by SW) that the address translations remain 
>>> invariant
>>> + * for the in-flight transactions across the TLB invalidation. In 
>>> other words,
>>> + * this mode can be used when the TLB invalidation is intended to 
>>> clear out the
>>> + * stale cached translations that are no longer in use. Light 
>>> Invalidation Mode
>>> + * is much faster than the Heavy Invalidation Mode, as it does not 
>>> wait for the
>>> + * in-flight transactions to be GOd.
>>> + */
>>> +enum intel_guc_tlb_inval_mode {
>>> +    INTEL_GUC_TLB_INVAL_MODE_HEAVY = 0x0,
>>> +    INTEL_GUC_TLB_INVAL_MODE_LITE = 0x1,
>>> +};
>>> +
>>>   #endif /* _ABI_GUC_ACTIONS_ABI_H */
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h 
>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>> index 6c392bad29c19..5fc5e67f870cc 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>> @@ -79,6 +79,18 @@ struct intel_guc {
>>>        */
>>>       atomic_t outstanding_submission_g2h;
>>>   +    /** @tlb_lookup: xarray to store all pending TLB invalidation 
>>> requests */
>>> +    struct xarray tlb_lookup;
>>> +
>>> +    /**
>>> +     * @serial_slot: id to the initial waiter created in tlb_lookup,
>>> +     * which is used only when failed to allocate new waiter.
>>> +     */
>>> +    u32 serial_slot;
>>> +
>>> +    /** @next_seqno: the next id (sequence no.) to allocate. */
>>> +    u32 next_seqno;
>>> +
>>>       /** @interrupts: pointers to GuC interrupt-managing functions. */
>>>       struct {
>>>           bool enabled;
>>> @@ -296,6 +308,11 @@ struct intel_guc {
>>>   #define MAKE_GUC_VER_STRUCT(ver)    MAKE_GUC_VER((ver).major, 
>>> (ver).minor, (ver).patch)
>>>   #define GUC_SUBMIT_VER(guc) 
>>> MAKE_GUC_VER_STRUCT((guc)->submission_version)
>>>   +struct intel_guc_tlb_wait {
>>> +    struct wait_queue_head wq;
>>> +    u8 status;
>>> +} __aligned(4);
>>
>> Put a comment here please stating why it needs to be aligned.
>>
>>> +
>>>   static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
>>>   {
>>>       return container_of(log, struct intel_guc, log);
>>> @@ -417,6 +434,11 @@ static inline bool intel_guc_is_supported(struct 
>>> intel_guc *guc)
>>>   {
>>>       return intel_uc_fw_is_supported(&guc->fw);
>>>   }
>>> +
>>> +int intel_guc_invalidate_tlb_full(struct intel_guc *guc);
>>> +int intel_guc_invalidate_tlb(struct intel_guc *guc);
>>> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc, const u32 
>>> *hxg,
>>> +                    u32 size);
>>>     static inline bool intel_guc_is_wanted(struct intel_guc *guc)
>>>   {
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c 
>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>>> index 6e22af31513a5..4b29a0b814950 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>>> @@ -1186,9 +1186,18 @@ static int ct_handle_event(struct intel_guc_ct 
>>> *ct, struct ct_incoming_msg *requ
>>>       switch (action) {
>>>       case INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE:
>>>       case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
>>> +    case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
>>>           g2h_release_space(ct, request->size);
>>>       }
>>>   +    /* Handle tlb invalidation response in interrupt context */
>>> +    if (action == INTEL_GUC_ACTION_TLB_INVALIDATION_DONE) {
>>> +        int ret = intel_guc_tlb_invalidation_done(ct_to_guc(ct), 
>>> hxg, request->size);
>>> +
>>> +        ct_free_msg(request);
>>> +        return ret;
>>> +    }
>>
>> 1)
>> Can the comment say why it is important to handle these in a special 
>> path instead of re-using the existing worker/list?
>>
>> 2)
>> Could it instead of duplicating some h2g logic in 
>> intel_guc_tlb_invalidation_done call ct_process_request, and so handle 
>> all actions in a centralized place?
> Not sure what logic you are seeing duplicated? You mean the calculation 
> of the message length? That could be moved out into the above CT layer 
> so only the payload size is passed in to the TLB handler. I'm not seeing 
> anything else that is duplicated.

Yes all that, the need for a new function which handles just that one 
message, while there is a function already.

> But yes, it should be possible to just call ct_process_request directly. 
> It doesn't look like it does any extra processing that requires it to be 
> outside of the ISR (as long as it is guaranteed that it never tries to 
> process anything other than a TLB inval done message that is). So yeah, 
> that's probably the cleaner solution.

I guess it did not work out since the latest version still has a 
separate intel_guc_tlb_invalidation_done?

>>> +
>>>       spin_lock_irqsave(&ct->requests.lock, flags);
>>>       list_add_tail(&request->link, &ct->requests.incoming);
>>>       spin_unlock_irqrestore(&ct->requests.lock, flags);
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h 
>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>> index b4d56eccfb1f0..01109d15b779b 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>> @@ -22,6 +22,7 @@
>>>   /* Payload length only i.e. don't include G2H header length */
>>>   #define G2H_LEN_DW_SCHED_CONTEXT_MODE_SET    2
>>>   #define G2H_LEN_DW_DEREGISTER_CONTEXT        1
>>> +#define G2H_LEN_DW_INVALIDATE_TLB        1
>>>     #define GUC_CONTEXT_DISABLE        0
>>>   #define GUC_CONTEXT_ENABLE        1
>>> @@ -498,4 +499,8 @@ enum intel_guc_recv_message {
>>>       INTEL_GUC_RECV_MSG_EXCEPTION = BIT(30),
>>>   };
>>>   +#define INTEL_GUC_SUPPORTS_TLB_INVALIDATION(guc) \
>>> +    ((intel_guc_ct_enabled(&(guc)->ct)) && \
>>> +     (intel_guc_submission_is_used(guc)) && \
>>> +     (GRAPHICS_VER(guc_to_gt((guc))->i915) >= 12))
>>>   #endif
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> index ae3495a9c8146..3478fa73180ab 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> @@ -1796,11 +1796,20 @@ static void __guc_reset_context(struct 
>>> intel_context *ce, intel_engine_mask_t st
>>>       intel_context_put(parent);
>>>   }
>>>   +static void wake_up_tlb_invalidate(struct intel_guc_tlb_wait *wait)
>>> +{
>>> +    /* Barrier to ensure the store is observed by the woken thread */
>>> +    smp_store_mb(wait->status, 0);
>>
>> Is the memory barrier required, given the main caller is from a 
>> spinlocked section?
>>
>>> +    wake_up(&wait->wq);
>>> +}
>>> +
>>>   void intel_guc_submission_reset(struct intel_guc *guc, 
>>> intel_engine_mask_t stalled)
>>>   {
>>> +    struct intel_guc_tlb_wait *wait;
>>>       struct intel_context *ce;
>>>       unsigned long index;
>>>       unsigned long flags;
>>> +    unsigned long i;
>>>         if (unlikely(!guc_submission_initialized(guc))) {
>>>           /* Reset called during driver load? GuC not yet 
>>> initialised! */
>>> @@ -1826,6 +1835,13 @@ void intel_guc_submission_reset(struct 
>>> intel_guc *guc, intel_engine_mask_t stall
>>>         /* GuC is blown away, drop all references to contexts */
>>>       xa_destroy(&guc->context_lookup);
>>> +
>>> +    /*
>>> +     * The full GT reset will have cleared the TLB caches and 
>>> flushed the
>>> +     * G2H message queue; we can release all the blocked waiters.
>>> +     */
>>> +    xa_for_each(&guc->tlb_lookup, i, wait)
>>> +        wake_up_tlb_invalidate(wait);
>>>   }
>>>     static void guc_cancel_context_requests(struct intel_context *ce)
>>> @@ -1948,6 +1964,41 @@ void intel_guc_submission_reset_finish(struct 
>>> intel_guc *guc)
>>>   static void destroyed_worker_func(struct work_struct *w);
>>>   static void reset_fail_worker_func(struct work_struct *w);
>>>   +static int init_tlb_lookup(struct intel_guc *guc)
>>> +{
>>> +    struct intel_guc_tlb_wait *wait;
>>> +    int err;
>>> +
>>> +    xa_init_flags(&guc->tlb_lookup, XA_FLAGS_ALLOC);
>>> +
>>> +    wait = kzalloc(sizeof(*wait), GFP_KERNEL);
>>> +    if (!wait)
>>> +        return -ENOMEM;
>>> +
>>> +    init_waitqueue_head(&wait->wq);
>>> +    err = xa_alloc_cyclic_irq(&guc->tlb_lookup, &guc->serial_slot, 
>>> wait,
>>> +                  xa_limit_32b, &guc->next_seqno, GFP_KERNEL);
>>
>> For what is this id, allocated during init, used and when it gets freed?
>>
>>> +    if (err == -ENOMEM) {
>>> +        kfree(wait);
>>> +        return err;
>>> +    }
>>> +
>>> +    return 0;
>>> +}
>>> +
>>> +static void fini_tlb_lookup(struct intel_guc *guc)
>>> +{
>>> +    struct intel_guc_tlb_wait *wait;
>>> +
>>> +    wait = xa_load(&guc->tlb_lookup, guc->serial_slot);
>>> +    if (wait) {
>>> +        GEM_BUG_ON(wait->status);
>>> +        kfree(wait);
>>> +    }
>>> +
>>> +    xa_destroy(&guc->tlb_lookup);
>>> +}
>>> +
>>>   /*
>>>    * Set up the memory resources to be shared with the GuC (via the 
>>> GGTT)
>>>    * at firmware loading time.
>>> @@ -1966,11 +2017,15 @@ int intel_guc_submission_init(struct 
>>> intel_guc *guc)
>>>               return ret;
>>>       }
>>>   +    ret = init_tlb_lookup(guc);
>>> +    if (ret)
>>> +        goto destroy_pool;
>>> +
>>>       guc->submission_state.guc_ids_bitmap =
>>>           bitmap_zalloc(NUMBER_MULTI_LRC_GUC_ID(guc), GFP_KERNEL);
>>>       if (!guc->submission_state.guc_ids_bitmap) {
>>>           ret = -ENOMEM;
>>> -        goto destroy_pool;
>>> +        goto destroy_tlb;
>>>       }
>>>         guc->timestamp.ping_delay = (POLL_TIME_CLKS / 
>>> gt->clock_frequency + 1) * HZ;
>>> @@ -1979,9 +2034,10 @@ int intel_guc_submission_init(struct intel_guc 
>>> *guc)
>>>         return 0;
>>>   +destroy_tlb:
>>> +    fini_tlb_lookup(guc);
>>>   destroy_pool:
>>>       guc_lrc_desc_pool_destroy_v69(guc);
>>> -
>>>       return ret;
>>>   }
>>>   @@ -1994,6 +2050,7 @@ void intel_guc_submission_fini(struct 
>>> intel_guc *guc)
>>>       guc_lrc_desc_pool_destroy_v69(guc);
>>>       i915_sched_engine_put(guc->sched_engine);
>>>       bitmap_free(guc->submission_state.guc_ids_bitmap);
>>> +    fini_tlb_lookup(guc);
>>>       guc->submission_initialized = false;
>>>   }
>>>   @@ -4624,6 +4681,157 @@ g2h_context_lookup(struct intel_guc *guc, 
>>> u32 ctx_id)
>>>       return ce;
>>>   }
>>>   +static void wait_wake_outstanding_tlb_g2h(struct intel_guc *guc, 
>>> u32 seqno)
>>> +{
>>> +    struct intel_guc_tlb_wait *wait;
>>> +    unsigned long flags;
>>> +
>>> +    xa_lock_irqsave(&guc->tlb_lookup, flags);
>>> +    wait = xa_load(&guc->tlb_lookup, seqno);
>>> +
>>> +    /* We received a response after the waiting task did exit with a 
>>> timeout */
>>> +    if (unlikely(!wait))
>>> +        drm_dbg(&guc_to_gt(guc)->i915->drm,
>>> +            "Stale TLB invalidation response with seqno %d\n", seqno);
>>> +
>>> +    if (wait)
>>> +        wake_up_tlb_invalidate(wait);
>>> +
>>> +    xa_unlock_irqrestore(&guc->tlb_lookup, flags);
>>> +}
>>> +
>>> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc, const u32 
>>> *hxg, u32 size)
>>> +{
>>> +    u32 seqno, hxg_len, len;
>>> +
>>> +    /*
>>> +     * FIXME: these calculations would be better done signed. That
>>> +     * way underflow can be detected as well.
>>> +     */
>>
>> When can this FIXME be addressed?
>>
>>> +    hxg_len = size - GUC_CTB_MSG_MIN_LEN;
>>> +    len = hxg_len - GUC_HXG_MSG_MIN_LEN;
>>> +
>>> +    if (unlikely(len < 1))
>>> +        return -EPROTO;
>>> +
>>> +    seqno = hxg[GUC_HXG_MSG_MIN_LEN];
>>> +    wait_wake_outstanding_tlb_g2h(guc, seqno);
>>> +    return 0;
>>> +}
>>> +
>>> +static long must_wait_woken(struct wait_queue_entry *wq_entry, long 
>>> timeout)
>>> +{
>>> +    /*
>>> +     * This is equivalent to wait_woken() with the exception that
>>> +     * we do not wake up early if the kthread task has been completed.
>>> +     * As we are called from page reclaim in any task context,
>>> +     * we may be invoked from stopped kthreads, but we *must*
>>> +     * complete the wait from the HW .
>>> +     *
>>> +     * A second problem is that since we are called under reclaim
>>> +     * and wait_woken() inspected the thread state, it makes an invalid
>>> +     * assumption that all PF_KTHREAD tasks have set_kthread_struct()
>>> +     * called upon them, and will trigger a GPF in 
>>> is_kthread_should_stop().
>>> +     */
>>> +    do {
>>> +        set_current_state(TASK_UNINTERRUPTIBLE);
>>> +        if (wq_entry->flags & WQ_FLAG_WOKEN)
>>> +            break;
>>> +
>>> +        timeout = schedule_timeout(timeout);
>>> +    } while (timeout);
>>> +    __set_current_state(TASK_RUNNING);
>>> +
>>> +    /* See wait_woken() and woken_wake_function() */
>>> +    smp_store_mb(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN);
>>> +
>>> +    return timeout;
>>> +}
>>> +
>>> +static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
>>> +{
>>> +    struct intel_guc_tlb_wait _wq, *wq = &_wq;
>>> +    DEFINE_WAIT_FUNC(wait, woken_wake_function);
>>> +    struct intel_gt *gt = guc_to_gt(guc);
>>> +    int err = 0;
>>
>> Looks like err does not need to be initialized.
>>
>>> +    u32 seqno;
>>> +    u32 action[] = {
>>> +        INTEL_GUC_ACTION_TLB_INVALIDATION,
>>> +        0,
>>> +        REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK, type) |
>>> +            REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
>>> +                       INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
>>> +            INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
>>> +    };
>>> +    u32 size = ARRAY_SIZE(action);
>>> +
>>> +    if (!intel_guc_ct_enabled(&guc->ct))
>>> +        return -EINVAL;
>>> +
>>> +    init_waitqueue_head(&_wq.wq);
>>> +
>>> +    if (xa_alloc_cyclic_irq(&guc->tlb_lookup, &seqno, wq,
>>> +                xa_limit_32b, &guc->next_seqno,
>>> +                GFP_ATOMIC | __GFP_NOWARN) < 0) {
>>> +        /* Under severe memory pressure? Serialise TLB allocations */
>>> +        xa_lock_irq(&guc->tlb_lookup);
>>> +        wq = xa_load(&guc->tlb_lookup, guc->serial_slot);
>>> +        wait_event_lock_irq(wq->wq,
>>> +                    !READ_ONCE(wq->status),
>>> +                    guc->tlb_lookup.xa_lock);
>>> +        /*
>>> +         * Update wq->status under lock to ensure only one waiter can
>>> +         * issue the TLB invalidation command using the serial slot 
>>> at a
>>> +         * time. The condition is set to false before releasing the 
>>> lock
>>> +         * so that other caller continue to wait until woken up again.
>>> +         */
>>> +        wq->status = 1;
>>> +        xa_unlock_irq(&guc->tlb_lookup);
>>> +
>>> +        seqno = guc->serial_slot;
>>> +    }
>>> +
>>> +    action[1] = seqno;
>>> +
>>> +    add_wait_queue(&wq->wq, &wait);
>>> +
>>> +    err = intel_guc_send_busy_loop(guc, action, size, 
>>> G2H_LEN_DW_INVALIDATE_TLB, true);
>>
>> Busy looping version has to be used from here? Looks like the lock has 
>> been dropped and function otherwise can sleep..
> If you don't use the auto-looping helper then the loop needs to be done 
> manually by the caller. The looping is about waiting for space in the 
> H2G buffer (because it is full of other commands). I assume that the TLB 
> inval request would want to wait until it can actually be sent rather 
> than just immediately exit with an -EBUSY error.

I meant to use some function which sleeps when waiting for space instead 
of busy looping. AFAIR the busy looping one was for calling from 
contexts which cannot sleep, no?

> 
>>
>>> +    if (err)
>>> +        goto out;
>>> +
>>> +    /*
>>> +     * GuC has a timeout of 1ms for a TLB invalidation response from 
>>> GAM. On a
>>> +     * timeout GuC drops the request and has no mechanism to notify 
>>> the host about
>>> +     * the timeout. So keep a larger timeout that accounts for this 
>>> individual
>>> +     * timeout and max number of outstanding invalidation requests 
>>> that can be
>>> +     * queued in CT buffer.
>>> +     */
>>> +#define OUTSTANDING_GUC_TIMEOUT_PERIOD  (HZ * 2)
>>
>> Is it possible to express the magic 2 seconds with some expressions 
>> involving the CT buffer size, multiplied by timeout per request, as 
>> the comment alludes?
> The correct solution is to implement a 
> 'has_my_request_been_executed_yet()' helper in the CT layer that tests 
> whether the given H2G call has actually made it to the head of the queue 
> yet or not. The TLB layer would then loop over that with no time at all 
> (assuming the call will return an error in the case of a dead GuC, for 
> example). Only when that returns true would it wait with a timeout, 
> where that timeout is a few ms as per the hardware spec for a TLB 
> invalidation.
> 
> However, that is a non-trivial update that no-one has the time to 
> implement :(. And so far, the scale just keeps tipping to the 'add a 
> bigger timeout' side as the quick hack fix (TLB inval isn't the only CT 
> client with the problem).
> 
> Having said that, if we are going with the quick and dirty timeout, it 
> would be better to put the timeout define in intel_guc_ct.h. Or make it 
> a helper function in the same whose code is in _ct.c and which returns a 
> value of 1s per 4KB of buffer size or something. I don't like the idea 
> of providing the buffer size to random bits of code outside of the CT 
> layer. That is exposing internal details to code which should not need 
> to know.
> 
> Likewise, the 'timeout per request' is not something the TLB layer has 
> any knowledge of. A TLB inval might be guaranteed to be <1ms but the CTB 
> might be full of much slower requests (context creation/destruction for 
> example). So you basically have to assume worst case processing time. 
> Which past experiments have shown to be around 1s for the current buffer 
> size.

Okay, I get it. This also means this part of the comment is wrong:

"""
So keep a larger timeout that accounts for this individual
timeout and max number of outstanding invalidation requests
that can be queued in CT buffer.
"""

Or at least misleading, since the timeout value does not related only to 
the number of outstanding _invalidation requests_.

> Note also that a fundamental problem here is that GuC doesn't give us a 
> failed response back in the case of the hardware timeout being hit. 
> Hence the reason we need a KMD side timeout at all. However, a future 
> GuC update is promised which will move the timeout inside the GuC and 
> add a failed notification back to the KMD. Once that is available, we 
> theoretically don't need any time out at all on the KMD side (assuming 
> that there is some kind of abort mechanism built in to the GT reset path 
> for if the GuC itself dies).

Oh dear, sending messages into a black hole is not the best, but shrug, 
it is not much we can do whichever way we detect a timeout apart from 
opting to stop the universe.

Regards,

Tvrtko

> 
> John.
> 
>>
>>> +    if (!must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
>>> +        gt_err(gt,
>>> +               "TLB invalidation response timed out for seqno %u\n", 
>>> seqno);
>>> +        err = -ETIME;
>>> +    }
>>> +out:
>>> +    remove_wait_queue(&wq->wq, &wait);
>>> +    if (seqno != guc->serial_slot)
>>> +        xa_erase_irq(&guc->tlb_lookup, seqno);
>>> +
>>> +    return err;
>>> +}
>>> +
>>> +/* Full TLB invalidation */
>>> +int intel_guc_invalidate_tlb_full(struct intel_guc *guc)
>>> +{
>>> +    return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_FULL);
>>> +}
>>> +
>>> +/* GuC TLB Invalidation: Invalidate the TLB's of GuC itself. */
>>> +int intel_guc_invalidate_tlb(struct intel_guc *guc)
>>> +{
>>> +    return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_GUC);
>>> +}
>>> +
>>>   int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
>>>                         const u32 *msg,
>>>                         u32 len)
>>
>> Regards,
>>
>> Tvrtko
> 
