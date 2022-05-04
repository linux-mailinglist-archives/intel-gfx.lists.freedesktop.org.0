Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF8B519E87
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 13:50:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D16910E4D8;
	Wed,  4 May 2022 11:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1EF510E4D8
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 11:50:11 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: alarumbe) with ESMTPSA id EA1731F40EA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651665008;
 bh=yzEcIQ6fzosARAFy2z3S848H7aBI4E8h6MXzSXLlPLA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BXN6a6C+KJWVSKV7gkbhs55N/x2ENyuXs2I9tBNmmK2cmlgvQDyMDX2xO1wzSU3h8
 zCm/EK60rjfbxzae0UQxdDjv44TIi1yMK1Xx2o/c6FOdwh/zCsj/ngf4EqMo7pD7sq
 VulgRxoZXWwYoNuITMKa4tZlbjqUXpwLFdrTRb7f6sUK8/3aV1CAa+Qy4VBe093IMw
 YtHeo6bteeDyk6A1d4XlRAXipSNs9cqIWZA8TmvCBD1/QAedf6eZzDgCggJxkgwmZT
 3UAvKMmObC3GKAvNTPgHl9SHRmAJ4NvjvM0G6ORDfwPmBE4T5Ae9ZCQb+FHMvT8kN/
 H74VKH0zsbo/A==
Date: Wed, 4 May 2022 12:50:05 +0100
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220504115005.y26ah4n6634l66iq@sobremesa>
References: <20220429151112.1041959-1-adrian.larumbe@collabora.com>
 <5953cea7-530b-3603-356d-09a537de8d98@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5953cea7-530b-3603-356d-09a537de8d98@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Change semantics of context
 isolation reporting to UM
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, Tvrtko

On 03.05.2022 15:44, Tvrtko Ursulin wrote:
> 
> Hi,
> 
> On 29/04/2022 16:11, Adrian Larumbe wrote:
> > I915_PARAM_HAS_CONTEXT_ISOLATION was already being used as a boolean by
> > both Iris and Vulkan , and stood for the guarantee that, when creating a
> > new context, all state set by it will not leak to any other context.
> > 
> > However the actual return value was a bitmask where every bit stood for an
> > initialised engine, and IGT test gem_ctx_isolation makes use of this mask
> > for deciding on the actual context engine isolation status.
> > 
> > However, we do not provide UAPI for IGT tests, so the value returned by the
> > PARAM ioctl has to reflect Mesa usage as a boolean.
> 
> a)
> I suggest splitting into two patches. One changes the semantics to boolean, second one changes it for RCS+CCS.
> 
> b)
> What about test coverage - both for platforms with RCS+CSS (media and blitter stop being tested - all coverage is gone basically) and also for pre Gen8 platforms, are there failures expected there? (Test will try to run on some engines which do not support isolation now, no?)

Do you mean IGT tests? I think gem_ctx_isolation.c has to be rewritten so that
the engine isolation status of the different devices is somehow hard-coded
into the test, perhaps something like the intel_device_info struct in the
kernel.

> This change only made sense after compute engine support was added to the
> driver in commit 944823c9463916dd53f3 ("drm/i915/xehp: Define compute class
> and engine") because no context isolation can be assumed on any device with
> both RCS annd CCS engines.

>Isn't it an arbitrary decision when thinking about other engine classes (media, blitter) on those platforms? Commit message should be clear in that respect.

I think the change was required because the addition of a CCS engine broke
pre-existing assumptions about engine context isolation, but only when
coexisting with an RCS engine in the same device. I wouldn't know about other
engines, but I'll ask around.

> Also, looking at iris:
> 
>    if (iris_getparam_integer(fd, I915_PARAM_HAS_CONTEXT_ISOLATION) <= 0) {
>       debug_error("Kernel is too old for Iris. Consider upgrading to kernel v4.16.\n");
>       return NULL;
>    }
> 
> Won't this make Iris fail on RCS+CCS platforms - or I need to look at a newer branch/pull request? What is the plan there?

Yes, I think I misread this code and didn't realise, when there isn't context
isolation, this snippet will fail. However, given the semantics of it, which I
glean from the error message between the brackets, I'd say context isolation not
being present shouldn't cause it to fail. So I guess it could be rewritten as

    if (iris_getparam_integer(fd, I915_PARAM_HAS_CONTEXT_ISOLATION) < 0) {

> Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_user.c | 13 ++++++++++++-
>   drivers/gpu/drm/i915/gt/intel_engine_user.h |  1 +
>   drivers/gpu/drm/i915/i915_drm_client.h      |  2 +-
>   drivers/gpu/drm/i915/i915_getparam.c        |  2 +-
>   include/uapi/drm/i915_drm.h                 | 14 +++-----------
>   5 files changed, 18 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> index 0f6cd96b459f..2d6bd36d6150 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> @@ -47,7 +47,7 @@ static const u8 uabi_classes[] = {
>   	[COPY_ENGINE_CLASS] = I915_ENGINE_CLASS_COPY,
>   	[VIDEO_DECODE_CLASS] = I915_ENGINE_CLASS_VIDEO,
>   	[VIDEO_ENHANCEMENT_CLASS] = I915_ENGINE_CLASS_VIDEO_ENHANCE,
> -	/* TODO: Add COMPUTE_CLASS mapping once ABI is available */
> +	[COMPUTE_CLASS] = I915_ENGINE_CLASS_COMPUTE,

> > I think this landed so you will need to rebase.
> 
> >   };
> >   static int engine_cmp(void *priv, const struct list_head *A,
> > @@ -306,3 +306,14 @@ unsigned int intel_engines_has_context_isolation(struct drm_i915_private *i915)
> >   	return which;
> >   }
> > +
> > +bool intel_cross_engine_isolated(struct drm_i915_private *i915)
> 
> Naming feels lackluster (Intel what?). Do you expect other callers or could just implement the check in i915_getparam.c, inside the switch statement?

No other callers, so I guess I should do like you suggested below, handle the logic straightaway from i915_getparam_ioctl.

> +{
> +	unsigned int which = intel_engines_has_context_isolation(i915);
> +
> +	if ((which & BIT(I915_ENGINE_CLASS_RENDER)) &&
> +	    (which & BIT(I915_ENGINE_CLASS_COMPUTE)))
> +		return false;
> +
> +	return !!which;

> You could first just check if there are any RCS and CCS engines (for instance i915->engine_uabi_class_count[], or RCS/CCS_MASK()).
> 
>   /* Comment here to explain the decision. */
>   if (RCS_MASK(&i915->gt) | CCS_MASK(&i915->gt))
> 	value = 0;
>   else
>         value = !!intel_engines_has_context_isolation(i915);
> 
> ?
> 
> There also may be little point in even calling intel_engines_has_context_isolation, when the desired output is a boolean and could just make it feature or Gen based. Decision for later though, after some clarifications.

> +}
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.h b/drivers/gpu/drm/i915/gt/intel_engine_user.h
> index 3dc7e8ab9fbc..ff21349db4d4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.h
> @@ -15,6 +15,7 @@ struct intel_engine_cs *
>   intel_engine_lookup_user(struct drm_i915_private *i915, u8 class, u8 instance);
>   unsigned int intel_engines_has_context_isolation(struct drm_i915_private *i915);
> +bool intel_cross_engine_isolated(struct drm_i915_private *i915);
>   void intel_engine_add_user(struct intel_engine_cs *engine);
>   void intel_engines_driver_register(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
> index 5f5b02b01ba0..f796c5e8e060 100644
> --- a/drivers/gpu/drm/i915/i915_drm_client.h
> +++ b/drivers/gpu/drm/i915/i915_drm_client.h
> @@ -13,7 +13,7 @@
>   #include "gt/intel_engine_types.h"
> -#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_VIDEO_ENHANCE
> +#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
>   struct drm_i915_private;
> diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
> index c12a0adefda5..3d5120d2d78a 100644
> --- a/drivers/gpu/drm/i915/i915_getparam.c
> +++ b/drivers/gpu/drm/i915/i915_getparam.c
> @@ -145,7 +145,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
>   		value = 1;
>   		break;
>   	case I915_PARAM_HAS_CONTEXT_ISOLATION:
> -		value = intel_engines_has_context_isolation(i915);
> +		value = intel_cross_engine_isolated(i915);
>   		break;
>   	case I915_PARAM_SLICE_MASK:
>   		value = sseu->slice_mask;
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 35ca528803fd..84c0af77cc1f 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -166,6 +166,7 @@ enum drm_i915_gem_engine_class {
>   	I915_ENGINE_CLASS_COPY		= 1,
>   	I915_ENGINE_CLASS_VIDEO		= 2,
>   	I915_ENGINE_CLASS_VIDEO_ENHANCE	= 3,
> +	I915_ENGINE_CLASS_COMPUTE	= 4,
>   	/* should be kept compact */
> @@ -635,17 +636,8 @@ typedef struct drm_i915_irq_wait {
>   #define I915_PARAM_HAS_EXEC_FENCE_ARRAY  49
>   /*
> - * Query whether every context (both per-file default and user created) is
> - * isolated (insofar as HW supports). If this parameter is not true, then
> - * freshly created contexts may inherit values from an existing context,
> - * rather than default HW values. If true, it also ensures (insofar as HW
> - * supports) that all state set by this context will not leak to any other
> - * context.
> - *
> - * As not every engine across every gen support contexts, the returned
> - * value reports the support of context isolation for individual engines by
> - * returning a bitmask of each engine class set to true if that class supports
> - * isolation.
> + * Query whether the device can make cross-engine isolation guarantees for
> + * all the engines whose default state has been initialised.

> "Engine whose default state has been initialised" does not sound very helpful for userspace developers. Like what determines if that has happened or not, and the fact userspace is more about context state rather than engine state.
> 
> Existing text which talked about engines supporting contexts and not leaking state sounded better TBF. So overall I think you deleted too much of the text. Can't you just change the ending, from the point where it goes into individual engines and bitmap, replacing with the new explanation?

I made a mistake here. I assumed mentioning this would be relevant because
engine isolation is only checked for engines whose default state had been
assigned in __engines_record_defaults, but like you said this is a KM detail
userspace developers shouldn't concern themselves with, so I'll restore that
part of the previous text.

> Regards,
> 
> Tvrtko

>    */
>   #define I915_PARAM_HAS_CONTEXT_ISOLATION 50

Kind Regards,
Adrian Larumbe
