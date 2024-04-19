Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCF18AB384
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 18:41:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88AD610FA1F;
	Fri, 19 Apr 2024 16:41:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nyg/Bdht";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE4110FAD9
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 16:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713544896; x=1745080896;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Z2ReWgUd+6zPKKOE18TnI8mruFV4L2oPGlINRloj4K0=;
 b=nyg/BdhtICnOO9fxiMdOl3Sjdnf9lyVyb/PKAlXJb2/IoSEVgehgsQZS
 k3Nxco5KJJ1GeZ+/5TWGuMoFR/+RpjfU7J6jxXESov0AuJVxSYvUkQwt3
 NuQOvWJpOCnajy+9h29JoSdEa3cNO+/j+4uBtsVw7IKPjngpjAWhfJM4c
 9cIXJPSMDjyphGb7T7PjAyskIj166Mcot1B70rE6mw0lOl4c6O52TE/i0
 pobEIdOnzCYdpZGNzQ45V1sJHSP3krNHfQk/35LV52Ug7x5Pg9+ROfz1Y
 i0pzSZhD5gRcuPDmE4jEuBuESmoMooBfN1uG4dz7F9g8XtkTtUzWOHz3N Q==;
X-CSE-ConnectionGUID: EZLIyN5BRx23o17Ab0Jsbw==
X-CSE-MsgGUID: HKJ6t2DJRxWyRtCS+jL87A==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="9014812"
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; 
   d="scan'208";a="9014812"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 09:41:35 -0700
X-CSE-ConnectionGUID: SsfrXLxHRCyp1gdjz+T/zw==
X-CSE-MsgGUID: yBoTzV8WQw+wmUdadJCYkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="23450955"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Apr 2024 09:41:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Apr 2024 19:41:31 +0300
Date: Fri, 19 Apr 2024 19:41:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 4/6] drm/i915: Eliminate extra frame from skl-glk
 sync->async flip change
Message-ID: <ZiKeuwxEwOufH1IV@intel.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
 <20240320160424.700-5-ville.syrjala@linux.intel.com>
 <IA0PR11MB7307A4E912E95D38FC352FC1BA0D2@IA0PR11MB7307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA0PR11MB7307A4E912E95D38FC352FC1BA0D2@IA0PR11MB7307.namprd11.prod.outlook.com>
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

On Fri, Apr 19, 2024 at 06:39:48AM +0000, Murthy, Arun R wrote:
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Wednesday, March 20, 2024 9:34 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 4/6] drm/i915: Eliminate extra frame from skl-glk sync->async
> > flip change
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On bdw-glk the sync->async flip change takes an extra frame due to the double
> > buffering behaviour of the async flip plane control bit.
> > 
> > Since on skl+ we are now explicitly converting the first async flip to a sync flip
> > (in order to allow changing the modifier and/or
> > ddb/watermarks) we are now taking two extra frames until async flips are
> > actually active. We can drop that back down to one frame by setting the async
> > flip bit already during the sync flip.
> > 
> > Note that on bdw we don't currently do the extra sync flip (see
> > intel_plane_do_async_flip()) so technically we wouldn't have to deal with this in
> > i9xx_plane_update_arm(). But I added the relevant snippet of code there as
> > well, just in case we ever decide to go for the extra sync flip on pre-skl platforms
> > as well (we might, for example, want to change the fb stride).
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Logically changes looks good. I see failures in CI.IGT 
> Better to have this green or a Tested-by would be good.

Those are fixed by https://patchwork.freedesktop.org/series/131518/
whereas this got tested against the previous version of the
igt changes. I'll repost to test against the latest igt changes.
IIRC one can't just reply to the cover letter with a new
Test-with :(

> 
> Thanks and Regards,
> Arun R Murthy
> -------------------
> > ---
> >  drivers/gpu/drm/i915/display/i9xx_plane.c         |  5 +++++
> >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 15 +++++++++++----
> >  .../gpu/drm/i915/display/skl_universal_plane.c    |  5 +++++
> >  3 files changed, 21 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > index 0279c8aabdd1..76fc7626051b 100644
> > --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > @@ -455,6 +455,11 @@ static void i9xx_plane_update_arm(struct intel_plane
> > *plane,
> > 
> >  	dspcntr = plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
> > 
> > +	/* see intel_plane_atomic_calc_changes() */
> > +	if (plane->need_async_flip_disable_wa &&
> > +	    crtc_state->async_flip_planes & BIT(plane->id))
> > +		dspcntr |= DISP_ASYNC_FLIP;
> > +
> >  	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
> > 
> >  	if (DISPLAY_VER(dev_priv) >= 4)
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index 769010d0ebc4..7098a34a17c8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -437,10 +437,6 @@ static bool intel_plane_do_async_flip(struct
> > intel_plane *plane,
> >  	 * only X-tile is supported with async flips, though we could
> >  	 * extend this so other scanout parameters (stride/etc) could
> >  	 * be changed as well...
> > -	 *
> > -	 * FIXME: Platforms with need_async_flip_disable_wa==true will
> > -	 * now end up doing two sync flips initially. Would be nice to
> > -	 * combine those into just the one sync flip...
> >  	 */
> >  	return DISPLAY_VER(i915) < 9 || old_crtc_state->uapi.async_flip;  } @@
> > -604,6 +600,17 @@ static int intel_plane_atomic_calc_changes(const struct
> > intel_crtc_state *old_cr
> >  	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state)) {
> >  		new_crtc_state->do_async_flip = true;
> >  		new_crtc_state->async_flip_planes |= BIT(plane->id);
> > +	} else if (plane->need_async_flip_disable_wa &&
> > +		   new_crtc_state->uapi.async_flip) {
> > +		/*
> > +		 * On platforms with double buffered async flip bit we
> > +		 * set the bit already one frame early during the sync
> > +		 * flip (see {i9xx,skl}_plane_update_arm()). The
> > +		 * hardware will therefore be ready to perform a real
> > +		 * async flip during the next commit, without having
> > +		 * to wait yet another frame for the bit to latch.
> > +		 */
> > +		new_crtc_state->async_flip_planes |= BIT(plane->id);
> >  	}
> > 
> >  	return 0;
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 860574d04f88..ad4c90344f68 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -1174,6 +1174,11 @@ skl_plane_update_arm(struct intel_plane *plane,
> >  	plane_ctl = plane_state->ctl |
> >  		skl_plane_ctl_crtc(crtc_state);
> > 
> > +	/* see intel_plane_atomic_calc_changes() */
> > +	if (plane->need_async_flip_disable_wa &&
> > +	    crtc_state->async_flip_planes & BIT(plane->id))
> > +		plane_ctl |= PLANE_CTL_ASYNC_FLIP;
> > +
> >  	if (DISPLAY_VER(dev_priv) >= 10)
> >  		plane_color_ctl = plane_state->color_ctl |
> >  			glk_plane_color_ctl_crtc(crtc_state);
> > --
> > 2.43.2
> 

-- 
Ville Syrjälä
Intel
