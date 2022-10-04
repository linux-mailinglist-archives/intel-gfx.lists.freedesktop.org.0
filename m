Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 369315F43E7
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 15:06:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6DB310E62A;
	Tue,  4 Oct 2022 13:06:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EDFB10E5F6;
 Tue,  4 Oct 2022 13:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664888759; x=1696424759;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=jJaQCjdVJze25eq6DHdeSbzA+Pw1FOoPFZEb1WdBOKc=;
 b=BCJMqZmr7amB08G+yuAe3J3FWKSP5xYtWo9zWuJ+npoj0cYHZX4pyClu
 VbYQB8dVYVF5VBQKsaUJYP20PaalwNjwWwGJ5uiu0m1gmgbZtxwkA8RDH
 LVvY9dF2E5wZPs7XWkEPXeWHPTS3X+5+EQEKp2C5NYGVvjv6mWeOx2cSf
 c24r5F9KHaKC40IT0Rnkf9egkeHXzo/ZTkLN9liW6RtWHuZNcURAyPlXY
 nwgVn/5FfaQjVoNNvPpJp5Bh/ZBVLbo3kSqdSwFVxDToiBgt/hrb4b2MN
 DD3xKU84tS7qTB/F1ZM/+ofZvrWtlyYKyB62XqOubL9tzpOvVOCQRRnOx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="283271137"
X-IronPort-AV: E=Sophos;i="5.95,157,1661842800"; d="scan'208";a="283271137"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:05:58 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="623925383"
X-IronPort-AV: E=Sophos;i="5.95,157,1661842800"; d="scan'208";a="623925383"
Received: from tomfin1x-mobl1.ger.corp.intel.com (HELO [10.213.229.10])
 ([10.213.229.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:05:57 -0700
Message-ID: <7b7fe361-bdeb-7fe0-7572-c64cd8eb6ad6@linux.intel.com>
Date: Tue, 4 Oct 2022 14:05:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221003192419.3541088-1-ashutosh.dixit@intel.com>
 <d83e3b3b-25ee-74cd-b4a3-bee6c567d50a@linux.intel.com>
 <dce4c792-fd6d-0647-1977-613026c8c5b3@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <dce4c792-fd6d-0647-1977-613026c8c5b3@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Match frequencies reported by
 PMU and sysfs
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 04/10/2022 14:00, Tvrtko Ursulin wrote:
> 
> On 04/10/2022 10:29, Tvrtko Ursulin wrote:
>>
>> On 03/10/2022 20:24, Ashutosh Dixit wrote:
>>> PMU and sysfs use different wakeref's to "interpret" zero freq. Sysfs 
>>> uses
>>> runtime PM wakeref (see intel_rps_read_punit_req and
>>> intel_rps_read_actual_frequency). PMU uses the GT parked/unparked
>>> wakeref. In general the GT wakeref is held for less time that the 
>>> runtime
>>> PM wakeref which causes PMU to report a lower average freq than the 
>>> average
>>> freq obtained from sampling sysfs.
>>>
>>> To resolve this, use the same freq functions (and wakeref's) in PMU as
>>> those used in sysfs.
>>>
>>> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7025
>>> Reported-by: Ashwin Kumar Kulkarni <ashwin.kumar.kulkarni@intel.com>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/i915_pmu.c | 27 ++-------------------------
>>>   1 file changed, 2 insertions(+), 25 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c 
>>> b/drivers/gpu/drm/i915/i915_pmu.c
>>> index 958b37123bf1..eda03f264792 100644
>>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>>> @@ -371,37 +371,16 @@ static void
>>>   frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>>   {
>>>       struct drm_i915_private *i915 = gt->i915;
>>> -    struct intel_uncore *uncore = gt->uncore;
>>>       struct i915_pmu *pmu = &i915->pmu;
>>>       struct intel_rps *rps = &gt->rps;
>>>       if (!frequency_sampling_enabled(pmu))
>>>           return;
>>> -    /* Report 0/0 (actual/requested) frequency while parked. */
>>> -    if (!intel_gt_pm_get_if_awake(gt))
>>> -        return;
>>> -
>>>       if (pmu->enable & config_mask(I915_PMU_ACTUAL_FREQUENCY)) {
>>> -        u32 val;
>>> -
>>> -        /*
>>> -         * We take a quick peek here without using forcewake
>>> -         * so that we don't perturb the system under observation
>>> -         * (forcewake => !rc6 => increased power use). We expect
>>> -         * that if the read fails because it is outside of the
>>> -         * mmio power well, then it will return 0 -- in which
>>> -         * case we assume the system is running at the intended
>>> -         * frequency. Fortunately, the read should rarely fail!
>>> -         */
>>> -        val = intel_uncore_read_fw(uncore, GEN6_RPSTAT1);
>>> -        if (val)
>>> -            val = intel_rps_get_cagf(rps, val);
>>> -        else
>>> -            val = rps->cur_freq;
>>> -
>>>           add_sample_mult(&pmu->sample[__I915_SAMPLE_FREQ_ACT],
>>> -                intel_gpu_freq(rps, val), period_ns / 1000);
>>> +                intel_rps_read_actual_frequency(rps),
>>> +                period_ns / 1000);
>>>       }
>>>       if (pmu->enable & config_mask(I915_PMU_REQUESTED_FREQUENCY)) {
>>
>> What is software tracking of requested frequency showing when GT is 
>> parked or runtime suspended? With this change sampling would be 
>> outside any such checks so we need to be sure reported value makes sense.
>>
>> Although more important open is around what is actually correct.
>>
>> For instance how does the patch affect RC6 and power? I don't know how 
>> power management of different blocks is wired up, so personally I 
>> would only be able to look at it empirically. In other words what I am 
>> asking is this - if we changed from skipping obtaining forcewake even 
>> when unparked, to obtaining forcewake if not runtime suspended - what 
>> hardware blocks does that power up and how it affects RC6 and power? 
>> Can it affect actual frequency or not? (Will "something" power up the 
>> clocks just because we will be getting forcewake?)
>>
>> Or maybe question simplified - does 200Hz polling on existing sysfs 
>> actual frequency field disturbs the system under some circumstances? 
>> (Increases power and decreases RC6.) If it does then that would be a 
>> problem. We want a solution which shows the real data, but where the 
>> act of monitoring itself does not change it too much. If it doesn't 
>> then it's okay.
>>
>> Could you somehow investigate on these topics? Maybe log RAPL GPU 
>> power while polling on sysfs, versus getting the actual frequency from 
>> the existing PMU implementation and see if that shows anything? Or 
>> actually simpler - RAPL GPU power for current PMU intel_gpu_top versus 
>> this patch? On idle(-ish) desktop workloads perhaps? Power and 
>> frequency graphed for both.
> 
> Another thought - considering that bspec says for 0xa01c "This register 
> reflects real-time values and thus does not have a pre-determined 
> default value out of reset" - could it be that it also does not reflect 
> a real value when GPU is not executing anything (so zero), just happens 
> to be not runtime suspended? That would mean sysfs reads could maybe 
> show last known value? Just a thought to check.
> 
> I've also tried on my Alderlake desktop:
> 
> 1)
> 
> while true; do cat gt_act_freq_mhz >/dev/null; sleep 0.005; done
> 
> This costs ~120mW of GPU power and ~20% decrease in RC6.
> 
> 
> 2)
> 
> intel_gpu_top -l -s 5 >/dev/null

This "-s 5" was pointless though. :)

Regards,

Tvrtko

> 
> This costs no power or RC6.
> 
> I have also never observed sysfs to show below min freq. This was with 
> no desktop so it's possible this register indeed does not reflect the 
> real situation when things are idle.
> 
> So I think it is possible sysfs value is the misleading one.
> 
> Regards,
> 
> Tvrtko
