Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F00A6445BFA
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 23:04:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F384738A9;
	Thu,  4 Nov 2021 22:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A54738A9
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 22:04:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="292637605"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="292637605"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 15:04:15 -0700
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="490122904"
Received: from unerlige-ril-10.jf.intel.com (HELO unerlige-ril-10.165.21.208)
 ([10.165.21.208])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 15:04:14 -0700
Date: Thu, 4 Nov 2021 15:04:07 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20211104220407.GA23493@unerlige-ril-10.165.21.208>
References: <20211103224708.1931-1-umesh.nerlige.ramappa@intel.com>
 <68f76da9-6b70-fee4-6cc6-17e74c867bd2@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <68f76da9-6b70-fee4-6cc6-17e74c867bd2@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Fix synchronization of PMU
 callback with reset
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

On Thu, Nov 04, 2021 at 05:37:37PM +0000, Tvrtko Ursulin wrote:
>
>On 03/11/2021 22:47, Umesh Nerlige Ramappa wrote:
>>Since the PMU callback runs in irq context, it synchronizes with gt
>>reset using the reset count. We could run into a case where the PMU
>>callback could read the reset count before it is updated. This has a
>>potential of corrupting the busyness stats.
>>
>>In addition to the reset count, check if the reset bit is set before
>>capturing busyness.
>>
>>In addition save the previous stats only if you intend to update them.
>>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>---
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 ++++++++----
>>  1 file changed, 8 insertions(+), 4 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>index 5cc49c0b3889..d83ade77ca07 100644
>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>@@ -1183,6 +1183,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>>  	u64 total, gt_stamp_saved;
>>  	unsigned long flags;
>>  	u32 reset_count;
>>+	bool in_reset;
>>  	spin_lock_irqsave(&guc->timestamp.lock, flags);
>>@@ -1191,7 +1192,9 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>>  	 * engine busyness from GuC, so we just use the driver stored
>>  	 * copy of busyness. Synchronize with gt reset using reset_count.
>>  	 */
>>-	reset_count = i915_reset_count(gpu_error);
>>+	rcu_read_lock();
>>+	in_reset = test_bit(I915_RESET_BACKOFF, &gt->reset.flags);
>>+	rcu_read_unlock();
>
>I don't really understand the point of rcu_read_lock over test_bit but 
>I guess you copied it from the trylock loop.

Yes, I don't see other parts of code using the lock though. I can drop 
it.

>
>>  	*now = ktime_get();
>>@@ -1201,9 +1204,10 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>>  	 * start_gt_clk is derived from GuC state. To get a consistent
>>  	 * view of activity, we query the GuC state only if gt is awake.
>>  	 */
>>-	stats_saved = *stats;
>>-	gt_stamp_saved = guc->timestamp.gt_stamp;
>>-	if (intel_gt_pm_get_if_awake(gt)) {
>>+	if (intel_gt_pm_get_if_awake(gt) && !in_reset) {
>
>What is the point of looking at the old value of in_reset here?  Gut 
>feeling says if there is a race this does not fix it.
>
>I did not figure out from the commit message what does "could read the 
>reset count before it is updated" mean?
>I thought the point of reading 

>the reset count twice was that you are sure there was no reset while 
>in here, in which case it is safe to update the software copy. I don't 
>easily see what test_bit does on top.

This is what I see in the reset flow
---------------

R1) test_and_set_bit(I915_RESET_BACKOFF, &gt->reset.flags)
R2) atomic_inc(&gt->i915->gpu_error.reset_count)
R3) reset prepare
R4) do the HW reset

The reset count is updated only once above and that's before an actual 
HW reset happens.

PMU callback flow before this patch
---------------

P1) read reset count
P2) update stats
P3) read reset count
P4) if reset count changed, use old stats. if not use updated stats.

I am concerned that the PMU flow could run after step (R2). Then we 
wrongly conclude that the count stayed the same and no HW reset 
happened.

PMU callback flow with this patch
---------------
This would rely on the reset_count only if a reset is not in progress.

P0) test_bit for I915_RESET_BACKOFF
P1) read reset count if not in reset. if in reset, use old stats
P2) update stats
P3) read reset count
P4) if reset count changed, use old stats. if not use updated stats.

Now that I think about it more, I do see one sequence that still needs 
fixing though - P0, R1, R2, P1 - P4. For that, I think I need to re-read 
the BACKOFF bit after reading the reset_count for the first time. 

Modified PMU callback sequence would be:
----------

M0) test_bit for I915_RESET_BACKOFF
M1) read reset count if not in reset, if in reset, use old stats

M1.1) test_bit for I915_RESET_BACKOFF. if set, use old stats. if not, 
use reset_count to synchronize

M2) update stats
M3) read reset count
M4) if reset count changed, use old stats. if not use updated stats.

Thanks,
Umesh

>
>Regards,
>
>Tvrtko
>
>>+		stats_saved = *stats;
>>+		gt_stamp_saved = guc->timestamp.gt_stamp;
>>+		reset_count = i915_reset_count(gpu_error);
>>  		guc_update_engine_gt_clks(engine);
>>  		guc_update_pm_timestamp(guc, engine, now);
>>  		intel_gt_pm_put_async(gt);
>>
