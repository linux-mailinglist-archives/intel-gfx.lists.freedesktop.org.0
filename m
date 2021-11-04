Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EBB4458C2
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 18:37:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB8EF736B5;
	Thu,  4 Nov 2021 17:37:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 019C4736B5
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 17:37:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="255400762"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="255400762"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 10:37:40 -0700
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="450302741"
Received: from jrgrant-mobl.ger.corp.intel.com (HELO [10.213.221.26])
 ([10.213.221.26])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 10:37:39 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20211103224708.1931-1-umesh.nerlige.ramappa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <68f76da9-6b70-fee4-6cc6-17e74c867bd2@linux.intel.com>
Date: Thu, 4 Nov 2021 17:37:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211103224708.1931-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/11/2021 22:47, Umesh Nerlige Ramappa wrote:
> Since the PMU callback runs in irq context, it synchronizes with gt
> reset using the reset count. We could run into a case where the PMU
> callback could read the reset count before it is updated. This has a
> potential of corrupting the busyness stats.
> 
> In addition to the reset count, check if the reset bit is set before
> capturing busyness.
> 
> In addition save the previous stats only if you intend to update them.
> 
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 ++++++++----
>   1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 5cc49c0b3889..d83ade77ca07 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1183,6 +1183,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>   	u64 total, gt_stamp_saved;
>   	unsigned long flags;
>   	u32 reset_count;
> +	bool in_reset;
>   
>   	spin_lock_irqsave(&guc->timestamp.lock, flags);
>   
> @@ -1191,7 +1192,9 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>   	 * engine busyness from GuC, so we just use the driver stored
>   	 * copy of busyness. Synchronize with gt reset using reset_count.
>   	 */
> -	reset_count = i915_reset_count(gpu_error);
> +	rcu_read_lock();
> +	in_reset = test_bit(I915_RESET_BACKOFF, &gt->reset.flags);
> +	rcu_read_unlock();

I don't really understand the point of rcu_read_lock over test_bit but I 
guess you copied it from the trylock loop.

>   
>   	*now = ktime_get();
>   
> @@ -1201,9 +1204,10 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>   	 * start_gt_clk is derived from GuC state. To get a consistent
>   	 * view of activity, we query the GuC state only if gt is awake.
>   	 */
> -	stats_saved = *stats;
> -	gt_stamp_saved = guc->timestamp.gt_stamp;
> -	if (intel_gt_pm_get_if_awake(gt)) {
> +	if (intel_gt_pm_get_if_awake(gt) && !in_reset) {

What is the point of looking at the old value of in_reset here?  Gut 
feeling says if there is a race this does not fix it.

I did not figure out from the commit message what does "could read the 
reset count before it is updated" mean? I thought the point of reading 
the reset count twice was that you are sure there was no reset while in 
here, in which case it is safe to update the software copy. I don't 
easily see what test_bit does on top.

Regards,

Tvrtko

> +		stats_saved = *stats;
> +		gt_stamp_saved = guc->timestamp.gt_stamp;
> +		reset_count = i915_reset_count(gpu_error);
>   		guc_update_engine_gt_clks(engine);
>   		guc_update_pm_timestamp(guc, engine, now);
>   		intel_gt_pm_put_async(gt);
> 
