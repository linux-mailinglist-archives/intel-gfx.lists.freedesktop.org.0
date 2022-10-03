Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FC75F2B70
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 10:11:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24AAB10E262;
	Mon,  3 Oct 2022 08:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09DBD10E262
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664784686; x=1696320686;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=PdyDClACgSO6mu8qPbLRNECAMwR3JpE6YkFTp6VuRqA=;
 b=V1lbKFDPVxlx7w9sFKv/Pe//Zi3bZWVDUXrFAfOUlww/PQRrTuhQr1su
 qVHQsq5F6RzIC13oh0DsTwMeDhxWFOS4x19Vzp808CdXWv1FAmdIoigfZ
 4aL5PoqjpkaS+rM7DpBrAaWZSOj8TRsyHqJJwj5Wr2sb2WZZUzvYeVTg0
 RbUOZmVnLBUG6elWERSxWZNAesIlBazLPVQ+R3lbNkTGnJX21rc0w7SWn
 WopP3ftCWiHWC6nI8xTgg5cdXYRKRvXR2T6bIj1vN0Nopee0vmMH60urE
 Kchrco1r13BAnf+Z4lGmDGeqrNSOOiBifkjjt/Yl3tSP/LgOOjugC/K79 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="301297125"
X-IronPort-AV: E=Sophos;i="5.93,364,1654585200"; d="scan'208";a="301297125"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 01:11:25 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="574546675"
X-IronPort-AV: E=Sophos;i="5.93,364,1654585200"; d="scan'208";a="574546675"
Received: from praffert-mobl.ger.corp.intel.com (HELO [10.213.196.20])
 ([10.213.196.20])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 01:11:23 -0700
Message-ID: <4b4b3625-a740-fa6f-9ff3-c75c9d05e265@linux.intel.com>
Date: Mon, 3 Oct 2022 09:11:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20220910143844.1755324-1-ashutosh.dixit@intel.com>
 <20220910143844.1755324-2-ashutosh.dixit@intel.com>
 <86f6485f-d7c7-66ad-b819-af33913194ef@linux.intel.com>
 <87fsg5zd0b.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87fsg5zd0b.wl-ashutosh.dixit@intel.com>
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


On 03/10/2022 06:34, Dixit, Ashutosh wrote:
> On Tue, 27 Sep 2022 07:17:23 -0700, Tvrtko Ursulin wrote:
>>
> 
> Hi Tvrtko,
> 
> I am adding some people who may have more background/history into this.
> 
>> On 10/09/2022 15:38, Ashutosh Dixit wrote:
>>> From: Tilak Tangudu <tilak.tangudu@intel.com>
>>>
>>> Add perf_limit_reasons in debugfs. The upper 16 perf_limit_reasons RW "log"
>>> bits are identical to the lower 16 RO "status" bits except that the "log"
>>> bits remain set until cleared, thereby ensuring the throttling occurrence
>>> is not missed. The clear fop clears the upper 16 "log" bits, the get fop
>>> gets all 32 "log" and "status" bits.
>>>
>>> v2: Expand commit message and clarify "log" and "status" bits in
>>>       comment (Rodrigo)
>>>
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
>>> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 31 +++++++++++++++++++
>>>    drivers/gpu/drm/i915/i915_reg.h               |  1 +
>>>    2 files changed, 32 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>>> index 108b9e76c32e..a009cf69103a 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>>> @@ -655,6 +655,36 @@ static bool rps_eval(void *data)
>>>      DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(rps_boost);
>>>    +static int perf_limit_reasons_get(void *data, u64 *val)
>>> +{
>>> +	struct intel_gt *gt = data;
>>> +	intel_wakeref_t wakeref;
>>> +
>>> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
>>> +		*val = intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS);
>>
>> I have a bunch of questions, given failure to apply this to
>> drm-intel-next-fixes brought my attention to it.
>>
>> Why is GT0_PERF_LIMIT_REASONS_MASK not applied here?
> 
> To expose all 32 "log" and "status" bits, since no log bits and only a few
> status bits are available in sysfs.
> 
>> Who resets the low bits and when in normal operation? (I mean not via this
>> debugfs clear.)
> 
> HW would reset the low status bits after the condition causing the
> throttling goes away. That condition would persist in the the upper log
> bits till cleared via debugfs.
> 
>> Why do we have sysfs expose some of this register, but not these high log
>> bits? Which are more important to the user?
> 
> The low status bits should be sampled while the throttling condition is
> "current" (still happening). The upper log bits can be looked at later to
> see if a particular condition happened.
> 
> I would say as long user land can sample (say every 5 ms) the low status
> bits while a workload is running they can get a complete picture of what
> throttling happened when (the app could sample the actual_freq sysfs and
> correlate those values with the perf_limit_reasons sysfs e.g.).
> 
>> What is the use case for allowing clearing of the log bits from debugfs?
>> Why do we want to carry that code? For IGT?
> 
> I guess the reason for exposing/clearing the log bits is that they can be
> useful in cases where userspace does not want to sample the status bits
> continuously while a workload is running. They can just come afterwards and
> say, ah, these are the reasons limiting freq while the workload was
> running.

But as you say hardware clears them, then it is questionable it would 
show anything at that point?

Do we have interrupts associated with throttling and associated log 
message or uevents?

> Also the log bits could be used in conjunction with the low status bits to
> infer if any limiting event got missed during sampling the status bits.
> 
> I believe IGT's correlating the actual_freq with perf_limit_reasons are
> planned. But yes, whether the upper log bits should also be exposed in
> sysfs is a valid one and should be discussed.

Thanks for the clarifications!

Yes, it sounds like some discussion is needed as to intended use cases 
for exposing and clearing the log.

TBH I am not sure how urgent it is - will there be further conflicts 
caused by divergence of 7738be973fc4e2ba22154fafd3a5d7b9666f9abf vs 
0d2d201095e9f141d6a9fb44320afce761f8b5c2. If there would be it would 
probably be good to close on this question within the current 
development cycle.

Regards,

Tvrtko

> 
> Thanks.
> --
> Ashutosh
> 
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static int perf_limit_reasons_clear(void *data, u64 val)
>>> +{
>>> +	struct intel_gt *gt = data;
>>> +	intel_wakeref_t wakeref;
>>> +
>>> +	/*
>>> +	 * Clear the upper 16 "log" bits, the lower 16 "status" bits are
>>> +	 * read-only. The upper 16 "log" bits are identical to the lower 16
>>> +	 * "status" bits except that the "log" bits remain set until cleared.
>>> +	 */
>>> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
>>> +		intel_uncore_rmw(gt->uncore, GT0_PERF_LIMIT_REASONS,
>>> +				 GT0_PERF_LIMIT_REASONS_LOG_MASK, 0);
>>> +
>>> +	return 0;
>>> +}
>>> +DEFINE_SIMPLE_ATTRIBUTE(perf_limit_reasons_fops, perf_limit_reasons_get,
>>> +			perf_limit_reasons_clear, "%llu\n");
>>> +
>>>    void intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry *root)
>>>    {
>>> 	static const struct intel_gt_debugfs_file files[] = {
>>> @@ -664,6 +694,7 @@ void intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry *root)
>>> 		{ "forcewake_user", &forcewake_user_fops, NULL},
>>> 		{ "llc", &llc_fops, llc_eval },
>>> 		{ "rps_boost", &rps_boost_fops, rps_eval },
>>> +		{ "perf_limit_reasons", &perf_limit_reasons_fops, NULL },
>>> 	};
>>> 		intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files),
>>> gt);
>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>>> index 52462cbfdc66..58b0ed9dddd5 100644
>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>> @@ -1802,6 +1802,7 @@
>>>    #define   POWER_LIMIT_4_MASK		REG_BIT(8)
>>>    #define   POWER_LIMIT_1_MASK		REG_BIT(10)
>>>    #define   POWER_LIMIT_2_MASK		REG_BIT(11)
>>> +#define   GT0_PERF_LIMIT_REASONS_LOG_MASK REG_GENMASK(31, 16)
>>>      #define CHV_CLK_CTL1			_MMIO(0x101100)
>>>    #define VLV_CLK_CTL2			_MMIO(0x101104)
