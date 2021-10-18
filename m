Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEE64322D1
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 17:27:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C99E6E0CA;
	Mon, 18 Oct 2021 15:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DAC76E0CA
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 15:27:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="251731484"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="251731484"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 08:27:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="443451061"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 18 Oct 2021 08:27:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Oct 2021 18:27:15 +0300
Date: Mon, 18 Oct 2021 18:27:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YW2SU4YIz8uzm6ul@intel.com>
References: <20211018094154.1407705-1-imre.deak@intel.com>
 <20211018094154.1407705-5-imre.deak@intel.com>
 <YW2M8h02rslxYBSO@intel.com>
 <20211018151319.GD1409539@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211018151319.GD1409539@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/dp: Ensure sink/link max lane
 count values are always valid
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

On Mon, Oct 18, 2021 at 06:13:19PM +0300, Imre Deak wrote:
> On Mon, Oct 18, 2021 at 06:04:18PM +0300, Ville Syrjälä wrote:
> > On Mon, Oct 18, 2021 at 12:41:52PM +0300, Imre Deak wrote:
> > > Print an error if the DPCD sink max lane count is invalid and fix it up.
> > > 
> > > While at it also add an assert that the link max lane count (derived
> > > from intel_dp_max_common_lane_count(), potentially reduced by the LT
> > > fallback logic) value is also valid.
> > > 
> > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_types.h    |  2 +
> > >  drivers/gpu/drm/i915/display/intel_dp.c       | 44 ++++++++++++++++++-
> > >  2 files changed, 44 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 39e11eaec1a3f..1e42bf901263c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1563,6 +1563,8 @@ struct intel_dp {
> > >  	int num_sink_rates;
> > >  	int sink_rates[DP_MAX_SUPPORTED_RATES];
> > >  	bool use_rate_select;
> > > +	/* Max sink lane count as reported by DP_MAX_LANE_COUNT */
> > > +	int max_sink_lane_count;
> > >  	/* intersection of source and sink rates */
> > >  	int num_common_rates;
> > >  	int common_rates[DP_MAX_SUPPORTED_RATES];
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 1935eb49f9574..f7711779df132 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -197,6 +197,35 @@ static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
> > >  	intel_dp->num_sink_rates = i;
> > >  }
> > >  
> > > +static void intel_dp_set_default_max_sink_lane_count(struct intel_dp *intel_dp)
> > > +{
> > > +	intel_dp->max_sink_lane_count = 1;
> > > +}
> > > +
> > > +static void intel_dp_set_max_sink_lane_count(struct intel_dp *intel_dp)
> > > +{
> > > +	struct intel_connector *connector = intel_dp->attached_connector;
> > > +	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
> > > +	struct intel_encoder *encoder = &intel_dig_port->base;
> > > +
> > > +	intel_dp->max_sink_lane_count = drm_dp_max_lane_count(intel_dp->dpcd);
> > > +
> > > +	switch (intel_dp->max_sink_lane_count) {
> > > +	case 1:
> > > +	case 2:
> > > +	case 4:
> > > +		return;
> > > +	}
> > > +
> > > +	drm_err(&dp_to_i915(intel_dp)->drm,
> > > +		"[CONNECTOR:%d:%s][ENCODER:%d:%s] Invalid DPCD max lane count (%d), using default\n",
> > > +		connector->base.base.id, connector->base.name,
> > > +		encoder->base.base.id, encoder->base.name,
> > > +		intel_dp->max_sink_lane_count);
> > > +
> > > +	intel_dp_set_default_max_sink_lane_count(intel_dp);
> > > +}
> > > +
> > >  /* Get length of rates array potentially limited by max_rate. */
> > >  static int intel_dp_rate_limit_len(const int *rates, int len, int max_rate)
> > >  {
> > > @@ -230,7 +259,7 @@ static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
> > >  {
> > >  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> > >  	int source_max = dig_port->max_lanes;
> > > -	int sink_max = drm_dp_max_lane_count(intel_dp->dpcd);
> > > +	int sink_max = intel_dp->max_sink_lane_count;
> > >  	int fia_max = intel_tc_port_fia_max_lane_count(dig_port);
> > >  	int lttpr_max = drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common_caps);
> > >  
> > > @@ -242,7 +271,15 @@ static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
> > >  
> > >  int intel_dp_max_lane_count(struct intel_dp *intel_dp)
> > >  {
> > > -	return intel_dp->max_link_lane_count;
> > > +	switch (intel_dp->max_link_lane_count) {
> > > +	case 1:
> > > +	case 2:
> > > +	case 4:
> > > +		return intel_dp->max_link_lane_count;
> > > +	default:
> > > +		MISSING_CASE(intel_dp->max_link_lane_count);
> > > +		return 1;
> > > +	}
> > >  }
> > 
> > I guess this is just a second level sanity check. I was wondering it
> > gets confusing and people start thinking this can actually happen,
> > but I suppose the MISSING_CASE() should be indication enough that it
> > in fact should not happen.
> 
> Yes it shouldn't happen. Given that we don't consider the FIA reg value
> external, but I think that's a reasonable assumption.
> 
> > Series looks sane to me:
> > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Thanks.
> 
> > BTW there's now some kms_bw thing in igt which seems to forcing
> > DP connectors on left and right, and thus triggering a bunch of 
> > WARNs.
> 
> Yes, noticed. This series should fix the WARN, however the modeset will
> still fail, due to using the minimum link_rate/lane_count set by default
> in this patchset. But due to the LT failing and fallback reducing the
> link params it would anyway fail after the first modeset. I wonder what
> would be a good solution if the above kind of use case is important
> enough (I at least use this for debugging). Maybe a virtual loopback
> connector which could handle LT (in kernel perhaps) and even any AUX
> traffic (in userspace)? Anyway that's far beyond the scope of this
> patchset.

Yeah, a virtual DP sink with DPCD and the works is something
I've occasionally pondered. But it would take some actual work.

-- 
Ville Syrjälä
Intel
