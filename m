Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D03E146A97
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 15:01:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7089D6FCEF;
	Thu, 23 Jan 2020 14:01:56 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CB426FCDE;
 Thu, 23 Jan 2020 14:01:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 06:01:44 -0800
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="229838964"
Received: from wmszyfel-mobl2.ger.corp.intel.com (HELO [10.252.10.247])
 ([10.252.10.247])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 23 Jan 2020 06:01:43 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20200123124306.18857-1-tvrtko.ursulin@linux.intel.com>
 <157978404508.19995.12294352233320424183@skylake-alporthouse-com>
 <ec205d22-3882-d655-921d-d35f24f99763@linux.intel.com>
 <157978539009.19995.13535399102451802903@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8ddcfcb7-d701-01a1-e208-c18c207b21fa@linux.intel.com>
Date: Thu, 23 Jan 2020 14:01:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157978539009.19995.13535399102451802903@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_engine_topology: Introduce
 and use gem_context_clone_with_engines
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 23/01/2020 13:16, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-01-23 13:08:26)
>>
>> On 23/01/2020 12:54, Chris Wilson wrote:
>>> Quoting Tvrtko Ursulin (2020-01-23 12:43:06)
>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>
>>>> In test cases which create new contexts and submit work against them using
>>>> the passed in engine index we are sometimes unsure whether this engine
>>>> index was potentially created based on a default context with engine map
>>>> configured (such as when under the __for_each_physical_engine iterator.
>>>>
>>>> To simplify test code we add gem_context/queue_clone_with_engines which
>>>> is to be used in such scenario instead of the current pattern of
>>>> gem_context_create followed by gem_context_set_all_engines (which is also
>>>> removed by the patch).
>>>>
>>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>> Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
>>>> ---
>>>>    lib/i915/gem_context.c         | 59 ++++++++++++++++++++++++++++++++++
>>>>    lib/i915/gem_context.h         |  4 +++
>>>>    lib/i915/gem_engine_topology.c | 11 -------
>>>>    lib/i915/gem_engine_topology.h |  2 --
>>>>    tests/i915/gem_ctx_clone.c     | 15 +--------
>>>>    tests/i915/gem_ctx_switch.c    | 19 ++++-------
>>>>    tests/i915/gem_exec_parallel.c |  3 +-
>>>>    tests/i915/gem_spin_batch.c    | 11 +++----
>>>>    tests/perf_pmu.c               |  3 +-
>>>>    9 files changed, 76 insertions(+), 51 deletions(-)
>>>>
>>>> diff --git a/lib/i915/gem_context.c b/lib/i915/gem_context.c
>>>> index 1fae5191f83f..f92d5ff3dfc5 100644
>>>> --- a/lib/i915/gem_context.c
>>>> +++ b/lib/i915/gem_context.c
>>>> @@ -372,6 +372,50 @@ uint32_t gem_context_clone(int i915,
>>>>           return ctx;
>>>>    }
>>>>    
>>>> +bool gem_has_context_clone(int i915)
>>>> +{
>>>> +       struct drm_i915_gem_context_create_ext_clone ext = {
>>>> +               { .name = I915_CONTEXT_CREATE_EXT_CLONE },
>>>> +               .clone_id = -1,
>>>> +       };
>>>> +       struct drm_i915_gem_context_create_ext create = {
>>>> +               .flags = I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,
>>>> +               .extensions = to_user_pointer(&ext),
>>>> +       };
>>>> +       int err;
>>>> +
>>>> +       err = 0;
>>>> +       if (igt_ioctl(i915, DRM_IOCTL_I915_GEM_CONTEXT_CREATE_EXT, &create)) {
>>>> +               err = -errno;
>>>> +               igt_assume(err);
>>>> +       }
>>>> +       errno = 0;
>>>> +
>>>> +       return err == -ENOENT;
>>>> +}
>>>> +
>>>> +/**
>>>> + * gem_context_clone_with_engines:
>>>> + * @i915: open i915 drm file descriptor
>>>> + * @src: i915 context id
>>>> + *
>>>> + * Special purpose wrapper to create a new context by cloning engines from @src.
>>>> + *
>>>> + * In can be called regardless of whether the kernel supports context cloning.
>>>> + *
>>>> + * Intended purpose is to use for creating contexts against which work will be
>>>> + * submitted and the engine index came from external source, derived from a
>>>> + * default context potentially configured with an engine map.
>>>> + */
>>>> +uint32_t gem_context_clone_with_engines(int i915, uint32_t src)
>>>> +{
>>>> +       if (!gem_has_context_clone(i915))
>>>> +               return gem_context_create(i915);
>>>
>>> Yes, that should cover us for older kernels and keep the for_each loops
>>> happy.
>>>
>>>> +       else
>>>> +               return gem_context_clone(i915, src, 0,
>>>> +                                        I915_CONTEXT_CLONE_ENGINES);
>>>
>>> 0 and CLONE are the wrong way around.
>>
>> Oopsie.
>>
>>>
>>> I would have done
>>>
>>> int __gem_context_clone_with_engines(int i915, uint32_t src, uint32_t *out)
>>> {
>>>        int err;
>>>
>>>        err = __gem_context_clone(i915, src, CLONE_ENGINES, 0, out);
>>>        if (err && !gem_has_context_clone(i915))
>>>                err = __gem_context_create(i915, out);
>>>
>>>        return err;
>>> }
>>>
>>> uint32_t gem_context_clone_with_engines(int i915, uint32_t src)
>>> {
>>>        uint32_t ctx;
>>>
>>>        igt_assert_eq(__gem_context_clone_with_engine(i915, src, &ctx), 0);
>>>
>>>        return ctx;
>>> }
>>
>> I think I prefer my version as it is a bit more explicit.
> 
> I was hoping to do something more like
> 	err = __clone()
> 	if (err == ENOSYS)
> 		err = __create()
> 
> Either way, I would suggest doing
> 
> int __gem_context_clone_with_engines(int i915, uint32_t src, uint32_t *out);
> uint32_t gem_context_clone_with_engines(int i915, uint32_t src);
> 
> as I prefer that style of error message.

Error message? What do you mean?

> Nothing else to complain about,
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

So this is conditional on rewriting it as above or not?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
