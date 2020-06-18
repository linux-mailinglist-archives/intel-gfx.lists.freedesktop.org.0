Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6981FED47
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 10:13:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 677CB89A75;
	Thu, 18 Jun 2020 08:13:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC8E489A75
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 08:13:10 +0000 (UTC)
IronPort-SDR: xvoAPZ7djRrgSIHyAV6ZWno6LYAozZELRhWxKlcbrV2M2WNuAMAJEyMV8TXhXQWBCLpX0EL7L/
 Uh3EiE3Sn6aA==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="143990929"
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="143990929"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 01:13:09 -0700
IronPort-SDR: kcJDrU1jjjlPxhmhZ3iuiBZbUPDRJEi///GvRzES2r+BVd9+S5irJOrIo8jg4jugbXh3ULZb7A
 E46f1x24uXHg==
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="450558067"
Received: from ttulbure-mobl.ger.corp.intel.com (HELO [10.252.33.49])
 ([10.252.33.49])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 01:13:08 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200617130916.15261-1-chris@chris-wilson.co.uk>
 <20200617130916.15261-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d86f8c3c-c47a-282a-f5a9-212ef8da7935@linux.intel.com>
Date: Thu, 18 Jun 2020 09:13:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200617130916.15261-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Always report the sample
 time for busy-stats
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 17/06/2020 14:09, Chris Wilson wrote:
> Return the monotonic timestamp (ktime_get()) at the time of sampling the
> busy-time. This is used in preference to taking ktime_get() separately
> before or after the read seqlock as there can be some large variance in
> reported timestamps. For selftests trying to ascertain that we are
> reporting accurate to within a few microseconds, even a small delay
> leads to the test failing.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine.h        |  3 +-
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 12 ++--
>   drivers/gpu/drm/i915/gt/intel_rps.c           |  9 ++-
>   drivers/gpu/drm/i915/gt/selftest_engine_pm.c  | 18 +++---
>   drivers/gpu/drm/i915/i915_pmu.c               |  5 +-
>   drivers/gpu/drm/i915/selftests/i915_request.c | 63 ++++++++++++-------
>   6 files changed, 66 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 791897f8d847..a9249a23903a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -334,7 +334,8 @@ void intel_engine_dump(struct intel_engine_cs *engine,
>   		       struct drm_printer *m,
>   		       const char *header, ...);
>   
> -ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine);
> +ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine,
> +				   ktime_t *now);
>   
>   struct i915_request *
>   intel_engine_find_active_request(struct intel_engine_cs *engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 045179c65c44..c62b3cbdbbf9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1595,7 +1595,8 @@ void intel_engine_dump(struct intel_engine_cs *engine,
>   	intel_engine_print_breadcrumbs(engine, m);
>   }
>   
> -static ktime_t __intel_engine_get_busy_time(struct intel_engine_cs *engine)
> +static ktime_t __intel_engine_get_busy_time(struct intel_engine_cs *engine,
> +					    ktime_t *now)
>   {
>   	ktime_t total = engine->stats.total;
>   
> @@ -1603,9 +1604,9 @@ static ktime_t __intel_engine_get_busy_time(struct intel_engine_cs *engine)
>   	 * If the engine is executing something at the moment
>   	 * add it to the total.
>   	 */
> +	*now = ktime_get();
>   	if (atomic_read(&engine->stats.active))
> -		total = ktime_add(total,
> -				  ktime_sub(ktime_get(), engine->stats.start));
> +		total = ktime_add(total, ktime_sub(*now, engine->stats.start));
>   
>   	return total;
>   }
> @@ -1613,17 +1614,18 @@ static ktime_t __intel_engine_get_busy_time(struct intel_engine_cs *engine)
>   /**
>    * intel_engine_get_busy_time() - Return current accumulated engine busyness
>    * @engine: engine to report on
> + * @now: monotonic timestamp of sampling
>    *
>    * Returns accumulated time @engine was busy since engine stats were enabled.
>    */
> -ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine)
> +ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine, ktime_t *now)
>   {
>   	unsigned int seq;
>   	ktime_t total;
>   
>   	do {
>   		seq = read_seqbegin(&engine->stats.lock);
> -		total = __intel_engine_get_busy_time(engine);
> +		total = __intel_engine_get_busy_time(engine, now);
>   	} while (read_seqretry(&engine->stats.lock, seq));
>   
>   	return total;
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 2f59fc6df3c2..bdece932592b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -53,13 +53,13 @@ static void rps_timer(struct timer_list *t)
>   	struct intel_engine_cs *engine;
>   	enum intel_engine_id id;
>   	s64 max_busy[3] = {};
> -	ktime_t dt, last;
> +	ktime_t dt, timestamp, last;
>   
>   	for_each_engine(engine, rps_to_gt(rps), id) {
>   		s64 busy;
>   		int i;
>   
> -		dt = intel_engine_get_busy_time(engine);
> +		dt = intel_engine_get_busy_time(engine, &timestamp);
>   		last = engine->stats.rps;
>   		engine->stats.rps = dt;
>   
> @@ -70,15 +70,14 @@ static void rps_timer(struct timer_list *t)
>   		}
>   	}
>   
> -	dt = ktime_get();
>   	last = rps->pm_timestamp;
> -	rps->pm_timestamp = dt;
> +	rps->pm_timestamp = timestamp;
>   
>   	if (intel_rps_is_active(rps)) {
>   		s64 busy;
>   		int i;
>   
> -		dt = ktime_sub(dt, last);
> +		dt = ktime_sub(timestamp, last);
>   
>   		/*
>   		 * Our goal is to evaluate each engine independently, so we run
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> index dd54dcb5cca2..b08fc5390e8a 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> @@ -29,8 +29,8 @@ static int live_engine_busy_stats(void *arg)
>   	GEM_BUG_ON(intel_gt_pm_is_awake(gt));
>   	for_each_engine(engine, gt, id) {
>   		struct i915_request *rq;
> -		ktime_t de;
> -		u64 dt;
> +		ktime_t de, dt;
> +		ktime_t t[2];
>   
>   		if (!intel_engine_supports_stats(engine))
>   			continue;
> @@ -47,12 +47,11 @@ static int live_engine_busy_stats(void *arg)
>   
>   		ENGINE_TRACE(engine, "measuring idle time\n");
>   		preempt_disable();
> -		dt = ktime_to_ns(ktime_get());
> -		de = intel_engine_get_busy_time(engine);
> +		de = intel_engine_get_busy_time(engine, &t[0]);
>   		udelay(100);
> -		de = ktime_sub(intel_engine_get_busy_time(engine), de);
> -		dt = ktime_to_ns(ktime_get()) - dt;
> +		de = ktime_sub(intel_engine_get_busy_time(engine, &t[1]), de);
>   		preempt_enable();
> +		dt = ktime_sub(t[1], t[0]);
>   		if (de < 0 || de > 10) {
>   			pr_err("%s: reported %lldns [%d%%] busyness while sleeping [for %lldns]\n",
>   			       engine->name,
> @@ -80,12 +79,11 @@ static int live_engine_busy_stats(void *arg)
>   
>   		ENGINE_TRACE(engine, "measuring busy time\n");
>   		preempt_disable();
> -		dt = ktime_to_ns(ktime_get());
> -		de = intel_engine_get_busy_time(engine);
> +		de = intel_engine_get_busy_time(engine, &t[0]);
>   		udelay(100);
> -		de = ktime_sub(intel_engine_get_busy_time(engine), de);
> -		dt = ktime_to_ns(ktime_get()) - dt;
> +		de = ktime_sub(intel_engine_get_busy_time(engine, &t[1]), de);
>   		preempt_enable();
> +		dt = ktime_sub(t[1], t[0]);
>   		if (100 * de < 95 * dt || 95 * de > 100 * dt) {
>   			pr_err("%s: reported %lldns [%d%%] busyness while spinning [for %lldns]\n",
>   			       engine->name,
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 802837de1767..28bc5f13ae52 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -565,7 +565,10 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
>   			/* Do nothing */
>   		} else if (sample == I915_SAMPLE_BUSY &&
>   			   intel_engine_supports_stats(engine)) {
> -			val = ktime_to_ns(intel_engine_get_busy_time(engine));
> +			ktime_t unused;
> +
> +			val = ktime_to_ns(intel_engine_get_busy_time(engine,
> +								     &unused));
>   		} else {
>   			val = engine->pmu.sample[sample].cur;
>   		}
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index 06d18aae070b..9271aad7f779 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -2492,9 +2492,11 @@ static int perf_series_engines(void *arg)
>   			intel_engine_pm_get(p->engine);
>   
>   			if (intel_engine_supports_stats(p->engine))
> -				p->busy = intel_engine_get_busy_time(p->engine) + 1;
> +				p->busy = intel_engine_get_busy_time(p->engine,
> +								     &p->time) + 1;
> +			else
> +				p->time = ktime_get();
>   			p->runtime = -intel_context_get_total_runtime_ns(ce);
> -			p->time = ktime_get();
>   		}
>   
>   		err = (*fn)(ps);
> @@ -2505,13 +2507,15 @@ static int perf_series_engines(void *arg)
>   			struct perf_stats *p = &stats[idx];
>   			struct intel_context *ce = ps->ce[idx];
>   			int integer, decimal;
> -			u64 busy, dt;
> +			u64 busy, dt, now;
>   
> -			p->time = ktime_sub(ktime_get(), p->time);
> -			if (p->busy) {
> -				p->busy = ktime_sub(intel_engine_get_busy_time(p->engine),
> +			if (p->busy)
> +				p->busy = ktime_sub(intel_engine_get_busy_time(p->engine,
> +									       &now),
>   						    p->busy - 1);
> -			}
> +			else
> +				now = ktime_get();
> +			p->time = ktime_sub(now, p->time);
>   
>   			err = switch_to_kernel_sync(ce, err);
>   			p->runtime += intel_context_get_total_runtime_ns(ce);
> @@ -2571,13 +2575,14 @@ static int p_sync0(void *arg)
>   		return err;
>   	}
>   
> -	busy = false;
>   	if (intel_engine_supports_stats(engine)) {
> -		p->busy = intel_engine_get_busy_time(engine);
> +		p->busy = intel_engine_get_busy_time(engine, &p->time);
>   		busy = true;
> +	} else {
> +		p->time = ktime_get();
> +		busy = false;
>   	}
>   
> -	p->time = ktime_get();
>   	count = 0;
>   	do {
>   		struct i915_request *rq;
> @@ -2600,11 +2605,15 @@ static int p_sync0(void *arg)
>   
>   		count++;
>   	} while (!__igt_timeout(end_time, NULL));
> -	p->time = ktime_sub(ktime_get(), p->time);
>   
>   	if (busy) {
> -		p->busy = ktime_sub(intel_engine_get_busy_time(engine),
> +		ktime_t now;
> +
> +		p->busy = ktime_sub(intel_engine_get_busy_time(engine, &now),
>   				    p->busy);
> +		p->time = ktime_sub(now, p->time);
> +	} else {
> +		p->time = ktime_sub(ktime_get(), p->time);
>   	}
>   
>   	err = switch_to_kernel_sync(ce, err);
> @@ -2637,13 +2646,14 @@ static int p_sync1(void *arg)
>   		return err;
>   	}
>   
> -	busy = false;
>   	if (intel_engine_supports_stats(engine)) {
> -		p->busy = intel_engine_get_busy_time(engine);
> +		p->busy = intel_engine_get_busy_time(engine, &p->time);
>   		busy = true;
> +	} else {
> +		p->time = ktime_get();
> +		busy = false;
>   	}
>   
> -	p->time = ktime_get();
>   	count = 0;
>   	do {
>   		struct i915_request *rq;
> @@ -2668,11 +2678,15 @@ static int p_sync1(void *arg)
>   		count++;
>   	} while (!__igt_timeout(end_time, NULL));
>   	i915_request_put(prev);
> -	p->time = ktime_sub(ktime_get(), p->time);
>   
>   	if (busy) {
> -		p->busy = ktime_sub(intel_engine_get_busy_time(engine),
> +		ktime_t now;
> +
> +		p->busy = ktime_sub(intel_engine_get_busy_time(engine, &now),
>   				    p->busy);
> +		p->time = ktime_sub(now, p->time);
> +	} else {
> +		p->time = ktime_sub(ktime_get(), p->time);
>   	}
>   
>   	err = switch_to_kernel_sync(ce, err);
> @@ -2704,14 +2718,15 @@ static int p_many(void *arg)
>   		return err;
>   	}
>   
> -	busy = false;
>   	if (intel_engine_supports_stats(engine)) {
> -		p->busy = intel_engine_get_busy_time(engine);
> +		p->busy = intel_engine_get_busy_time(engine, &p->time);
>   		busy = true;
> +	} else {
> +		p->time = ktime_get();
> +		busy = false;
>   	}
>   
>   	count = 0;
> -	p->time = ktime_get();
>   	do {
>   		struct i915_request *rq;
>   
> @@ -2724,11 +2739,15 @@ static int p_many(void *arg)
>   		i915_request_add(rq);
>   		count++;
>   	} while (!__igt_timeout(end_time, NULL));
> -	p->time = ktime_sub(ktime_get(), p->time);
>   
>   	if (busy) {
> -		p->busy = ktime_sub(intel_engine_get_busy_time(engine),
> +		ktime_t now;
> +
> +		p->busy = ktime_sub(intel_engine_get_busy_time(engine, &now),
>   				    p->busy);
> +		p->time = ktime_sub(now, p->time);
> +	} else {
> +		p->time = ktime_sub(ktime_get(), p->time);
>   	}
>   
>   	err = switch_to_kernel_sync(ce, err);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
