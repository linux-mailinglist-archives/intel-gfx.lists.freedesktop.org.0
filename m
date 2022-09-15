Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE2E5B9576
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 09:33:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFCA210E104;
	Thu, 15 Sep 2022 07:33:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33CE110E104
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 07:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663227195; x=1694763195;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=6crjk3udxjM9/cEdkJcwguPhHMsO8NIbvDNdedO2Taw=;
 b=Tu+imS9XprMMFPuZ9g7bWopuXg+O4z+UQE22ruOYoW7ktt5yKcMvA1Iw
 +0uJvw0HtFY1xr32U1e0apx74GdCB/z+6OSGT+F8cMu9Dnfa+YsW2pgIY
 oHuo3uMuHZb6HN8PZZU5PDKRFQ3gJPSphIM06OylFE/wFDXdh69Ce1qrq
 sI/XeDAg/4VUwv4deu6GOZJEjqQN4i+nttqyymz7Xs3t20U8WnkakgI+i
 cMwKmdQrRgvE2AG2pF2qkWSZCLrD/dG/AZNImWaZimB1cAM13EwTLzeag
 V5cCEMLHknB64X+bMMq6NyEBpsvuA5GKsJjJ2GmagtPG3uoBXi5quwnTK A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="298635680"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="298635680"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 00:33:14 -0700
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="759527041"
Received: from alishana-mobl1.ger.corp.intel.com (HELO [10.213.218.26])
 ([10.213.218.26])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 00:33:13 -0700
Message-ID: <a98bb925-7272-5178-12e8-9ef05fd15125@linux.intel.com>
Date: Thu, 15 Sep 2022 08:33:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "Nilawar, Badal" <badal.nilawar@intel.com>
References: <20220909025646.3397620-1-badal.nilawar@intel.com>
 <20220909025646.3397620-5-badal.nilawar@intel.com>
 <87k06c577l.wl-ashutosh.dixit@intel.com>
 <1ce34139-0b3f-6709-597f-e55437bccc0d@intel.com>
 <87czc05e53.wl-ashutosh.dixit@intel.com>
 <9a6763df-2ab0-4136-2727-e6d24f039ea3@linux.intel.com>
 <5443c3cb-1ece-226f-bef1-55f031359f83@intel.com>
 <87leqmdjgu.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87leqmdjgu.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Use GEN12 RPSTAT register
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


On 14/09/2022 17:11, Dixit, Ashutosh wrote:
> On Wed, 14 Sep 2022 02:56:26 -0700, Nilawar, Badal wrote:
>>
>> On 13-09-2022 13:17, Tvrtko Ursulin wrote:
>>>
>>> On 13/09/2022 01:09, Dixit, Ashutosh wrote:
>>>> On Mon, 12 Sep 2022 04:29:38 -0700, Nilawar, Badal wrote:
>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c
>>>>>>> b/drivers/gpu/drm/i915/i915_pmu.c
>>>>>>> index 958b37123bf1..a24704ec2c18 100644
>>>>>>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>>>>>>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>>>>>>> @@ -371,7 +371,6 @@ static void
>>>>>>>     frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>>>>>>     {
>>>>>>>      struct drm_i915_private *i915 = gt->i915;
>>>>>>> -    struct intel_uncore *uncore = gt->uncore;
>>>>>>>      struct i915_pmu *pmu = &i915->pmu;
>>>>>>>      struct intel_rps *rps = &gt->rps;
>>>>>>>
>>>>>>> @@ -394,7 +393,7 @@ frequency_sample(struct intel_gt *gt, unsigned
>>>>>>> int period_ns)
>>>>>>>           * case we assume the system is running at the intended
>>>>>>>           * frequency. Fortunately, the read should rarely fail!
>>>>>>>           */
>>>>>>> -        val = intel_uncore_read_fw(uncore, GEN6_RPSTAT1);
>>>>>>> +        val = intel_rps_read_rpstat(rps);
>>>>>>
>>>>>> Hmm, we got rid of _fw which the comment above refers to. Maybe we
>>>>>> need a
>>>>>> fw flag to intel_rps_read_rpstat?
>>>>>
>>>>> Above function before reading rpstat it checks if gt is awake.
>>>>
>>>> Ok, so you are referring to intel_gt_pm_get_if_awake check in
>>>> frequency_sample.
>>>>
>>>>> So when gt is awake shouldn't matter if we read GEN6_RPSTAT1 with
>>>>> forcewake.In that case we can remove above comment.  Let me know your
>>>>> thoughts on this.
>>>>
>>>> I am not entirely sure about this. For example in c1c82d267ae8
>>>> intel_uncore_read_fw was introduced with the same
>>>> intel_gt_pm_get_if_awake
>>>> check. So this would mean even if gt is awake not taking forcewake makes
>>>> a
>>>> difference. The same code pattern was retained in b66ecd0438bf. Maybe
>>>> it's
>>>> because there are no locks?
>>>
>>> Its about power. As c1c82d267ae8 ("drm/i915/pmu: Cheat when reading the
>>> actual frequency to avoid fw") explains the _fw variant is to avoid
>>> preventing RC6, and so increased GPU power draw, just because someone has
>>> PMU open. (Because of the 200Hz sampling timer that is needed for PMU
>>> frequency reporting.)
>>>
>>>> Under the circumstances I think we could do one of two things:
>>>> 1. If we want to drop _fw, we should do it as a separate patch with its
>>>> own
>>>>      justification so it can be reviewed separately.
>>>> 2. Otherwise as I mentioned we should retain the _fw and add a fw flag to
>>>>      intel_rps_read_rpstat.
>>>
>>> Agreed. Or instead of the flag, the usual pattern of having
>>> intel_rps_read_rpstat_fw and make intel_rps_read_rpsstat get the
>>> forcewake.
>>>
>>> Also, may I ask, this patch is in the MTL enablement series but the
>>> commit message and patch content seem like it is fixing a wider Gen12
>>> issue? What is the extent of incorrect behaviour without it? Should it be
>>> tagged for stable for first Tigerlake supporting kernel?
>>
>> GEN6_RPSTAT1(0xa01c) and GEN12_RPSTAT1(0x1381b4) both are supported by
>> gen12 and above. The difference between two is GEN6_RPSTAT1 falls under
>> RENDER forcewake domain and GEN12_RPSTAT1 does not require forcewake to
>> access. GEN12_RPSTAT1 is punit register and when GT is in RC6 it will give
>> frequency as 0.
> 
> Correct, so no changes needed for stable kernels. But going forward Badal
> is proposing (which I sort of agree with but may need some discussion) that
> we change i915 behavior to return 0 freq (instead of cur_freq or RPn) when
> GT is idle or in RC6 (so we don't take forcewake to read freq when GT is in
> RC6).

We already report zero when GT is idle (as considered by software 
tracking) so I guess the only part you'd like to change is drop the else 
branch in:

		val = intel_uncore_read_fw(uncore, GEN6_RPSTAT1);
		if (val)
			val = intel_rps_get_cagf(rps, val);
		else
			val = rps->cur_freq;

?

What would be pros and cons?

Regards,

Tvrtko
