Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4472532BF2B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 00:17:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3060D6E413;
	Wed,  3 Mar 2021 23:16:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E9156E413
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 23:16:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 24004063-1500050 for multiple; Wed, 03 Mar 2021 23:16:51 +0000
MIME-Version: 1.0
In-Reply-To: <20210301193200.1369-12-daniele.ceraolospurio@intel.com>
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
 <20210301193200.1369-12-daniele.ceraolospurio@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 03 Mar 2021 23:16:51 +0000
Message-ID: <161481341145.25897.4915487485777391734@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 11/16] drm/i915/pxp: interface for
 creation of protected contexts
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

Quoting Daniele Ceraolo Spurio (2021-03-01 19:31:55)
> Usage of protected objects, coming in a follow-up patch, will be
> restricted to protected contexts. Contexts can only be marked as
> protected at creation time and they must be both bannable and not
> recoverable.
> 
> When a PXP teardown occurs, all gem contexts marked as protected that
> have been used at least once will be marked as invalid and all new
> submissions using them will be rejected. All intel contexts within the
> invalidated gem contexts will be marked banned.
> A new flag has been added to the RESET_STATS ioctl to report the
> invalidation to userspace.
> 
> v2: split to its own patch and improve doc (Chris), invalidate contexts
> on teardown
> 
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   | 59 ++++++++++++++++++-
>  drivers/gpu/drm/i915/gem/i915_gem_context.h   | 18 ++++++
>  .../gpu/drm/i915/gem/i915_gem_context_types.h |  2 +
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 13 ++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.c          | 38 ++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.h          |  1 +
>  drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |  3 +
>  include/uapi/drm/i915_drm.h                   | 19 ++++++
>  8 files changed, 150 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index ca37d93ef5e7..19ac24a3c42c 100644
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
> @@ -2006,6 +2008,40 @@ static int set_priority(struct i915_gem_context *ctx,
>         return 0;
>  }
>  
> +static int set_protected(struct i915_gem_context *ctx,
> +                        const struct drm_i915_gem_context_param *args)
> +{
> +       int ret = 0;
> +
> +       if (!intel_pxp_is_enabled(&ctx->i915->gt.pxp))
> +               ret = -ENODEV;
> +       else if (ctx->client) /* can't change this after creation! */
> +               ret = -EEXIST;
> +       else if (args->size)
> +               ret = -EINVAL;
> +       else if (!args->value)
> +               clear_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
> +       else if (i915_gem_context_is_recoverable(ctx) ||
> +                !i915_gem_context_is_bannable(ctx))
> +               ret = -EPERM;
> +       else
> +               set_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
> +
> +       return ret;
> +}
> +
> +static int get_protected(struct i915_gem_context *ctx,
> +                        struct drm_i915_gem_context_param *args)
> +{
> +       if (!intel_pxp_is_enabled(&ctx->i915->gt.pxp))
> +               return -ENODEV;
> +
> +       args->size = 0;
> +       args->value = i915_gem_context_can_use_protected_content(ctx);
> +
> +       return 0;
> +}
> +
>  static int ctx_setparam(struct drm_i915_file_private *fpriv,
>                         struct i915_gem_context *ctx,
>                         struct drm_i915_gem_context_param *args)
> @@ -2038,6 +2074,8 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>                         ret = -EPERM;
>                 else if (args->value)
>                         i915_gem_context_set_bannable(ctx);
> +               else if (i915_gem_context_can_use_protected_content(ctx))
> +                       ret = -EPERM; /* can't clear this for protected contexts */
>                 else
>                         i915_gem_context_clear_bannable(ctx);
>                 break;
> @@ -2045,10 +2083,12 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>         case I915_CONTEXT_PARAM_RECOVERABLE:
>                 if (args->size)
>                         ret = -EINVAL;
> -               else if (args->value)
> -                       i915_gem_context_set_recoverable(ctx);
> -               else
> +               else if (!args->value)
>                         i915_gem_context_clear_recoverable(ctx);
> +               else if (i915_gem_context_can_use_protected_content(ctx))
> +                       ret = -EPERM; /* can't set this for protected contexts */
> +               else
> +                       i915_gem_context_set_recoverable(ctx);
>                 break;
>  
>         case I915_CONTEXT_PARAM_PRIORITY:
> @@ -2075,6 +2115,10 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
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
> @@ -2532,6 +2576,10 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
>                 ret = get_ringsize(ctx, args);
>                 break;
>  
> +       case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
> +               ret = get_protected(ctx, args);
> +               break;
> +
>         case I915_CONTEXT_PARAM_BAN_PERIOD:
>         default:
>                 ret = -EINVAL;
> @@ -2592,6 +2640,11 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
>         args->batch_active = atomic_read(&ctx->guilty_count);
>         args->batch_pending = atomic_read(&ctx->active_count);
>  
> +       /* re-use args->flags for output flags */
> +       args->flags = 0;
> +       if (i915_gem_context_invalidated(ctx))
> +               args->flags |= I915_CONTEXT_INVALIDATED;
> +
>         ret = 0;
>  out:
>         rcu_read_unlock();
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index b5c908f3f4f2..b04d4eeb0500 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -108,6 +108,24 @@ i915_gem_context_clear_user_engines(struct i915_gem_context *ctx)
>         clear_bit(CONTEXT_USER_ENGINES, &ctx->flags);
>  }
>  
> +static inline bool
> +i915_gem_context_invalidated(const struct i915_gem_context *ctx)
> +{
> +       return test_bit(CONTEXT_INVALID, &ctx->flags);
> +}
> +
> +static inline void
> +i915_gem_context_set_invalid(struct i915_gem_context *ctx)
> +{
> +       set_bit(CONTEXT_INVALID, &ctx->flags);
> +}
> +
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
> index d5bc75508048..79a87268b8da 100644
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
> @@ -137,6 +138,7 @@ struct i915_gem_context {
>         unsigned long flags;
>  #define CONTEXT_CLOSED                 0
>  #define CONTEXT_USER_ENGINES           1
> +#define CONTEXT_INVALID                        2
>  
>         struct mutex mutex;
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index fe170186dd42..e503c9f789c0 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -21,6 +21,8 @@
>  #include "gt/intel_gt_pm.h"
>  #include "gt/intel_ring.h"
>  
> +#include "pxp/intel_pxp.h"
> +
>  #include "i915_drv.h"
>  #include "i915_gem_clflush.h"
>  #include "i915_gem_context.h"
> @@ -726,6 +728,11 @@ static int eb_select_context(struct i915_execbuffer *eb)
>         if (unlikely(!ctx))
>                 return -ENOENT;
>  
> +       if (i915_gem_context_invalidated(ctx)) {
> +               i915_gem_context_put(ctx);
> +               return -EIO;
> +       }
> +
>         eb->gem_context = ctx;
>         if (rcu_access_pointer(ctx->vm))
>                 eb->invalid_flags |= EXEC_OBJECT_NEEDS_GTT;
> @@ -2761,6 +2768,12 @@ eb_select_engine(struct i915_execbuffer *eb)
>  
>         intel_gt_pm_get(ce->engine->gt);
>  
> +       if (i915_gem_context_can_use_protected_content(eb->gem_context)) {
> +               err = intel_pxp_wait_for_termination_completion(&ce->engine->gt->pxp);
> +               if (err)
> +                       goto err;

This should check for context_invalidated

> +       }
> +
>         if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
>                 err = intel_context_alloc_state(ce);
>                 if (err)
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 0ca1c2c16972..5912e4a12d94 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -6,6 +6,7 @@
>  #include "intel_pxp.h"
>  #include "intel_pxp_irq.h"
>  #include "intel_pxp_tee.h"
> +#include "gem/i915_gem_context.h"
>  #include "gt/intel_context.h"
>  #include "i915_drv.h"
>  
> @@ -135,3 +136,40 @@ int intel_pxp_wait_for_termination_completion(struct intel_pxp *pxp)
>         return ret;
>  }
>  
> +void intel_pxp_invalidate(struct intel_pxp *pxp)
> +{
> +       struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
> +       struct i915_gem_context *ctx, *cn;
> +
> +       /* ban all contexts marked as protected */
> +       spin_lock_irq(&i915->gem.contexts.lock);
> +       list_for_each_entry_safe(ctx, cn, &i915->gem.contexts.list, link) {
> +               struct i915_gem_engines_iter it;
> +               struct intel_context *ce;
> +
> +               if (!kref_get_unless_zero(&ctx->ref))
> +                       continue;
> +
> +               if (likely(!i915_gem_context_can_use_protected_content(ctx)))
> +                       continue;
> +
> +               if (i915_gem_context_invalidated(ctx))
> +                       continue;
> +
> +               spin_unlock_irq(&i915->gem.contexts.lock);
> +
> +               for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {

> +                       if (test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
> +                               intel_context_set_banned(ce);

That's a pair of unserialised operations. However, you can just set
banned before we even try to alloc. But at the moment, it's very
spurious to call intel_context_set_banned() as no action is performed to
flush the ban to the backend, and execbuf is primarily checking the GEM
context invalid bit. It looks a bit flimsy...

The impact of this loop would be to cancel all pending requests (but not
the inflight request), sounds like you should just call revoke_context
to remove the inflight context and pending requests from the HW.

> +                               i915_gem_context_set_invalid(ctx);
> +                       }
> +               }
> +               i915_gem_context_unlock_engines(ctx);
> +
> +               spin_lock_irq(&i915->gem.contexts.lock);
> +               list_safe_reset_next(ctx, cn, link);
> +               i915_gem_context_put(ctx);
> +       }
> +       spin_unlock_irq(&i915->gem.contexts.lock);

And then there's a race condition where we can create a new protect
context, submit an execbuf using the global session between the call to
intel_pxp_invalidate and terminate_session_and_global. That's covered by
irq_handler calling mark_termination_in_progress and execbuf waiting
for that termination to complete. Almost.

This will result in userspace context lost upon runtime suspend? That
can be quite catastrophic for the system...

> +}
> +
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 89cf66c9bef3..e36200833095 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -38,6 +38,7 @@ void intel_pxp_init(struct intel_pxp *pxp);
>  void intel_pxp_fini(struct intel_pxp *pxp);
>  
>  int intel_pxp_wait_for_termination_completion(struct intel_pxp *pxp);
> +void intel_pxp_invalidate(struct intel_pxp *pxp);
>  #else
>  static inline void intel_pxp_init(struct intel_pxp *pxp)
>  {
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> index bb981d38c2fe..527217b3db23 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> @@ -111,6 +111,9 @@ int intel_pxp_arb_terminate_session_with_global_terminate(struct intel_pxp *pxp)
>  
>         lockdep_assert_held(&pxp->mutex);
>  
> +       /* invalidate protected objects */
> +       intel_pxp_invalidate(pxp);
> +
>         /* terminate the hw sessions */
>         ret = intel_pxp_submit_session_termination(pxp, ARB_SESSION);
>         if (ret) {
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 56c6bfe6c2d0..0f5456046c4c 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1694,6 +1694,24 @@ struct drm_i915_gem_context_param {
>   * Default is 16 KiB.
>   */
>  #define I915_CONTEXT_PARAM_RINGSIZE    0xc
> +
> +/*
> + * I915_CONTEXT_PARAM_PROTECTED_CONTENT:
> + *
> + * Enable usage of protected content with the context. This flag can only be
> + * set at context creation time and, when set to true, must be preceded by
> + * an explicit setting of I915_CONTEXT_PARAM_RECOVERABLE to false. This flag
> + * can't be set to true in conjunction with setting the
> + * I915_CONTEXT_PARAM_BANNABLE flag to false.

I haven't seen any interaction with bannable here. Since you just ignore
the bannable flag.

> + *
> + * Given the numerous restriction on this flag, there are several unique 
> + * failure cases:
> + *
> + * -ENODEV: feature not available
> + * -EEXIST: trying to modify an existing context
> + * -EPERM: trying to mark a recoverable or not bannable context as protected

Also -EIO from execbuf. Do we want to pick EACCES?

> + */
> +#define I915_CONTEXT_PARAM_PROTECTED_CONTENT    0xd
>  /* Must be kept compact -- no holes and well documented */
>  
>         __u64 value;
> @@ -1924,6 +1942,7 @@ struct drm_i915_reg_read {
>  struct drm_i915_reset_stats {
>         __u32 ctx_id;
>         __u32 flags;
> +#define I915_CONTEXT_INVALIDATED 0x1

Mention the side effect for protected content contexts.

>  
>         /* All resets since boot/module reload, for all contexts */
>         __u32 reset_count;
> -- 
> 2.29.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
