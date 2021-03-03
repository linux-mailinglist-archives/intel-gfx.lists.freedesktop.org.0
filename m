Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0208532BF35
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 00:34:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FCC16E419;
	Wed,  3 Mar 2021 23:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 403366E419
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 23:34:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 24004115-1500050 for multiple; Wed, 03 Mar 2021 23:33:58 +0000
MIME-Version: 1.0
In-Reply-To: <20210301193200.1369-14-daniele.ceraolospurio@intel.com>
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
 <20210301193200.1369-14-daniele.ceraolospurio@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 03 Mar 2021 23:33:58 +0000
Message-ID: <161481443892.25897.1729646055112462491@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 13/16] drm/i915/pxp: User interface for
 Protected buffer
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
Cc: Kondapally Kalyan <kalyan.kondapally@intel.com>,
 Huang Sean Z <sean.z.huang@intel.com>,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Daniele Ceraolo Spurio (2021-03-01 19:31:57)
> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> 
> This api allow user mode to create Protected buffers. Only contexts
> marked as protected are allowed to operate on protected buffers.
> 
> We only allow setting the flags at creation time.
> 
> All protected objects that have backing storage will be considered
> invalid when the session is destroyed and they won't be usable anymore.
> 
> This is a rework of the original code by Bommu Krishnaiah. I've
> authorship unchanged since significant chunks have not been modified.
> 
> v2: split context changes, fix defines and improve documentation (Chris),
>     add object invalidation logic
> 
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
> Cc: Kondapally Kalyan <kalyan.kondapally@intel.com>
> Cc: Gupta Anshuman <Anshuman.Gupta@intel.com>
> Cc: Huang Sean Z <sean.z.huang@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_create.c    | 27 +++++++++++--
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 10 +++++
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    |  6 +++
>  drivers/gpu/drm/i915/gem/i915_gem_object.h    | 12 ++++++
>  .../gpu/drm/i915/gem/i915_gem_object_types.h  | 13 ++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.c          | 40 +++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.h          | 13 ++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  5 +++
>  include/uapi/drm/i915_drm.h                   | 22 ++++++++++
>  9 files changed, 145 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> index 3ad3413c459f..d02e5938afbe 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> @@ -5,6 +5,7 @@
>  
>  #include "gem/i915_gem_ioctls.h"
>  #include "gem/i915_gem_region.h"
> +#include "pxp/intel_pxp.h"
>  
>  #include "i915_drv.h"
>  #include "i915_user_extensions.h"
> @@ -13,7 +14,8 @@ static int
>  i915_gem_create(struct drm_file *file,
>                 struct intel_memory_region *mr,
>                 u64 *size_p,
> -               u32 *handle_p)
> +               u32 *handle_p,
> +               u64 user_flags)
>  {
>         struct drm_i915_gem_object *obj;
>         u32 handle;
> @@ -35,12 +37,17 @@ i915_gem_create(struct drm_file *file,
>  
>         GEM_BUG_ON(size != obj->base.size);
>  
> +       obj->user_flags = user_flags;
> +
>         ret = drm_gem_handle_create(file, &obj->base, &handle);
>         /* drop reference from allocate - handle holds it now */
>         i915_gem_object_put(obj);
>         if (ret)
>                 return ret;
>  
> +       if (user_flags & I915_GEM_OBJECT_PROTECTED)
> +               intel_pxp_object_add(obj);
> +
>         *handle_p = handle;
>         *size_p = size;
>         return 0;
> @@ -89,11 +96,12 @@ i915_gem_dumb_create(struct drm_file *file,
>         return i915_gem_create(file,
>                                intel_memory_region_by_type(to_i915(dev),
>                                                            mem_type),
> -                              &args->size, &args->handle);
> +                              &args->size, &args->handle, 0);
>  }
>  
>  struct create_ext {
>         struct drm_i915_private *i915;
> +       unsigned long user_flags;
>  };
>  
>  static int __create_setparam(struct drm_i915_gem_object_param *args,
> @@ -104,6 +112,19 @@ static int __create_setparam(struct drm_i915_gem_object_param *args,
>                 return -EINVAL;
>         }
>  
> +       switch (lower_32_bits(args->param)) {
> +       case I915_OBJECT_PARAM_PROTECTED_CONTENT:
> +               if (!intel_pxp_is_enabled(&ext_data->i915->gt.pxp))
> +                       return -ENODEV;
> +               if (args->size) {
> +                       return -EINVAL;
> +               } else if (args->data) {
> +                       ext_data->user_flags |= I915_GEM_OBJECT_PROTECTED;
> +                       return 0;
> +               }
> +       break;
> +       }
> +
>         return -EINVAL;
>  }
>  
> @@ -148,5 +169,5 @@ i915_gem_create_ioctl(struct drm_device *dev, void *data,
>         return i915_gem_create(file,
>                                intel_memory_region_by_type(i915,
>                                                            INTEL_MEMORY_SYSTEM),
> -                              &args->size, &args->handle);
> +                              &args->size, &args->handle, ext_data.user_flags);
>  }
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index e503c9f789c0..d10c4fcb6aec 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -20,6 +20,7 @@
>  #include "gt/intel_gt_buffer_pool.h"
>  #include "gt/intel_gt_pm.h"
>  #include "gt/intel_ring.h"
> +#include "pxp/intel_pxp.h"
>  
>  #include "pxp/intel_pxp.h"
>  

> @@ -120,6 +123,9 @@ static void i915_gem_close_object(struct drm_gem_object *gem, struct drm_file *f
>         struct i915_lut_handle *lut, *ln;
>         LIST_HEAD(close);
>  
> +       if (i915_gem_object_has_valid_protection(obj))
> +               intel_pxp_object_remove(obj);

This is called once for every handle in every fd, so a shared object will
be closed multiple times.

> @@ -500,6 +501,15 @@ eb_validate_vma(struct i915_execbuffer *eb,
>                      entry->offset != gen8_canonical_addr(entry->offset & I915_GTT_PAGE_MASK)))
>                 return -EINVAL;
>  

> +       if (i915_gem_object_is_protected(vma->obj)) {

Oh no, please not more cacheline to chase. Look to the vma. That also
helps with the problem of shared objects as you can check the closure of
the lut (i.e. the local reference of whether the protected vma is being used).

The bigger question is why though. This is to prevent reuse of protected
buffers in a new protected content context (because the earlier
invalidate would kill the previous context). In which case, you would
only need to do this check on new handles used by this context.

That also puts it in the position where the vma->obj has to be chased
anyway.

> +               if (!intel_pxp_is_active(&vma->vm->gt->pxp))
> +                       return -ENODEV;
> +               if (!i915_gem_object_has_valid_protection(vma->obj))
> +                       return -EIO;
> +               if (!i915_gem_context_can_use_protected_content(eb->gem_context))
> +                       return -EPERM;
> +       }


> +int intel_pxp_object_add(struct drm_i915_gem_object *obj)
> +{
> +       struct intel_pxp *pxp = &to_i915(obj->base.dev)->gt.pxp;
> +
> +       if (!intel_pxp_is_enabled(pxp))
> +               return -ENODEV;
> +
> +       if (!list_empty(&obj->pxp_link))
> +               return -EEXIST;
> +
> +       spin_lock_irq(&pxp->lock);
> +       list_add(&obj->pxp_link, &pxp->protected_objects);
> +       spin_unlock_irq(&pxp->lock);
> +
> +       return 0;
> +}
> +
> +void intel_pxp_object_remove(struct drm_i915_gem_object *obj)
> +{
> +       struct intel_pxp *pxp = &to_i915(obj->base.dev)->gt.pxp;
> +
> +       if (!intel_pxp_is_enabled(pxp))
> +               return;
> +
> +       spin_lock_irq(&pxp->lock);
> +       list_del_init(&obj->pxp_link);
> +       spin_unlock_irq(&pxp->lock);
> +}
> +
>  void intel_pxp_invalidate(struct intel_pxp *pxp)
>  {
>         struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
> +       struct drm_i915_gem_object *obj, *tmp;
>         struct i915_gem_context *ctx, *cn;
>  
> +       /* delete objects that have been used with the invalidated session */
> +       spin_lock_irq(&pxp->lock);
> +       list_for_each_entry_safe(obj, tmp, &pxp->protected_objects, pxp_link) {
> +               if (i915_gem_object_has_pages(obj))
> +                       list_del_init(&obj->pxp_link);
> +       }
> +       spin_unlock_irq(&pxp->lock);

pxp->lock is never used from irq context.

> @@ -28,6 +30,9 @@ struct intel_pxp {
>         struct work_struct irq_work;
>         bool irq_enabled;
>         u32 current_events; /* protected with gt->irq_lock */
> +
> +       struct spinlock lock;

struct spinlock is the odd one where spinlock_t is the preferred form.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
