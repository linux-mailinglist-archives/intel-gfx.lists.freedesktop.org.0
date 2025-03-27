Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AA5A731DF
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 13:06:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6C610E8AF;
	Thu, 27 Mar 2025 12:06:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZTmuz300";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B742810E8AE;
 Thu, 27 Mar 2025 12:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743077178; x=1774613178;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mlGgGzm765iNgrMfQqVgnBmA33HTsj3cbX6uSVDSkWg=;
 b=ZTmuz300mAaXdmQ3Y9GbVsC3OGHWh1dFUv/QM5SghmWBIIVa1RruksJv
 DNucmGjKxtBvetZdV/ZeOAaYElB2n60TS8X9PA7DO9wgDYaSK5eIkk2xG
 mCq7FdFOV8KzjxJhDMx51OvNS6+6OsMvxX4fcmU7dZW8AWCkl00rFV6//
 CHf1mCxxqPD65zS4Y8gWsu/GdyoksME6dB760514Fo5118FbH9I37A7Jr
 VAY1e9GZkkieDFShEt0sfUpVeDfEiZv5XMVAezX5nHGmH8ktdi8hn4XSa
 h7lad5mdbyvKsTOrPX9Tw3WN9oPHku1zc2loYimDlMP4F0fvrCGleHwAv A==;
X-CSE-ConnectionGUID: AOrrxb1jTNuq0FBcE2aVCw==
X-CSE-MsgGUID: W8twonI1Q12TkVqCKH1mGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="61798403"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="61798403"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 05:06:16 -0700
X-CSE-ConnectionGUID: zImeuglCRIGF8vrEbpxkvQ==
X-CSE-MsgGUID: VZN5+cEMReGteBCnjXCQAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="130315434"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 27 Mar 2025 05:06:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Mar 2025 14:06:12 +0200
Date: Thu, 27 Mar 2025 14:06:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 05/14] drm/i915: Avoid triggering unwanted cdclk
 changes due to dbuf bandwidth changes
Message-ID: <Z-U_NLpqX9vpJs76@intel.com>
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
 <20250326162544.3642-6-ville.syrjala@linux.intel.com>
 <87y0wq6gz0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87y0wq6gz0.fsf@intel.com>
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

On Thu, Mar 27, 2025 at 10:00:19AM +0200, Jani Nikula wrote:
> On Wed, 26 Mar 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Currently intel_bw_calc_min_cdclk() always adds the bw_state
> > to the atomic state. Not only does it result in potentially
> > redundant work later, it's also currently causing unwanted cdclk
> > changes during driver load.
> 
> Can you elaborate how we currently end up changing cdclk even if the
> dbuf bw isn't changing? Different rules wrt to GOP?

Older GOP versions always use the max cdclk. IIRC newer ones
might be using a more optimal value.

> 
> Anyway, the change make sense no matter what,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> >
> > Check if the dbuf bw is actually changing before we decide to
> > pull in the bw state.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.c | 17 +++++++++++++----
> >  1 file changed, 13 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > index 67d088da1f38..19b516084fac 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -1294,7 +1294,8 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
> >  	struct intel_bw_state *new_bw_state = NULL;
> >  	const struct intel_bw_state *old_bw_state = NULL;
> >  	const struct intel_cdclk_state *cdclk_state;
> > -	const struct intel_crtc_state *crtc_state;
> > +	const struct intel_crtc_state *old_crtc_state;
> > +	const struct intel_crtc_state *new_crtc_state;
> >  	int old_min_cdclk, new_min_cdclk;
> >  	struct intel_crtc *crtc;
> >  	int i;
> > @@ -1302,15 +1303,23 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
> >  	if (DISPLAY_VER(display) < 9)
> >  		return 0;
> >  
> > -	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> > +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > +					    new_crtc_state, i) {
> > +		struct intel_dbuf_bw old_dbuf_bw, new_dbuf_bw;
> > +
> > +		skl_crtc_calc_dbuf_bw(&old_dbuf_bw, old_crtc_state);
> > +		skl_crtc_calc_dbuf_bw(&new_dbuf_bw, new_crtc_state);
> > +
> > +		if (!intel_dbuf_bw_changed(display, &old_dbuf_bw, &new_dbuf_bw))
> > +			continue;
> > +
> >  		new_bw_state = intel_atomic_get_bw_state(state);
> >  		if (IS_ERR(new_bw_state))
> >  			return PTR_ERR(new_bw_state);
> >  
> >  		old_bw_state = intel_atomic_get_old_bw_state(state);
> >  
> > -		skl_crtc_calc_dbuf_bw(&new_bw_state->dbuf_bw[crtc->pipe],
> > -				      crtc_state);
> > +		new_bw_state->dbuf_bw[crtc->pipe] = new_dbuf_bw;
> >  	}
> >  
> >  	if (!old_bw_state)
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
