Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2200BA7C079
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 17:21:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59CF10EBF3;
	Fri,  4 Apr 2025 15:21:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="inztJtIZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B59C010EBF3;
 Fri,  4 Apr 2025 15:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743780095; x=1775316095;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VdZaHEounzkxFPso+VEfzCCbD0PFoUQv2JeLGSnn82Q=;
 b=inztJtIZOmh0LDT8asOCJzzm2sCikvkFTim1gwhcZyl6BqAp1+hbquZL
 H070dwuCaY8YvOz4vmcStT20c+0Yh0M1Ll2wNRnhKx6mSnQ/fA4/nDFE0
 s5ZQ+8fA6ZRE0QVThTiDklDcqGycOf1++xqy3g9h/CIxU/TOCBJ7PREHR
 wnIVq00YuaT4iNYKuneGyh/23ljigx49DCoTFfrKrwWPH3ZoW7bgK2nNE
 FO/8t0dpBuyRq6Z9kI//68g/GN6jcldthRhB+Bm9kQa0UW2q7vo9En18E
 /l8qzkhWvGO4otLZqoBz+BRlnQjv1SfYMk6lcXkUOvN786M1hPuarXut3 A==;
X-CSE-ConnectionGUID: kG9kJDPtTg2KEl0qbDsgrw==
X-CSE-MsgGUID: p5SaPCmiT/iQZVEx50tBkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11394"; a="55857269"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="55857269"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 08:21:34 -0700
X-CSE-ConnectionGUID: DDFEQpxXSUiHbqpgHok/bA==
X-CSE-MsgGUID: eOdwwvnPTXyHJC8cVEsZTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="132538765"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 04 Apr 2025 08:21:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Apr 2025 18:21:30 +0300
Date: Fri, 4 Apr 2025 18:21:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/6] drm/i915: Nuke intel_plane_ggtt_offset()
Message-ID: <Z-_4-rGD_gEAS-zc@intel.com>
References: <20250402172240.9275-1-ville.syrjala@linux.intel.com>
 <20250402172240.9275-3-ville.syrjala@linux.intel.com>
 <87o6xd1wdr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o6xd1wdr.fsf@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Apr 03, 2025 at 11:29:04AM +0300, Jani Nikula wrote:
> On Wed, 02 Apr 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > We don't really need the extra intel_plane_ggtt_offset() wrapper
> > anymore. Get rid of it.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 5 -----
> >  drivers/gpu/drm/i915/display/intel_atomic_plane.h  | 2 --
> >  drivers/gpu/drm/i915/display/intel_fb_pin.c        | 2 +-
> >  drivers/gpu/drm/i915/display/intel_plane_initial.c | 2 +-
> >  drivers/gpu/drm/xe/display/xe_fb_pin.c             | 2 +-
> >  drivers/gpu/drm/xe/display/xe_plane_initial.c      | 2 +-
> >  6 files changed, 4 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index 7276179df878..264a50b29c16 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -1565,8 +1565,3 @@ int intel_atomic_check_planes(struct intel_atomic_state *state)
> >  
> >  	return 0;
> >  }
> > -
> > -u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state)
> > -{
> > -	return i915_ggtt_offset(plane_state->ggtt_vma);
> > -}
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > index 6efac923dcbc..65edd88d28a9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > @@ -88,6 +88,4 @@ int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
> >  				     struct intel_crtc *crtc);
> >  int intel_atomic_check_planes(struct intel_atomic_state *state);
> >  
> > -u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state);
> > -
> >  #endif /* __INTEL_ATOMIC_PLANE_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > index fb7d0c8b9302..f2d8675dd98a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > @@ -311,7 +311,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
> >  		plane_state->surf = i915_gem_object_get_dma_address(obj, 0) +
> >  			plane->surf_offset(plane_state);
> >  	} else {
> > -		plane_state->surf = intel_plane_ggtt_offset(plane_state) +
> > +		plane_state->surf = i915_ggtt_offset(plane_state->ggtt_vma) +
> >  			plane->surf_offset(plane_state);
> >  	}
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > index 1c49610eb42f..3afff528a7bd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > @@ -356,7 +356,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
> >  	    i915_vma_pin_fence(vma) == 0 && vma->fence)
> >  		plane_state->flags |= PLANE_HAS_FENCE;
> >  
> > -	plane_state->surf = intel_plane_ggtt_offset(plane_state);
> > +	plane_state->surf = i915_ggtt_offset(plane_state->ggtt_vma);
> >  
> >  	plane_state->uapi.src_x = 0;
> >  	plane_state->uapi.src_y = 0;
> > diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > index b9c45a5a3d82..b2e979805455 100644
> > --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > @@ -438,7 +438,7 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
> >  
> >  	new_plane_state->ggtt_vma = vma;
> >  
> > -	new_plane_state->surf = intel_plane_ggtt_offset(new_plane_state) +
> > +	new_plane_state->surf = i915_ggtt_offset(new_plane_state->ggtt_vma) +
> >  		plane->surf_offset(new_plane_state);
> 
> I don't think xe specific code should be calling i915 compat functions
> directly.

xe doesn't seem to have anything native to call here either.
I'll leave it to someone else to fix that mess.

> 
> >  
> >  	return 0;
> > diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > index a15f60835239..c563edf14b1a 100644
> > --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > @@ -239,7 +239,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
> >  
> >  	plane_state->ggtt_vma = vma;
> >  
> > -	plane_state->surf = intel_plane_ggtt_offset(plane_state);
> > +	plane_state->surf = i915_ggtt_offset(plane_state->ggtt_vma);
> 
> Ditto.
> 
> >  
> >  	plane_state->uapi.src_x = 0;
> >  	plane_state->uapi.src_y = 0;
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
