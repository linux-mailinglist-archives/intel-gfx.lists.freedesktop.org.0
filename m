Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6CE1E8165
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 17:13:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C2BB6E92A;
	Fri, 29 May 2020 15:13:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 402FF6E929;
 Fri, 29 May 2020 15:13:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21336282-1500050 for multiple; Fri, 29 May 2020 16:13:46 +0100
MIME-Version: 1.0
In-Reply-To: <83048191-b634-6079-6026-89d7811838bb@linux.intel.com>
References: <20200529135802.1286704-1-chris@chris-wilson.co.uk>
 <83048191-b634-6079-6026-89d7811838bb@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159076522662.8851.8998923281397514896@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 29 May 2020 16:13:46 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v3] i915/gem_exec_balancer:
 Randomise bonded submission
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

Quoting Tvrtko Ursulin (2020-05-29 16:08:25)
> 
> On 29/05/2020 14:58, Chris Wilson wrote:
> > Randomly submit a paired spinner and its cancellation as a bonded
> > (submit fence) pair. Apply congestion to the engine with more bonded
> > pairs to see if the execution order fails. If we prevent a cancellation
> > from running, then the spinner will remain spinning forever.
> > 
> > v2: Test both immediate submission and fenced submission
> > v3: Copy-n-paste a single context variant
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   tests/i915/gem_exec_balancer.c | 341 +++++++++++++++++++++++++++++++++
> >   1 file changed, 341 insertions(+)
> > 
> > diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
> > index 80ae82416..07fe45920 100644
> > --- a/tests/i915/gem_exec_balancer.c
> > +++ b/tests/i915/gem_exec_balancer.c
> > @@ -1154,6 +1154,342 @@ static void bonded_semaphore(int i915)
> >       gem_context_destroy(i915, ctx);
> >   }
> >   
> > +static void __bonded_pair(int i915,
> > +                       const struct i915_engine_class_instance *siblings,
> > +                       unsigned int count,
> > +                       unsigned int flags,
> > +                       unsigned long *out)
> > +#define B_FENCE 0x1
> > +#define B_HOSTILE 0x2
> > +#define B_MANY 0x4
> > +{
> > +     struct drm_i915_gem_exec_object2 batch = {};
> > +     struct drm_i915_gem_execbuffer2 execbuf = {
> > +             .buffers_ptr = to_user_pointer(&batch),
> > +             .buffer_count = 1,
> > +     };
> > +     unsigned long cycles = 0;
> > +     unsigned int spinner;
> > +     igt_spin_t *a;
> > +     int timeline;
> > +     uint32_t A;
> > +
> > +     srandom(getpid());
> > +
> > +     spinner = IGT_SPIN_POLL_RUN;
> > +     if (flags & B_HOSTILE)
> > +             spinner |= IGT_SPIN_NO_PREEMPTION;
> > +
> > +     A = gem_context_create(i915);
> > +     set_load_balancer(i915, A, siblings, count, NULL);
> > +     a = igt_spin_new(i915, A, .flags = spinner);
> > +     igt_spin_end(a);
> > +     gem_sync(i915, a->handle);
> > +
> > +     timeline = sw_sync_timeline_create();
> > +
> > +     igt_until_timeout(2) {
> > +             unsigned int master;
> > +             int fence;
> > +
> > +             master = 1;
> > +             if (flags & B_MANY)
> > +                     master = rand() % count + 1;
> > +
> > +             fence = -1;
> > +             if (flags & B_FENCE)
> > +                     fence = sw_sync_timeline_create_fence(timeline,
> > +                                                           cycles + 1);
> > +
> > +             igt_spin_reset(a);
> > +             a->execbuf.flags = master | I915_EXEC_FENCE_OUT;
> > +             if (fence != -1) {
> > +                     a->execbuf.rsvd2 = fence;
> > +                     a->execbuf.flags |= I915_EXEC_FENCE_IN;
> > +             }
> > +             gem_execbuf_wr(i915, &a->execbuf);
> > +
> > +             batch.handle = create_semaphore_to_spinner(i915, a);
> > +             execbuf.rsvd1 = a->execbuf.rsvd1;
> > +             execbuf.rsvd2 = a->execbuf.rsvd2 >> 32;
> > +             do {
> > +                     execbuf.flags = rand() % count + 1;
> > +             } while (execbuf.flags == master);
> > +             execbuf.flags |= I915_EXEC_FENCE_SUBMIT;
> > +             gem_execbuf(i915, &execbuf);
> > +             gem_close(i915, batch.handle);
> > +
> > +             if (fence != -1) {
> > +                     sw_sync_timeline_inc(timeline, 1);
> > +                     close(fence);
> > +             }
> > +             close(a->execbuf.rsvd2 >> 32);
> > +
> > +             gem_sync(i915, a->handle);
> > +
> > +             cycles++;
> > +     }
> > +
> > +     close(timeline);
> > +     igt_spin_free(i915, a);
> > +     gem_context_destroy(i915, A);
> > +
> > +     *out = cycles;
> > +}
> > +
> > +static void bonded_pair(int i915)
> > +{
> > +     static const unsigned int phases[] = {
> > +             0,
> > +             B_FENCE,
> > +             B_MANY,
> > +             B_HOSTILE,
> > +             B_HOSTILE | B_FENCE,
> > +     };
> > +     unsigned long *cycles;
> > +
> > +     /*
> > +      * The purpose of bonded submission is to execute one or more requests
> > +      * concurrently. However, the very nature of that requires coordinated
> > +      * submission across multiple engines.
> > +      */
> > +     igt_require(gem_scheduler_has_preemption(i915));
> > +
> > +     cycles = mmap(0, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
> > +
> > +     for (int class = 0; class < 32; class++) {
> > +             struct i915_engine_class_instance *siblings;
> > +             unsigned int count;
> > +
> > +             siblings = list_engines(i915, 1u << class, &count);
> > +             if (count < 2)
> > +                     continue;
> > +
> > +             igt_info("Class %u, 1 thread\n", class);
> > +             for (int i = 0; i < ARRAY_SIZE(phases); i++) {
> > +                     cycles[0] = 0;
> > +                     __bonded_pair(i915,
> > +                                   siblings, count,
> > +                                   phases[i],
> > +                                   &cycles[0]);
> > +                     gem_quiescent_gpu(i915);
> > +                     igt_info("%s %s %s submission, %lu cycles\n",
> > +                              phases[i] & B_HOSTILE ? "Non-preemptible" : "Preemptible",
> > +                              phases[i] & B_MANY ? "many-master" : "single-master",
> > +                              phases[i] & B_FENCE ? "fenced" : "immediate",
> > +                              cycles[0]);
> > +             }
> > +
> > +             igt_info("Class %u, %d threads\n", class, count + 1);
> > +             for (int i = 0; i < ARRAY_SIZE(phases); i++) {
> > +                     memset(cycles, 0, (count + 1) * sizeof(*cycles));
> > +                     igt_fork(child, count + 1)
> > +                             __bonded_pair(i915,
> > +                                           siblings, count,
> > +                                           phases[i],
> > +                                           &cycles[child]);
> > +                     igt_waitchildren();
> > +                     gem_quiescent_gpu(i915);
> > +
> > +                     for (int child = 1; child < count + 1; child++)
> > +                             cycles[0] += cycles[child];
> > +
> > +                     igt_info("%s %s %s submission, %lu cycles\n",
> > +                              phases[i] & B_HOSTILE ? "Non-preemptible" : "Preemptible",
> > +                              phases[i] & B_MANY ? "many-master" : "single-master",
> > +                              phases[i] & B_FENCE ? "fenced" : "immediate",
> > +                              cycles[0]);
> > +             }
> > +             free(siblings);
> > +     }
> > +
> > +     munmap(cycles, 4096);
> > +}
> > +
> > +static void __bonded_dual(int i915,
> > +                       const struct i915_engine_class_instance *siblings,
> > +                       unsigned int count,
> > +                       unsigned int flags,
> > +                       unsigned long *out)
> > +{
> > +     struct drm_i915_gem_exec_object2 batch = {};
> > +     struct drm_i915_gem_execbuffer2 execbuf = {
> > +             .buffers_ptr = to_user_pointer(&batch),
> > +             .buffer_count = 1,
> > +     };
> > +     unsigned long cycles = 0;
> > +     unsigned int spinner;
> > +     igt_spin_t *a, *b;
> > +     int timeline;
> > +     uint32_t A, B;
> > +
> > +     srandom(getpid());
> > +
> > +     spinner = IGT_SPIN_POLL_RUN;
> > +     if (flags & B_HOSTILE)
> > +             spinner |= IGT_SPIN_NO_PREEMPTION;
> > +
> > +     A = gem_context_create(i915);
> > +     set_load_balancer(i915, A, siblings, count, NULL);
> > +     a = igt_spin_new(i915, A, .flags = spinner);
> > +     igt_spin_end(a);
> > +     gem_sync(i915, a->handle);
> > +
> > +     B = gem_context_create(i915);
> > +     set_load_balancer(i915, B, siblings, count, NULL);
> > +     b = igt_spin_new(i915, B, .flags = spinner);
> > +     igt_spin_end(b);
> > +     gem_sync(i915, b->handle);
> > +
> > +     timeline = sw_sync_timeline_create();
> > +
> > +     igt_until_timeout(2) {
> > +             unsigned int master;
> > +             int fence;
> > +
> > +             master = 1;
> > +             if (flags & B_MANY)
> > +                     master = rand() % count + 1;
> > +
> > +             fence = -1;
> > +             if (flags & B_FENCE)
> > +                     fence = sw_sync_timeline_create_fence(timeline,
> > +                                                           cycles + 1);
> > +
> > +             igt_spin_reset(a);
> > +             a->execbuf.flags = master | I915_EXEC_FENCE_OUT;
> > +             if (fence != -1) {
> > +                     a->execbuf.rsvd2 = fence;
> > +                     a->execbuf.flags |= I915_EXEC_FENCE_IN;
> > +             }
> > +             gem_execbuf_wr(i915, &a->execbuf);
> > +
> > +             igt_spin_reset(b);
> > +             b->execbuf.flags = master | I915_EXEC_FENCE_OUT;
> > +             if (fence != -1) {
> > +                     b->execbuf.rsvd2 = fence;
> > +                     b->execbuf.flags |= I915_EXEC_FENCE_IN;
> > +             }
> > +             gem_execbuf_wr(i915, &b->execbuf);
> > +
> > +             if (rand() % 1)
> > +                     igt_swap(a, b);
> > +
> > +             batch.handle = create_semaphore_to_spinner(i915, a);
> > +             execbuf.rsvd1 = a->execbuf.rsvd1;
> > +             execbuf.rsvd2 = a->execbuf.rsvd2 >> 32;
> > +             do {
> > +                     execbuf.flags = rand() % count + 1;
> > +             } while (execbuf.flags == master);
> > +             execbuf.flags |= I915_EXEC_FENCE_SUBMIT;
> > +             gem_execbuf(i915, &execbuf);
> > +             gem_close(i915, batch.handle);
> > +
> > +             batch.handle = create_semaphore_to_spinner(i915, b);
> > +             execbuf.rsvd1 = b->execbuf.rsvd1;
> > +             execbuf.rsvd2 = b->execbuf.rsvd2 >> 32;
> > +             do {
> > +                     execbuf.flags = rand() % count + 1;
> > +             } while (execbuf.flags == master);
> > +             execbuf.flags |= I915_EXEC_FENCE_SUBMIT;
> > +             gem_execbuf(i915, &execbuf);
> > +             gem_close(i915, batch.handle);
> > +
> > +             if (fence != -1) {
> > +                     sw_sync_timeline_inc(timeline, 1);
> > +                     close(fence);
> > +             }
> > +             close(a->execbuf.rsvd2 >> 32);
> > +             close(b->execbuf.rsvd2 >> 32);
> > +
> > +             gem_sync(i915, a->handle);
> > +             gem_sync(i915, b->handle);
> > +
> > +             cycles++;
> > +     }
> > +
> > +     close(timeline);
> > +
> > +     igt_spin_free(i915, a);
> > +     igt_spin_free(i915, b);
> > +
> > +     gem_context_destroy(i915, A);
> > +     gem_context_destroy(i915, B);
> > +
> > +     *out = cycles;
> > +}
> > +
> > +static void bonded_dual(int i915)
> > +{
> > +     static const unsigned int phases[] = {
> > +             0,
> > +             B_FENCE,
> > +             B_MANY,
> > +             B_HOSTILE,
> > +             B_HOSTILE | B_FENCE,
> > +     };
> > +     unsigned long *cycles;
> > +
> > +
> > +     /*
> > +      * This is the same test as bonded_pair() but with the slight extra
> > +      * stress of having two inflight clients and interchanging them
> > +      * in a thread.
> > +      */
> > +     igt_require(gem_scheduler_has_preemption(i915));
> > +
> > +     cycles = mmap(0, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
> > +
> > +     for (int class = 0; class < 32; class++) {
> > +             struct i915_engine_class_instance *siblings;
> > +             unsigned int count;
> > +
> > +             siblings = list_engines(i915, 1u << class, &count);
> > +             if (count < 2)
> > +                     continue;
> > +
> > +             igt_info("Class %u, 1 thread\n", class);
> > +             for (int i = 0; i < ARRAY_SIZE(phases); i++) {
> > +                     cycles[0] = 0;
> > +                     __bonded_dual(i915,
> > +                                   siblings, count,
> > +                                   phases[i],
> > +                                   &cycles[0]);
> > +                     gem_quiescent_gpu(i915);
> > +                     igt_info("%s %s %s submission, %lu cycles\n",
> > +                              phases[i] & B_HOSTILE ? "Non-preemptible" : "Preemptible",
> > +                              phases[i] & B_MANY ? "many-master" : "single-master",
> > +                              phases[i] & B_FENCE ? "fenced" : "immediate",
> > +                              cycles[0]);
> > +             }
> > +
> > +             igt_info("Class %u, %d threads\n", class, count + 1);
> > +             for (int i = 0; i < ARRAY_SIZE(phases); i++) {
> > +                     memset(cycles, 0, (count + 1) * sizeof(*cycles));
> > +                     igt_fork(child, count + 1)
> > +                             __bonded_dual(i915,
> > +                                           siblings, count,
> > +                                           phases[i],
> > +                                           &cycles[child]);
> > +                     igt_waitchildren();
> > +                     gem_quiescent_gpu(i915);
> > +
> > +                     for (int child = 1; child < count + 1; child++)
> > +                             cycles[0] += cycles[child];
> > +
> > +                     igt_info("%s %s %s submission, %lu cycles\n",
> > +                              phases[i] & B_HOSTILE ? "Non-preemptible" : "Preemptible",
> > +                              phases[i] & B_MANY ? "many-master" : "single-master",
> > +                              phases[i] & B_FENCE ? "fenced" : "immediate",
> > +                              cycles[0]);
> > +             }
> > +
> > +             free(siblings);
> > +     }
> > +
> > +     munmap(cycles, 4096);
> > +}
> > +
> >   static void __bonded_nohang(int i915, uint32_t ctx,
> >                           const struct i915_engine_class_instance *siblings,
> >                           unsigned int count,
> > @@ -2284,6 +2620,11 @@ igt_main
> >       igt_subtest("bonded-semaphore")
> >               bonded_semaphore(i915);
> >   
> > +     igt_subtest("bonded-pair")
> > +             bonded_pair(i915);
> > +     igt_subtest("bonded-dual")
> > +             bonded_dual(i915);
> > +
> >       igt_fixture {
> >               igt_stop_hang_detector();
> >       }
> > 
> 
> 
> "Runner" (non underscore functions) could have been shared easily but okay:

Copy-n-paste, 2 keypresses. Sharing, many. I was saving Joules but not
electronvolts.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
