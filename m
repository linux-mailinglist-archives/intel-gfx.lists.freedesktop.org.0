Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F2C41D3EA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 09:08:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0A7A6E30D;
	Thu, 30 Sep 2021 07:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 463D26E30D
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 07:07:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="225191763"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="225191763"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 00:07:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="476901256"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 30 Sep 2021 00:07:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Sep 2021 10:07:44 +0300
Date: Thu, 30 Sep 2021 10:07:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YVViQNLCP+Af4zd/@intel.com>
References: <20210927182455.27119-9-ville.syrjala@linux.intel.com>
 <20210929165452.11283-1-ville.syrjala@linux.intel.com>
 <20210929202602.GJ2192289@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210929202602.GJ2192289@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 8/9] drm/i915: Prepare link training for
 per-lane drive settings
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

On Wed, Sep 29, 2021 at 11:26:02PM +0300, Imre Deak wrote:
> On Wed, Sep 29, 2021 at 07:54:52PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Adjust the link training code to accommodate per-lane drive settings,
> > if supported by the platform. Actually enabling this will involve
> > some changes to each platform's .set_signal_level() implementation,
> > so for the moment all supported platforms will keep using the current
> > codepath that just uses the same drive settings for all the lanes.
> > 
> > v2: Fix min() vs. max() fumble
> > v3: Compact the debug print to a single line
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_link_training.c | 78 ++++++++++++++-----
> >  1 file changed, 60 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index d52929855cd0..f26c44a6b568 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -301,21 +301,33 @@ static u8 intel_dp_phy_preemph_max(struct intel_dp *intel_dp,
> >  	return preemph_max;
> >  }
> >  
> > -void
> > -intel_dp_get_adjust_train(struct intel_dp *intel_dp,
> > -			  const struct intel_crtc_state *crtc_state,
> > -			  enum drm_dp_phy dp_phy,
> > -			  const u8 link_status[DP_LINK_STATUS_SIZE])
> > +static bool has_per_lane_signal_levels(struct intel_dp *intel_dp,
> > +				       enum drm_dp_phy dp_phy)
> > +{
> > +	return false;
> > +}
> > +
> > +static u8 intel_dp_get_lane_adjust_train(struct intel_dp *intel_dp,
> > +					 const struct intel_crtc_state *crtc_state,
> > +					 enum drm_dp_phy dp_phy,
> > +					 const u8 link_status[DP_LINK_STATUS_SIZE],
> > +					 int lane)
> >  {
> >  	u8 v = 0;
> >  	u8 p = 0;
> > -	int lane;
> >  	u8 voltage_max;
> >  	u8 preemph_max;
> >  
> > -	for (lane = 0; lane < crtc_state->lane_count; lane++) {
> > -		v = max(v, drm_dp_get_adjust_request_voltage(link_status, lane));
> > -		p = max(p, drm_dp_get_adjust_request_pre_emphasis(link_status, lane));
> > +	if (has_per_lane_signal_levels(intel_dp, dp_phy)) {
> > +		lane = min(lane, crtc_state->lane_count - 1);
> > +
> > +		v = drm_dp_get_adjust_request_voltage(link_status, lane);
> > +		p = drm_dp_get_adjust_request_pre_emphasis(link_status, lane);
> > +	} else {
> > +		for (lane = 0; lane < crtc_state->lane_count; lane++) {
> > +			v = max(v, drm_dp_get_adjust_request_voltage(link_status, lane));
> > +			p = max(p, drm_dp_get_adjust_request_pre_emphasis(link_status, lane));
> > +		}
> >  	}
> >  
> >  	preemph_max = intel_dp_phy_preemph_max(intel_dp, dp_phy);
> > @@ -328,8 +340,21 @@ intel_dp_get_adjust_train(struct intel_dp *intel_dp,
> >  	if (v >= voltage_max)
> >  		v = voltage_max | DP_TRAIN_MAX_SWING_REACHED;
> >  
> > +	return v | p;
> > +}
> > +
> > +void
> > +intel_dp_get_adjust_train(struct intel_dp *intel_dp,
> > +			  const struct intel_crtc_state *crtc_state,
> > +			  enum drm_dp_phy dp_phy,
> > +			  const u8 link_status[DP_LINK_STATUS_SIZE])
> > +{
> > +	int lane;
> > +
> >  	for (lane = 0; lane < 4; lane++)
> > -		intel_dp->train_set[lane] = v | p;
> > +		intel_dp->train_set[lane] =
> > +			intel_dp_get_lane_adjust_train(intel_dp, crtc_state,
> > +						       dp_phy, link_status, lane);
> >  }
> >  
> >  static int intel_dp_training_pattern_set_reg(struct intel_dp *intel_dp,
> > @@ -394,22 +419,39 @@ intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
> >  	intel_dp->set_link_train(intel_dp, crtc_state, dp_train_pat);
> >  }
> >  
> > +#define TRAIN_SET_FMT "%d%s/%d%s/%d%s/%d%s"
> > +#define _TRAIN_SET_VSWING_ARGS(train_set) \
> > +	((train_set) & DP_TRAIN_VOLTAGE_SWING_MASK) >> DP_TRAIN_VOLTAGE_SWING_SHIFT, \
> > +	(train_set) & DP_TRAIN_MAX_SWING_REACHED ? "(max)" : ""
> > +#define TRAIN_SET_VSWING_ARGS(train_set) \
> > +	_TRAIN_SET_VSWING_ARGS((train_set)[0]), \
> > +	_TRAIN_SET_VSWING_ARGS((train_set)[1]), \
> > +	_TRAIN_SET_VSWING_ARGS((train_set)[2]), \
> > +	_TRAIN_SET_VSWING_ARGS((train_set)[3])
> > +#define _TRAIN_SET_PREEMPH_ARGS(train_set) \
> > +	((train_set) & DP_TRAIN_PRE_EMPHASIS_MASK) >> DP_TRAIN_PRE_EMPHASIS_SHIFT, \
> > +	(train_set) & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ? "(max)" : ""
> > +#define TRAIN_SET_PREEMPH_ARGS(train_set) \
> > +	_TRAIN_SET_PREEMPH_ARGS((train_set)[0]), \
> > +	_TRAIN_SET_PREEMPH_ARGS((train_set)[1]), \
> > +	_TRAIN_SET_PREEMPH_ARGS((train_set)[2]), \
> > +	_TRAIN_SET_PREEMPH_ARGS((train_set)[3])
> > +
> >  void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
> >  				const struct intel_crtc_state *crtc_state,
> >  				enum drm_dp_phy dp_phy)
> >  {
> >  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> > -	u8 train_set = intel_dp->train_set[0];
> >  	char phy_name[10];
> >  
> > -	drm_dbg_kms(&dev_priv->drm, "Using vswing level %d%s, pre-emphasis level %d%s, at %s\n",
> > -		    train_set & DP_TRAIN_VOLTAGE_SWING_MASK,
> > -		    train_set & DP_TRAIN_MAX_SWING_REACHED ? " (max)" : "",
> > -		    (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
> > -		    DP_TRAIN_PRE_EMPHASIS_SHIFT,
> > -		    train_set & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ?
> > -		    " (max)" : "",
> > +	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] lanes: %d, "
> > +		    "vswing levels: " TRAIN_SET_FMT ", "
> > +		    "pre-emphasis levels: " TRAIN_SET_FMT ", at %s\n",
> > +		    encoder->base.base.id, encoder->base.name,
> > +		    crtc_state->lane_count,
> > +		    TRAIN_SET_VSWING_ARGS(intel_dp->train_set),
> > +		    TRAIN_SET_PREEMPH_ARGS(intel_dp->train_set),
> >  		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
> 
> Could print the PHY name after [ENCODER:x:y].

I think I had that in the mulit-line version, but then I figured it's
better to stick to the same format as for the other related debug
messages. I suppose we could go through all of them and reorder
things a bit...

> 
> Reviewed-by: Imre Deak <imre.deak@intel.com>
> 
> >  
> >  	if (intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy))
> > -- 
> > 2.32.0
> > 

-- 
Ville Syrjälä
Intel
