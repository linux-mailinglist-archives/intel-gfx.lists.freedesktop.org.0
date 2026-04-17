Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHh2DoAa4mny1gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 13:33:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C23E741AD37
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 13:33:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C02510E2A0;
	Fri, 17 Apr 2026 11:33:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NfdUgFmp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E13F610E0B5;
 Fri, 17 Apr 2026 11:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776425593; x=1807961593;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TOKEbUDpTPdcsn8AYMV4qkUfNaCns+yT1nYz9dRg7oM=;
 b=NfdUgFmpqNBRRVikJky2XFLLfhCMHEnw4/ckPAsgR3YzRKttHSwYgZVG
 Ff0cWpclLu+kXBeXSt1F6Lr6lbtgwFML69knsCPe5uR3toN+XRfDNUqE9
 R6mJXEoG5jTdKl8BSaReaYsXlfEOI2MfWrthpW2atzPAyEaczWXxggmo0
 4+1wGcGNHya4MvcLLn/30QpmaAEy03t2ePyDmBzc7R2PZzVSR6LbbP0w5
 RvjZO1gPby27zB+a0dQVeQbtjkYVRgb/otWY7zsu0xojVshchikcZNK5C
 Omvn0aePp/nuGn7UhFAmOblH6MRCeUoec1vVvYWKpPGPi2LRw+wZ+0iCn g==;
X-CSE-ConnectionGUID: CH0J0H+dRYOZ6EyhLRMrzQ==
X-CSE-MsgGUID: hJpEHIpuR06XTuqTccBMsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="81310711"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="81310711"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 04:33:12 -0700
X-CSE-ConnectionGUID: rxWK7+q3RSCVRSEfHiV3XQ==
X-CSE-MsgGUID: Vb5Ktbq7SoqKt4jUqeX9eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="235005041"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.245.176])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 04:33:11 -0700
Date: Fri, 17 Apr 2026 14:33:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 04/11] drm/i915: Introduce pin_params.needs_cpu_lmem_access
Message-ID: <aeIac-2O3xy6uso6@intel.com>
References: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
 <20260416174448.28264-5-ville.syrjala@linux.intel.com>
 <8e03ca87134e5bebee44aabeccd5fb86a096d4fa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8e03ca87134e5bebee44aabeccd5fb86a096d4fa@intel.com>
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
X-Spamd-Result: default: False [-0.40 / 15.00];
	R_MIXED_CHARSET(0.91)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
X-Rspamd-Queue-Id: C23E741AD37
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 17, 2026 at 12:39:54PM +0300, Jani Nikula wrote:
> On Thu, 16 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Add a new flag pin_params.neeeds_cpu_lmem_access so that the
> > low level pinning code doesn't need to peek into the display
> > driver's framebuffer structure.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fb_pin.h | 1 +
> >  drivers/gpu/drm/i915/i915_fb_pin.c          | 4 +++-
> >  drivers/gpu/drm/xe/display/xe_fb_pin.c      | 3 ++-
> >  3 files changed, 6 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> > index e6271437459d..bcf5a1f46092 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
> > +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> > @@ -19,6 +19,7 @@ struct intel_fb_pin_params {
> >  	unsigned int alignment;
> >  	unsigned int phys_alignment;
> >  	unsigned int vtd_guard;
> > +	bool needs_cpu_lmem_access;
> >  };
> >  
> >  struct i915_vma *
> > diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
> > index 780be25ad43b..96ffc4b0d809 100644
> > --- a/drivers/gpu/drm/i915/i915_fb_pin.c
> > +++ b/drivers/gpu/drm/i915/i915_fb_pin.c
> > @@ -61,7 +61,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
> >  			 * ensure it is always in the mappable part of lmem, if this is
> >  			 * a small-bar device.
> >  			 */
> > -			if (intel_fb_needs_cpu_access(fb))
> > +			if (pin_params->needs_cpu_lmem_access)
> >  				flags &= ~I915_BO_ALLOC_GPU_ONLY;
> >  			ret = __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
> >  							flags);
> > @@ -275,6 +275,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
> >  			.alignment = intel_plane_fb_min_alignment(plane_state),
> >  			.phys_alignment = intel_plane_fb_min_phys_alignment(plane_state),
> >  			.vtd_guard = intel_plane_fb_vtd_guard(plane_state),
> > +			.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
> 
> IIUC this path never uses .needs_cpu_lmem_access, but you initialize it
> anyway. What I find confusing is initializing it here apparently
> unnecessarily, but then leaving it out on a number of other paths that
> don't need it.

Hmm, yeah looks like we don't have the explicit migrate stuff
in the DPT path for some reason.

I'm sure the migration is happening though because I've used
DG2 on a small BAR system quite a bit, and page flips with clear
color work fine on i915 (unlike on xe+small BAR where it just
fails). And I remember even seeing the migration popping up in
the profiles. Now I'm wondering what might be triggering it
before the vma has been pinned...

Ideally I'd like to get rid of this whole thing and instead have
userspace put the clear color into its own separate little BO.
That way we wouldn't have to waste the precious CPU visible LMEM
on the full framebuffers. The kernel part of that is pretty trivial
and I have the patches in some branch, but sadly the Mesa side
is much more complicated. That particular onion has at least four
layers through which the extra dmabuf would need to get plumbed :(

> 
> Other than that,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> >  		};
> >  		int fence_id = -1;
> >  
> > @@ -289,6 +290,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
> >  		struct intel_fb_pin_params pin_params = {
> >  			.view = &plane_state->view.gtt,
> >  			.alignment = intel_plane_fb_min_alignment(plane_state),
> > +			.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
> >  		};
> >  
> >  		vma = i915_dpt_pin_to_ggtt(fb->dpt, pin_params.alignment / 512);
> > diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > index 205492639dba..a4eb06cfa769 100644
> > --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > @@ -335,7 +335,7 @@ static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
> >  
> >  	refcount_set(&vma->ref, 1);
> >  	if (IS_DGFX(to_xe_device(bo->ttm.base.dev)) &&
> > -	    intel_fb_needs_cpu_access(&fb->base) &&
> > +	    pin_params->needs_cpu_lmem_access &&
> >  	    !(bo->flags & XE_BO_FLAG_NEEDS_CPU_ACCESS)) {
> >  		struct xe_vram_region *vram = xe_device_get_root_tile(xe)->mem.vram;
> >  
> > @@ -474,6 +474,7 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
> >  	struct intel_fb_pin_params pin_params = {
> >  		.view = &new_plane_state->view.gtt,
> >  		.alignment = plane->min_alignment(plane, fb, 0),
> > +		.needs_cpu_lmem_access = intel_fb_needs_cpu_access(fb),
> >  	};
> >  
> >  	if (reuse_vma(new_plane_state, old_plane_state))
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
