Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D528C2CECD0
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 12:13:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 347EA6E138;
	Fri,  4 Dec 2020 11:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E83D6E134;
 Fri,  4 Dec 2020 11:13:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23213055-1500050 for multiple; Fri, 04 Dec 2020 11:13:08 +0000
MIME-Version: 1.0
In-Reply-To: <50454fb2-2f43-3fc6-50ba-587b787bca3f@linux.intel.com>
References: <20201203095726.1427559-1-chris@chris-wilson.co.uk>
 <20201203095914.1427672-1-chris@chris-wilson.co.uk>
 <50454fb2-2f43-3fc6-50ba-587b787bca3f@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 04 Dec 2020 11:13:06 +0000
Message-ID: <160708038690.7398.6644926840404279368@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_ctx_exec: Exercise
 execution along context while closing it
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-12-04 10:52:23)
> 
> On 03/12/2020 09:59, Chris Wilson wrote:
> > Race the execution and interrupt handlers along a context, while
> > closing it at a random time.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   tests/i915/gem_ctx_exec.c | 60 +++++++++++++++++++++++++++++++++++++++
> >   1 file changed, 60 insertions(+)
> > 
> > diff --git a/tests/i915/gem_ctx_exec.c b/tests/i915/gem_ctx_exec.c
> > index 194191def..18d5d1217 100644
> > --- a/tests/i915/gem_ctx_exec.c
> > +++ b/tests/i915/gem_ctx_exec.c
> > @@ -336,6 +336,63 @@ static void nohangcheck_hostile(int i915)
> >       close(i915);
> >   }
> >   
> > +static void close_race(int i915)
> > +{
> > +     const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
> > +     uint32_t *contexts;
> > +
> > +     contexts = mmap(NULL, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
> > +     igt_assert(contexts != MAP_FAILED);
> > +
> > +     for (int child = 0; child < ncpus; child++)
> > +             contexts[child] = gem_context_clone_with_engines(i915, 0);
> > +
> > +     igt_fork(child, ncpus) {
> > +             igt_spin_t *spin;
> > +
> > +             spin = igt_spin_new(i915, .flags = IGT_SPIN_POLL_RUN);
> > +             igt_spin_end(spin);
> > +             gem_sync(i915, spin->handle);
> > +
> > +             while (!READ_ONCE(contexts[ncpus])) {
> > +                     int64_t timeout = 1;
> > +
> > +                     igt_spin_reset(spin);
> > +                     igt_assert(!igt_spin_has_started(spin));
> > +
> > +                     spin->execbuf.rsvd1 = READ_ONCE(contexts[child]);
> > +                     if (__gem_execbuf(i915, &spin->execbuf))
> > +                             continue;
> > +
> > +                     igt_assert(gem_bo_busy(i915, spin->handle));
> 
> I've seen this line fail in CI results - any idea how that can happen?

Yes. The presumption we have in this test is that if gem_execbuf
succeeds, the request will execute.

However, see

  drm/i915/gem: Propagate error from cancelled submit due to context closure
  https://patchwork.freedesktop.org/patch/405392/?series=84531&rev=1

we are cancelling the request if we detect the context is closed before
the request is submitted, but still returned success (with an async
error).

I think the test makes a fair assumption, and it's easier than I was
thinking to return the error for the closed context, which makes the
gem_execbuf solid for this race.

> > +                     gem_wait(i915, spin->handle, &timeout); /* prime irq */
> 
> Is this depending on implementation specific behaviour, that we will 
> leave the irq on after the waiter had exited?

It's the best I can do. Nothing in the uAPI should ever govern exactly
the HW details.

And since this can be used to trick the machine into locking up under
irq pressure... Maybe not the best.

> > +                     igt_spin_busywait_until_started(spin);
> > +
> > +                     igt_spin_end(spin);
> > +                     gem_sync(i915, spin->handle);
> > +             }
> > +
> > +             igt_spin_free(i915, spin);
> > +     }
> > +
> > +     igt_until_timeout(5) {
> > +             for (int child = 0; child < ncpus; child++) {
> > +                     gem_context_destroy(i915, contexts[child]);
> > +                     contexts[child] =
> > +                             gem_context_clone_with_engines(i915, 0);
> 
> Right so deliberate attempt to occasionally make the child use closed 
> context. Presumably, well according to the CI results, it does manage to 
> consistently hit it, which surprises me a bit. A comment here would be good.
> 
> > +             }
> > +             usleep(1000);
> 
> Maybe add some randomness here? Or even a random busy loop within the 
> child loop? I haven't looked at the i915 patch yet to know where the 
> race actually is..

The CPU scheduler is great at providing randomness :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
