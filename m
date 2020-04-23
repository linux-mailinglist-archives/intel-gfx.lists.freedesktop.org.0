Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD1E1B5E77
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 16:59:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 562006E880;
	Thu, 23 Apr 2020 14:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96BB36E880
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 14:59:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20997438-1500050 for multiple; Thu, 23 Apr 2020 15:59:39 +0100
MIME-Version: 1.0
In-Reply-To: <20200423141847.GA460760@jack.zhora.eu>
References: <20200422073715.11770-1-chris@chris-wilson.co.uk>
 <20200422074203.9799-1-chris@chris-wilson.co.uk>
 <20200422224529.GA444751@jack.zhora.eu>
 <158762473638.5423.16680019485903753123@build.alporthouse.com>
 <20200423141847.GA460760@jack.zhora.eu>
To: Andi Shyti <andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158765397759.9772.14639590476004237697@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 23 Apr 2020 15:59:37 +0100
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

Quoting Andi Shyti (2020-04-23 15:18:47)
> Hi Chris,
> 
> > > > +static int s_many(void *arg)
> > > > +{
> > > > +     struct perf_series *ps = arg;
> > > 
> > > why do we need to go through void... all functions are taking a
> > > perf_series structure.
> > 
> > The kthread API defines the function pointer as int (*fn)(void *arg);
> 
> In the parallel tes, not in the serial test. right? But, OK,
> it's not a big deal.

Imagine I copy-paste the kthread_run as well :)

> > > > +                     p->time = ktime_sub(ktime_get(), p->time);
> > > > +                     if (p->busy) {
> > > > +                             p->busy = ktime_sub(intel_engine_get_busy_time(p->engine),
> > > > +                                                 p->busy - 1);
> > > > +                             intel_disable_engine_stats(p->engine);
> > > > +                     }
> > > > +
> > > > +                     err = switch_to_kernel_sync(ce, err);
> > > 
> > > how about err?
> > 
> > It's a case of where we need to flush all the engines regardless of the
> > error, so we wait until the end.
> 
> so you put it there to remove also the warning :)

The idea was that it would keep the error until the end, trying to flush
as it went.

> > > > +                     p->runtime += intel_context_get_total_runtime_ns(ce);
> > > 
> > > assigning a negative value to an unsigned so that you can add it
> > > later? looks nice but odd :)
> > > 
> > > It's easier to understand if we do
> > > 
> > > p->runtime = intel_context_get_total_runtime_ns(ce) - p->runtime;
> > > 
> > > if you like it, no need to change, though.
> > 
> > I've done both. I'm fond of the unsigned addition of a negative number.
> > It's a few instructions less. :-p
> 
> Yes, nevertheless, I like it, even though it's somehow an abuse
> of the concept of unsigned.

It's not negative, just a large positive number!

> > > > +     count = 0;
> > > > +     p->time = ktime_get();
> > > > +     do {
> > > > +             struct i915_request *rq;
> > > > +
> > > > +             rq = i915_request_create(ce);
> > > > +             if (IS_ERR(rq)) {
> > > > +                     err = PTR_ERR(rq);
> > > > +                     break;
> > > > +             }
> > > > +
> > > > +             i915_request_add(rq);
> > > 
> > > do we need a request_put as well?
> > 
> > No. Nasty API, add consumes the reference. It's on the list to update
> > now that we have a ~majority of cases that want to keep a reference to
> > their request.
> 
> arrghh!
> 
> > > > +             for_each_uabi_engine(engine, i915) {
> > > > +                     int status;
> > > > +
> > > > +                     if (IS_ERR(engines[idx].tsk))
> > > > +                             break;
> > > 
> > > if we break here aren't we missing engine_pm_put and put_task?
> > 
> > No. We broke in the earlier loop as well, so the ERR_PTR is the
> > sentinel, indicating the end of the assignments.
> 
> Oh yes, true!
> 
> Reviewed-by: Andi Shyti <andi.shyti@intel.com>
> 
> Now finally, after a month it has been lingering around, you can
> finally push it.

And get back to the real question of how we can improve the backend so
that we can saturate the GPU with the least number of CPUs.

And if we are happy with the kernel, there's the issue of where all the
throughput goes between the kernel and userspace. (The purpose of this
test was to ensure we had no silly bugs inside the kernel that was
causing the sub-par userspace performance. We don't seem to, but it's
also not perfect, plenty of room for improvement.)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
