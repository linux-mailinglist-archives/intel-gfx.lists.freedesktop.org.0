Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDwvC0NM62lhKwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 12:56:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F6E45D6A1
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 12:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C8C810F4E8;
	Fri, 24 Apr 2026 10:56:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MPRJAPmZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4413F10E298;
 Fri, 24 Apr 2026 10:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777028158; x=1808564158;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NqQ1xDhqsI2iIhwhpHLV9i8u7+QrZkS82yRG+e6B1Fw=;
 b=MPRJAPmZ1B1RM+Ih439rawF638Ljbtf00/pquFJEL1AyMiKsZetmjXKh
 GTfq0Hs+HYIAEvVDPIR9sz05ez0MOWihuQPBeHNcvRSQaTbQbG5OF4zXH
 udoRUSA/4jtpa/cr3nvZLpMSu3g7yuLnHINI55A9MJ1LnqbAhAnkKa1c2
 GhbEZVxrOUC6pF+ZuP/Lx7tNZNC7PXX1j24MmuT/+fYSsI/+n7uC2tkuB
 z4YJHGicNXGREEZ9TN1TCydal/zbV5YWjfpWOY/oSOzXMMrNd9xIJdfjm
 cF8zuWbu8L03LGNYyBQOVgNGcVwxiaYFvFyt713UmSLpTpTirpdYJKcvU A==;
X-CSE-ConnectionGUID: vJTx1s90QEGrggHvQz6lGw==
X-CSE-MsgGUID: 1/M4mRSnQ52xX4AVNJ1h8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="65538356"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="65538356"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 03:55:58 -0700
X-CSE-ConnectionGUID: fBC4RGwxT/SPHVjE0kLU8w==
X-CSE-MsgGUID: dXTFtMHMSyCXloqaE1ml8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="237980062"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.101])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 03:55:57 -0700
Date: Fri, 24 Apr 2026 13:55:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 13/16] drm/i915: Introduce the main fb_pin parent interface
Message-ID: <aetMOEagKgSCvVnv@intel.com>
References: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
 <20260423165346.20884-14-ville.syrjala@linux.intel.com>
 <28d5b5722ab0005103050a70e04b4e6b7ff691de@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <28d5b5722ab0005103050a70e04b4e6b7ff691de@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: F0F6E45D6A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.64 / 15.00];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

On Fri, Apr 24, 2026 at 01:48:02PM +0300, Jani Nikula wrote:
> On Thu, 23 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Introduce the main part of the new fb_pin parent interface:
> > - intel_parent_fb_pin_ggtt_(un)pin()
> > - intel_parent_fb_pin_dpt_(un)pin()
> > - intel_parent_fb_pin_reuse_vma()
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> This does introduce the silly intermediate step where i915 and xe
> specific code calls the generic parent interface. But I'm not sure if
> it's even feasible to do this some other route.

Yeah. I had all in one lump initially, but the result was a mess.
So in the end I figured it's cleaner to separate this non-functional
part out, even if calling the parent interface in the core driver
code is silly.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_parent.c  | 53 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_parent.h  | 29 +++++++++++
> >  drivers/gpu/drm/i915/i915_fb_pin.c           | 29 +++++++----
> >  drivers/gpu/drm/xe/display/xe_fb_pin.c       | 40 +++++++++------
> >  include/drm/intel/display_parent_interface.h | 22 ++++++++
> >  5 files changed, 148 insertions(+), 25 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
> > index 070cc60f49b3..a5816561be40 100644
> > --- a/drivers/gpu/drm/i915/display/intel_parent.c
> > +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> > @@ -53,6 +53,59 @@ void intel_parent_dpt_resume(struct intel_display *display, struct intel_dpt *dp
> >  }
> >  
> >  /* fb_pin */
> > +int intel_parent_fb_pin_ggtt_pin(struct intel_display *display,
> > +				 struct drm_gem_object *obj,
> > +				 const struct intel_fb_pin_params *pin_params,
> > +				 struct i915_vma **out_ggtt_vma,
> > +				 u32 *out_offset,
> > +				 int *out_fence_id)
> > +{
> > +	return display->parent->fb_pin->ggtt_pin(obj, pin_params,
> > +						 out_ggtt_vma, out_offset, out_fence_id);
> > +}
> > +
> > +void intel_parent_fb_pin_ggtt_unpin(struct intel_display *display,
> > +				    struct i915_vma *ggtt_vma,
> > +				    int fence_id)
> > +{
> > +	return display->parent->fb_pin->ggtt_unpin(ggtt_vma, fence_id);
> > +}
> > +
> > +int intel_parent_fb_pin_dpt_pin(struct intel_display *display,
> > +				struct drm_gem_object *obj,
> > +				struct intel_dpt *dpt,
> > +				const struct intel_fb_pin_params *pin_params,
> > +				struct i915_vma **out_dpt_vma,
> > +				struct i915_vma **out_ggtt_vma,
> > +				u32 *out_offset)
> > +{
> > +	return display->parent->fb_pin->dpt_pin(obj, dpt, pin_params,
> > +						out_dpt_vma, out_ggtt_vma, out_offset);
> > +}
> > +
> > +void intel_parent_fb_pin_dpt_unpin(struct intel_display *display,
> > +				   struct intel_dpt *dpt,
> > +				   struct i915_vma *dpt_vma,
> > +				   struct i915_vma *ggtt_vma)
> > +{
> > +	return display->parent->fb_pin->dpt_unpin(dpt, dpt_vma, ggtt_vma);
> > +}
> > +
> > +struct i915_vma *intel_parent_fb_pin_reuse_vma(struct intel_display *display,
> > +					       struct i915_vma *old_ggtt_vma,
> > +					       struct drm_gem_object *old_obj,
> > +					       const struct i915_gtt_view *old_view,
> > +					       struct drm_gem_object *new_obj,
> > +					       const struct i915_gtt_view *new_view,
> > +					       u32 *out_offset)
> > +{
> > +	if (!display->parent->fb_pin->reuse_vma)
> > +		return NULL;
> > +
> > +	return display->parent->fb_pin->reuse_vma(old_ggtt_vma, old_obj, old_view,
> > +						  new_obj, new_view, out_offset);
> > +}
> > +
> >  void intel_parent_fb_pin_get_map(struct intel_display *display,
> >  				 struct i915_vma *vma, struct iosys_map *map)
> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
> > index 2b9e829e7f47..27e35f891a6b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_parent.h
> > +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> > @@ -11,9 +11,11 @@ struct dma_fence;
> >  struct drm_file;
> >  struct drm_gem_object;
> >  struct drm_scanout_buffer;
> > +struct i915_gtt_view;
> >  struct i915_vma;
> >  struct intel_display;
> >  struct intel_dpt;
> > +struct intel_fb_pin_params;
> >  struct intel_frontbuffer;
> >  struct intel_hdcp_gsc_context;
> >  struct intel_panic;
> > @@ -28,6 +30,33 @@ void intel_parent_dpt_suspend(struct intel_display *display, struct intel_dpt *d
> >  void intel_parent_dpt_resume(struct intel_display *display, struct intel_dpt *dpt);
> >  
> >  /* fb_pin */
> > +int intel_parent_fb_pin_ggtt_pin(struct intel_display *display,
> > +				 struct drm_gem_object *obj,
> > +				 const struct intel_fb_pin_params *pin_params,
> > +				 struct i915_vma **out_ggtt_vma,
> > +				 u32 *out_offset,
> > +				 int *out_fence_id);
> > +void intel_parent_fb_pin_ggtt_unpin(struct intel_display *display,
> > +				    struct i915_vma *ggtt_vma,
> > +				    int fence_id);
> > +int intel_parent_fb_pin_dpt_pin(struct intel_display *display,
> > +				struct drm_gem_object *obj,
> > +				struct intel_dpt *dpt,
> > +				const struct intel_fb_pin_params *pin_params,
> > +				struct i915_vma **out_dpt_vma,
> > +				struct i915_vma **out_ggtt_vma,
> > +				u32 *out_offset);
> > +void intel_parent_fb_pin_dpt_unpin(struct intel_display *display,
> > +				   struct intel_dpt *dpt,
> > +				   struct i915_vma *dpt_vma,
> > +				   struct i915_vma *ggtt_vma);
> > +struct i915_vma *intel_parent_fb_pin_reuse_vma(struct intel_display *display,
> > +					       struct i915_vma *old_ggtt_vma,
> > +					       struct drm_gem_object *old_obj,
> > +					       const struct i915_gtt_view *old_view,
> > +					       struct drm_gem_object *new_obj,
> > +					       const struct i915_gtt_view *new_view,
> > +					       u32 *out_offset);
> >  void intel_parent_fb_pin_get_map(struct intel_display *display,
> >  				 struct i915_vma *vma, struct iosys_map *map);
> >  
> > diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
> > index e14d2c1fb81f..1f08e364d569 100644
> > --- a/drivers/gpu/drm/i915/i915_fb_pin.c
> > +++ b/drivers/gpu/drm/i915/i915_fb_pin.c
> > @@ -14,6 +14,7 @@
> >  #include "display/intel_display_types.h"
> >  #include "display/intel_fb.h"
> >  #include "display/intel_fb_pin.h"
> > +#include "display/intel_parent.h"
> >  #include "display/intel_plane.h"
> >  
> >  #include "gem/i915_gem_domain.h"
> > @@ -360,9 +361,9 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
> >  			.needs_fence = intel_plane_needs_fence(display),
> >  		};
> >  
> > -		ret = i915_fb_pin_ggtt_pin(intel_fb_bo(&fb->base),
> > -					   &pin_params, &ggtt_vma, &offset,
> > -					   intel_plane_uses_fence(plane_state) ? &fence_id : NULL);
> > +		ret = intel_parent_fb_pin_ggtt_pin(display, intel_fb_bo(&fb->base),
> > +						   &pin_params, &ggtt_vma, &offset,
> > +						   intel_plane_uses_fence(plane_state) ? &fence_id : NULL);
> >  		if (ret)
> >  			return ret;
> >  	} else {
> > @@ -372,9 +373,9 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
> >  			.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
> >  		};
> >  
> > -		ret = i915_fb_pin_dpt_pin(intel_fb_bo(&fb->base), fb->dpt,
> > -					  &pin_params, &dpt_vma,
> > -					  &ggtt_vma, &offset);
> > +		ret = intel_parent_fb_pin_dpt_pin(display, intel_fb_bo(&fb->base),
> > +						  fb->dpt, &pin_params,
> > +						  &dpt_vma, &ggtt_vma, &offset);
> >  		if (ret)
> >  			return ret;
> >  	}
> > @@ -389,19 +390,21 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
> >  
> >  void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
> >  {
> > +	struct intel_display *display = to_intel_display(old_plane_state);
> >  	const struct intel_framebuffer *fb =
> >  		to_intel_framebuffer(old_plane_state->hw.fb);
> >  
> >  	if (!intel_fb_uses_dpt(&fb->base)) {
> > -		i915_fb_pin_ggtt_unpin(old_plane_state->ggtt_vma,
> > -				       old_plane_state->fence_id);
> > +		intel_parent_fb_pin_ggtt_unpin(display,
> > +					       old_plane_state->ggtt_vma,
> > +					       old_plane_state->fence_id);
> >  
> >  		old_plane_state->ggtt_vma = NULL;
> >  		old_plane_state->fence_id = -1;
> >  	} else {
> > -		i915_fb_pin_dpt_unpin(fb->dpt,
> > -				      old_plane_state->dpt_vma,
> > -				      old_plane_state->ggtt_vma);
> > +		intel_parent_fb_pin_dpt_unpin(display, fb->dpt,
> > +					      old_plane_state->dpt_vma,
> > +					      old_plane_state->ggtt_vma);
> >  
> >  		old_plane_state->dpt_vma = NULL;
> >  		old_plane_state->ggtt_vma = NULL;
> > @@ -414,5 +417,9 @@ static void i915_fb_pin_get_map(struct i915_vma *vma, struct iosys_map *map)
> >  }
> >  
> >  const struct intel_display_fb_pin_interface i915_display_fb_pin_interface = {
> > +	.ggtt_pin = i915_fb_pin_ggtt_pin,
> > +	.ggtt_unpin = i915_fb_pin_ggtt_unpin,
> > +	.dpt_pin = i915_fb_pin_dpt_pin,
> > +	.dpt_unpin = i915_fb_pin_dpt_unpin,
> >  	.get_map = i915_fb_pin_get_map,
> >  };
> > diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > index cd287efded28..e2b6ce3686a3 100644
> > --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > @@ -10,6 +10,7 @@
> >  #include "intel_display_types.h"
> >  #include "intel_fb.h"
> >  #include "intel_fb_pin.h"
> > +#include "intel_parent.h"
> >  #include "xe_bo.h"
> >  #include "xe_device.h"
> >  #include "xe_display_vma.h"
> > @@ -509,6 +510,7 @@ xe_fb_pin_reuse_vma(struct i915_vma *old_ggtt_vma,
> >  int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
> >  		       const struct intel_plane_state *old_plane_state)
> >  {
> > +	struct intel_display *display = to_intel_display(new_plane_state);
> >  	const struct intel_framebuffer *fb = to_intel_framebuffer(new_plane_state->hw.fb);
> >  	const struct intel_framebuffer *old_fb = to_intel_framebuffer(old_plane_state->hw.fb);
> >  	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
> > @@ -524,23 +526,25 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
> >  	u32 offset;
> >  	int ret;
> >  
> > -	ggtt_vma = xe_fb_pin_reuse_vma(old_plane_state->ggtt_vma,
> > -				       intel_fb_bo(&old_fb->base),
> > -				       &old_plane_state->view.gtt,
> > -				       intel_fb_bo(&fb->base),
> > -				       &new_plane_state->view.gtt,
> > -				       &offset);
> > +	ggtt_vma = intel_parent_fb_pin_reuse_vma(display,
> > +						 old_plane_state->ggtt_vma,
> > +						 intel_fb_bo(&old_fb->base),
> > +						 &old_plane_state->view.gtt,
> > +						 intel_fb_bo(&fb->base),
> > +						 &new_plane_state->view.gtt,
> > +						 &offset);
> >  	if (ggtt_vma)
> >  		goto got_vma;
> >  
> >  	if (!intel_fb_uses_dpt(&fb->base)) {
> > -		ret = xe_fb_pin_ggtt_pin(obj, &pin_params,
> > -					 &ggtt_vma, &offset, NULL);
> > +		ret = intel_parent_fb_pin_ggtt_pin(display, obj, &pin_params,
> > +						   &ggtt_vma, &offset, NULL);
> >  		if (ret)
> >  			return ret;
> >  	} else {
> > -		ret = xe_fb_pin_dpt_pin(obj, fb->dpt, &pin_params,
> > -					&dpt_vma, &ggtt_vma, &offset);
> > +		ret = intel_parent_fb_pin_dpt_pin(display, obj, fb->dpt,
> > +						  &pin_params, &dpt_vma,
> > +						  &ggtt_vma, &offset);
> >  		if (ret)
> >  			return ret;
> >  	}
> > @@ -556,17 +560,20 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
> >  
> >  void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
> >  {
> > +	struct intel_display *display = to_intel_display(old_plane_state);
> >  	const struct intel_framebuffer *fb = to_intel_framebuffer(old_plane_state->hw.fb);
> >  
> >  	if (!intel_fb_uses_dpt(&fb->base)) {
> > -		xe_fb_pin_ggtt_unpin(old_plane_state->ggtt_vma,
> > -				     old_plane_state->fence_id);
> > +		intel_parent_fb_pin_ggtt_unpin(display,
> > +					       old_plane_state->ggtt_vma,
> > +					       old_plane_state->fence_id);
> >  
> >  		old_plane_state->ggtt_vma = NULL;
> >  		old_plane_state->fence_id = -1;
> >  	} else {
> > -		xe_fb_pin_dpt_unpin(fb->dpt, old_plane_state->dpt_vma,
> > -				    old_plane_state->ggtt_vma);
> > +		intel_parent_fb_pin_dpt_unpin(display, fb->dpt,
> > +					      old_plane_state->dpt_vma,
> > +					      old_plane_state->ggtt_vma);
> >  
> >  		old_plane_state->dpt_vma = NULL;
> >  		old_plane_state->ggtt_vma = NULL;
> > @@ -579,5 +586,10 @@ static void xe_fb_pin_get_map(struct i915_vma *vma, struct iosys_map *map)
> >  }
> >  
> >  const struct intel_display_fb_pin_interface xe_display_fb_pin_interface = {
> > +	.ggtt_pin = xe_fb_pin_ggtt_pin,
> > +	.ggtt_unpin = xe_fb_pin_ggtt_unpin,
> > +	.dpt_pin = xe_fb_pin_dpt_pin,
> > +	.dpt_unpin = xe_fb_pin_dpt_unpin,
> > +	.reuse_vma = xe_fb_pin_reuse_vma,
> >  	.get_map = xe_fb_pin_get_map,
> >  };
> > diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
> > index b363d6a85dfe..39991afeb173 100644
> > --- a/include/drm/intel/display_parent_interface.h
> > +++ b/include/drm/intel/display_parent_interface.h
> > @@ -83,6 +83,28 @@ struct intel_display_dsb_interface {
> >  };
> >  
> >  struct intel_display_fb_pin_interface {
> > +	int (*ggtt_pin)(struct drm_gem_object *obj,
> > +			const struct intel_fb_pin_params *pin_params,
> > +			struct i915_vma **out_ggtt_vma,
> > +			u32 *out_offset,
> > +			int *out_fence_id);
> > +	void (*ggtt_unpin)(struct i915_vma *ggtt_vma,
> > +			   int fence_id);
> > +	int (*dpt_pin)(struct drm_gem_object *obj,
> > +		       struct intel_dpt *dpt,
> > +		       const struct intel_fb_pin_params *pin_params,
> > +		       struct i915_vma **out_dpt_vma,
> > +		       struct i915_vma **out_ggtt_vma,
> > +		       u32 *out_offset);
> > +	void (*dpt_unpin)(struct intel_dpt *dpt,
> > +			  struct i915_vma *dpt_vma,
> > +			  struct i915_vma *ggtt_vma);
> > +	struct i915_vma *(*reuse_vma)(struct i915_vma *old_ggtt_vma,
> > +				      struct drm_gem_object *old_obj,
> > +				      const struct i915_gtt_view *old_view,
> > +				      struct drm_gem_object *new_obj,
> > +				      const struct i915_gtt_view *new_view,
> > +				      u32 *out_offset);
> >  	void (*get_map)(struct i915_vma *vma, struct iosys_map *map);
> >  };
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
