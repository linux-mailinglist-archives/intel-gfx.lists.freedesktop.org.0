Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB22313CC8
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 19:10:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89FA16E99E;
	Mon,  8 Feb 2021 18:10:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B20136E99E
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 18:10:43 +0000 (UTC)
IronPort-SDR: 0LImNi+bDREsPHDB/1gQBY/xzNvq73bHAgtkmVYRaimMVCqdp1ojuUMNs6ou4ZD/AVmo1pZzgW
 p1JZDtcVv7UQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="180978697"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="180978697"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 10:10:43 -0800
IronPort-SDR: sd9kc6LEEM6LRJWnopPi61Chu8ajoluQriys1sGULg5y4waTjed0KVVQBSOpIXUoJXX3BKw9Ij
 JBArrx0UWH4A==
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="361505490"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.95.207])
 ([10.212.95.207])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 10:10:42 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
 <20210206020925.36729-13-daniele.ceraolospurio@intel.com>
 <161261432844.12021.1872231098873906090@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <f9d55baa-8652-3a7a-0082-c55e2ec869ca@intel.com>
Date: Mon, 8 Feb 2021 10:10:39 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <161261432844.12021.1872231098873906090@build.alporthouse.com>
Content-Language: en-US
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Huang Sean Z <sean.z.huang@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 2/6/2021 4:25 AM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2021-02-06 02:09:23)
>> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>>
>> This api allow user mode to create Protected buffer and context creation.
>> Only contexts created with the flag set are allowed to operate on
>> protected buffers.
>>
>> We only allow setting the flags at creation time; the context flag also
>> requires the context to be marked as unrecoverable.
>>
>> This is a rework + squash of the original code by Bommu Krishnaiah. I've
>> authorship unchanged since significant chunks have not been modified.
>>
>> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
>> Cc: Kondapally Kalyan <kalyan.kondapally@intel.com>
>> Cc: Gupta Anshuman <Anshuman.Gupta@intel.com>
>> Cc: Huang Sean Z <sean.z.huang@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_context.c   | 34 +++++++++++++++++++
>>   drivers/gpu/drm/i915/gem/i915_gem_context.h   |  6 ++++
>>   .../gpu/drm/i915/gem/i915_gem_context_types.h |  1 +
>>   drivers/gpu/drm/i915/gem/i915_gem_create.c    | 27 +++++++++++++--
>>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  9 +++++
>>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  5 +++
>>   drivers/gpu/drm/i915/pxp/intel_pxp.h          | 10 ++++++
>>   include/uapi/drm/i915_drm.h                   | 19 +++++++++++
>>   8 files changed, 108 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> index ecacfae8412d..d3d9b4578ba8 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> @@ -76,6 +76,8 @@
>>   #include "gt/intel_gpu_commands.h"
>>   #include "gt/intel_ring.h"
>>   
>> +#include "pxp/intel_pxp.h"
>> +
>>   #include "i915_drm_client.h"
>>   #include "i915_gem_context.h"
>>   #include "i915_globals.h"
>> @@ -2006,6 +2008,27 @@ static int set_priority(struct i915_gem_context *ctx,
>>          return 0;
>>   }
>>   
>> +static int set_protected(struct i915_gem_context *ctx,
>> +                        const struct drm_i915_gem_context_param *args)
>> +{
>> +       int ret = 0;
>> +
>> +       if (ctx->client) /* can't change this after creation! */
>> +               ret = -EEXIST;
>> +       else if (args->size)
>> +               ret = -EINVAL;
>> +       else if (i915_gem_context_is_recoverable(ctx))
>> +               ret = -EPERM;
>> +       else if (!intel_pxp_is_enabled(&ctx->i915->gt.pxp))
>> +               ret = -ENODEV;
> I like HW validity checks early. I think that gives a more consistent
> response.

Ok, will do it first.

>
>> +       else if (args->value)
>> +               set_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
>> +       else
>> +               clear_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
>> +
>> +       return ret;
>> +}
>> +
>>   static int ctx_setparam(struct drm_i915_file_private *fpriv,
>>                          struct i915_gem_context *ctx,
>>                          struct drm_i915_gem_context_param *args)
>> @@ -2045,6 +2068,8 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>>          case I915_CONTEXT_PARAM_RECOVERABLE:
>>                  if (args->size)
>>                          ret = -EINVAL;
>> +               else if (i915_gem_context_can_use_protected_content(ctx))
>> +                       ret = -EPERM;
>>                  else if (args->value)
>>                          i915_gem_context_set_recoverable(ctx);
>>                  else
>> @@ -2075,6 +2100,10 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>>                  ret = set_ringsize(ctx, args);
>>                  break;
>>   
>> +       case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
>> +               ret = set_protected(ctx, args);
>> +               break;
>> +
>>          case I915_CONTEXT_PARAM_BAN_PERIOD:
>>          default:
>>                  ret = -EINVAL;
>> @@ -2532,6 +2561,11 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
>>                  ret = get_ringsize(ctx, args);
>>                  break;
>>   
>> +       case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
>> +               args->size = 0;
>> +               args->value = i915_gem_context_can_use_protected_content(ctx);
> The getter should also report feature availability, i.e.
>
> if (!intel_pxp_is_enabled(&ctx->i915->gt.pxp))
> 	ret = -ENODEV;
> else
> 	args->value = i915_gem_context_can_use_protected_content(ctx);
>
> Stick it in a get_protected_content() so it can sit next to the setter.
>
> This allows userspace to do a feature query on an existing context (i.e.
> the default context) without having to create anything [else]. For
> example, that's useful for probing features sets once during screen setup.

ok

>> +               break;
>> +
>>          case I915_CONTEXT_PARAM_BAN_PERIOD:
>>          default:
>>                  ret = -EINVAL;
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
>> index b5c908f3f4f2..473bce972bb2 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
>> @@ -108,6 +108,12 @@ i915_gem_context_clear_user_engines(struct i915_gem_context *ctx)
>>          clear_bit(CONTEXT_USER_ENGINES, &ctx->flags);
>>   }
>>   
>> +static inline bool
>> +i915_gem_context_can_use_protected_content(const struct i915_gem_context *ctx)
>> +{
>> +       return test_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
>> +}
>> +
>>   /* i915_gem_context.c */
>>   void i915_gem_init__contexts(struct drm_i915_private *i915);
>>   
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
>> index 085f6a3735e8..1cab741983c9 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
>> @@ -130,6 +130,7 @@ struct i915_gem_context {
>>   #define UCONTEXT_BANNABLE              2
>>   #define UCONTEXT_RECOVERABLE           3
>>   #define UCONTEXT_PERSISTENCE           4
>> +#define UCONTEXT_PROTECTED             5
>>   
>>          /**
>>           * @flags: small set of booleans
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
>> index 3ad3413c459f..ac246b814a3a 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
>> @@ -5,6 +5,7 @@
>>   
>>   #include "gem/i915_gem_ioctls.h"
>>   #include "gem/i915_gem_region.h"
>> +#include "pxp/intel_pxp.h"
>>   
>>   #include "i915_drv.h"
>>   #include "i915_user_extensions.h"
>> @@ -13,7 +14,8 @@ static int
>>   i915_gem_create(struct drm_file *file,
>>                  struct intel_memory_region *mr,
>>                  u64 *size_p,
>> -               u32 *handle_p)
>> +               u32 *handle_p,
>> +               u64 user_flags)
>>   {
>>          struct drm_i915_gem_object *obj;
>>          u32 handle;
>> @@ -35,6 +37,8 @@ i915_gem_create(struct drm_file *file,
>>   
>>          GEM_BUG_ON(size != obj->base.size);
>>   
>> +       obj->user_flags = user_flags;
>> +
>>          ret = drm_gem_handle_create(file, &obj->base, &handle);
>>          /* drop reference from allocate - handle holds it now */
>>          i915_gem_object_put(obj);
>> @@ -89,11 +93,12 @@ i915_gem_dumb_create(struct drm_file *file,
>>          return i915_gem_create(file,
>>                                 intel_memory_region_by_type(to_i915(dev),
>>                                                             mem_type),
>> -                              &args->size, &args->handle);
>> +                              &args->size, &args->handle, 0);
>>   }
>>   
>>   struct create_ext {
>>          struct drm_i915_private *i915;
>> +       unsigned long user_flags;
>>   };
>>   
>>   static int __create_setparam(struct drm_i915_gem_object_param *args,
>> @@ -104,6 +109,17 @@ static int __create_setparam(struct drm_i915_gem_object_param *args,
>>                  return -EINVAL;
>>          }
>>   
>> +       switch (lower_32_bits(args->param)) {
>> +       case I915_PARAM_PROTECTED_CONTENT:
>> +               if (args->size) {
>> +                       return -EINVAL;
>> +               } else if (args->data) {
>> +                       ext_data->user_flags = args->data;
>> +                       return 0;
>> +               }
>> +       break;
>> +       }
>> +
>>          return -EINVAL;
>>   }
>>   
>> @@ -145,8 +161,13 @@ i915_gem_create_ioctl(struct drm_device *dev, void *data,
>>          if (ret)
>>                  return ret;
>>   
>> +       if (ext_data.user_flags & I915_BO_PROTECTED) {
>> +               if (!intel_pxp_is_enabled(&i915->gt.pxp))
>> +                       return -EINVAL;
>> +       }
>> +
>>          return i915_gem_create(file,
>>                                 intel_memory_region_by_type(i915,
>>                                                             INTEL_MEMORY_SYSTEM),
>> -                              &args->size, &args->handle);
>> +                              &args->size, &args->handle, ext_data.user_flags);
>>   }
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> index fe170186dd42..42e75d21f4d0 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -20,6 +20,7 @@
>>   #include "gt/intel_gt_buffer_pool.h"
>>   #include "gt/intel_gt_pm.h"
>>   #include "gt/intel_ring.h"
>> +#include "pxp/intel_pxp.h"
>>   
>>   #include "i915_drv.h"
>>   #include "i915_gem_clflush.h"
>> @@ -498,6 +499,14 @@ eb_validate_vma(struct i915_execbuffer *eb,
>>                       entry->offset != gen8_canonical_addr(entry->offset & I915_GTT_PAGE_MASK)))
>>                  return -EINVAL;
>>   
>> +
>> +       if (vma->obj->user_flags & I915_BO_PROTECTED) {
>> +               if (!intel_pxp_is_active(&vma->vm->gt->pxp))
>> +                       return -ENODEV;
> TOCTOU?

You mean PXP going inactive after this check? There is no way to prevent 
PXP going inactive at "inconvenient" times since the user can cause a 
termination action at any time (e.g. via display hotplug), this is just 
best effort for a properly behaved system. The HW ensures that the 
security is maintained, but there could be some corruption. I have a 
comment above intel_pxp_is_active to reflect this, I'll try to be a bit 
more eloquent with it.

>
>> +               if (!i915_gem_context_can_use_protected_content(eb->gem_context))
>> +                       return -EINVAL;
> There's no encryption keying to each context? Is more than one GEM
> context allowed to enable protected content on itself and so snoop?

No keying to context, PXP is a batch-level thing.

>
>> +       }
>> +
>>          /* pad_to_size was once a reserved field, so sanitize it */
>>          if (entry->flags & EXEC_OBJECT_PAD_TO_SIZE) {
>>                  if (unlikely(offset_in_page(entry->pad_to_size)))
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> index 0a1fdbac882e..9629b6b2e3d6 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> @@ -167,6 +167,11 @@ struct drm_i915_gem_object {
>>          } mmo;
>>   
>>          I915_SELFTEST_DECLARE(struct list_head st_link);
>> +       /**
>> +        * @user_flags: small set of booleans set by the user
>> +        */
>> +       unsigned long user_flags;
>> +#define I915_BO_PROTECTED     BIT(0)
>>   
>>          unsigned long flags;
>>   #define I915_BO_ALLOC_CONTIGUOUS BIT(0)
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> index dce7b1a23850..e5b5ae16b068 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> @@ -28,6 +28,16 @@ static inline bool intel_pxp_is_enabled(struct intel_pxp *pxp)
>>          return pxp->ce;
>>   }
>>   
>> +/*
>> + * Note: the HW state can change at any point due to user actions, so keep that
>> + * in mind when using the below check.
>> + */
>> +static inline bool intel_pxp_is_active(struct intel_pxp *pxp)
>> +{
>> +       return intel_pxp_is_enabled(pxp) && pxp->arb_is_in_play &&
>> +              !pxp->global_state_in_suspend;
> How about pxp makes it easy for us and sets pxp->active when all the
> conditions are true.
>
>> +}
>> +
>>   #ifdef CONFIG_DRM_I915_PXP
>>   void intel_pxp_init(struct intel_pxp *pxp);
>>   void intel_pxp_fini(struct intel_pxp *pxp);
>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>> index c5ed7680c252..982b7ec6da48 100644
>> --- a/include/uapi/drm/i915_drm.h
>> +++ b/include/uapi/drm/i915_drm.h
>> @@ -1716,6 +1716,15 @@ struct drm_i915_gem_context_param {
>>    * Default is 16 KiB.
>>    */
>>   #define I915_CONTEXT_PARAM_RINGSIZE    0xc
>> +
>> +/*
>> + * I915_CONTEXT_PARAM_PROTECTED_CONTENT:
>> + *
>> + * Enable usage of protected context with the context. This flag can only be
> First context here is content.
>
>> + * set at context creation time and, when set to true, must be preceded by
>> + * an explicit setting of I915_CONTEXT_PARAM_RECOVERABLE to false.
> For the errors we have that are unique to setting up the protected
> context, please list them.
>
>> + */
>> +#define I915_CONTEXT_PARAM_PROTECTED_CONTENT    0xd
>>   /* Must be kept compact -- no holes and well documented */
>>   
>>          __u64 value;
>> @@ -1735,6 +1744,16 @@ struct drm_i915_gem_object_param {
>>    */
>>   #define I915_OBJECT_PARAM  (1ull << 32)
>>   
>> +/*
>> + * I915_PARAM_PROTECTED_CONTENT:
>> + *
>> + * If set to true (1) buffer contents is expected to be protected by
>> + * PAVP encryption and requires decryption for scan out and processing.
>> + * Protected buffers can only be used in PAVP protected contexts.
>> + * A protected buffer may become invalid as a result of PAVP teardown.
>> + */
>> +#define I915_PARAM_PROTECTED_CONTENT  0x1
> Missing the OBJECT_PARAM namespace and bias. Missing the comment about
> not leaving gaps for internal abuse, and missing parameter 0.
>
> What happens if a protected object is used outside of a protected
> enclave, either by mistake or by buffer passing? Do we class that as an
> error, or leave it up to the HW? Details on protected buffer usage and
> if it changes the flow at all.

There is no way for i915 to detect buffer usage outside of an enclave 
given that the HW allows the same context to be used for both protected 
an non-protected work with batch-level selection. The check in the 
execbuf is to reduce the chance of that happening, but full security is 
enforced by the HW.

>
> For example you have added a couple of EINVAL, ENODEV checks. Those
> errors should be discussed as potential outcomes of enabling protected
> context.
>
> I think this is at least two patches, for the 2 new bits of uAPI that
> look like they can be introduced separately.

ok, will split into separate BO and context patches.

Daniele

> -Chris

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
