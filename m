Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C8E392DC1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 14:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 630C06EEA2;
	Thu, 27 May 2021 12:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE3A96EEA2;
 Thu, 27 May 2021 12:13:40 +0000 (UTC)
IronPort-SDR: FPe3+UxqmqZ5cGJs7yYsicz7YcwhJwZShPoM1Vd+0uDA8hne7r9KVEg5vlW4geC1InmFDq5a56
 ga7Axdq0lP4A==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="189836091"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="189836091"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 05:13:39 -0700
IronPort-SDR: fUIBpKRsWPF5x4uwEf2ennWpgeru7rCQ5CqruvsmJjsQOLvQqIsJIUhT8q7ARzUBw07mn9kJtE
 9VxZvIe/8WQQ==
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="547775388"
Received: from amoses-mobl1.ger.corp.intel.com (HELO [10.213.211.53])
 ([10.213.211.53])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 05:13:38 -0700
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210525135508.244659-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20210525135508.244659-2-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <b9ae1daa-6add-1c67-58b4-16491f2e1431@linux.intel.com>
 <YK0OHJcSwWY1mm7v@phenom.ffwll.local>
 <8cf2c5f4-87a3-ce6b-150c-65fa054586a4@linux.intel.com>
 <YK9wrCayUwSDzMWG@phenom.ffwll.local>
 <59d2eee9-35c1-01fc-c226-50ad98aadb99@linux.intel.com>
 <YK90LkRrMXTC/hF3@phenom.ffwll.local>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e99af7a2-20f4-16c9-5a17-5d4a53b5309f@linux.intel.com>
Date: Thu, 27 May 2021 13:13:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YK90LkRrMXTC/hF3@phenom.ffwll.local>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/1] Let userspace know if they can trust
 timeslicing by including it as part of the
 I915_PARAM_HAS_SCHEDULER::I915_SCHEDULER_CAP_TIMESLICING
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
Cc: intel-gfx@lists.freedesktop.org,
 DRI Development <dri-devel@lists.freedesktop.org>, mahesh.meena@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 27/05/2021 11:27, Daniel Vetter wrote:
> On Thu, May 27, 2021 at 11:22:16AM +0100, Tvrtko Ursulin wrote:
>>
>> On 27/05/2021 11:13, Daniel Vetter wrote:
>>> On Wed, May 26, 2021 at 11:20:13AM +0100, Tvrtko Ursulin wrote:
>>>>
>>>> On 25/05/2021 15:47, Daniel Vetter wrote:
>>>>> On Tue, May 25, 2021 at 03:19:47PM +0100, Tvrtko Ursulin wrote:
>>>>>>
>>>>>> + dri-devel as per process
>>>>>>
>>>>>> On 25/05/2021 14:55, Tejas Upadhyay wrote:
>>>>>>> v2: Only declare timeslicing if we can safely preempt userspace.
>>>>>>
>>>>>> Commit message got butchered up somehow so you'll need to fix that at some
>>>>>> point.
>>>>>>
>>>>>> Regards,
>>>>>>
>>>>>> Tvrtko
>>>>>>
>>>>>>> Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
>>>>>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>>>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>>> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>>> ---
>>>>>>>      drivers/gpu/drm/i915/gt/intel_engine_user.c | 1 +
>>>>>>>      include/uapi/drm/i915_drm.h                 | 1 +
>>>>>>>      2 files changed, 2 insertions(+)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
>>>>>>> index 3cca7ea2d6ea..12d165566ed2 100644
>>>>>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
>>>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
>>>>>>> @@ -98,6 +98,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
>>>>>>>      		MAP(HAS_PREEMPTION, PREEMPTION),
>>>>>>>      		MAP(HAS_SEMAPHORES, SEMAPHORES),
>>>>>>>      		MAP(SUPPORTS_STATS, ENGINE_BUSY_STATS),
>>>>>>> +		MAP(TIMESLICE_BIT, TIMESLICING),
>>>>>>>      #undef MAP
>>>>>>>      	};
>>>>>>>      	struct intel_engine_cs *engine;
>>>>>>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>>>>>>> index c2c7759b7d2e..af2212d6113c 100644
>>>>>>> --- a/include/uapi/drm/i915_drm.h
>>>>>>> +++ b/include/uapi/drm/i915_drm.h
>>>>>>> @@ -572,6 +572,7 @@ typedef struct drm_i915_irq_wait {
>>>>>>>      #define   I915_SCHEDULER_CAP_PREEMPTION	(1ul << 2)
>>>>>>>      #define   I915_SCHEDULER_CAP_SEMAPHORES	(1ul << 3)
>>>>>>>      #define   I915_SCHEDULER_CAP_ENGINE_BUSY_STATS	(1ul << 4)
>>>>>>> +#define   I915_SCHEDULER_CAP_TIMESLICING	(1ul << 5)
>>>>>
>>>>> Since this is uapi I think we should at least have some nice kerneldoc
>>>>> that explains what exactly this is, what for (link to userspace) and all
>>>>> that. Ideally also minimally filing in the gaps in our uapi docs for stuff
>>>>> this references.
>>>>
>>>> IIUC there is no userspace apart from IGT needing it not to fail scheduling
>>>> tests on ADL.
>>>>
>>>> Current tests use "has preemption + has semaphores" as a proxy to answer the
>>>> "does the kernel support timeslicing" question. This stops working with the
>>>> Guc backend because GuC decided not to support semaphores (for reasons yet
>>>> unknown, see other thread), so explicit "has timeslicing" flag is needed in
>>>> order for tests to know that GuC is supposed to support timeslicing, even if
>>>> it doesn't use semaphores for inter-ring synchronisation.
>>>
>>> Since this if for igt only: Cant we do just extend the check in igt with
>>> an || GEN >= 12? I really hope that our future hw will continue to support
>>> timeslicing ...
>>
>> Not the gen 12 check, but possible I think. Explicit feature test would be better, but if definitely not allowed then along the lines of:
>>
>> has_timeslicing =
>> 	(has_preemption && has_semaphores) || uses_guc_submission;
> 
> That works too. Otoh what exactly is the "uses guc submission" flag and
> why do we have that? I've seen media use it as a stand-in for "does the
> kernel want bonded or parallel ctx?". Maybe another thing to check.

IGT derives it from the enable_guc modparam and logs it during test 
start (some tests). It's called actuall gem_submission_method(_..). It's 
useful to have as long as there are platforms where submission backend 
can be picked at runtime. Afterwards not so much I guess.

Regards,

Tvrtko

> Another option, if you really think the feature flag is the best approach
> (because future hw will drop timeslicing for some reason), then debugfs is
> the place of igt-only api.
> -Daniel
> 
>>
>> Regards,
>>
>> Tvrtko
>>> Also if it's not there yet, a shared helper to check for that (like we're
>>> adding for relocations and stuff like that right now).
>>> -Daniel
>>>
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
