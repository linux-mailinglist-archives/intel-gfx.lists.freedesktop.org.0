Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7333A311D13
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 13:25:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 302936E2EF;
	Sat,  6 Feb 2021 12:25:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 033096E2EF
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Feb 2021 12:25:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23807485-1500050 for multiple; Sat, 06 Feb 2021 12:25:29 +0000
MIME-Version: 1.0
In-Reply-To: <20210206020925.36729-13-daniele.ceraolospurio@intel.com>
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
 <20210206020925.36729-13-daniele.ceraolospurio@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Sat, 06 Feb 2021 12:25:28 +0000
Message-ID: <161261432844.12021.1872231098873906090@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC 12/14] drm/i915/pxp: User interface for
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

Quoting Daniele Ceraolo Spurio (2021-02-06 02:09:23)
> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> 
> This api allow user mode to create Protected buffer and context creation.
> Only contexts created with the flag set are allowed to operate on
> protected buffers.
> 
> We only allow setting the flags at creation time; the context flag also
> requires the context to be marked as unrecoverable.
> 
> This is a rework + squash of the original code by Bommu Krishnaiah. I've
> authorship unchanged since significant chunks have not been modified.
> 
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
> Cc: Kondapally Kalyan <kalyan.kondapally@intel.com>
> Cc: Gupta Anshuman <Anshuman.Gupta@intel.com>
> Cc: Huang Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   | 34 +++++++++++++++++++
>  drivers/gpu/drm/i915/gem/i915_gem_context.h   |  6 ++++
>  .../gpu/drm/i915/gem/i915_gem_context_types.h |  1 +
>  drivers/gpu/drm/i915/gem/i915_gem_create.c    | 27 +++++++++++++--
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  9 +++++
>  .../gpu/drm/i915/gem/i915_gem_object_types.h  |  5 +++
>  drivers/gpu/drm/i915/pxp/intel_pxp.h          | 10 ++++++
>  include/uapi/drm/i915_drm.h                   | 19 +++++++++++
>  8 files changed, 108 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index ecacfae8412d..d3d9b4578ba8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -76,6 +76,8 @@
>  #include "gt/intel_gpu_commands.h"
>  #include "gt/intel_ring.h"
>  
> +#include "pxp/intel_pxp.h"
> +
>  #include "i915_drm_client.h"
>  #include "i915_gem_context.h"
>  #include "i915_globals.h"
> @@ -2006,6 +2008,27 @@ static int set_priority(struct i915_gem_context *ctx,
>         return 0;
>  }
>  
> +static int set_protected(struct i915_gem_context *ctx,
> +                        const struct drm_i915_gem_context_param *args)
> +{
> +       int ret = 0;
> +
> +       if (ctx->client) /* can't change this after creation! */
> +               ret = -EEXIST;
> +       else if (args->size)
> +               ret = -EINVAL;
> +       else if (i915_gem_context_is_recoverable(ctx))
> +               ret = -EPERM;
> +       else if (!intel_pxp_is_enabled(&ctx->i915->gt.pxp))
> +               ret = -ENODEV;

I like HW validity checks early. I think that gives a more consistent
response.

> +       else if (args->value)
> +               set_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
> +       else
> +               clear_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
> +
> +       return ret;
> +}
> +
>  static int ctx_setparam(struct drm_i915_file_private *fpriv,
>                         struct i915_gem_context *ctx,
>                         struct drm_i915_gem_context_param *args)
> @@ -2045,6 +2068,8 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>         case I915_CONTEXT_PARAM_RECOVERABLE:
>                 if (args->size)
>                         ret = -EINVAL;
> +               else if (i915_gem_context_can_use_protected_content(ctx))
> +                       ret = -EPERM;
>                 else if (args->value)
>                         i915_gem_context_set_recoverable(ctx);
>                 else
> @@ -2075,6 +2100,10 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>                 ret = set_ringsize(ctx, args);
>                 break;
>  
> +       case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
> +               ret = set_protected(ctx, args);
> +               break;
> +
>         case I915_CONTEXT_PARAM_BAN_PERIOD:
>         default:
>                 ret = -EINVAL;
> @@ -2532,6 +2561,11 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
>                 ret = get_ringsize(ctx, args);
>                 break;
>  
> +       case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
> +               args->size = 0;
> +               args->value = i915_gem_context_can_use_protected_content(ctx);

The getter should also report feature availability, i.e.

if (!intel_pxp_is_enabled(&ctx->i915->gt.pxp))
	ret = -ENODEV;
else
	args->value = i915_gem_context_can_use_protected_content(ctx);

Stick it in a get_protected_content() so it can sit next to the setter.

This allows userspace to do a feature query on an existing context (i.e.
the default context) without having to create anything [else]. For
example, that's useful for probing features sets once during screen setup.

> +               break;
> +
>         case I915_CONTEXT_PARAM_BAN_PERIOD:
>         default:
>                 ret = -EINVAL;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index b5c908f3f4f2..473bce972bb2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -108,6 +108,12 @@ i915_gem_context_clear_user_engines(struct i915_gem_context *ctx)
>         clear_bit(CONTEXT_USER_ENGINES, &ctx->flags);
>  }
>  
> +static inline bool
> +i915_gem_context_can_use_protected_content(const struct i915_gem_context *ctx)
> +{
> +       return test_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
> +}
> +
>  /* i915_gem_context.c */
>  void i915_gem_init__contexts(struct drm_i915_private *i915);
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index 085f6a3735e8..1cab741983c9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -130,6 +130,7 @@ struct i915_gem_context {
>  #define UCONTEXT_BANNABLE              2
>  #define UCONTEXT_RECOVERABLE           3
>  #define UCONTEXT_PERSISTENCE           4
> +#define UCONTEXT_PROTECTED             5
>  
>         /**
>          * @flags: small set of booleans
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> index 3ad3413c459f..ac246b814a3a 100644
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
> @@ -35,6 +37,8 @@ i915_gem_create(struct drm_file *file,
>  
>         GEM_BUG_ON(size != obj->base.size);
>  
> +       obj->user_flags = user_flags;
> +
>         ret = drm_gem_handle_create(file, &obj->base, &handle);
>         /* drop reference from allocate - handle holds it now */
>         i915_gem_object_put(obj);
> @@ -89,11 +93,12 @@ i915_gem_dumb_create(struct drm_file *file,
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
> @@ -104,6 +109,17 @@ static int __create_setparam(struct drm_i915_gem_object_param *args,
>                 return -EINVAL;
>         }
>  
> +       switch (lower_32_bits(args->param)) {
> +       case I915_PARAM_PROTECTED_CONTENT:
> +               if (args->size) {
> +                       return -EINVAL;
> +               } else if (args->data) {
> +                       ext_data->user_flags = args->data;
> +                       return 0;
> +               }
> +       break;
> +       }
> +
>         return -EINVAL;
>  }
>  
> @@ -145,8 +161,13 @@ i915_gem_create_ioctl(struct drm_device *dev, void *data,
>         if (ret)
>                 return ret;
>  
> +       if (ext_data.user_flags & I915_BO_PROTECTED) {
> +               if (!intel_pxp_is_enabled(&i915->gt.pxp))
> +                       return -EINVAL;
> +       }
> +
>         return i915_gem_create(file,
>                                intel_memory_region_by_type(i915,
>                                                            INTEL_MEMORY_SYSTEM),
> -                              &args->size, &args->handle);
> +                              &args->size, &args->handle, ext_data.user_flags);
>  }
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index fe170186dd42..42e75d21f4d0 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -20,6 +20,7 @@
>  #include "gt/intel_gt_buffer_pool.h"
>  #include "gt/intel_gt_pm.h"
>  #include "gt/intel_ring.h"
> +#include "pxp/intel_pxp.h"
>  
>  #include "i915_drv.h"
>  #include "i915_gem_clflush.h"
> @@ -498,6 +499,14 @@ eb_validate_vma(struct i915_execbuffer *eb,
>                      entry->offset != gen8_canonical_addr(entry->offset & I915_GTT_PAGE_MASK)))
>                 return -EINVAL;
>  
> +
> +       if (vma->obj->user_flags & I915_BO_PROTECTED) {
> +               if (!intel_pxp_is_active(&vma->vm->gt->pxp))
> +                       return -ENODEV;

TOCTOU?

> +               if (!i915_gem_context_can_use_protected_content(eb->gem_context))
> +                       return -EINVAL;

There's no encryption keying to each context? Is more than one GEM
context allowed to enable protected content on itself and so snoop?

> +       }
> +
>         /* pad_to_size was once a reserved field, so sanitize it */
>         if (entry->flags & EXEC_OBJECT_PAD_TO_SIZE) {
>                 if (unlikely(offset_in_page(entry->pad_to_size)))
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index 0a1fdbac882e..9629b6b2e3d6 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -167,6 +167,11 @@ struct drm_i915_gem_object {
>         } mmo;
>  
>         I915_SELFTEST_DECLARE(struct list_head st_link);
> +       /**
> +        * @user_flags: small set of booleans set by the user
> +        */
> +       unsigned long user_flags;
> +#define I915_BO_PROTECTED     BIT(0)
>  
>         unsigned long flags;
>  #define I915_BO_ALLOC_CONTIGUOUS BIT(0)
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index dce7b1a23850..e5b5ae16b068 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -28,6 +28,16 @@ static inline bool intel_pxp_is_enabled(struct intel_pxp *pxp)
>         return pxp->ce;
>  }
>  
> +/*
> + * Note: the HW state can change at any point due to user actions, so keep that
> + * in mind when using the below check.
> + */
> +static inline bool intel_pxp_is_active(struct intel_pxp *pxp)
> +{
> +       return intel_pxp_is_enabled(pxp) && pxp->arb_is_in_play &&
> +              !pxp->global_state_in_suspend;

How about pxp makes it easy for us and sets pxp->active when all the
conditions are true.

> +}
> +
>  #ifdef CONFIG_DRM_I915_PXP
>  void intel_pxp_init(struct intel_pxp *pxp);
>  void intel_pxp_fini(struct intel_pxp *pxp);
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index c5ed7680c252..982b7ec6da48 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1716,6 +1716,15 @@ struct drm_i915_gem_context_param {
>   * Default is 16 KiB.
>   */
>  #define I915_CONTEXT_PARAM_RINGSIZE    0xc
> +
> +/*
> + * I915_CONTEXT_PARAM_PROTECTED_CONTENT:
> + *
> + * Enable usage of protected context with the context. This flag can only be

First context here is content.

> + * set at context creation time and, when set to true, must be preceded by
> + * an explicit setting of I915_CONTEXT_PARAM_RECOVERABLE to false.

For the errors we have that are unique to setting up the protected
context, please list them.

> + */
> +#define I915_CONTEXT_PARAM_PROTECTED_CONTENT    0xd
>  /* Must be kept compact -- no holes and well documented */
>  
>         __u64 value;
> @@ -1735,6 +1744,16 @@ struct drm_i915_gem_object_param {
>   */
>  #define I915_OBJECT_PARAM  (1ull << 32)
>  
> +/*
> + * I915_PARAM_PROTECTED_CONTENT:
> + *
> + * If set to true (1) buffer contents is expected to be protected by
> + * PAVP encryption and requires decryption for scan out and processing.
> + * Protected buffers can only be used in PAVP protected contexts.
> + * A protected buffer may become invalid as a result of PAVP teardown.
> + */
> +#define I915_PARAM_PROTECTED_CONTENT  0x1

Missing the OBJECT_PARAM namespace and bias. Missing the comment about
not leaving gaps for internal abuse, and missing parameter 0.

What happens if a protected object is used outside of a protected
enclave, either by mistake or by buffer passing? Do we class that as an
error, or leave it up to the HW? Details on protected buffer usage and
if it changes the flow at all.

For example you have added a couple of EINVAL, ENODEV checks. Those
errors should be discussed as potential outcomes of enabling protected
context.

I think this is at least two patches, for the 2 new bits of uAPI that
look like they can be introduced separately.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
