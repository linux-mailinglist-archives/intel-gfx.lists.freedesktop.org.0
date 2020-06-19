Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEB4201B5D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 21:36:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013996E8EC;
	Fri, 19 Jun 2020 19:36:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2D026E8EC
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 19:36:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21554362-1500050 for multiple; Fri, 19 Jun 2020 20:36:08 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHOW69ivmnoPG2B8TygS-T3ZiboCO5T1qqnzY+3ioOpJ8w@mail.gmail.com>
References: <20200619143106.10356-1-chris@chris-wilson.co.uk>
 <CAM0jSHOW69ivmnoPG2B8TygS-T3ZiboCO5T1qqnzY+3ioOpJ8w@mail.gmail.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159259536515.12119.8045043271199697348@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 19 Jun 2020 20:36:05 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gem: Avoid kmalloc under
 i915->mm_lock
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-06-19 20:29:15)
> On Fri, 19 Jun 2020 at 15:31, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Rearrange the allocation of the mm_struct registration to avoid
> > allocating underneath the i915->mm_lock, so that we avoid tainting the
> > lock (and in turn many other locks that may be held as i915->mm_lock is
> > taken, and those locks we may want on the free [shrinker] paths). In
> > doing so, we convert the lookup to be RCU protected by courtesy of
> > converting the free-worker to be an rcu_work.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 123 +++++++++-----------
> >  drivers/gpu/drm/i915/i915_drv.h             |   2 +-
> >  2 files changed, 59 insertions(+), 66 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> > index 9c53eb883400..84766414a1f0 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> > @@ -21,7 +21,7 @@ struct i915_mm_struct {
> >         struct i915_mmu_notifier *mn;
> >         struct hlist_node node;
> >         struct kref kref;
> > -       struct work_struct work;
> > +       struct rcu_work work;
> >  };
> >
> >  #if defined(CONFIG_MMU_NOTIFIER)
> > @@ -189,40 +189,31 @@ i915_gem_userptr_release__mmu_notifier(struct drm_i915_gem_object *obj)
> >  static struct i915_mmu_notifier *
> >  i915_mmu_notifier_find(struct i915_mm_struct *mm)
> >  {
> > -       struct i915_mmu_notifier *mn;
> > -       int err = 0;
> > +       struct i915_mmu_notifier *mn, *old;
> > +       int err;
> >
> > -       mn = mm->mn;
> > -       if (mn)
> > +       mn = READ_ONCE(mm->mn);
> > +       if (likely(mn))
> >                 return mn;
> >
> >         mn = i915_mmu_notifier_create(mm);
> >         if (IS_ERR(mn))
> > -               err = PTR_ERR(mn);
> > -
> > -       mmap_write_lock(mm->mm);
> > -       mutex_lock(&mm->i915->mm_lock);
> > -       if (mm->mn == NULL && !err) {
> > -               /* Protected by mmap_lock (write-lock) */
> > -               err = __mmu_notifier_register(&mn->mn, mm->mm);
> > -               if (!err) {
> > -                       /* Protected by mm_lock */
> > -                       mm->mn = fetch_and_zero(&mn);
> > -               }
> > -       } else if (mm->mn) {
> > -               /*
> > -                * Someone else raced and successfully installed the mmu
> > -                * notifier, we can cancel our own errors.
> > -                */
> > -               err = 0;
> > +               return mn;
> > +
> > +       err = mmu_notifier_register(&mn->mn, mm->mm);
> > +       if (err) {
> > +               kfree(mn);
> > +               return ERR_PTR(err);
> >         }
> > -       mutex_unlock(&mm->i915->mm_lock);
> > -       mmap_write_unlock(mm->mm);
> >
> > -       if (mn && !IS_ERR(mn))
> > +       old = cmpxchg(&mm->mn, NULL, mn);
> > +       if (old) {
> > +               mmu_notifier_unregister(&mn->mn, mm->mm);
> >                 kfree(mn);
> > +               mn = old;
> > +       }
> >
> > -       return err ? ERR_PTR(err) : mm->mn;
> > +       return mn;
> >  }
> >
> >  static int
> > @@ -301,23 +292,26 @@ i915_mmu_notifier_free(struct i915_mmu_notifier *mn,
> >  #endif
> >
> >  static struct i915_mm_struct *
> > -__i915_mm_struct_find(struct drm_i915_private *dev_priv, struct mm_struct *real)
> > +__i915_mm_struct_find(struct drm_i915_private *i915, struct mm_struct *real)
> >  {
> > -       struct i915_mm_struct *mm;
> > +       struct i915_mm_struct *it, *mm = NULL;
> >
> > -       /* Protected by dev_priv->mm_lock */
> > -       hash_for_each_possible(dev_priv->mm_structs, mm, node, (unsigned long)real)
> > -               if (mm->mm == real)
> > -                       return mm;
> > +       rcu_read_lock();
> > +       hash_for_each_possible(i915->mm_structs, it, node, (unsigned long)real)
> > +               if (it->mm == real && kref_get_unless_zero(&it->kref)) {
> > +                       mm = it;
> > +                       break;
> > +               }
> > +       rcu_read_unlock();
> >
> > -       return NULL;
> > +       return mm;
> >  }
> >
> >  static int
> >  i915_gem_userptr_init__mm_struct(struct drm_i915_gem_object *obj)
> >  {
> > -       struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
> > -       struct i915_mm_struct *mm;
> > +       struct drm_i915_private *i915 = to_i915(obj->base.dev);
> > +       struct i915_mm_struct *mm, *new;
> >         int ret = 0;
> >
> >         /* During release of the GEM object we hold the struct_mutex. This
> > @@ -330,39 +324,40 @@ i915_gem_userptr_init__mm_struct(struct drm_i915_gem_object *obj)
> >          * struct_mutex, i.e. we need to schedule a worker to do the clean
> >          * up.
> >          */
> > -       mutex_lock(&dev_priv->mm_lock);
> > -       mm = __i915_mm_struct_find(dev_priv, current->mm);
> > -       if (mm == NULL) {
> > -               mm = kmalloc(sizeof(*mm), GFP_KERNEL);
> > -               if (mm == NULL) {
> > -                       ret = -ENOMEM;
> > -                       goto out;
> > -               }
> > +       mm = __i915_mm_struct_find(i915, current->mm);
> 
> Is this really safe without the mm_lock, assuming concurrent
> hash_add/has_del with hash_for_each?

Hmm, not quite. There's hash_add_rcu, hash_del_rcu,
hash_for_each_possible_rcu, to ensure the write ordering is safe for the
concurrent readers. Good catch.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
