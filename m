Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D791319732
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 00:54:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD476EE76;
	Thu, 11 Feb 2021 23:54:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E27906EE76
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 23:54:12 +0000 (UTC)
IronPort-SDR: JfQl540+tQy8vbl7EmRtMXqG2qPvYNH8lejm9xl5nE17fmURmzew5+2Gi2evGuI2FArIjnI1TW
 8kzq5o0HEUcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="267180621"
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; d="scan'208";a="267180621"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 15:54:12 -0800
IronPort-SDR: DwfxDzACBUxPm6qffHz1X2pyieOwg5G2EFE8idBFZKRojRbjVg7pLu+vfngkdbYPdwKinATPFO
 sWCN6OlKN8bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; d="scan'208";a="587261256"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga006.fm.intel.com with ESMTP; 11 Feb 2021 15:54:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Feb 2021 15:54:12 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Feb 2021 15:54:11 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.002;
 Thu, 11 Feb 2021 15:54:11 -0800
From: "Tang, CQ" <cq.tang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v5] drm/i915/gt: Ratelimit heartbeat completion probing
Thread-Index: AQHXAMucsp1qRmbVN0iqAMQKyNVbcqpToKIw
Date: Thu, 11 Feb 2021 23:54:10 +0000
Message-ID: <c359b941f6a1400d986f901aab689ff6@intel.com>
References: <20210205104905.31414-1-chris@chris-wilson.co.uk>
 <20210211231405.7386-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210211231405.7386-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/gt: Ratelimit heartbeat
 completion probing
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Do you have the patch that can apply to DII?

--CQ

> -----Original Message-----
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: Thursday, February 11, 2021 3:14 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Chris Wilson <chris@chris-wilson.co.uk>; Tang, CQ <cq.tang@intel.com>
> Subject: [PATCH v5] drm/i915/gt: Ratelimit heartbeat completion probing
> 
> The heartbeat runs through a few phases that we expect to complete within
> a certain number of heartbeat intervals. First we must submit the heartbeat
> to the queue, and if the queue is occupied it may take a couple of intervals
> before the heartbeat preempts the workload and is submitted to HW. Once
> running on HW, completion is not instantaneous as it may have to first reset
> the current workload before it itself runs through the empty request and
> signals completion. As such, we know that the heartbeat must take at least
> the preempt reset timeout and before we have had a chance to reset the
> engine, we do not want to issue a global reset ourselves (simply so that we
> only try to do one reset at a time and not confuse ourselves by resetting
> twice and hitting an innocent.)
> 
> So by taking into consideration that once running the request must take a
> finite amount of time, we can delay the final completion check to
> accommodate that and avoid checking too early (before we've had a chance
> to handle any engine resets required).
> 
> v3: Now with more tracking for selftests and detection of false/unexpected
> hang reports.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2853
> Suggested-by: CQ Tang <cq.tang@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  .../gpu/drm/i915/gt/intel_engine_heartbeat.c  | 92 +++++++++++++++---
> drivers/gpu/drm/i915/gt/intel_engine_types.h  |  7 ++
>  .../drm/i915/gt/selftest_engine_heartbeat.c   | 93 ++++++++++++-------
>  drivers/gpu/drm/i915/gt/selftest_execlists.c  |  5 +-
>  4 files changed, 148 insertions(+), 49 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> index 0b062fad1837..e14f9eab5779 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> @@ -20,6 +20,18 @@
>   * issue a reset -- in the hope that restores progress.
>   */
> 
> +#define HEARTBEAT_COMPLETION 50u /* milliseconds */
> +
> +static long completion_timeout(const struct intel_engine_cs *engine) {
> +	long timeout = HEARTBEAT_COMPLETION;
> +
> +	if (intel_engine_has_preempt_reset(engine))
> +		timeout += READ_ONCE(engine-
> >props.preempt_timeout_ms);
> +
> +	return msecs_to_jiffies(timeout);
> +}
> +
>  static bool next_heartbeat(struct intel_engine_cs *engine)  {
>  	long delay;
> @@ -29,6 +41,26 @@ static bool next_heartbeat(struct intel_engine_cs
> *engine)
>  		return false;
> 
>  	delay = msecs_to_jiffies_timeout(delay);
> +
> +	/*
> +	 * Once we submit a heartbeat to the HW, we know that it will take
> +	 * at least a certain amount of time to complete. On a hanging system
> +	 * it will first have to wait for the preempt reset timeout, and
> +	 * then it will take some time for the reset to resume with the
> +	 * heartbeat and for it to complete. So once we have submitted the
> +	 * heartbeat to HW, we can wait a while longer before declaring the
> +	 * engine stuck and forcing a reset ourselves. If we do a reset
> +	 * and the engine is also doing a reset, it is possible that we
> +	 * reset the engine twice, harming an innocent.
> +	 *
> +	 * Before we have sumitted the heartbeat, we do not want to
> change
> +	 * the interval as we want to promote the heartbeat and trigger
> +	 * preemption in a deterministic time frame.
> +	 */
> +	if (engine->heartbeat.systole &&
> +	    i915_request_is_active(engine->heartbeat.systole))
> +		delay = max(delay, completion_timeout(engine));
> +
>  	if (delay >= HZ)
>  		delay = round_jiffies_up_relative(delay);
>  	mod_delayed_work(system_highpri_wq, &engine->heartbeat.work,
> delay + 1); @@ -48,12 +80,39 @@ heartbeat_create(struct intel_context *ce,
> gfp_t gfp)
>  	return rq;
>  }
> 
> +static void
> +untrack_heartbeat(struct intel_engine_cs *engine) {
> +	struct i915_request *rq;
> +
> +	rq = engine->heartbeat.systole;
> +	if (!rq)
> +		return;
> +
> +	ENGINE_TRACE(engine, "heartbeat " RQ_FMT " completed\n",
> RQ_ARG(rq));
> +	I915_SELFTEST_ONLY(engine->heartbeat.completed++);
> +
> +	WRITE_ONCE(engine->heartbeat.systole, NULL);
> +	i915_request_put(rq);
> +}
> +
> +static void
> +track_heartbeat(struct intel_engine_cs *engine, struct i915_request
> +*rq) {
> +	ENGINE_TRACE(engine, "heartbeat " RQ_FMT " started\n",
> RQ_ARG(rq));
> +	I915_SELFTEST_ONLY(engine->heartbeat.submitted++);
> +
> +	WRITE_ONCE(engine->heartbeat.systole, i915_request_get(rq));
> +	if (!next_heartbeat(engine))
> +		untrack_heartbeat(engine);
> +}
> +
>  static void idle_pulse(struct intel_engine_cs *engine, struct i915_request
> *rq)  {
>  	engine->wakeref_serial = READ_ONCE(engine->serial) + 1;
>  	i915_request_add_active_barriers(rq);
>  	if (!engine->heartbeat.systole &&
> intel_engine_has_heartbeat(engine))
> -		engine->heartbeat.systole = i915_request_get(rq);
> +		track_heartbeat(engine, rq);
>  }
> 
>  static void heartbeat_commit(struct i915_request *rq, @@ -106,13 +165,8
> @@ static void heartbeat(struct work_struct *wrk)
>  	intel_engine_flush_scheduler(engine);
> 
>  	rq = engine->heartbeat.systole;
> -	if (rq && i915_request_completed(rq)) {
> -		ENGINE_TRACE(engine,
> -			     "heartbeat " RQ_FMT "completed\n",
> -			     RQ_ARG(rq));
> -		i915_request_put(rq);
> -		engine->heartbeat.systole = NULL;
> -	}
> +	if (rq && i915_request_completed(rq))
> +		untrack_heartbeat(engine);
> 
>  	if (!intel_engine_pm_get_if_awake(engine))
>  		return;
> @@ -120,9 +174,15 @@ static void heartbeat(struct work_struct *wrk)
>  	if (intel_gt_is_wedged(engine->gt))
>  		goto out;
> 
> +	I915_SELFTEST_ONLY(engine->heartbeat.ticks++);
> +
>  	if (engine->heartbeat.systole) {
>  		long delay = READ_ONCE(engine-
> >props.heartbeat_interval_ms);
> 
> +		if (rq->sched.attr.priority == I915_PRIORITY_BARRIER &&
> +		    i915_request_is_active(rq))
> +			delay += completion_timeout(engine);
> +
>  		/* Safeguard against too-fast worker invocations */
>  		if (!time_after(jiffies,
>  				rq->emitted_jiffies +
> msecs_to_jiffies(delay))) @@ -152,8 +212,10 @@ static void heartbeat(struct
> work_struct *wrk)
>  			attr.priority = 0;
>  			if (rq->sched.attr.priority >= attr.priority)
>  				attr.priority = I915_PRIORITY_HEARTBEAT;
> -			if (rq->sched.attr.priority >= attr.priority)
> +			if (rq->sched.attr.priority >= attr.priority) {
> +				I915_SELFTEST_ONLY(engine-
> >heartbeat.barrier++);
>  				attr.priority = I915_PRIORITY_BARRIER;
> +			}
> 
>  			ENGINE_TRACE(engine,
>  				     "bumping heartbeat " RQ_FMT "
> prio:%d\n", @@ -166,6 +228,7 @@ static void heartbeat(struct work_struct
> *wrk)
>  			ENGINE_TRACE(engine,
>  				     "heartbeat " RQ_FMT " stuck\n",
>  				     RQ_ARG(rq));
> +			I915_SELFTEST_ONLY(engine->heartbeat.reset++);
> 
>  			if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
>  				show_heartbeat(rq, engine);
> @@ -180,6 +243,11 @@ static void heartbeat(struct work_struct *wrk)
>  		goto out;
>  	}
> 
> +	/* Just completed one heartbeat, wait a tick before the next */
> +	if (rq)
> +		goto out;
> +
> +	/* The engine is parking. We can rest until the next user */
>  	serial = READ_ONCE(engine->serial);
>  	if (engine->wakeref_serial == serial)
>  		goto out;
> @@ -198,14 +266,14 @@ static void heartbeat(struct work_struct *wrk)
>  	if (IS_ERR(rq))
>  		goto unlock;
> 
> -	ENGINE_TRACE(engine, "heartbeat " RQ_FMT "started\n",
> RQ_ARG(rq));
>  	heartbeat_commit(rq, &attr);
> 
>  unlock:
>  	mutex_unlock(&ce->timeline->mutex);
>  out:
> +	intel_engine_flush_scheduler(engine);
>  	if (!engine->i915->params.enable_hangcheck
> || !next_heartbeat(engine))
> -		i915_request_put(fetch_and_zero(&engine-
> >heartbeat.systole));
> +		untrack_heartbeat(engine);
>  	intel_engine_pm_put(engine);
>  }
> 
> @@ -220,7 +288,7 @@ void intel_engine_unpark_heartbeat(struct
> intel_engine_cs *engine)  void intel_engine_park_heartbeat(struct
> intel_engine_cs *engine)  {
>  	if (cancel_delayed_work(&engine->heartbeat.work))
> -		i915_request_put(fetch_and_zero(&engine-
> >heartbeat.systole));
> +		untrack_heartbeat(engine);
>  }
> 
>  void intel_engine_init_heartbeat(struct intel_engine_cs *engine) diff --git
> a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 7efa6290cc3e..1e151d550bb5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -323,6 +323,13 @@ struct intel_engine_cs {
>  		struct delayed_work work;
>  		struct i915_request *systole;
>  		unsigned long blocked;
> +		I915_SELFTEST_DECLARE(struct {
> +			unsigned long submitted;
> +			unsigned long completed;
> +			unsigned long barrier;
> +			unsigned long reset;
> +			unsigned long ticks;
> +		};)
>  	} heartbeat;
> 
>  	unsigned long serial;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> index b2c369317bf1..b74459561fda 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> @@ -202,47 +202,58 @@ static int cmp_u32(const void *_a, const void *_b)
> 
>  static int __live_heartbeat_fast(struct intel_engine_cs *engine)  {
> -	const unsigned int error_threshold = max(20000u,
> jiffies_to_usecs(6));
> -	struct intel_context *ce;
> -	struct i915_request *rq;
> -	ktime_t t0, t1;
> +	const unsigned int error_threshold =
> +		max_t(unsigned int,
> +		      3 * completion_timeout(engine) * 1000,
> +		      jiffies_to_usecs(6));
> +	struct intel_context *ce = engine->kernel_context;
> +	unsigned long resets;
>  	u32 times[5];
>  	int err;
>  	int i;
> 
> -	ce = intel_context_create(engine);
> -	if (IS_ERR(ce))
> -		return PTR_ERR(ce);
> -
>  	intel_engine_pm_get(engine);
> 
>  	err = intel_engine_set_heartbeat(engine, 1);
>  	if (err)
>  		goto err_pm;
> 
> +	flush_delayed_work(&engine->heartbeat.work);
> +	while (engine->heartbeat.systole)
> +		intel_engine_park_heartbeat(engine);
> +
> +	resets = engine->heartbeat.reset;
>  	for (i = 0; i < ARRAY_SIZE(times); i++) {
> -		do {
> -			/* Manufacture a tick */
> -			intel_engine_park_heartbeat(engine);
> -			GEM_BUG_ON(engine->heartbeat.systole);
> -			engine->serial++; /*  pretend we are not idle! */
> -			intel_engine_unpark_heartbeat(engine);
> +		struct i915_sched_attr attr = { .priority =
> I915_PRIORITY_MIN };
> +		unsigned long submits = engine->heartbeat.submitted;
> +		unsigned long completed = engine->heartbeat.completed;
> +		struct i915_request *rq;
> +		ktime_t t0, t1;
> 
> -			flush_delayed_work(&engine->heartbeat.work);
> -			if (!delayed_work_pending(&engine-
> >heartbeat.work)) {
> -				pr_err("%s: heartbeat %d did not start\n",
> -				       engine->name, i);
> -				err = -EINVAL;
> -				goto err_pm;
> -			}
> +		GEM_BUG_ON(READ_ONCE(engine->heartbeat.systole));
> 
> -			rcu_read_lock();
> -			rq = READ_ONCE(engine->heartbeat.systole);
> -			if (rq)
> -				rq = i915_request_get_rcu(rq);
> -			rcu_read_unlock();
> -		} while (!rq);
> +		/* Manufacture a tick */
> +		mutex_lock(&ce->timeline->mutex);
> +		rq = heartbeat_create(ce, GFP_KERNEL);
> +		if (!IS_ERR(rq)) {
> +			i915_request_get(rq);
> +			heartbeat_commit(rq, &attr);
> +		}
> +		mutex_unlock(&ce->timeline->mutex);
> +		if (IS_ERR(rq)) {
> +			err = PTR_ERR(rq);
> +			goto err_reset;
> +		}
> 
> +		if (engine->heartbeat.submitted != submits + 1) {
> +			GEM_TRACE_ERR("Heartbeat was not tracked!\n");
> +			GEM_TRACE_DUMP();
> +			i915_request_put(rq);
> +			err = -EIO;
> +			goto err_reset;
> +		}
> +
> +		/* Time how long before the heartbeat monitor checks */
>  		t0 = ktime_get();
>  		while (rq == READ_ONCE(engine->heartbeat.systole))
>  			yield(); /* work is on the local cpu! */ @@ -250,6
> +261,20 @@ static int __live_heartbeat_fast(struct intel_engine_cs *engine)
> 
>  		i915_request_put(rq);
>  		times[i] = ktime_us_delta(t1, t0);
> +
> +		if (engine->heartbeat.reset != resets) {
> +			GEM_TRACE_ERR("False reset from a fast
> heartbeat!\n");
> +			GEM_TRACE_DUMP();
> +			err = -EIO;
> +			goto err_reset;
> +		}
> +
> +		if (engine->heartbeat.completed != completed + 1) {
> +			GEM_TRACE_ERR("Completed heartbeat was not
> recorded!\n");
> +			GEM_TRACE_DUMP();
> +			err = -EIO;
> +			goto err_reset;
> +		}
>  	}
> 
>  	sort(times, ARRAY_SIZE(times), sizeof(times[0]), cmp_u32, NULL);
> @@ -275,10 +300,10 @@ static int __live_heartbeat_fast(struct
> intel_engine_cs *engine)
>  		err = -EINVAL;
>  	}
> 
> +err_reset:
>  	reset_heartbeat(engine);
>  err_pm:
>  	intel_engine_pm_put(engine);
> -	intel_context_put(ce);
>  	return err;
>  }
> 
> @@ -308,20 +333,16 @@ static int __live_heartbeat_off(struct
> intel_engine_cs *engine)
> 
>  	intel_engine_pm_get(engine);
> 
> +	/* Kick once, so that we change an active heartbeat */
>  	engine->serial++;
> -	flush_delayed_work(&engine->heartbeat.work);
> -	if (!delayed_work_pending(&engine->heartbeat.work)) {
> -		pr_err("%s: heartbeat not running\n",
> -		       engine->name);
> -		err = -EINVAL;
> -		goto err_pm;
> -	}
> +	intel_engine_unpark_heartbeat(engine);
> 
>  	err = intel_engine_set_heartbeat(engine, 0);
>  	if (err)
>  		goto err_pm;
> 
> -	engine->serial++;
> +	/* The next heartbeat work should cancel the heartbeat */
> +	engine->serial++; /* pretend the engine is still active */
>  	flush_delayed_work(&engine->heartbeat.work);
>  	if (delayed_work_pending(&engine->heartbeat.work)) {
>  		pr_err("%s: heartbeat still running\n", diff --git
> a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> index 5c8a6ccdf024..660240550097 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> @@ -2325,13 +2325,16 @@ static int __cancel_fail(struct
> live_preempt_cancel *arg)
>  	del_timer_sync(&engine->execlists.preempt);
>  	intel_engine_flush_scheduler(engine);
> 
> +	engine->props.preempt_timeout_ms = 0;
>  	cancel_reset_timeout(engine);
> 
> -	/* after failure, require heartbeats to reset device */
> +	/* after failure, require fast heartbeats to reset device */
>  	intel_engine_set_heartbeat(engine, 1);
>  	err = wait_for_reset(engine, rq, HZ / 2);
>  	intel_engine_set_heartbeat(engine,
>  				   engine->defaults.heartbeat_interval_ms);
> +
> +	engine->props.preempt_timeout_ms =
> +engine->defaults.preempt_timeout_ms;
>  	if (err) {
>  		pr_err("Cancelled inflight0 request did not reset\n");
>  		goto out;
> --
> 2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
