Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B66083DB647
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 11:49:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 254CF6F40A;
	Fri, 30 Jul 2021 09:49:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6D966F40A;
 Fri, 30 Jul 2021 09:49:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="276843196"
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="276843196"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 02:49:06 -0700
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="476909405"
Received: from mpenny-mobl1.ger.corp.intel.com (HELO [10.213.234.2])
 ([10.213.234.2])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 02:49:03 -0700
To: John Harrison <john.c.harrison@intel.com>,
 Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20210729003400.151864-1-matthew.brost@intel.com>
 <20210729003400.151864-2-matthew.brost@intel.com>
 <eea0bdb7-681b-0acb-0b9c-041fb38a7119@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1b75f6c6-e458-6bc7-f867-12f1b5b18af0@linux.intel.com>
Date: Fri, 30 Jul 2021 10:49:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <eea0bdb7-681b-0acb-0b9c-041fb38a7119@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Check if engine has heartbeat
 when closing a context
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


On 30/07/2021 01:13, John Harrison wrote:
> On 7/28/2021 17:34, Matthew Brost wrote:
>> If an engine associated with a context does not have a heartbeat, ban it
>> immediately. This is needed for GuC submission as a idle pulse doesn't
>> kick the context off the hardware where it then can check for a
>> heartbeat and ban the context.

Pulse, that is a request with I915_PRIORITY_BARRIER, does not preempt a 
running normal priority context?

Why does it matter then whether or not heartbeats are enabled - when 
heartbeat just ends up sending the same engine pulse (eventually, with 
raising priority)?

> It's worse than this. If the engine in question is an individual 
> physical engine then sending a pulse (with sufficiently high priority) 
> will pre-empt the engine and kick the context off. However, the GuC 

Why it is different for physical vs virtual, aren't both just 
schedulable contexts with different engine masks for what GuC is 
concerned? Oh, is it a matter of needing to send pulses to all engines 
which comprise a virtual one?

> scheduler does not have hacks in it to check the state of the heartbeat 
> or whether a context is actually a zombie or not. Thus, the context will 
> get resubmitted to the hardware after the pulse completes and 
> effectively nothing will have happened.
> 
> I would assume that the DRM scheduler which we are meant to be switching 
> to for execlist as well as GuC submission is also unlikely to have hacks 
> for zombie contexts and tests for whether the i915 specific heartbeat 
> has been disabled since the context became a zombie. So when that switch 
> happens, this test will also fail in execlist mode as well as GuC mode.
> 
> The choices I see here are to simply remove persistence completely (it 
> is a basically a bug that became UAPI because it wasn't caught soon 
> enough!) or to implement it in a way that does not require hacks in the 
> back end scheduler. Apparently, the DRM scheduler is expected to allow 
> zombie contexts to persist until the DRM file handle is closed. So 
> presumably we will have to go with option two.
> 
> That means flagging a context as being a zombie when it is closed but 
> still active. The driver would then add it to a zombie list owned by the 
> DRM client object. When that client object is closed, i915 would go 
> through the list and genuinely kill all the contexts. No back end 
> scheduler hacks required and no intimate knowledge of the i915 heartbeat 
> mechanism required either.
> 
> John.
> 
> 
>>
>> This patch also updates intel_engine_has_heartbeat to be a vfunc as we
>> now need to call this function on execlists virtual engines too.
>>
>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_context.c   |  5 +++--
>>   drivers/gpu/drm/i915/gt/intel_context_types.h |  2 ++
>>   drivers/gpu/drm/i915/gt/intel_engine.h        | 21 ++-----------------
>>   .../drm/i915/gt/intel_execlists_submission.c  | 14 +++++++++++++
>>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  6 +++++-
>>   .../gpu/drm/i915/gt/uc/intel_guc_submission.h |  2 --
>>   6 files changed, 26 insertions(+), 24 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> index 9c3672bac0e2..b8e01c5ba9e5 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> @@ -1090,8 +1090,9 @@ static void kill_engines(struct i915_gem_engines 
>> *engines, bool ban)
>>        */
>>       for_each_gem_engine(ce, engines, it) {
>>           struct intel_engine_cs *engine;
>> +        bool local_ban = ban || !intel_engine_has_heartbeat(ce->engine);

In any case (pending me understanding what's really going on there), why 
would this check not be in kill_context with currently does this:

	bool ban = (!i915_gem_context_is_persistent(ctx) ||
		    !ctx->i915->params.enable_hangcheck);
...
		kill_engines(pos, ban);

So whether to ban decision would be consolidated to one place.

In fact, decision on whether to allow persistent is tied to 
enable_hangcheck, which also drives hearbeat emission. So perhaps one 
part of the correct fix is to extend the above (kill_context) ban 
criteria to include hearbeat values anyway. Otherwise isn't it a simple 
miss that this check fails to account to hearbeat disablement via sysfs?

Regards,

Tvrtko

>> -        if (ban && intel_context_ban(ce, NULL))
>> +        if (local_ban && intel_context_ban(ce, NULL))
>>               continue;
>>           /*
>> @@ -1104,7 +1105,7 @@ static void kill_engines(struct i915_gem_engines 
>> *engines, bool ban)
>>           engine = active_engine(ce);
>>           /* First attempt to gracefully cancel the context */
>> -        if (engine && !__cancel_engine(engine) && ban)
>> +        if (engine && !__cancel_engine(engine) && local_ban)
>>               /*
>>                * If we are unable to send a preemptive pulse to bump
>>                * the context from the GPU, we have to resort to a full
>> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h 
>> b/drivers/gpu/drm/i915/gt/intel_context_types.h
>> index e54351a170e2..65f2eb2a78e4 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
>> @@ -55,6 +55,8 @@ struct intel_context_ops {
>>       void (*reset)(struct intel_context *ce);
>>       void (*destroy)(struct kref *kref);
>> +    bool (*has_heartbeat)(const struct intel_engine_cs *engine);
>> +
>>       /* virtual engine/context interface */
>>       struct intel_context *(*create_virtual)(struct intel_engine_cs 
>> **engine,
>>                           unsigned int count);
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h 
>> b/drivers/gpu/drm/i915/gt/intel_engine.h
>> index c2a5640ae055..1b11a808acc4 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
>> @@ -283,28 +283,11 @@ struct intel_context *
>>   intel_engine_create_virtual(struct intel_engine_cs **siblings,
>>                   unsigned int count);
>> -static inline bool
>> -intel_virtual_engine_has_heartbeat(const struct intel_engine_cs *engine)
>> -{
>> -    /*
>> -     * For non-GuC submission we expect the back-end to look at the
>> -     * heartbeat status of the actual physical engine that the work
>> -     * has been (or is being) scheduled on, so we should only reach
>> -     * here with GuC submission enabled.
>> -     */
>> -    GEM_BUG_ON(!intel_engine_uses_guc(engine));
>> -
>> -    return intel_guc_virtual_engine_has_heartbeat(engine);
>> -}
>> -
>>   static inline bool
>>   intel_engine_has_heartbeat(const struct intel_engine_cs *engine)
>>   {
>> -    if (!IS_ACTIVE(CONFIG_DRM_I915_HEARTBEAT_INTERVAL))
>> -        return false;
>> -
>> -    if (intel_engine_is_virtual(engine))
>> -        return intel_virtual_engine_has_heartbeat(engine);
>> +    if (engine->cops->has_heartbeat)
>> +        return engine->cops->has_heartbeat(engine);
>>       else
>>           return READ_ONCE(engine->props.heartbeat_interval_ms);
>>   }
>> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c 
>> b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>> index de5f9c86b9a4..18005b5546b6 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>> @@ -3619,6 +3619,18 @@ virtual_get_sibling(struct intel_engine_cs 
>> *engine, unsigned int sibling)
>>       return ve->siblings[sibling];
>>   }
>> +static bool virtual_engine_has_heartbeat(const struct intel_engine_cs 
>> *ve)
>> +{
>> +    struct intel_engine_cs *engine;
>> +    intel_engine_mask_t tmp, mask = ve->mask;
>> +
>> +    for_each_engine_masked(engine, ve->gt, mask, tmp)
>> +        if (READ_ONCE(engine->props.heartbeat_interval_ms))
>> +            return true;
>> +
>> +    return false;
>> +}
>> +
>>   static const struct intel_context_ops virtual_context_ops = {
>>       .flags = COPS_HAS_INFLIGHT,
>> @@ -3634,6 +3646,8 @@ static const struct intel_context_ops 
>> virtual_context_ops = {
>>       .enter = virtual_context_enter,
>>       .exit = virtual_context_exit,
>> +    .has_heartbeat = virtual_engine_has_heartbeat,
>> +
>>       .destroy = virtual_context_destroy,
>>       .get_sibling = virtual_get_sibling,
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 89ff0e4b4bc7..ae70bff3605f 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -2168,6 +2168,8 @@ static int guc_virtual_context_alloc(struct 
>> intel_context *ce)
>>       return lrc_alloc(ce, engine);
>>   }
>> +static bool guc_virtual_engine_has_heartbeat(const struct 
>> intel_engine_cs *ve);
>> +
>>   static const struct intel_context_ops virtual_guc_context_ops = {
>>       .alloc = guc_virtual_context_alloc,
>> @@ -2183,6 +2185,8 @@ static const struct intel_context_ops 
>> virtual_guc_context_ops = {
>>       .enter = guc_virtual_context_enter,
>>       .exit = guc_virtual_context_exit,
>> +    .has_heartbeat = guc_virtual_engine_has_heartbeat,
>> +
>>       .sched_disable = guc_context_sched_disable,
>>       .destroy = guc_context_destroy,
>> @@ -3029,7 +3033,7 @@ guc_create_virtual(struct intel_engine_cs 
>> **siblings, unsigned int count)
>>       return ERR_PTR(err);
>>   }
>> -bool intel_guc_virtual_engine_has_heartbeat(const struct 
>> intel_engine_cs *ve)
>> +static bool guc_virtual_engine_has_heartbeat(const struct 
>> intel_engine_cs *ve)
>>   {
>>       struct intel_engine_cs *engine;
>>       intel_engine_mask_t tmp, mask = ve->mask;
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
>> index c7ef44fa0c36..c2afc3b88fd8 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
>> @@ -29,8 +29,6 @@ void intel_guc_dump_active_requests(struct 
>> intel_engine_cs *engine,
>>                       struct i915_request *hung_rq,
>>                       struct drm_printer *m);
>> -bool intel_guc_virtual_engine_has_heartbeat(const struct 
>> intel_engine_cs *ve);
>> -
>>   int intel_guc_wait_for_pending_msg(struct intel_guc *guc,
>>                      atomic_t *wait_var,
>>                      bool interruptible,
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
