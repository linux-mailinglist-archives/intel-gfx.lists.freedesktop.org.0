Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C23FB43479C
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 11:06:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72C8B6E221;
	Wed, 20 Oct 2021 09:06:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 925366E221
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 09:06:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="252216733"
X-IronPort-AV: E=Sophos;i="5.87,166,1631602800"; d="scan'208";a="252216733"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 02:06:30 -0700
X-IronPort-AV: E=Sophos;i="5.87,166,1631602800"; d="scan'208";a="463105146"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 02:06:28 -0700
Date: Wed, 20 Oct 2021 12:06:24 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20211020090624.GA1662819@ideak-desk.fi.intel.com>
References: <20211018094154.1407705-1-imre.deak@intel.com>
 <20211018094154.1407705-7-imre.deak@intel.com>
 <87fsswq0nx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87fsswq0nx.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/dp: Sanitize link common rate
 array lookups
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

On Tue, Oct 19, 2021 at 10:23:14PM +0300, Jani Nikula wrote:
> On Mon, 18 Oct 2021, Imre Deak <imre.deak@intel.com> wrote:
> > Add an assert that lookups from the intel_dp->common_rates[] array
> > are always valid.
> 
> The one thought I had here was that if we're adding helper functions for
> accessing common rates, they should probably be of the form "this is the
> rate I have now, give me a slower rate" instead of making the index part
> of the interface. The index doesn't really mean anything, and if we want
> to avoid overflows, it should be hidden from the interfaces.

intel_dp_rate_index() is also part of the interface, but I suppose it
could be improved.

> But again, can be follow-up.
> 
> BR,
> Jani.
> 
> 
> >
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 33 ++++++++++++-------------
> >  1 file changed, 16 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index f8082eb8e7263..3869d454c10f0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -267,10 +267,19 @@ static int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
> >  				       intel_dp->num_common_rates, max_rate);
> >  }
> >  
> > +static int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
> > +{
> > +	if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
> > +			index < 0 || index >= intel_dp->num_common_rates))
> > +		return 162000;
> > +
> > +	return intel_dp->common_rates[index];
> > +}
> > +
> >  /* Theoretical max between source and sink */
> >  static int intel_dp_max_common_rate(struct intel_dp *intel_dp)
> >  {
> > -	return intel_dp->common_rates[intel_dp->num_common_rates - 1];
> > +	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
> >  }
> >  
> >  /* Theoretical max between source and sink */
> > @@ -610,13 +619,13 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> >  	if (index > 0) {
> >  		if (intel_dp_is_edp(intel_dp) &&
> >  		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> > -							      intel_dp->common_rates[index - 1],
> > +							      intel_dp_common_rate(intel_dp, index - 1),
> >  							      lane_count)) {
> >  			drm_dbg_kms(&i915->drm,
> >  				    "Retrying Link training for eDP with same parameters\n");
> >  			return 0;
> >  		}
> > -		intel_dp->max_link_rate = intel_dp->common_rates[index - 1];
> > +		intel_dp->max_link_rate = intel_dp_common_rate(intel_dp, index - 1);
> >  		intel_dp->max_link_lane_count = lane_count;
> >  	} else if (lane_count > 1) {
> >  		if (intel_dp_is_edp(intel_dp) &&
> > @@ -1056,14 +1065,11 @@ static void intel_dp_print_rates(struct intel_dp *intel_dp)
> >  int
> >  intel_dp_max_link_rate(struct intel_dp *intel_dp)
> >  {
> > -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >  	int len;
> >  
> >  	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->max_link_rate);
> > -	if (drm_WARN_ON(&i915->drm, len <= 0))
> > -		return 162000;
> >  
> > -	return intel_dp->common_rates[len - 1];
> > +	return intel_dp_common_rate(intel_dp, len - 1);
> >  }
> >  
> >  int intel_dp_rate_select(struct intel_dp *intel_dp, int rate)
> > @@ -1260,7 +1266,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
> >  						   output_bpp);
> >  
> >  		for (i = 0; i < intel_dp->num_common_rates; i++) {
> > -			link_rate = intel_dp->common_rates[i];
> > +			link_rate = intel_dp_common_rate(intel_dp, i);
> >  			if (link_rate < limits->min_rate ||
> >  			    link_rate > limits->max_rate)
> >  				continue;
> > @@ -1508,17 +1514,10 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
> >  		&pipe_config->hw.adjusted_mode;
> >  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> >  	struct link_config_limits limits;
> > -	int common_len;
> >  	int ret;
> >  
> > -	common_len = intel_dp_common_len_rate_limit(intel_dp,
> > -						    intel_dp->max_link_rate);
> > -
> > -	/* No common link rates between source and sink */
> > -	drm_WARN_ON(encoder->base.dev, common_len <= 0);
> > -
> > -	limits.min_rate = intel_dp->common_rates[0];
> > -	limits.max_rate = intel_dp->common_rates[common_len - 1];
> > +	limits.min_rate = intel_dp_common_rate(intel_dp, 0);
> > +	limits.max_rate = intel_dp_max_link_rate(intel_dp);
> >  
> >  	limits.min_lane_count = 1;
> >  	limits.max_lane_count = intel_dp_max_lane_count(intel_dp);
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
