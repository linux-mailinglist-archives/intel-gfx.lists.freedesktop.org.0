Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E27C24D067
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 10:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35B56E0E5;
	Fri, 21 Aug 2020 08:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 932C96E0E5;
 Fri, 21 Aug 2020 08:14:35 +0000 (UTC)
IronPort-SDR: kRpuKpP8mihFxuoTnQQM959PhIIHOhjwmjJG/VhL4LXyu0fuuVvHVlJX58tRscUUUGhf/KBxm6
 59kPqpPG5Npw==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="154755445"
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; d="scan'208";a="154755445"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 01:14:34 -0700
IronPort-SDR: zN8MYsPkqzeRbAXZklJGy8RImoIFf8qSE9i9o6UFV+Kkwd97VMCCEcCTNPJlrk5RsyqvDx+dCA
 KOmgM3faOp3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; d="scan'208";a="321182285"
Received: from skoronie-mobl.ger.corp.intel.com (HELO [10.252.52.109])
 ([10.252.52.109])
 by fmsmga004.fm.intel.com with ESMTP; 21 Aug 2020 01:14:32 -0700
To: Petri Latvala <petri.latvala@intel.com>
References: <20200820182640.65842-1-chris@chris-wilson.co.uk>
 <5bdb17eb-4f92-ac67-5d89-de7b797663f8@intel.com>
 <20200821075449.GE7444@platvala-desk.ger.corp.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <0756355e-fb11-8be7-3a4f-2118f105a016@intel.com>
Date: Fri, 21 Aug 2020 11:14:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200821075449.GE7444@platvala-desk.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/4] i915/perf: 32bit printf
 cleanup
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21/08/2020 10:54, Petri Latvala wrote:
> On Fri, Aug 21, 2020 at 12:45:23AM +0300, Lionel Landwerlin wrote:
>> On 20/08/2020 20:26, Chris Wilson wrote:
>>> Use PRI[du]64 as necessary for 32bit builds.
>>>
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>>
> Was this for just 1/4 or the whole series?


Just for this patch.


-Lionel

>
> This one is for the whole series:
> Reviewed-by: Petri Latvala <petri.latvala@intel.com>
>
>
>
>> Thanks!
>>
>> -Lionel
>>
>>> ---
>>>    tests/i915/perf.c                    | 8 ++++----
>>>    tools/i915-perf/i915_perf_recorder.c | 2 +-
>>>    2 files changed, 5 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/tests/i915/perf.c b/tests/i915/perf.c
>>> index 92edc9f1f..a894fd382 100644
>>> --- a/tests/i915/perf.c
>>> +++ b/tests/i915/perf.c
>>> @@ -2077,7 +2077,7 @@ test_blocking(uint64_t requested_oa_period, bool set_kernel_hrtimer, uint64_t ke
>>>    	user_ns = (end_times.tms_utime - start_times.tms_utime) * tick_ns;
>>>    	kernel_ns = (end_times.tms_stime - start_times.tms_stime) * tick_ns;
>>> -	igt_debug("%d blocking reads during test with %lu Hz OA sampling (expect no more than %d)\n",
>>> +	igt_debug("%d blocking reads during test with %"PRIu64" Hz OA sampling (expect no more than %d)\n",
>>>    		  n, NSEC_PER_SEC / oa_period, max_iterations);
>>>    	igt_debug("%d extra iterations seen, not related to periodic sampling (e.g. context switches)\n",
>>>    		  n_extra_iterations);
>>> @@ -2265,7 +2265,7 @@ test_polling(uint64_t requested_oa_period, bool set_kernel_hrtimer, uint64_t ker
>>>    	user_ns = (end_times.tms_utime - start_times.tms_utime) * tick_ns;
>>>    	kernel_ns = (end_times.tms_stime - start_times.tms_stime) * tick_ns;
>>> -	igt_debug("%d non-blocking reads during test with %lu Hz OA sampling (expect no more than %d)\n",
>>> +	igt_debug("%d non-blocking reads during test with %"PRIu64" Hz OA sampling (expect no more than %d)\n",
>>>    		  n, NSEC_PER_SEC / oa_period, max_iterations);
>>>    	igt_debug("%d extra iterations seen, not related to periodic sampling (e.g. context switches)\n",
>>>    		  n_extra_iterations);
>>> @@ -2357,7 +2357,7 @@ num_valid_reports_captured(struct drm_i915_perf_open_param *param,
>>>    	int64_t start, end;
>>>    	int num_reports = 0;
>>> -	igt_debug("Expected duration = %lu\n", *duration_ns);
>>> +	igt_debug("Expected duration = %"PRId64"\n", *duration_ns);
>>>    	stream_fd = __perf_open(drm_fd, param, true);
>>> @@ -2389,7 +2389,7 @@ num_valid_reports_captured(struct drm_i915_perf_open_param *param,
>>>    	*duration_ns = end - start;
>>> -	igt_debug("Actual duration = %lu\n", *duration_ns);
>>> +	igt_debug("Actual duration = %"PRIu64"\n", *duration_ns);
>>>    	return num_reports;
>>>    }
>>> diff --git a/tools/i915-perf/i915_perf_recorder.c b/tools/i915-perf/i915_perf_recorder.c
>>> index 7671f39b4..adc41c29f 100644
>>> --- a/tools/i915-perf/i915_perf_recorder.c
>>> +++ b/tools/i915-perf/i915_perf_recorder.c
>>> @@ -1001,7 +1001,7 @@ main(int argc, char *argv[])
>>>    	}
>>>    	ctx.oa_exponent = oa_exponent_for_period(ctx.timestamp_frequency, perf_period);
>>> -	fprintf(stdout, "Opening perf stream with metric_id=%lu oa_exponent=%u\n",
>>> +	fprintf(stdout, "Opening perf stream with metric_id=%"PRIu64" oa_exponent=%u\n",
>>>    		ctx.metric_set->perf_oa_metrics_set, ctx.oa_exponent);
>>>    	ctx.perf_fd = perf_open(&ctx);
>>
>> _______________________________________________
>> igt-dev mailing list
>> igt-dev@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/igt-dev


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
