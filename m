Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DCD7047F1
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 10:36:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B2EA10E329;
	Tue, 16 May 2023 08:36:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D08AB10E329
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 08:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684226157; x=1715762157;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=pQMzs1/gTnZpbj6r9Jv7TMT8aDR7P3B9ebdjGRmOMe8=;
 b=CrTKI/nOa3i2gi17KZyD3I86Sf/rcJ6GDnmn5W73o0z6oR1AXSr90QtM
 f4nsU42xrAU3kfn/yzBFqmnT5yfDEX7ZQGy14JnHloMCQ2OnaAIyPOR2x
 OkV7XBpMFulQd6XPXHVwP+GR4gylAtggogfy7ILj/+JX42YsinC03rYqC
 YYhGkKXl00z+r2j4iZqYpKO9zr+LoUkuRAJUiNHEJaKfVW2CbOMbkYZQ6
 sUwFtpToG0m1C1llm5KChHxq4vvAy6V3ee5VLxyvxtiOI/TTFftmfLPVE
 UdAcBGiPZZWB0+hAFh3q/IR8QTdPq7Eu+KEWuVUHDxDfXu1rNgVVlWHJK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="354584325"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="354584325"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 01:35:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="875530207"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="875530207"
Received: from sdrogers-mobl.ger.corp.intel.com (HELO [10.213.200.127])
 ([10.213.200.127])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 01:35:55 -0700
Message-ID: <5ce15789-c831-6ae5-d439-ba8ff8a845b3@linux.intel.com>
Date: Tue, 16 May 2023 09:35:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-6-umesh.nerlige.ramappa@intel.com>
 <87ttwie4qn.wl-ashutosh.dixit@intel.com>
 <e96ccb15-057b-5a2e-3e77-54ffbadf86a4@linux.intel.com>
 <ZF6oV4FT73yWtWD7@orsosgc001.jf.intel.com>
 <45f66bdd-7a67-d6a2-e1cb-111c78c0a70f@linux.intel.com>
 <87jzx9p7tq.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87jzx9p7tq.wl-ashutosh.dixit@intel.com>
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


On 15/05/2023 23:07, Dixit, Ashutosh wrote:
> On Mon, 15 May 2023 03:10:56 -0700, Tvrtko Ursulin wrote:
>>
> 
> Hi Tvrtko,
> 
>> On 12/05/2023 21:57, Umesh Nerlige Ramappa wrote:
>>> On Fri, May 12, 2023 at 11:56:18AM +0100, Tvrtko Ursulin wrote:
>>>>
>>>> On 12/05/2023 02:08, Dixit, Ashutosh wrote:
>>>>> On Fri, 05 May 2023 17:58:15 -0700, Umesh Nerlige Ramappa wrote:
>>>>>>
>>>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>>
>>>>>> Reserve some bits in the counter config namespace which will carry the
>>>>>> tile id and prepare the code to handle this.
>>>>>>
>>>>>> No per tile counters have been added yet.
>>>>>>
>>>>>> v2:
>>>>>> - Fix checkpatch issues
>>>>>> - Use 4 bits for gt id in non-engine counters. Drop FIXME.
>>>>>> - Set MAX GTs to 4. Drop FIXME.
>>>>>>
>>>>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>
>> 8<
>>
>>>>>> +static u64 frequency_enabled_mask(void)
>>>>>> +{
>>>>>> +    unsigned int i;
>>>>>> +    u64 mask = 0;
>>>>>> +
>>>>>> +    for (i = 0; i < I915_PMU_MAX_GTS; i++)
>>>>>> +        mask |= config_mask(__I915_PMU_ACTUAL_FREQUENCY(i)) |
>>>>>> +            config_mask(__I915_PMU_REQUESTED_FREQUENCY(i));
>>>>>> +
>>>>>> +    return mask;
>>>>>> +}
>>>>>> +
>>>>>>   static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
>>>>>>   {
>>>>>>      struct drm_i915_private *i915 = container_of(pmu, typeof(*i915),
>>>>>> pmu);
>>>>>> @@ -120,9 +147,7 @@ static bool pmu_needs_timer(struct i915_pmu *pmu,
>>>>>> bool gpu_active)
>>>>>>       * Mask out all the ones which do not need the timer, or in
>>>>>>       * other words keep all the ones that could need the timer.
>>>>>>       */
>>>>>> -    enable &= config_mask(I915_PMU_ACTUAL_FREQUENCY) |
>>>>>> -          config_mask(I915_PMU_REQUESTED_FREQUENCY) |
>>>>>> -          ENGINE_SAMPLE_MASK;
>>>>>> +    enable &= frequency_enabled_mask() | ENGINE_SAMPLE_MASK;
>>>>>
>>>>> u32 enable & u64 frequency_enabled_mask
>>>>>
>>>>> ugly but ok I guess? Or change enable to u64?
>>>
>>> making pmu->enable u64 as well as other places where it is assigned to
>>> local variables.
>>>
>>>>
>>>> Hmm.. yes very ugly. Could have been an accident which happened to work
>>>> because there is a single timer (not per tile).
>>>
>>> Happened to work because the frequency mask does not spill over to the
>>> upper 32 bits (even for multi tile).
>>>
>>> --------------------- START_SECTION ----------------
>>>>
>>>> Similar issue in frequency_sampling_enabled too. Gt_id argument to it
>>>> seems pointless.
>>>
>>> Not sure why it's pointless. We need the gt_id to determine the right
>>> mask for that specific gt. If it's not enabled, then we just return
>>> without pm_get and async put (like you mention later).
>>> And this piece of code is called within for_each_gt.
>>
>> I think I got a little confused cross referencing the code and patches last
>> week and did not mentally see all the changes.
>>
>> Because the hunk in other_bit() is correctly adding support for per gt bits.
>>
>> The layout of pmu->enable ends up like this:
>>
>> bits  0 -  2: engine events
>> bits  3 -  5: gt0 other events
>> bits  6 -  8: gt1 other events
>> bits  9 - 11: gt2 other events
>> bits 12 - 14: gt3 other events
> 
> Correct.
> 
>>
>>>> So I now think whole frequency_enabled_mask() is just pointless and
>>>> should be removed. And then pmu_needs_time code can stay as is. Possibly
>>>> add a config_mask_32 helper which ensures no bits in upper 32 bits are
>>>> returned.
>>>>
>>>> That is if we are happy for the frequency_sampling_enabled returning
>>>> true for all gts, regardless of which ones actually have frequency
>>>> sampling enabled.
>>>>
>>>> Or if we want to implement it as I probably have intended, we will need
>>>> to add some gt bits into pmu->enable. Maybe reserve top four same as
>>>> with config counters.
>>>
>>> Nope. What you have here works just fine. pmu->enable should not include
>>> any gt id info. gt_id[63:60] is only a concept for pmu config sent by
>>> user.  config_mask and pmu->enable are i915 internal bookkeeping (bit
>>> masks) just to track what events need to be sampled.  The 'other' bit
>>> masks are a function of gt_id because we use gt_id to calculate a
>>> contiguous numerical value for these 'other' events. That's all. Once the
>>> numerical value is calculated, there is no need for gt_id because
>>> config_mask is BIT_ULL(numerical_value). Since the numerical values never
>>> exceeded 31 (even for multi-gts), everything worked even with 32 bit
>>> pmu->enable.
>>
>> Yep.
>>
>> So question then is why make pmu->enable u64?
> 
> The only reason was simplicity, since a lot of the existing code already
> assumes u64.
> 
> E.g. if we keep pmu->enable u32, we should have to do the following:
> 
> * Change config_mask() return type to u32 (in frequency_sampling_enabled(),
>    we have 'pmu->enable & config_mask()')
> * Change frequency_enabled_mask() return type to u32 (again uses
>    config_mask() so if we change config_mask() to u32 we change return type
>    here too)
> * In i915_pmu_enable(), change 'pmu->enable |= BIT_ULL(bit)' to
>    'pmu->enable |= BIT(bit)'
> 
> So yes, if we think we should be using pmu->enable u32, let's change this
> to be consistent everywhere.
> 
>> Instead frequency_enabled_mask() should be made u32 since the bitwise or
>> composition of config_masks() is guaranteed to fit.
>>
>> At most it can have an internal u64 for the mask, assert upper_32_bits are
>> zero and return lower_32_bits.
>>
>> Did I get it right this time round? :)
> 
> Yes, though we'd have to make the config_mask() type change above to make
> frequency_enabled_mask() u32. Or we can just keep everything u64. Let's
> decide one way or the other and close this. It seems Tvrtko is leaning
> towards making pmu->enable and frequency_enabled_mask() u32?

I think so. Since it seems u64 for config_mask() was a mistake from the 
start lets fix it up. I can send a patch to do that if easier?

Regards,

Tvrtko
