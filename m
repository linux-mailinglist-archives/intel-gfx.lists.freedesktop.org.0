Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55888388C62
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 13:10:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A456ED24;
	Wed, 19 May 2021 11:10:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79D686ED20
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 11:10:08 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 f6-20020a1c1f060000b0290175ca89f698so3189923wmf.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 04:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tej+t4usIFpGJddK3WF1bEx/b4ArLynxCf1U3/5QBMc=;
 b=EkPj05gslOlV6OKGyJulDNsw/ARCcdbW09j9Eovy+Nqs60KZncmEIyBgXtDMCVt90J
 vkglomexUXgfzASb65KJ5gnoxxG6KvfKW91MtS7Y6BWR8slYlfiCSrU2B6WugW5ySrLM
 VK5RMhLtILrrgXS3j7YEQ5Fo8OvHTOiev0WH8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tej+t4usIFpGJddK3WF1bEx/b4ArLynxCf1U3/5QBMc=;
 b=ndIHSMes3ixiyTt9/P28HvGNCH5hgnwkD0gqBkR5BMjPzDfIFf5jt13az+RI++ETfn
 nhjejKCQNyCGcj7cS130aaiFWsN+Oh9g+EOLYDOp7q93wVDynJt4Jelbi6UM9gaSc8BR
 1tu1jvf4TaxQm4P9iCuq52jyuGFpndlYThZfoB9y3tl7UjTzWeT8oi5L+E8s01XRuLAg
 wBUVKU+uqHNKiOdxWLs9wzc/vWhgaysSe8ChHpACcYDM1xzUY9ouOUO2mudXmnWMJAVL
 qYq6vmNalv0twf6RThRpYHFEfLnhX7fqs5XttgJ4jHabGsojdtdKmhHLPs5V7kcFXUL4
 9qjA==
X-Gm-Message-State: AOAM530z4LZfabRVTDAe46vRAAgmIF7cABItdRJH9QfOkjh99dM7UGft
 y3Jmg/TldLuA7mMk300l9oIrQA==
X-Google-Smtp-Source: ABdhPJwVNo+hd+MoyR8a2XKMArJEoM+MY8GpNb/+3KDZ+WWqD7C3B7U1BnrVn9srRKBqnWYsQ8hTUA==
X-Received: by 2002:a1c:3183:: with SMTP id x125mr10428793wmx.80.1621422606747; 
 Wed, 19 May 2021 04:10:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l14sm25937654wrv.94.2021.05.19.04.10.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 04:10:06 -0700 (PDT)
Date: Wed, 19 May 2021 13:10:04 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <YKTyDNyVgmR3z1H5@phenom.ffwll.local>
References: <20210518235830.133834-1-matthew.brost@intel.com>
 <20210518235830.133834-3-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518235830.133834-3-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [RFC 2/2] drm/doc/rfc: i915 new parallel submission
 uAPI plan
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 jason.ekstrand@intel.com, daniel.vetter@intel.com,
 mesa-dev@lists.freedesktop.org, karl@freedesktop.org, christian.koenig@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 18, 2021 at 04:58:30PM -0700, Matthew Brost wrote:
> Add entry fpr i915 new parallel submission uAPI plan.
> 
> v2:
>  (Daniel Vetter):
>   - Expand logical order explaination
>   - Add dummy header
>   - Only allow N BBs in execbuf IOCTL
>   - Configure parallel submission per slot not per gem context
> 
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Tony Ye <tony.ye@intel.com>
> CC: Carl Zhang <carl.zhang@intel.com>
> Cc: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  Documentation/gpu/rfc/i915_parallel_execbuf.h | 144 ++++++++++++++++++
>  Documentation/gpu/rfc/i915_scheduler.rst      |  53 ++++++-
>  2 files changed, 196 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/gpu/rfc/i915_parallel_execbuf.h
> 
> diff --git a/Documentation/gpu/rfc/i915_parallel_execbuf.h b/Documentation/gpu/rfc/i915_parallel_execbuf.h
> new file mode 100644
> index 000000000000..8c64b983ccad
> --- /dev/null
> +++ b/Documentation/gpu/rfc/i915_parallel_execbuf.h
> @@ -0,0 +1,144 @@
> +#define I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT 2 /* see i915_context_engines_parallel_submit */
> +
> +/*
> + * i915_context_engines_parallel_submit:
> + *
> + * Setup a slot to allow multiple BBs to be submitted in a single execbuf IOCTL.
> + * Those BBs will then be scheduled to run on the GPU in parallel. Multiple
> + * hardware contexts are created internally in the i915 run these BBs. Once a
> + * slot is configured for N BBs only N BBs can be submitted in each execbuf
> + * IOCTL and this is implict behavior (e.g. the user doesn't tell the execbuf
> + * IOCTL there are N BBs, the execbuf IOCTL know how many BBs there are based on
> + * the slots configuration).
> + *
> + * Their are two currently defined ways to control the placement of the
> + * hardware contexts on physical engines: default behavior (no flags) and
> + * I915_PARALLEL_IMPLICT_BONDS (a flag). More flags may be added the in the
> + * future as new hardware / use cases arise. Details of how to use this
> + * interface below above the flags.
> + *
> + * Returns -EINVAL if hardware context placement configuration invalid or if the
> + * placement configuration isn't supported on the platform / submission
> + * interface.
> + * Returns -ENODEV if extension isn't supported on the platform / submission
> + * inteface.
> + */
> +struct i915_context_engines_parallel_submit {
> +	struct i915_user_extension base;
> +
> +	__u16 engine_index;	/* slot for parallel engine */
> +	__u16 width;		/* number of contexts per parallel engine */
> +	__u16 num_siblings;	/* number of siblings per context */
> +	__u16 mbz16;

Ok the big picture looks reasonable now, the flags still confuse me.

> +/*
> + * Default placement behvavior (currently unsupported):
> + *
> + * Rather than restricting parallel submission to a single class with a
> + * logically contiguous placement (I915_PARALLEL_IMPLICT_BONDS), add a mode that
> + * enables parallel submission across multiple engine classes. In this case each
> + * context's logical engine mask indicates where that context can placed. It is
> + * implied in this mode that all contexts have mutual exclusive placement (e.g.
> + * if one context is running CS0 no other contexts can run on CS0).
> + *
> + * Example 1 pseudo code:
> + * CSX[Y] = engine class X, logical instance Y
> + * INVALID = I915_ENGINE_CLASS_INVALID, I915_ENGINE_CLASS_INVALID_NONE
> + * set_engines(INVALID)
> + * set_parallel(engine_index=0, width=2, num_siblings=2,
> + *		engines=CS0[0],CS0[1],CS1[0],CS1[1])
> + *
> + * Results in the following valid placements:
> + * CS0[0], CS1[0]
> + * CS0[0], CS1[1]
> + * CS0[1], CS1[0]
> + * CS0[1], CS1[1]
> + *
> + * This can also be though of as 2 virtual engines:
> + * VE[0] = CS0[0], CS0[1]
> + * VE[1] = CS1[0], CS1[1]
> + *
> + * Example 2 pseudo code:
> + * CS[X] = generic engine of same class, logical instance X
> + * INVALID = I915_ENGINE_CLASS_INVALID, I915_ENGINE_CLASS_INVALID_NONE
> + * set_engines(INVALID)
> + * set_parallel(engine_index=0, width=2, num_siblings=3,
> + *		engines=CS[0],CS[1],CS[2],CS[0],CS[1],CS[2])
> + *
> + * Results in the following valid placements:
> + * CS[0], CS[1]
> + * CS[0], CS[2]
> + * CS[1], CS[0]
> + * CS[1], CS[2]
> + * CS[2], CS[0]
> + * CS[2], CS[1]
> + *
> + *
> + * This can also be though of as 2 virtual engines:
> + * VE[0] = CS[0], CS[1], CS[2]
> + * VE[1] = CS[0], CS[1], CS[2]
> +
> + * This enables a use case where all engines are created equally, we don't care
> + * where they are scheduled, we just want a certain number of resources, for
> + * those resources to be scheduled in parallel, and possibly across multiple
> + * engine classes.
> + */

So I don't really get what this does compared to setting the flag below.
Is this just about running the batchbuffers the wrong way round, i.e. if
you have (simplest case)

width=2, num_sibglings=1, engines=CS[0], CS[1]

Then both
CS[0], CS[1]
and
CS[1], CS[0]
are possible options for running 2 batches? Iow, the backend is allowed to
run the batchbuffers the wrong way round, which gains us nothing, since we
assume the batches take equally long and engines interchangeable. There is
no scheduling scenario where this additional flexibility can help.

Also we don't have flags to select the only available and then specify an
entire pipe dream about what the non-flag mode does, without an
implementation. What is this about?

If it's just "because bonded allowed this" then I think we should just
unceremonously ditch this. Bummer for the nice kerenldoc you wrote, but
welp.

> +
> +/*
> + * I915_PARALLEL_IMPLICT_BONDS - Create implict bonds between each context.
> + * Each context must have the same number sibling and bonds are implictly create
> + * of the siblings.
> + *
> + * All of the below examples are in logical space.
> + *
> + * Example 1 pseudo code:
> + * CS[X] = generic engine of same class, logical instance X
> + * INVALID = I915_ENGINE_CLASS_INVALID, I915_ENGINE_CLASS_INVALID_NONE
> + * set_engines(INVALID)
> + * set_parallel(engine_index=0, width=2, num_siblings=1,
> + *		engines=CS[0],CS[1], flags=I915_PARALLEL_IMPLICT_BONDS)
> + *
> + * Results in the following valid placements:
> + * CS[0], CS[1]
> + *
> + * Example 2 pseudo code:
> + * CS[X] = generic engine of same class, logical instance X
> + * INVALID = I915_ENGINE_CLASS_INVALID, I915_ENGINE_CLASS_INVALID_NONE
> + * set_engines(INVALID)
> + * set_parallel(engine_index=0, width=2, num_siblings=2,
> + *		engines=CS[0],CS[2],CS[1],CS[3], flags=I915_PARALLEL_IMPLICT_BONDS)
> + *
> + * Results in the following valid placements:
> + * CS[0], CS[1]
> + * CS[2], CS[3]
> + *
> + * This can also be though of as 2 virtual engines:
> + * VE[0] = CS[0], CS[2]
> + * VE[1] = CS[1], CS[3]
> + *
> + * This enables a use case where all engines are not equal and certain placement
> + * rules are required (i.e. split-frame requires all contexts to be placed in a
> + * logically contiguous order on the VCS engines on gen11+ platforms). This use
> + * case (logically contiguous placement, within a single engine class) is
> + * supported when using GuC submission. Execlist mode could support all possible
> + * bonding configurations but currently doesn't support this extension.
> + */
> +#define I915_PARALLEL_IMPLICT_BONDS			(1<<0)

Does this map to intel_context_set_nopreempt(), so we could implement it
also in execlist?

Also is this just an artifact of the implementation, or is this somehow
required functionality for userspace, i.e. the workload fails if e.g. GuC
decides to preempt all LRC of a parallel virtual engine? Of course just
preempting one is a bit a bug (but execlist I think happily does that).

Cheers, Daniel

> +/*
> + * Do not allow BBs to be preempted mid BB rather insert coordinated preemption
> + * points on all hardware contexts between each set of BBs. An example use case
> + * of this feature is split-frame on gen11+ hardware. When using this feature a
> + * BB must be submitted on each hardware context in the parallel gem context.
> + * The execbuf2 IOCTL enforces the user adheres to policy.
> + */
> +#define I915_PARALLEL_NO_PREEMPT_MID_BATCH		(1<<1)
> +#define __I915_PARALLEL_UNKNOWN_FLAGS	(-(I915_PARALLEL_NO_PREEMPT_MID_BATCH << 1))
> +	__u64 flags;		/* all undefined flags must be zero */
> +	__u64 mbz64[3];		/* reserved for future use; must be zero */
> +
> +	/*
> +	 * width (i) * num_siblings (j) in length
> +	 * index = j + i * num_siblings
> +	 */
> +	struct i915_engine_class_instance engines[0];
> +} __attribute__ ((packed));
> +
> diff --git a/Documentation/gpu/rfc/i915_scheduler.rst b/Documentation/gpu/rfc/i915_scheduler.rst
> index 7faa46cde088..64c539486ee4 100644
> --- a/Documentation/gpu/rfc/i915_scheduler.rst
> +++ b/Documentation/gpu/rfc/i915_scheduler.rst
> @@ -82,4 +82,55 @@ https://spec.oneapi.com/level-zero/latest/core/api.html#ze-command-queue-priorit
>  
>  New parallel submission uAPI
>  ============================
> -Details to come in a following patch.
> +The existing bonding uAPI is completely broken with GuC submission because
> +whether a submission is a single context submit or parallel submit isn't known
> +until execbuf time activated via the I915_SUBMIT_FENCE. To submit multiple
> +contexts in parallel with the GuC the context must be explictly registered with
> +N contexts and all N contexts must be submitted in a single command to the GuC.
> +These interfaces doesn't support dynamically changing between N contexts as the
> +bonding uAPI does. Hence the need for a new parallel submission interface. Also
> +the legacy bonding uAPI is quite confusing and not intuitive at all.
> +
> +The new parallel submission uAPI consists of 3 parts:
> +
> +* Export engines logical mapping
> +* A 'set_parallel' extension to configure contexts for parallel
> +  submission
> +* Extend execbuf2 IOCTL to support submitting N BBs in a single IOCTL
> +
> +Export engines logical mapping
> +------------------------------
> +Certain use cases require BBs to be placed on engine instances in logical order
> +(e.g. split-frame on gen11+). The logical mapping of engine instances can change
> +based on fusing. Rather than making UMDs be aware of fusing, simply expose the
> +logical mapping with the existing query engine info IOCTL. Also the GuC
> +submission interface currently only supports submitting multiple contexts to
> +engines in logical order which is a new requirement compared to execlists.
> +Lastly, all current platforms have at most 2 instances and the logical order is
> +the same a uABI order. This will change on platforms with more than 2 instances.
> +
> +A single bit will be added to drm_i915_engine_info.flags indicating that the
> +logical instance has been returned and a new field,
> +drm_i915_engine_info.logical_instance, returns the logical instance.
> +
> +A 'set_parallel' extension to configure contexts for parallel submission
> +------------------------------------------------------------------------
> +The 'set_parallel' extension configures a slot for parallel submission of N BBs.
> +It is setup step that should be called before using any of the contexts. See
> +I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE or I915_CONTEXT_ENGINES_EXT_BOND for
> +similar existing examples. Once a slot is configured for parallel submission the
> +execbuf2 IOCTL can be called submiting N BBs in a single IOCTL. Initially only
> +support GuC submission. Execlist support can be added later if needed.
> +
> +Add I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT and
> +i915_context_engines_parallel_submit to the uAPI to implement this extension.
> +
> +Extend execbuf2 IOCTL to support submitting N BBs in a single IOCTL
> +-------------------------------------------------------------------
> +Contexts that have been configured with the 'set_parallel' extension are allowed
> +to submit N BBs in a single execbuf2 IOCTL. The BBs are either the last N
> +objects in the drm_i915_gem_exec_object2 list or the first N if
> +I915_EXEC_BATCH_FIRST is set. The number of BBs is implict based on the slot
> +submitted and how it has been configured by 'set_parallel' or other extensions.
> +No uAPI changes in the execbuf IOCTL but worth mentioning the new behavior of
> +the IOCTL.
> -- 
> 2.28.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
