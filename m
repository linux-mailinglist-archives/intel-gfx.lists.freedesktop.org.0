Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBCB5F2B58
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 09:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6991710E256;
	Mon,  3 Oct 2022 07:59:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE4C310E250;
 Mon,  3 Oct 2022 07:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664783948; x=1696319948;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=W2YvS04RNgP/SY8BV2SzS4jQ4XzUmyKc3OrD5UmCEvM=;
 b=XNGbLdb0CXkOiv//saueFS0E7RjadrRuHpZDxvVRCcBoyTfRLOBjK7vF
 4c6DXh7vOGp0reVA15yiLpupqvyLgT+3p37Wu83+Yzg5lrm287HFJKit9
 OVyHj6sCvFKQE8+FxxJemx+Fy7qOtMsgmQWtpCd/5cGSRw0iuzdmty8AY
 Vlo5ocekNiOr6DW/SWCO2ao8nq7eTwV7qTQMB4geAFl1QsbJdEa4zUyxd
 NvP31HHHCobxILzrxdo+E79MH9aSien93uzXCaRYRWrO8S6L0xUbOMQsP
 adQCdtNfYS7krlznWAnsPoqV/BstDryzPF2J6ToWiACfuSnZtyUFmfVfw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="285709203"
X-IronPort-AV: E=Sophos;i="5.93,364,1654585200"; d="scan'208";a="285709203"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 00:59:08 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="574542902"
X-IronPort-AV: E=Sophos;i="5.93,364,1654585200"; d="scan'208";a="574542902"
Received: from praffert-mobl.ger.corp.intel.com (HELO [10.213.196.20])
 ([10.213.196.20])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 00:59:07 -0700
Message-ID: <7ba0be22-db56-f37f-833d-1ee6dc96efbf@linux.intel.com>
Date: Mon, 3 Oct 2022 08:59:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, Intel-gfx@lists.freedesktop.org
References: <20220930094716.430937-1-tvrtko.ursulin@linux.intel.com>
 <15f67d73-2675-0a6e-b75d-584c4f71391e@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <15f67d73-2675-0a6e-b75d-584c4f71391e@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Fix revocation of
 non-persistent contexts
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 30/09/2022 15:52, Andrzej Hajda wrote:
> On 30.09.2022 11:47, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Patch which added graceful exit for non-persistent contexts missed the
>> fact it is not enough to set the exiting flag on a context and let the
>> backend handle it from there.
>>
>> GuC backend cannot handle it because it runs independently in the
>> firmware and driver might not see the requests ever again. Patch also
>> missed the fact some usages of intel_context_is_banned in the GuC backend
>> needed replacing with newly introduced intel_context_is_schedulable.
>>
>> Fix the first issue by calling into backend revoke when we know this is
>> the last chance to do it. Fix the second issue by replacing
>> intel_context_is_banned with intel_context_is_schedulable, which should
>> always be safe since latter is a superset of the former.
> 
> negation of the latter is a ...?

I did not get what you meant here.

>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Fixes: 45c64ecf97ee ("drm/i915: Improve user experience and driver 
>> robustness under SIGINT or similar")
>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_context.c   |  8 +-----
>>   drivers/gpu/drm/i915/gt/intel_context.c       | 14 +++++++---
>>   drivers/gpu/drm/i915/gt/intel_context.h       |  8 +-----
>>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 26 +++++++++----------
>>   4 files changed, 25 insertions(+), 31 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> index 0bcde53c50c6..1e29b1e6d186 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> @@ -1387,14 +1387,8 @@ kill_engines(struct i915_gem_engines *engines, 
>> bool exit, bool persistent)
>>        */
>>       for_each_gem_engine(ce, engines, it) {
>>           struct intel_engine_cs *engine;
>> -        bool skip = false;
>> -        if (exit)
>> -            skip = intel_context_set_exiting(ce);
>> -        else if (!persistent)
>> -            skip = intel_context_exit_nonpersistent(ce, NULL); > -
>> -        if (skip)
>> +        if ((exit || !persistent) && intel_context_revoke(ce))
>>               continue; /* Already marked. */
>>           /*
>> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c 
>> b/drivers/gpu/drm/i915/gt/intel_context.c
>> index 654a092ed3d6..398b2a9eed61 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_context.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
>> @@ -614,13 +614,19 @@ bool intel_context_ban(struct intel_context *ce, 
>> struct i915_request *rq)
>>       return ret;
>>   }
>> -bool intel_context_exit_nonpersistent(struct intel_context *ce,
>> -                      struct i915_request *rq)
>> +bool intel_context_revoke(struct intel_context *ce)
>>   {
>>       bool ret = intel_context_set_exiting(ce);
>> -    if (ce->ops->revoke)
>> -        ce->ops->revoke(ce, rq, ce->engine->props.preempt_timeout_ms);
>> +    if (!ret && intel_engine_uses_guc(ce->engine)) {
>> +        /*
>> +         * With GuC backend we have to notify it of revocation as soon
>> +         * as the exiting flag is set.
>> +         */
>> +        if (ce->ops->revoke)
>> +            ce->ops->revoke(ce, NULL,
>> +                    ce->engine->props.preempt_timeout_ms);
>> +    }
> 
> Now revoke is called only with GuC, previously it was called also for 
> other backends in case non-exiting/non-persistent, is it OK?

It is okay (execlists has no revoke vfunc, ringbuffer has it but only 
works if target request is known), but agreed it is a bit ugly. I was in 
two minds which way to go. Perhaps it would indeed be cleaner to go 
unconditional. I will resend with that change, copying stable this time 
round (since 6.0 is out), and can keep your r-b?

Regards,

Tvrtko

> 
>>       return ret;
>>   }
>> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h 
>> b/drivers/gpu/drm/i915/gt/intel_context.h
>> index 8e2d70630c49..40f8809d14ea 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_context.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
>> @@ -319,18 +319,12 @@ static inline bool 
>> intel_context_is_schedulable(const struct intel_context *ce)
>>              !test_bit(CONTEXT_BANNED, &ce->flags);
>>   }
>> -static inline bool intel_context_is_exiting(const struct 
>> intel_context *ce)
>> -{
>> -    return test_bit(CONTEXT_EXITING, &ce->flags);
>> -}
>> -
>>   static inline bool intel_context_set_exiting(struct intel_context *ce)
>>   {
>>       return test_and_set_bit(CONTEXT_EXITING, &ce->flags);
>>   }
>> -bool intel_context_exit_nonpersistent(struct intel_context *ce,
>> -                      struct i915_request *rq);
>> +bool intel_context_revoke(struct intel_context *ce);
>>   static inline bool
>>   intel_context_force_single_submission(const struct intel_context *ce)
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 0ef295a94060..88a4476b8e92 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -685,7 +685,7 @@ static int __guc_add_request(struct intel_guc 
>> *guc, struct i915_request *rq)
>>        * Corner case where requests were sitting in the priority list 
>> or a
>>        * request resubmitted after the context was banned.
>>        */
>> -    if (unlikely(intel_context_is_banned(ce))) {
>> +    if (unlikely(!intel_context_is_schedulable(ce))) {
>>           i915_request_put(i915_request_mark_eio(rq));
>>           intel_engine_signal_breadcrumbs(ce->engine);
>>           return 0;
>> @@ -871,15 +871,15 @@ static int guc_wq_item_append(struct intel_guc 
>> *guc,
>>                     struct i915_request *rq)
>>   {
>>       struct intel_context *ce = request_to_scheduling_context(rq);
>> -    int ret = 0;
>> +    int ret;
>> -    if (likely(!intel_context_is_banned(ce))) {
>> -        ret = __guc_wq_item_append(rq);
>> +    if (unlikely(!intel_context_is_schedulable(ce)))
>> +        return 0;
>> -        if (unlikely(ret == -EBUSY)) {
>> -            guc->stalled_request = rq;
>> -            guc->submission_stall_reason = STALL_MOVE_LRC_TAIL;
>> -        }
>> +    ret = __guc_wq_item_append(rq);
>> +    if (unlikely(ret == -EBUSY)) {
>> +        guc->stalled_request = rq;
>> +        guc->submission_stall_reason = STALL_MOVE_LRC_TAIL;
>>       }
>>       return ret;
>> @@ -898,7 +898,7 @@ static bool multi_lrc_submit(struct i915_request *rq)
>>        * submitting all the requests generated in parallel.
>>        */
>>       return test_bit(I915_FENCE_FLAG_SUBMIT_PARALLEL, 
>> &rq->fence.flags) ||
>> -        intel_context_is_banned(ce);
>> +           !intel_context_is_schedulable(ce);
>>   }
>>   static int guc_dequeue_one_context(struct intel_guc *guc)
>> @@ -967,7 +967,7 @@ static int guc_dequeue_one_context(struct 
>> intel_guc *guc)
>>           struct intel_context *ce = request_to_scheduling_context(last);
>>           if (unlikely(!ctx_id_mapped(guc, ce->guc_id.id) &&
>> -                 !intel_context_is_banned(ce))) {
>> +                 intel_context_is_schedulable(ce))) {
>>               ret = try_context_registration(ce, false);
>>               if (unlikely(ret == -EPIPE)) {
>>                   goto deadlk;
>> @@ -1577,7 +1577,7 @@ static void guc_reset_state(struct intel_context 
>> *ce, u32 head, bool scrub)
>>   {
>>       struct intel_engine_cs *engine = __context_to_physical_engine(ce);
>> -    if (intel_context_is_banned(ce))
>> +    if (!intel_context_is_schedulable(ce))
>>           return;
>>       GEM_BUG_ON(!intel_context_is_pinned(ce));
>> @@ -4518,12 +4518,12 @@ static void guc_handle_context_reset(struct 
>> intel_guc *guc,
>>   {
>>       trace_intel_context_reset(ce);
>> -    if (likely(!intel_context_is_banned(ce))) {
>> +    if (likely(intel_context_is_schedulable(ce))) {
>>           capture_error_state(guc, ce);
>>           guc_context_replay(ce);
>>       } else {
>>           drm_info(&guc_to_gt(guc)->i915->drm,
>> -             "Ignoring context reset notification of banned context 
>> 0x%04X on %s",
>> +             "Ignoring context reset notification of exiting context 
>> 0x%04X on %s",
> 
> With small clarifications:
> 
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> 
> Regards
> Andrzej
> 
> 
>>                ce->guc_id.id, ce->engine->name);
>>       }
>>   }
> 
