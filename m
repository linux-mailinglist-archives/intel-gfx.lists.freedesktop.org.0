Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7768C6737
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 15:20:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F55610E83D;
	Wed, 15 May 2024 13:20:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bC21dg5z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 337EC10E83D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 13:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715779248; x=1747315248;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=6TTRpvnoqQhbZJbOzGLTMd1pOBaV21dfhic4HEL7aZw=;
 b=bC21dg5ztDNFYooEvOOscapag23MYU57ApOFxi7Up7y3CoNFmSWZk7wk
 iepk/sVXkIPNiNnEDeznpAjqmwRtztQS4SEFzc0rJA0aqXpuZBBC1mWVJ
 ubWP8YNuCNu+hxKjI0Nbyrh/QApALnF+OXoHXavQyojkqnu6n3IIcWMWc
 5M8oWG0ekbybolFVtOw+6Qswh48PAgU4KnUgweBRt/9OCk5zTCvBt9RtM
 MW/lSuSslLBFlEFfK6HIaGM+VNtUv8A81ksGq5eMJcJ9cRuYXSiTSq3cZ
 +sj21pF4yZ4mTHWJvH3HisloNXmF8PGM6Vm0IGpRXdXlnl+monVvncf4p g==;
X-CSE-ConnectionGUID: hjMfZ9W0RqCDyUExeNXVzg==
X-CSE-MsgGUID: ftXmcPAOTHiP0QfEICmyaw==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="15659548"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="15659548"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 06:20:47 -0700
X-CSE-ConnectionGUID: 8Y1JwjfKST2Lu3vrqkAAgw==
X-CSE-MsgGUID: VKCOTLstSzebO4nWGSkSAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31073870"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 06:20:46 -0700
Date: Wed, 15 May 2024 16:20:49 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 04/20] drm/i915/dp: Sanitize
 intel_dp_get_link_train_fallback_values()
Message-ID: <ZkS2sSGe44wq8TBV@ideak-desk.fi.intel.com>
References: <20240514191418.2863344-1-imre.deak@intel.com>
 <20240514191418.2863344-5-imre.deak@intel.com>
 <87eda3cjj7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87eda3cjj7.fsf@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 15, 2024 at 04:05:32PM +0300, Jani Nikula wrote:
> On Tue, 14 May 2024, Imre Deak <imre.deak@intel.com> wrote:
> > Reduce the indentation in intel_dp_get_link_train_fallback_values() by
> > adding separate helpers to reduce the link rate and lane count. Also
> > simplify things by passing crtc_state to the function.
> >
> > This also prepares for later patches in the patchset adding a limitation
> > on how the link params are reduced.
> 
> Currently we have these rigid reductions of rate, lane and bpp. I don't
> think we want to lock in to this policy, but rather make it more
> flexible. So I think this patch is counter productive.
> 
> My grand plan I never got around to was to create a list/array of
> possible sets of link parameters that you could trivially sort, filter,
> iterate, and remove parameters from. (And I don't mean a statically
> written one, but a dynamically generated list.)
> 
> In that scheme, you'd get the fallback values by advancing one element
> in the data structure. And you know when you've exhausted all fallbacks
> when you're at the end. None of this complicated "if we've finished x,
> then try y, then z".

Yes, having a different fallback order than the current one makes sense
to me both BW utilization wise and because the standard describes it (as
an alternative?). I don't think this patch makes it more difficult to
impplement that, but the change does improve the readability of the
current code.

> And then you could sort the list based on bandwidth, and go from
> uncompressed uhbr to compressed non-uhbr to whatever.
> 
> 
> BR,
> Jani.
> 
> 
> 
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_link_training.c | 82 ++++++++++++-------
> >  1 file changed, 51 insertions(+), 31 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 1b4694b46cea7..1ea4aaf9592f1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1109,11 +1109,37 @@ static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
> >  	return true;
> >  }
> >  
> > +static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
> > +{
> > +	int rate_index;
> > +	int new_rate;
> > +
> > +	rate_index = intel_dp_rate_index(intel_dp->common_rates,
> > +					 intel_dp->num_common_rates,
> > +					 current_rate);
> > +
> > +	if (rate_index <= 0)
> > +		return -1;
> > +
> > +	new_rate = intel_dp_common_rate(intel_dp, rate_index - 1);
> > +
> > +	return new_rate;
> > +}
> > +
> > +static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane_count)
> > +{
> > +	if (current_lane_count > 1)
> > +		return current_lane_count >> 1;
> > +
> > +	return -1;
> > +}
> > +
> >  static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> > -						   int link_rate, u8 lane_count)
> > +						   const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > -	int index;
> > +	int new_link_rate;
> > +	int new_lane_count;
> >  
> >  	/*
> >  	 * TODO: Enable fallback on MST links once MST link compute can handle
> > @@ -1131,36 +1157,32 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> >  		return 0;
> >  	}
> >  
> > -	index = intel_dp_rate_index(intel_dp->common_rates,
> > -				    intel_dp->num_common_rates,
> > -				    link_rate);
> > -	if (index > 0) {
> > -		if (intel_dp_is_edp(intel_dp) &&
> > -		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> > -							      intel_dp_common_rate(intel_dp, index - 1),
> > -							      lane_count)) {
> > -			drm_dbg_kms(&i915->drm,
> > -				    "Retrying Link training for eDP with same parameters\n");
> > -			return 0;
> > -		}
> > -		intel_dp->link_train.max_rate = intel_dp_common_rate(intel_dp, index - 1);
> > -		intel_dp->link_train.max_lane_count = lane_count;
> > -	} else if (lane_count > 1) {
> > -		if (intel_dp_is_edp(intel_dp) &&
> > -		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> > -							      intel_dp_max_common_rate(intel_dp),
> > -							      lane_count >> 1)) {
> > -			drm_dbg_kms(&i915->drm,
> > -				    "Retrying Link training for eDP with same parameters\n");
> > -			return 0;
> > -		}
> > -		intel_dp->link_train.max_rate = intel_dp_max_common_rate(intel_dp);
> > -		intel_dp->link_train.max_lane_count = lane_count >> 1;
> > -	} else {
> > +	new_lane_count = crtc_state->lane_count;
> > +	new_link_rate = reduce_link_rate(intel_dp, crtc_state->port_clock);
> > +	if (new_link_rate < 0) {
> > +		new_lane_count = reduce_lane_count(intel_dp, crtc_state->lane_count);
> > +		new_link_rate = intel_dp_max_common_rate(intel_dp);
> > +	}
> > +
> > +	if (new_lane_count < 0) {
> >  		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> >  		return -1;
> >  	}
> >  
> > +	if (intel_dp_is_edp(intel_dp) &&
> > +	    !intel_dp_can_link_train_fallback_for_edp(intel_dp, new_link_rate, new_lane_count)) {
> > +		drm_dbg_kms(&i915->drm,
> > +			    "Retrying Link training for eDP with same parameters\n");
> > +		return 0;
> > +	}
> > +
> > +	drm_dbg_kms(&i915->drm, "Reducing link parameters from %dx%d to %dx%d\n",
> > +		    crtc_state->port_clock, crtc_state->lane_count,
> > +		    new_link_rate, new_lane_count);
> > +
> > +	intel_dp->link_train.max_rate = new_link_rate;
> > +	intel_dp->link_train.max_lane_count = new_lane_count;
> > +
> >  	return 0;
> >  }
> >  
> > @@ -1178,9 +1200,7 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
> >  		lt_dbg(intel_dp, DP_PHY_DPRX,
> >  		       "Link Training failed with HOBL active, not enabling it from now on\n");
> >  		intel_dp->hobl_failed = true;
> > -	} else if (intel_dp_get_link_train_fallback_values(intel_dp,
> > -							   crtc_state->port_clock,
> > -							   crtc_state->lane_count)) {
> > +	} else if (intel_dp_get_link_train_fallback_values(intel_dp, crtc_state)) {
> >  		return;
> >  	}
> 
> -- 
> Jani Nikula, Intel
