Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FD11831A5
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 14:34:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2B946EABF;
	Thu, 12 Mar 2020 13:34:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BF3689725
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 13:34:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 06:34:54 -0700
X-IronPort-AV: E=Sophos;i="5.70,545,1574150400"; d="scan'208";a="246368875"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 12 Mar 2020 06:34:52 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200311104931.15152-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3fac33c3-f9c3-72a2-ce87-a34346c7d8bf@linux.intel.com>
Date: Thu, 12 Mar 2020 13:34:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200311104931.15152-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Add request throughput
 measurement to perf
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


On 11/03/2020 10:49, Chris Wilson wrote:
> Under ideal circumstances, the driver should be able to keep the GPU
> fully saturated with work. Measure how close to ideal we get under the
> harshest of conditions with no user payload.
> 
> v2: Also measure throughput using only one thread.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../drm/i915/selftests/i915_perf_selftests.h  |   1 +
>   drivers/gpu/drm/i915/selftests/i915_request.c | 589 +++++++++++++++++-
>   2 files changed, 589 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h b/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h
> index 3bf7f53e9924..d8da142985eb 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h
> +++ b/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h
> @@ -16,5 +16,6 @@
>    * Tests are executed in order by igt/i915_selftest
>    */
>   selftest(engine_cs, intel_engine_cs_perf_selftests)
> +selftest(request, i915_request_perf_selftests)
>   selftest(blt, i915_gem_object_blt_perf_selftests)
>   selftest(region, intel_memory_region_perf_selftests)
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index f89d9c42f1fa..274b9462a7c9 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -23,6 +23,7 @@
>    */
>   
>   #include <linux/prime_numbers.h>
> +#include <linux/pm_qos.h>
>   
>   #include "gem/i915_gem_pm.h"
>   #include "gem/selftests/mock_context.h"
> @@ -1233,7 +1234,7 @@ static int live_parallel_engines(void *arg)
>   		struct igt_live_test t;
>   		unsigned int idx;
>   
> -		snprintf(name, sizeof(name), "%pS", fn);
> +		snprintf(name, sizeof(name), "%ps", *fn);
>   		err = igt_live_test_begin(&t, i915, __func__, name);
>   		if (err)
>   			break;
> @@ -1470,3 +1471,589 @@ int i915_request_live_selftests(struct drm_i915_private *i915)
>   
>   	return i915_subtests(tests, i915);
>   }
> +
> +static int switch_to_kernel_sync(struct intel_context *ce, int err)
> +{
> +	struct i915_request *rq;
> +	struct dma_fence *fence;
> +
> +	rq = intel_engine_create_kernel_request(ce->engine);
> +	if (IS_ERR(rq))
> +		return PTR_ERR(rq);
> +
> +	fence = i915_active_fence_get(&ce->timeline->last_request);
> +	if (fence) {
> +		i915_request_await_dma_fence(rq, fence);
> +		dma_fence_put(fence);
> +	}
> +
> +	rq = i915_request_get(rq);
> +	i915_request_add(rq);
> +	if (i915_request_wait(rq, 0, HZ / 2) < 0 && !err)
> +		err = -ETIME;
> +	i915_request_put(rq);
> +
> +	while (!err && !intel_engine_is_idle(ce->engine))
> +		intel_engine_flush_submission(ce->engine);
> +
> +	return err;
> +}
> +
> +struct perf_stats {
> +	struct intel_engine_cs *engine;
> +	unsigned long count;
> +	ktime_t time;
> +	ktime_t busy;
> +	u64 runtime;
> +};
> +
> +struct perf_series {
> +	struct drm_i915_private *i915;
> +	unsigned int nengines;
> +	struct intel_context *ce[];
> +};
> +
> +static int s_sync0(void *arg)
> +{
> +	struct perf_series *ps = arg;
> +	IGT_TIMEOUT(end_time);
> +	unsigned int idx = 0;
> +	int err = 0;
> +
> +	GEM_BUG_ON(!ps->nengines);
> +	do {
> +		struct i915_request *rq;
> +
> +		rq = i915_request_create(ps->ce[idx]);
> +		if (IS_ERR(rq)) {
> +			err = PTR_ERR(rq);
> +			break;
> +		}
> +
> +		i915_request_get(rq);
> +		i915_request_add(rq);
> +
> +		if (i915_request_wait(rq, 0, HZ / 5) < 0)
> +			err = -ETIME;
> +		i915_request_put(rq);
> +		if (err)
> +			break;
> +
> +		if (++idx == ps->nengines)
> +			idx = 0;
> +	} while (!__igt_timeout(end_time, NULL));
> +
> +	return err;
> +}
> +
> +static int s_sync1(void *arg)
> +{
> +	struct perf_series *ps = arg;
> +	struct i915_request *prev = NULL;
> +	IGT_TIMEOUT(end_time);
> +	unsigned int idx = 0;
> +	int err = 0;
> +
> +	GEM_BUG_ON(!ps->nengines);
> +	do {
> +		struct i915_request *rq;
> +
> +		rq = i915_request_create(ps->ce[idx]);
> +		if (IS_ERR(rq)) {
> +			err = PTR_ERR(rq);
> +			break;
> +		}
> +
> +		i915_request_get(rq);
> +		i915_request_add(rq);
> +
> +		if (prev && i915_request_wait(prev, 0, HZ / 5) < 0)
> +			err = -ETIME;
> +		i915_request_put(prev);
> +		prev = rq;
> +		if (err)
> +			break;
> +
> +		if (++idx == ps->nengines)
> +			idx = 0;
> +	} while (!__igt_timeout(end_time, NULL));
> +	i915_request_put(prev);
> +
> +	return err;
> +}
> +
> +static int s_many(void *arg)
> +{
> +	struct perf_series *ps = arg;
> +	IGT_TIMEOUT(end_time);
> +	unsigned int idx = 0;
> +
> +	GEM_BUG_ON(!ps->nengines);
> +	do {
> +		struct i915_request *rq;
> +
> +		rq = i915_request_create(ps->ce[idx]);
> +		if (IS_ERR(rq))
> +			return PTR_ERR(rq);
> +
> +		i915_request_add(rq);
> +
> +		if (++idx == ps->nengines)
> +			idx = 0;
> +	} while (!__igt_timeout(end_time, NULL));
> +
> +	return 0;
> +}
> +
> +static int perf_series_engines(void *arg)
> +{
> +	struct drm_i915_private *i915 = arg;
> +	static int (* const func[])(void *arg) = {
> +		s_sync0,
> +		s_sync1,
> +		s_many,
> +		NULL,
> +	};
> +	const unsigned int nengines = num_uabi_engines(i915);
> +	struct intel_engine_cs *engine;
> +	int (* const *fn)(void *arg);
> +	struct pm_qos_request *qos;
> +	struct perf_stats *stats;
> +	struct perf_series *ps;
> +	unsigned int idx;
> +	int err = 0;
> +
> +	stats = kcalloc(nengines, sizeof(*stats), GFP_KERNEL);
> +	if (!stats)
> +		return -ENOMEM;
> +
> +	qos = kzalloc(sizeof(*qos), GFP_KERNEL);
> +	if (qos)
> +		pm_qos_add_request(qos, PM_QOS_CPU_DMA_LATENCY, 0);
> +
> +	ps = kzalloc(struct_size(ps, ce, nengines), GFP_KERNEL);
> +	if (!ps) {
> +		kfree(stats);
> +		return -ENOMEM;

Leaks qos. Maybe just fail if failed to allocate qos both for simplicity 
and reproducability.

> +	}
> +
> +	ps->i915 = i915;
> +	ps->nengines = nengines;
> +
> +	idx = 0;
> +	for_each_uabi_engine(engine, i915) {
> +		struct intel_context *ce;
> +
> +		ce = intel_context_create(engine);
> +		if (IS_ERR(ce))
> +			goto out;
> +
> +		err = intel_context_pin(ce);
> +		if (err) {
> +			intel_context_put(ce);
> +			goto out;
> +		}
> +
> +		ps->ce[idx++] = ce;
> +	}
> +	GEM_BUG_ON(idx != ps->nengines);

After idx++ would be safer.

> +
> +	for (fn = func; *fn && !err; fn++) {
> +		char name[KSYM_NAME_LEN];
> +		struct igt_live_test t;
> +
> +		snprintf(name, sizeof(name), "%ps", *fn);
> +		err = igt_live_test_begin(&t, i915, __func__, name);
> +		if (err)
> +			break;
> +
> +		for (idx = 0; idx < nengines; idx++) {
> +			struct perf_stats *p =
> +				memset(&stats[idx], 0, sizeof(stats[idx]));
> +			struct intel_context *ce = ps->ce[idx];
> +
> +			p->engine = ps->ce[idx]->engine;
> +			intel_engine_pm_get(p->engine);
> +
> +			if (intel_engine_supports_stats(p->engine) &&
> +			    !intel_enable_engine_stats(p->engine))
> +				p->busy = intel_engine_get_busy_time(p->engine) + 1;
> +			p->runtime = -intel_context_get_total_runtime_ns(ce);
> +			p->time = ktime_get();
> +		}
> +
> +		err = (*fn)(ps);
> +		if (igt_live_test_end(&t))
> +			err = -EIO;
> +
> +		for (idx = 0; idx < nengines; idx++) {
> +			struct perf_stats *p = &stats[idx];
> +			struct intel_context *ce = ps->ce[idx];
> +			int integer, decimal;
> +			u64 busy, dt;
> +
> +			p->time = ktime_sub(ktime_get(), p->time);
> +			if (p->busy) {
> +				p->busy = ktime_sub(intel_engine_get_busy_time(p->engine),
> +						    p->busy - 1);
> +				intel_disable_engine_stats(p->engine);
> +			}
> +
> +			err = switch_to_kernel_sync(ce, err);
> +			p->runtime += intel_context_get_total_runtime_ns(ce);
> +			intel_engine_pm_put(p->engine);
> +
> +			busy = 100 * ktime_to_ns(p->busy);
> +			dt = ktime_to_ns(p->time);
> +			if (dt) {
> +				integer = div64_u64(busy, dt);
> +				busy -= integer * dt;
> +				decimal = div64_u64(100 * busy, dt);
> +			} else {
> +				integer = 0;
> +				decimal = 0;
> +			}
> +
> +			pr_info("%s %5s: { busy:%d.%02d%%, runtime:%lldms, walltime:%lldms }\n",
> +				name, p->engine->name, integer, decimal,
> +				div_u64(p->runtime, 1000 * 1000),
> +				div_u64(ktime_to_ns(p->time), 1000 * 1000));
> +		}
> +	}
> +
> +out:
> +	for (idx = 0; idx < nengines; idx++) {
> +		if (IS_ERR_OR_NULL(ps->ce[idx]))
> +			break;
> +
> +		intel_context_unpin(ps->ce[idx]);
> +		intel_context_put(ps->ce[idx]);
> +	}
> +	kfree(ps);
> +
> +	if (qos) {
> +		pm_qos_remove_request(qos);
> +		kfree(qos);
> +	}
> +	kfree(stats);
> +	return err;
> +}
> +
> +static int p_sync0(void *arg)
> +{
> +	struct perf_stats *p = arg;
> +	struct intel_engine_cs *engine = p->engine;
> +	struct intel_context *ce;
> +	IGT_TIMEOUT(end_time);
> +	unsigned long count;
> +	bool busy;
> +	int err = 0;
> +
> +	ce = intel_context_create(engine);
> +	if (IS_ERR(ce))
> +		return PTR_ERR(ce);
> +
> +	err = intel_context_pin(ce);
> +	if (err) {
> +		intel_context_put(ce);
> +		return err;
> +	}
> +
> +	busy = false;
> +	if (intel_engine_supports_stats(engine) &&
> +	    !intel_enable_engine_stats(engine)) {
> +		p->busy = intel_engine_get_busy_time(engine);
> +		busy = true;
> +	}
> +
> +	p->time = ktime_get();
> +	count = 0;
> +	do {
> +		struct i915_request *rq;
> +
> +		rq = i915_request_create(ce);
> +		if (IS_ERR(rq)) {
> +			err = PTR_ERR(rq);
> +			break;
> +		}
> +
> +		i915_request_get(rq);
> +		i915_request_add(rq);
> +
> +		err = 0;
> +		if (i915_request_wait(rq, 0, HZ / 5) < 0)
> +			err = -ETIME;
> +		i915_request_put(rq);
> +		if (err)
> +			break;
> +
> +		count++;
> +	} while (!__igt_timeout(end_time, NULL));

Couldn't you use s_sync0 (etc) for the test bodies here?

> +	p->time = ktime_sub(ktime_get(), p->time);
> +
> +	if (busy) {
> +		p->busy = ktime_sub(intel_engine_get_busy_time(engine),
> +				    p->busy);
> +		intel_disable_engine_stats(engine);
> +	}
> +
> +	err = switch_to_kernel_sync(ce, err);
> +	p->runtime = intel_context_get_total_runtime_ns(ce);
> +	p->count = count;
> +
> +	intel_context_unpin(ce);
> +	intel_context_put(ce);
> +	return err;
> +}
> +
> +static int p_sync1(void *arg)
> +{
> +	struct perf_stats *p = arg;
> +	struct intel_engine_cs *engine = p->engine;
> +	struct i915_request *prev = NULL;
> +	struct intel_context *ce;
> +	IGT_TIMEOUT(end_time);
> +	unsigned long count;
> +	bool busy;
> +	int err = 0;
> +
> +	ce = intel_context_create(engine);
> +	if (IS_ERR(ce))
> +		return PTR_ERR(ce);
> +
> +	err = intel_context_pin(ce);
> +	if (err) {
> +		intel_context_put(ce);
> +		return err;
> +	}
> +
> +	busy = false;
> +	if (intel_engine_supports_stats(engine) &&
> +	    !intel_enable_engine_stats(engine)) {
> +		p->busy = intel_engine_get_busy_time(engine);
> +		busy = true;
> +	}
> +
> +	p->time = ktime_get();
> +	count = 0;
> +	do {
> +		struct i915_request *rq;
> +
> +		rq = i915_request_create(ce);
> +		if (IS_ERR(rq)) {
> +			err = PTR_ERR(rq);
> +			break;
> +		}
> +
> +		i915_request_get(rq);
> +		i915_request_add(rq);
> +
> +		err = 0;
> +		if (prev && i915_request_wait(prev, 0, HZ / 5) < 0)
> +			err = -ETIME;
> +		i915_request_put(prev);
> +		prev = rq;
> +		if (err)
> +			break;
> +
> +		count++;
> +	} while (!__igt_timeout(end_time, NULL));
> +	i915_request_put(prev);
> +	p->time = ktime_sub(ktime_get(), p->time);
> +
> +	if (busy) {
> +		p->busy = ktime_sub(intel_engine_get_busy_time(engine),
> +				    p->busy);
> +		intel_disable_engine_stats(engine);
> +	}
> +
> +	err = switch_to_kernel_sync(ce, err);
> +	p->runtime = intel_context_get_total_runtime_ns(ce);
> +	p->count = count;
> +
> +	intel_context_unpin(ce);
> +	intel_context_put(ce);

Setup and teardown code is also common in all p_ tests.

> +	return err;
> +}
> +
> +static int p_many(void *arg)
> +{
> +	struct perf_stats *p = arg;
> +	struct intel_engine_cs *engine = p->engine;
> +	struct intel_context *ce;
> +	IGT_TIMEOUT(end_time);
> +	unsigned long count;
> +	int err = 0;
> +	bool busy;
> +
> +	ce = intel_context_create(engine);
> +	if (IS_ERR(ce))
> +		return PTR_ERR(ce);
> +
> +	err = intel_context_pin(ce);
> +	if (err) {
> +		intel_context_put(ce);
> +		return err;
> +	}
> +
> +	busy = false;
> +	if (intel_engine_supports_stats(engine) &&
> +	    !intel_enable_engine_stats(engine)) {
> +		p->busy = intel_engine_get_busy_time(engine);
> +		busy = true;
> +	}
> +
> +	count = 0;
> +	p->time = ktime_get();
> +	do {
> +		struct i915_request *rq;
> +
> +		rq = i915_request_create(ce);
> +		if (IS_ERR(rq)) {
> +			err = PTR_ERR(rq);
> +			break;
> +		}
> +
> +		i915_request_add(rq);
> +		count++;
> +	} while (!__igt_timeout(end_time, NULL));
> +	p->time = ktime_sub(ktime_get(), p->time);
> +
> +	if (busy) {
> +		p->busy = ktime_sub(intel_engine_get_busy_time(engine),
> +				    p->busy);
> +		intel_disable_engine_stats(engine);
> +	}
> +
> +	err = switch_to_kernel_sync(ce, err);
> +	p->runtime = intel_context_get_total_runtime_ns(ce);
> +	p->count = count;
> +
> +	intel_context_unpin(ce);
> +	intel_context_put(ce);
> +	return err;
> +}
> +
> +static int perf_parallel_engines(void *arg)
> +{
> +	struct drm_i915_private *i915 = arg;
> +	static int (* const func[])(void *arg) = {
> +		p_sync0,
> +		p_sync1,
> +		p_many,
> +		NULL,
> +	};
> +	const unsigned int nengines = num_uabi_engines(i915);
> +	struct intel_engine_cs *engine;
> +	int (* const *fn)(void *arg);
> +	struct pm_qos_request *qos;
> +	struct {
> +		struct perf_stats p;
> +		struct task_struct *tsk;
> +	} *engines;
> +	int err = 0;
> +
> +	engines = kcalloc(nengines, sizeof(*engines), GFP_KERNEL);
> +	if (!engines)
> +		return -ENOMEM;
> +
> +	qos = kzalloc(sizeof(*qos), GFP_KERNEL);
> +	if (qos)
> +		pm_qos_add_request(qos, PM_QOS_CPU_DMA_LATENCY, 0);
> +
> +	for (fn = func; *fn; fn++) {
> +		char name[KSYM_NAME_LEN];
> +		struct igt_live_test t;
> +		unsigned int idx;
> +
> +		snprintf(name, sizeof(name), "%ps", *fn);
> +		err = igt_live_test_begin(&t, i915, __func__, name);
> +		if (err)
> +			break;
> +
> +		atomic_set(&i915->selftest.counter, nengines);
> +
> +		idx = 0;
> +		for_each_uabi_engine(engine, i915) {
> +			intel_engine_pm_get(engine);
> +
> +			memset(&engines[idx].p, 0, sizeof(engines[idx].p));
> +			engines[idx].p.engine = engine;
> +
> +			engines[idx].tsk = kthread_run(*fn, &engines[idx].p,
> +						       "igt:%s", engine->name);
> +			if (IS_ERR(engines[idx].tsk)) {
> +				err = PTR_ERR(engines[idx].tsk);
> +				intel_engine_pm_put(engine);
> +				break;
> +			}
> +			get_task_struct(engines[idx++].tsk);
> +		}
> +
> +		yield(); /* start all threads before we kthread_stop() */
> +
> +		idx = 0;
> +		for_each_uabi_engine(engine, i915) {
> +			int status;
> +
> +			if (IS_ERR(engines[idx].tsk))
> +				break;
> +
> +			status = kthread_stop(engines[idx].tsk);
> +			if (status && !err)
> +				err = status;
> +
> +			intel_engine_pm_put(engine);
> +			put_task_struct(engines[idx++].tsk);
> +		}
> +
> +		if (igt_live_test_end(&t))
> +			err = -EIO;
> +		if (err)
> +			break;
> +
> +		idx = 0;
> +		for_each_uabi_engine(engine, i915) {
> +			struct perf_stats *p = &engines[idx].p;
> +			u64 busy = 100 * ktime_to_ns(p->busy);
> +			u64 dt = ktime_to_ns(p->time);
> +			int integer, decimal;
> +
> +			if (dt) {
> +				integer = div64_u64(busy, dt);
> +				busy -= integer * dt;
> +				decimal = div64_u64(100 * busy, dt);
> +			} else {
> +				integer = 0;
> +				decimal = 0;
> +			}

This could also go to common like perf_stats_to_integer(p, &i, &d).

> +
> +			GEM_BUG_ON(engine != p->engine);
> +			pr_info("%s %5s: { count:%lu, busy:%d.%02d%%, runtime:%lldms, walltime:%lldms }\n",
> +				name, engine->name, p->count, integer, decimal,
> +				div_u64(p->runtime, 1000 * 1000),
> +				div_u64(ktime_to_ns(p->time), 1000 * 1000));
> +			idx++;
> +		}
> +	}
> +
> +	if (qos) {
> +		pm_qos_remove_request(qos);
> +		kfree(qos);
> +	}
> +	kfree(engines);
> +	return err;
> +}
> +
> +int i915_request_perf_selftests(struct drm_i915_private *i915)
> +{
> +	static const struct i915_subtest tests[] = {
> +		SUBTEST(perf_series_engines),
> +		SUBTEST(perf_parallel_engines),
> +	};
> +
> +	if (intel_gt_is_wedged(&i915->gt))
> +		return 0;
> +
> +	return i915_subtests(tests, i915);
> +}
> 

Mostly okay, just a little bit too much copy & paste.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
