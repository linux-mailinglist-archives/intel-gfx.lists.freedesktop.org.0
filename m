Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD9F79A57D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 10:06:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0707710E197;
	Mon, 11 Sep 2023 08:06:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F403110E19B;
 Mon, 11 Sep 2023 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694419613; x=1725955613;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sJ3Mo9mfZsbqoZ9Ri+SM5GXsnQyGh0vqV/vtCu8MRO8=;
 b=YvaWdub+RKtHtzd6AIyL17rdnmtSqtCfdN489dec0LH9h53pcEwJBEhM
 mdr7jAM01NQd/6xX4qqGqGFf6AZyUd+XOh0AA/jQciT1EhI6vqJ3DOyqG
 HiiDmm4NFLJCqDJMRHBDbcfFyUbB3o3W0V1G6HRuQIo51jfLotFun8jhB
 kSHEeZtx96XeCQJdl70IYTqWOeERD5fa1kG8WfKPSUS+haktIR5Ur9D2g
 lgzvnlVHf/6PT/bkQrcolUMWhn8zReINV4uhYNWF6h5eOfQfq1BKHixde
 ojcZvLQfNNjCOb9XtJZJGZeOBb8Q394HgynNRgDio1R/udfOAUol3h/Sm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="464396347"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="464396347"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 01:06:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="833408845"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="833408845"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 01:06:51 -0700
Date: Mon, 11 Sep 2023 11:06:42 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZP7Kkk/HXhuBZzMV@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-25-lucas.demarchi@intel.com>
 <20230908224303.GX2706891@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230908224303.GX2706891@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 24/27] drm/i915/lnl: Introduce
 MDCLK_CDCLK ratio to DBuf
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 08, 2023 at 03:43:03PM -0700, Matt Roper wrote:
> On Thu, Sep 07, 2023 at 08:37:54AM -0700, Lucas De Marchi wrote:
> > From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > 
> > When we change MDCLK/CDCLK the BSpec now instructs us to write a ratio
> > between MDCLK/CDCLK to MBUS CTL and DBUF CTL registers during that
> > change.
> > 
> > Previsouly DBuf state and CDCLK were not anyhow coupled together.  Now
> > at compute stage when we know which CDCLK/MDCLK we are going to use, we
> > need to update the DBuf state with that ratio, being properly encoded,
> > so that it gets written to those registers, once DBuf state is being
> > update. The criteria for updating DBuf state is also a CDCLK/MDCLK ratio
> > change now.
> > 
> > v2:
> >   - Remove condition check for display version 20 since it's compatible
> >     with previous versions (Matt Roper)
> >   - Squash the serialization of global state when mdclk_cdclk_ratio
> >     changes
> 
> I'm not sure I follow the serialization change here; can you add some
> more explanation of that to the commit message?  If the mdclk:cdclk
> ratio changes then that means we're changing the cdclk (either on its
> own if only the squashing waveform is changing, or along with the mdclk
> if the PLL is also getting reprogrammed).  In either case we should
> already be serializing in intel_cdclk_need_serialize() due to the cdclk
> change, right?  Is the new check added here actually important somehow?

I agree, in theory whenever mdclk:cdclk ratio changes, we also probably
would be changing cdclk as well, so it is just based on our rule:
"whenever global data changes, we lock the global state", "whenever
hw needs to be written, we serialize the global state".
Calling this twice, just adds all crtcs into state, if it wasn't already
there, so shouldn't be harmful(anyway we have other places, where we might
call this again) however we can remove it also.
I have written this patch, somewhile ago, at least now I can't recall any
other reasons or cases when mdclk:cdclk ratio might change..
However I see that there is that other function called get_mbus_mdclk_cdclk_ratio
and its result is used for writing DBUF_CTL_S* regs and it seems to depend not
only on mdclk:cdclk ratio, but also if mbus_join is enabled or not.

Could be that we actually need to make sure, we serialize in that case?

Stan

> 
> 
> Matt
> 
> > 
> > Bspec: 68864, 69482, 69445
> > Cc: Mika Kahola <mika.kahola@intel.com>
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c    | 28 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/skl_watermark.c  | 28 ++++++++++++++++---
> >  drivers/gpu/drm/i915/display/skl_watermark.h  |  1 +
> >  .../gpu/drm/i915/display/skl_watermark_regs.h |  2 ++
> >  4 files changed, 55 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index abe845906c7c..677a50c28dae 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -39,6 +39,7 @@
> >  #include "intel_pcode.h"
> >  #include "intel_psr.h"
> >  #include "intel_vdsc.h"
> > +#include "skl_watermark.h"
> >  #include "vlv_sideband.h"
> >  
> >  /**
> > @@ -1800,6 +1801,16 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
> >  	return vco == ~0;
> >  }
> >  
> > +/* Return the MBUS_CTL's encoding of the mdclk/cdclk ratio */
> > +static int get_mdclk_cdclk_ratio(struct drm_i915_private *i915,
> > +				 const struct intel_cdclk_config *cdclk_config)
> > +{
> > +	if (DISPLAY_VER(i915) >= 20)
> > +		return DIV_ROUND_UP(cdclk_config->vco, cdclk_config->cdclk) - 1;
> > +
> > +	return 1;
> > +}
> > +
> >  static int cdclk_squash_divider(u16 waveform)
> >  {
> >  	return hweight16(waveform ?: 0xffff);
> > @@ -2735,6 +2746,8 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
> >  	struct intel_crtc_state *crtc_state;
> >  	int min_cdclk, i;
> >  	enum pipe pipe;
> > +	struct intel_dbuf_state *new_dbuf_state;
> > +	struct intel_dbuf_state *old_dbuf_state;
> >  
> >  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> >  		int ret;
> > @@ -2768,6 +2781,21 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
> >  		}
> >  	}
> >  
> > +	new_dbuf_state = intel_atomic_get_new_dbuf_state(state);
> > +	old_dbuf_state = intel_atomic_get_old_dbuf_state(state);
> > +	if (new_dbuf_state && old_dbuf_state) {
> > +		new_dbuf_state->mdclk_cdclk_ratio =
> > +			get_mdclk_cdclk_ratio(dev_priv, &cdclk_state->actual);
> > +
> > +		if (new_dbuf_state->mdclk_cdclk_ratio != old_dbuf_state->mdclk_cdclk_ratio) {
> > +			int ret;
> > +
> > +			ret = intel_atomic_serialize_global_state(&new_dbuf_state->base);
> > +			if (ret)
> > +				return ret;
> > +		}
> > +	}
> > +
> >  	min_cdclk = max(cdclk_state->force_min_cdclk,
> >  			cdclk_state->bw_min_cdclk);
> >  	for_each_pipe(dev_priv, pipe)
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index 64a122d3c9c0..1fefb02876c8 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -3472,6 +3472,16 @@ int intel_dbuf_init(struct drm_i915_private *i915)
> >  	return 0;
> >  }
> >  
> > +static int get_mbus_mdclk_cdclk_ratio(struct drm_i915_private *i915,
> > +				      int mdclk_cdclk_ratio,
> > +				      int mbus_joined)
> > +{
> > +	if (mbus_joined)
> > +		return (mdclk_cdclk_ratio << 1) + 1;
> > +
> > +	return mdclk_cdclk_ratio;
> > +}
> > +
> >  /*
> >   * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
> >   * update the request state of all DBUS slices.
> > @@ -3483,10 +3493,16 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
> >  	enum dbuf_slice slice;
> >  	const struct intel_dbuf_state *dbuf_state =
> >  		intel_atomic_get_new_dbuf_state(state);
> > +	int tracker_state_service;
> >  
> >  	if (!HAS_MBUS_JOINING(i915))
> >  		return;
> >  
> > +	tracker_state_service =
> > +		get_mbus_mdclk_cdclk_ratio(i915,
> > +					   dbuf_state->mdclk_cdclk_ratio,
> > +					   dbuf_state->joined_mbus);
> > +
> >  	/*
> >  	 * TODO: Implement vblank synchronized MBUS joining changes.
> >  	 * Must be properly coordinated with dbuf reprogramming.
> > @@ -3494,13 +3510,15 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
> >  	if (dbuf_state->joined_mbus) {
> >  		mbus_ctl = MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
> >  			MBUS_JOIN_PIPE_SELECT_NONE;
> > -		dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(3);
> >  	} else {
> >  		mbus_ctl = MBUS_HASHING_MODE_2x2 |
> >  			MBUS_JOIN_PIPE_SELECT_NONE;
> > -		dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(1);
> >  	}
> >  
> > +	dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(tracker_state_service);
> > +
> > +	mbus_ctl |= MBUS_TRANS_THROTTLE_MIN_SELECT(dbuf_state->mdclk_cdclk_ratio);
> > +
> >  	intel_de_rmw(i915, MBUS_CTL,
> >  		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
> >  		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
> > @@ -3521,7 +3539,8 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
> >  
> >  	if (!new_dbuf_state ||
> >  	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
> > -	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
> > +	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus &&
> > +	     new_dbuf_state->mdclk_cdclk_ratio == old_dbuf_state->mdclk_cdclk_ratio))
> >  		return;
> >  
> >  	WARN_ON(!new_dbuf_state->base.changed);
> > @@ -3542,7 +3561,8 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
> >  
> >  	if (!new_dbuf_state ||
> >  	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
> > -	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
> > +	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus &&
> > +	     new_dbuf_state->mdclk_cdclk_ratio == old_dbuf_state->mdclk_cdclk_ratio))
> >  		return;
> >  
> >  	WARN_ON(!new_dbuf_state->base.changed);
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
> > index f91a3d4ddc07..54db5c7d517e 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> > @@ -56,6 +56,7 @@ struct intel_dbuf_state {
> >  	u8 slices[I915_MAX_PIPES];
> >  	u8 enabled_slices;
> >  	u8 active_pipes;
> > +	u8 mdclk_cdclk_ratio;
> >  	bool joined_mbus;
> >  };
> >  
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark_regs.h b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> > index 628c5920ad49..4c820f1d351d 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> > @@ -38,6 +38,8 @@
> >  #define MBUS_HASHING_MODE_2x2		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 0)
> >  #define MBUS_HASHING_MODE_1x4		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 1)
> >  #define MBUS_JOIN_PIPE_SELECT_MASK	REG_GENMASK(28, 26)
> > +#define MBUS_TRANS_THROTTLE_MIN_MASK	REG_GENMASK(15, 13)
> > +#define MBUS_TRANS_THROTTLE_MIN_SELECT(ratio)	REG_FIELD_PREP(MBUS_TRANS_THROTTLE_MIN_MASK, ratio)
> >  #define MBUS_JOIN_PIPE_SELECT(pipe)	REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
> >  #define MBUS_JOIN_PIPE_SELECT_NONE	MBUS_JOIN_PIPE_SELECT(7)
> >  
> > -- 
> > 2.40.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
