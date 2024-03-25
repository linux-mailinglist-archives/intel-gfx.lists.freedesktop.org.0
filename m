Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A441588AA89
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 18:01:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00CD710E9E4;
	Mon, 25 Mar 2024 17:01:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kaLnXJqK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9771010E9E4
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 17:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711386102; x=1742922102;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BQdKGyoKWIejpDRS32KYUX9BWzecWx4tNp8vQEYWYPo=;
 b=kaLnXJqKtx/caj2mpNE6CTDrkJUvWJ4PIds8B0GTiL3DyZin7ZB34fk3
 JsH1LBZ/3rjxmlcRmbDQZJUhtJcy9xDOu8Uw1wzKCZVesIvATprlzFAAG
 8vdWjFNeMyUqz7C6m6YQuQmE7LtafWP6xNi+jekWhyi5wMwPShMgoa1h/
 GOIRr7bpLKaBA17wA0PpLEGj8B8JWXUwAC1Be0+RYTQIFKVOShxaskK7/
 ieDoBUenll1IocyzqBe5tfs8pulaqVNpKxrLAw75+vtnlnz+3fB7qidlB
 SKG6s8pyu0sNgXtyFctTUA7pmjQgG38/vzQ2CgFJR2ZYEimcOI3+YnZDD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="10182372"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="10182372"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 10:01:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="16353623"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 10:01:07 -0700
Date: Mon, 25 Mar 2024 19:01:03 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 1/4] drm/i915: Update mbus in intel_dbuf_mbus_update and
 do it properly
Message-ID: <ZgGtz/jg1AK2Af6G@intel.com>
References: <20240325112329.7922-1-stanislav.lisovskiy@intel.com>
 <20240325112329.7922-2-stanislav.lisovskiy@intel.com>
 <ZgGOHR8gOPUQNdMS@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZgGOHR8gOPUQNdMS@intel.com>
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

On Mon, Mar 25, 2024 at 04:45:49PM +0200, Ville Syrjälä wrote:
> On Mon, Mar 25, 2024 at 01:23:26PM +0200, Stanislav Lisovskiy wrote:
> > According to BSpec we need to do correspondent MBUS updates before
> > or after DBUF reallocation, depending on whether we are enabling
> > or disabling mbus joining(typical scenario is swithing between
> > multiple and single displays).
> > 
> > Also we need to be able to update dbuf min tracker and mdclk ratio
> > separately if mbus_join state didn't change, so lets add one
> > degree of freedom and make it possible.
> > 
> > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 54 +++++++++++++-------
> >  1 file changed, 35 insertions(+), 19 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index bc341abcab2fe..2b947870527fc 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -3570,16 +3570,38 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio
> >  			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
> >  }
> >  
> > +static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> > +	const struct intel_dbuf_state *old_dbuf_state =
> > +		intel_atomic_get_old_dbuf_state(state);
> > +	const struct intel_dbuf_state *new_dbuf_state =
> > +		intel_atomic_get_new_dbuf_state(state);
> > +
> > +	if (DISPLAY_VER(i915) >= 20 &&
> > +	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
> > +		/*
> > +		 * For Xe2LPD and beyond, when there is a change in the ratio
> > +		 * between MDCLK and CDCLK, updates to related registers need to
> > +		 * happen at a specific point in the CDCLK change sequence. In
> > +		 * that case, we defer to the call to
> > +		 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
> > +		 */
> > +		return;
> > +	}
> 
> That still needs to be removed or else we'll not update the ratio at
> all during the mbus_join changes. I don't think I saw any removal
> in subsequent patches.
> 
> > +
> > +	intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,

I don't get what is happening here.

"That whole condition I think needs to go. We want to update the ratio
also when changing mbus joining. But that behavioural change doesn't
really belong in this patch, so this is

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>"

Now it again needs to be changed or changed in other patch(in this series or which one), 
I don't follow.
Should it be the patch changing MBUS join value?

Stan

> 
> And it just occurred to me that this thing will in fact be wrong
> during the pre/post ddb hooks *and* cdclk is getting decreased
> from the post plane update hook.
> 
> I can't immediately think of a super nice way to handle this.
> 
> Perhaps the most stragithforward idea is to just get the mdclk/cdclk
> ratio from i915->display.cdclk.hw during the pre/post ddb hooks.
> cdclk serialization should guard against parallel updates from
> two both places and thus isplay.cdclk.hw should be safe to use.
> 
> The other option would be to determine if a cdclk decrease
> is going to happen or not, and depending on that use the
> old vs. new dbuf_state when updating the ratio in the
> pre/post ddb hooks.
> 
> > +					    new_dbuf_state->joined_mbus);
> > +}
> > +
> >  /*
> >   * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
> >   * update the request state of all DBUS slices.
> >   */
> > -static void update_mbus_pre_enable(struct intel_atomic_state *state)
> > +static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> >  	u32 mbus_ctl;
> > -	const struct intel_dbuf_state *old_dbuf_state =
> > -		intel_atomic_get_old_dbuf_state(state);
> >  	const struct intel_dbuf_state *new_dbuf_state =
> >  		intel_atomic_get_new_dbuf_state(state);
> >  
> > @@ -3600,21 +3622,6 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
> >  	intel_de_rmw(i915, MBUS_CTL,
> >  		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
> >  		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
> > -
> > -	if (DISPLAY_VER(i915) >= 20 &&
> > -	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
> > -		/*
> > -		 * For Xe2LPD and beyond, when there is a change in the ratio
> > -		 * between MDCLK and CDCLK, updates to related registers need to
> > -		 * happen at a specific point in the CDCLK change sequence. In
> > -		 * that case, we defer to the call to
> > -		 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
> > -		 */
> > -		return;
> > -	}
> > -
> > -	intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,
> > -					    new_dbuf_state->joined_mbus);
> >  }
> >  
> >  void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
> > @@ -3632,7 +3639,11 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
> >  
> >  	WARN_ON(!new_dbuf_state->base.changed);
> >  
> > -	update_mbus_pre_enable(state);
> > +	if (!old_dbuf_state->joined_mbus && new_dbuf_state->joined_mbus) {
> 
> I think you squashed that stuff into the wrong patch.
> This one should have a pure refactoring patch.
> 
> > +		intel_dbuf_mbus_join_update(state);
> > +		intel_dbuf_mdclk_min_tracker_update(state);
> > +	}
> > +
> >  	gen9_dbuf_slices_update(i915,
> >  				old_dbuf_state->enabled_slices |
> >  				new_dbuf_state->enabled_slices);
> > @@ -3653,6 +3664,11 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
> >  
> >  	WARN_ON(!new_dbuf_state->base.changed);
> >  
> > +	if (old_dbuf_state->joined_mbus && !new_dbuf_state->joined_mbus) {
> > +		intel_dbuf_mbus_join_update(state);
> > +		intel_dbuf_mdclk_min_tracker_update(state);
> > +	}
> > +
> >  	gen9_dbuf_slices_update(i915,
> >  				new_dbuf_state->enabled_slices);
> >  }
> > -- 
> > 2.37.3
> 
> -- 
> Ville Syrjälä
> Intel
