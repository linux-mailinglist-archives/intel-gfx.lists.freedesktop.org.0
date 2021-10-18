Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA66432682
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 20:35:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025B46E0EF;
	Mon, 18 Oct 2021 18:35:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A73C6E0E8;
 Mon, 18 Oct 2021 18:35:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="291807596"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="291807596"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 11:35:49 -0700
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="573189490"
Received: from unerlige-desk.amr.corp.intel.com (HELO
 unerlige-ril-10.165.21.208) ([10.165.21.208])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 11:35:49 -0700
Date: Mon, 18 Oct 2021 11:35:44 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 john.c.harrison@intel.com, daniel.vetter@ffwll.ch,
 Matthew Brost <matthew.brost@intel.com>
Message-ID: <20211018183544.GA10100@unerlige-ril-10.165.21.208>
References: <20211015234705.12392-1-umesh.nerlige.ramappa@intel.com>
 <20211015234705.12392-2-umesh.nerlige.ramappa@intel.com>
 <2a31b713-e8ea-524b-f37c-976791a2ccc4@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <2a31b713-e8ea-524b-f37c-976791a2ccc4@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pmu: Connect engine busyness
 stats from GuC to pmu
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 18, 2021 at 08:58:01AM +0100, Tvrtko Ursulin wrote:
>
>
>On 16/10/2021 00:47, Umesh Nerlige Ramappa wrote:
>>With GuC handling scheduling, i915 is not aware of the time that a
>>context is scheduled in and out of the engine. Since i915 pmu relies on
>>this info to provide engine busyness to the user, GuC shares this info
>>with i915 for all engines using shared memory. For each engine, this
>>info contains:
>>
>>- total busyness: total time that the context was running (total)
>>- id: id of the running context (id)
>>- start timestamp: timestamp when the context started running (start)
>>
>>At the time (now) of sampling the engine busyness, if the id is valid
>>(!= ~0), and start is non-zero, then the context is considered to be
>>active and the engine busyness is calculated using the below equation
>>
>>	engine busyness = total + (now - start)
>>
>>All times are obtained from the gt clock base. For inactive contexts,
>>engine busyness is just equal to the total.
>>
>>The start and total values provided by GuC are 32 bits and wrap around
>>in a few minutes. Since perf pmu provides busyness as 64 bit
>>monotonically increasing values, there is a need for this implementation
>>to account for overflows and extend the time to 64 bits before returning
>>busyness to the user. In order to do that, a worker runs periodically at
>>frequency = 1/8th the time it takes for the timestamp to wrap. As an
>>example, that would be once in 27 seconds for a gt clock frequency of
>>19.2 MHz.
>>
>>Note:
>>There might be an overaccounting of busyness due to the fact that GuC
>>may be updating the total and start values while kmd is reading them.
>>(i.e kmd may read the updated total and the stale start). In such a
>>case, user may see higher busyness value followed by smaller ones which
>>would eventually catch up to the higher value.
>>
>>v2: (Tvrtko)
>>- Include details in commit message
>>- Move intel engine busyness function into execlist code
>>- Use union inside engine->stats
>>- Use natural type for ping delay jiffies
>>- Drop active_work condition checks
>>- Use for_each_engine if iterating all engines
>>- Drop seq locking, use spinlock at guc level to update engine stats
>>- Document worker specific details
>>
>>v3: (Tvrtko/Umesh)
>>- Demarcate guc and execlist stat objects with comments
>>- Document known over-accounting issue in commit
>>- Provide a consistent view of guc state
>>- Add hooks to gt park/unpark for guc busyness
>>- Stop/start worker in gt park/unpark path
>>- Drop inline
>>- Move spinlock and worker inits to guc initialization
>>- Drop helpers that are called only once
>>
>>v4: (Tvrtko/Matt/Umesh)
>>- Drop addressed opens from commit message
>>- Get runtime pm in ping, remove from the park path
>>- Use cancel_delayed_work_sync in disable_submission path
>>- Update stats during reset prepare
>>- Skip ping if reset in progress
>>- Explicitly name execlists and guc stats objects
>>- Since disable_submission is called from many places, move resetting
>>   stats to intel_guc_submission_reset_prepare
>>
>>v5: (Tvrtko)
>>- Add a trylock helper that does not sleep and synchronize PMU event
>>   callbacks and worker with gt reset
>>
>>v6: (CI BAT failures)
>>- DUTs using execlist submission failed to boot since __gt_unpark is
>>   called during i915 load. This ends up calling the guc busyness unpark
>>   hook and results in kiskstarting an uninitialized worker. Let
>>   park/unpark hooks check if guc submission has been initialized.
>>- drop cant_sleep() from trylock hepler since rcu_read_lock takes care
>>   of that.
>>
>>v7: (CI) Fix igt@i915_selftest@live@gt_engines
>>- For guc mode of submission the engine busyness is derived from gt time
>>   domain. Use gt time elapsed as reference in the selftest.
>>- Increase busyness calculation to 10ms duration to ensure batch runs
>>   longer and falls within the busyness tolerances in selftest.
>
>[snip]
>
>>diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>>index 75569666105d..24358bef6691 100644
>>--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>>+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>>@@ -234,6 +234,7 @@ static int live_engine_busy_stats(void *arg)
>>  		struct i915_request *rq;
>>  		ktime_t de, dt;
>>  		ktime_t t[2];
>>+		u32 gt_stamp;
>>  		if (!intel_engine_supports_stats(engine))
>>  			continue;
>>@@ -251,10 +252,16 @@ static int live_engine_busy_stats(void *arg)
>>  		ENGINE_TRACE(engine, "measuring idle time\n");
>>  		preempt_disable();
>>  		de = intel_engine_get_busy_time(engine, &t[0]);
>>-		udelay(100);
>>+		gt_stamp = intel_uncore_read(gt->uncore, GUCPMTIMESTAMP);
>>+		udelay(10000);
>>  		de = ktime_sub(intel_engine_get_busy_time(engine, &t[1]), de);
>>+		gt_stamp = intel_uncore_read(gt->uncore, GUCPMTIMESTAMP) - gt_stamp;
>>  		preempt_enable();
>>-		dt = ktime_sub(t[1], t[0]);
>>+
>>+		dt = intel_engine_uses_guc(engine) ?
>>+		     intel_gt_clock_interval_to_ns(engine->gt, gt_stamp) :
>>+		     ktime_sub(t[1], t[0]);
>
>But this then shows the thing might not work for external callers like 
>PMU who have no idea about GUCPMTIMESTAMP and cannot obtain it anyway.
>
>What is the root cause of the failure here, 100us or clock source? Is 
>the granularity of GUCPMTIMESTAMP perhaps simply too coarse for 100us 
>test period? I forget what frequency it runs at.

guc timestamp is ticking at 19.2 MHz in adlp/rkl (where I ran this).

1)
With 100us, often times I see that the batch has not yet started, so I 
get busy time in the range 0 - 60 %. I increased the time such that the 
batch runs long enough to make the scheduling time < 5%.

2)
I did a 100 runs on rkl/adlp. No failures on rkl. On adlp, I saw one in 
25 runs show 93%/94% busyness for rcs0 and fail (expected is 95%). For 
that I tried using the guc timestamp thinking it would provide more 
accuracy. It did in my testing, but CI still failed for rkl-guc (110% 
busyness!!), so now I just think we need to tweak the expected busyness 
for guc.

Is 1) acceptable?

For 2) I am thinking of just changing the expected busyness to 90% plus 
for guc mode OR should we just let it fail occassionally? Thoughts?

Thanks,
Umesh

>
>Regards,
>
>Tvrtko
