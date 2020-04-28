Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4591BC3BB
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 17:31:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A28496E834;
	Tue, 28 Apr 2020 15:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 037C66E834
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 15:31:04 +0000 (UTC)
IronPort-SDR: OkJT1AuUcECAdXzZe1DTtLdLQYiTCub1EovpPdw4yqfLO8krpKR/hnsmSAJ255JyoUeT5WNkjk
 DhFYZVMeHS7w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 08:31:03 -0700
IronPort-SDR: nW8L9Xt6VAD1MXcWzJE+g85tMQiR7XuXVKxhMFLz8gbFmG5ztYP6sqNokoFU6Hg/MgfsalIiq9
 cCTv3gZtBjWA==
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="432219875"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 08:31:02 -0700
Message-ID: <9990951ec884bc3bc53fa740a7d1e5380b31bd88.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Tue, 28 Apr 2020 17:30:59 +0200
In-Reply-To: <158808529502.24122.7982446524778953266@build.alporthouse.com>
References: <20200424152412.5928-1-chris@chris-wilson.co.uk>
 <64c6797e1031f3f9da8b29cce8553b059b788a31.camel@linux.intel.com>
 <158807878202.24122.7735670150825044322@build.alporthouse.com>
 <5bd6486ae880dcfa209ae247101d0eb0998c0416.camel@linux.intel.com>
 <158808529502.24122.7982446524778953266@build.alporthouse.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Lazily acquire the device
 wakeref for freeing objects
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

On Tue, 2020-04-28 at 15:48 +0100, Chris Wilson wrote:
> Quoting Janusz Krzysztofik (2020-04-28 15:35:03)
> > On Tue, 2020-04-28 at 13:59 +0100, Chris Wilson wrote:
> > > Quoting Janusz Krzysztofik (2020-04-28 13:45:13)
> > > > Hi Chris,
> > > > 
> > > > On Fri, 2020-04-24 at 16:24 +0100, Chris Wilson wrote:
> > > > > We only need the device wakeref on freeing the objects if we have to
> > > > > unbind the object from the global GTT, or otherwise update device
> > > > > information. If the objects are clean, we never need the wakeref, so
> > > > > avoid taking until required.
> > > > > 
> > > > > For this to be effective in preventing us from waking the device after
> > > > > it is unbind, we also need to mark the GGTT as closed on device removal.
> > > > > The GGTT will be rebuilt from scratch the next time we need to open it
> > > > > (on binding a new device).
> > > > > 
> > > > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > > > Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/gem/i915_gem_mman.c   | 3 +++
> > > > >  drivers/gpu/drm/i915/gem/i915_gem_object.c | 3 ---
> > > > >  drivers/gpu/drm/i915/gt/intel_ggtt.c       | 9 +++++++--
> > > > >  drivers/gpu/drm/i915/gt/intel_gtt.h        | 1 +
> > > > >  drivers/gpu/drm/i915/i915_drv.c            | 1 +
> > > > >  drivers/gpu/drm/i915/i915_vma.c            | 3 ++-
> > > > >  6 files changed, 14 insertions(+), 6 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > > > > index b39c24dae64e..c6cead6f2b3e 100644
> > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > > > > @@ -421,6 +421,9 @@ static void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
> > > > >       struct drm_i915_private *i915 = to_i915(obj->base.dev);
> > > > >       intel_wakeref_t wakeref;
> > > > >  
> > > > > +     if (!atomic_read(&i915->ggtt.vm.open))
> > > > > +             return;
> > > > > +
> > > > >       /*
> > > > >        * Serialisation between user GTT access and our code depends upon
> > > > >        * revoking the CPU's PTE whilst the mutex is held. The next user
> > > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > > > > index 9d1d0131f7c2..99356c00c19e 100644
> > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > > > > @@ -162,9 +162,7 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
> > > > >                                   struct llist_node *freed)
> > > > >  {
> > > > >       struct drm_i915_gem_object *obj, *on;
> > > > > -     intel_wakeref_t wakeref;
> > > > >  
> > > > > -     wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> > > > >       llist_for_each_entry_safe(obj, on, freed, freed) {
> > > > >               struct i915_mmap_offset *mmo, *mn;
> > > > >  
> > > > > @@ -224,7 +222,6 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
> > > > >               call_rcu(&obj->rcu, __i915_gem_free_object_rcu);
> > > > >               cond_resched();
> > > > >       }
> > > > > -     intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> > > > >  }
> > > > >  
> > > > >  void i915_gem_flush_free_objects(struct drm_i915_private *i915)
> > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > > index 66165b10256e..b65545182ef5 100644
> > > > > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > > @@ -681,8 +681,6 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
> > > > >  {
> > > > >       struct i915_vma *vma, *vn;
> > > > >  
> > > > > -     atomic_set(&ggtt->vm.open, 0);
> > > > > -
> > > > >       rcu_barrier(); /* flush the RCU'ed__i915_vm_release */
> > > > >       flush_workqueue(ggtt->vm.i915->wq);
> > > > >  
> > > > > @@ -709,6 +707,13 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
> > > > >               io_mapping_fini(&ggtt->iomap);
> > > > >  }
> > > > >  
> > > > > +void i915_ggtt_driver_remove(struct drm_i915_private *i915)
> > > > > +{
> > > > > +     struct i915_ggtt *ggtt = &i915->ggtt;
> > > > > +
> > > > > +     atomic_set(&ggtt->vm.open, 0);
> > > > > +}
> > > > > +
> > > > >  /**
> > > > >   * i915_ggtt_driver_release - Clean up GGTT hardware initialization
> > > > >   * @i915: i915 device
> > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > > > > index d93ebdf3fa0e..f140ce5c171a 100644
> > > > > --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> > > > > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > > > > @@ -501,6 +501,7 @@ int i915_ggtt_enable_hw(struct drm_i915_private *i915);
> > > > >  void i915_ggtt_enable_guc(struct i915_ggtt *ggtt);
> > > > >  void i915_ggtt_disable_guc(struct i915_ggtt *ggtt);
> > > > >  int i915_init_ggtt(struct drm_i915_private *i915);
> > > > > +void i915_ggtt_driver_remove(struct drm_i915_private *i915);
> > > > >  void i915_ggtt_driver_release(struct drm_i915_private *i915);
> > > > >  
> > > > >  static inline bool i915_ggtt_has_aperture(const struct i915_ggtt *ggtt)
> > > > > diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> > > > > index 2d62efd9316f..bdf97a1cb7cc 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_drv.c
> > > > > +++ b/drivers/gpu/drm/i915/i915_drv.c
> > > > > @@ -768,6 +768,7 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
> > > > >  
> > > > >       i915_perf_fini(dev_priv);
> > > > >  
> > > > > +     i915_ggtt_driver_remove(dev_priv);
> > > > >       if (pdev->msi_enabled)
> > > > >               pci_disable_msi(pdev);
> > > > >  
> > > > > diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> > > > > index fc14ebf9a0b7..6fe56ad2a542 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_vma.c
> > > > > +++ b/drivers/gpu/drm/i915/i915_vma.c
> > > > > @@ -1319,7 +1319,8 @@ int i915_vma_unbind(struct i915_vma *vma)
> > > > >               return -EAGAIN;
> > > > >       }
> > > > >  
> > > > > -     if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
> > > > > +     if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND) &&
> > > > > +         atomic_read(&vma->vm->open))
> > > > >               /* XXX not always required: nop_clear_range */
> > > > >               wakeref = intel_runtime_pm_get(&vm->i915->runtime_pm);
> > > > >  
> > > > 
> > > > Can you please explain why you think it is OK to call
> > > > mutex_lock_interruptible_nested(&closed_GGTT->mutex, PPGTT_subclass)?
> > > 
> > > That should be explained in the comments
> > > 
> > >        /*
> > >         * Differentiate between user/kernel vma inside the aliasing-ppgtt.
> > >         *
> > >         * We conflate the Global GTT with the user's vma when using the
> > >         * aliasing-ppgtt, but it is still vitally important to try and
> > >         * keep the use cases distinct. For example, userptr objects are
> > >         * not allowed inside the Global GTT as that will cause lock
> > >         * inversions when we have to evict them the mmu_notifier callbacks -
> > >         * but they are allowed to be part of the user ppGTT which can never
> > >         * be mapped. As such we try to give the distinct users of the same
> > >         * mutex, distinct lockclasses [equivalent to how we keep i915_ggtt
> > >         * and i915_ppgtt separate].
> > >         *
> > >         * NB this may cause us to mask real lock inversions -- while the
> > >         * code is safe today, lockdep may not be able to spot future
> > >         * transgressions.
> > >         */
> > 
> > For me, that still doesn't explain why we are free to request PPGTT
> > lock subclass, not the one dedicated to GGTT as the comment suggests I
> > believe, when locking GGTT vm only because that GGTT vm is closed.
> 
> The choice of subclass is not affected by i915_vm_is_closed. It is based
> solely on whether to not the vma was only used as PIN_USER.

That was true before the change, now the subclass argument also depends
on vma->vm->open:

-	if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
+	if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND) &&
+	    atomic_read(&vma->vm->open))
		/* XXX not always required: nop_clear_range */
		wakeref = intel_runtime_pm_get(&vm->i915->runtime_pm);

	err = mutex_lock_interruptible_nested(&vma->vm->mutex, !wakeref);

> 
> > > > Can you please also explain why you think it is safe to call
> > > > __i915_vma_unbind(vma_bound_to_GGTT) even if wakeref is not taken?
> > > 
> > > Because it has been closed, and only inside strictly serial code.
> > 
> > As I haven't found this explanation sufficiently clear for me, I've had
> > a closer look as my homework.  As a result, I think the answer why this
> > may be safe can be found in commits b6422694c585 ("drm/i915/gt: Only
> > wait for register chipset flush if active") and 0d86ee35097a
> > ("drm/i915/gt: Make fence revocation unequivocal").
> 
> No. We were always free to ignore discarding the fence if not awake.
> This wakeref is only about the GGTT unbind as we pulled the wakeref from
> inside the ggtt_unbind to here to avoid a lock inversion via the
> vm->mutex + shrinker.

OK, but anyway, looking at those changes, especially the first one, I
can see we find hardware operations we are going to perform as safe
even if the device is not powered on.

Thanks,
Janusz

> -Chris

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
