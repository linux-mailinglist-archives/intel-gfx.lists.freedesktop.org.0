Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 426D814A752
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 16:38:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DA256EBED;
	Mon, 27 Jan 2020 15:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13F936EBED
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 15:38:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20024334-1500050 for multiple; Mon, 27 Jan 2020 15:38:26 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200126102346.1877661-1-chris@chris-wilson.co.uk>
 <20200126102346.1877661-4-chris@chris-wilson.co.uk>
 <bb269e2b-ccf9-d37a-6924-c5fa37ff1821@linux.intel.com>
In-Reply-To: <bb269e2b-ccf9-d37a-6924-c5fa37ff1821@linux.intel.com>
Message-ID: <158013950487.25356.15293103019035845772@skylake-alporthouse-com>
Date: Mon, 27 Jan 2020 15:38:24 +0000
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/gt: Acquire ce->active before
 ce->pin_count/ce->pin_mutex
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

Quoting Tvrtko Ursulin (2020-01-27 15:33:44)
> 
> On 26/01/2020 10:23, Chris Wilson wrote:
> > <0> [198.668822] gem_exec-1246    0.... 193899010us : timeline_advance: timeline_advance:387 GEM_BUG_ON(!atomic_read(&tl->pin_count))
> > <0> [198.668859] ---------------------------------
> > <4> [198.669619] ------------[ cut here ]------------
> > <2> [198.669621] kernel BUG at drivers/gpu/drm/i915/gt/intel_timeline.c:387!
> > <4> [198.669703] invalid opcode: 0000 [#1] PREEMPT SMP PTI
> > <4> [198.669712] CPU: 0 PID: 1246 Comm: gem_exec_create Tainted: G     U  W         5.5.0-rc6-CI-CI_DRM_7755+ #1
> > <4> [198.669723] Hardware name:  /NUC7i5BNB, BIOS BNKBL357.86A.0054.2017.1025.1822 10/25/2017
> > <4> [198.669776] RIP: 0010:timeline_advance+0x7b/0xe0 [i915]
> > <4> [198.669785] Code: 00 48 c7 c2 10 f1 46 a0 48 c7 c7 70 1b 32 a0 e8 bb dd e7 e0 bf 01 00 00 00 e8 d1 af e7 e0 31 f6 bf 09 00 00 00 e8 35 ef d8 e0 <0f> 0b 48 c7 c1 48 fa 49 a0 ba 84 01 00 00 48 c7 c6 10 f1 46 a0 48
> > <4> [198.669803] RSP: 0018:ffffc900004c3a38 EFLAGS: 00010296
> > <4> [198.669810] RAX: ffff888270b35140 RBX: ffff88826f32ee00 RCX: 0000000000000006
> > <4> [198.669818] RDX: 00000000000017c5 RSI: 0000000000000000 RDI: 0000000000000009
> > <4> [198.669826] RBP: ffffc900004c3a64 R08: 0000000000000000 R09: 0000000000000000
> > <4> [198.669834] R10: 0000000000000000 R11: 0000000000000000 R12: ffff88826f9b5980
> > <4> [198.669841] R13: 0000000000000cc0 R14: ffffc900004c3dc0 R15: ffff888253610068
> > <4> [198.669849] FS:  00007f63e663fe40(0000) GS:ffff888276c00000(0000) knlGS:0000000000000000
> > <4> [198.669857] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > <4> [198.669864] CR2: 00007f171f8e39a8 CR3: 000000026b1f6005 CR4: 00000000003606f0
> > <4> [198.669872] Call Trace:
> > <4> [198.669924]  intel_timeline_get_seqno+0x12/0x40 [i915]
> > <4> [198.669977]  __i915_request_create+0x76/0x5a0 [i915]
> > <4> [198.670024]  i915_request_create+0x86/0x1c0 [i915]
> > <4> [198.670068]  i915_gem_do_execbuffer+0xbf2/0x2500 [i915]
> > <4> [198.670082]  ? __lock_acquire+0x460/0x15d0
> > <4> [198.670128]  i915_gem_execbuffer2_ioctl+0x11f/0x470 [i915]
> > <4> [198.670171]  ? i915_gem_execbuffer_ioctl+0x300/0x300 [i915]
> > <4> [198.670181]  drm_ioctl_kernel+0xa7/0xf0
> > <4> [198.670188]  drm_ioctl+0x2e1/0x390
> > <4> [198.670233]  ? i915_gem_execbuffer_ioctl+0x300/0x300 [i915]
> > 
> > Fixes: 841350223816 ("drm/i915/gt: Drop mutex serialisation between context pin/unpin")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_context.c | 46 ++++++++++++++-----------
> >   drivers/gpu/drm/i915/i915_active.h      |  6 ++++
> >   2 files changed, 31 insertions(+), 21 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> > index 23137b2a8689..57e8a051ddc2 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_context.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> > @@ -67,21 +67,18 @@ static int intel_context_active_acquire(struct intel_context *ce)
> >   {
> >       int err;
> >   
> > -     err = i915_active_acquire(&ce->active);
> > -     if (err)
> > -             return err;
> > +     __i915_active_acquire(&ce->active);
> > +
> > +     if (intel_context_is_barrier(ce))
> > +             return 0;
> >   
> >       /* Preallocate tracking nodes */
> > -     if (!intel_context_is_barrier(ce)) {
> > -             err = i915_active_acquire_preallocate_barrier(&ce->active,
> > -                                                           ce->engine);
> > -             if (err) {
> > -                     i915_active_release(&ce->active);
> > -                     return err;
> > -             }
> > -     }
> > +     err = i915_active_acquire_preallocate_barrier(&ce->active,
> > +                                                   ce->engine);
> > +     if (err)
> > +             i915_active_release(&ce->active);
> >   
> > -     return 0;
> > +     return err;
> >   }
> >   
> >   static void intel_context_active_release(struct intel_context *ce)
> > @@ -101,13 +98,19 @@ int __intel_context_do_pin(struct intel_context *ce)
> >                       return err;
> >       }
> >   
> > -     if (mutex_lock_interruptible(&ce->pin_mutex))
> > -             return -EINTR;
> > +     err = i915_active_acquire(&ce->active);
> > +     if (err)
> > +             return err;
> > +
> > +     if (mutex_lock_interruptible(&ce->pin_mutex)) {
> > +             err = -EINTR;
> > +             goto out_release;
> > +     }
> >   
> > -     if (likely(!atomic_read(&ce->pin_count))) {
> > +     if (likely(!atomic_add_unless(&ce->pin_count, 1, 0))) {
> >               err = intel_context_active_acquire(ce);
> >               if (unlikely(err))
> > -                     goto err;
> > +                     goto out_unlock;
> >   
> >               err = ce->ops->pin(ce);
> >               if (unlikely(err))
> > @@ -117,18 +120,19 @@ int __intel_context_do_pin(struct intel_context *ce)
> >                        ce->ring->head, ce->ring->tail);
> >   
> >               smp_mb__before_atomic(); /* flush pin before it is visible */
> > +             atomic_inc(&ce->pin_count);
> >       }
> >   
> > -     atomic_inc(&ce->pin_count);
> >       GEM_BUG_ON(!intel_context_is_pinned(ce)); /* no overflow! */
> > -
> > -     mutex_unlock(&ce->pin_mutex);
> > -     return 0;
> > +     GEM_BUG_ON(i915_active_is_idle(&ce->active));
> > +     goto out_unlock;
> >   
> >   err_active:
> >       intel_context_active_release(ce);
> > -err:
> > +out_unlock:
> >       mutex_unlock(&ce->pin_mutex);
> > +out_release:
> > +     i915_active_release(&ce->active);
> >       return err;
> >   }
> >   
> > diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
> > index b571f675c795..51e1e854ca55 100644
> > --- a/drivers/gpu/drm/i915/i915_active.h
> > +++ b/drivers/gpu/drm/i915/i915_active.h
> > @@ -188,6 +188,12 @@ int i915_active_acquire(struct i915_active *ref);
> >   bool i915_active_acquire_if_busy(struct i915_active *ref);
> >   void i915_active_release(struct i915_active *ref);
> >   
> > +static inline void __i915_active_acquire(struct i915_active *ref)
> > +{
> > +     GEM_BUG_ON(!atomic_read(&ref->count));
> > +     atomic_inc(&ref->count);
> > +}
> > +
> >   static inline bool
> >   i915_active_is_idle(const struct i915_active *ref)
> >   {
> > 
> 
> Change looks okay but I would like to read something more in the commit 
> message. Like I feel there is more to it than acquire order otherwise 
> problem would be much more widespread.

I added the information about the issue of the mutex_lock vs unlocked
unpin, but the rest of the motion is continuing the theme of trying to
make ww_mutex easier (which you didn't hear).
https://patchwork.freedesktop.org/patch/350849/?series=72626&rev=1
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
