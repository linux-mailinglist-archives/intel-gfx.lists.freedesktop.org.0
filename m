Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0DB7BB88E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:05:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD46310E4E4;
	Fri,  6 Oct 2023 13:05:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13A4110E4E3
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696597516; x=1728133516;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=0XLm0bS26eKuwnV+3cX7HiGj9904klOu+KprHmBBIso=;
 b=krAKRjhGkEe+6jYxavcgAHLba3LJFI8hpBy5MevyfKWTIK9DX9xNMuMf
 4MDaw9tjJB/TI/zB9swVL/HDkjGRGE6JESiCkqVgn6MkjDhwTDvjUCrT5
 PQTolCcc+MfGSn3lweXKZxKZ1uQQx8ex2HOs7gyj/emU5xm3kf28xI2vr
 sP7qCAdLZFs1cWMPovzykjNDHSfCviIa+iKEH7gZLAWhgZn/0BIKNSs2t
 WEQfQQlVChzhBjN+8ZFKAIyRKorRcTwJtGZfHTfou6QNSaLs7BtcLKt6T
 xEmQ1WxnTr521hATx7gMgBoiSIRZPj7QUUF7PDyo2Oznabph5DjzjJ4JM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="383636509"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="383636509"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:04:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="781653873"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="781653873"
Received: from stevegr-mobl3.ger.corp.intel.com (HELO [10.213.210.79])
 ([10.213.210.79])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:04:51 -0700
Message-ID: <65cf9155-2c62-4a35-a7ca-49cd61176a7a@linux.intel.com>
Date: Fri, 6 Oct 2023 14:04:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
 <20231005193536.1463159-4-jonathan.cavitt@intel.com>
 <4f9ddf13-d779-e2ff-2baa-73d5d35c5009@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <4f9ddf13-d779-e2ff-2baa-73d5d35c5009@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v7 2/5] drm/i915: Define and use GuC and CTB
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


On 06/10/2023 11:11, Tvrtko Ursulin wrote:
> 
> Hi,
> 
> 
> Andi asked me to summarize what I think is unaddressed review feedback 
> so far in order to consolidate and enable hopefully things to move 
> forward. So I will try to re-iterate the comments and questions below.
> 
> But also note that there is a bunch of new valid comments from John 
> against v7 which I will not repeat.
> 
> On 05/10/2023 20:35, Jonathan Cavitt wrote:
>> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>>
>> The GuC firmware had defined the interface for Translation Look-Aside
>> Buffer (TLB) invalidation.  We should use this interface when
>> invalidating the engine and GuC TLBs.
>> Add additional functionality to intel_gt_invalidate_tlb, invalidating
>> the GuC TLBs and falling back to GT invalidation when the GuC is
>> disabled.
>> The invalidation is done by sending a request directly to the GuC
>> tlb_lookup that invalidates the table.  The invalidation is submitted as
>> a wait request and is performed in the CT event handler.  This means we
>> cannot perform this TLB invalidation path if the CT is not enabled.
>> If the request isn't fulfilled in two seconds, this would constitute
>> an error in the invalidation as that would constitute either a lost
>> request or a severe GuC overload.
>> The tlb_lookup table is allocated as an xarray because the set of
>> pending TLB invalidations may have no upper bound.  The consequence of
>> this is that all actions interfacing with this table need to use the
>> xarray functions, such as xa_alloc_cyclic_irq for array insertion.
>>
>> With this new invalidation routine, we can perform GuC-based GGTT
>> invalidations.  GuC-based GGTT invalidation is incompatible with
>> MMIO invalidation so we should not perform MMIO invalidation when
>> GuC-based GGTT invalidation is expected.
> 
> On the commit message, I was asking that it describes the justification 
> for the complexity patch adds with the wait queue management. It is 
> non-trivial code, open-coded-almost-copy-of wait_token(), etc, so it 
> needs explanation.
> 
> Today we have all threads serialize their invalidation under 
> gt->tlb.invalidate_lock. With this patch that remains, but it allows a 
> little bit of de-serialization in waiting. I suspect this is because 
> with mmio i915 has direct access to invalidation, where with GuC the 
> requests are competing for latency with other CT requests too (not 
> invalidations).
> 
> Simpler patch could be doing the same as the GFP_ATOMIC fallback path in 
> guc_send_invalidate_tlb - ie. serialize it all against one CT 
> invalidation "slot". Are the gains of allowing multiple wait slots 
> significant enough to warrant the complexity etc needs to be documented 
> and the above problem space explained in the commit message.

Also, any gains from the invidual waiters are limited to 
ggtt->invalidate() callers right? Because the put_pages invalidations 
are serialized at the top-level in intel_gt_invalidate_tlb_full() anyway.

And how frequent or relevant are ggtt invalidations at runtime? It is 
just context creation and such, no (rings, contexts state)? Are page 
flips / framebuffers relevant too?

Question is whether a simpler scheme, with a single wait queue (no open 
coded wait_token(), xarray etc) and just waking up all waiters on 
processing CT done, where each waiters check the seqno and goes back to 
sleep if it's invalidation hasn't been completed yet, would be sufficient.

Regards,

Tvrtko

> 
>> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>> Signed-off-by: Bruce Chang <yu.bruce.chang@intel.com>
>> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>> Signed-off-by: Fei Yang <fei.yang@intel.com>
>> CC: Andi Shyti <andi.shyti@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  34 ++-
>>   drivers/gpu/drm/i915/gt/intel_tlb.c           |  14 +-
>>   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
>>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  22 ++
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   4 +
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 211 +++++++++++++++++-
>>   7 files changed, 307 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c 
>> b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index 4d7d88b92632b..18f23f27f1572 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -206,22 +206,38 @@ static void gen8_ggtt_invalidate(struct 
>> i915_ggtt *ggtt)
>>       intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6, 
>> GFX_FLSH_CNTL_EN);
>>   }
>> +static void guc_ggtt_ct_invalidate(struct intel_gt *gt)
>> +{
>> +    struct intel_uncore *uncore = gt->uncore;
>> +    intel_wakeref_t wakeref;
>> +
>> +    with_intel_runtime_pm_if_active(uncore->rpm, wakeref) {
>> +        struct intel_guc *guc = &gt->uc.guc;
>> +
>> +        intel_guc_invalidate_tlb(guc);
>> +    }
>> +}
>> +
>>   static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>>   {
>>       struct drm_i915_private *i915 = ggtt->vm.i915;
>> +    struct intel_gt *gt;
>> -    gen8_ggtt_invalidate(ggtt);
>> -
>> -    if (GRAPHICS_VER(i915) >= 12) {
>> -        struct intel_gt *gt;
>> +    if (!HAS_GUC_TLB_INVALIDATION(i915))
>> +        gen8_ggtt_invalidate(ggtt);
>> -        list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
>> +    list_for_each_entry(gt, &ggtt->gt_list, ggtt_link) {
>> +        if (HAS_GUC_TLB_INVALIDATION(i915) &&
>> +            intel_guc_is_ready(&gt->uc.guc)) {
>> +            guc_ggtt_ct_invalidate(gt);
>> +        } else if (GRAPHICS_VER(i915) >= 12) {
>>               intel_uncore_write_fw(gt->uncore,
>>                             GEN12_GUC_TLB_INV_CR,
>>                             GEN12_GUC_TLB_INV_CR_INVALIDATE);
>> -    } else {
>> -        intel_uncore_write_fw(ggtt->vm.gt->uncore,
>> -                      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
>> +        } else {
>> +            intel_uncore_write_fw(gt->uncore,
>> +                          GEN8_GTCR, GEN8_GTCR_INVALIDATE);
>> +        }
>>       }
>>   }
>> @@ -1243,7 +1259,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>>           ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
>>       }
>> -    if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
>> +    if (intel_uc_wants_guc_submission(&ggtt->vm.gt->uc))
>>           ggtt->invalidate = guc_ggtt_invalidate;
>>       else
>>           ggtt->invalidate = gen8_ggtt_invalidate;
>> diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c 
>> b/drivers/gpu/drm/i915/gt/intel_tlb.c
>> index 139608c30d978..a84563c178bc6 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_tlb.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
>> @@ -12,6 +12,7 @@
>>   #include "intel_gt_print.h"
>>   #include "intel_gt_regs.h"
>>   #include "intel_tlb.h"
>> +#include "uc/intel_guc.h"
>>   /*
>>    * HW architecture suggest typical invalidation time at 40us,
>> @@ -131,11 +132,22 @@ void intel_gt_invalidate_tlb_full(struct 
>> intel_gt *gt, u32 seqno)
>>           return;
>>       with_intel_gt_pm_if_awake(gt, wakeref) {
>> +        struct intel_guc *guc = &gt->uc.guc;
>> +
>>           mutex_lock(&gt->tlb.invalidate_lock);
>>           if (tlb_seqno_passed(gt, seqno))
>>               goto unlock;
>> -        mmio_invalidate_full(gt);
>> +        if (HAS_GUC_TLB_INVALIDATION(gt->i915)) {
>> +            /*
>> +             * Only perform GuC TLB invalidation if GuC is ready.
>> +             * Otherwise, skip invalidation altogeter.
>> +             */
>> +            if (intel_guc_is_ready(guc))
>> +                intel_guc_invalidate_tlb_full(guc);
>> +        } else {
>> +            mmio_invalidate_full(gt);
>> +        }
>>           write_seqcount_invalidate(&gt->tlb.seqno);
>>   unlock:
>> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h 
>> b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>> index f359bef046e0b..9dff8012d5e76 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>> @@ -138,6 +138,8 @@ enum intel_guc_action {
>>       INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
>>       INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
>>       INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
>> +    INTEL_GUC_ACTION_TLB_INVALIDATION = 0x7000,
>> +    INTEL_GUC_ACTION_TLB_INVALIDATION_DONE = 0x7001,
>>       INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
>>       INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE = 0x8003,
>>       INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED = 0x8004,
>> @@ -181,4 +183,35 @@ enum intel_guc_state_capture_event_status {
>>   #define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK      0x000000FF
>> +#define INTEL_GUC_TLB_INVAL_TYPE_MASK    REG_GENMASK(7, 0)
>> +#define INTEL_GUC_TLB_INVAL_MODE_MASK    REG_GENMASK(11, 8)
>> +#define INTEL_GUC_TLB_INVAL_FLUSH_CACHE REG_BIT(31)
>> +
>> +enum intel_guc_tlb_invalidation_type {
>> +    INTEL_GUC_TLB_INVAL_FULL = 0x0,
>> +    INTEL_GUC_TLB_INVAL_GUC = 0x3,
> 
> New question - are these names coming from the GuC iface? I find it 
> confusing that full does not include GuC but maybe it is just me. So 
> maybe full should be called GT or something? Although then again it 
> wouldn't be clear GT does not include the GuC..  bummer. GPU? Dunno. 
> Minor confusion I guess so can keep as is.
> 
>> +};
>> +
>> +/*
>> + * 0: Heavy mode of Invalidation:
>> + * The pipeline of the engine(s) for which the invalidation is 
>> targeted to is
>> + * blocked, and all the in-flight transactions are guaranteed to be 
>> Globally
>> + * Observed before completing the TLB invalidation
>> + * 1: Lite mode of Invalidation:
>> + * TLBs of the targeted engine(s) are immediately invalidated.
>> + * In-flight transactions are NOT guaranteed to be Globally Observed 
>> before
>> + * completing TLB invalidation.
>> + * Light Invalidation Mode is to be used only when
>> + * it can be guaranteed (by SW) that the address translations remain 
>> invariant
>> + * for the in-flight transactions across the TLB invalidation. In 
>> other words,
>> + * this mode can be used when the TLB invalidation is intended to 
>> clear out the
>> + * stale cached translations that are no longer in use. Light 
>> Invalidation Mode
>> + * is much faster than the Heavy Invalidation Mode, as it does not 
>> wait for the
>> + * in-flight transactions to be GOd.
>> + */
>> +enum intel_guc_tlb_inval_mode {
>> +    INTEL_GUC_TLB_INVAL_MODE_HEAVY = 0x0,
>> +    INTEL_GUC_TLB_INVAL_MODE_LITE = 0x1,
>> +};
>> +
>>   #endif /* _ABI_GUC_ACTIONS_ABI_H */
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> index 6c392bad29c19..d7203ba88b0c0 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> @@ -79,6 +79,18 @@ struct intel_guc {
>>        */
>>       atomic_t outstanding_submission_g2h;
>> +    /** @tlb_lookup: xarray to store all pending TLB invalidation 
>> requests */
>> +    struct xarray tlb_lookup;
>> +
>> +    /**
>> +     * @serial_slot: id to the initial waiter created in tlb_lookup,
>> +     * which is used only when failed to allocate new waiter.
>> +     */
>> +    u32 serial_slot;
>> +
>> +    /** @next_seqno: the next id (sequence no.) to allocate. */
>> +    u32 next_seqno;
>> +
>>       /** @interrupts: pointers to GuC interrupt-managing functions. */
>>       struct {
>>           bool enabled;
>> @@ -296,6 +308,11 @@ struct intel_guc {
>>   #define MAKE_GUC_VER_STRUCT(ver)    MAKE_GUC_VER((ver).major, 
>> (ver).minor, (ver).patch)
>>   #define GUC_SUBMIT_VER(guc)        
>> MAKE_GUC_VER_STRUCT((guc)->submission_version)
>> +struct intel_guc_tlb_wait {
>> +    struct wait_queue_head wq;
>> +    bool busy;
>> +};
>> +
>>   static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
>>   {
>>       return container_of(log, struct intel_guc, log);
>> @@ -418,6 +435,11 @@ static inline bool intel_guc_is_supported(struct 
>> intel_guc *guc)
>>       return intel_uc_fw_is_supported(&guc->fw);
>>   }
>> +int intel_guc_invalidate_tlb_full(struct intel_guc *guc);
>> +int intel_guc_invalidate_tlb(struct intel_guc *guc);
>> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc, const u32 
>> *hxg,
>> +                    u32 size);
>> +
>>   static inline bool intel_guc_is_wanted(struct intel_guc *guc)
>>   {
>>       return intel_uc_fw_is_enabled(&guc->fw);
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> index 6e22af31513a5..37b76f9650d04 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> @@ -1115,6 +1115,9 @@ static int ct_process_request(struct 
>> intel_guc_ct *ct, struct ct_incoming_msg *r
>>       case INTEL_GUC_ACTION_NOTIFY_EXCEPTION:
>>           ret = intel_guc_crash_process_msg(guc, action);
>>           break;
>> +    case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
>> +        ret = intel_guc_tlb_invalidation_done(ct_to_guc(ct), hxg, 
>> request->size);
>> +        break;
>>       default:
>>           ret = -EOPNOTSUPP;
>>           break;
>> @@ -1186,6 +1189,7 @@ static int ct_handle_event(struct intel_guc_ct 
>> *ct, struct ct_incoming_msg *requ
>>       switch (action) {
>>       case INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE:
>>       case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
>> +    case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
>>           g2h_release_space(ct, request->size);
>>       }
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> index b4d56eccfb1f0..a7c9874e122a3 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> @@ -22,6 +22,7 @@
>>   /* Payload length only i.e. don't include G2H header length */
>>   #define G2H_LEN_DW_SCHED_CONTEXT_MODE_SET    2
>>   #define G2H_LEN_DW_DEREGISTER_CONTEXT        1
>> +#define G2H_LEN_DW_INVALIDATE_TLB        1
>>   #define GUC_CONTEXT_DISABLE        0
>>   #define GUC_CONTEXT_ENABLE        1
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 2cce5ec1ff00d..7b484d1573f16 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -1798,9 +1798,11 @@ static void __guc_reset_context(struct 
>> intel_context *ce, intel_engine_mask_t st
>>   void intel_guc_submission_reset(struct intel_guc *guc, 
>> intel_engine_mask_t stalled)
>>   {
>> +    struct intel_guc_tlb_wait *wait;
>>       struct intel_context *ce;
>>       unsigned long index;
>>       unsigned long flags;
>> +    unsigned long i;
>>       if (unlikely(!guc_submission_initialized(guc))) {
>>           /* Reset called during driver load? GuC not yet initialised! */
>> @@ -1826,6 +1828,14 @@ void intel_guc_submission_reset(struct 
>> intel_guc *guc, intel_engine_mask_t stall
>>       /* GuC is blown away, drop all references to contexts */
>>       xa_destroy(&guc->context_lookup);
>> +
>> +    /*
>> +     * The full GT reset will have cleared the TLB caches and flushed 
>> the
>> +     * G2H message queue; we can release all the blocked waiters.
>> +     */
>> +    xa_for_each(&guc->tlb_lookup, i, wait) {
>> +        wake_up(&wait->wq);
>> +    }
> 
> Here I asked if this is safe to do unlocked versus concurrent 
> xa_alloc/xa_erase from the invalidations thread maybe racing with GPU 
> reset.
> 
>>   }
>>   static void guc_cancel_context_requests(struct intel_context *ce)
>> @@ -1948,6 +1958,49 @@ void intel_guc_submission_reset_finish(struct 
>> intel_guc *guc)
>>   static void destroyed_worker_func(struct work_struct *w);
>>   static void reset_fail_worker_func(struct work_struct *w);
>> +static int init_tlb_lookup(struct intel_guc *guc)
>> +{
>> +    struct intel_guc_tlb_wait *wait;
>> +    int err;
>> +
>> +    if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
>> +        return 0;
>> +
>> +    xa_init_flags(&guc->tlb_lookup, XA_FLAGS_ALLOC);
>> +
>> +    wait = kzalloc(sizeof(*wait), GFP_KERNEL);
>> +    if (!wait)
>> +        return -ENOMEM;
>> +
>> +    init_waitqueue_head(&wait->wq);
>> +
>> +    /* Preallocate a shared id for use under memory pressure. */
>> +    err = xa_alloc_cyclic_irq(&guc->tlb_lookup, &guc->serial_slot, wait,
>> +                  xa_limit_32b, &guc->next_seqno, GFP_KERNEL);
>> +    if (err == -ENOMEM) {
>> +        kfree(wait);
>> +        return err;
>> +    }
>> +
>> +    return 0;
>> +}
>> +
>> +static void fini_tlb_lookup(struct intel_guc *guc)
>> +{
>> +    struct intel_guc_tlb_wait *wait;
>> +
>> +    if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
>> +        return;
>> +
>> +    wait = xa_load(&guc->tlb_lookup, guc->serial_slot);
>> +    if (wait) {
>> +        GEM_BUG_ON(wait->busy);
>> +        kfree(wait);
>> +    }
>> +
>> +    xa_destroy(&guc->tlb_lookup);
>> +}
>> +
>>   /*
>>    * Set up the memory resources to be shared with the GuC (via the GGTT)
>>    * at firmware loading time.
>> @@ -1966,11 +2019,15 @@ int intel_guc_submission_init(struct intel_guc 
>> *guc)
>>               return ret;
>>       }
>> +    ret = init_tlb_lookup(guc);
>> +    if (ret)
>> +        goto destroy_pool;
>> +
>>       guc->submission_state.guc_ids_bitmap =
>>           bitmap_zalloc(NUMBER_MULTI_LRC_GUC_ID(guc), GFP_KERNEL);
>>       if (!guc->submission_state.guc_ids_bitmap) {
>>           ret = -ENOMEM;
>> -        goto destroy_pool;
>> +        goto destroy_tlb;
>>       }
>>       guc->timestamp.ping_delay = (POLL_TIME_CLKS / 
>> gt->clock_frequency + 1) * HZ;
>> @@ -1979,9 +2036,10 @@ int intel_guc_submission_init(struct intel_guc 
>> *guc)
>>       return 0;
>> +destroy_tlb:
>> +    fini_tlb_lookup(guc);
>>   destroy_pool:
>>       guc_lrc_desc_pool_destroy_v69(guc);
>> -
>>       return ret;
>>   }
>> @@ -1994,6 +2052,7 @@ void intel_guc_submission_fini(struct intel_guc 
>> *guc)
>>       guc_lrc_desc_pool_destroy_v69(guc);
>>       i915_sched_engine_put(guc->sched_engine);
>>       bitmap_free(guc->submission_state.guc_ids_bitmap);
>> +    fini_tlb_lookup(guc);
>>       guc->submission_initialized = false;
>>   }
>> @@ -4624,6 +4683,154 @@ g2h_context_lookup(struct intel_guc *guc, u32 
>> ctx_id)
>>       return ce;
>>   }
>> +static void wait_wake_outstanding_tlb_g2h(struct intel_guc *guc, u32 
>> seqno)
>> +{
>> +    struct intel_guc_tlb_wait *wait;
>> +    unsigned long flags;
>> +
>> +    xa_lock_irqsave(&guc->tlb_lookup, flags);
>> +    wait = xa_load(&guc->tlb_lookup, seqno);
>> +
>> +    /* We received a response after the waiting task did exit with a 
>> timeout */
>> +    if (wait)
>> +        wake_up(&wait->wq);
>> +    else
>> +        drm_dbg(&guc_to_gt(guc)->i915->drm,
>> +            "Stale TLB invalidation response with seqno %d\n", seqno);
>> +
>> +    xa_unlock_irqrestore(&guc->tlb_lookup, flags);
>> +}
>> +
>> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc, const u32 
>> *hxg, u32 size)
>> +{
>> +    u32 seqno, hxg_len, len;
>> +
>> +    hxg_len = size - GUC_CTB_MSG_MIN_LEN;
>> +    len = hxg_len - GUC_HXG_MSG_MIN_LEN;
>> +
>> +    /* Check for underflow */
>> +    if (unlikely(len < 1 || len > size))
>> +        return -EPROTO;
>> +
>> +    seqno = hxg[GUC_HXG_MSG_MIN_LEN];
>> +    wait_wake_outstanding_tlb_g2h(guc, seqno);
>> +    return 0;
>> +}
> 
> For this we said multiple times it does not need to repeat the hxg_len, 
> len and all that ct_process_request already does if the passed in 
> parameter is appropriately adjusted.
> 
>> +
>> +static long must_wait_woken(struct wait_queue_entry *wq_entry, long 
>> timeout)
>> +{
>> +    /*
>> +     * This is equivalent to wait_woken() with the exception that
>> +     * we do not wake up early if the kthread task has been completed.
>> +     * As we are called from page reclaim in any task context,
>> +     * we may be invoked from stopped kthreads, but we *must*
>> +     * complete the wait from the HW .
>> +     *
>> +     * A second problem is that since we are called under reclaim
>> +     * and wait_woken() inspected the thread state, it makes an invalid
>> +     * assumption that all PF_KTHREAD tasks have set_kthread_struct()
>> +     * called upon them, and will trigger a GPF in 
>> is_kthread_should_stop().
>> +     */
>> +    do {
>> +        set_current_state(TASK_UNINTERRUPTIBLE);
>> +        if (wq_entry->flags & WQ_FLAG_WOKEN)
>> +            break;
>> +
>> +        timeout = schedule_timeout(timeout);
>> +    } while (timeout);
>> +    __set_current_state(TASK_RUNNING);
>> +
>> +    /* See wait_woken() and woken_wake_function() */
>> +    smp_store_mb(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN);
>> +
>> +    return timeout;
>> +}
>> +
>> +static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
> 
> New comment:
> 
> u32 type should be enum intel_guc_tlb_inval_mode.
> 
>> +{
>> +    struct intel_guc_tlb_wait _wq, *wq = &_wq;
>> +    DEFINE_WAIT_FUNC(wait, woken_wake_function);
>> +    struct intel_gt *gt = guc_to_gt(guc);
>> +    int err;
>> +    u32 seqno;
>> +    u32 action[] = {
>> +        INTEL_GUC_ACTION_TLB_INVALIDATION,
>> +        0,
>> +        REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK, type) |
>> +            REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
>> +                       INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
>> +            INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
>> +    };
>> +    u32 size = ARRAY_SIZE(action);
>> +
>> +    if (!intel_guc_ct_enabled(&guc->ct))
>> +        return -EINVAL;
> 
> Here I asked what is the point of this guard since the callers already 
> have intel_guc_is_ready() checks. If there are concerns about races then 
> just one check at the entry to the function can't be enough, no?
> 
>> +
>> +    init_waitqueue_head(&_wq.wq);
>> +
>> +    if (xa_alloc_cyclic_irq(&guc->tlb_lookup, &seqno, wq,
>> +                xa_limit_32b, &guc->next_seqno,
>> +                GFP_ATOMIC | __GFP_NOWARN) < 0) {
>> +        /* Under severe memory pressure? Serialise TLB allocations */
>> +        xa_lock_irq(&guc->tlb_lookup);
>> +        wq = xa_load(&guc->tlb_lookup, guc->serial_slot);
>> +        wait_event_lock_irq(wq->wq,
>> +                    !READ_ONCE(wq->busy),
>> +                    guc->tlb_lookup.xa_lock);
>> +        /*
>> +         * Update wq->busy under lock to ensure only one waiter can
>> +         * issue the TLB invalidation command using the serial slot at a
>> +         * time. The condition is set to true before releasing the lock
>> +         * so that other caller continue to wait until woken up again.
>> +         */
>> +        wq->busy = true;
>> +        xa_unlock_irq(&guc->tlb_lookup);
>> +
>> +        seqno = guc->serial_slot;
>> +    }
>> +
>> +    action[1] = seqno;
>> +
>> +    add_wait_queue(&wq->wq, &wait);
>> +
>> +    err = intel_guc_send_busy_loop(guc, action, size, 
>> G2H_LEN_DW_INVALIDATE_TLB, true);
> 
> Here I asked if we don't have a non-busy looping CT send helper, given 
> how this function is allowed to sleep would be nicer not to burn the CPU.
> 
>> +    if (err)
>> +        goto out;
>> +
>> +    /*
>> +     * GuC has a timeout of 1ms for a TLB invalidation response from 
>> GAM.  On a
>> +     * timeout GuC drops the request and has no mechanism to notify 
>> the host about
>> +     * the timeout.  There is also no mechanism for determining the 
>> number of
>> +     * outstanding requests in the CT buffer.  Ergo, keep a larger 
>> timeout that accounts
>> +     * for this individual timeout and the max number of outstanding 
>> requests that
>> +     * can be queued in CT buffer.
>> +     */
>> +#define OUTSTANDING_GUC_TIMEOUT_PERIOD  (HZ * 2)
> 
> The updated comment addresses my feedback but I believe John had a 
> better suggestion on top.
> 
>> +    if (!must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
>> +        gt_err(gt,
>> +               "TLB invalidation response timed out for seqno %u\n", 
>> seqno);
>> +        err = -ETIME;
>> +    }
>> +out:
>> +    remove_wait_queue(&wq->wq, &wait);
>> +    if (seqno != guc->serial_slot)
>> +        xa_erase_irq(&guc->tlb_lookup, seqno);
>> +
>> +    return err;
>> +}
>> +
>> +/* Full TLB invalidation */
>> +int intel_guc_invalidate_tlb_full(struct intel_guc *guc)
>> +{
>> +    return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_FULL);
>> +}
>> +
>> +/* GuC TLB Invalidation: Invalidate the TLB's of GuC itself. */
>> +int intel_guc_invalidate_tlb(struct intel_guc *guc)
>> +{
>> +    return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_GUC);
>> +}
>> +
>>   int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
>>                         const u32 *msg,
>>                         u32 len)
> 
> Regards,
> 
> Tvrtko
