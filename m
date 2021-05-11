Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCBD37AEBE
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 20:51:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 511606EAD1;
	Tue, 11 May 2021 18:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D786B6EACF;
 Tue, 11 May 2021 18:51:49 +0000 (UTC)
IronPort-SDR: 5lG1+sWeEwwsZr/9WHBpBDbKHhPNxok33AUAWmHertzX+picP/34qN57lBXGLpiivLO5Vn9Wyx
 3EcEwII/zyUg==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="179785734"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="179785734"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 11:51:47 -0700
IronPort-SDR: LFKaGt5hoq3Lwseiw6+DDqaLRjB0SOvYAsAf7K6Hlut8EUqb9EgesHf7ZB1OPhYeOqydfMGeuF
 gi2NFcMTG94g==
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="391524712"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 11:51:47 -0700
Date: Tue, 11 May 2021 11:44:28 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20210511184425.GA7786@sdutt-i7>
References: <20210506173049.72503-1-matthew.brost@intel.com>
 <20210506173049.72503-5-matthew.brost@intel.com>
 <YJqesIT3leIhTNxs@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YJqesIT3leIhTNxs@phenom.ffwll.local>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [RFC PATCH 4/5] drm/i915: Introduce 'set parallel
 submit' extension
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 carl.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 11, 2021 at 05:11:44PM +0200, Daniel Vetter wrote:
> On Thu, May 06, 2021 at 10:30:48AM -0700, Matthew Brost wrote:
> > i915_drm.h updates for 'set parallel submit' extension.
> > 
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Cc: Tony Ye <tony.ye@intel.com>
> > CC: Carl Zhang <carl.zhang@intel.com>
> > Cc: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Jason Ekstrand <jason@jlekstrand.net>
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >  include/uapi/drm/i915_drm.h | 126 ++++++++++++++++++++++++++++++++++++
> >  1 file changed, 126 insertions(+)
> > 
> > diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> > index 26d2e135aa31..0175b12b33b8 100644
> > --- a/include/uapi/drm/i915_drm.h
> > +++ b/include/uapi/drm/i915_drm.h
> > @@ -1712,6 +1712,7 @@ struct drm_i915_gem_context_param {
> >   * Extensions:
> >   *   i915_context_engines_load_balance (I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE)
> >   *   i915_context_engines_bond (I915_CONTEXT_ENGINES_EXT_BOND)
> > + *   i915_context_engines_parallel_submit (I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT)
> 
> Hm just relalized, but I don't think this hyperlinsk correctly, and I'm
> also not sure this formats very well as a nice list. Using item lists
> should look pretty nice like we're doing for the various kms properties,
> e.g.
> 
> FOO:
>   Explain what FOO does
> 
> BAR:
>   Explain what BAR does. struct bar also automatically generates a link
> 
> Please check with make htmldocs and polish this a bit (might need a small
> prep patch).
> 

I agree the doc should look nice. To get there I might need to chat with you on
IRC as I'm new to this. 

> >   */
> >  #define I915_CONTEXT_PARAM_ENGINES	0xa
> >  
> > @@ -1894,9 +1895,134 @@ struct i915_context_param_engines {
> >  	__u64 extensions; /* linked chain of extension blocks, 0 terminates */
> >  #define I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE 0 /* see i915_context_engines_load_balance */
> >  #define I915_CONTEXT_ENGINES_EXT_BOND 1 /* see i915_context_engines_bond */
> > +#define I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT 2 /* see i915_context_engines_parallel_submit */
> >  	struct i915_engine_class_instance engines[0];
> >  } __attribute__((packed));
> >  
> > +/*
> > + * i915_context_engines_parallel_submit:
> > + *
> > + * Setup a gem context to allow multiple BBs to be submitted in a single execbuf
> > + * IOCTL. Those BBs will then be scheduled to run on the GPU in parallel.
> > + *
> > + * All hardware contexts in the engine set are configured for parallel
> > + * submission (i.e. once this gem context is configured for parallel submission,
> > + * all the hardware contexts, regardless if a BB is available on each individual
> > + * context, will be submitted to the GPU in parallel). A user can submit BBs to
> > + * subset of the hardware contexts, in a single execbuf IOCTL, but it is not
> > + * recommended as it may reserve physical engines with nothing to run on them.
> > + * Highly recommended to configure the gem context with N hardware contexts then
> > + * always submit N BBs in a single IOCTL.
> > + *
> > + * Their are two currently defined ways to control the placement of the
> > + * hardware contexts on physical engines: default behavior (no flags) and
> > + * I915_PARALLEL_IMPLICT_BONDS (a flag). More flags may be added the in the
> > + * future as new hardware / use cases arise. Details of how to use this
> > + * interface below above the flags.
> > + *
> > + * Returns -EINVAL if hardware context placement configuration invalid or if the
> > + * placement configuration isn't supported on the platform / submission
> > + * interface.
> > + * Returns -ENODEV if extension isn't supported on the platform / submission
> > + * inteface.
> > + */
> > +struct i915_context_engines_parallel_submit {
> > +	struct i915_user_extension base;
> 
> Ok this is good, since it makes sure we can't possible use this in
> CTX_SETPARAM.
> 

Yep, this is at context creation time. Technically you still can call this over
and over on the same gem context but Jason is taking that ability away I
believe. I've also told the media team to setup the context once and don't touch
it again.

> > +
> > +/*
> > + * Default placement behvavior (currently unsupported):
> > + *
> > + * Rather than restricting parallel submission to a single class with a
> > + * logically contiguous placement (I915_PARALLEL_IMPLICT_BONDS), add a mode that
> > + * enables parallel submission across multiple engine classes. In this case each
> > + * context's logical engine mask indicates where that context can placed. It is
> > + * implied in this mode that all contexts have mutual exclusive placement (e.g.
> > + * if one context is running CS0 no other contexts can run on CS0).
> > + *
> > + * Example 1 pseudo code:
> > + * CSX[Y] = engine class X, logical instance Y
> > + * INVALID = I915_ENGINE_CLASS_INVALID, I915_ENGINE_CLASS_INVALID_NONE
> > + * set_engines(INVALID, INVALID)
> > + * set_load_balance(engine_index=0, num_siblings=2, engines=CS0[0],CS0[1])
> > + * set_load_balance(engine_index=1, num_siblings=2, engines=CS1[0],CS1[1])
> > + * set_parallel()
> > + *
> > + * Results in the following valid placements:
> > + * CS0[0], CS1[0]
> > + * CS0[0], CS1[1]
> > + * CS0[1], CS1[0]
> > + * CS0[1], CS1[1]
> > + *
> > + * Example 2 pseudo code:
> > + * CS[X] = generic engine of same class, logical instance X
> > + * INVALID = I915_ENGINE_CLASS_INVALID, I915_ENGINE_CLASS_INVALID_NONE
> > + * set_engines(INVALID, INVALID)
> > + * set_load_balance(engine_index=0, num_siblings=3, engines=CS[0],CS[1],CS[2])
> > + * set_load_balance(engine_index=1, num_siblings=3, engines=CS[0],CS[1],CS[2])
> > + * set_parallel()
> > + *
> > + * Results in the following valid placements:
> > + * CS[0], CS[1]
> > + * CS[0], CS[2]
> > + * CS[1], CS[0]
> > + * CS[1], CS[2]
> > + * CS[2], CS[0]
> > + * CS[2], CS[1]
> > + *
> > + * This enables a use case where all engines are created equally, we don't care
> > + * where they are scheduled, we just want a certain number of resources, for
> > + * those resources to be scheduled in parallel, and possibly across multiple
> > + * engine classes.
> > + */
> > +
> > +/*
> > + * I915_PARALLEL_IMPLICT_BONDS - Create implict bonds between each context.
> > + * Each context must have the same number sibling and bonds are implictly create
> > + * of the siblings.
> > + *
> > + * All of the below examples are in logical space.
> > + *
> > + * Example 1 pseudo code:
> > + * CS[X] = generic engine of same class, logical instance X
> > + * set_engines(CS[0], CS[1])
> > + * set_parallel(flags=I915_PARALLEL_IMPLICT_BONDS)
> > + *
> > + * Results in the following valid placements:
> > + * CS[0], CS[1]
> > + *
> > + * Example 2 pseudo code:
> > + * CS[X] = generic engine of same class, logical instance X
> > + * INVALID = I915_ENGINE_CLASS_INVALID, I915_ENGINE_CLASS_INVALID_NONE
> > + * set_engines(INVALID, INVALID)
> > + * set_load_balance(engine_index=0, num_siblings=2, engines=CS[0],CS[2])
> > + * set_load_balance(engine_index=1, num_siblings=2, engines=CS[1],CS[3])
> > + * set_parallel(flags=I915_PARALLEL_IMPLICT_BONDS)
> > + *
> > + * Results in the following valid placements:
> > + * CS[0], CS[1]
> > + * CS[2], CS[3]
> > + *
> > + * This enables a use case where all engines are not equal and certain placement
> > + * rules are required (i.e. split-frame requires all contexts to be placed in a
> > + * logically contiguous order on the VCS engines on gen11+ platforms). This use
> > + * case (logically contiguous placement, within a single engine class) is
> > + * supported when using GuC submission. Execlist mode could support all possible
> > + * bonding configurations but currently doesn't support this extension.
> > + */
> > +#define I915_PARALLEL_IMPLICT_BONDS		(1<<0)
> > +/*
> > + * Do not allow BBs to be preempted mid BB rather insert coordinated preemption
> > + * points on all hardware contexts between each set of BBs. An example use case
> > + * of this feature is split-frame on gen11+ hardware. When using this feature a
> > + * BB must be submitted on each hardware context in the parallel gem context.
> > + * The execbuf2 IOCTL enforces the user adheres to policy.
> > + */
> > +#define I915_PARALLEL_NO_PREEMPT_MID_BATCH	(1<<1)
> > +#define I915_PARALLEL_UNKNOWN_FLAGS  (-(I915_PARALLEL_NO_PREEMPT_MID_BATCH << 1))
> > +	__u64 flags; /* all undefined flags must be zero */
> > +	__u64 mbz64[4]; /* reserved for future use; must be zero */
> > +} __attribute__ ((packed));
> 
> Ok I'm having some serious questions. This looks way too much like it's
> inspired by bonded submission, and given we're tossing bonded submission
> we need to make sure we're doing this for good independent reasons and not
> just for intertia.
> 

You are not wrong here, the bonding submission interface was a factor in
designing this interface.

> What I expected looking at how media-driver uses bonded submit currently
> is:
> 
> - We create a parallel submit engine, which occupies a virtual engine
>   slot. This parallel virtual engine contains all the information we need,
>   i.e. the flags you have above, but also how many engines run in parallel
>   and how each of those can be load-balanced. So probably a full NxM
>   matrix of physical engines needed.
> 

Internally we need all this information broken out into individual structures,
at least with the current implementation. We need N ring buffers, N timelines, N
LRCs, N HWSPs, etc... All of this is encapsulated by a 'struct intel_context'
which occupies a slot. Could we create a super object with N 'struct
intel_context', sure. I'm just not sure what that buys us and IMO creates an
inconsistent uAPI.

> - Execbuf uses that parallel virtual engine to submit all N batchbuffers
>   in one go.
> 

If we expose 1 or N engines it doesn't really matter, does it? Either way the
entire GEM context is configured for N BBs in a single IOCTL.

> - This means we don't create virtual engines (or physical engine mappings)
>   for all the individual pieces in a parallel engine. That's a concept
>   from bonded submission, and I think that needs to go.
> 

Again this isn't strickly true - we need N internal backing structures.

> - More important not having a parallel virtual engine breaks our already
>   badly confusing gem ctx api. Ignoring parallel/bonded submit the gem ctx
>   is just a container object, which points at a bunch of engines (plus the
>   VM and a few other things). Having parallel context something that sits
>   at the gem ctx level, and not as an individual engine (of which you can
>   have multiple in the same gem ctx) breaks stuff. E.g. right the perf api
>   sits at the gem ctx level, so that you can capture all the perf data for
>   an entire workload spawning across multiple engines. If a workload now
>   needs multiple parallel engines we'd need multiple gem ctx, which breaks
>   this.

This uAPI allows only 1 parallel context per gem context which isn't ideal. I'd
love to fix this and changing a context to a single slot might be able to fix
this.

> 
> So what I'd expect we'd have here is roughly:
> 
> struct i915_context_engines_parallel_submit {
> 	struct i915_user_extension base;
> 	__u64 flags;
> 	__u32 num_engines; /* N, must match what we submit in the execbuf */
> 	__u32 num_siblings; /* M, I'm assuming it's ok we require that siblings must match across the entire set of parallel engines */
> 	struct engine_info[]; /* NxM array of engine infos, pls fill in the right struct name :-) */
> };
> 
> If we then also require that you always submit the full width of N
> batchbuffers then even the execbuf extension doesn't need to exist
> anymore, because the virtual parallel engine already contains all the
> needed information.
> 
> And sure for some backends at least (definitely execlist) we'd need to
> create a bunch of additional virtual engines behind that virtual engine.
> But they'd be entirely hidden, and not visible to userspace nor the higher
> levels.
>
> What am I missing?

Not really, I think you got it. I think at the end of day this really comes down
to do we want to allow more than 1 parallel virtual engine per gem context? If
the answer is yes we collapse a parallel virtual engine into a single slot, if
not we leave as is.

Matt

> -Daniel
> 
> >  #define I915_DEFINE_CONTEXT_PARAM_ENGINES(name__, N__) struct { \
> >  	__u64 extensions; \
> >  	struct i915_engine_class_instance engines[N__]; \
> > -- 
> > 2.28.0
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
