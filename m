Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0208D5B4A
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 09:16:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD96B14A8D7;
	Fri, 31 May 2024 07:16:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aJelNJc0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7B1D14A8D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 07:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717139804; x=1748675804;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mBgkRYrekXX5j0Axox068+wbTIiuvRtruzaWXO5Sp6s=;
 b=aJelNJc08YECL/FqQxqhUJZyXjpURVIdzK3fAqf+Cb+sjDS79F5VXb1U
 DObNE5bzNI+nmgGf1HCpOz9gcq7jfH3PE0tP74jJ5V6cmq9/pv1kjvK9X
 tYy6EuJ88/+gw5+holc4Kia6HZbh2hzKxg2H35pdDPJ+H3Fobr9gq24CR
 ndTzrZ8abwbME43RRJTDjZQaxoZaPLSGoG4FAHPNBwC+4W5mrpJaDYo8a
 4Lt1XvJSvTFFKZNJkpF2gxTNJ7N6Pp8alNPbYJ7wtQsp00YEA3N6YF3Do
 Mz5FRhAMToEwdYRS7RRJ0fOEjsB2qgS0UUS4+QhbSEqkfH7px8LE93Wm6 Q==;
X-CSE-ConnectionGUID: CWI2FpFBTli7Z8OHA3t62g==
X-CSE-MsgGUID: 28vlpNScQnStkR4Y/G3zkg==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13516824"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="13516824"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 00:16:44 -0700
X-CSE-ConnectionGUID: Chu0i0LiRPqya2gPauwvxA==
X-CSE-MsgGUID: 1H4bqjU1QkKhiXZNYE/KUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="36071354"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 00:16:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 10:16:40 +0300
Date: Fri, 31 May 2024 10:16:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915: Plumb the full atomic state into
 icl_check_nv12_planes()
Message-ID: <Zll5WISzmMzr2ein@intel.com>
References: <20240528184945.24083-1-ville.syrjala@linux.intel.com>
 <20240528184945.24083-2-ville.syrjala@linux.intel.com>
 <87v82vh2z7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87v82vh2z7.fsf@intel.com>
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

On Thu, May 30, 2024 at 03:57:16PM +0300, Jani Nikula wrote:
> On Tue, 28 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > icl_check_nv12_planes() needs the full atomic state. Instead of
> > digging that out from dubious sources plumb it in explicitly.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Are most to_intel_atomic_state() uses suspect...?

The ones of the form to_intel_atomic_state(foo_obj_state->state).

Though I guess "suspect" is a bit strong. They do work as long
as its done before swap_state(), but after that they just give
you NULL. Which can easily bite you when you think you found
some useful helper function and then proceed to call it during
the actual commit phase and get greeted by an oops. So "undesirable"
is perhaps a better way to put it. I would like to get rid of all
of these, if possible.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 11 ++++++-----
> >  1 file changed, 6 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 071ba95a1472..dbbc72494a46 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4033,11 +4033,12 @@ static int icl_add_linked_planes(struct intel_atomic_state *state)
> >  	return 0;
> >  }
> >  
> > -static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
> > +static int icl_check_nv12_planes(struct intel_atomic_state *state,
> > +				 struct intel_crtc *crtc)
> >  {
> > -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > -	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
> > +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > +	struct intel_crtc_state *crtc_state =
> > +		intel_atomic_get_new_crtc_state(state, crtc);
> >  	struct intel_plane *plane, *linked;
> >  	struct intel_plane_state *plane_state;
> >  	int i;
> > @@ -5786,7 +5787,7 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
> >  					    new_crtc_state, i) {
> >  		u8 old_active_planes, new_active_planes;
> >  
> > -		ret = icl_check_nv12_planes(new_crtc_state);
> > +		ret = icl_check_nv12_planes(state, crtc);
> >  		if (ret)
> >  			return ret;
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
