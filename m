Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFBnJpBd4mlM5QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 18:19:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3027A41D075
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 18:19:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6980410EA87;
	Fri, 17 Apr 2026 16:19:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AQV12rRV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 063CC88E26;
 Fri, 17 Apr 2026 16:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776442761; x=1807978761;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bg5PrQthRI6SChhA/Si1NlqpMgtAcr2ASM33MCzqD38=;
 b=AQV12rRVX3CeQhtf9/ZzLislIecVUycOgISGSEPgEZLu8R/umcB35dAp
 IsNLA+5UN4EHw4B5yMnrdkB8GDo3X/7/1h/3mowKtV4edVqmPxyPTKhG8
 ajonAAvw072lTKdMnxh+XUTcYtQIrWBbscVvTfB83ulu10DB6RD6+alXc
 +s5kIDKXMeZFi+4C3CgT8LIClLblGN8c6xiSP8hDx6Tt+2piU59XoHyfp
 OWghnWFdtMs78Qufjuj0PPRSIKDlPAp8n41fo3DNSKp/O+pCkFNmFk0Sw
 uDAc8p6/qFUjleX1MfZEqDOTC3BDujd6N7TkPOB4Xt4aVHJQmdWWFe6B2 Q==;
X-CSE-ConnectionGUID: H/9ALWjWSqOdO87kg4Gi9A==
X-CSE-MsgGUID: h/SiY1RYSz6aOonIxI/ULg==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="81059113"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="81059113"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 09:19:20 -0700
X-CSE-ConnectionGUID: PrFgOoi1TsG/HH0hOAnzlw==
X-CSE-MsgGUID: QpcctSY0StGhyWNgC9r5OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="228395108"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.245.176])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 09:19:19 -0700
Date: Fri, 17 Apr 2026 19:19:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 04/11] drm/i915: Introduce pin_params.needs_cpu_lmem_access
Message-ID: <aeJdhD2D9bsw0OnF@intel.com>
References: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
 <20260416174448.28264-5-ville.syrjala@linux.intel.com>
 <8e03ca87134e5bebee44aabeccd5fb86a096d4fa@intel.com>
 <aeIac-2O3xy6uso6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aeIac-2O3xy6uso6@intel.com>
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
X-Rspamd-Queue-Id: 3027A41D075
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 17, 2026 at 02:33:07PM +0300, Ville Syrjälä wrote:
> On Fri, Apr 17, 2026 at 12:39:54PM +0300, Jani Nikula wrote:
> > On Thu, 16 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >
> > > Add a new flag pin_params.neeeds_cpu_lmem_access so that the
> > > low level pinning code doesn't need to peek into the display
> > > driver's framebuffer structure.
> > >
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_fb_pin.h | 1 +
> > >  drivers/gpu/drm/i915/i915_fb_pin.c          | 4 +++-
> > >  drivers/gpu/drm/xe/display/xe_fb_pin.c      | 3 ++-
> > >  3 files changed, 6 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> > > index e6271437459d..bcf5a1f46092 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> > > @@ -19,6 +19,7 @@ struct intel_fb_pin_params {
> > >  	unsigned int alignment;
> > >  	unsigned int phys_alignment;
> > >  	unsigned int vtd_guard;
> > > +	bool needs_cpu_lmem_access;
> > >  };
> > >  
> > >  struct i915_vma *
> > > diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
> > > index 780be25ad43b..96ffc4b0d809 100644
> > > --- a/drivers/gpu/drm/i915/i915_fb_pin.c
> > > +++ b/drivers/gpu/drm/i915/i915_fb_pin.c
> > > @@ -61,7 +61,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
> > >  			 * ensure it is always in the mappable part of lmem, if this is
> > >  			 * a small-bar device.
> > >  			 */
> > > -			if (intel_fb_needs_cpu_access(fb))
> > > +			if (pin_params->needs_cpu_lmem_access)
> > >  				flags &= ~I915_BO_ALLOC_GPU_ONLY;
> > >  			ret = __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
> > >  							flags);
> > > @@ -275,6 +275,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
> > >  			.alignment = intel_plane_fb_min_alignment(plane_state),
> > >  			.phys_alignment = intel_plane_fb_min_phys_alignment(plane_state),
> > >  			.vtd_guard = intel_plane_fb_vtd_guard(plane_state),
> > > +			.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
> > 
> > IIUC this path never uses .needs_cpu_lmem_access, but you initialize it
> > anyway. What I find confusing is initializing it here apparently
> > unnecessarily, but then leaving it out on a number of other paths that
> > don't need it.
> 
> Hmm, yeah looks like we don't have the explicit migrate stuff
> in the DPT path for some reason.

Doh. Misread it. It is exactly the DPT path where we have this.
And that makes sense since DG2+ require DPT for tiled buffers
and clear color is only a thing with certain tiled modifiers.
And DG1, which doesn't have DPT, also doesn't support small-BAR
operation, so the migration is never needed there.

I guess the only situation where we might need the migration
in the ggtt path is if we run DG2 with DPT disable via the
modparam. But I've never actually tried that so not sure it
even works. Should probably give it a go at some point...

-- 
Ville Syrjälä
Intel
