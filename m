Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A12A74456B2
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 17:01:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EE7E6F975;
	Thu,  4 Nov 2021 16:01:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C516D6F975
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 16:01:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="231680792"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="231680792"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:01:55 -0700
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="586018987"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:01:54 -0700
Date: Thu, 4 Nov 2021 08:57:22 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Message-ID: <20211104155722.GA27906@jons-linux-dev-box>
References: <20211103224708.1931-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211103224708.1931-1-umesh.nerlige.ramappa@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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

On Wed, Nov 03, 2021 at 03:47:08PM -0700, Umesh Nerlige Ramappa wrote:
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

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 5cc49c0b3889..d83ade77ca07 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1183,6 +1183,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>  	u64 total, gt_stamp_saved;
>  	unsigned long flags;
>  	u32 reset_count;
> +	bool in_reset;
>  
>  	spin_lock_irqsave(&guc->timestamp.lock, flags);
>  
> @@ -1191,7 +1192,9 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>  	 * engine busyness from GuC, so we just use the driver stored
>  	 * copy of busyness. Synchronize with gt reset using reset_count.
>  	 */
> -	reset_count = i915_reset_count(gpu_error);
> +	rcu_read_lock();
> +	in_reset = test_bit(I915_RESET_BACKOFF, &gt->reset.flags);
> +	rcu_read_unlock();
>  
>  	*now = ktime_get();
>  
> @@ -1201,9 +1204,10 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>  	 * start_gt_clk is derived from GuC state. To get a consistent
>  	 * view of activity, we query the GuC state only if gt is awake.
>  	 */
> -	stats_saved = *stats;
> -	gt_stamp_saved = guc->timestamp.gt_stamp;
> -	if (intel_gt_pm_get_if_awake(gt)) {
> +	if (intel_gt_pm_get_if_awake(gt) && !in_reset) {
> +		stats_saved = *stats;
> +		gt_stamp_saved = guc->timestamp.gt_stamp;
> +		reset_count = i915_reset_count(gpu_error);
>  		guc_update_engine_gt_clks(engine);
>  		guc_update_pm_timestamp(guc, engine, now);
>  		intel_gt_pm_put_async(gt);
> -- 
> 2.20.1
> 
