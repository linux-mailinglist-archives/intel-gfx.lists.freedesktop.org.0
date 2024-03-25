Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B10C88AE46
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 19:30:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1146210EA8D;
	Mon, 25 Mar 2024 18:30:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cp4dupsi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3499410EA8D
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 18:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711391401; x=1742927401;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FUZC9REnQtpXXCLORnBOaPvNr0VIwGGlUB750DqrkBI=;
 b=cp4dupsiBoakuhyM79cTg4oeDTxCucGkZ7JETz2uTojN4+MgKPzqAoS4
 BMJpjujsSXWYPU/MReMUEs9Pl9hiyfdEh1Se4UK8ShTzWoPrx4WsOf3Yl
 SB/EAQsMPftNIrERl2WKg5cFYqlyYCmXQXYOMPLioA/7Oe6XDMo2M1k1G
 KO67QPFWjIcvfzuC/ecyFHiqkWGPlz/6s4+Wht2qZQpzS+DqjCLwgYeL8
 ep+Teg7ZZFxkaUAZO73Hn2R7o89vd9Zntb9t4mxQkzcV9p0jrsjs8xi5a
 DNWaIj2VrOj3BSXCFr2B+mdb1HgeZp/GFMe9lI2jDmEcP1IoIJ3rgENvX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6279074"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6279074"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 11:30:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="46860200"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 11:29:59 -0700
Date: Mon, 25 Mar 2024 20:29:56 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 1/4] drm/i915: Update mbus in intel_dbuf_mbus_update and
 do it properly
Message-ID: <ZgHCpHvSXRJT8X0v@intel.com>
References: <20240325112329.7922-1-stanislav.lisovskiy@intel.com>
 <20240325112329.7922-2-stanislav.lisovskiy@intel.com>
 <ZgGOHR8gOPUQNdMS@intel.com> <ZgGtz/jg1AK2Af6G@intel.com>
 <ZgGwOSEQIrp8auff@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZgGwOSEQIrp8auff@intel.com>
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

On Mon, Mar 25, 2024 at 07:11:21PM +0200, Ville Syrjälä wrote:
> On Mon, Mar 25, 2024 at 07:01:03PM +0200, Lisovskiy, Stanislav wrote:
> > On Mon, Mar 25, 2024 at 04:45:49PM +0200, Ville Syrjälä wrote:
> > > On Mon, Mar 25, 2024 at 01:23:26PM +0200, Stanislav Lisovskiy wrote:
> > > > According to BSpec we need to do correspondent MBUS updates before
> > > > or after DBUF reallocation, depending on whether we are enabling
> > > > or disabling mbus joining(typical scenario is swithing between
> > > > multiple and single displays).
> > > > 
> > > > Also we need to be able to update dbuf min tracker and mdclk ratio
> > > > separately if mbus_join state didn't change, so lets add one
> > > > degree of freedom and make it possible.
> > > > 
> > > > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/skl_watermark.c | 54 +++++++++++++-------
> > > >  1 file changed, 35 insertions(+), 19 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > > index bc341abcab2fe..2b947870527fc 100644
> > > > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > > @@ -3570,16 +3570,38 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio
> > > >  			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
> > > >  }
> > > >  
> > > > +static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state)
> > > > +{
> > > > +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> > > > +	const struct intel_dbuf_state *old_dbuf_state =
> > > > +		intel_atomic_get_old_dbuf_state(state);
> > > > +	const struct intel_dbuf_state *new_dbuf_state =
> > > > +		intel_atomic_get_new_dbuf_state(state);
> > > > +
> > > > +	if (DISPLAY_VER(i915) >= 20 &&
> > > > +	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
> > > > +		/*
> > > > +		 * For Xe2LPD and beyond, when there is a change in the ratio
> > > > +		 * between MDCLK and CDCLK, updates to related registers need to
> > > > +		 * happen at a specific point in the CDCLK change sequence. In
> > > > +		 * that case, we defer to the call to
> > > > +		 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
> > > > +		 */
> > > > +		return;
> > > > +	}
> > > 
> > > That still needs to be removed or else we'll not update the ratio at
> > > all during the mbus_join changes. I don't think I saw any removal
> > > in subsequent patches.
> > > 
> > > > +
> > > > +	intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,
> > 
> > I don't get what is happening here.
> > 
> > "That whole condition I think needs to go. We want to update the ratio
> > also when changing mbus joining. But that behavioural change doesn't
> > really belong in this patch, so this is
> > 
> > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>"
> > 
> > Now it again needs to be changed or changed in other patch(in this series or which one), 
> > I don't follow.
> > Should it be the patch changing MBUS join value?
> 
> Yeah, probably should be in the last patch. Perhaps we
> could change it before that, but that would need some
> extra brain power to make sure it doesn't temporarily
> break something. So probably not worth the hassle
> to do as a separate patch.
> 
> > 
> > Stan
> > 
> > > 
> > > And it just occurred to me that this thing will in fact be wrong
> > > during the pre/post ddb hooks *and* cdclk is getting decreased
> > > from the post plane update hook.
> > > 
> > > I can't immediately think of a super nice way to handle this.

First of all why that
condition above prevents update when mbus join changes?
It exits when mdclk_cdclk ratio is changed not mbus_join?

That review process to me seems rather chaotic.
Constantly something new pops up, moreover we did previously agree
about that code.

> > > 
> > > Perhaps the most stragithforward idea is to just get the mdclk/cdclk
> > > ratio from i915->display.cdclk.hw during the pre/post ddb hooks.
> > > cdclk serialization should guard against parallel updates from
> > > two both places and thus isplay.cdclk.hw should be safe to use.
> > > 
> > > The other option would be to determine if a cdclk decrease
> > > is going to happen or not, and depending on that use the
> > > old vs. new dbuf_state when updating the ratio in the
> > > pre/post ddb hooks.


> > > 
> > > > +					    new_dbuf_state->joined_mbus);
> > > > +}
> > > > +
> > > >  /*
> > > >   * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
> > > >   * update the request state of all DBUS slices.
> > > >   */
> > > > -static void update_mbus_pre_enable(struct intel_atomic_state *state)
> > > > +static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
> > > >  {
> > > >  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> > > >  	u32 mbus_ctl;
> > > > -	const struct intel_dbuf_state *old_dbuf_state =
> > > > -		intel_atomic_get_old_dbuf_state(state);
> > > >  	const struct intel_dbuf_state *new_dbuf_state =
> > > >  		intel_atomic_get_new_dbuf_state(state);
> > > >  
> > > > @@ -3600,21 +3622,6 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
> > > >  	intel_de_rmw(i915, MBUS_CTL,
> > > >  		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
> > > >  		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
> > > > -
> > > > -	if (DISPLAY_VER(i915) >= 20 &&
> > > > -	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
> > > > -		/*
> > > > -		 * For Xe2LPD and beyond, when there is a change in the ratio
> > > > -		 * between MDCLK and CDCLK, updates to related registers need to
> > > > -		 * happen at a specific point in the CDCLK change sequence. In
> > > > -		 * that case, we defer to the call to
> > > > -		 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
> > > > -		 */
> > > > -		return;
> > > > -	}
> > > > -
> > > > -	intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,
> > > > -					    new_dbuf_state->joined_mbus);
> > > >  }
> > > >  
> > > >  void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
> > > > @@ -3632,7 +3639,11 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
> > > >  
> > > >  	WARN_ON(!new_dbuf_state->base.changed);
> > > >  
> > > > -	update_mbus_pre_enable(state);
> > > > +	if (!old_dbuf_state->joined_mbus && new_dbuf_state->joined_mbus) {
> > > 
> > > I think you squashed that stuff into the wrong patch.
> > > This one should have a pure refactoring patch.
> > > 
> > > > +		intel_dbuf_mbus_join_update(state);
> > > > +		intel_dbuf_mdclk_min_tracker_update(state);
> > > > +	}
> > > > +
> > > >  	gen9_dbuf_slices_update(i915,
> > > >  				old_dbuf_state->enabled_slices |
> > > >  				new_dbuf_state->enabled_slices);
> > > > @@ -3653,6 +3664,11 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
> > > >  
> > > >  	WARN_ON(!new_dbuf_state->base.changed);
> > > >  
> > > > +	if (old_dbuf_state->joined_mbus && !new_dbuf_state->joined_mbus) {
> > > > +		intel_dbuf_mbus_join_update(state);
> > > > +		intel_dbuf_mdclk_min_tracker_update(state);
> > > > +	}
> > > > +
> > > >  	gen9_dbuf_slices_update(i915,
> > > >  				new_dbuf_state->enabled_slices);
> > > >  }
> > > > -- 
> > > > 2.37.3
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> 
> -- 
> Ville Syrjälä
> Intel
