Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D53CD5B68E4
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 09:47:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85CC789065;
	Tue, 13 Sep 2022 07:47:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B711410E638
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 07:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663055256; x=1694591256;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=eZ2+x8Zr4jlwLbcK7J9PqfuFxiRGb+ySWgP/dA2/a84=;
 b=JH2eoCh77xDXmasJNbto0PcH2IZFewSSsdjIR4mMHJztvlIdk7GFpNms
 CRi6QFKe2ITq6Hrm+68B58BL6e/5dEnzMM49OhjbKJ2aq4D0EP6Sltqvf
 To3ty3QimhufvIaPAEfVwm81/3BJQtjOJy78ktcNzMUClNfUmHKgrEFlQ
 YxAcQhTTlmkbWoEz4OxPMDO6tx/ybTwlA/388IvquXSY+BcXX3QMNpK55
 vtUJt8rRebAVCZCBw1vBcoDQ7PnAMCQ60gqJXGyj5GqqgRMyhfKiEm4C7
 KwZ8MMFb3xDWX94d8YDjlzvxTatcMDjNfZUlnwEAd1SGIpVNCpBBjn1iX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="362020545"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="362020545"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 00:47:35 -0700
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="593836136"
Received: from greenoguewh4.ger.corp.intel.com (HELO [10.213.204.46])
 ([10.213.204.46])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 00:47:34 -0700
Message-ID: <9a6763df-2ab0-4136-2727-e6d24f039ea3@linux.intel.com>
Date: Tue, 13 Sep 2022 08:47:32 +0100
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
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87czc05e53.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 13/09/2022 01:09, Dixit, Ashutosh wrote:
> On Mon, 12 Sep 2022 04:29:38 -0700, Nilawar, Badal wrote:
>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>>>> index 958b37123bf1..a24704ec2c18 100644
>>>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>>>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>>>> @@ -371,7 +371,6 @@ static void
>>>>    frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>>>    {
>>>> 	struct drm_i915_private *i915 = gt->i915;
>>>> -	struct intel_uncore *uncore = gt->uncore;
>>>> 	struct i915_pmu *pmu = &i915->pmu;
>>>> 	struct intel_rps *rps = &gt->rps;
>>>>
>>>> @@ -394,7 +393,7 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>>> 		 * case we assume the system is running at the intended
>>>> 		 * frequency. Fortunately, the read should rarely fail!
>>>> 		 */
>>>> -		val = intel_uncore_read_fw(uncore, GEN6_RPSTAT1);
>>>> +		val = intel_rps_read_rpstat(rps);
>>>
>>> Hmm, we got rid of _fw which the comment above refers to. Maybe we need a
>>> fw flag to intel_rps_read_rpstat?
>>
>> Above function before reading rpstat it checks if gt is awake.
> 
> Ok, so you are referring to intel_gt_pm_get_if_awake check in frequency_sample.
> 
>> So when gt is awake shouldn't matter if we read GEN6_RPSTAT1 with
>> forcewake.In that case we can remove above comment.  Let me know your
>> thoughts on this.
> 
> I am not entirely sure about this. For example in c1c82d267ae8
> intel_uncore_read_fw was introduced with the same intel_gt_pm_get_if_awake
> check. So this would mean even if gt is awake not taking forcewake makes a
> difference. The same code pattern was retained in b66ecd0438bf. Maybe it's
> because there are no locks?

Its about power. As c1c82d267ae8 ("drm/i915/pmu: Cheat when reading the 
actual frequency to avoid fw") explains the _fw variant is to avoid 
preventing RC6, and so increased GPU power draw, just because someone 
has PMU open. (Because of the 200Hz sampling timer that is needed for 
PMU frequency reporting.)

> Under the circumstances I think we could do one of two things:
> 1. If we want to drop _fw, we should do it as a separate patch with its own
>     justification so it can be reviewed separately.
> 2. Otherwise as I mentioned we should retain the _fw and add a fw flag to
>     intel_rps_read_rpstat.

Agreed. Or instead of the flag, the usual pattern of having 
intel_rps_read_rpstat_fw and make intel_rps_read_rpsstat get the forcewake.

Also, may I ask, this patch is in the MTL enablement series but the 
commit message and patch content seem like it is fixing a wider Gen12 
issue? What is the extent of incorrect behaviour without it? Should it 
be tagged for stable for first Tigerlake supporting kernel?

Regards,

Tvrtko
