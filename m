Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A6617F6E8
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 12:58:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E34F6E1BA;
	Tue, 10 Mar 2020 11:58:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A7226E1B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 11:58:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 04:58:28 -0700
X-IronPort-AV: E=Sophos;i="5.70,536,1574150400"; d="scan'208";a="353609554"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 10 Mar 2020 04:58:28 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
 <20200306133852.3420322-8-chris@chris-wilson.co.uk>
 <e5360a24-91e9-a873-5a9b-5b6e5cca59ac@linux.intel.com>
 <158383855988.16414.10338993219228723247@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <08d601d5-1583-61e4-113d-8208a17d3d0f@linux.intel.com>
Date: Tue, 10 Mar 2020 11:58:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158383855988.16414.10338993219228723247@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/17] drm/i915/selftests: Add request
 throughput measurement to perf
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


On 10/03/2020 11:09, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-03-10 10:38:21)
>>
>> On 06/03/2020 13:38, Chris Wilson wrote:
>>> +static int perf_many(void *arg)
>>> +{
>>> +     struct perf_parallel *p = arg;
>>> +     struct intel_engine_cs *engine = p->engine;
>>> +     struct intel_context *ce;
>>> +     IGT_TIMEOUT(end_time);
>>> +     unsigned long count;
>>> +     int err = 0;
>>> +     bool busy;
>>> +
>>> +     ce = intel_context_create(engine);
>>> +     if (IS_ERR(ce))
>>> +             return PTR_ERR(ce);
>>> +
>>> +     err = intel_context_pin(ce);
>>> +     if (err) {
>>> +             intel_context_put(ce);
>>> +             return err;
>>> +     }
>>> +
>>> +     busy = false;
>>> +     if (intel_engine_supports_stats(engine) &&
>>> +         !intel_enable_engine_stats(engine)) {
>>> +             p->busy = intel_engine_get_busy_time(engine);
>>> +             busy = true;
>>> +     }
>>> +
>>> +     count = 0;
>>> +     p->time = ktime_get();
>>> +     do {
>>> +             struct i915_request *rq;
>>> +
>>> +             rq = i915_request_create(ce);
>>> +             if (IS_ERR(rq)) {
>>> +                     err = PTR_ERR(rq);
>>> +                     break;
>>> +             }
>>> +
>>> +             i915_request_add(rq);
>>
>> Any concerns on ring size here and maybe managing the wait explicitly?
> 
> No concern, the intention is to flood the ring. If we are able to wait
> on the ring, we have succeeded in submitting faster than the engine can
> retire. (Which might be another issue for us to resolve, as it may be
> our own interrupt latency that is then the bottleneck.)
> 
> If we did a sync0, sync1, many; that could give us some more insight
> into the interrupt latency in comparison to engine latency.
> 
>>
>>> +             count++;
>>> +     } while (!__igt_timeout(end_time, NULL));
>>> +     p->time = ktime_sub(ktime_get(), p->time);
>>> +
>>> +     if (busy) {
>>> +             p->busy = ktime_sub(intel_engine_get_busy_time(engine),
>>> +                                 p->busy);
>>> +             intel_disable_engine_stats(engine);
>>> +     }
>>> +
>>> +     err = switch_to_kernel_sync(ce, err);
>>> +     p->runtime = intel_context_get_total_runtime_ns(ce);
>>> +     p->count = count;
>>> +
>>> +     intel_context_unpin(ce);
>>> +     intel_context_put(ce);
>>> +     return err;
>>> +}
>>> +
>>> +static int perf_parallel_engines(void *arg)
>>> +{
>>> +     struct drm_i915_private *i915 = arg;
>>> +     static int (* const func[])(void *arg) = {
>>> +             perf_sync,
>>> +             perf_many,
>>> +             NULL,
>>> +     };
>>> +     const unsigned int nengines = num_uabi_engines(i915);
>>> +     struct intel_engine_cs *engine;
>>> +     int (* const *fn)(void *arg);
>>> +     struct pm_qos_request *qos;
>>> +     struct {
>>> +             struct perf_parallel p;
>>> +             struct task_struct *tsk;
>>> +     } *engines;
>>> +     int err = 0;
>>> +
>>> +     engines = kcalloc(nengines, sizeof(*engines), GFP_KERNEL);
>>> +     if (!engines)
>>> +             return -ENOMEM;
>>> +
>>> +     qos = kzalloc(sizeof(*qos), GFP_KERNEL);
>>> +     if (qos)
>>> +             pm_qos_add_request(qos, PM_QOS_CPU_DMA_LATENCY, 0);
>>> +
>>> +     for (fn = func; *fn; fn++) {
>>> +             char name[KSYM_NAME_LEN];
>>> +             struct igt_live_test t;
>>> +             unsigned int idx;
>>> +
>>> +             snprintf(name, sizeof(name), "%ps", *fn);
>>
>> Is this any better than just storing the name in local static array?
> 
> It's easier for sure, and since the name is already in a static array,
> why not use it :)

It looks weird, it needs KSYM_NAME_LEN of stack space and the special 
%ps. But okay.

> 
>>> +             err = igt_live_test_begin(&t, i915, __func__, name);
>>> +             if (err)
>>> +                     break;
>>> +
>>> +             atomic_set(&i915->selftest.counter, nengines);
>>> +
>>> +             idx = 0;
>>> +             for_each_uabi_engine(engine, i915) {
>>
>> For a pure driver overhead test I would suggest this to be a gt live test.
> 
> It's a request performance test, so sits above the gt. My thinking is
> that this is a more of a high level request/scheduler test than
> execlists/guc (though it depends on those backends).

Okay, yeah, it makes sense.

>   
>>> +                     intel_engine_pm_get(engine);
>>> +
>>> +                     memset(&engines[idx].p, 0, sizeof(engines[idx].p));
>>> +                     engines[idx].p.engine = engine;
>>> +
>>> +                     engines[idx].tsk = kthread_run(*fn, &engines[idx].p,
>>> +                                                    "igt:%s", engine->name);
>>
>> Test will get affected by the host CPU core count. How about we only
>> measure num_cpu engines? Might be even more important with discrete.
> 
> No. We want to be able to fill the GPU with the different processors.
> Comparing glk to kbl helps highlight any inefficiencies we have -- we
> have to be efficient enough that core count is simply not a critical
> factor to offset our submission overhead.
> 
> So we can run the same test and see how it scaled with engines vs cpus
> just by running it on different machines and look for problems.

Normally you would expect one core per engine is enough to saturate the 
engine. I am afraid adding more combinations will be confusing when 
reading test results. (Same GPU, same engine count, different CPU core 
count.) How about two subtest variants? One is 1:1 CPU core to engine, 
and another can be all engines like here?

Or possibly:

1. 1 CPU core - 1 engine - purest latency/overhead
2. 1 CPU core - N engines (N = all engines) - more
3. N CPU cores - N engines (N = min(engines, cores) - global lock 
contention, stable setup
4. M CPU cores - N engines (N, M = max) - lock contention stress
5. N CPU cores - 1 engine (N = all cores) - more extreme lock contention

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
