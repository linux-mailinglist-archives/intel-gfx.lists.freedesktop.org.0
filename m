Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BDC2FB55C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 11:29:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A53426E19B;
	Tue, 19 Jan 2021 10:29:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9B676E19B
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 10:29:40 +0000 (UTC)
IronPort-SDR: BMz4zYYAyjaoM5g6cuKS5sIISqxFl/ABciNQVlDFjQVBnCV12iz2aYEYug3rzOqWQ5ZS7+vLh8
 gQ0/uzWPmvwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="158679636"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="158679636"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 02:29:37 -0800
IronPort-SDR: 3rxlj5IfBgkegzyp0FJAPNIakAcest6R9760DrxGZUBIznUPdMnrhBidZJmdUyx2l900vYZu4+
 CdIvo312EGEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="355534735"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 19 Jan 2021 02:29:35 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C6F615C20E6; Tue, 19 Jan 2021 12:26:49 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210119094053.6919-2-chris@chris-wilson.co.uk>
References: <20210119094053.6919-1-chris@chris-wilson.co.uk>
 <20210119094053.6919-2-chris@chris-wilson.co.uk>
Date: Tue, 19 Jan 2021 12:26:49 +0200
Message-ID: <871rehkys6.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/selftests: Prepare the
 selftests for engine resets with ring submission
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> The engine resets selftests kick the tasklets, safe up until now as only
> execlists supported engine resets.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 18 ++++++++++++++----
>  drivers/gpu/drm/i915/gt/selftest_reset.c     | 11 ++++++++---
>  2 files changed, 22 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index 460c3e9542f4..463bb6a700c8 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -704,6 +704,7 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
>  
>  	for_each_engine(engine, gt, id) {
>  		unsigned int reset_count, reset_engine_count;
> +		unsigned long count;
>  		IGT_TIMEOUT(end_time);
>  
>  		if (active && !intel_engine_can_store_dword(engine))
> @@ -721,6 +722,7 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
>  
>  		st_engine_heartbeat_disable(engine);
>  		set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
> +		count = 0;
>  		do {
>  			if (active) {
>  				struct i915_request *rq;
> @@ -770,9 +772,13 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
>  				err = -EINVAL;
>  				break;
>  			}
> +
> +			count++;
>  		} while (time_before(jiffies, end_time));
>  		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
>  		st_engine_heartbeat_enable(engine);
> +		pr_info("%s: Completed %lu %s resets\n",
> +			engine->name, count, active ? "active" : "idle");
>  
>  		if (err)
>  			break;
> @@ -1623,7 +1629,8 @@ static int igt_reset_queue(void *arg)
>  			prev = rq;
>  			count++;
>  		} while (time_before(jiffies, end_time));
> -		pr_info("%s: Completed %d resets\n", engine->name, count);
> +		pr_info("%s: Completed %d queued resets\n",
> +			engine->name, count);
>  
>  		*h.batch = MI_BATCH_BUFFER_END;
>  		intel_gt_chipset_flush(engine->gt);
> @@ -1720,7 +1727,8 @@ static int __igt_atomic_reset_engine(struct intel_engine_cs *engine,
>  	GEM_TRACE("i915_reset_engine(%s:%s) under %s\n",
>  		  engine->name, mode, p->name);
>  
> -	tasklet_disable(t);
> +	if (t->func)
> +		tasklet_disable(t);
>  	if (strcmp(p->name, "softirq"))
>  		local_bh_disable();
>  	p->critical_section_begin();
> @@ -1730,8 +1738,10 @@ static int __igt_atomic_reset_engine(struct intel_engine_cs *engine,
>  	p->critical_section_end();
>  	if (strcmp(p->name, "softirq"))
>  		local_bh_enable();
> -	tasklet_enable(t);
> -	tasklet_hi_schedule(t);
> +	if (t->func) {
> +		tasklet_enable(t);
> +		tasklet_hi_schedule(t);
> +	}
>  
>  	if (err)
>  		pr_err("i915_reset_engine(%s:%s) failed under %s\n",
> diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c b/drivers/gpu/drm/i915/gt/selftest_reset.c
> index b7befcfbdcde..8784257ec808 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_reset.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
> @@ -321,7 +321,10 @@ static int igt_atomic_engine_reset(void *arg)
>  		goto out_unlock;
>  
>  	for_each_engine(engine, gt, id) {
> -		tasklet_disable(&engine->execlists.tasklet);
> +		struct tasklet_struct *t = &engine->execlists.tasklet;
> +
> +		if (t->func)
> +			tasklet_disable(t);
>  		intel_engine_pm_get(engine);
>  
>  		for (p = igt_atomic_phases; p->name; p++) {
> @@ -345,8 +348,10 @@ static int igt_atomic_engine_reset(void *arg)
>  		}
>  
>  		intel_engine_pm_put(engine);
> -		tasklet_enable(&engine->execlists.tasklet);
> -		tasklet_hi_schedule(&engine->execlists.tasklet);
> +		if (t->func) {
> +			tasklet_enable(t);
> +			tasklet_hi_schedule(t);
> +		}
>  		if (err)
>  			break;
>  	}
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
