Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7CA702A18
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 12:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD3EA10E197;
	Mon, 15 May 2023 10:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4563210E193
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 10:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684145460; x=1715681460;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=D9d000v9uKOt5j1HEx548K2TG+prWcMjk8W1JgwOhFw=;
 b=VJTqcDBPY0QwgSLckHlRqfOUNAPNNByBz9JxxRIWzZSAYFSJoG9kAYkb
 OvDgMhxo6bzJgD8YXPLGKlruRx/PoIHKeLJUEyVk4ZNschakd1vjteYqZ
 1ZFjPdMHv0ngCjqXxrJoBqU9wtTJWrTbl6RaT0U/hdWmQ2vvVuKkyOAZP
 f/7a5d0NL7VYztvhCGmAlQjU/OZkCsdB43PpNL4ajeWaQQWjvWZjZDOOG
 oJPiZXWYu5dZysAV0PEcNSmU6Q/+qTuJIiCajDgfT/hh0c7S61+ugPPUN
 uMdmJZDqNHs7LRrcVqpBOknp9IC7TIE5/xMArorkq+TFUJH5aCKYKXa3u Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="331533455"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="331533455"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 03:10:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="825128241"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="825128241"
Received: from zolayode-mobl.ger.corp.intel.com (HELO [10.213.214.133])
 ([10.213.214.133])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 03:10:58 -0700
Message-ID: <45f66bdd-7a67-d6a2-e1cb-111c78c0a70f@linux.intel.com>
Date: Mon, 15 May 2023 11:10:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-6-umesh.nerlige.ramappa@intel.com>
 <87ttwie4qn.wl-ashutosh.dixit@intel.com>
 <e96ccb15-057b-5a2e-3e77-54ffbadf86a4@linux.intel.com>
 <ZF6oV4FT73yWtWD7@orsosgc001.jf.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZF6oV4FT73yWtWD7@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/pmu: Prepare for multi-tile
 non-engine counters
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


On 12/05/2023 21:57, Umesh Nerlige Ramappa wrote:
> On Fri, May 12, 2023 at 11:56:18AM +0100, Tvrtko Ursulin wrote:
>>
>> On 12/05/2023 02:08, Dixit, Ashutosh wrote:
>>> On Fri, 05 May 2023 17:58:15 -0700, Umesh Nerlige Ramappa wrote:
>>>>
>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>
>>>> Reserve some bits in the counter config namespace which will carry the
>>>> tile id and prepare the code to handle this.
>>>>
>>>> No per tile counters have been added yet.
>>>>
>>>> v2:
>>>> - Fix checkpatch issues
>>>> - Use 4 bits for gt id in non-engine counters. Drop FIXME.
>>>> - Set MAX GTs to 4. Drop FIXME.
>>>>
>>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

8<

>>>> +static u64 frequency_enabled_mask(void)
>>>> +{
>>>> +    unsigned int i;
>>>> +    u64 mask = 0;
>>>> +
>>>> +    for (i = 0; i < I915_PMU_MAX_GTS; i++)
>>>> +        mask |= config_mask(__I915_PMU_ACTUAL_FREQUENCY(i)) |
>>>> +            config_mask(__I915_PMU_REQUESTED_FREQUENCY(i));
>>>> +
>>>> +    return mask;
>>>> +}
>>>> +
>>>>  static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
>>>>  {
>>>>     struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), 
>>>> pmu);
>>>> @@ -120,9 +147,7 @@ static bool pmu_needs_timer(struct i915_pmu 
>>>> *pmu, bool gpu_active)
>>>>      * Mask out all the ones which do not need the timer, or in
>>>>      * other words keep all the ones that could need the timer.
>>>>      */
>>>> -    enable &= config_mask(I915_PMU_ACTUAL_FREQUENCY) |
>>>> -          config_mask(I915_PMU_REQUESTED_FREQUENCY) |
>>>> -          ENGINE_SAMPLE_MASK;
>>>> +    enable &= frequency_enabled_mask() | ENGINE_SAMPLE_MASK;
>>>
>>> u32 enable & u64 frequency_enabled_mask
>>>
>>> ugly but ok I guess? Or change enable to u64?
> 
> making pmu->enable u64 as well as other places where it is assigned to 
> local variables.
> 
>>
>> Hmm.. yes very ugly. Could have been an accident which happened to 
>> work because there is a single timer (not per tile).
> 
> Happened to work because the frequency mask does not spill over to the 
> upper 32 bits (even for multi tile).
> 
> --------------------- START_SECTION ----------------
>>
>> Similar issue in frequency_sampling_enabled too. Gt_id argument to it 
>> seems pointless.
> 
> Not sure why it's pointless. We need the gt_id to determine the right 
> mask for that specific gt. If it's not enabled, then we just return 
> without pm_get and async put (like you mention later).
> And this piece of code is called within for_each_gt.

I think I got a little confused cross referencing the code and patches 
last week and did not mentally see all the changes.

Because the hunk in other_bit() is correctly adding support for per gt bits.

The layout of pmu->enable ends up like this:

bits  0 -  2: engine events
bits  3 -  5: gt0 other events
bits  6 -  8: gt1 other events
bits  9 - 11: gt2 other events
bits 12 - 14: gt3 other events

>> So I now think whole frequency_enabled_mask() is just pointless and 
>> should be removed. And then pmu_needs_time code can stay as is. 
>> Possibly add a config_mask_32 helper which ensures no bits in upper 32 
>> bits are returned.
>>
>> That is if we are happy for the frequency_sampling_enabled returning 
>> true for all gts, regardless of which ones actually have frequency 
>> sampling enabled.
>>
>> Or if we want to implement it as I probably have intended, we will 
>> need to add some gt bits into pmu->enable. Maybe reserve top four same 
>> as with config counters.
> 
> Nope. What you have here works just fine. pmu->enable should not include 
> any gt id info. gt_id[63:60] is only a concept for pmu config sent by 
> user.  config_mask and pmu->enable are i915 internal bookkeeping (bit 
> masks) just to track what events need to be sampled.  The 'other' bit 
> masks are a function of gt_id because we use gt_id to calculate a 
> contiguous numerical value for these 'other' events. That's all. Once 
> the numerical value is calculated, there is no need for gt_id because 
> config_mask is BIT_ULL(numerical_value). Since the numerical values 
> never exceeded 31 (even for multi-gts), everything worked even with 32 
> bit pmu->enable.

Yep.

So question then is why make pmu->enable u64?

Instead frequency_enabled_mask() should be made u32 since the bitwise or 
composition of config_masks() is guaranteed to fit.

At most it can have an internal u64 for the mask, assert upper_32_bits 
are zero and return lower_32_bits.

Did I get it right this time round? :)

Regards,

Tvrtko
