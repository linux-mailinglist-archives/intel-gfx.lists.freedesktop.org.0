Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2653C1B50D6
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 01:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA40589E86;
	Wed, 22 Apr 2020 23:23:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1799 seconds by postgrey-1.36 at gabe;
 Wed, 22 Apr 2020 23:23:43 UTC
Received: from 1.mo1.mail-out.ovh.net (1.mo1.mail-out.ovh.net [178.32.127.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4C4B89E86
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 23:23:43 +0000 (UTC)
Received: from player690.ha.ovh.net (unknown [10.108.57.245])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id 25B7D1BBEAF
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 00:45:33 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player690.ha.ovh.net (Postfix) with ESMTPSA id C8836118B3722;
 Wed, 22 Apr 2020 22:45:30 +0000 (UTC)
Date: Thu, 23 Apr 2020 01:45:29 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200422224529.GA444751@jack.zhora.eu>
References: <20200422073715.11770-1-chris@chris-wilson.co.uk>
 <20200422074203.9799-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422074203.9799-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 14487235579482456585
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrgeekgddutdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrieeltddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

[...]

> +static int s_many(void *arg)
> +{
> +	struct perf_series *ps = arg;

why do we need to go through void... all functions are taking a
perf_series structure.

> +	IGT_TIMEOUT(end_time);
> +	unsigned int idx = 0;
> +

[...]

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

how about err?

> +			p->runtime += intel_context_get_total_runtime_ns(ce);

assigning a negative value to an unsigned so that you can add it
later? looks nice but odd :)

It's easier to understand if we do

p->runtime = intel_context_get_total_runtime_ns(ce) - p->runtime;

if you like it, no need to change, though.

[...]

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

do we need a request_put as well?

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

[...]

> +		for_each_uabi_engine(engine, i915) {
> +			int status;
> +
> +			if (IS_ERR(engines[idx].tsk))
> +				break;

if we break here aren't we missing engine_pm_put and put_task?

Andi

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
> +	cpu_latency_qos_remove_request(&qos);
> +	kfree(engines);
> +	return err;
> +}
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
