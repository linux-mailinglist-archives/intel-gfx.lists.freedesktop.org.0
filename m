Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6225F304B1E
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 22:17:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A026389709;
	Tue, 26 Jan 2021 21:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C473989709
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 21:17:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23708122-1500050 for multiple; Tue, 26 Jan 2021 21:16:54 +0000
MIME-Version: 1.0
In-Reply-To: <YBBZ8lbpS4QW49UX@jack.zhora.eu>
References: <20210120122205.2808-1-chris@chris-wilson.co.uk>
 <20210120122205.2808-8-chris@chris-wilson.co.uk>
 <YBBZ8lbpS4QW49UX@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Date: Tue, 26 Jan 2021 21:16:56 +0000
Message-ID: <161169581611.2943.4607460589670027944@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915/selftests: Measure
 set-priority duration
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

Quoting Andi Shyti (2021-01-26 18:05:38)
> On Wed, Jan 20, 2021 at 12:22:03PM +0000, Chris Wilson wrote:
> > As a topological sort, we expect it to run in linear graph time,
> > O(V+E). In removing the recursion, it is no longer a DFS but rather a
> > BFS, and performs as O(VE). Let's demonstrate how bad this is with a few
> > examples, and build a few test cases to verify a potential fix.
> 
> very noble purpose, but...
> 
> [...]
> 
> > +static int sparse(struct drm_i915_private *i915,
> > +               bool (*fn)(struct i915_request *rq,
> > +                          unsigned long v, unsigned long e))
> > +{
> > +     return chains(i915, sparse_chain, fn);
> > +}
> 
> ... this is quite an intricate web of functions calling each
> other.
> 
> Is there any simplier way to do this? This is that kind of code
> that if you go on holiday for a few days you forget what you
> wrote.

This was to remove duplication, and there's more tests to come in this
group that use the same framework and only differ in the final step.

> I do need three drawing boards and 24 fingers for keeping track
> of what's happening here. :)
> 
> > +
> > +static void report(const char *what, unsigned long v, unsigned long e, u64 dt)
> > +{
> > +     pr_info("(%4lu, %7lu), %s:%10lluns\n", v, e, what, dt);
> > +}
> > +
> > +static u64 __set_priority(struct i915_request *rq, int prio)
> > +{
> > +     u64 dt;
> > +
> > +     preempt_disable();
> > +     dt = ktime_get_raw_fast_ns();
> > +     i915_request_set_priority(rq, prio);
> > +     dt = ktime_get_raw_fast_ns() - dt;
> > +     preempt_enable();
> > +
> > +     return dt;
> > +}
> > +
> > +static bool set_priority(struct i915_request *rq,
> > +                      unsigned long v, unsigned long e)
> > +{
> > +     report("set-priority", v, e, __set_priority(rq, I915_PRIORITY_BARRIER));
> 
> can't we pr_info directly here and spare a function?

It will be reused later.

> > +     return true;
> > +}
> > +
> > +static int single_priority(void *arg)
> > +{
> > +     return single(arg, set_priority);
> > +}
> > +
> > +static int wide_priority(void *arg)
> > +{
> > +     return wide(arg, set_priority);
> > +}
> > +
> > +static int inv_priority(void *arg)
> > +{
> > +     return inv(arg, set_priority);
> > +}
> > +
> > +static int sparse_priority(void *arg)
> > +{
> > +     return sparse(arg, set_priority);
> > +}
> > +
> > +int i915_scheduler_perf_selftests(struct drm_i915_private *i915)
> > +{
> > +     static const struct i915_subtest tests[] = {
> > +             SUBTEST(single_priority),
> > +             SUBTEST(wide_priority),
> > +             SUBTEST(inv_priority),
> > +             SUBTEST(sparse_priority),
> > +     };
> > +     static const struct {
> > +             const char *name;
> > +             size_t sz;
> > +     } types[] = {
> > +#define T(t) { #t, sizeof(struct t) }
> > +             T(i915_priolist),
> > +             T(i915_sched_attr),
> > +             T(i915_sched_node),
> > +#undef T
> 
> is this really making the code better? Is it a big deal to
> clearly use
> 
>                 { i915_priolist, sizeof(i915_priolist) },
>                 { i915_sched_attr, sizeof(i915_sched_attr) },
>                 { i915_sched_node, sizeof(i915_sched_node) },

Duplication and more typing, you even left out the struct in
sizeof(struct T) :)

Did this save me more time to add stuff than it took to write #define T?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
