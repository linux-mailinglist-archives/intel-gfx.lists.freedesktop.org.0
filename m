Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC193514B5
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 14:06:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5607E6E02A;
	Thu,  1 Apr 2021 12:06:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CB5A6E02A
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Apr 2021 12:06:19 +0000 (UTC)
IronPort-SDR: 0Gf8IdEAHuLoY3zNtkbCJYkKVdH9aASTUL74tmogW21sRsxDI5ibRfZv2+hkpZ075un5fYy6Tn
 HUKOoGGwhZmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="189997909"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="189997909"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 05:06:18 -0700
IronPort-SDR: JtiQIKY6ORfaNeoFOmU7DtR6z7zsIItn5J954srdcass8nqMagI8hX9B/A9le11P0EH9fhI58l
 P/ygwrIhCn8A==
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="419178996"
Received: from schulke-mobl1.ger.corp.intel.com (HELO [10.252.58.105])
 ([10.252.58.105])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 05:06:17 -0700
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
 <20210328225709.18541-12-daniele.ceraolospurio@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <f4867a8d-abc4-eb11-1406-1f5c4c843ff0@intel.com>
Date: Thu, 1 Apr 2021 15:06:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210328225709.18541-12-daniele.ceraolospurio@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 11/16] drm/i915/pxp: interface for
 marking contexts as using protected content
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 29/03/2021 01:57, Daniele Ceraolo Spurio wrote:
> Extra tracking and checks around protected objects, coming in a follow-up
> patch, will be enabled only for contexts that opt in. Contexts can only be
> marked as using protected content at creation time and they must be both
> bannable and not recoverable.
>
> When a PXP teardown occurs, all gem contexts marked this way that
> have been used at least once will be marked as invalid and all new
> submissions using them will be rejected. All intel contexts within the
> invalidated gem contexts will be marked banned.
> A new flag has been added to the RESET_STATS ioctl to report the
> invalidation to userspace.
>
> v2: split to its own patch and improve doc (Chris), invalidate contexts
> on teardown
>
> v3: improve doc, use -EACCES for execbuf fail (Chris), make protected
>      context flag not mandatory in protected object execbuf to avoid
>      abuse (Lionel)
>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   | 59 ++++++++++++++++++-
>   drivers/gpu/drm/i915/gem/i915_gem_context.h   | 18 ++++++
>   .../gpu/drm/i915/gem/i915_gem_context_types.h |  2 +
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 18 ++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp.c          | 48 +++++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp.h          |  1 +
>   drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |  3 +
>   include/uapi/drm/i915_drm.h                   | 26 ++++++++
>   8 files changed, 172 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index fd8ee52e17a4..f3fd302682bb 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -76,6 +76,8 @@
>   #include "gt/intel_gpu_commands.h"
>   #include "gt/intel_ring.h"
>   
> +#include "pxp/intel_pxp.h"
> +
>   #include "i915_gem_context.h"
>   #include "i915_globals.h"
>   #include "i915_trace.h"
> @@ -1972,6 +1974,40 @@ static int set_priority(struct i915_gem_context *ctx,
>   	return 0;
>   }
>   
> +static int set_protected(struct i915_gem_context *ctx,
> +			 const struct drm_i915_gem_context_param *args)
> +{
> +	int ret = 0;
> +
> +	if (!intel_pxp_is_enabled(&ctx->i915->gt.pxp))
> +		ret = -ENODEV;
> +	else if (ctx->file_priv) /* can't change this after creation! */
> +		ret = -EEXIST;
> +	else if (args->size)
> +		ret = -EINVAL;
> +	else if (!args->value)
> +		clear_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
> +	else if (i915_gem_context_is_recoverable(ctx) ||
> +		 !i915_gem_context_is_bannable(ctx))
> +		ret = -EPERM;
> +	else
> +		set_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
> +
> +	return ret;
> +}
> +
> +static int get_protected(struct i915_gem_context *ctx,
> +			 struct drm_i915_gem_context_param *args)
> +{
> +	if (!intel_pxp_is_enabled(&ctx->i915->gt.pxp))
> +		return -ENODEV;
> +
> +	args->size = 0;
> +	args->value = i915_gem_context_uses_protected_content(ctx);
> +
> +	return 0;
> +}
> +
>   static int ctx_setparam(struct drm_i915_file_private *fpriv,
>   			struct i915_gem_context *ctx,
>   			struct drm_i915_gem_context_param *args)
> @@ -2004,6 +2040,8 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>   			ret = -EPERM;
>   		else if (args->value)
>   			i915_gem_context_set_bannable(ctx);
> +		else if (i915_gem_context_uses_protected_content(ctx))
> +			ret = -EPERM; /* can't clear this for protected contexts */
>   		else
>   			i915_gem_context_clear_bannable(ctx);
>   		break;
> @@ -2011,10 +2049,12 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>   	case I915_CONTEXT_PARAM_RECOVERABLE:
>   		if (args->size)
>   			ret = -EINVAL;
> -		else if (args->value)
> -			i915_gem_context_set_recoverable(ctx);
> -		else
> +		else if (!args->value)
>   			i915_gem_context_clear_recoverable(ctx);
> +		else if (i915_gem_context_uses_protected_content(ctx))
> +			ret = -EPERM; /* can't set this for protected contexts */
> +		else
> +			i915_gem_context_set_recoverable(ctx);
>   		break;
>   
>   	case I915_CONTEXT_PARAM_PRIORITY:
> @@ -2041,6 +2081,10 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>   		ret = set_ringsize(ctx, args);
>   		break;
>   
> +	case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
> +		ret = set_protected(ctx, args);
> +		break;
> +
>   	case I915_CONTEXT_PARAM_BAN_PERIOD:
>   	default:
>   		ret = -EINVAL;
> @@ -2494,6 +2538,10 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
>   		ret = get_ringsize(ctx, args);
>   		break;
>   
> +	case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
> +		ret = get_protected(ctx, args);
> +		break;
> +
>   	case I915_CONTEXT_PARAM_BAN_PERIOD:
>   	default:
>   		ret = -EINVAL;
> @@ -2554,6 +2602,11 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
>   	args->batch_active = atomic_read(&ctx->guilty_count);
>   	args->batch_pending = atomic_read(&ctx->active_count);
>   
> +	/* re-use args->flags for output flags */
> +	args->flags = 0;
> +	if (i915_gem_context_invalidated(ctx))
> +		args->flags |= I915_CONTEXT_INVALIDATED;
> +
>   	ret = 0;
>   out:
>   	rcu_read_unlock();
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index b5c908f3f4f2..169d3fb49252 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -108,6 +108,24 @@ i915_gem_context_clear_user_engines(struct i915_gem_context *ctx)
>   	clear_bit(CONTEXT_USER_ENGINES, &ctx->flags);
>   }
>   
> +static inline bool
> +i915_gem_context_invalidated(const struct i915_gem_context *ctx)
> +{
> +	return test_bit(CONTEXT_INVALID, &ctx->flags);
> +}
> +
> +static inline void
> +i915_gem_context_set_invalid(struct i915_gem_context *ctx)
> +{
> +	set_bit(CONTEXT_INVALID, &ctx->flags);
> +}
> +
> +static inline bool
> +i915_gem_context_uses_protected_content(const struct i915_gem_context *ctx)
> +{
> +	return test_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
> +}
> +
>   /* i915_gem_context.c */
>   void i915_gem_init__contexts(struct drm_i915_private *i915);
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index 340473aa70de..a0f80475da05 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -134,6 +134,7 @@ struct i915_gem_context {
>   #define UCONTEXT_BANNABLE		2
>   #define UCONTEXT_RECOVERABLE		3
>   #define UCONTEXT_PERSISTENCE		4
> +#define UCONTEXT_PROTECTED		5
>   
>   	/**
>   	 * @flags: small set of booleans
> @@ -141,6 +142,7 @@ struct i915_gem_context {
>   	unsigned long flags;
>   #define CONTEXT_CLOSED			0
>   #define CONTEXT_USER_ENGINES		1
> +#define CONTEXT_INVALID			2
>   
>   	struct mutex mutex;
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 5964e67c7d36..72c2470fcfe6 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -21,6 +21,8 @@
>   #include "gt/intel_gt_pm.h"
>   #include "gt/intel_ring.h"
>   
> +#include "pxp/intel_pxp.h"
> +
>   #include "i915_drv.h"
>   #include "i915_gem_clflush.h"
>   #include "i915_gem_context.h"
> @@ -746,6 +748,11 @@ static int eb_select_context(struct i915_execbuffer *eb)
>   	if (unlikely(!ctx))
>   		return -ENOENT;
>   
> +	if (i915_gem_context_invalidated(ctx)) {
> +		i915_gem_context_put(ctx);
> +		return -EACCES;
> +	}
> +
>   	eb->gem_context = ctx;
>   	if (rcu_access_pointer(ctx->vm))
>   		eb->invalid_flags |= EXEC_OBJECT_NEEDS_GTT;
> @@ -2940,6 +2947,17 @@ eb_select_engine(struct i915_execbuffer *eb)
>   
>   	intel_gt_pm_get(ce->engine->gt);
>   
> +	if (i915_gem_context_uses_protected_content(eb->gem_context)) {
> +		err = intel_pxp_wait_for_arb_start(&ce->engine->gt->pxp);
> +		if (err)
> +			goto err;
> +
> +		if (i915_gem_context_invalidated(eb->gem_context)) {
> +			err = -EACCES;
> +			goto err;
> +		}
> +	}
> +
>   	if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
>   		err = intel_context_alloc_state(ce);
>   		if (err)
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 948b8153c8c9..cbc5249a1bf9 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -7,6 +7,7 @@
>   #include "intel_pxp_irq.h"
>   #include "intel_pxp_session.h"
>   #include "intel_pxp_tee.h"
> +#include "gem/i915_gem_context.h"
>   #include "gt/intel_context.h"
>   #include "i915_drv.h"
>   
> @@ -171,3 +172,50 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp)
>   
>   	intel_pxp_irq_disable(pxp);
>   }
> +
> +void intel_pxp_invalidate(struct intel_pxp *pxp)
> +{
> +	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
> +	struct i915_gem_context *ctx, *cn;
> +
> +	/* ban all contexts marked as protected */
> +	spin_lock_irq(&i915->gem.contexts.lock);
> +	list_for_each_entry_safe(ctx, cn, &i915->gem.contexts.list, link) {
> +		struct i915_gem_engines_iter it;
> +		struct intel_context *ce;
> +
> +		if (!kref_get_unless_zero(&ctx->ref))
> +			continue;
> +
> +		if (likely(!i915_gem_context_uses_protected_content(ctx)) ||
> +		    i915_gem_context_invalidated(ctx)) {
> +			i915_gem_context_put(ctx);
> +			continue;
> +		}
> +
> +		spin_unlock_irq(&i915->gem.contexts.lock);
> +
> +		/*
> +		 * Note that by the time we get here the HW keys are already
> +		 * long gone, so any batch using them that's already on the
> +		 * engines is very likely a lost cause (and it has probably
> +		 * already hung the engine). Therefore, we skip attempting to
> +		 * pull the running context out of the HW and we prioritize
> +		 * bringing the session back as soon as possible.
> +		 */
> +		for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
> +			/* only invalidate if at least one ce was allocated */
> +			if (test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
> +				intel_context_set_banned(ce);
> +				i915_gem_context_set_invalid(ctx);
> +			}
> +		}
> +		i915_gem_context_unlock_engines(ctx);
> +
> +		spin_lock_irq(&i915->gem.contexts.lock);
> +		list_safe_reset_next(ctx, cn, link);
> +		i915_gem_context_put(ctx);
> +	}
> +	spin_unlock_irq(&i915->gem.contexts.lock);
> +}
> +
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 074b3b980957..91c1a2056309 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -33,6 +33,7 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp);
>   
>   void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
>   int intel_pxp_wait_for_arb_start(struct intel_pxp *pxp);
> +void intel_pxp_invalidate(struct intel_pxp *pxp);
>   #else
>   static inline void intel_pxp_init(struct intel_pxp *pxp)
>   {
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> index ef7c891cef14..707c908acfcc 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> @@ -92,6 +92,9 @@ static int pxp_terminate_arb_session_and_global(struct intel_pxp *pxp)
>   	/* must mark termination in progress calling this function */
>   	GEM_WARN_ON(pxp->arb_is_valid);
>   
> +	/* invalidate protected objects */
> +	intel_pxp_invalidate(pxp);
> +
>   	/* terminate the hw sessions */
>   	ret = intel_pxp_terminate_session(pxp, ARB_SESSION);
>   	if (ret) {
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 3dcb8fe64ccd..7a2088eccc9f 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1695,6 +1695,26 @@ struct drm_i915_gem_context_param {
>    * Default is 16 KiB.
>    */
>   #define I915_CONTEXT_PARAM_RINGSIZE	0xc
> +
> +/*
> + * I915_CONTEXT_PARAM_PROTECTED_CONTENT:
> + *
> + * Mark that the context makes use of protected content, which will result
> + * in the context being invalidated when the protected content session is.
> + * This flag can only be set at context creation time and, when set to true,
> + * must be preceded by an explicit setting of I915_CONTEXT_PARAM_RECOVERABLE
> + * to false. This flag can't be set to true in conjunction with setting the
> + * I915_CONTEXT_PARAM_BANNABLE flag to false.
> + *
> + * Given the numerous restriction on this flag, there are several unique
> + * failure cases:
> + *
> + * -ENODEV: feature not available
> + * -EEXIST: trying to modify an existing context
> + * -EPERM: trying to mark a recoverable or not bannable context as protected
> + * -EACCES: submitting an invalidated context for execution


Should we also add at what point those error code apply?


-Lionel


> + */
> +#define I915_CONTEXT_PARAM_PROTECTED_CONTENT    0xd
>   /* Must be kept compact -- no holes and well documented */
>   
>   	__u64 value;
> @@ -1925,6 +1945,12 @@ struct drm_i915_reg_read {
>   struct drm_i915_reset_stats {
>   	__u32 ctx_id;
>   	__u32 flags;
> +	/*
> +	 * contexts marked as using protected content are invalidated when the
> +	 * protected content session dies. Submission of invalidated contexts
> +	 * is rejected with -EACCES.
> +	 */
> +#define I915_CONTEXT_INVALIDATED 0x1
>   
>   	/* All resets since boot/module reload, for all contexts */
>   	__u32 reset_count;


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
