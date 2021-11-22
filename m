Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A29459194
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 16:44:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE77589CF5;
	Mon, 22 Nov 2021 15:44:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8932389CF5
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 15:44:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="222029980"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="222029980"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 07:44:32 -0800
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="537911795"
Received: from aalazizi-mobl1.amr.corp.intel.com (HELO [10.213.249.159])
 ([10.213.249.159])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 07:44:31 -0800
Message-ID: <0183b8b0-5c8d-a7d5-55d5-fd068355fb3a@linux.intel.com>
Date: Mon, 22 Nov 2021 15:44:29 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20211103224708.1931-1-umesh.nerlige.ramappa@intel.com>
 <68f76da9-6b70-fee4-6cc6-17e74c867bd2@linux.intel.com>
 <20211104220407.GA23493@unerlige-ril-10.165.21.208>
 <2c1af88a-93d3-cc8f-5e4e-e4a494fd21f0@linux.intel.com>
 <20211111164810.GH6789@unerlige-ril-10.165.21.208>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20211111164810.GH6789@unerlige-ril-10.165.21.208>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Fix synchronization of PMU
 callback with reset
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


On 11/11/2021 16:48, Umesh Nerlige Ramappa wrote:
> On Thu, Nov 11, 2021 at 02:37:43PM +0000, Tvrtko Ursulin wrote:
>>
>> On 04/11/2021 22:04, Umesh Nerlige Ramappa wrote:
>>> On Thu, Nov 04, 2021 at 05:37:37PM +0000, Tvrtko Ursulin wrote:
>>>>
>>>> On 03/11/2021 22:47, Umesh Nerlige Ramappa wrote:
>>>>> Since the PMU callback runs in irq context, it synchronizes with gt
>>>>> reset using the reset count. We could run into a case where the PMU
>>>>> callback could read the reset count before it is updated. This has a
>>>>> potential of corrupting the busyness stats.
>>>>>
>>>>> In addition to the reset count, check if the reset bit is set before
>>>>> capturing busyness.
>>>>>
>>>>> In addition save the previous stats only if you intend to update them.
>>>>>
>>>>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>>> ---
>>>>>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 ++++++++----
>>>>>  1 file changed, 8 insertions(+), 4 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>> index 5cc49c0b3889..d83ade77ca07 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>> @@ -1183,6 +1183,7 @@ static ktime_t guc_engine_busyness(struct 
>>>>> intel_engine_cs *engine, ktime_t *now)
>>>>>      u64 total, gt_stamp_saved;
>>>>>      unsigned long flags;
>>>>>      u32 reset_count;
>>>>> +    bool in_reset;
>>>>>      spin_lock_irqsave(&guc->timestamp.lock, flags);
>>>>> @@ -1191,7 +1192,9 @@ static ktime_t guc_engine_busyness(struct 
>>>>> intel_engine_cs *engine, ktime_t *now)
>>>>>       * engine busyness from GuC, so we just use the driver stored
>>>>>       * copy of busyness. Synchronize with gt reset using reset_count.
>>>>>       */
>>>>> -    reset_count = i915_reset_count(gpu_error);
>>>>> +    rcu_read_lock();
>>>>> +    in_reset = test_bit(I915_RESET_BACKOFF, &gt->reset.flags);
>>>>> +    rcu_read_unlock();
>>>>
>>>> I don't really understand the point of rcu_read_lock over test_bit 
>>>> but I guess you copied it from the trylock loop.
>>>
>>> Yes, I don't see other parts of code using the lock though. I can 
>>> drop it.
>>>
>>>>
>>>>>      *now = ktime_get();
>>>>> @@ -1201,9 +1204,10 @@ static ktime_t guc_engine_busyness(struct 
>>>>> intel_engine_cs *engine, ktime_t *now)
>>>>>       * start_gt_clk is derived from GuC state. To get a consistent
>>>>>       * view of activity, we query the GuC state only if gt is awake.
>>>>>       */
>>>>> -    stats_saved = *stats;
>>>>> -    gt_stamp_saved = guc->timestamp.gt_stamp;
>>>>> -    if (intel_gt_pm_get_if_awake(gt)) {
>>>>> +    if (intel_gt_pm_get_if_awake(gt) && !in_reset) {
>>>>
>>>> What is the point of looking at the old value of in_reset here? Gut 
>>>> feeling says if there is a race this does not fix it.
>>>>
>>>> I did not figure out from the commit message what does "could read 
>>>> the reset count before it is updated" mean?
>>>> I thought the point of reading
>>>
>>>> the reset count twice was that you are sure there was no reset while 
>>>> in here, in which case it is safe to update the software copy. I 
>>>> don't easily see what test_bit does on top.
>>>
>>> This is what I see in the reset flow
>>> ---------------
>>>
>>> R1) test_and_set_bit(I915_RESET_BACKOFF, &gt->reset.flags)
>>> R2) atomic_inc(&gt->i915->gpu_error.reset_count)
>>> R3) reset prepare
>>> R4) do the HW reset
>>>
>>> The reset count is updated only once above and that's before an 
>>> actual HW reset happens.
>>>
>>> PMU callback flow before this patch
>>> ---------------
>>>
>>> P1) read reset count
>>> P2) update stats
>>> P3) read reset count
>>> P4) if reset count changed, use old stats. if not use updated stats.
>>>
>>> I am concerned that the PMU flow could run after step (R2). Then we 
>>> wrongly conclude that the count stayed the same and no HW reset 
>>> happened.
> 
> Here is the problematic sequence: Threads R and P.
> ------------
> R1) test_and_set_bit(I915_RESET_BACKOFF, &gt->reset.flags)
> R2) atomic_inc(&gt->i915->gpu_error.reset_count)
>      P1) read reset count
>      P2) update stats
>      P3) read reset count
>      P4) if reset count changed, use old stats. if not use updated stats.
> R3) reset prepare
> R4) do the HW reset
> 
> Do you agree that this is racy? In thread P we don't know in if the 
> reset flag was set or not when we captured the reset count in P1?
> 
>>>
>>> PMU callback flow with this patch
>>> ---------------
>>> This would rely on the reset_count only if a reset is not in progress.
>>>
>>> P0) test_bit for I915_RESET_BACKOFF
>>> P1) read reset count if not in reset. if in reset, use old stats
>>> P2) update stats
>>> P3) read reset count
>>> P4) if reset count changed, use old stats. if not use updated stats.
>>>
>>> Now that I think about it more, I do see one sequence that still 
>>> needs fixing though - P0, R1, R2, P1 - P4. For that, I think I need 
>>> to re-read the BACKOFF bit after reading the reset_count for the 
>>> first time.
>>> Modified PMU callback sequence would be:
>>> ----------
>>>
>>> M0) test_bit for I915_RESET_BACKOFF
>>> M1) read reset count if not in reset, if in reset, use old stats
>>>
>>> M1.1) test_bit for I915_RESET_BACKOFF. if set, use old stats. if not, 
>>> use reset_count to synchronize
>>>
>>> M2) update stats
>>> M3) read reset count
>>> M4) if reset count changed, use old stats. if not use updated stats.
>>
>> You did not end up implementing this flow? Have you later changed your 
>> mind whether it is required or not? Or maybe I am looking at not the 
>> latest patch.
>>
>> Is the below the latest?
>>
>> """
>> v2:
>> - The 2 reset counts captured in the PMU callback can end up being the
>>  same if they were captured right after the count is incremented in the
>>  reset flow. This can lead to a bad busyness state. Ensure that reset
>>  is not in progress when the initial reset count is captured.
>> """
> 
> Yes, v2 is the latest (maybe CI results re-ordered the patches). Instead 
> of sampling the BACKOFF flag before and after the reset count (as in the 
> modified sequence), I just sample it after. The order is critical - 
> first sample reset count and then the reset flag.
> 
>>
>> Is the key now that you rely on ordering of atomic_inc and set_bit in 
>> the reset path?
> 
> Yes
> 
>> Frankly I still don't understand why you can get away 
> 
>> with using stale in_reset in v2. If you acknowledge it can change 
>> between sampling and checking, then what is the point in having it 
>> altogether? You still solely rely on reset count in that case, no?
> 
> Correct, but now I know for sure that the first sample of reset_count 
> was captured when reset flag was not set (since I am relying on the 
> order of sampling).
> 
> About solely using the reset_count, I have listed the problematic 
> sequence above to highlight what the issue is.

It was this:

"""
R1) test_and_set_bit(I915_RESET_BACKOFF, &gt->reset.flags)
R2) atomic_inc(&gt->i915->gpu_error.reset_count)
      P1) read reset count
      P2) update stats
      P3) read reset count
      P4) if reset count changed, use old stats. if not use updated stats.
R3) reset prepare
R4) do the HW reset

Do you agree that this is racy? In thread P we don't know in if the reset flag was set or not when we captured the reset count in P1?
"""

Why it matter if reset flag was set or not? Lets see how things are after this patch:

After this patch it ends like this:

      P1) Read and store reset bit
R1) test_and_set_bit(I915_RESET_BACKOFF, &gt->reset.flags)
      P2) If reset bit was not set:
            P2.1) read reset count
R2) atomic_inc(&gt->i915->gpu_error.reset_count)
            P2.2) update stats
            P2.3) read reset count
            P2.4) if reset count changed, use old stats. if not use updated stats.
R3) reset prepare
R4) do the HW reset

So the reset bit got set between P1 and P2. How is that then not the same as not looking at the reset bit at all?

Regards,

Tvrtko
