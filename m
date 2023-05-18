Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8024707C77
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 11:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20F5010E04D;
	Thu, 18 May 2023 09:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5290610E04D
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 09:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684400879; x=1715936879;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=RHeiLADSwcnKaJHX0g1xOV4ES07h02xgXCimEqhkoDw=;
 b=ADoYdWidX8KPO873m9bduRFNbKvF644ktPDllky972/GHDk7h4cQqWAg
 0e9NsYZ596fMG0DhUw3GPsizLFpYwoYrlEhWPROZe6QtE8brhCphz2L/W
 Z6+U4HHJ9GL9LeHZDwnLRApGLn+3FNNk5MCq7wJR2RT8Q3mS5Xl+4ZYGU
 IH2HTxOOlqIJcYsMUvA2zMXnYE1tDQDPkYm1HJPFkC8NBdcKyej4aqEvf
 m4M4Oqq6m6vOTTL3nsJOACwufO2XucZTs8aeiNmrdmIz1XTVGugO9mmQ+
 8srxBRZI5qXrOfc7F87Emd/p5cz1sA8jBjcBavEWFBabECac0MvXX/3TU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="415441143"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="415441143"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 02:07:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="696233191"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="696233191"
Received: from cfeltham-mobl.ger.corp.intel.com (HELO [10.213.201.177])
 ([10.213.201.177])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 02:07:59 -0700
Message-ID: <1f6f00c0-a362-454c-53a3-740b559cdb88@linux.intel.com>
Date: Thu, 18 May 2023 10:07:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230516233534.3610598-1-umesh.nerlige.ramappa@intel.com>
 <20230516233534.3610598-2-umesh.nerlige.ramappa@intel.com>
 <87cz2zpzw1.wl-ashutosh.dixit@intel.com>
 <ZGR6ZnjlUqerD+nY@orsosgc001.jf.intel.com>
 <0a1babb7-80cf-cfe7-4746-37b76934175a@linux.intel.com>
 <87ednf3oyo.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87ednf3oyo.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v5 1/7] drm/i915/pmu: Change bitmask of
 enabled events to u32
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


On 17/05/2023 17:25, Dixit, Ashutosh wrote:
> On Wed, 17 May 2023 01:26:15 -0700, Tvrtko Ursulin wrote:
>>
>>
>> On 17/05/2023 07:55, Umesh Nerlige Ramappa wrote:
>>> On Tue, May 16, 2023 at 05:25:50PM -0700, Dixit, Ashutosh wrote:
>>>> On Tue, 16 May 2023 16:35:28 -0700, Umesh Nerlige Ramappa wrote:
>>>>>
>>>>
>>>> Hi Umesh/Tvrtko,
>>>>
>>>> Mostly repeating comments/questions made on the previous patch below.
>>
>> First of all thanks for improving this, my v1 obviously wasn't good enough.
>>
>>>>
>>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>
>>>>> Having it as u64 was a confusing (but harmless) mistake.
>>>>>
>>>>> Also add some asserts to make sure the internal field does not overflow
>>>>> in the future.
>>>>>
>>>>> v2: Fix WARN_ON firing for INTERRUPT event (Umesh)
>>>>>
>>>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>>> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>>>> ---
>>>>>   drivers/gpu/drm/i915/i915_pmu.c | 26 ++++++++++++++++++--------
>>>>>   1 file changed, 18 insertions(+), 8 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c
>>>>> b/drivers/gpu/drm/i915/i915_pmu.c
>>>>> index 7ece883a7d95..96543dce2db1 100644
>>>>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>>>>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>>>>> @@ -50,7 +50,7 @@ static u8 engine_event_instance(struct perf_event
>>>>> *event)
>>>>>      return (event->attr.config >> I915_PMU_SAMPLE_BITS) & 0xff;
>>>>>   }
>>>>>
>>>>> -static bool is_engine_config(u64 config)
>>>>> +static bool is_engine_config(const u64 config)
>>>>>   {
>>>>>      return config < __I915_PMU_OTHER(0);
>>>>>   }
>>>>> @@ -88,9 +88,20 @@ static unsigned int config_bit(const u64 config)
>>>>>          return other_bit(config);
>>>>>   }
>>>>>
>>>>> -static u64 config_mask(u64 config)
>>>>> +static u32 config_mask(const u64 config)
>>>>>   {
>>>>> -    return BIT_ULL(config_bit(config));
>>>>> +    unsigned int bit = config_bit(config);
>>>>
>>>> Give that config_bit() can return -1 (I understand it is avoided in
>>>> moving
>>>> the code to config_mask from config_bit), maybe the code below should
>>>> also
>>>> have that check?
>>>
>>> config_mask is only called to check frequency related events in the code,
>>> so I don't see it returing -1 here.
>>
>> Yeah that should be fine since -1 would make the below asserts fire
>> anyway. (If it would get called from a different path in the future.)
>>
>>>>
>>>>      int bit = config_bit(config);
>>>>
>>>>      if (bit != -1)
>>>>      {
>>>>          ...
>>>>      }
>>>>
>>>> Though as mentioned below the 'if (__builtin_constant_p())' would have to
>>>> go. Maybe the code could even have stayed in config_bit with the check.
>>>>
>>>>> +
>>>>> +    if (__builtin_constant_p(config))
>>>>> +        BUILD_BUG_ON(bit >
>>>>> +                 BITS_PER_TYPE(typeof_member(struct i915_pmu,
>>>>> +                             enable)) - 1);
>>>>
>>>> Given that config comes from the event (it is event->attr.config), can
>>>> this
>>>> ever be a builtin constant?
>>>
>>> Not sure about earlier code where these checks were inside config_bit(),
>>> but with changes I made, I don't see this being a builtin
>>> constant. However, nothing prevents a caller from just passing a
>>> builtin_constant to this in future.
>>
>> Are you sure? I would have thought it would always be a compile time
>> constant now that the check is in config_mask. Aahhh.. with the multi-tile
>> changes maybe it can't unroll the loops and calculate the masks at compile
>> time. Maybe it is a bit too much and we should drop the
>> __builtin_constant_p branch? Probably..
> 
> Ah yes, with the code move to config_mask, they really all are compile time
> constants (provided compiler can unroll the loops) so at least that is the
> justfication for leaving the __builtin_constant_p in. So I'd probably just
> leave it as is (though it is a bit too much).
> 
>> But I guess it is safe to use GEM_WARN_ON_ONCE instead of WARN_ON_ONCE
>> since there are no external callers (nothing coming from event) now. That
>> way at least production builds don't have to have the check.
> 
> Hmm, there's a GEM_WARN_ON but no GEM_WARN_ON_ONCE. So leave that as is too
> I guess.
> 
> So I'm ok with the code staying as is. Enough bike-shed on this already.

Latest series looks fine to me and thanks for your patience. Hope you 
would agree changing that one thing to u32 made more sense than changing 
the other to u64 so bike shed wasn't for nothing.

Regards,

Tvrtko
