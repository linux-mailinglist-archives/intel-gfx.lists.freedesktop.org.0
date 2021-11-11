Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A4444DAD6
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 17:55:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58FF36E1A4;
	Thu, 11 Nov 2021 16:55:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7439A6E1A4;
 Thu, 11 Nov 2021 16:55:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10165"; a="256669076"
X-IronPort-AV: E=Sophos;i="5.87,226,1631602800"; d="scan'208";a="256669076"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 08:55:27 -0800
X-IronPort-AV: E=Sophos;i="5.87,226,1631602800"; d="scan'208";a="452780948"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 08:55:27 -0800
Date: Thu, 11 Nov 2021 08:49:49 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20211111164946.GA875@jons-linux-dev-box>
References: <20211020214751.34602-1-matthew.brost@intel.com>
 <c9a1cd3e-dc3a-2b2b-ee37-73c0c50f3f60@intel.com>
 <20211027191732.GA16188@jons-linux-dev-box>
 <af017ae0-e826-7b6a-03d7-0e422030da02@intel.com>
 <20211027201001.GA16265@jons-linux-dev-box>
 <a86e7ea7-3c70-2540-9538-44adc3d12e52@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a86e7ea7-3c70-2540-9538-44adc3d12e52@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Weak parallel
 submission support for execlists
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 01, 2021 at 10:35:09AM +0000, Tvrtko Ursulin wrote:
> 
> On 27/10/2021 21:10, Matthew Brost wrote:
> > On Wed, Oct 27, 2021 at 01:04:49PM -0700, John Harrison wrote:
> > > On 10/27/2021 12:17, Matthew Brost wrote:
> > > > On Tue, Oct 26, 2021 at 02:58:00PM -0700, John Harrison wrote:
> > > > > On 10/20/2021 14:47, Matthew Brost wrote:
> > > > > > A weak implementation of parallel submission (multi-bb execbuf IOCTL) for
> > > > > > execlists. Doing as little as possible to support this interface for
> > > > > > execlists - basically just passing submit fences between each request
> > > > > > generated and virtual engines are not allowed. This is on par with what
> > > > > > is there for the existing (hopefully soon deprecated) bonding interface.
> > > > > > 
> > > > > > We perma-pin these execlists contexts to align with GuC implementation.
> > > > > > 
> > > > > > v2:
> > > > > >     (John Harrison)
> > > > > >      - Drop siblings array as num_siblings must be 1
> > > > > > 
> > > > > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > > > > > ---
> > > > > >     drivers/gpu/drm/i915/gem/i915_gem_context.c   | 10 +++--
> > > > > >     drivers/gpu/drm/i915/gt/intel_context.c       |  4 +-
> > > > > >     .../drm/i915/gt/intel_execlists_submission.c  | 44 ++++++++++++++++++-
> > > > > >     drivers/gpu/drm/i915/gt/intel_lrc.c           |  2 +
> > > > > >     .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 -
> > > > > >     5 files changed, 52 insertions(+), 10 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > > > > index fb33d0322960..35e87a7d0ea9 100644
> > > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > > > > @@ -570,10 +570,6 @@ set_proto_ctx_engines_parallel_submit(struct i915_user_extension __user *base,
> > > > > >     	struct intel_engine_cs **siblings = NULL;
> > > > > >     	intel_engine_mask_t prev_mask;
> > > > > > -	/* FIXME: This is NIY for execlists */
> > > > > > -	if (!(intel_uc_uses_guc_submission(&i915->gt.uc)))
> > > > > > -		return -ENODEV;
> > > > > > -
> > > > > >     	if (get_user(slot, &ext->engine_index))
> > > > > >     		return -EFAULT;
> > > > > > @@ -583,6 +579,12 @@ set_proto_ctx_engines_parallel_submit(struct i915_user_extension __user *base,
> > > > > >     	if (get_user(num_siblings, &ext->num_siblings))
> > > > > >     		return -EFAULT;
> > > > > > +	if (!intel_uc_uses_guc_submission(&i915->gt.uc) && num_siblings != 1) {
> > > > > > +		drm_dbg(&i915->drm, "Only 1 sibling (%d) supported in non-GuC mode\n",
> > > > > > +			num_siblings);
> > > > > > +		return -EINVAL;
> > > > > > +	}
> > > > > > +
> > > > > >     	if (slot >= set->num_engines) {
> > > > > >     		drm_dbg(&i915->drm, "Invalid placement value, %d >= %d\n",
> > > > > >     			slot, set->num_engines);
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> > > > > > index 5634d14052bc..1bec92e1d8e6 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/intel_context.c
> > > > > > +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> > > > > > @@ -79,7 +79,8 @@ static int intel_context_active_acquire(struct intel_context *ce)
> > > > > >     	__i915_active_acquire(&ce->active);
> > > > > > -	if (intel_context_is_barrier(ce) || intel_engine_uses_guc(ce->engine))
> > > > > > +	if (intel_context_is_barrier(ce) || intel_engine_uses_guc(ce->engine) ||
> > > > > > +	    intel_context_is_parallel(ce))
> > > > > >     		return 0;
> > > > > >     	/* Preallocate tracking nodes */
> > > > > > @@ -563,7 +564,6 @@ void intel_context_bind_parent_child(struct intel_context *parent,
> > > > > >     	 * Callers responsibility to validate that this function is used
> > > > > >     	 * correctly but we use GEM_BUG_ON here ensure that they do.
> > > > > >     	 */
> > > > > > -	GEM_BUG_ON(!intel_engine_uses_guc(parent->engine));
> > > > > >     	GEM_BUG_ON(intel_context_is_pinned(parent));
> > > > > >     	GEM_BUG_ON(intel_context_is_child(parent));
> > > > > >     	GEM_BUG_ON(intel_context_is_pinned(child));
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > > > > index bedb80057046..2865b422300d 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > > > > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > > > > @@ -927,8 +927,7 @@ static void execlists_submit_ports(struct intel_engine_cs *engine)
> > > > > >     static bool ctx_single_port_submission(const struct intel_context *ce)
> > > > > >     {
> > > > > > -	return (IS_ENABLED(CONFIG_DRM_I915_GVT) &&
> > > > > > -		intel_context_force_single_submission(ce));
> > > > > > +	return intel_context_force_single_submission(ce);
> > > > > I think this is actually going to break GVT.
> > > > > 
> > > > > Not so much this change here but the whole use of single submission outside
> > > > > of GVT. It looks like the GVT driver overloads the single submission flag to
> > > > > tag requests that it owns. If we start using that flag elsewhere when GVT is
> > > > > active, I think that will cause much confusion within the GVT code.
> > > > > 
> > > > > The correct fix would be to create a new flag just for GVT usage alongside
> > > > > the single submission one. GVT would then set both but only check for its
> > > > > own private flag. The parallel code would obviously only set the existing
> > > > > single submission flag.
> > > > > 
> > > > Ok, see below.
> > > > 
> > > > > >     }
> > > > > >     static bool can_merge_ctx(const struct intel_context *prev,
> > > > > > @@ -2598,6 +2597,46 @@ static void execlists_context_cancel_request(struct intel_context *ce,
> > > > > >     				      current->comm);
> > > > > >     }
> > > > > > +static struct intel_context *
> > > > > > +execlists_create_parallel(struct intel_engine_cs **engines,
> > > > > > +			  unsigned int num_siblings,
> > > > > > +			  unsigned int width)
> > > > > > +{
> > > > > > +	struct intel_context *parent = NULL, *ce, *err;
> > > > > > +	int i;
> > > > > > +
> > > > > > +	GEM_BUG_ON(num_siblings != 1);
> > > > > > +
> > > > > > +	for (i = 0; i < width; ++i) {
> > > > > > +		ce = intel_context_create(engines[i]);
> > > > > > +		if (!ce) {
> > > > > > +			err = ERR_PTR(-ENOMEM);
> > > > > > +			goto unwind;
> > > > > > +		}
> > > > > > +
> > > > > > +		if (i == 0)
> > > > > > +			parent = ce;
> > > > > > +		else
> > > > > > +			intel_context_bind_parent_child(parent, ce);
> > > > > > +	}
> > > > > > +
> > > > > > +	parent->parallel.fence_context = dma_fence_context_alloc(1);
> > > > > > +
> > > > > > +	intel_context_set_nopreempt(parent);
> > > > > > +	intel_context_set_single_submission(parent);
> > > > > Can you explain the need for setting single submission?
> > > > > 
> > > > I think I can actually pull this out. This was needed when I tried to
> > > > truely implement a guarante that all the parallel requests would be
> > > > running simultaneously. Couldn't ever to get that working because of the
> > > > mess that is the execlists scheduler - a simple wait at the head of
> > > > queue until everyone joined just blew up for whatever reason. I don't
> > > > believe this servers a purpose anymore, so I'll just drop it.
> > > > 
> > > > Matt
> > > Is that not going to be a problem? I thought concurrent execution was a
> > > fundamental requirement?
> > > 
> > 
> > I don't think so. See the commit message. This implmementation is on par
> > with the bonding interface - there is no guarantee whatsoever that with
> > the bonding interface bonded requests actually run at the same time. It
> > says hopefully these submissions run together. That's what I do in this
> > patch too for execlists, hence the 'weak' clause in the commit message.
> 
> With the new uapi definition implying a stricter guarantee - why not have
> this patch use special bb semaphore pre/post-ambles so scheduling behaviour
> is closer between the two backends?
> 

We could do that in a follow up if needed, as this bare minimum to get
this uAPI working. The real fix would be update the execlists scheduler
to be able to do a join of parallel requests and then schedule them
together. Should be fairly simple, tried to do this, but the execlists
scheduler is such a mess doing something simple is near impossible. IMO
there is little point wasting time on a legacy submission interface.
This implementation works as well as the old uAPI, let's get this in and
move on.

Matt 

> Regards,
> 
> Tvrtko
> 
> > 
> > Matt
> > 
> > > John.
> > > 
> > > > 
> > > > > John.
> > > > > 
> > > > > > +	for_each_child(parent, ce) {
> > > > > > +		intel_context_set_nopreempt(ce);
> > > > > > +		intel_context_set_single_submission(ce);
> > > > > > +	}
> > > > > > +
> > > > > > +	return parent;
> > > > > > +
> > > > > > +unwind:
> > > > > > +	if (parent)
> > > > > > +		intel_context_put(parent);
> > > > > > +	return err;
> > > > > > +}
> > > > > > +
> > > > > >     static const struct intel_context_ops execlists_context_ops = {
> > > > > >     	.flags = COPS_HAS_INFLIGHT,
> > > > > > @@ -2616,6 +2655,7 @@ static const struct intel_context_ops execlists_context_ops = {
> > > > > >     	.reset = lrc_reset,
> > > > > >     	.destroy = lrc_destroy,
> > > > > > +	.create_parallel = execlists_create_parallel,
> > > > > >     	.create_virtual = execlists_create_virtual,
> > > > > >     };
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > > > > index 56156cf18c41..70f4b309522d 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > > > > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > > > > @@ -1065,6 +1065,8 @@ lrc_pin(struct intel_context *ce,
> > > > > >     void lrc_unpin(struct intel_context *ce)
> > > > > >     {
> > > > > > +	if (unlikely(ce->parallel.last_rq))
> > > > > > +		i915_request_put(ce->parallel.last_rq);
> > > > > >     	check_redzone((void *)ce->lrc_reg_state - LRC_STATE_OFFSET,
> > > > > >     		      ce->engine);
> > > > > >     }
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > > > index 1341752dc70e..ddc9a97fcc8f 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > > > @@ -2961,8 +2961,6 @@ static void guc_parent_context_unpin(struct intel_context *ce)
> > > > > >     	GEM_BUG_ON(!intel_context_is_parent(ce));
> > > > > >     	GEM_BUG_ON(!intel_engine_is_virtual(ce->engine));
> > > > > > -	if (ce->parallel.last_rq)
> > > > > > -		i915_request_put(ce->parallel.last_rq);
> > > > > >     	unpin_guc_id(guc, ce);
> > > > > >     	lrc_unpin(ce);
> > > > > >     }
> > > 
