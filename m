Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BEEAD90C2
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 17:06:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18A0A10EA17;
	Fri, 13 Jun 2025 15:06:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JR0YM5p9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F6B410EA1D;
 Fri, 13 Jun 2025 15:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749827187; x=1781363187;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=L6TJ0p8/L1rUDEL+p7R1kyBLOq4EXCWPOTrm6+bkdQ0=;
 b=JR0YM5p9kQ6NQKCKgTkZlGKxRrbQc9axIzNnr/oxd2+lo0aNo70IA67K
 3vtxo5aKlirACXCY2LhU/JCYZiXs1oGZ6ehlxn82DdK40rBFx1Aw8ubZ6
 vqTankxOk+USrhf9g5A2JlVUU23Hil+68lKrg4dhUHBVzaOcy+xBIRQz7
 cjOAYN+MvJWe0GePlPix3V9UPiyGy1lZlWLbNy2CT0twz9eWwznL5WwwS
 TR47u2SH2/KiHadnKL6TCuHiuWEc2XAb2t5E4snrmE6KMteLJ2sQHi9hq
 os3TaCYsiCZCQaFsKyv5ybbTMBihTW0eu4+VP9M7nK0gW8tfYPQ7hNqqf Q==;
X-CSE-ConnectionGUID: yGLqvraCS6q77enUbu1T8A==
X-CSE-MsgGUID: /mdfhXVJQweqJFNITfv4ew==
X-IronPort-AV: E=McAfee;i="6800,10657,11463"; a="62322211"
X-IronPort-AV: E=Sophos;i="6.16,234,1744095600"; d="scan'208";a="62322211"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 08:06:27 -0700
X-CSE-ConnectionGUID: wSb3fndkSLegFRtKJdocAA==
X-CSE-MsgGUID: 2ER2LpfaQi6Bzu5Iq49A0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,234,1744095600"; d="scan'208";a="153140852"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.161])
 by orviesa005.jf.intel.com with SMTP; 13 Jun 2025 08:06:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Jun 2025 18:06:22 +0300
Date: Fri, 13 Jun 2025 18:06:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [RESEND 5/5] drm/i915/plane: rename
 intel_atomic_add_affected_planes() to intel_plane_add_affected()
Message-ID: <aEw-bvxuCNKFqFV8@intel.com>
References: <cover.1749728173.git.jani.nikula@intel.com>
 <88e5eff2556e6363e51cbe4d2143fa0817d3c00d.1749728173.git.jani.nikula@intel.com>
 <aEw9fc3XSfaoxCGV@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aEw9fc3XSfaoxCGV@intel.com>
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

On Fri, Jun 13, 2025 at 06:02:21PM +0300, Ville Syrjälä wrote:
> On Thu, Jun 12, 2025 at 02:37:11PM +0300, Jani Nikula wrote:
> > Rename to follow filename based naming.
> > 
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
> >  drivers/gpu/drm/i915/display/intel_plane.c   | 4 ++--
> >  drivers/gpu/drm/i915/display/intel_plane.h   | 4 ++--
> >  3 files changed, 6 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index bd81ff9e3854..978c524546c6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5479,7 +5479,7 @@ static int intel_modeset_pipe(struct intel_atomic_state *state,
> >  	if (ret)
> >  		return ret;
> >  
> > -	ret = intel_atomic_add_affected_planes(state, crtc);
> > +	ret = intel_plane_add_affected(state, crtc);
> 
> This breaks the common naming pattern. At the very least I think
> it needs to keep the "planes" at the end to make it clear what
> it's adding.
> 
> But from the "does this sentence make any sense?" POV I'd
> rather it be called intel_crtc_add_affected_planes().

If you're worried about the namespacing then I think just move it
(and intel_crtc_add_planes_to_state()) to intel_crtc.c. There's
nothing really plane specific in these, so doesnt' matter where
they live AFAICS.

> 
> >  	if (ret)
> >  		return ret;
> >  
> > @@ -6195,7 +6195,7 @@ static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
> >  		if (ret)
> >  			return ret;
> >  
> > -		ret = intel_atomic_add_affected_planes(state, crtc);
> > +		ret = intel_plane_add_affected(state, crtc);
> >  		if (ret)
> >  			return ret;
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
> > index 2ac7a4e655f5..11aeb7435b05 100644
> > --- a/drivers/gpu/drm/i915/display/intel_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> > @@ -1433,8 +1433,8 @@ static int intel_crtc_add_planes_to_state(struct intel_atomic_state *state,
> >  	return 0;
> >  }
> >  
> > -int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
> > -				     struct intel_crtc *crtc)
> > +int intel_plane_add_affected(struct intel_atomic_state *state,
> > +			     struct intel_crtc *crtc)
> >  {
> >  	const struct intel_crtc_state *old_crtc_state =
> >  		intel_atomic_get_old_crtc_state(state, crtc);
> > diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
> > index 5cb995b2940f..4ef012c08fa4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_plane.h
> > +++ b/drivers/gpu/drm/i915/display/intel_plane.h
> > @@ -83,8 +83,8 @@ void intel_plane_helper_add(struct intel_plane *plane);
> >  bool intel_plane_needs_physical(struct intel_plane *plane);
> >  void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_state,
> >  					 struct intel_plane_state *new_plane_state);
> > -int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
> > -				     struct intel_crtc *crtc);
> > +int intel_plane_add_affected(struct intel_atomic_state *state,
> > +			     struct intel_crtc *crtc);
> >  int intel_plane_atomic_check(struct intel_atomic_state *state);
> >  
> >  u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state);
> > -- 
> > 2.39.5
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
