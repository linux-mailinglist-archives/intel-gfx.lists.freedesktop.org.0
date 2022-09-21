Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B190E5BFA99
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 11:17:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF74D10E3E5;
	Wed, 21 Sep 2022 09:17:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01F8210E3E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 09:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663751866; x=1695287866;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=3P1rsDwJRlyX3F3EnNei/qY2bGu7t+g2RpfK1fvvhFU=;
 b=NV5/X4pZnVNpGwZejDvgoz1zpS4dwAr6ooUDBQ+bAbj9rDyEnZ37uzZU
 7c6LY2Ku5MmFl4czXXHoAypfi0PE3YCXpaFWsDVLTcISOjPXv7jP4Iwbv
 TGYx1Dej82BNk7lqzMCzfdsyImjAUlICQllbypj+Dv+5uV+nl0oUDHcoo
 kesgJ/jCKrqzmEzm+mExnqgP+ps587a063vUDY5ShVd+Eoidp5bmlJjXJ
 2cnlH7YbF5DCdXncH39eSCl+mlAKzz1iFZGuyeexTZ6WMWQUMicUCgQEE
 SA0oa+MV7ONVKoxsMWe7lcmWywzq2zz8O6kjYsVKDAYcO9b6msoO+9o24 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="300788992"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="300788992"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 02:17:45 -0700
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="761675334"
Received: from kmagui2x-mobl.ger.corp.intel.com (HELO [10.252.17.178])
 ([10.252.17.178])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 02:17:43 -0700
Message-ID: <16d534cf-935b-abbb-bcbe-36068354ad81@intel.com>
Date: Wed, 21 Sep 2022 10:17:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.1
Content-Language: en-GB
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 Matthew Auld <matthew.william.auld@gmail.com>
References: <20220913152714.16541-1-anshuman.gupta@intel.com>
 <20220913152714.16541-3-anshuman.gupta@intel.com>
 <CAM0jSHNrmFeYADNHY1sK+p4vcJ6pCuLFKqq-+tQMM399R10b4g@mail.gmail.com>
 <CY5PR11MB62117AE3AFE5DAF6D7573EAB954F9@CY5PR11MB6211.namprd11.prod.outlook.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <CY5PR11MB62117AE3AFE5DAF6D7573EAB954F9@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v5 2/2] drm/i915/dgfx: Release mmap on rpm
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
 Rodrigo" <rodrigo.vivi@intel.com>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21/09/2022 06:29, Gupta, Anshuman wrote:
> 
> 
>> -----Original Message-----
>> From: Matthew Auld <matthew.william.auld@gmail.com>
>> Sent: Tuesday, September 20, 2022 7:30 PM
>> To: Gupta, Anshuman <anshuman.gupta@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org; chris@chris-wilson.co.uk; Auld, Matthew
>> <matthew.auld@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
>> Subject: Re: [Intel-gfx] [PATCH v5 2/2] drm/i915/dgfx: Release mmap on rpm
>> suspend
>>
>> On Tue, 13 Sept 2022 at 16:27, Anshuman Gupta <anshuman.gupta@intel.com>
>> wrote:
>>>
>>> Release all mmap mapping for all lmem objects which are associated
>>> with userfault such that, while pcie function in D3hot, any access to
>>> memory mappings will raise a userfault.
>>>
>>> Runtime resume the dgpu(when gem object lies in lmem).
>>> This will transition the dgpu graphics function to D0 state if it was
>>> in D3 in order to access the mmap memory mappings.
>>>
>>> v2:
>>> - Squashes the patches. [Matt Auld]
>>> - Add adequate locking for lmem_userfault_list addition. [Matt Auld]
>>> - Reused obj->userfault_count to avoid double addition. [Matt Auld]
>>> - Added i915_gem_object_lock to check
>>>    i915_gem_object_is_lmem. [Matt Auld]
>>>
>>> v3:
>>> - Use i915_ttm_cpu_maps_iomem. [Matt Auld]
>>> - Fix 'ret == 0 to ret == VM_FAULT_NOPAGE'. [Matt Auld]
>>> - Reuse obj->userfault_count as a bool 0 or 1. [Matt Auld]
>>> - Delete the mmaped obj from lmem_userfault_list in obj
>>>    destruction path. [Matt Auld]
>>> - Get a wakeref for object destruction patch. [Matt Auld]
>>> - Use intel_wakeref_auto to delay runtime PM. [Matt Auld]
>>>
>>> v4:
>>> - Avoid using mmo offset to get the vma_node. [Matt Auld]
>>> - Added comment to use the lmem_userfault_lock. [Matt Auld]
>>> - Get lmem_userfault_lock in i915_gem_object_release_mmap_offset.
>>>    [Matt Auld]
>>> - Fixed kernel test robot generated warning.
>>>
>>> v5:
>>> - Addressed the cosmetics comments. [Andi]
>>> - Changed i915_gem_runtime_pm_object_release_mmap_offset() name to
>>>    i915_gem_object_runtime_pm_release_mmap_offset() to be rhythmic.
>>>
>>> PCIe Specs 5.3.1.4.1
>>>
>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6331
>>> Cc: Matthew Auld <matthew.auld@intel.com>
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 21 +++++++++++
>>>   drivers/gpu/drm/i915/gem/i915_gem_mman.h      |  1 +
>>>   drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
>>>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
>>>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 36 +++++++++++++++++--
>>>   drivers/gpu/drm/i915/gt/intel_gt.c            |  2 ++
>>>   drivers/gpu/drm/i915/gt/intel_gt_types.h      | 14 ++++++++
>>>   drivers/gpu/drm/i915/i915_gem.c               |  4 +++
>>>   8 files changed, 79 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>> b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>> index b55befda3387..73d9eda1d6b7 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>> @@ -550,6 +550,20 @@ void i915_gem_object_release_mmap_gtt(struct
>> drm_i915_gem_object *obj)
>>>          intel_runtime_pm_put(&i915->runtime_pm, wakeref);  }
>>>
>>> +void i915_gem_object_runtime_pm_release_mmap_offset(struct
>>> +drm_i915_gem_object *obj) {
>>> +       struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
>>> +       struct ttm_device *bdev = bo->bdev;
>>> +
>>> +       drm_vma_node_unmap(&bo->base.vma_node, bdev->dev_mapping);
>>> +
>>> +       if (obj->userfault_count) {
>>> +               /* rpm wakeref provide exclusive access */
>>> +               list_del(&obj->userfault_link);
>>> +               obj->userfault_count = 0;
>>> +       }
>>> +}
>>> +
>>>   void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object
>>> *obj)  {
>>>          struct i915_mmap_offset *mmo, *mn; @@ -573,6 +587,13 @@ void
>>> i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
>>>                  spin_lock(&obj->mmo.lock);
>>>          }
>>>          spin_unlock(&obj->mmo.lock);
>>> +
>>> +       if (obj->userfault_count) {
>>> +               mutex_lock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
>>> +               list_del(&obj->userfault_link);
>>> +               mutex_unlock(&to_gt(to_i915(obj->base.dev))-
>>> lmem_userfault_lock);
>>> +               obj->userfault_count = 0;
>>> +       }
>>
>> Sorry for the late reply, I was out last week. This looks like it's missing holding
>> the runtime pm AFAICT. We are holding the runtime pm for object destruction,
>> but this is also called when a move is triggered (very common). If so, this can
>> race against the runtime pm also touching the list concurrently. We are chasing
>> some crazy looking NULL deref bugs, so wondering if this is somehow related...
> Yes it is called from  i915_ttm_move_notify(),  I missed it thinking of __i915_gem_object_pages_fini
> Would be sufficient to protect against runtime PM.
> Having said that, it ok to remove the wakeref from i915_ttm_delete_mem_notify and having only
> in one place in i915_gem_object_release_mmap_offset ?
> If that is the case then is it safer to use the i915_gem_object_is_lmem() or we should use
> i915_ttm_cpu_maps_iomem() here ?

Yeah, maybe we should just throw this into i915_ttm_unmap_virtual(). 
Something like:

  static void i915_ttm_unmap_virtual(struct drm_i915_gem_object *obj)
  {
+       struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
+       struct ttm_device *bdev = bo->bdev;
+
+       assert_object_held_shared(obj);
+
+       if (i915_ttm_cpu_maps_iomem(bo->resource)) {
+               wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+               /** XXX: make this a spin lock */
+               mutex_lock(&i915->lmem_userfault_lock);
+
+               if (obj->userfault_count) {
+                       list_del(&obj->userfault_link);
+                       obj->userfault_count = 0;
+               }
+
+               mutex_unlock(&i915->lmem_userfault_lock);
+               intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+       }
+
         ttm_bo_unmap_virtual(i915_gem_to_ttm(obj));
  }

That should cover object destruction, and any kind of move, I think.

Also it looks like obj->userfault_count is actually protected by the 
object lock + runtime pm ref, when outside runtime suspend (at least for 
the lmem case), so some kernel doc for that would be nice.

And then in i915_gem_object_runtime_pm_release_mmap_offset:

-       if (obj->userfault_count) {
-               /* rpm wakeref provide exclusive access */
-               list_del(&obj->userfault_link);
-               obj->userfault_count = 0;
-       }
+       /*
+        * We have exclusive access here via runtime suspend. All other 
callers
+        * must first be holding the runtime pm.
+        */
+       GEM_BUG_ON(!obj->userfault_count);
+       list_del(&obj->userfault_link);
+       obj->userfault_count = 0;
  }

Also see the comment about maybe using spinlock.

> 
> Br,
> Anshuman Gupta.
>>
>>>   }
>>>
>>>   static struct i915_mmap_offset *
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.h
>>> b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
>>> index efee9e0d2508..1fa91b3033b3 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.h
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
>>> @@ -27,6 +27,7 @@ int i915_gem_dumb_mmap_offset(struct drm_file
>>> *file_priv,  void __i915_gem_object_release_mmap_gtt(struct
>>> drm_i915_gem_object *obj);  void
>>> i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
>>>
>>> +void i915_gem_object_runtime_pm_release_mmap_offset(struct
>>> +drm_i915_gem_object *obj);
>>>   void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object
>>> *obj);
>>>
>>>   #endif
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c
>>> b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>>> index 85482a04d158..7ff9c7877bec 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>>> @@ -238,7 +238,7 @@ static void __i915_gem_object_free_mmaps(struct
>>> drm_i915_gem_object *obj)  {
>>>          /* Skip serialisation and waking the device if known to be not
>>> used. */
>>>
>>> -       if (obj->userfault_count)
>>> +       if (obj->userfault_count && !IS_DGFX(to_i915(obj->base.dev)))
>>>                  i915_gem_object_release_mmap_gtt(obj);
>>>
>>>          if (!RB_EMPTY_ROOT(&obj->mmo.offsets)) { diff --git
>>> a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>>> b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>>> index 9f6b14ec189a..40305e2bcd49 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>>> @@ -298,7 +298,8 @@ struct drm_i915_gem_object {
>>>          };
>>>
>>>          /**
>>> -        * Whether the object is currently in the GGTT mmap.
>>> +        * Whether the object is currently in the GGTT or any other supported
>>> +        * fake offset mmap backed by lmem.
>>>           */
>>>          unsigned int userfault_count;
>>>          struct list_head userfault_link; diff --git
>>> a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> index f64a3deb12fc..0544b0a4a43a 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> @@ -509,9 +509,18 @@ static int i915_ttm_shrink(struct
>>> drm_i915_gem_object *obj, unsigned int flags)  static void
>>> i915_ttm_delete_mem_notify(struct ttm_buffer_object *bo)  {
>>>          struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
>>> +       intel_wakeref_t wakeref = 0;
>>>
>>>          if (likely(obj)) {
>>> +               /* ttm_bo_release() already has dma_resv_lock */
>>> +               if (i915_ttm_cpu_maps_iomem(bo->resource))
>>> +                       wakeref =
>>> + intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
>>> +
>>>                  __i915_gem_object_pages_fini(obj);
>>> +
>>> +               if (wakeref)
>>> +
>>> + intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, wakeref);
>>> +
>>>                  i915_ttm_free_cached_io_rsgt(obj);
>>>          }
>>>   }
>>> @@ -981,6 +990,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>>>          struct ttm_buffer_object *bo = area->vm_private_data;
>>>          struct drm_device *dev = bo->base.dev;
>>>          struct drm_i915_gem_object *obj;
>>> +       intel_wakeref_t wakeref = 0;
>>>          vm_fault_t ret;
>>>          int idx;
>>>
>>> @@ -1002,6 +1012,9 @@ static vm_fault_t vm_fault_ttm(struct vm_fault
>> *vmf)
>>>                  return VM_FAULT_SIGBUS;
>>>          }
>>>
>>> +       if (i915_ttm_cpu_maps_iomem(bo->resource))
>>> +               wakeref =
>>> + intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
>>> +
>>>          if (!i915_ttm_resource_mappable(bo->resource)) {
>>>                  int err = -ENODEV;
>>>                  int i;
>>> @@ -1023,7 +1036,8 @@ static vm_fault_t vm_fault_ttm(struct vm_fault
>> *vmf)
>>>                  if (err) {
>>>                          drm_dbg(dev, "Unable to make resource CPU accessible\n");
>>>                          dma_resv_unlock(bo->base.resv);
>>> -                       return VM_FAULT_SIGBUS;
>>> +                       ret = VM_FAULT_SIGBUS;
>>> +                       goto out_rpm;
>>>                  }
>>>          }
>>>
>>> @@ -1034,12 +1048,30 @@ static vm_fault_t vm_fault_ttm(struct vm_fault
>> *vmf)
>>>          } else {
>>>                  ret = ttm_bo_vm_dummy_page(vmf, vmf->vma->vm_page_prot);
>>>          }
>>> +
>>>          if (ret == VM_FAULT_RETRY && !(vmf->flags &
>> FAULT_FLAG_RETRY_NOWAIT))
>>> -               return ret;
>>> +               goto out_rpm;
>>> +
>>> +       /* ttm_bo_vm_reserve() already has dma_resv_lock */
>>> +       if (ret == VM_FAULT_NOPAGE && wakeref && !obj->userfault_count) {
>>> +               obj->userfault_count = 1;
>>> +               mutex_lock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
>>> +               list_add(&obj->userfault_link, &to_gt(to_i915(obj->base.dev))-
>>> lmem_userfault_list);
>>> +               mutex_unlock(&to_gt(to_i915(obj->base.dev))-
>>> lmem_userfault_lock);
>>> +       }
>>> +
>>> +       if (wakeref & CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
>>> +               intel_wakeref_auto(&to_gt(to_i915(obj->base.dev))-
>>> userfault_wakeref,
>>> +
>>> +
>> msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
>>>
>>>          i915_ttm_adjust_lru(obj);
>>>
>>>          dma_resv_unlock(bo->base.resv);
>>> +
>>> +out_rpm:
>>> +       if (wakeref)
>>> +
>>> +intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, wakeref);
>>> +
>>>          return ret;
>>>   }
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
>>> b/drivers/gpu/drm/i915/gt/intel_gt.c
>>> index 07300b0a0873..d0b03a928b9a 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>>> @@ -40,6 +40,8 @@ void intel_gt_common_init_early(struct intel_gt *gt)
>>> {
>>>          spin_lock_init(gt->irq_lock);
>>>
>>> +       INIT_LIST_HEAD(&gt->lmem_userfault_list);
>>> +       mutex_init(&gt->lmem_userfault_lock);
>>>          INIT_LIST_HEAD(&gt->closed_vma);
>>>          spin_lock_init(&gt->closed_lock);
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>> b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>> index 0757d9577551..f19c2de77ff6 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>> @@ -141,6 +141,20 @@ struct intel_gt {
>>>          struct intel_wakeref wakeref;
>>>          atomic_t user_wakeref;
>>>
>>> +       /**
>>> +        *  Protects access to lmem usefault list.
>>> +        *  It is required, if we are outside of the runtime suspend path,
>>> +        *  access to @lmem_userfault_list requires always first grabbing the
>>> +        *  runtime pm, to ensure we can't race against runtime suspend.
>>> +        *  Once we have that we also need to grab @lmem_userfault_lock,
>>> +        *  at which point we have exclusive access.
>>> +        *  The runtime suspend path is special since it doesn't really hold any
>> locks,
>>> +        *  but instead has exclusive access by virtue of all other accesses
>> requiring
>>> +        *  holding the runtime pm wakeref.
>>> +        */
>>> +       struct mutex lmem_userfault_lock;
>>> +       struct list_head lmem_userfault_list;
>>> +
>>>          struct list_head closed_vma;
>>>          spinlock_t closed_lock; /* guards the list of closed_vma */
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_gem.c
>>> b/drivers/gpu/drm/i915/i915_gem.c index 3463dd795950..f18cc6270b2b
>>> 100644
>>> --- a/drivers/gpu/drm/i915/i915_gem.c
>>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>>> @@ -842,6 +842,10 @@ void i915_gem_runtime_suspend(struct
>> drm_i915_private *i915)
>>>                                   &to_gt(i915)->ggtt->userfault_list, userfault_link)
>>>                  __i915_gem_object_release_mmap_gtt(obj);
>>>
>>> +       list_for_each_entry_safe(obj, on,
>>> +                                &to_gt(i915)->lmem_userfault_list, userfault_link)
>>> +               i915_gem_object_runtime_pm_release_mmap_offset(obj);
>>> +
>>>          /*
>>>           * The fence will be lost when the device powers down. If any were
>>>           * in use by hardware (i.e. they are pinned), we should not be
>>> powering
>>> --
>>> 2.26.2
>>>
