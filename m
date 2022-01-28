Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C02F49F673
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 10:34:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 567BB10EB69;
	Fri, 28 Jan 2022 09:34:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF98610EADE
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 09:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643362472; x=1674898472;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to:content-transfer-encoding;
 bh=Ps59hAfpWvJtdOO3f95m5W7DDm0orMzcDUVZDuwKLMQ=;
 b=XvHyTrUxwTTVNrWLGGyvKtPmGLIoRJZYsCNnDF0XZN1aN0hdQwnHOb03
 ChxBO10fAHpnCu6NO3SXG79FQcpNUpe05vM6TnxyYpLXTuHUtQlc51xaS
 exT/TKHZVh9dA4G/jzZ8xCaKxBQa6/ZzSRGNBIjeKjiKnKXO1GdzuQXw+
 mw9vH6eEiL3bqF+FhzLMoEZpd3tWvPZpTLxgvD5YoLpGkdx91GiFU6jyY
 d828bS5lEJEci0m3tUPVpfXGOud9rxKUmKqEKH+f8oYukuQvPHFmcoDqm
 ehSSGNOTkWD7s5pip9n1PZt190mAWCCvs9iQ/rwC+MqNOIA6nbcYOU/UE A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="227065672"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="227065672"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 01:34:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="536066071"
Received: from mcummins-mobl1.ger.corp.intel.com (HELO [10.213.196.43])
 ([10.213.196.43])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 01:34:30 -0800
Message-ID: <7452de10-b474-1796-967a-219f594a89c5@linux.intel.com>
Date: Fri, 28 Jan 2022 09:34:28 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org, John Harrison <John.C.Harrison@Intel.com>
References: <20220127020035.985786-1-umesh.nerlige.ramappa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220127020035.985786-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/pmu: Fix KMD and GuC race on
 accessing busyness
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


John,

What CI results were used to merge this particular single patch? Unless 
I am not seeing it, it was always set in pair with something else.

First with "drm/i915/pmu: Use PM timestamp instead of RING TIMESTAMP for 
reference", which was merged earlier in the week and it had a standalone 
CI results so that is fine.

Other postings I can see it was in tandem with "drm/i915/pmu: Use 
existing uncore helper to read gpm_timestamp", which wasn't reviewed or 
merged.

So it looks to me, again unless I am not seeing anything, that it got 
merged without ever having a standalone CI results. This is therefore a 
reminder that BKM should be to always have CI results for the exact 
series/patch being merged.

If there is a situation where a subset of a series is conceptually ready 
before the rest, in the past what we used to do is send the reviewed 
portion as "--subject-prefix=CI" and then "--suppress-cc=all" and then 
merge when CI gives all green.

Regards,

Tvrtko

On 27/01/2022 02:00, Umesh Nerlige Ramappa wrote:
> GuC updates shared memory and KMD reads it. Since this is not
> synchronized, we run into a race where the value read is inconsistent.
> Sometimes the inconsistency is in reading the upper MSB bytes of the
> last_switch_in value. 2 types of cases are seen - upper 8 bits are zero
> and upper 24 bits are zero. Since these are non-zero values, it is
> not trivial to determine validity of these values. Instead we read the
> values multiple times until they are consistent. In test runs, 3
> attempts results in consistent values. The upper bound is set to 6
> attempts and may need to be tuned as per any new occurences.
> 
> Since the duration that gt is parked can vary, the patch also updates
> the gt timestamp on unpark before starting the worker.
> 
> v2:
> - Initialize i
> - Use READ_ONCE to access engine record
> 
> Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 58 +++++++++++++++++--
>   1 file changed, 54 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index db9615dcb0ec..4e9154cacc58 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1114,6 +1114,19 @@ __extend_last_switch(struct intel_guc *guc, u64 *prev_start, u32 new_start)
>   	if (new_start == lower_32_bits(*prev_start))
>   		return;
>   
> +	/*
> +	 * When gt is unparked, we update the gt timestamp and start the ping
> +	 * worker that updates the gt_stamp every POLL_TIME_CLKS. As long as gt
> +	 * is unparked, all switched in contexts will have a start time that is
> +	 * within +/- POLL_TIME_CLKS of the most recent gt_stamp.
> +	 *
> +	 * If neither gt_stamp nor new_start has rolled over, then the
> +	 * gt_stamp_hi does not need to be adjusted, however if one of them has
> +	 * rolled over, we need to adjust gt_stamp_hi accordingly.
> +	 *
> +	 * The below conditions address the cases of new_start rollover and
> +	 * gt_stamp_last rollover respectively.
> +	 */
>   	if (new_start < gt_stamp_last &&
>   	    (new_start - gt_stamp_last) <= POLL_TIME_CLKS)
>   		gt_stamp_hi++;
> @@ -1125,17 +1138,45 @@ __extend_last_switch(struct intel_guc *guc, u64 *prev_start, u32 new_start)
>   	*prev_start = ((u64)gt_stamp_hi << 32) | new_start;
>   }
>   
> -static void guc_update_engine_gt_clks(struct intel_engine_cs *engine)
> +/*
> + * GuC updates shared memory and KMD reads it. Since this is not synchronized,
> + * we run into a race where the value read is inconsistent. Sometimes the
> + * inconsistency is in reading the upper MSB bytes of the last_in value when
> + * this race occurs. 2 types of cases are seen - upper 8 bits are zero and upper
> + * 24 bits are zero. Since these are non-zero values, it is non-trivial to
> + * determine validity of these values. Instead we read the values multiple times
> + * until they are consistent. In test runs, 3 attempts results in consistent
> + * values. The upper bound is set to 6 attempts and may need to be tuned as per
> + * any new occurences.
> + */
> +static void __get_engine_usage_record(struct intel_engine_cs *engine,
> +				      u32 *last_in, u32 *id, u32 *total)
>   {
>   	struct guc_engine_usage_record *rec = intel_guc_engine_usage(engine);
> +	int i = 0;
> +
> +	do {
> +		*last_in = READ_ONCE(rec->last_switch_in_stamp);
> +		*id = READ_ONCE(rec->current_context_index);
> +		*total = READ_ONCE(rec->total_runtime);
> +
> +		if (READ_ONCE(rec->last_switch_in_stamp) == *last_in &&
> +		    READ_ONCE(rec->current_context_index) == *id &&
> +		    READ_ONCE(rec->total_runtime) == *total)
> +			break;
> +	} while (++i < 6);
> +}
> +
> +static void guc_update_engine_gt_clks(struct intel_engine_cs *engine)
> +{
>   	struct intel_engine_guc_stats *stats = &engine->stats.guc;
>   	struct intel_guc *guc = &engine->gt->uc.guc;
> -	u32 last_switch = rec->last_switch_in_stamp;
> -	u32 ctx_id = rec->current_context_index;
> -	u32 total = rec->total_runtime;
> +	u32 last_switch, ctx_id, total;
>   
>   	lockdep_assert_held(&guc->timestamp.lock);
>   
> +	__get_engine_usage_record(engine, &last_switch, &ctx_id, &total);
> +
>   	stats->running = ctx_id != ~0U && last_switch;
>   	if (stats->running)
>   		__extend_last_switch(guc, &stats->start_gt_clk, last_switch);
> @@ -1237,6 +1278,10 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>   	if (!in_reset && intel_gt_pm_get_if_awake(gt)) {
>   		stats_saved = *stats;
>   		gt_stamp_saved = guc->timestamp.gt_stamp;
> +		/*
> +		 * Update gt_clks, then gt timestamp to simplify the 'gt_stamp -
> +		 * start_gt_clk' calculation below for active engines.
> +		 */
>   		guc_update_engine_gt_clks(engine);
>   		guc_update_pm_timestamp(guc, now);
>   		intel_gt_pm_put_async(gt);
> @@ -1365,10 +1410,15 @@ void intel_guc_busyness_park(struct intel_gt *gt)
>   void intel_guc_busyness_unpark(struct intel_gt *gt)
>   {
>   	struct intel_guc *guc = &gt->uc.guc;
> +	unsigned long flags;
> +	ktime_t unused;
>   
>   	if (!guc_submission_initialized(guc))
>   		return;
>   
> +	spin_lock_irqsave(&guc->timestamp.lock, flags);
> +	guc_update_pm_timestamp(guc, &unused);
> +	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>   	mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
>   			 guc->timestamp.ping_delay);
>   }
> 
