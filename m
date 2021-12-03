Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C6E467498
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 11:14:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3DBB7326A;
	Fri,  3 Dec 2021 10:14:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 869107326A
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 10:14:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="223825656"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="223825656"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 02:14:28 -0800
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="678041985"
Received: from unknown (HELO intel.com) ([10.237.72.167])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 02:14:27 -0800
Date: Fri, 3 Dec 2021 12:14:16 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20211203101416.GA18525@intel.com>
References: <20211203094041.18399-1-stanislav.lisovskiy@intel.com>
 <20211203094041.18399-3-stanislav.lisovskiy@intel.com>
 <YanqykOl8vEiE5o9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YanqykOl8vEiE5o9@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Use wm0 only during async
 flips for DG2
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
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.co
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 03, 2021 at 12:00:42PM +0200, Ville Syrjälä wrote:
> On Fri, Dec 03, 2021 at 11:40:40AM +0200, Stanislav Lisovskiy wrote:
> > This optimization allows to achieve higher perfomance
> > during async flips.
> > For the first async flip we have to still temporarily
> > switch to sync flip, in order to reprogram plane
> > watermarks, so this requires taking into account
> > old plane state's do_async_flip flag.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 13 ++++++++++++-
> >  drivers/gpu/drm/i915/intel_pm.c              |  5 ++++-
> >  2 files changed, 16 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index b8fe40050463..872bbb965992 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5439,6 +5439,16 @@ static bool needs_scaling(const struct intel_plane_state *state)
> >  	return (src_w != dst_w || src_h != dst_h);
> >  }
> >  
> > +static bool needs_async_flip_wm_override(struct intel_plane *plane,
> > +					 const struct intel_plane_state *new_plane_state,
> > +					 const struct intel_plane_state *old_plane_state)
> > +{
> > +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> > +
> > +	return (DISPLAY_VER(dev_priv) >= 13) && !old_plane_state->do_async_flip &&
> > +	       new_plane_state->do_async_flip;
> > +}
> > +
> >  int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_state,
> >  				    struct intel_crtc_state *new_crtc_state,
> >  				    const struct intel_plane_state *old_plane_state,
> > @@ -5558,7 +5568,8 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
> >  			 needs_scaling(new_plane_state))))
> >  		new_crtc_state->disable_lp_wm = true;
> >  
> > -	if (new_crtc_state->uapi.async_flip && plane->async_flip)
> > +	if (new_crtc_state->uapi.async_flip && new_plane_state->do_async_flip &&
> > +	    !needs_async_flip_wm_override(plane, new_plane_state, old_plane_state))
> >  		new_plane_state->do_async_flip = true;
> 
> That code looks super confused.

Oh.. thanks for spotting new_plane_state->do_async_flip is redundant here.
The logic is such that if old_plane_state didn't have do_async_flip flag set,
but the new_plane_state has, it means we do first async flip here, thus
it requires temporary switching to sync flip as we discussed.

So I actually meant something like this here:

> > +   if (new_crtc_state->uapi.async_flip && !needs_async_flip_wm_override(plane, 
						new_plane_state, old_plane_state))


> 
> >  
> >  	return 0;
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index c5c1b6bef9a2..0b45d1d61d0f 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -5542,8 +5542,11 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
> >  	uint_fixed_16_16_t method1, method2;
> >  	uint_fixed_16_16_t selected_result;
> >  	u32 blocks, lines, min_ddb_alloc = 0;
> > +	bool dg2_async_flip_optimization = (DISPLAY_VER(dev_priv) >= 13) &&
> > +					   crtc_state->uapi.async_flip &&
> > +					   plane_id != PLANE_CURSOR;
> 
> Function please. Hmm. And rather than checking the plane_id we should
> probably just check plane->async_flip since we don't want to minimize
> the watermarks for any other plane than the one doing the async flips.

Function sounds like good idea.

Stan

> 
> >  
> > -	if (latency == 0) {
> > +	if (latency == 0 || (dg2_async_flip_optimization && (level > 0))) {
> >  		/* reject it */
> >  		result->min_ddb_alloc = U16_MAX;
> >  		return;
> > -- 
> > 2.24.1.485.gad05a3d8e5
> 
> -- 
> Ville Syrjälä
> Intel
