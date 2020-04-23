Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B85F1B54F6
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 08:52:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7942689F9F;
	Thu, 23 Apr 2020 06:52:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E7789F9F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 06:52:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20991575-1500050 for multiple; Thu, 23 Apr 2020 07:52:18 +0100
MIME-Version: 1.0
In-Reply-To: <20200422224529.GA444751@jack.zhora.eu>
References: <20200422073715.11770-1-chris@chris-wilson.co.uk>
 <20200422074203.9799-1-chris@chris-wilson.co.uk>
 <20200422224529.GA444751@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Message-ID: <158762473638.5423.16680019485903753123@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 23 Apr 2020 07:52:16 +0100
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

Quoting Andi Shyti (2020-04-22 23:45:29)
> Hi Chris,
> 
> [...]
> 
> > +static int s_many(void *arg)
> > +{
> > +     struct perf_series *ps = arg;
> 
> why do we need to go through void... all functions are taking a
> perf_series structure.

The kthread API defines the function pointer as int (*fn)(void *arg);

> 
> > +     IGT_TIMEOUT(end_time);
> > +     unsigned int idx = 0;
> > +
> 
> [...]
> 
> > +             for (idx = 0; idx < nengines; idx++) {
> > +                     struct perf_stats *p =
> > +                             memset(&stats[idx], 0, sizeof(stats[idx]));
> > +                     struct intel_context *ce = ps->ce[idx];
> > +
> > +                     p->engine = ps->ce[idx]->engine;
> > +                     intel_engine_pm_get(p->engine);
> > +
> > +                     if (intel_engine_supports_stats(p->engine) &&
> > +                         !intel_enable_engine_stats(p->engine))
> > +                             p->busy = intel_engine_get_busy_time(p->engine) + 1;
> > +                     p->runtime = -intel_context_get_total_runtime_ns(ce);
> > +                     p->time = ktime_get();
> > +             }
> > +
> > +             err = (*fn)(ps);
> > +             if (igt_live_test_end(&t))
> > +                     err = -EIO;
> > +
> > +             for (idx = 0; idx < nengines; idx++) {
> > +                     struct perf_stats *p = &stats[idx];
> > +                     struct intel_context *ce = ps->ce[idx];
> > +                     int integer, decimal;
> > +                     u64 busy, dt;
> > +
> > +                     p->time = ktime_sub(ktime_get(), p->time);
> > +                     if (p->busy) {
> > +                             p->busy = ktime_sub(intel_engine_get_busy_time(p->engine),
> > +                                                 p->busy - 1);
> > +                             intel_disable_engine_stats(p->engine);
> > +                     }
> > +
> > +                     err = switch_to_kernel_sync(ce, err);
> 
> how about err?

It's a case of where we need to flush all the engines regardless of the
error, so we wait until the end.

> > +                     p->runtime += intel_context_get_total_runtime_ns(ce);
> 
> assigning a negative value to an unsigned so that you can add it
> later? looks nice but odd :)
> 
> It's easier to understand if we do
> 
> p->runtime = intel_context_get_total_runtime_ns(ce) - p->runtime;
> 
> if you like it, no need to change, though.

I've done both. I'm fond of the unsigned addition of a negative number.
It's a few instructions less. :-p

> 
> [...]
> 
> > +static int p_many(void *arg)
> > +{
> > +     struct perf_stats *p = arg;
> > +     struct intel_engine_cs *engine = p->engine;
> > +     struct intel_context *ce;
> > +     IGT_TIMEOUT(end_time);
> > +     unsigned long count;
> > +     int err = 0;
> > +     bool busy;
> > +
> > +     ce = intel_context_create(engine);
> > +     if (IS_ERR(ce))
> > +             return PTR_ERR(ce);
> > +
> > +     err = intel_context_pin(ce);
> > +     if (err) {
> > +             intel_context_put(ce);
> > +             return err;
> > +     }
> > +
> > +     busy = false;
> > +     if (intel_engine_supports_stats(engine) &&
> > +         !intel_enable_engine_stats(engine)) {
> > +             p->busy = intel_engine_get_busy_time(engine);
> > +             busy = true;
> > +     }
> > +
> > +     count = 0;
> > +     p->time = ktime_get();
> > +     do {
> > +             struct i915_request *rq;
> > +
> > +             rq = i915_request_create(ce);
> > +             if (IS_ERR(rq)) {
> > +                     err = PTR_ERR(rq);
> > +                     break;
> > +             }
> > +
> > +             i915_request_add(rq);
> 
> do we need a request_put as well?

No. Nasty API, add consumes the reference. It's on the list to update
now that we have a ~majority of cases that want to keep a reference to
their request.


> 
> > +             count++;
> > +     } while (!__igt_timeout(end_time, NULL));
> > +     p->time = ktime_sub(ktime_get(), p->time);
> > +
> > +     if (busy) {
> > +             p->busy = ktime_sub(intel_engine_get_busy_time(engine),
> > +                                 p->busy);
> > +             intel_disable_engine_stats(engine);
> > +     }
> > +
> > +     err = switch_to_kernel_sync(ce, err);
> > +     p->runtime = intel_context_get_total_runtime_ns(ce);
> > +     p->count = count;
> > +
> > +     intel_context_unpin(ce);
> > +     intel_context_put(ce);
> > +     return err;
> > +}
> 
> [...]
> 
> > +             for_each_uabi_engine(engine, i915) {
> > +                     int status;
> > +
> > +                     if (IS_ERR(engines[idx].tsk))
> > +                             break;
> 
> if we break here aren't we missing engine_pm_put and put_task?

No. We broke in the earlier loop as well, so the ERR_PTR is the
sentinel, indicating the end of the assignments.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
