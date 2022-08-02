Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F9B587935
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 10:42:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 604718D5B8;
	Tue,  2 Aug 2022 08:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1988814A08B
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 08:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659429702; x=1690965702;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=jFlfEjuliQycjU6GqiV5oGLldCoGcYHPQV8A8vcQCDA=;
 b=IURwrftiqRvifiQ1ijAkvuNwO+oLgp4XtKUvsHxfvXRY93a58QxHWf3g
 TMvnkMtMpXRH4gkO0Mzzg+L5dQ40TUtDb3xQG+ZoGm2VBxlzyjBMKpytu
 pRdmx0CCzmaJGW1Tdr4+wBZ0JfCPRcHhIaJytFPFyzIVCmC4i2nryUu3v
 whSyWNWZbTx6xkeg4JKHZhtgf3yjKsW9rrlV4B/H9FBSrly1kxe1PgK5p
 UasZkrIVvpqBI81lMqRJmBiNVeOgu8fekr64Jjld7ZP++aitI1PvYE9PN
 3gn75V4zLudLNs/baeaLZRlSw7qwKN/8V0LZ8Rml9+niXdGzL13ktKDFc g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="272402345"
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="272402345"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 01:41:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="578137524"
Received: from lgebreme-mobl.amr.corp.intel.com (HELO [10.209.184.97])
 ([10.209.184.97])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 01:41:39 -0700
Message-ID: <2c5ac8d8-cedc-e7bc-58cd-de088a8b4355@linux.intel.com>
Date: Tue, 2 Aug 2022 09:41:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20220616221347.27621-1-umesh.nerlige.ramappa@intel.com>
 <a0c37ef9-9cde-883e-306d-11f520e273ef@linux.intel.com>
 <YuDUyca6f26zv5SE@orsosgc001.jf.intel.com>
 <e09ba5f4-c7f7-68a6-1ccc-df5229952f89@linux.intel.com>
 <YugjMdjh9AFZfybF@orsosgc001.jf.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <YugjMdjh9AFZfybF@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] i915/pmu: Wire GuC backend to per-client
 busyness
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/08/2022 20:02, Umesh Nerlige Ramappa wrote:
> On Wed, Jul 27, 2022 at 09:48:18AM +0100, Tvrtko Ursulin wrote:
>>
>> On 27/07/2022 07:01, Umesh Nerlige Ramappa wrote:
>>> On Fri, Jun 17, 2022 at 09:00:06AM +0100, Tvrtko Ursulin wrote:
>>>>
>>>> On 16/06/2022 23:13, Nerlige Ramappa, Umesh wrote:
>>>>> From: John Harrison <John.C.Harrison@Intel.com>
>>>>>
>>>>> GuC provides engine_id and last_switch_in ticks for an active 
>>>>> context in
>>>>> the pphwsp. The context image provides a 32 bit total ticks which 
>>>>> is the
>>>>> accumulated by the context (a.k.a. context[CTX_TIMESTAMP]). This
>>>>> information is used to calculate the context busyness as follows:
>>>>>
>>>>> If the engine_id is valid, then busyness is the sum of accumulated 
>>>>> total
>>>>> ticks and active ticks. Active ticks is calculated with current gt 
>>>>> time
>>>>> as reference.
>>>>>
>>>>> If engine_id is invalid, busyness is equal to accumulated total ticks.
>>>>>
>>>>> Since KMD (CPU) retrieves busyness data from 2 sources - GPU and 
>>>>> GuC, a
>>>>> potential race was highlighted in an earlier review that can lead to
>>>>> double accounting of busyness. While the solution to this is a wip,
>>>>> busyness is still usable for platforms running GuC submission.
>>>>>
>>>>> v2: (Tvrtko)
>>>>> - Use COPS_RUNTIME_ACTIVE_TOTAL
>>>>> - Add code comment for the race
>>>>> - Undo local variables initializations
>>>>>
>>>>> v3:
>>>>> - Add support for virtual engines based on
>>>>>   https://patchwork.freedesktop.org/series/105227/
>>>>>
>>>>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>>>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>>> ---
>>>>>  drivers/gpu/drm/i915/gt/intel_context.c       | 12 +++-
>>>>>  drivers/gpu/drm/i915/gt/intel_context.h       |  6 +-
>>>>>  drivers/gpu/drm/i915/gt/intel_context_types.h |  6 ++
>>>>>  drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  5 ++
>>>>>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 65 
>>>>> ++++++++++++++++++-
>>>>>  drivers/gpu/drm/i915/i915_drm_client.c        |  6 +-
>>>>>  6 files changed, 89 insertions(+), 11 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c 
>>>>> b/drivers/gpu/drm/i915/gt/intel_context.c
>>>>> index 4070cb5711d8..4a84146710e0 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/intel_context.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
>>>>> @@ -576,16 +576,24 @@ void intel_context_bind_parent_child(struct 
>>>>> intel_context *parent,
>>>>>      child->parallel.parent = parent;
>>>>>  }
>>>>> -u64 intel_context_get_total_runtime_ns(const struct intel_context 
>>>>> *ce)
>>>>> +u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
>>>>>  {
>>>>>      u64 total, active;
>>>>> +    if (ce->ops->update_stats)
>>>>> +        ce->ops->update_stats(ce);
>>>>> +
>>>>>      total = ce->stats.runtime.total;
>>>>>      if (ce->ops->flags & COPS_RUNTIME_CYCLES)
>>>>>          total *= ce->engine->gt->clock_period_ns;
>>>>>      active = READ_ONCE(ce->stats.active);
>>>>> -    if (active)
>>>>> +    /*
>>>>> +     * When COPS_RUNTIME_ACTIVE_TOTAL is set for ce->cops, the 
>>>>> backend
>>>>> +     * already provides the total active time of the context, so 
>>>>> skip this
>>>>> +     * calculation when this flag is set.
>>>>> +     */
>>>>> +    if (active && !(ce->ops->flags & COPS_RUNTIME_ACTIVE_TOTAL))
>>>>>          active = intel_context_clock() - active;
>>>>>      return total + active;
>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h 
>>>>> b/drivers/gpu/drm/i915/gt/intel_context.h
>>>>> index b7d3214d2cdd..5fc7c19ab29b 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/intel_context.h
>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
>>>>> @@ -56,7 +56,7 @@ static inline bool intel_context_is_parent(struct 
>>>>> intel_context *ce)
>>>>>      return !!ce->parallel.number_children;
>>>>>  }
>>>>> -static inline bool intel_context_is_pinned(struct intel_context *ce);
>>>>> +static inline bool intel_context_is_pinned(const struct 
>>>>> intel_context *ce);
>>>>>  static inline struct intel_context *
>>>>>  intel_context_to_parent(struct intel_context *ce)
>>>>> @@ -116,7 +116,7 @@ static inline int 
>>>>> intel_context_lock_pinned(struct intel_context *ce)
>>>>>   * Returns: true if the context is currently pinned for use by the 
>>>>> GPU.
>>>>>   */
>>>>>  static inline bool
>>>>> -intel_context_is_pinned(struct intel_context *ce)
>>>>> +intel_context_is_pinned(const struct intel_context *ce)
>>>>>  {
>>>>>      return atomic_read(&ce->pin_count);
>>>>>  }
>>>>> @@ -351,7 +351,7 @@ intel_context_clear_nopreempt(struct 
>>>>> intel_context *ce)
>>>>>      clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
>>>>>  }
>>>>> -u64 intel_context_get_total_runtime_ns(const struct intel_context 
>>>>> *ce);
>>>>> +u64 intel_context_get_total_runtime_ns(struct intel_context *ce);
>>>>>  u64 intel_context_get_avg_runtime_ns(struct intel_context *ce);
>>>>>  static inline u64 intel_context_clock(void)
>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h 
>>>>> b/drivers/gpu/drm/i915/gt/intel_context_types.h
>>>>> index 09f82545789f..797bb4242c18 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
>>>>> @@ -38,6 +38,9 @@ struct intel_context_ops {
>>>>>  #define COPS_RUNTIME_CYCLES_BIT 1
>>>>>  #define COPS_RUNTIME_CYCLES BIT(COPS_RUNTIME_CYCLES_BIT)
>>>>> +#define COPS_RUNTIME_ACTIVE_TOTAL_BIT 2
>>>>> +#define COPS_RUNTIME_ACTIVE_TOTAL BIT(COPS_RUNTIME_ACTIVE_TOTAL_BIT)
>>>>> +
>>>>>      int (*alloc)(struct intel_context *ce);
>>>>>      void (*ban)(struct intel_context *ce, struct i915_request *rq);
>>>>> @@ -55,6 +58,8 @@ struct intel_context_ops {
>>>>>      void (*sched_disable)(struct intel_context *ce);
>>>>> +    void (*update_stats)(struct intel_context *ce);
>>>>> +
>>>>>      void (*reset)(struct intel_context *ce);
>>>>>      void (*destroy)(struct kref *kref);
>>>>> @@ -146,6 +151,7 @@ struct intel_context {
>>>>>              struct ewma_runtime avg;
>>>>>              u64 total;
>>>>>              u32 last;
>>>>> +            u64 start_gt_clk;
>>>>>              I915_SELFTEST_DECLARE(u32 num_underflow);
>>>>>              I915_SELFTEST_DECLARE(u32 max_underflow);
>>>>>          } runtime;
>>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h 
>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>>>> index b3c9a9327f76..6231ad03e4eb 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>>>> @@ -196,6 +196,11 @@ static inline u8 guc_class_to_engine_class(u8 
>>>>> guc_class)
>>>>>      return guc_class_engine_class_map[guc_class];
>>>>>  }
>>>>> +/* Per context engine usage stats: */
>>>>> +#define PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO    (0x500 / sizeof(u32))
>>>>> +#define PPHWSP_GUC_CONTEXT_USAGE_STAMP_HI 
>>>>> (PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO + 1)
>>>>> +#define PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID 
>>>>> (PPHWSP_GUC_CONTEXT_USAGE_STAMP_HI + 1)
>>>>> +
>>>>>  /* Work item for submitting workloads into work queue of GuC. */
>>>>>  struct guc_wq_item {
>>>>>      u32 header;
>>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>> index 5a1dfacf24ea..cbf3cbb983ce 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>> @@ -378,7 +378,7 @@ static inline void 
>>>>> set_context_guc_id_invalid(struct intel_context *ce)
>>>>>      ce->guc_id.id = GUC_INVALID_CONTEXT_ID;
>>>>>  }
>>>>> -static inline struct intel_guc *ce_to_guc(struct intel_context *ce)
>>>>> +static inline struct intel_guc *ce_to_guc(const struct 
>>>>> intel_context *ce)
>>>>>  {
>>>>>      return &ce->engine->gt->uc.guc;
>>>>>  }
>>>>> @@ -1323,13 +1323,16 @@ static void 
>>>>> __update_guc_busyness_stats(struct intel_guc *guc)
>>>>>      spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>>>>  }
>>>>> +static void __guc_context_update_clks(struct intel_context *ce);
>>>>>  static void guc_timestamp_ping(struct work_struct *wrk)
>>>>>  {
>>>>>      struct intel_guc *guc = container_of(wrk, typeof(*guc),
>>>>>                           timestamp.work.work);
>>>>>      struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
>>>>>      struct intel_gt *gt = guc_to_gt(guc);
>>>>> +    struct intel_context *ce;
>>>>>      intel_wakeref_t wakeref;
>>>>> +    unsigned long index;
>>>>>      int srcu, ret;
>>>>>      /*
>>>>> @@ -1343,6 +1346,10 @@ static void guc_timestamp_ping(struct 
>>>>> work_struct *wrk)
>>>>>      with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
>>>>>          __update_guc_busyness_stats(guc);
>>>>> +    /* adjust context stats for overflow */
>>>>> +    xa_for_each(&guc->context_lookup, index, ce)
>>>>> +        __guc_context_update_clks(ce);
>>>>> +
>>>>>      intel_gt_reset_unlock(gt, srcu);
>>>>>      mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
>>>>> @@ -1405,6 +1412,56 @@ void intel_guc_busyness_unpark(struct 
>>>>> intel_gt *gt)
>>>>>               guc->timestamp.ping_delay);
>>>>>  }
>>>>> +static void __guc_context_update_clks(struct intel_context *ce)
>>>>> +{
>>>>> +    struct intel_guc *guc = ce_to_guc(ce);
>>>>> +    struct intel_gt *gt = ce->engine->gt;
>>>>> +    u32 *pphwsp, last_switch, engine_id;
>>>>> +    u64 start_gt_clk, active;
>>>>> +    unsigned long flags;
>>>>> +    ktime_t unused;
>>>>> +
>>>>> +    spin_lock_irqsave(&guc->timestamp.lock, flags);
>>>>> +
>>>>> +    /*
>>>>> +     * GPU updates ce->lrc_reg_state[CTX_TIMESTAMP] when context 
>>>>> is switched
>>>>> +     * out, however GuC updates PPHWSP offsets below. Hence KMD (CPU)
>>>>> +     * relies on GuC and GPU for busyness calculations. Due to 
>>>>> this, A
>>>>> +     * potential race was highlighted in an earlier review that 
>>>>> can lead to
>>>>> +     * double accounting of busyness. While the solution to this 
>>>>> is a wip,
>>>>> +     * busyness is still usable for platforms running GuC submission.
>>>>> +     */
>>>>> +    pphwsp = ((void *)ce->lrc_reg_state) - LRC_STATE_OFFSET;
>>>>> +    last_switch = 
>>>>> READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO]);
>>>>> +    engine_id = 
>>>>> READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID]);
>>>>> +
>>>>> +    guc_update_pm_timestamp(guc, &unused);
>>>>> +
>>>>> +    if (engine_id != 0xffffffff && last_switch) {
>>>>> +        start_gt_clk = READ_ONCE(ce->stats.runtime.start_gt_clk);
>>>>> +        __extend_last_switch(guc, &start_gt_clk, last_switch);
>>>>> +        active = intel_gt_clock_interval_to_ns(gt, 
>>>>> guc->timestamp.gt_stamp - start_gt_clk);
>>>>> +        WRITE_ONCE(ce->stats.runtime.start_gt_clk, start_gt_clk);
>>>>> +        WRITE_ONCE(ce->stats.active, active);
>>>>> +    } else {
>>>>> +        lrc_update_runtime(ce);
>>>>> +    }
>>>>> +
>>>>> +    spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>>>> +}
>>>>> +
>>>>> +static void guc_context_update_stats(struct intel_context *ce)
>>>>> +{
>>>>> +    if (!intel_context_pin_if_active(ce)) {
>>>>> +        WRITE_ONCE(ce->stats.runtime.start_gt_clk, 0);
>>>>> +        WRITE_ONCE(ce->stats.active, 0);
>>>>> +        return;
>>>>> +    }
>>>>> +
>>>>> +    __guc_context_update_clks(ce);
>>>>> +    intel_context_unpin(ce);
>>>>> +}
>>>>> +
>>>>>  static inline bool
>>>>>  submission_disabled(struct intel_guc *guc)
>>>>>  {
>>>>> @@ -2585,6 +2642,7 @@ static void guc_context_unpin(struct 
>>>>> intel_context *ce)
>>>>>  {
>>>>>      struct intel_guc *guc = ce_to_guc(ce);
>>>>> +    lrc_update_runtime(ce);
>>>>>      unpin_guc_id(guc, ce);
>>>>>      lrc_unpin(ce);
>>>>> @@ -3183,6 +3241,7 @@ static void remove_from_context(struct 
>>>>> i915_request *rq)
>>>>>  }
>>>>>  static const struct intel_context_ops guc_context_ops = {
>>>>> +    .flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>>>>      .alloc = guc_context_alloc,
>>>>>      .pre_pin = guc_context_pre_pin,
>>>>> @@ -3199,6 +3258,8 @@ static const struct intel_context_ops 
>>>>> guc_context_ops = {
>>>>>      .sched_disable = guc_context_sched_disable,
>>>>> +    .update_stats = guc_context_update_stats,
>>>>> +
>>>>>      .reset = lrc_reset,
>>>>>      .destroy = guc_context_destroy,
>>>>> @@ -3432,6 +3493,7 @@ static int guc_virtual_context_alloc(struct 
>>>>> intel_context *ce)
>>>>>  }
>>>>>  static const struct intel_context_ops virtual_guc_context_ops = {
>>>>> +    .flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>>>>      .alloc = guc_virtual_context_alloc,
>>>>>      .pre_pin = guc_virtual_context_pre_pin,
>>>>> @@ -3447,6 +3509,7 @@ static const struct intel_context_ops 
>>>>> virtual_guc_context_ops = {
>>>>>      .exit = guc_virtual_context_exit,
>>>>>      .sched_disable = guc_context_sched_disable,
>>>>> +    .update_stats = guc_context_update_stats,
>>>>
>>>> There are also virtual_parent_context_ops and 
>>>> virtual_child_context_ops - which means more test coverage is needed..
>>>
>>> Trying to come back to this... The 
>>> virtual_parent_context_ops/virtual_child_context_ops are used for 
>>> parallel engines. GuC would only update the pphwsp of the parent 
>>> context with the last_switched_in_time.
>>>
>>> In general, how should I report the busyness for a parallel engine?
>>>
>>> I would think it is busyness reported by parent context multiplied by 
>>> width.
>>
>> That could a reasonable approximation but I can't say for certain. 
>> Depends on the GuC scheduler implementation a bit. Like is anything 
>> preventing child contexts from finishing their useful work ahead of 
>> the parent context, or they are always strictly scheduled as one 
>> entity and child engines are blocked from taking other workloads until 
>> the parent is scheduled out?
> 
> Correct, if a child finishes the work before parent/siblings for some 
> reason, it cannot take up other work until all siblings are done.

The only problem is that I guess one day that assumption might break and 
we will "never" now. If you have some spare time it would be best to add 
an IGT to verify this assumption, or at least put that work as TODO in 
the backlog?

Regards,

Tvrtko
