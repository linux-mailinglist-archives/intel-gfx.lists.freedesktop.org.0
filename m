Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B53995177B3
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 22:07:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3653310F249;
	Mon,  2 May 2022 20:07:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE39910F249
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 20:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651522043; x=1683058043;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=NLeT0yKDFuh/OsJNbb/4bjHuzupvQiTwyijbQEs5Mm0=;
 b=m1SQ4vFDqPLjUqant9Ow4M+SiX6dQn/aO6die7gpCV0PvLPCvac/AgRe
 oD0+t0WrzZ3e2VH8NvkpD+pXiXSSpfTcLfhn7wQI6Ghj4vKfCAvMFLF4c
 HnXFDcrpCBr8sCk3DtnCePbVEPVaYpBpg9HY8GVIXWblQ00smbFMQKj3Q
 PXgjeUXo+nu0sIO0kP6vLuf0fgPBtoxzR2c1wLNmxUIo7tRRnR2Hnjsis
 IdwnmheWgJ4OGC2UkxhfVyNJx2DrDdJB0wV2CDUHbsbNMu9vtZmptz6+p
 1LbDR29ahmgVywBn1Z3wDlqM/TuDjBL7NJrHw3+FYkH6F48C4iQpjvruk A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="247225458"
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="247225458"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 13:07:23 -0700
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="516265604"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 13:07:23 -0700
Date: Mon, 2 May 2022 13:07:19 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Message-ID: <20220502200719.GA28869@unerlige-ril-10.165.21.154>
References: <20220426003045.3929439-1-umesh.nerlige.ramappa@intel.com>
 <2c4b2200ee90ec00ad9bccb13b5bd7339001e004.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <2c4b2200ee90ec00ad9bccb13b5bd7339001e004.camel@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] i915/guc/reset: Make __guc_reset_context
 aware of guilty engines
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 28, 2022 at 09:13:57AM -0700, Teres Alexis, Alan Previn wrote:
>At a high level, this change looks good and simple.
>However, inside __guc_reset_context, i think there might be
>an observed change in behavior for parallel submission.
>(or perhaps this change is part the intent?):
>
>     Unless my understanding is incorrect, assuming a
>     parallel submission comes in with virtual engines that
>     repeat the same kinds of workloads across multiple
>     physical engines (which i assume would be the typical
>     end-user usage of this UAPI feature), we would end up
>     marking the parent content (and other children contexts
>     that use the same engine) as guilty but not children
>     contexts that are running on a different engine.
>     I'm not sure if this would be an expected UAPI response
>     for parallel submission. (i.e. one or more children
>     get a re-run on other engines? I havent checked if
>     the replay is revoked later if the parent's or sibling's
>     'request' was reset and marked as -EIO ... this marking
>     of req->force_error as -EIO or -EAGAIN is part of the
>     call to __i915_request_reset where the guilty param
>     value sees this change i am referring to).
>
>Is this intended / expected?

Expectation: For virtual engine, only the virtual context must be marked 
guilty. For parallel engines, parent/child contexts must be marked as 
guilty.

Looking into the code, I see the expected behavior is already taken care 
of.

For virtual engines, only one context is created with a mask of engines 
that can be used by GuC. This context is registered with GuC and the 
workloads are run on any one of these engines. When a reset occurs, the 
G2H notification points to this context. When the __guc_reset_context 
executes, it will only mark this context as guilty.

fwiu, for parallel submission, if N engines can run in parallel, then N 
contexts are submitted. If there are no siblings, then there is only one 
parent and the below reset logic works fine because G2H has only the 
parent context.

If there are more than 1 siblings in parallel submission, then the 
execution between siblings is just treated like virtual engines where 
the parent has the mask of engines used. In this case, G2H points to 
parent context and parent has a mask of all sibling engines, so this 
works as expected too (in __guc_reset_context).

Thanks,
Umesh

>
>...alan
>
>
>On Mon, 2022-04-25 at 17:30 -0700, Umesh Nerlige Ramappa wrote:
>> There are 2 ways an engine can get reset in i915 and the method of reset
>> affects how KMD labels a context as guilty/innocent.
>>
>> (1) GuC initiated engine-reset: GuC resets a hung engine and notifies
>> KMD. The context that hung on the engine is marked guilty and all other
>> contexts are innocent. The innocent contexts are resubmitted.
>>
>> (2) GT based reset: When an engine heartbeat fails to tick, KMD
>> initiates a gt/chip reset. All active contexts are marked as guilty and
>> discarded.
>>
>> In order to correctly mark the contexts as guilty/innocent, pass a mask
>> of engines that were reset to __guc_reset_context.
>>
>> Fixes: eb5e7da736f3 ("drm/i915/guc: Reset implementation for new GuC interface")
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_reset.c            |  2 +-
>>  drivers/gpu/drm/i915/gt/uc/intel_guc.h           |  2 +-
>>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c    | 16 ++++++++--------
>>  drivers/gpu/drm/i915/gt/uc/intel_uc.c            |  2 +-
>>  drivers/gpu/drm/i915/gt/uc/intel_uc.h            |  2 +-
>>  5 files changed, 12 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
>> index 5422a3b84bd4..a5338c3fde7a 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>> @@ -808,7 +808,7 @@ static int gt_reset(struct intel_gt *gt, intel_engine_mask_t stalled_mask)
>>               __intel_engine_reset(engine, stalled_mask & engine->mask);
>>       local_bh_enable();
>>
>> -     intel_uc_reset(&gt->uc, true);
>> +     intel_uc_reset(&gt->uc, ALL_ENGINES);
>>
>>       intel_ggtt_restore_fences(gt->ggtt);
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> index 3f3373f68123..966e69a8b1c1 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> @@ -443,7 +443,7 @@ int intel_guc_global_policies_update(struct intel_guc *guc);
>>  void intel_guc_context_ban(struct intel_context *ce, struct i915_request *rq);
>>
>>  void intel_guc_submission_reset_prepare(struct intel_guc *guc);
>> -void intel_guc_submission_reset(struct intel_guc *guc, bool stalled);
>> +void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled);
>>  void intel_guc_submission_reset_finish(struct intel_guc *guc);
>>  void intel_guc_submission_cancel_requests(struct intel_guc *guc);
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 61a6f2424e24..1fbf7b6c2740 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -1667,9 +1667,9 @@ __unwind_incomplete_requests(struct intel_context *ce)
>>       spin_unlock_irqrestore(&sched_engine->lock, flags);
>>  }
>>
>> -static void __guc_reset_context(struct intel_context *ce, bool stalled)
>> +static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t stalled)
>>  {
>> -     bool local_stalled;
>> +     bool guilty;
>>       struct i915_request *rq;
>>       unsigned long flags;
>>       u32 head;
>> @@ -1697,7 +1697,7 @@ static void __guc_reset_context(struct intel_context *ce, bool stalled)
>>               if (!intel_context_is_pinned(ce))
>>                       goto next_context;
>>
>> -             local_stalled = false;
>> +             guilty = false;
>>               rq = intel_context_find_active_request(ce);
>>               if (!rq) {
>>                       head = ce->ring->tail;
>> @@ -1705,14 +1705,14 @@ static void __guc_reset_context(struct intel_context *ce, bool stalled)
>>               }
>>
>>               if (i915_request_started(rq))
>> -                     local_stalled = true;
>> +                     guilty = stalled & ce->engine->mask;
>>
>>               GEM_BUG_ON(i915_active_is_idle(&ce->active));
>>               head = intel_ring_wrap(ce->ring, rq->head);
>>
>> -             __i915_request_reset(rq, local_stalled && stalled);
>> +             __i915_request_reset(rq, guilty);
>>  out_replay:
>> -             guc_reset_state(ce, head, local_stalled && stalled);
>> +             guc_reset_state(ce, head, guilty);
>>  next_context:
>>               if (i != number_children)
>>                       ce = list_next_entry(ce, parallel.child_link);
>> @@ -1722,7 +1722,7 @@ static void __guc_reset_context(struct intel_context *ce, bool stalled)
>>       intel_context_put(parent);
>>  }
>>
>> -void intel_guc_submission_reset(struct intel_guc *guc, bool stalled)
>> +void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
>>  {
>>       struct intel_context *ce;
>>       unsigned long index;
>> @@ -4217,7 +4217,7 @@ static void guc_context_replay(struct intel_context *ce)
>>  {
>>       struct i915_sched_engine *sched_engine = ce->engine->sched_engine;
>>
>> -     __guc_reset_context(ce, true);
>> +     __guc_reset_context(ce, ce->engine->mask);
>>       tasklet_hi_schedule(&sched_engine->tasklet);
>>  }
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> index 8c9ef690ac9d..e8f099360e01 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> @@ -595,7 +595,7 @@ void intel_uc_reset_prepare(struct intel_uc *uc)
>>       __uc_sanitize(uc);
>>  }
>>
>> -void intel_uc_reset(struct intel_uc *uc, bool stalled)
>> +void intel_uc_reset(struct intel_uc *uc, intel_engine_mask_t stalled)
>>  {
>>       struct intel_guc *guc = &uc->guc;
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>> index 866b462821c0..a8f38c2c60e2 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>> @@ -42,7 +42,7 @@ void intel_uc_driver_late_release(struct intel_uc *uc);
>>  void intel_uc_driver_remove(struct intel_uc *uc);
>>  void intel_uc_init_mmio(struct intel_uc *uc);
>>  void intel_uc_reset_prepare(struct intel_uc *uc);
>> -void intel_uc_reset(struct intel_uc *uc, bool stalled);
>> +void intel_uc_reset(struct intel_uc *uc, intel_engine_mask_t stalled);
>>  void intel_uc_reset_finish(struct intel_uc *uc);
>>  void intel_uc_cancel_requests(struct intel_uc *uc);
>>  void intel_uc_suspend(struct intel_uc *uc);
>> --
>> 2.35.1
>>
>
