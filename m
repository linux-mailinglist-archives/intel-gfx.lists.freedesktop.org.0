Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F3B5A651F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 15:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BF1E10E0E2;
	Tue, 30 Aug 2022 13:40:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF58B10E0E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 13:40:14 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id br21so9816656lfb.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 06:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=UkisGanFMbGXatCz45NItKWbyQK+hKS6SPR+kx70Ku0=;
 b=kqhwY9Jl/pacXyKnQodwt13md9D387v/Rp+t3A9EBJ85M7ofFLti7Kfqb66uIWsjcN
 ykWSGhYGAked7xd6zcttboJYzrn8dg1IQ2WLPST/KW96sqi34DIB4r6EJYMs26h6g22o
 WiVdALhyim2LwrEz7fyHk4Hz7pTvC1uVM9TGv9Jufx3yw2A/wa71Yg+AEmg4CdLEduHm
 DPM+FJkHmQpP1bT/u4XJkS6GJ7pNt5DF5nGSrp80JL9IJOeq80gSLdRW6WmN56KuiA6i
 XR/sjNbTi9iOo/fojJIouB5afj4UvIwC3oHRB4yWV9swrD6UTLCJ6FMGQ8ZP2+VS0Je2
 /wGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=UkisGanFMbGXatCz45NItKWbyQK+hKS6SPR+kx70Ku0=;
 b=47W03us9vB0pI7Hvvf6qgVa5sOx/fSd8V/wEN1bucx8A6aADNCkB1/vvTBh+BG/jhz
 O9wJ09xBz15AXORTnoFC/QjAViz8jI4dnx0TN0gdXSuu1Z1t7mGEbn/YQDa2unoeJ2i7
 u6qZ+L8TEfEI+GJffEeB1DsGh/qcZ4SdCzX853xVw7KHsfhZcZmPNdOBNVNSOpR8LRmu
 o13OX/ZZWcj0km3I3Ys2GGBgPZy8xauzzJIINBmnDW3bibF9rnVJ+fLpLtTBJ1QQnMZQ
 HGz0yvNMWac2YGZZvnd3NYGI3eqJx9yBMS2yXwupSLT+ZpV5HTmDUKhoMDieEXUr6B5Y
 ekIg==
X-Gm-Message-State: ACgBeo3FP6pz4s+lxy4umAbgOIPHfgY2unQXlwbVrzA6mA2QYkltRqTC
 g9e8W4l87+ExDGYrEOKyL0JDy99eL/ZtYKrr73zcI7A4JpkjbT6R
X-Google-Smtp-Source: AA6agR7lgFwGO8mi0s+WOj0UtqI0m/5RxiouejqljxqmwGhOpCNLdwHmALPnlj8f+aUxLQbgc3EPHD2YUH+x12X7lRw=
X-Received: by 2002:a19:9149:0:b0:494:743d:d6b2 with SMTP id
 y9-20020a199149000000b00494743dd6b2mr2187694lfj.636.1661866812952; Tue, 30
 Aug 2022 06:40:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220825105409.6927-1-anshuman.gupta@intel.com>
 <20220825105409.6927-2-anshuman.gupta@intel.com>
 <efccc7fb-7532-a3e7-de07-7459b83011cc@intel.com>
 <CY5PR11MB6211B52EA9DC05ADE4318B3595769@CY5PR11MB6211.namprd11.prod.outlook.com>
In-Reply-To: <CY5PR11MB6211B52EA9DC05ADE4318B3595769@CY5PR11MB6211.namprd11.prod.outlook.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 30 Aug 2022 14:39:45 +0100
Message-ID: <CAM0jSHPqW5rFeALXu1DN=985FfD=LHCeTD5d7L+ipxE-PMYw1g@mail.gmail.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/dgfx: Release mmap on rpm
 suspend
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Auld, Matthew" <matthew.auld@intel.com>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 29 Aug 2022 at 12:15, Gupta, Anshuman <anshuman.gupta@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Auld, Matthew <matthew.auld@intel.com>
> Thanks Matt for reviewing this.
> > Sent: Friday, August 26, 2022 11:09 PM
> > To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: joonas.lahtinen@linux.intel.com; Vivi, Rodrigo <rodrigo.vivi@intel.com>;
> > Nilawar, Badal <badal.nilawar@intel.com>; chris@chris-wilson.co.uk
> > Subject: Re: [PATCH 1/1] drm/i915/dgfx: Release mmap on rpm suspend
> >
> > On 25/08/2022 11:54, Anshuman Gupta wrote:
> > > Release all mmap mapping for all lmem objects which are associated
> > > with userfault such that, while pcie function in D3hot, any access to
> > > memory mappings will raise a userfault.
> > >
> > > Runtime resume the dgpu(when gem object lies in lmem).
> > > This will transition the dgpu graphics function to D0 state if it was
> > > in D3 in order to access the mmap memory mappings.
> > >
> > > v2:
> > > - Squashes the patches. [Matt Auld]
> > > - Add adequate locking for lmem_userfault_list addition. [Matt Auld]
> > > - Reused obj->userfault_count to avoid double addition. [Matt Auld]
> > > - Added i915_gem_object_lock to check
> > >    i915_gem_object_is_lmem. [Matt Auld]
> > >
> > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6331
> >
> > Just double checking, this is needed for DG1 and DG2, right? Are there any BSpec
> > links we can add here?
> This is specific to all discrete products with respect to PCIe Spec Section 5.3.1.4.1
> I will add the PCIe specs link here.
> >
> > > Cc: Matthew Auld <matthew.auld@intel.com>
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > ---
> > >   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
> > >   drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 48 ++++++++++++++++---
> > >   drivers/gpu/drm/i915/gt/intel_gt.c            |  2 +
> > >   drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 ++
> > >   drivers/gpu/drm/i915/i915_gem.c               |  8 ++++
> > >   5 files changed, 57 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > > b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > > index 9f6b14ec189a..40305e2bcd49 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > > @@ -298,7 +298,8 @@ struct drm_i915_gem_object {
> > >     };
> > >
> > >     /**
> > > -    * Whether the object is currently in the GGTT mmap.
> > > +    * Whether the object is currently in the GGTT or any other supported
> > > +    * fake offset mmap backed by lmem.
> > >      */
> > >     unsigned int userfault_count;
> > >     struct list_head userfault_link;
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > index 5a5cf332d8a5..6532a634bd20 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > @@ -1014,12 +1014,29 @@ static void i915_ttm_delayed_free(struct
> > drm_i915_gem_object *obj)
> > >     ttm_bo_put(i915_gem_to_ttm(obj));
> > >   }
> > >
> > > +static intel_wakeref_t
> > > +i915_gem_ttm_get_lmem_obj_wakeref(struct drm_i915_gem_object *obj) {
> > > +   intel_wakeref_t wakeref = 0;
> > > +
> > > +   if (i915_gem_object_lock_interruptible(obj, NULL))
> > > +           return 0;
> > > +
> > > +   if (i915_gem_object_is_lmem(obj))
> > > +           wakeref =
> > > +intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
> > > +
> > > +   i915_gem_object_unlock(obj);
> > > +
> > > +   return wakeref;
> > > +}
> > > +
> > >   static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
> > >   {
> > >     struct vm_area_struct *area = vmf->vma;
> > >     struct ttm_buffer_object *bo = area->vm_private_data;
> > >     struct drm_device *dev = bo->base.dev;
> > >     struct drm_i915_gem_object *obj;
> > > +   intel_wakeref_t wakeref = 0;
> > >     vm_fault_t ret;
> > >     int idx;
> > >
> > > @@ -1027,18 +1044,23 @@ static vm_fault_t vm_fault_ttm(struct vm_fault
> > *vmf)
> > >     if (!obj)
> > >             return VM_FAULT_SIGBUS;
> > >
> > > +   wakeref = i915_gem_ttm_get_lmem_obj_wakeref(obj);
> >
> > We shouldn't drop the lock here (also failing to acquire the lock should be fatal),
> > since the object can in thoery transition to/from lmem inbetween dropping the
> > object lock here and re-acquiring it again below, which means we might skip
> > grabbing the wakeref here, but then later touch the list, if say it moves to lmem.
> By not releasing the lock there was a deadlock from ttm_bo_vm_reserve().

Right, so we should probably move the check under vm_reserve.

> >
> > > +
> > >     /* Sanity check that we allow writing into this object */
> > >     if (unlikely(i915_gem_object_is_readonly(obj) &&
> > > -                area->vm_flags & VM_WRITE))
> > > -           return VM_FAULT_SIGBUS;
> > > +                area->vm_flags & VM_WRITE)) {
> > > +           ret = VM_FAULT_SIGBUS;
> > > +           goto out_rpm;
> > > +   }
> > >
> > >     ret = ttm_bo_vm_reserve(bo, vmf); >     if (ret)
> > > -           return ret;
> > > +           goto out_rpm;
> > >
> > >     if (obj->mm.madv != I915_MADV_WILLNEED) {
> > >             dma_resv_unlock(bo->base.resv);
> > > -           return VM_FAULT_SIGBUS;
> > > +           ret = VM_FAULT_SIGBUS;
> > > +           goto out_rpm;
> > >     }
> > >
> > >     if (!i915_ttm_resource_mappable(bo->resource)) {
> > > @@ -1062,7 +1084,8 @@ static vm_fault_t vm_fault_ttm(struct vm_fault
> > *vmf)
> > >             if (err) {
> > >                     drm_dbg(dev, "Unable to make resource CPU
> > accessible\n");
> > >                     dma_resv_unlock(bo->base.resv);
> > > -                   return VM_FAULT_SIGBUS;
> > > +                   ret = VM_FAULT_SIGBUS;
> > > +                   goto out_rpm;
> > >             }
> > >     }
> > >
> > > @@ -1073,12 +1096,25 @@ static vm_fault_t vm_fault_ttm(struct vm_fault
> > *vmf)
> > >     } else {
> > >             ret = ttm_bo_vm_dummy_page(vmf, vmf->vma-
> > >vm_page_prot);
> > >     }
> > > +
> > > +   /* ttm_bo_vm_reserve() already has dma_resv_lock */
> > > +   if (!ret && i915_gem_object_is_lmem(obj) && !obj->userfault_count++)
> > {
> >
> > This might increment userfault_count more than once per mapping/object?
> > Is that intentional? I would have thought that with fault_ttm the
> > user_fault_count shouldn't ever be > 1 (there is no partial mmap here).
> I did not get this part,  the double addition for the object is possible only when ttm_fault will
> get called multiple times for an object ? In that case  isn't userfault_count would be > 1 ?

Right, if it gets mapped and then unmapped multiple times, then
userfault_count might be > 1. In i915_gem_runtime_suspend() we only
remove it from the list once userfault_count
is zero. Just wondering if there is more going on there? Since with
ttm_fault we can't partially mmap the object (unlike with GGTT mmap),
so there should only be one mapping per object, AFAIK.

>
> >
> > Also it look like ret == VM_FAULT_NOPAGE if all went well. Although it
> > also returns that if the wait was interrupted, but I don't think that
> > matters much.
> >
> > Maybe we can do something like:
> >
> > ret = ttm_bo_vm_reserve(bo..) /* locks the object for us */
> > ..
> >
> > wakeref = 0;
> > if (i915_ttm_cpu_maps_iomem(bo->resource))
> >     wakeref = intel_runtime_pm_get();
> >
> > if (drm_dev_enter(dev, &idx)) {
> > } else {
> > }
> >
> > if (ret == VM_FAULT_RETRY && !(vmf->flags & FAULT_FLAG_RETRY_NOWAIT))
> >    goto out_rpm;
> >
> > if (ret == VM_FAULT_NOPAGE && wakeref && !obj->userfault_count) {
> >    obj->userfault_count++; /* protected by wakeref */
> >    mutex_lock()
> >    list_add();
> >    mutex_unlock();
> > }
> >
> > ?
> Thanks for suggestion, I will implement it.
> >
> > AFAICT we are then still missing something for object destruction, to
> > ensure we remove the object from the list. Otherwise we can destroy the
> > object, and then at some later point i915_gem_runtime_suspend() runs and
> > will uaf on the list. I think the trick with GTT mmap is that it will
> > always grab the wakeref when unbinding the vma (like during object
> > destruction), and then it can safely remove the object from the list.
> > Perhaps we will need a similar trick anyway, since destroying the object
> > will likely require unbinding it, which will mean touching the
> > page-tables from the CPU, which are in lmem anyway. Do we maybe just
> > always grab the wakeref for dgpu? What do you think?
> With input from @rodrigo , we can't get permanent wakref as that will
> block the d3cold(it will burn the card power).

I meant just always grabbing during object destruction.

> How about deleting the object from the list in __i915_gem_object_free_mmaps() to handle the
> object destroy case ?

Yeah, something like that. Also note that if there is a bound vma
during object destruction, we will need to grab the runtime pm anyway,
since that will touch lmem from the CPU with the page-tables.

> If this approach is not scalable then probably we need to think over to get the wakref  on dGPU
> whenever any client is connected.
> I was also thinking in direct to limit the mmap mapping for lmem object by using a new mmap fake offset
> to limit the rpm suspend latency due to revoking and re-creation of mmap ?

Hmm, not sure I follow with the idea of using a new fake offset. Can
you share more info?

> >
> > Also on second thought it looks like we can't directly call
> > i915_gem_object_release_mmap_offset() from i915_gem_runtime_suspend(),
> > without then also holding the object lock for the ttm_mem_io_free(). But
> > I think it should be OK to just directly call
> > drm_vma_node_unmap(&bo->base.vma_node, ...) instead.
> >
> > Also, do you know if we need something like
> > CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND here?
> It is to induced additional delay before actual runtime pm triggers.
> Yeah it make sense to use that , I missed earlier to incorporate this comment.
> Thanks,
> Anshuman Gupta.
> >
> > > +           mutex_lock(&to_gt(to_i915(obj->base.dev))-
> > >lmem_userfault_lock);
> > > +           list_add(&obj->userfault_link, &to_gt(to_i915(obj->base.dev))-
> > >lmem_userfault_list);
> > > +           mutex_unlock(&to_gt(to_i915(obj->base.dev))-
> > >lmem_userfault_lock);
> > > +   }
> > > +
> > >     if (ret == VM_FAULT_RETRY && !(vmf->flags &
> > FAULT_FLAG_RETRY_NOWAIT))
> > > -           return ret;
> > > +           goto out_rpm;
> > >
> > >     i915_ttm_adjust_lru(obj);
> > >
> > >     dma_resv_unlock(bo->base.resv);
> > > +
> > > +out_rpm:
> > > +   if (wakeref)
> > > +           intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm,
> > wakeref);
> > > +
> > >     return ret;
> > >   }
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
> > b/drivers/gpu/drm/i915/gt/intel_gt.c
> > > index e4bac2431e41..63616ea198ca 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> > > @@ -39,6 +39,8 @@ static void __intel_gt_init_early(struct intel_gt *gt)
> > >   {
> > >     spin_lock_init(&gt->irq_lock);
> > >
> > > +   INIT_LIST_HEAD(&gt->lmem_userfault_list);
> > > +   mutex_init(&gt->lmem_userfault_lock);
> > >     INIT_LIST_HEAD(&gt->closed_vma);
> > >     spin_lock_init(&gt->closed_lock);
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > > index 4d56f7d5a3be..330e7531cf22 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > > @@ -132,6 +132,9 @@ struct intel_gt {
> > >     struct intel_wakeref wakeref;
> > >     atomic_t user_wakeref;
> > >
> > > +   struct mutex lmem_userfault_lock; /* Protects access to usefault list */
> > > +   struct list_head lmem_userfault_list;
> > > +
> > >     struct list_head closed_vma;
> > >     spinlock_t closed_lock; /* guards the list of closed_vma */
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_gem.c
> > b/drivers/gpu/drm/i915/i915_gem.c
> > > index 702e5b89be22..288dc7e231dc 100644
> > > --- a/drivers/gpu/drm/i915/i915_gem.c
> > > +++ b/drivers/gpu/drm/i915/i915_gem.c
> > > @@ -842,6 +842,14 @@ void i915_gem_runtime_suspend(struct
> > drm_i915_private *i915)
> > >                              &to_gt(i915)->ggtt->userfault_list,
> > userfault_link)
> > >             __i915_gem_object_release_mmap_gtt(obj);
> > >
> > > +   list_for_each_entry_safe(obj, on,
> > > +                            &to_gt(i915)->lmem_userfault_list,
> > userfault_link) {
> > > +           i915_gem_object_release_mmap_offset(obj);
> > > +
> > > +           if (!--obj->userfault_count)
> > > +                   list_del(&obj->userfault_link);
> > > +   }
> > > +
> > >     /*
> > >      * The fence will be lost when the device powers down. If any were
> > >      * in use by hardware (i.e. they are pinned), we should not be powering
