Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AB76D1AF5
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 10:58:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C3DA10F156;
	Fri, 31 Mar 2023 08:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AACE810F156
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 08:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680253077; x=1711789077;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=DmEakviLj1TVsrjtUE0NLRavDtsDKCfwiScX05Z3LWk=;
 b=eLJ659sfdSywFAiWc2lPxa438YOqF4WC39q1SnmK3y/1mSEMvF4nNFHv
 uqGcUG7sXDRWrOfGeyPn6KQaI21uyHkkPppffvSFVSJVNmoMorSDhNkMt
 CpUrwRrhuHok8huw3kqRExM1MTpsfgzkcI14pHmcksNqX/yxOjbP2BClN
 SWa/sgZbCH/+W6F251JxxajcLbuRS+J88lJ+goGwklzq3nW2RaL9VneYW
 WLOI/3GLTb3qMECYvuz5WgzDLb0fddZtRXDfEBNjU9Zaftt6x4uyIEIvu
 x7qoalL5M57F/grT+bNvnRDzuGRPTzK/uuDvvfceY6CU7pppiOqzbpgj9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="325366523"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="325366523"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 01:57:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="678548042"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="678548042"
Received: from bpower-mobl3.ger.corp.intel.com (HELO [10.213.225.27])
 ([10.213.225.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 01:57:54 -0700
Message-ID: <9bf58080-df1b-a1aa-b12a-eb8fa745d6fa@linux.intel.com>
Date: Fri, 31 Mar 2023 09:57:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
 <20230330004103.1295413-7-umesh.nerlige.ramappa@intel.com>
 <7f065f72-bc53-501d-744c-c242eaa6a604@linux.intel.com>
 <ZCXH7QFlDef8RqRh@orsosgc001.jf.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZCXH7QFlDef8RqRh@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/pmu: Export counters from all
 tiles
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


On 30/03/2023 18:33, Umesh Nerlige Ramappa wrote:
> On Thu, Mar 30, 2023 at 02:01:42PM +0100, Tvrtko Ursulin wrote:
>>
>> On 30/03/2023 01:41, Umesh Nerlige Ramappa wrote:
>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>
>>> Start exporting frequency and RC6 counters from all tiles.
>>>
>>> Existing counters keep their names and config values and new one use the
>>> namespace added in the previous patch, with the "-gtN" added to their
>>> names.
>>
>> The part about keeping the names is not in the code any more. So 
>> something will have to give, either the commit text or the code.
>>
>> Even without that detail, I suspect someone might want to add them 
>> Co-developed-by since I *think* someone did some changes.
>>> Interrupts counter is an odd one off. Because it is the global device
>>> counters (not only GT) we choose not to add per tile versions for now.
>>>
>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/i915_pmu.c | 96 ++++++++++++++++++++++++++-------
>>>  1 file changed, 77 insertions(+), 19 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c 
>>> b/drivers/gpu/drm/i915/i915_pmu.c
>>> index 5d1de98d86b4..2a5deabff088 100644
>>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>>> @@ -548,8 +548,9 @@ config_status(struct drm_i915_private *i915, u64 
>>> config)
>>>      struct intel_gt *gt = to_gt(i915);
>>>      unsigned int gt_id = config_gt_id(config);
>>> +    unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
>>> -    if (gt_id)
>>> +    if (gt_id > max_gt_id)
>>>          return -ENOENT;
>>>      switch (config_counter(config)) {
>>> @@ -563,6 +564,8 @@ config_status(struct drm_i915_private *i915, u64 
>>> config)
>>>              return -ENODEV;
>>>          break;
>>>      case I915_PMU_INTERRUPTS:
>>> +        if (gt_id)
>>> +            return -ENOENT;
>>>          break;
>>>      case I915_PMU_RC6_RESIDENCY:
>>>          if (!gt->rc6.supported)
>>> @@ -932,9 +935,9 @@ static const struct attribute_group 
>>> i915_pmu_cpumask_attr_group = {
>>>      .attrs = i915_cpumask_attrs,
>>>  };
>>> -#define __event(__config, __name, __unit) \
>>> +#define __event(__counter, __name, __unit) \
>>>  { \
>>> -    .config = (__config), \
>>> +    .counter = (__counter), \
>>>      .name = (__name), \
>>>      .unit = (__unit), \
>>>  }
>>> @@ -975,15 +978,21 @@ create_event_attributes(struct i915_pmu *pmu)
>>>  {
>>>      struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), 
>>> pmu);
>>>      static const struct {
>>> -        u64 config;
>>> +        unsigned int counter;
>>>          const char *name;
>>>          const char *unit;
>>>      } events[] = {
>>> -        __event(I915_PMU_ACTUAL_FREQUENCY, "actual-frequency", "M"),
>>> -        __event(I915_PMU_REQUESTED_FREQUENCY, "requested-frequency", 
>>> "M"),
>>> -        __event(I915_PMU_INTERRUPTS, "interrupts", NULL),
>>> -        __event(I915_PMU_RC6_RESIDENCY, "rc6-residency", "ns"),
>>> -        __event(I915_PMU_SOFTWARE_GT_AWAKE_TIME, 
>>> "software-gt-awake-time", "ns"),
>>> +        __event(0, "actual-frequency", "M"),
>>> +        __event(1, "requested-frequency", "M"),
>>> +        __event(3, "rc6-residency", "ns"),
>>> +        __event(4, "software-gt-awake-time", "ns"),
>>> +    };
>>> +    static const struct {
>>> +        unsigned int counter;
>>> +        const char *name;
>>> +        const char *unit;
>>> +    } global_events[] = {
>>> +        __event(2, "interrupts", NULL),
>>>      };
>>>      static const struct {
>>>          enum drm_i915_pmu_engine_sample sample;
>>> @@ -998,14 +1007,29 @@ create_event_attributes(struct i915_pmu *pmu)
>>>      struct i915_ext_attribute *i915_attr = NULL, *i915_iter;
>>>      struct attribute **attr = NULL, **attr_iter;
>>>      struct intel_engine_cs *engine;
>>> -    unsigned int i;
>>> +    struct intel_gt *gt;
>>> +    unsigned int i, j;
>>>      /* Count how many counters we will be exposing. */
>>> -    for (i = 0; i < ARRAY_SIZE(events); i++) {
>>> -        if (!config_status(i915, events[i].config))
>>> +    /* per gt counters */
>>
>> Two comments one by another, two styles - the inconsistency hurts.
>>
>> Not sure why global events needed to be split out into a separate 
>> array? Like this below two loops are needed for each stage instead of 
>> one. AFAIR one array and one loop would just work because 
>> config_status wold report global ones as unsupported for gt > 0.
> 
> The idea was to add the legacy events into the global array. These 
> events will not have -gtN appeneded to it. Note that on a single gt 
> platform, my idea is to have both legacy as well as gt0 events.
> 
> ADLP:
> actual-frequency
> actual-frequency-gt0

IMO that would be pointless and harmful even.

> MTL:
> actual-frequency
> actual-frequency-gt0
> actual-frequency-gt1

This one lets cover in discussion against 9/9.

>> [Comes back later. It looked like this in my code:
>>
>>        static const struct {
>> -               u64 config;
>> +               unsigned int counter;
>>                const char *name;
>>                const char *unit;
>> +               bool global;
>>        } events[] = {
>> -               __event(I915_PMU_ACTUAL_FREQUENCY, "actual-frequency", 
>> "M"),
>> -               __event(I915_PMU_REQUESTED_FREQUENCY, 
>> "requested-frequency", "M"),
>> -               __event(I915_PMU_INTERRUPTS, "interrupts", NULL),
>> -               __event(I915_PMU_RC6_RESIDENCY, "rc6-residency", "ns"),
>> +               /*
>> +                * #define __I915_PMU_ACTUAL_FREQUENCY(gt)    
>> ___I915_PMU_OTHER(gt, 0)
>> +                * #define __I915_PMU_REQUESTED_FREQUENCY(gt) 
>> ___I915_PMU_OTHER(gt, 1)
>> +                * #define __I915_PMU_INTERRUPTS(gt)          
>> ___I915_PMU_OTHER(gt, 2)
>> +                * #define __I915_PMU_RC6_RESIDENCY(gt)       
>> ___I915_PMU_OTHER(gt, 3)
>> +                */
>> +               __event(0, "actual-frequency", "M"),
>> +               __event(1, "requested-frequency", "M"),
>> +               __global_event(2, "interrupts", NULL),
>> +               __event(3, "rc6-residency", "ns"),
>>
>> ...
>>
>>        /* Count how many counters we will be exposing. */
>> -       for (i = 0; i < ARRAY_SIZE(events); i++) {
>> -               if (!config_status(i915, events[i].config))
>> -                       count++;
>> +       for_each_gt(i915, j, gt) {
>> +               for (i = 0; i < ARRAY_SIZE(events); i++) {
>> +                       u64 config = ___I915_PMU_OTHER(j, 
>> events[i].counter);
>> +
>> +                       if (!config_status(i915, config))
>> +                               count++;
>> +               }
>>
>> So AFAICT it just worked.
> 
> If we decide to drop 9/9, then I would drop the 7/9 and 8/9 and just 
> move back to your original patches because they worked as is. The only 
> open then would be if we want to have the -gt0 events as well for single 
> gt platforms.
> 
> The idea is to make this similar to what's implemented for the sysfs 
> frequency/rc6 attribues in /sys/class/drm/card0. There is a root version 
> as well as a gt/gt0 version. fwiu, gt/gt0 attributes are used on a 
> single gt platform.

For sysfs I can understand the write multi-plexers but min/max read 
policy I don't know, don't like those either.

>>
>> ]
>>
>>> +    for_each_gt(gt, i915, j) {
>>> +        for (i = 0; i < ARRAY_SIZE(events); i++) {
>>> +            u64 config = ___I915_PMU_OTHER(j, events[i].counter);
>>> +
>>> +            if (!config_status(i915, config))
>>> +                count++;
>>> +        }
>>> +    }
>>> +
>>> +    /* global (per GPU) counters */
>>> +    for (i = 0; i < ARRAY_SIZE(global_events); i++) {
>>> +        u64 config = ___I915_PMU_OTHER(0, global_events[i].counter);
>>> +
>>> +        if (!config_status(i915, config))
>>>              count++;
>>>      }
>>> +    /* per engine counters */
>>>      for_each_uabi_engine(engine, i915) {
>>>          for (i = 0; i < ARRAY_SIZE(engine_events); i++) {
>>>              if (!engine_event_status(engine,
>>> @@ -1033,26 +1057,60 @@ create_event_attributes(struct i915_pmu *pmu)
>>>      attr_iter = attr;
>>>      /* Initialize supported non-engine counters. */
>>> -    for (i = 0; i < ARRAY_SIZE(events); i++) {
>>> +    /* per gt counters */
>>> +    for_each_gt(gt, i915, j) {
>>> +        for (i = 0; i < ARRAY_SIZE(events); i++) {
>>> +            u64 config = ___I915_PMU_OTHER(j, events[i].counter);
>>> +            char *str;
>>> +
>>> +            if (config_status(i915, config))
>>> +                continue;
>>> +
>>> +            str = kasprintf(GFP_KERNEL, "%s-gt%u",
>>> +                    events[i].name, j);
>>
>> So with this patch all old platforms change the event names. This is 
>> not how I wrote it, and more importantly, it breaks userspace. Why 
>> would we do it?
> 
> With this patch alone, yes, this would break the uapi. With the series, 
> not really because those events are added back in 9/9. Should we retain 
> uapi compatibility in each patch? If yes, then I need to change this.

It probably would have been better if this one was left at it was, and 
then in the last patch you propose and implement the complete change. 
That way there would be no interim state where existing platforms are 
broken.  I guess you can hold off doing that until the discussion settles.

Regards,

Tvrtko

> 
>>
>> For reference I dug out my code from 2020 and it looked like this:
>>
>> +                       if (events[i].global || !i915->remote_tiles)
>> +                               str = kstrdup(events[i].name, 
>> GFP_KERNEL);
>> +                       else
>> +                               str = kasprintf(GFP_KERNEL, "%s-gt%u",
>> +                                               events[i].name, j);
>>
>> So on single tile platforms names remain the same.
> 
> The series still maintains the same idea, but also adds xxxx-gt0 events 
> for the old platforms.
> 
> Thanks,
> Umesh
> 
>>
>> Regards,
>>
>> Tvrtko
>>
>>> +            if (!str)
>>> +                goto err;
>>> +
>>> +            *attr_iter++ = &i915_iter->attr.attr;
>>> +            i915_iter = add_i915_attr(i915_iter, str, config);
>>> +
>>> +            if (events[i].unit) {
>>> +                str = kasprintf(GFP_KERNEL, "%s-gt%u.unit",
>>> +                        events[i].name, j);
>>> +                if (!str)
>>> +                    goto err;
>>> +
>>> +                *attr_iter++ = &pmu_iter->attr.attr;
>>> +                pmu_iter = add_pmu_attr(pmu_iter, str,
>>> +                            events[i].unit);
>>> +            }
>>> +        }
>>> +    }
>>> +
>>> +    /* global (per GPU) counters */
>>> +    for (i = 0; i < ARRAY_SIZE(global_events); i++) {
>>> +        u64 config = ___I915_PMU_OTHER(0, global_events[i].counter);
>>>          char *str;
>>> -        if (config_status(i915, events[i].config))
>>> +        if (config_status(i915, config))
>>>              continue;
>>> -        str = kstrdup(events[i].name, GFP_KERNEL);
>>> +        str = kstrdup(global_events[i].name, GFP_KERNEL);
>>>          if (!str)
>>>              goto err;
>>>          *attr_iter++ = &i915_iter->attr.attr;
>>> -        i915_iter = add_i915_attr(i915_iter, str, events[i].config);
>>> +        i915_iter = add_i915_attr(i915_iter, str, config);
>>> -        if (events[i].unit) {
>>> -            str = kasprintf(GFP_KERNEL, "%s.unit", events[i].name);
>>> +        if (global_events[i].unit) {
>>> +            str = kasprintf(GFP_KERNEL, "%s.unit",
>>> +                    global_events[i].name);
>>>              if (!str)
>>>                  goto err;
>>>              *attr_iter++ = &pmu_iter->attr.attr;
>>> -            pmu_iter = add_pmu_attr(pmu_iter, str, events[i].unit);
>>> +            pmu_iter = add_pmu_attr(pmu_iter, str,
>>> +                        global_events[i].unit);
>>>          }
>>>      }
