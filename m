Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD11780C7C
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 15:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D63210E50B;
	Fri, 18 Aug 2023 13:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A393C10E50B
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 13:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692365205; x=1723901205;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Fox6QL9q0FdVoGT63m3IicqDWp+Ad1E2TXhsfkraDJ8=;
 b=QZPeZ6XrUFSkP52a3nLBYmKQ87pdbFCeEsgB52cXKS+WYOI1CHJLBFCl
 JWRE6XOF6OPQH27gs710qIfCZbn5jW6GmBFzzjvamG8jP/Eajek/GApTK
 c5BmyW2OKjsMSV6CjskL6gRFEEKNZsJc79mUXkGzQbELa2VIFxp4AoR6F
 CK4eegnUZr0c7OXXWjrqatd0Qnl3qqu1SQovdRO4B5kop/MPyJWHuY2yV
 PyjuCNQTqEkmjCBbjbXdo7VdJn/WQ0K0JRhqQFyCvnR7GBvG9VWw+uhGK
 lyU1QibV6RiiZDywKy5/QBPVo94uS8WWKRWOtOmbjDitcpkqvM3HHGw/7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="459452562"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="459452562"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 06:26:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="728607409"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="728607409"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 06:26:43 -0700
Date: Fri, 18 Aug 2023 16:26:57 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZN9xoTgDTnwsQCSU@ideak-desk.fi.intel.com>
References: <20230817161456.3857111-1-imre.deak@intel.com>
 <20230817161456.3857111-3-imre.deak@intel.com>
 <87fs4h8wib.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87fs4h8wib.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 02/17] drm/i915/dp: Track the pipe and link
 bpp limits separately
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 17, 2023 at 07:27:24PM +0300, Jani Nikula wrote:
> On Thu, 17 Aug 2023, Imre Deak <imre.deak@intel.com> wrote:
> > A follow-up patch will need to limit the output link bpp both in the
> > non-DSC and DSC configuration, so track the pipe and link bpp limits
> > separately in the link_config_limits struct.
> >
> > Use .4 fixed point format for link bpp matching the 1/16 bpp granularity
> > in DSC mode and for now keep this limit matching the pipe bpp limit.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c     | 17 +++++++++++------
> >  drivers/gpu/drm/i915/display/intel_dp.h     |  9 ++++++++-
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 17 +++++++++++------
> >  3 files changed, 30 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 89de444cfc4da..f4952fcfb16e9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1419,7 +1419,7 @@ intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
> >  	if (intel_dp->compliance.test_data.bpc != 0) {
> >  		int bpp = 3 * intel_dp->compliance.test_data.bpc;
> >  
> > -		limits->min_bpp = limits->max_bpp = bpp;
> > +		limits->pipe.min_bpp = limits->pipe.max_bpp = bpp;
> >  		pipe_config->dither_force_disable = bpp == 6 * 3;
> >  
> >  		drm_dbg_kms(&i915->drm, "Setting pipe_bpp to %d\n", bpp);
> > @@ -1481,7 +1481,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
> >  	int bpp, i, lane_count, clock = intel_dp_mode_clock(pipe_config, conn_state);
> >  	int mode_rate, link_rate, link_avail;
> >  
> > -	for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) {
> > +	for (bpp = limits->link.max_bpp >> 4;
> > +	     bpp >= limits->link.min_bpp >> 4;
> 
> I think I'd like to see some helpers for the >> 4 and << 4, to make this
> self-documenting code.

I wondered about more generic fixed point helpers, but didn't find any.

> to_bpp_int(), to_bpp_x16(), or something along those lines maybe.
> 
> With proper variable/member naming, you'd get:
> 
> 	bpp = to_bpp_int(bpp_x16);
>         bpp_x16 = to_bpp_x16(bpp);
> 
> And it would be obvious what's going on.

Yes, makes sense, will add these.

> 
> > +	     bpp -= 2 * 3) {
> >  		int output_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
> >  
> >  		mode_rate = intel_dp_link_required(clock, output_bpp);
> > @@ -1812,9 +1814,9 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> >  	limits->min_lane_count = 1;
> >  	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
> >  
> > -	limits->min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> > -	limits->max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
> > -					   respect_downstream_limits);
> > +	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> > +	limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
> > +						     respect_downstream_limits);
> >  
> >  	if (intel_dp->use_max_params) {
> >  		/*
> > @@ -1831,10 +1833,13 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> >  
> >  	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
> >  
> > +	limits->link.min_bpp = limits->pipe.min_bpp << 4;
> > +	limits->link.max_bpp = limits->pipe.max_bpp << 4;
> > +
> >  	drm_dbg_kms(&i915->drm, "DP link computation with max lane count %i "
> >  		    "max rate %d max bpp %d pixel clock %iKHz\n",
> >  		    limits->max_lane_count, limits->max_rate,
> > -		    limits->max_bpp, adjusted_mode->crtc_clock);
> > +		    limits->link.max_bpp >> 4, adjusted_mode->crtc_clock);
> >  }
> >  
> >  static int
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> > index 22099de3ca458..a1789419c0d19 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -26,7 +26,14 @@ struct intel_encoder;
> >  struct link_config_limits {
> >  	int min_rate, max_rate;
> >  	int min_lane_count, max_lane_count;
> > -	int min_bpp, max_bpp;
> > +	struct {
> > +		/* Uncompressed DSC input or link output bpp in 1 bpp units */
> > +		int min_bpp, max_bpp;
> > +	} pipe;
> > +	struct {
> > +		/* Compressed or uncompressed link output bpp in 1/16 bpp units */
> > +		int min_bpp, max_bpp;
> 
> The 1/16 bpp units is a source of confusion, and I think we should start
> denoting them in naming.
> 
> min_bpp_x16, max_bpp_x16

Ok, will change these.

> 
> > +	} link;
> >  };
> >  
> >  void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 998d8a186cc6f..1809643538d08 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -156,8 +156,10 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
> >  		&crtc_state->hw.adjusted_mode;
> >  	int slots = -EINVAL;
> >  
> > -	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, limits->max_bpp,
> > -						     limits->min_bpp, limits,
> > +	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
> > +						     limits->link.max_bpp >> 4,
> > +						     limits->link.min_bpp >> 4,
> > +						     limits,
> >  						     conn_state, 2 * 3, false);
> >  
> >  	if (slots < 0)
> > @@ -200,8 +202,8 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> >  	else
> >  		dsc_max_bpc = min_t(u8, 10, conn_state->max_requested_bpc);
> >  
> > -	max_bpp = min_t(u8, dsc_max_bpc * 3, limits->max_bpp);
> > -	min_bpp = limits->min_bpp;
> > +	max_bpp = min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
> > +	min_bpp = limits->pipe.min_bpp;
> >  
> >  	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
> >  						       dsc_bpc);
> > @@ -318,7 +320,7 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
> >  	limits->min_lane_count = limits->max_lane_count =
> >  		intel_dp_max_lane_count(intel_dp);
> >  
> > -	limits->min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> > +	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> >  	/*
> >  	 * FIXME: If all the streams can't fit into the link with
> >  	 * their current pipe_bpp we should reduce pipe_bpp across
> > @@ -327,9 +329,12 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
> >  	 * MST streams previously. This hack should be removed once
> >  	 * we have the proper retry logic in place.
> >  	 */
> > -	limits->max_bpp = min(crtc_state->pipe_bpp, 24);
> > +	limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
> >  
> >  	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
> > +
> > +	limits->link.min_bpp = limits->pipe.min_bpp << 4;
> > +	limits->link.max_bpp = limits->pipe.max_bpp << 4;
> >  }
> >  
> >  static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
