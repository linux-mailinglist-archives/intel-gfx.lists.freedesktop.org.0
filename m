Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A84471E4905
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 18:01:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E079F6E34B;
	Wed, 27 May 2020 16:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A8F6E33F;
 Wed, 27 May 2020 16:00:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21311687-1500050 for multiple; Wed, 27 May 2020 17:00:56 +0100
MIME-Version: 1.0
In-Reply-To: <e3ceb72a-156b-a4cf-96c7-c339ea67ffb1@linux.intel.com>
References: <20200527131409.699882-1-chris@chris-wilson.co.uk>
 <e3ceb72a-156b-a4cf-96c7-c339ea67ffb1@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Message-ID: <159059525586.30979.1718850848806311032@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 27 May 2020 17:00:55 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Randomise
 bonded submission
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

Quoting Tvrtko Ursulin (2020-05-27 16:51:50)
> 
> On 27/05/2020 14:14, Chris Wilson wrote:
> > Randomly submit a paired spinner and its cancellation as a bonded
> > (submit fence) pair. Apply congestion to the engine with more bonded
> > pairs to see if the execution order fails. If we prevent a cancellation
> > from running, then the spinner will remain spinning forever.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   tests/i915/gem_exec_balancer.c | 108 +++++++++++++++++++++++++++++++++
> >   1 file changed, 108 insertions(+)
> > 
> > diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
> > index 80ae82416..98715d726 100644
> > --- a/tests/i915/gem_exec_balancer.c
> > +++ b/tests/i915/gem_exec_balancer.c
> > @@ -1154,6 +1154,111 @@ static void bonded_semaphore(int i915)
> >       gem_context_destroy(i915, ctx);
> >   }
> >   
> > +static void __bonded_dual(int i915,
> > +                       const struct i915_engine_class_instance *siblings,
> > +                       unsigned int count)
> > +{
> > +     struct drm_i915_gem_exec_object2 batch = {};
> > +     struct drm_i915_gem_execbuffer2 execbuf = {
> > +             .buffers_ptr = to_user_pointer(&batch),
> > +             .buffer_count = 1,
> > +     };
> > +     unsigned long cycles = 0;
> > +     uint32_t A, B;
> > +
> > +     A = gem_context_create(i915);
> > +     set_load_balancer(i915, A, siblings, count, NULL);
> > +
> > +     B = gem_context_create(i915);
> > +     set_load_balancer(i915, B, siblings, count, NULL);
> > +
> > +     igt_until_timeout(5) {
> > +             unsigned int master = rand() % count + 1;
> > +             int timeline, fence;
> > +             igt_spin_t *a, *b;
> > +
> > +             timeline = sw_sync_timeline_create();
> > +             fence = sw_sync_timeline_create_fence(timeline, 1);
> > +
> > +             a = igt_spin_new(i915, A,
> > +                              .engine = master,
> > +                              .fence = fence,
> > +                              .flags = (IGT_SPIN_FENCE_IN |
> > +                                        IGT_SPIN_POLL_RUN |
> > +                                        IGT_SPIN_NO_PREEMPTION |
> > +                                        IGT_SPIN_FENCE_OUT));
> > +             b = igt_spin_new(i915, B,
> > +                              .engine = master,
> > +                              .fence = fence,
> > +                              .flags = (IGT_SPIN_FENCE_IN |
> > +                                        IGT_SPIN_POLL_RUN |
> > +                                        IGT_SPIN_NO_PREEMPTION |
> > +                                        IGT_SPIN_FENCE_OUT));
> > +
> > +             close(fence);
> 
> Does this or close(timeline) releases the submissions?

The timeline is the release.
 
> I suggest a variant without the fence anyway for a slightly different 
> profile.

It didn't make any difference. But yes I contemplated the variant.
 
> > +
> > +             if (rand() % 1)
> > +                     igt_swap(a, b);
> > +
> > +             batch.handle = create_semaphore_to_spinner(i915, a);
> 
> These will be preemptible right? More so they schedule out on semaphore 
> interrupt straight away? So I don't see how slaves can be prevented from 
> running because they always are on a different physical engine.

Right, as I understood your description the masters could only be on one
engine with the bonded requests on the other.

And I don't know how to wait from the GPU other than with the
preemptible semaphore spin. A non preemptible wait would be another
spinner, but that would not coordinate across the bond. To reproduce the
non-preemptible HW might require the actual instruction flow.

> We would need a test flavour where slave spins non-preemptively until 
> either the master or CPU signals to stop. Coming up with the exact 
> scheme to achieve this might be challenging. I can think about this more 
> tomorrow.
> 
> And also I don't know why this would fail with my patch! I'll want to 
> have a experiment with that tomorrow as well.

That was indeed mysterious :) I don't have an explanation either yet.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
