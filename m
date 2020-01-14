Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B07A13A87F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 12:37:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 842EF6E36F;
	Tue, 14 Jan 2020 11:37:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B01166E36F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 11:37:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 03:37:12 -0800
X-IronPort-AV: E=Sophos;i="5.69,432,1571727600"; d="scan'208";a="213305681"
Received: from mdanino-mobl1.ger.corp.intel.com (HELO [10.252.23.174])
 ([10.252.23.174])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 14 Jan 2020 03:37:11 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200114105648.2172026-1-chris@chris-wilson.co.uk>
 <157899996519.27314.1692935781998209144@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ffaddcf2-0c6a-398a-2b1b-2f67b4094ade@linux.intel.com>
Date: Tue, 14 Jan 2020 11:37:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157899996519.27314.1692935781998209144@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/pmu: Correct the rc6 offset
 upon enabling
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/01/2020 11:06, Chris Wilson wrote:
> Quoting Chris Wilson (2020-01-14 10:56:47)
>> The rc6 residency starts ticking from 0 from BIOS POST, but the kernel
>> starts measuring the time from its boot. If we start measuruing
>> I915_PMU_RC6_RESIDENCY while the GT is idle, we start our sampling from
>> 0 and then upon first activity (park/unpark) add in all the rc6
>> residency since boot. After the first park with the sampler engaged, the
>> sleep/active counters are aligned.
>>
>> v2: With a wakeref to be sure
>>
>> Fixes: df6a42053513 ("drm/i915/pmu: Ensure monotonic rc6")
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_pmu.c | 12 ++++++++++++
>>   1 file changed, 12 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>> index 28a82c849bac..ec0299490dd4 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> @@ -637,8 +637,10 @@ static void i915_pmu_enable(struct perf_event *event)
>>                  container_of(event->pmu, typeof(*i915), pmu.base);
>>          unsigned int bit = event_enabled_bit(event);
>>          struct i915_pmu *pmu = &i915->pmu;
>> +       intel_wakeref_t wakeref;
>>          unsigned long flags;
>>   
>> +       wakeref = intel_runtime_pm_get(&i915->runtime_pm);

I think it would be nicer to use with_intel_runtime_pm directly at the 
__get_rc6 call site. That would show/localise where it is actually needed.

>>          spin_lock_irqsave(&pmu->lock, flags);
>>   
>>          /*
>> @@ -648,6 +650,14 @@ static void i915_pmu_enable(struct perf_event *event)
>>          BUILD_BUG_ON(ARRAY_SIZE(pmu->enable_count) != I915_PMU_MASK_BITS);
>>          GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>>          GEM_BUG_ON(pmu->enable_count[bit] == ~0);
>> +
>> +       if (pmu->enable_count[bit] == 0 &&
>> +           config_enabled_mask(I915_PMU_RC6_RESIDENCY) & BIT_ULL(bit)) {
>> +               pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur = 0;
> 
> I can't decide if it's better to have discrete sampling appear
> monotonic, or to reset just in case we drifted far off.

What do you mean?

This looks correct to me as you implemented it. On enable it samples the 
real RC6 and updates pmu->sleep_last. So regardless if the next even 
read comes with device awake or suspended it will report monotonic and 
without adding up any time outside the enabled window.

Drift can normally come when we overestimate because hw RC6 can be less 
than our time between park and unpark. I don't see how to reset that and 
stay monotonic. Or you are thinking it doesn't need to be monotonic?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
