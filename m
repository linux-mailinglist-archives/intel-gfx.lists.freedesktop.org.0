Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDA84BF631
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 11:39:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56CEF10E512;
	Tue, 22 Feb 2022 10:39:48 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E7DB10E512;
 Tue, 22 Feb 2022 10:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645526387; x=1677062387;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=+8h1kIQ8eFLWpGQd3uA5+/jcafx2EM5kXpWlzhW6bK4=;
 b=h96bFO5oUryrdMIz/RcDXDwSsyX8+pGmWWVSImWlsExmk8ZsshHVfCd+
 F5+q5u9uum6Ib9fcDYLR0mdNX19MNsxmWF5NjqgME01DMbrBAgQ0F9PPd
 QNraScq0csDCNbvcPlZfWn8KXBmhTfWZO+sURRmMyG2ThePwjELEubHR8
 yyh/494syNPxAFh41M+jJCAlvm0FF7DLFd2veFNjmuOPVrSpV9vAkgvsC
 C3bjVy1HSSXn4DVJ+JE00/wUohOvg++PHuzJO/uh8HQTE8FVbJUw4qiuw
 yE/V6w2Vs3G1cFMrAExGSeEUINZWs4if3RBSZQHIYTtHI6pN+L2tn1vOZ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="250487701"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="250487701"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 02:39:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="507937472"
Received: from sjgillin-mobl.ger.corp.intel.com (HELO [10.213.218.63])
 ([10.213.218.63])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 02:39:45 -0800
Message-ID: <1bc7257b-ddb6-1a5b-119f-3ef89cd5e634@linux.intel.com>
Date: Tue, 22 Feb 2022 10:39:43 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20220218213307.1338478-1-John.C.Harrison@Intel.com>
 <20220218213307.1338478-2-John.C.Harrison@Intel.com>
 <0d0c5a79-1285-0830-3794-e9f0644811a5@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <0d0c5a79-1285-0830-3794-e9f0644811a5@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/guc: Limit scheduling
 properties to avoid overflow
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 22/02/2022 09:52, Tvrtko Ursulin wrote:
> 
> On 18/02/2022 21:33, John.C.Harrison@Intel.com wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> GuC converts the pre-emption timeout and timeslice quantum values into
>> clock ticks internally. That significantly reduces the point of 32bit
>> overflow. On current platforms, worst case scenario is approximately
> 
> Where does 32-bit come from, the GuC side? We already use 64-bits so 
> that something to fix to start with. Yep...
> 
> ./gt/uc/intel_guc_fwif.h:       u32 execution_quantum;
> 
> ./gt/uc/intel_guc_submission.c: desc->execution_quantum = 
> engine->props.timeslice_duration_ms * 1000;
> 
> ./gt/intel_engine_types.h:              unsigned long 
> timeslice_duration_ms;
> 
> timeslice_store/preempt_timeout_store:
> err = kstrtoull(buf, 0, &duration);
> 
> So both kconfig and sysfs can already overflow GuC, not only because of 
> tick conversion internally but because at backend level nothing was done 
> for assigning 64-bit into 32-bit. Or I failed to find where it is handled.
> 
>> 110 seconds. Rather than allowing the user to set higher values and
>> then get confused by early timeouts, add limits when setting these
>> values.
> 
> Btw who is reviewing GuC patches these days - things have somehow gotten 
> pretty quiet in activity and I don't think that's due absence of stuff 
> to improve or fix? Asking since I think I noticed a few already which 
> you posted and then crickets on the mailing list.
> 
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 15 +++++++++++++++
>>   drivers/gpu/drm/i915/gt/sysfs_engines.c     | 14 ++++++++++++++
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h |  9 +++++++++
>>   3 files changed, 38 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c 
>> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> index e53008b4dd05..2a1e9f36e6f5 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> @@ -389,6 +389,21 @@ static int intel_engine_setup(struct intel_gt 
>> *gt, enum intel_engine_id id,
>>       if (GRAPHICS_VER(i915) == 12 && engine->class == RENDER_CLASS)
>>           engine->props.preempt_timeout_ms = 0;
>> +    /* Cap timeouts to prevent overflow inside GuC */
>> +    if (intel_guc_submission_is_wanted(&gt->uc.guc)) {
>> +        if (engine->props.timeslice_duration_ms > 
>> GUC_POLICY_MAX_EXEC_QUANTUM_MS) {
> 
> Hm "wanted".. There's been too much back and forth on the GuC load 
> options over the years to keep track.. intel_engine_uses_guc work sounds 
> like would work and read nicer.
> 
> And limit to class instead of applying to all engines looks like a miss.

Sorry limit to class does not apply here, I confused this with the last 
patch.

Regards,

Tvrtko

> 
>> +            drm_info(&engine->i915->drm, "Warning, clamping timeslice 
>> duration to %d to prevent possibly overflow\n",
>> +                 GUC_POLICY_MAX_EXEC_QUANTUM_MS);
>> +            engine->props.timeslice_duration_ms = 
>> GUC_POLICY_MAX_EXEC_QUANTUM_MS;
> 
> I am not sure logging such message during driver load is useful. Sounds 
> more like a confused driver which starts with one value and then 
> overrides itself. I'd just silently set the value appropriate for the 
> active backend. Preemption timeout kconfig text already documents the 
> fact timeouts can get overriden at runtime depending on platform+engine. 
> So maybe just add same text to timeslice kconfig.
> 
>> +        }
>> +
>> +        if (engine->props.preempt_timeout_ms > 
>> GUC_POLICY_MAX_PREEMPT_TIMEOUT_MS) {
>> +            drm_info(&engine->i915->drm, "Warning, clamping 
>> pre-emption timeout to %d to prevent possibly overflow\n",
>> +                 GUC_POLICY_MAX_PREEMPT_TIMEOUT_MS);
>> +            engine->props.preempt_timeout_ms = 
>> GUC_POLICY_MAX_PREEMPT_TIMEOUT_MS;
>> +        }
>> +    }
>> +
>>       engine->defaults = engine->props; /* never to change again */
>>       engine->context_size = intel_engine_context_size(gt, 
>> engine->class);
>> diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c 
>> b/drivers/gpu/drm/i915/gt/sysfs_engines.c
>> index 967031056202..f57efe026474 100644
>> --- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
>> +++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
>> @@ -221,6 +221,13 @@ timeslice_store(struct kobject *kobj, struct 
>> kobj_attribute *attr,
>>       if (duration > jiffies_to_msecs(MAX_SCHEDULE_TIMEOUT))
>>           return -EINVAL;
>> +    if (intel_uc_uses_guc_submission(&engine->gt->uc) &&
>> +        duration > GUC_POLICY_MAX_EXEC_QUANTUM_MS) {
>> +        duration = GUC_POLICY_MAX_EXEC_QUANTUM_MS;
>> +        drm_info(&engine->i915->drm, "Warning, clamping timeslice 
>> duration to %lld to prevent possibly overflow\n",
>> +             duration);
>> +    }
> 
> I would suggest to avoid duplicated clamping logic. Maybe hide the all 
> backend logic into the helpers then, like maybe:
> 
>    d = intel_engine_validate_timeslice/preempt_timeout(engine, duration);
>    if (d != duration)
>      return -EINVAL:
> 
> Returning -EINVAL would be equivalent to existing behaviour:
> 
>      if (duration > jiffies_to_msecs(MAX_SCHEDULE_TIMEOUT))
>          return -EINVAL;
> 
> That way userspace has explicit notification and read-back is identical 
> to written in value. From engine setup you can just call the helper 
> silently.
> 
>> +
>>       WRITE_ONCE(engine->props.timeslice_duration_ms, duration);
>>       if (execlists_active(&engine->execlists))
>> @@ -325,6 +332,13 @@ preempt_timeout_store(struct kobject *kobj, 
>> struct kobj_attribute *attr,
>>       if (timeout > jiffies_to_msecs(MAX_SCHEDULE_TIMEOUT))
>>           return -EINVAL;
>> +    if (intel_uc_uses_guc_submission(&engine->gt->uc) &&
>> +        timeout > GUC_POLICY_MAX_PREEMPT_TIMEOUT_MS) {
>> +        timeout = GUC_POLICY_MAX_PREEMPT_TIMEOUT_MS;
>> +        drm_info(&engine->i915->drm, "Warning, clamping pre-emption 
>> timeout to %lld to prevent possibly overflow\n",
>> +             timeout);
>> +    }
>> +
>>       WRITE_ONCE(engine->props.preempt_timeout_ms, timeout);
>>       if (READ_ONCE(engine->execlists.pending[0]))
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> index 6a4612a852e2..ad131092f8df 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> @@ -248,6 +248,15 @@ struct guc_lrc_desc {
>>   #define GLOBAL_POLICY_DEFAULT_DPC_PROMOTE_TIME_US 500000
>> +/*
>> + * GuC converts the timeout to clock ticks internally. Different 
>> platforms have
>> + * different GuC clocks. Thus, the maximum value before overflow is 
>> platform
>> + * dependent. Current worst case scenario is about 110s. So, limit to 
>> 100s to be
>> + * safe.
>> + */
>> +#define GUC_POLICY_MAX_EXEC_QUANTUM_MS        (100 * 1000)
>> +#define GUC_POLICY_MAX_PREEMPT_TIMEOUT_MS    (100 * 1000)
> 
> Most important question -
> how will we know/notice if/when new GuC arrives where these timeouts 
> would still overflow? Can this be queried somehow at runtime or where 
> does the limit comes from? How is GuC told about it? Set in some field 
> and it just allows too large values silently break things?
> 
> Regards,
> 
> Tvrtko
> 
>> +
>>   struct guc_policies {
>>       u32 submission_queue_depth[GUC_MAX_ENGINE_CLASSES];
>>       /* In micro seconds. How much time to allow before DPC 
>> processing is
