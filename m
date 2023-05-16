Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4193A7045E6
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 09:13:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15AF910E2F8;
	Tue, 16 May 2023 07:13:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BF7E10E2F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 07:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684221184; x=1715757184;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=f/Vm+xRN5Z+lByKzx9sZmfE5osrsiXYt0C3eZ4i84y8=;
 b=cpbqlkEzG1wOCjPIpLyilRhRYNqRPr/oZQPvNzKKkwZl3kCMFmdg7ELt
 J+zaTjyyeIc8WN8vsKfbgaElj1D+z3SYTlmYeSo20I30YnkWRih36jdoM
 vVQaLdFt0YVpVLELqYqu/MVWG9lN5JlgWnkfjt3oRSWlCYefwsetYLWGY
 Eb4+vEY9DqZdYxyiSnPM/KnFIMoyzBAFjuRnXccP1HcEMS2AbqP7wRELB
 KHc06bko215fvH5DmcPOBy7LfFQhu+orTA2k2Q2Yqbzv8+2KUN+XOJlH2
 Hckhzpg32qG/9XvdS3xTgwzWA2+J+7vBtrpuK2ZrDFIDArqQN9g4dqhvP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="331021270"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="331021270"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 00:13:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="1031191039"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="1031191039"
Received: from sdrogers-mobl.ger.corp.intel.com (HELO [10.213.200.127])
 ([10.213.200.127])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 00:13:02 -0700
Message-ID: <9bc89ec1-2333-5b1c-b732-b9641e5f8947@linux.intel.com>
Date: Tue, 16 May 2023 08:12:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-5-umesh.nerlige.ramappa@intel.com>
 <87ilcxdw0g.wl-ashutosh.dixit@intel.com>
 <ZF7BMH5W/lzS2tq0@orsosgc001.jf.intel.com>
 <87h6shdtn0.wl-ashutosh.dixit@intel.com>
 <ZF7PXazccbkufp1X@orsosgc001.jf.intel.com>
 <1aabf497-81e8-d3b6-1547-251324562494@linux.intel.com>
 <87lehpp9tw.wl-ashutosh.dixit@intel.com>
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87lehpp9tw.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/pmu: Add reference counting to
 the sampling timer
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


On 15/05/2023 22:24, Dixit, Ashutosh wrote:
> On Mon, 15 May 2023 02:52:35 -0700, Tvrtko Ursulin wrote:
>>
>> On 13/05/2023 00:44, Umesh Nerlige Ramappa wrote:
>>> On Fri, May 12, 2023 at 04:20:19PM -0700, Dixit, Ashutosh wrote:
>>>> On Fri, 12 May 2023 15:44:00 -0700, Umesh Nerlige Ramappa wrote:
>>>>>
>>>>> On Fri, May 12, 2023 at 03:29:03PM -0700, Dixit, Ashutosh wrote:
>>>>>> On Fri, 05 May 2023 17:58:14 -0700, Umesh Nerlige Ramappa wrote:
>>>>>>>
>>>>>>
>>>>>> Hi Umesh/Tvrtko,
>>>>>>
>>>>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>>>
>>>>>>> We do not want to have timers per tile and waste CPU cycles and
>>>>> energy via
>>>>>>> multiple wake-up sources, for a relatively un-important task of PMU
>>>>>>> sampling, so keeping a single timer works well. But we also do not
>>>>> want
>>>>>>> the first GT which goes idle to turn off the timer.
>>>>>>>
>>>>>>> Add some reference counting, via a mask of unparked GTs, to solve
>>>>> this.
>>>>>>>
>>>>>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>>> Signed-off-by: Umesh Nerlige Ramappa
>>>>> <umesh.nerlige.ramappa@intel.com>
>>>>>>> ---
>>>>>>>    drivers/gpu/drm/i915/i915_pmu.c | 12 ++++++++++--
>>>>>>>    drivers/gpu/drm/i915/i915_pmu.h |  4 ++++
>>>>>>>    2 files changed, 14 insertions(+), 2 deletions(-)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c
>>>>> b/drivers/gpu/drm/i915/i915_pmu.c
>>>>>>> index 2b63ee31e1b3..669a42e44082 100644
>>>>>>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>>>>>>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>>>>>>> @@ -251,7 +251,9 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
>>>>>>>       * Signal sampling timer to stop if only engine events are
>>>>> enabled and
>>>>>>>       * GPU went idle.
>>>>>>>       */
>>>>>>> -    pmu->timer_enabled = pmu_needs_timer(pmu, false);
>>>>>>> +    pmu->unparked &= ~BIT(gt->info.id);
>>>>>>> +    if (pmu->unparked == 0)
>>>>>>> +        pmu->timer_enabled = pmu_needs_timer(pmu, false);
>>>>>>>
>>>>>>>      spin_unlock_irq(&pmu->lock);
>>>>>>>    }
>>>>>>> @@ -268,7 +270,10 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
>>>>>>>      /*
>>>>>>>       * Re-enable sampling timer when GPU goes active.
>>>>>>>       */
>>>>>>> -    __i915_pmu_maybe_start_timer(pmu);
>>>>>>> +    if (pmu->unparked == 0)
>>>>>>> +        __i915_pmu_maybe_start_timer(pmu);
>>>>>>> +
>>>>>>> +    pmu->unparked |= BIT(gt->info.id);
>>>>>>>
>>>>>>>      spin_unlock_irq(&pmu->lock);
>>>>>>>    }
>>>>>>> @@ -438,6 +443,9 @@ static enum hrtimer_restart i915_sample(struct
>>>>> hrtimer *hrtimer)
>>>>>>>       */
>>>>>>>
>>>>>>>      for_each_gt(gt, i915, i) {
>>>>>>> +        if (!(pmu->unparked & BIT(i)))
>>>>>>> +            continue;
>>>>>>> +
>>>>>>
>>>>>> This is not correct. In this series we are at least sampling
>>>>> frequencies
>>>>>> (calling frequency_sample) even when GT is parked. So these 3 lines
>>>>> should be
>>>>>> deleted. engines_sample will get called and will return without doing
>>>>>> anything if engine events are disabled.
>>>>>
>>>>> Not sure I understand. This is checking pmu->'un'parked bits.
>>>>
>>>> Sorry, my bad. Not "engines_sample will get called and will return
>>>> without
>>>> doing anything if engine events are disabled" but "engines_sample will
>>>> get
>>>> called and will return without doing anything if GT is not awake". This
>>>> is
>>>> the same as the previous behavior before this series.
>>>>
>>>> Umesh and I discussed this but writing this out in case Tvrtko takes a
>>>> look.
>>>
>>> Sounds good, Dropping the check here in the new revision.
> 
> Hi Tvrtko,
> 
>> I think it is safe to not have the check, but I didn't quite understand the
>> "this is not correct" part. I can only see the argument that it could be
>> redundant, not that it is incorrect.
> 
> I said that it looks incorrect to me because in this series we are still
> sampling freq when gt is parked and we would be skipping that if we
> included:
> 		if (!(pmu->unparked & BIT(i)))
> 			continue;

Ah okay. We concluded in your upstream patch that looks like an omission.

>> In which case I think it should better stay since it is way more efficient,
>> given this gets called at 200Hz, than the *atomic* atomic_inc_not_zero
>> (from intel_wakeref_get_if_active).
> 
> Where efficiency goes, when we merge the patch below (I have a v2 based on
> your suggestion but I am waiting till Umesh's series gets merged):
> 
> https://patchwork.freedesktop.org/series/117658/
> 
> this will turn off the timer itself which will be even more
> efficient. Rather than use the above code where the timer is running and
> then we skip. So after the link above is merged the above code will be
> truly redundant. That was a second reason why I said delete it.

On multi-tile where not all tiles are being looked at it still pays to 
avoid the atomic check. It doesn't apply to tools like intel_gpu_top, 
which monitor all tiles, but still I think there isn't any harm in 
having the fast check.

Regards,

Tvrtko
