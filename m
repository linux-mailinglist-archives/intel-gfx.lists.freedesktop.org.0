Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F35CA5F3383
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 18:26:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 334EE10E42E;
	Mon,  3 Oct 2022 16:26:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DA8210E42E
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 16:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664814382; x=1696350382;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=9LzEuG6JM9SNk3UTlv+gm+eXGxMJeyUlJXJokLyVWqs=;
 b=ITVVnCDT6RJDRUTZJ6bdrmk8yBfrY4oLdDBsOJnF4SZ07xw7144tDhq1
 I/LNRK0S9h3dilthCTeoBfIB2NZvGFuMizTVhXxWCrd2gvcm+uMYp63AM
 K+zEY8ezTSosGUlELQKfUu6bCG2VJSZEPUk5NnI4ysB4XEwFwfv1mNk02
 RapbehLzWMZDd/YhMkU3u2OqcG/wnyBd7jSw6nIu52Hf9iIqgix6nZOc6
 FYrymi1QjY+achcGru5JeEk+B5k+Xx+nrZejjv4q6Zh1+NcGRokaK4J/D
 91dW1vDAyJXMDuMuhxjDuG3MK7PSbI15aHLpZ0OFR4yQ9dTzBgJ+0KTmM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="303610712"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="303610712"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 09:26:21 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="625831577"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="625831577"
Received: from praffert-mobl.ger.corp.intel.com (HELO [10.213.196.20])
 ([10.213.196.20])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 09:26:19 -0700
Message-ID: <dd056588-f4bb-7f57-95c9-78df11dee2e2@linux.intel.com>
Date: Mon, 3 Oct 2022 17:26:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20220910143844.1755324-1-ashutosh.dixit@intel.com>
 <20220910143844.1755324-2-ashutosh.dixit@intel.com>
 <86f6485f-d7c7-66ad-b819-af33913194ef@linux.intel.com>
 <87fsg5zd0b.wl-ashutosh.dixit@intel.com>
 <4b4b3625-a740-fa6f-9ff3-c75c9d05e265@linux.intel.com>
 <87edvozxud.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87edvozxud.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/debugfs: Add
 perf_limit_reasons in debugfs
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/10/2022 17:16, Dixit, Ashutosh wrote:
> On Mon, 03 Oct 2022 01:11:21 -0700, Tvrtko Ursulin wrote:
>> On 03/10/2022 06:34, Dixit, Ashutosh wrote:
>>> On Tue, 27 Sep 2022 07:17:23 -0700, Tvrtko Ursulin wrote:
>>>
>>> Hi Tvrtko,
>>>
>>> I am adding some people who may have more background/history into this.
>>>
>>>> On 10/09/2022 15:38, Ashutosh Dixit wrote:
>>>>> From: Tilak Tangudu <tilak.tangudu@intel.com>
>>>>>
>>>>> Add perf_limit_reasons in debugfs. The upper 16 perf_limit_reasons RW "log"
>>>>> bits are identical to the lower 16 RO "status" bits except that the "log"
>>>>> bits remain set until cleared, thereby ensuring the throttling occurrence
>>>>> is not missed. The clear fop clears the upper 16 "log" bits, the get fop
>>>>> gets all 32 "log" and "status" bits.
>>>>>
>>>>> v2: Expand commit message and clarify "log" and "status" bits in
>>>>>        comment (Rodrigo)
>>>>>
>>>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>>>> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>>>> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
>>>>> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>>>> ---
>>>>>     drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 31 +++++++++++++++++++
>>>>>     drivers/gpu/drm/i915/i915_reg.h               |  1 +
>>>>>     2 files changed, 32 insertions(+)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>>>>> index 108b9e76c32e..a009cf69103a 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>>>>> @@ -655,6 +655,36 @@ static bool rps_eval(void *data)
>>>>>       DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(rps_boost);
>>>>>     +static int perf_limit_reasons_get(void *data, u64 *val)
>>>>> +{
>>>>> +	struct intel_gt *gt = data;
>>>>> +	intel_wakeref_t wakeref;
>>>>> +
>>>>> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
>>>>> +		*val = intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS);
>>>>
>>>> I have a bunch of questions, given failure to apply this to
>>>> drm-intel-next-fixes brought my attention to it.
>>>>
>>>> Why is GT0_PERF_LIMIT_REASONS_MASK not applied here?
>>>
>>> To expose all 32 "log" and "status" bits, since no log bits and only a few
>>> status bits are available in sysfs.
>>>
>>>> Who resets the low bits and when in normal operation? (I mean not via this
>>>> debugfs clear.)
>>>
>>> HW would reset the low status bits after the condition causing the
>>> throttling goes away. That condition would persist in the the upper log
>>> bits till cleared via debugfs.
>>>
>>>> Why do we have sysfs expose some of this register, but not these high log
>>>> bits? Which are more important to the user?
>>>
>>> The low status bits should be sampled while the throttling condition is
>>> "current" (still happening). The upper log bits can be looked at later to
>>> see if a particular condition happened.
>>>
>>> I would say as long user land can sample (say every 5 ms) the low status
>>> bits while a workload is running they can get a complete picture of what
>>> throttling happened when (the app could sample the actual_freq sysfs and
>>> correlate those values with the perf_limit_reasons sysfs e.g.).
>>>
>>>> What is the use case for allowing clearing of the log bits from debugfs?
>>>> Why do we want to carry that code? For IGT?
>>>
>>> I guess the reason for exposing/clearing the log bits is that they can be
>>> useful in cases where userspace does not want to sample the status bits
>>> continuously while a workload is running. They can just come afterwards and
>>> say, ah, these are the reasons limiting freq while the workload was
>>> running.
>>
>> But as you say hardware clears them, then it is questionable it would show
>> anything at that point?
> 
> The status bits would be cleared by HW but any events which have occured
> would be coalesced and persist in the log bits.

I think this started with my typo. :( I've asked "who resets the low 
bits in normal operation" while I meant "who resets the log bits". So 
answer is no one, that is okay.

> 
>> Do we have interrupts associated with throttling and associated log message
>> or uevents?
> 
> I believe there are punit interrupts and some work-items to hook these say
> into HWMON "alarms" but pretty sure none of this is implemented because
> no clear customer requirements at this point.

If there is a real use case for this I think that would be much better 
than mention of 5ms polling on the sysfs file. By much better I really 
mean polling shouldn't really even be considered.

>>> Also the log bits could be used in conjunction with the low status bits to
>>> infer if any limiting event got missed during sampling the status bits.
>>>
>>> I believe IGT's correlating the actual_freq with perf_limit_reasons are
>>> planned. But yes, whether the upper log bits should also be exposed in
>>> sysfs is a valid one and should be discussed.
>>
>> Thanks for the clarifications!
>>
>> Yes, it sounds like some discussion is needed as to intended use cases for
>> exposing and clearing the log.
>>
>> TBH I am not sure how urgent it is - will there be further conflicts caused
>> by divergence of 7738be973fc4e2ba22154fafd3a5d7b9666f9abf vs
>> 0d2d201095e9f141d6a9fb44320afce761f8b5c2. If there would be it would
>> probably be good to close on this question within the current development
>> cycle.
> 
> I believe this is already resolved by the merge of drm-intel-fixes into
> drm-tip.

Yeah I wasn't sure if it won't come back in the next merge window. We 
will see.

In the meantime it would be good to close on the need (or not) for the 
extra debugfs functionality versus putting it in sysfs versus 
implementing a non-polling based solution.

Regards,

Tvrtko
