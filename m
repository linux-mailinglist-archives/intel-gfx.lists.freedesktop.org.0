Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E811BE06F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 16:15:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 966D46EEA2;
	Wed, 29 Apr 2020 14:15:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6990F6EEA2
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 14:15:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21059211-1500050 for multiple; Wed, 29 Apr 2020 15:15:17 +0100
MIME-Version: 1.0
In-Reply-To: <483e3cea-d4ae-16ef-879a-2b77032fb4b1@linux.intel.com>
References: <20200428090255.10035-1-chris@chris-wilson.co.uk>
 <483e3cea-d4ae-16ef-879a-2b77032fb4b1@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158816971539.4620.11333482674145068310@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 29 Apr 2020 15:15:15 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Avoid dereferencing a dead context
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

Quoting Tvrtko Ursulin (2020-04-29 14:42:44)
> 
> On 28/04/2020 10:02, Chris Wilson wrote:
> > Once the intel_context is closed, the GEM context may be freed and so
> > the link from intel_context.gem_context is invalid.
> > 
> > <3>[  219.782944] BUG: KASAN: use-after-free in intel_engine_coredump_alloc+0x1bc3/0x2250 [i915]
> > <3>[  219.782996] Read of size 8 at addr ffff8881d7dff0b8 by task kworker/0:1/12
> > 
> > <4>[  219.783052] CPU: 0 PID: 12 Comm: kworker/0:1 Tainted: G     U            5.7.0-rc2-g1f3ffd7683d54-kasan_118+ #1
> > <4>[  219.783055] Hardware name: System manufacturer System Product Name/Z170 PRO GAMING, BIOS 3402 04/26/2017
> > <4>[  219.783105] Workqueue: events heartbeat [i915]
> > <4>[  219.783109] Call Trace:
> > <4>[  219.783113]  <IRQ>
> > <4>[  219.783119]  dump_stack+0x96/0xdb
> > <4>[  219.783177]  ? intel_engine_coredump_alloc+0x1bc3/0x2250 [i915]
> > <4>[  219.783182]  print_address_description.constprop.6+0x16/0x310
> > <4>[  219.783239]  ? intel_engine_coredump_alloc+0x1bc3/0x2250 [i915]
> > <4>[  219.783295]  ? intel_engine_coredump_alloc+0x1bc3/0x2250 [i915]
> > <4>[  219.783300]  __kasan_report+0x137/0x190
> > <4>[  219.783359]  ? intel_engine_coredump_alloc+0x1bc3/0x2250 [i915]
> > <4>[  219.783366]  kasan_report+0x32/0x50
> > <4>[  219.783426]  intel_engine_coredump_alloc+0x1bc3/0x2250 [i915]
> > <4>[  219.783481]  execlists_reset+0x39c/0x13d0 [i915]
> > <4>[  219.783494]  ? mark_held_locks+0x9e/0xe0
> > <4>[  219.783546]  ? execlists_hold+0xfc0/0xfc0 [i915]
> > <4>[  219.783551]  ? lockdep_hardirqs_on+0x348/0x5f0
> > <4>[  219.783557]  ? _raw_spin_unlock_irqrestore+0x34/0x60
> > <4>[  219.783606]  ? execlists_submission_tasklet+0x118/0x3a0 [i915]
> > <4>[  219.783615]  tasklet_action_common.isra.14+0x13b/0x410
> > <4>[  219.783623]  ? __do_softirq+0x1e4/0x9a7
> > <4>[  219.783630]  __do_softirq+0x226/0x9a7
> > <4>[  219.783643]  do_softirq_own_stack+0x2a/0x40
> > <4>[  219.783647]  </IRQ>
> > <4>[  219.783692]  ? heartbeat+0x3e2/0x10f0 [i915]
> > <4>[  219.783696]  do_softirq.part.13+0x49/0x50
> > <4>[  219.783700]  __local_bh_enable_ip+0x1a2/0x1e0
> > <4>[  219.783748]  heartbeat+0x409/0x10f0 [i915]
> > <4>[  219.783801]  ? __live_idle_pulse+0x9f0/0x9f0 [i915]
> > <4>[  219.783806]  ? lock_acquire+0x1ac/0x8a0
> > <4>[  219.783811]  ? process_one_work+0x811/0x1870
> > <4>[  219.783827]  ? rcu_read_lock_sched_held+0x9c/0xd0
> > <4>[  219.783832]  ? rcu_read_lock_bh_held+0xb0/0xb0
> > <4>[  219.783836]  ? _raw_spin_unlock_irq+0x1f/0x40
> > <4>[  219.783845]  process_one_work+0x8ca/0x1870
> > <4>[  219.783848]  ? lock_acquire+0x1ac/0x8a0
> > <4>[  219.783852]  ? worker_thread+0x1d0/0xb80
> > <4>[  219.783864]  ? pwq_dec_nr_in_flight+0x2c0/0x2c0
> > <4>[  219.783870]  ? do_raw_spin_lock+0x129/0x290
> > <4>[  219.783886]  worker_thread+0x82/0xb80
> > <4>[  219.783895]  ? __kthread_parkme+0xaf/0x1b0
> > <4>[  219.783902]  ? process_one_work+0x1870/0x1870
> > <4>[  219.783906]  kthread+0x34e/0x420
> > <4>[  219.783911]  ? kthread_create_on_node+0xc0/0xc0
> > <4>[  219.783918]  ret_from_fork+0x3a/0x50
> > 
> > <3>[  219.783950] Allocated by task 1264:
> > <4>[  219.783975]  save_stack+0x19/0x40
> > <4>[  219.783978]  __kasan_kmalloc.constprop.3+0xa0/0xd0
> > <4>[  219.784029]  i915_gem_create_context+0xa2/0xab8 [i915]
> > <4>[  219.784081]  i915_gem_context_create_ioctl+0x1fa/0x450 [i915]
> > <4>[  219.784085]  drm_ioctl_kernel+0x1d8/0x270
> > <4>[  219.784088]  drm_ioctl+0x676/0x930
> > <4>[  219.784092]  ksys_ioctl+0xb7/0xe0
> > <4>[  219.784096]  __x64_sys_ioctl+0x6a/0xb0
> > <4>[  219.784100]  do_syscall_64+0x94/0x530
> > <4>[  219.784103]  entry_SYSCALL_64_after_hwframe+0x49/0xb3
> > 
> > <3>[  219.784120] Freed by task 12:
> > <4>[  219.784141]  save_stack+0x19/0x40
> > <4>[  219.784145]  __kasan_slab_free+0x130/0x180
> > <4>[  219.784148]  kmem_cache_free_bulk+0x1bd/0x500
> > <4>[  219.784152]  kfree_rcu_work+0x1d8/0x890
> > <4>[  219.784155]  process_one_work+0x8ca/0x1870
> > <4>[  219.784158]  worker_thread+0x82/0xb80
> > <4>[  219.784162]  kthread+0x34e/0x420
> > <4>[  219.784165]  ret_from_fork+0x3a/0x50
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/i915_gpu_error.c | 12 +++++++-----
> >   1 file changed, 7 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> > index 4d54dba35302..a976cd67b3b3 100644
> > --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> > +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> > @@ -1207,8 +1207,6 @@ static void engine_record_registers(struct intel_engine_coredump *ee)
> >   static void record_request(const struct i915_request *request,
> >                          struct i915_request_coredump *erq)
> >   {
> > -     const struct i915_gem_context *ctx;
> > -
> >       erq->flags = request->fence.flags;
> >       erq->context = request->fence.context;
> >       erq->seqno = request->fence.seqno;
> > @@ -1218,9 +1216,13 @@ static void record_request(const struct i915_request *request,
> >   
> >       erq->pid = 0;
> >       rcu_read_lock();
> > -     ctx = rcu_dereference(request->context->gem_context);
> > -     if (ctx)
> > -             erq->pid = pid_nr(ctx->pid);
> > +     if (!intel_context_is_closed(request->context)) {
> > +             const struct i915_gem_context *ctx;
> > +
> > +             ctx = rcu_dereference(request->context->gem_context);
> > +             if (ctx)
> > +                     erq->pid = pid_nr(ctx->pid);
> > +     }
> >       rcu_read_unlock();
> >   }
> >   
> > 
> 
> In the client busyness series I move the GEM ctx put to free_engines_rcu 
> - at which point the closed check here is not needed any more. Should we 
> delay this put right now to simplify? Maybe not.. I'll remember to tweak 
> it in my series.

Yeah, it's not the right answer and I was hoping that you would have a
better plan :)

But it fixes a uaf we see atm, so a temporary bandaid.

> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Regards,
> 
> Tvrtko
> 
> P.S. Fixes: 2e46a2a0b0149f951b63be1b5df6514676fed213 ?

Looks to be the culprit, yes.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
