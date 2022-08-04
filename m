Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFEF58984D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 09:25:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FACC8F810;
	Thu,  4 Aug 2022 07:25:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CC988F813
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 07:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659597925; x=1691133925;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=OtceKePjyExUblWiRUqT9Pr8Jrl56ZEdUQB5Ycr5MHo=;
 b=UqvuiIJYgNJsmc/j8nb3r1/2m8h6KE0pyDEkoq4Z0dauzNxHdQ/4xzRZ
 V6RUSwgxeGI4cVAronSnuZYw2ceShgpGjZm0tpJUPIKgqflOeV28SsdXK
 x/7LR22M+ZR+mGNNs11OrrXV/KbRL3LuNhTfDjN2hK80rmLcXjz3OuIZw
 BAanwx+SIu3/ch3WnaBtTSno8qN6gHGMbfI9PHoO8jskDL+NBKWYg4gbq
 tEB77Xq0WozFtKDb69gX34kaHwjRFCcYxT4sBQCWgNN3orjuVLrJLfrgb
 FoGWvSkfC3Td773gMA1XJUGon04UMzgg++dY51+G3gWPx4IApV1h6Z8mb Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="376161486"
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="376161486"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 00:25:15 -0700
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="603119252"
Received: from fzoltan-mobl1.ger.corp.intel.com (HELO [10.213.220.160])
 ([10.213.220.160])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 00:25:14 -0700
Message-ID: <132591c2-4fff-1dfd-a9d8-a9fbca740641@linux.intel.com>
Date: Thu, 4 Aug 2022 08:25:12 +0100
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
 <2c5ac8d8-cedc-e7bc-58cd-de088a8b4355@linux.intel.com>
 <Yum1hZcmdWI00WZu@orsosgc001.jf.intel.com>
 <YusfJkzc0yaauGgs@orsosgc001.jf.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <YusfJkzc0yaauGgs@orsosgc001.jf.intel.com>
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


On 04/08/2022 02:21, Umesh Nerlige Ramappa wrote:
> On Tue, Aug 02, 2022 at 04:38:45PM -0700, Umesh Nerlige Ramappa wrote:
>> On Tue, Aug 02, 2022 at 09:41:38AM +0100, Tvrtko Ursulin wrote:
>>>
>>> On 01/08/2022 20:02, Umesh Nerlige Ramappa wrote:
>>>> On Wed, Jul 27, 2022 at 09:48:18AM +0100, Tvrtko Ursulin wrote:
>>>>>
>>>>> On 27/07/2022 07:01, Umesh Nerlige Ramappa wrote:
>>>>>> On Fri, Jun 17, 2022 at 09:00:06AM +0100, Tvrtko Ursulin wrote:
>>>>>>>
>>>>>>> On 16/06/2022 23:13, Nerlige Ramappa, Umesh wrote:
>>>>>>>> From: John Harrison <John.C.Harrison@Intel.com>
>>>>>>>>
>>>>>>>> GuC provides engine_id and last_switch_in ticks for an active 
>>>>>>>> context in
>>>>>>>> the pphwsp. The context image provides a 32 bit total ticks 
>>>>>>>> which is the
>>>>>>>> accumulated by the context (a.k.a. context[CTX_TIMESTAMP]). This
>>>>>>>> information is used to calculate the context busyness as follows:
>>>>>>>>
>>>>>>>> If the engine_id is valid, then busyness is the sum of 
>>>>>>>> accumulated total
>>>>>>>> ticks and active ticks. Active ticks is calculated with current 
>>>>>>>> gt time
>>>>>>>> as reference.
>>>>>>>>
>>>>>>>> If engine_id is invalid, busyness is equal to accumulated total 
>>>>>>>> ticks.
>>>>>>>>
>>>>>>>> Since KMD (CPU) retrieves busyness data from 2 sources - GPU and 
>>>>>>>> GuC, a
>>>>>>>> potential race was highlighted in an earlier review that can 
>>>>>>>> lead to
>>>>>>>> double accounting of busyness. While the solution to this is a wip,
>>>>>>>> busyness is still usable for platforms running GuC submission.
>>>>>>>>
>>>>>>>> v2: (Tvrtko)
>>>>>>>> - Use COPS_RUNTIME_ACTIVE_TOTAL
>>>>>>>> - Add code comment for the race
>>>>>>>> - Undo local variables initializations
>>>>>>>>
>>>>>>>> v3:
>>>>>>>> - Add support for virtual engines based on
>>>>>>>>   https://patchwork.freedesktop.org/series/105227/
>>>>>>>>
>>>>>>>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>>>>>>> Signed-off-by: Umesh Nerlige Ramappa 
>>>>>>>> <umesh.nerlige.ramappa@intel.com>
>>>>>>>> ---
>>>>>>>>  drivers/gpu/drm/i915/gt/intel_context.c       | 12 +++-
>>>>>>>>  drivers/gpu/drm/i915/gt/intel_context.h       |  6 +-
>>>>>>>>  drivers/gpu/drm/i915/gt/intel_context_types.h |  6 ++
>>>>>>>>  drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  5 ++
>>>>>>>>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 65 
>>>>>>>> ++++++++++++++++++-
>>>>>>>>  drivers/gpu/drm/i915/i915_drm_client.c        |  6 +-
>>>>>>>>  6 files changed, 89 insertions(+), 11 deletions(-)
>>>>>>>>
>>>>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c 
>>>>>>>> b/drivers/gpu/drm/i915/gt/intel_context.c
>>>>>>>> index 4070cb5711d8..4a84146710e0 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/gt/intel_context.c
>>>>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
>>>>>>>> @@ -576,16 +576,24 @@ void 
>>>>>>>> intel_context_bind_parent_child(struct intel_context *parent,
>>>>>>>>      child->parallel.parent = parent;
>>>>>>>>  }
>>>>>>>> -u64 intel_context_get_total_runtime_ns(const struct 
>>>>>>>> intel_context *ce)
>>>>>>>> +u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
>>>>>>>>  {
>>>>>>>>      u64 total, active;
>>>>>>>> +    if (ce->ops->update_stats)
>>>>>>>> +        ce->ops->update_stats(ce);
>>>>>>>> +
>>>>>>>>      total = ce->stats.runtime.total;
>>>>>>>>      if (ce->ops->flags & COPS_RUNTIME_CYCLES)
>>>>>>>>          total *= ce->engine->gt->clock_period_ns;
>>>>>>>>      active = READ_ONCE(ce->stats.active);
>>>>>>>> -    if (active)
>>>>>>>> +    /*
>>>>>>>> +     * When COPS_RUNTIME_ACTIVE_TOTAL is set for ce->cops, the 
>>>>>>>> backend
>>>>>>>> +     * already provides the total active time of the context, 
>>>>>>>> so skip this
>>>>>>>> +     * calculation when this flag is set.
>>>>>>>> +     */
>>>>>>>> +    if (active && !(ce->ops->flags & COPS_RUNTIME_ACTIVE_TOTAL))
>>>>>>>>          active = intel_context_clock() - active;
>>>>>>>>      return total + active;
>>>>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h 
>>>>>>>> b/drivers/gpu/drm/i915/gt/intel_context.h
>>>>>>>> index b7d3214d2cdd..5fc7c19ab29b 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/gt/intel_context.h
>>>>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
>>>>>>>> @@ -56,7 +56,7 @@ static inline bool 
>>>>>>>> intel_context_is_parent(struct intel_context *ce)
>>>>>>>>      return !!ce->parallel.number_children;
>>>>>>>>  }
>>>>>>>> -static inline bool intel_context_is_pinned(struct intel_context 
>>>>>>>> *ce);
>>>>>>>> +static inline bool intel_context_is_pinned(const struct 
>>>>>>>> intel_context *ce);
>>>>>>>>  static inline struct intel_context *
>>>>>>>>  intel_context_to_parent(struct intel_context *ce)
>>>>>>>> @@ -116,7 +116,7 @@ static inline int 
>>>>>>>> intel_context_lock_pinned(struct intel_context *ce)
>>>>>>>>   * Returns: true if the context is currently pinned for use by 
>>>>>>>> the GPU.
>>>>>>>>   */
>>>>>>>>  static inline bool
>>>>>>>> -intel_context_is_pinned(struct intel_context *ce)
>>>>>>>> +intel_context_is_pinned(const struct intel_context *ce)
>>>>>>>>  {
>>>>>>>>      return atomic_read(&ce->pin_count);
>>>>>>>>  }
>>>>>>>> @@ -351,7 +351,7 @@ intel_context_clear_nopreempt(struct 
>>>>>>>> intel_context *ce)
>>>>>>>>      clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
>>>>>>>>  }
>>>>>>>> -u64 intel_context_get_total_runtime_ns(const struct 
>>>>>>>> intel_context *ce);
>>>>>>>> +u64 intel_context_get_total_runtime_ns(struct intel_context *ce);
>>>>>>>>  u64 intel_context_get_avg_runtime_ns(struct intel_context *ce);
>>>>>>>>  static inline u64 intel_context_clock(void)
>>>>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h 
>>>>>>>> b/drivers/gpu/drm/i915/gt/intel_context_types.h
>>>>>>>> index 09f82545789f..797bb4242c18 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
>>>>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
>>>>>>>> @@ -38,6 +38,9 @@ struct intel_context_ops {
>>>>>>>>  #define COPS_RUNTIME_CYCLES_BIT 1
>>>>>>>>  #define COPS_RUNTIME_CYCLES BIT(COPS_RUNTIME_CYCLES_BIT)
>>>>>>>> +#define COPS_RUNTIME_ACTIVE_TOTAL_BIT 2
>>>>>>>> +#define COPS_RUNTIME_ACTIVE_TOTAL 
>>>>>>>> BIT(COPS_RUNTIME_ACTIVE_TOTAL_BIT)
>>>>>>>> +
>>>>>>>>      int (*alloc)(struct intel_context *ce);
>>>>>>>>      void (*ban)(struct intel_context *ce, struct i915_request 
>>>>>>>> *rq);
>>>>>>>> @@ -55,6 +58,8 @@ struct intel_context_ops {
>>>>>>>>      void (*sched_disable)(struct intel_context *ce);
>>>>>>>> +    void (*update_stats)(struct intel_context *ce);
>>>>>>>> +
>>>>>>>>      void (*reset)(struct intel_context *ce);
>>>>>>>>      void (*destroy)(struct kref *kref);
>>>>>>>> @@ -146,6 +151,7 @@ struct intel_context {
>>>>>>>>              struct ewma_runtime avg;
>>>>>>>>              u64 total;
>>>>>>>>              u32 last;
>>>>>>>> +            u64 start_gt_clk;
>>>>>>>>              I915_SELFTEST_DECLARE(u32 num_underflow);
>>>>>>>>              I915_SELFTEST_DECLARE(u32 max_underflow);
>>>>>>>>          } runtime;
>>>>>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h 
>>>>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>>>>>>> index b3c9a9327f76..6231ad03e4eb 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>>>>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>>>>>>> @@ -196,6 +196,11 @@ static inline u8 
>>>>>>>> guc_class_to_engine_class(u8 guc_class)
>>>>>>>>      return guc_class_engine_class_map[guc_class];
>>>>>>>>  }
>>>>>>>> +/* Per context engine usage stats: */
>>>>>>>> +#define PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO    (0x500 / sizeof(u32))
>>>>>>>> +#define PPHWSP_GUC_CONTEXT_USAGE_STAMP_HI 
>>>>>>>> (PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO + 1)
>>>>>>>> +#define PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID 
>>>>>>>> (PPHWSP_GUC_CONTEXT_USAGE_STAMP_HI + 1)
>>>>>>>> +
>>>>>>>>  /* Work item for submitting workloads into work queue of GuC. */
>>>>>>>>  struct guc_wq_item {
>>>>>>>>      u32 header;
>>>>>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>> index 5a1dfacf24ea..cbf3cbb983ce 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>> @@ -378,7 +378,7 @@ static inline void 
>>>>>>>> set_context_guc_id_invalid(struct intel_context *ce)
>>>>>>>>      ce->guc_id.id = GUC_INVALID_CONTEXT_ID;
>>>>>>>>  }
>>>>>>>> -static inline struct intel_guc *ce_to_guc(struct intel_context 
>>>>>>>> *ce)
>>>>>>>> +static inline struct intel_guc *ce_to_guc(const struct 
>>>>>>>> intel_context *ce)
>>>>>>>>  {
>>>>>>>>      return &ce->engine->gt->uc.guc;
>>>>>>>>  }
>>>>>>>> @@ -1323,13 +1323,16 @@ static void 
>>>>>>>> __update_guc_busyness_stats(struct intel_guc *guc)
>>>>>>>>      spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>>>>>>>  }
>>>>>>>> +static void __guc_context_update_clks(struct intel_context *ce);
>>>>>>>>  static void guc_timestamp_ping(struct work_struct *wrk)
>>>>>>>>  {
>>>>>>>>      struct intel_guc *guc = container_of(wrk, typeof(*guc),
>>>>>>>>                           timestamp.work.work);
>>>>>>>>      struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
>>>>>>>>      struct intel_gt *gt = guc_to_gt(guc);
>>>>>>>> +    struct intel_context *ce;
>>>>>>>>      intel_wakeref_t wakeref;
>>>>>>>> +    unsigned long index;
>>>>>>>>      int srcu, ret;
>>>>>>>>      /*
>>>>>>>> @@ -1343,6 +1346,10 @@ static void guc_timestamp_ping(struct 
>>>>>>>> work_struct *wrk)
>>>>>>>>      with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
>>>>>>>>          __update_guc_busyness_stats(guc);
>>>>>>>> +    /* adjust context stats for overflow */
>>>>>>>> +    xa_for_each(&guc->context_lookup, index, ce)
>>>>>>>> +        __guc_context_update_clks(ce);
>>>>>>>> +
>>>>>>>>      intel_gt_reset_unlock(gt, srcu);
>>>>>>>>      mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
>>>>>>>> @@ -1405,6 +1412,56 @@ void intel_guc_busyness_unpark(struct 
>>>>>>>> intel_gt *gt)
>>>>>>>>               guc->timestamp.ping_delay);
>>>>>>>>  }
>>>>>>>> +static void __guc_context_update_clks(struct intel_context *ce)
>>>>>>>> +{
>>>>>>>> +    struct intel_guc *guc = ce_to_guc(ce);
>>>>>>>> +    struct intel_gt *gt = ce->engine->gt;
>>>>>>>> +    u32 *pphwsp, last_switch, engine_id;
>>>>>>>> +    u64 start_gt_clk, active;
>>>>>>>> +    unsigned long flags;
>>>>>>>> +    ktime_t unused;
>>>>>>>> +
>>>>>>>> +    spin_lock_irqsave(&guc->timestamp.lock, flags);
>>>>>>>> +
>>>>>>>> +    /*
>>>>>>>> +     * GPU updates ce->lrc_reg_state[CTX_TIMESTAMP] when 
>>>>>>>> context is switched
>>>>>>>> +     * out, however GuC updates PPHWSP offsets below. Hence KMD 
>>>>>>>> (CPU)
>>>>>>>> +     * relies on GuC and GPU for busyness calculations. Due to 
>>>>>>>> this, A
>>>>>>>> +     * potential race was highlighted in an earlier review that 
>>>>>>>> can lead to
>>>>>>>> +     * double accounting of busyness. While the solution to 
>>>>>>>> this is a wip,
>>>>>>>> +     * busyness is still usable for platforms running GuC 
>>>>>>>> submission.
>>>>>>>> +     */
>>>>>>>> +    pphwsp = ((void *)ce->lrc_reg_state) - LRC_STATE_OFFSET;
>>>>>>>> +    last_switch = 
>>>>>>>> READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO]);
>>>>>>>> +    engine_id = 
>>>>>>>> READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID]);
>>>>>>>> +
>>>>>>>> +    guc_update_pm_timestamp(guc, &unused);
>>>>>>>> +
>>>>>>>> +    if (engine_id != 0xffffffff && last_switch) {
>>>>>>>> +        start_gt_clk = READ_ONCE(ce->stats.runtime.start_gt_clk);
>>>>>>>> +        __extend_last_switch(guc, &start_gt_clk, last_switch);
>>>>>>>> +        active = intel_gt_clock_interval_to_ns(gt, 
>>>>>>>> guc->timestamp.gt_stamp - start_gt_clk);
>>>>>>>> +        WRITE_ONCE(ce->stats.runtime.start_gt_clk, start_gt_clk);
>>>>>>>> +        WRITE_ONCE(ce->stats.active, active);
>>>>>>>> +    } else {
>>>>>>>> +        lrc_update_runtime(ce);
>>>>>>>> +    }
>>>>>>>> +
>>>>>>>> +    spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>>>>>>> +}
>>>>>>>> +
>>>>>>>> +static void guc_context_update_stats(struct intel_context *ce)
>>>>>>>> +{
>>>>>>>> +    if (!intel_context_pin_if_active(ce)) {
>>>>>>>> +        WRITE_ONCE(ce->stats.runtime.start_gt_clk, 0);
>>>>>>>> +        WRITE_ONCE(ce->stats.active, 0);
>>>>>>>> +        return;
>>>>>>>> +    }
>>>>>>>> +
>>>>>>>> +    __guc_context_update_clks(ce);
>>>>>>>> +    intel_context_unpin(ce);
>>>>>>>> +}
>>>>>>>> +
>>>>>>>>  static inline bool
>>>>>>>>  submission_disabled(struct intel_guc *guc)
>>>>>>>>  {
>>>>>>>> @@ -2585,6 +2642,7 @@ static void guc_context_unpin(struct 
>>>>>>>> intel_context *ce)
>>>>>>>>  {
>>>>>>>>      struct intel_guc *guc = ce_to_guc(ce);
>>>>>>>> +    lrc_update_runtime(ce);
>>>>>>>>      unpin_guc_id(guc, ce);
>>>>>>>>      lrc_unpin(ce);
>>>>>>>> @@ -3183,6 +3241,7 @@ static void remove_from_context(struct 
>>>>>>>> i915_request *rq)
>>>>>>>>  }
>>>>>>>>  static const struct intel_context_ops guc_context_ops = {
>>>>>>>> +    .flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>>>>>>>      .alloc = guc_context_alloc,
>>>>>>>>      .pre_pin = guc_context_pre_pin,
>>>>>>>> @@ -3199,6 +3258,8 @@ static const struct intel_context_ops 
>>>>>>>> guc_context_ops = {
>>>>>>>>      .sched_disable = guc_context_sched_disable,
>>>>>>>> +    .update_stats = guc_context_update_stats,
>>>>>>>> +
>>>>>>>>      .reset = lrc_reset,
>>>>>>>>      .destroy = guc_context_destroy,
>>>>>>>> @@ -3432,6 +3493,7 @@ static int 
>>>>>>>> guc_virtual_context_alloc(struct intel_context *ce)
>>>>>>>>  }
>>>>>>>>  static const struct intel_context_ops virtual_guc_context_ops = {
>>>>>>>> +    .flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>>>>>>>      .alloc = guc_virtual_context_alloc,
>>>>>>>>      .pre_pin = guc_virtual_context_pre_pin,
>>>>>>>> @@ -3447,6 +3509,7 @@ static const struct intel_context_ops 
>>>>>>>> virtual_guc_context_ops = {
>>>>>>>>      .exit = guc_virtual_context_exit,
>>>>>>>>      .sched_disable = guc_context_sched_disable,
>>>>>>>> +    .update_stats = guc_context_update_stats,
>>>>>>>
>>>>>>> There are also virtual_parent_context_ops and 
>>>>>>> virtual_child_context_ops - which means more test coverage is 
>>>>>>> needed..
>>>>>>
>>>>>> Trying to come back to this... The 
>>>>>> virtual_parent_context_ops/virtual_child_context_ops are used for 
>>>>>> parallel engines. GuC would only update the pphwsp of the parent 
>>>>>> context with the last_switched_in_time.
>>>>>>
>>>>>> In general, how should I report the busyness for a parallel engine?
>>>>>>
>>>>>> I would think it is busyness reported by parent context multiplied 
>>>>>> by width.
>>>>>
>>>>> That could a reasonable approximation but I can't say for certain. 
>>>>> Depends on the GuC scheduler implementation a bit. Like is anything 
>>>>> preventing child contexts from finishing their useful work ahead of 
>>>>> the parent context, or they are always strictly scheduled as one 
>>>>> entity and child engines are blocked from taking other workloads 
>>>>> until the parent is scheduled out?
>>>>
>>>> Correct, if a child finishes the work before parent/siblings for 
>>>> some reason, it cannot take up other work until all siblings are done.
>>>
>>> The only problem is that I guess one day that assumption might break 
>>> and we will "never" now. If you have some spare time it would be best 
>>> to add an IGT to verify this assumption, or at least put that work as 
>>> TODO in the backlog?
>>
>> I added some tests to IGT for parallel engine, but something is 
>> missing in the way I am submitting the batches to the parallel engine. 
>> I see some hangs, haven't had a chance to debug that. Will try to get 
>> to it and then post the updated i915 patches.
> 
> I think I may have to do the parallel engine testing later. Do you think 
> this patch alone is good enough for now? It does not enable context 
> busyness for parallel execution (which is just adding this 
> COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL in the parent/child 
> context ops)
> 
> If so, okay to post a rebased version?

I think so. Just please file a jira for the outstanding work.

Thanks,

Tvrtko
