Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8157E2EC6
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 22:16:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AC8210E428;
	Mon,  6 Nov 2023 21:16:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D1E10E42A
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 21:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699305358; x=1730841358;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Jw7j2ZCBz3i2f/5pfpoAsKMQxBSDcW8c7vyMMOyDQ1c=;
 b=byI3tdBkRgd08XtFy7Y9DzjDF/KSCaZvFdfUc3kSjfljuicQP4aIANHM
 4BRnRHrcfRj8igynjKs/jqAUtYh3olwLJC3DyAAhmIJQUhUjf8YRjxIr9
 hrDXafgssgmphQaKbYGFvLXK1YFF4JhmAN14yvytOwCy2ETeIqa6oH+bk
 0nfNKi/S3yzxgRz0hxOYUolq5GCZHYKfuvwrbgh8jI6tWktPgxVJQp5da
 8P+rmBYsyOo6XXUdKeQWg04sjtEdbB6L2cWM/HNaYssxlArROzib8wBqS
 22EC21aTNAQ2AC8G/zg0DkkFUCOoRCtd7nhUdR3bnA0KvEklP6d6nyCev g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="386545100"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="386545100"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 13:15:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="755963352"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="755963352"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 06 Nov 2023 13:15:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Nov 2023 23:15:54 +0200
Date: Mon, 6 Nov 2023 23:15:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZUlXimFAotnHfTK4@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
 <20231030155843.2251023-14-imre.deak@intel.com>
 <ZUlO_YusjgqsD-PJ@intel.com>
 <ZUlUaLBJSiOGU4bb@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZUlUaLBJSiOGU4bb@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 13/30] drm/i915/dp_mst: Account for FEC
 and DSC overhead during BW allocation
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 06, 2023 at 11:02:32PM +0200, Imre Deak wrote:
> On Mon, Nov 06, 2023 at 10:39:25PM +0200, Ville Syrjälä wrote:
> > On Mon, Oct 30, 2023 at 05:58:26PM +0200, Imre Deak wrote:
> > > Atm, the BW allocated for an MST stream doesn't take into account the
> > > DSC control symbol (EOC) and data alignment overhead on the local (first
> > > downstream) MST link (reflected by the data M/N/TU values) and - besides
> > > the above overheads - the FEC symbol overhead on 8b/10b remote
> > > (after a downstream branch device) MST links.
> > > 
> > > In addition the FEC overhead used on the local link is a fixed amount,
> > > which only applies to certain modes, but not enough for all modes; add a
> > > code comment clarifying this.
> > > 
> > > Fix the above by calculating the data M/N values with the total BW
> > > overhead (not including the SSC overhead, since this isn't enabled by
> > > the source device) and using this the PBN and TU values for the local
> > > link and PBN for remote links (including SSC, since this is mandatory
> > > for links after downstream branch devices).
> > > 
> > > For now keep the current fixed FEC overhead as a minimum, since this is
> > > what bspec requires for audio functionality.
> > > 
> > > Calculate the effective link BW in a clearer way, applying the channel
> > > coding efficiency based on the coding type. The calculation was correct
> > > for 8b/10b, but not for 128b/132b links; this patch leaves the behavior
> > > for this unchanged, leaving the fix for a follow-up.
> > > 
> > > v2:
> > > - Fix TU size programmed to the HW, making it match the payload size
> > >   programmed to the payload table.
> > > 
> > > Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> (v1)
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 107 +++++++++++++++-----
> > >  1 file changed, 82 insertions(+), 25 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index dcbc5d3aa7bc3..05b2d5d547c85 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -66,6 +66,63 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
> > >  	return 0;
> > >  }
> > >  
> > > +static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
> > > +				    const struct intel_connector *connector,
> > > +				    bool ssc, bool dsc, int bpp)
> > > +{
> > > +	const struct drm_display_mode *adjusted_mode =
> > > +		&crtc_state->hw.adjusted_mode;
> > > +	unsigned long flags = DRM_DP_BW_OVERHEAD_MST;
> > > +	int dsc_slice_count = 0;
> > > +	int overhead;
> > > +
> > > +	flags |= intel_dp_is_uhbr(crtc_state) ? DRM_DP_BW_OVERHEAD_UHBR : 0;
> > > +	flags |= ssc ? DRM_DP_BW_OVERHEAD_SSC_REF_CLK : 0;
> > > +	flags |= crtc_state->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
> > > +
> > > +	if (dsc) {
> > > +		flags |= DRM_DP_BW_OVERHEAD_DSC;
> > > +		/* TODO: add support for bigjoiner */
> > > +		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
> > > +							       adjusted_mode->clock,
> > > +							       adjusted_mode->hdisplay,
> > > +							       false);
> > > +	}
> > > +
> > > +	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
> > > +				      adjusted_mode->hdisplay,
> > > +				      dsc_slice_count,
> > > +				      to_bpp_x16(bpp),
> > > +				      flags);
> > > +
> > > +	/*
> > > +	 * TODO: clarify whether a minimum required by the fixed FEC overhead
> > > +	 * in the bspec audio programming sequence is required here.
> > > +	 */
> > > +	return max(overhead, intel_dp_bw_fec_overhead(crtc_state->fec_enable));
> > > +}
> > > +
> > > +static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
> > > +				     const struct intel_connector *connector,
> > > +				     bool ssc, bool dsc,
> > > +				     int bpp,
> > > +				     struct intel_link_m_n *m_n)
> > > +{
> > > +	const struct drm_display_mode *adjusted_mode =
> > > +		&crtc_state->hw.adjusted_mode;
> > > +	int overhead = intel_dp_mst_bw_overhead(crtc_state,
> > > +						connector,
> > > +						ssc, dsc, bpp);
> > > +
> > > +	intel_link_compute_m_n(bpp, crtc_state->lane_count,
> > > +			       adjusted_mode->crtc_clock,
> > > +			       crtc_state->port_clock,
> > > +			       overhead,
> > > +			       m_n);
> > > +
> > > +	m_n->tu = DIV_ROUND_UP_ULL(mul_u32_u32(m_n->data_m, 64), m_n->data_n);
> > > +}
> > > +
> > >  static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> > >  						struct intel_crtc_state *crtc_state,
> > >  						int max_bpp,
> > > @@ -106,14 +163,34 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> > >  						      crtc_state->lane_count);
> > >  
> > >  	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
> > > +		struct intel_link_m_n remote_m_n;
> > > +		int link_bpp;
> > > +
> > >  		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
> > >  
> > >  		ret = intel_dp_mst_check_constraints(i915, bpp, adjusted_mode, crtc_state, dsc);
> > >  		if (ret)
> > >  			continue;
> > >  
> > > -		crtc_state->pbn = drm_dp_calc_pbn_mode(adjusted_mode->crtc_clock,
> > > -						       bpp << 4);
> > > +		link_bpp = dsc ? bpp :
> > > +			intel_dp_output_bpp(crtc_state->output_format, bpp);
> > > +
> > > +		intel_dp_mst_compute_m_n(crtc_state, connector, false, dsc, link_bpp,
> > > +					 &crtc_state->dp_m_n);
> > > +		intel_dp_mst_compute_m_n(crtc_state, connector, true, dsc, link_bpp,
> > > +					 &remote_m_n);
> > > +
> > > +		/*
> > > +		 * The TU size programmed to the HW determines which slots in
> > > +		 * an MTP frame are used for this stream, which needs to match
> > > +		 * the payload size programmed to the first downstream branch
> > > +		 * device's payload table.
> > > +		 */
> > > +		crtc_state->dp_m_n.tu = remote_m_n.tu;
> > 
> > The fact we use the "remote" value here is because the mst manager code
> > assumes the two numbers are the same, right? Should perhaps highlight
> > that fact a bit better.
> 
> Yes, mst core assumes atm that the allocation on the MST link between
> the source and the first downstream branch device - the payload size
> programmed with direct AUX writes to this branch device's payload table
> - and the corresponding allocation for farther links - the PBN contained
> in the ALLOCATE_PAYLOAD side-band message - are the same (except for
> units).  The former allocation could be reduced for a source not
> enabling SSC.
> 
> > Maybe we want a WARN_ON(remote_m_n.tu < dp_m_n.tu) here as well?
> 
> Ok, makes sense.
> 
> > > +
> > > +		crtc_state->pbn = DIV_ROUND_UP_ULL(mul_u32_u32(mst_state->pbn_div * 64,
> > > +							       remote_m_n.data_m),
> > > +						   remote_m_n.data_n);
> 
> The above can be actually simplified to
> 		crtc_state->pbn = crtc_state->dp_m_n.tu * mst_state->pbn_div;

I was wondering if it's safer to stick to remote_n_m here, in case
we manage to untangle the two values and then somehow forget to
change this. But I suppose we'd have to track both values anyway
somewhere, so maybe that's just nonsense.

> 
> > >  
> > >  		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
> > >  						      connector->port,
> > > @@ -122,6 +199,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> > >  			return slots;
> > >  
> > >  		if (slots >= 0) {
> > > +			drm_WARN_ON(&i915->drm, slots != remote_m_n.tu);
> > > +
> > >  			ret = drm_dp_mst_atomic_check(state);
> > >  			/*
> > >  			 * If we got slots >= 0 and we can fit those based on check
> > > @@ -155,10 +234,7 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
> > >  					    struct drm_connector_state *conn_state,
> > >  					    struct link_config_limits *limits)
> > >  {
> > > -	const struct drm_display_mode *adjusted_mode =
> > > -		&crtc_state->hw.adjusted_mode;
> > >  	int slots = -EINVAL;
> > > -	int link_bpp;
> > >  
> > >  	/*
> > >  	 * FIXME: allocate the BW according to link_bpp, which in the case of
> > > @@ -173,16 +249,6 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
> > >  	if (slots < 0)
> > >  		return slots;
> > >  
> > > -	link_bpp = intel_dp_output_bpp(crtc_state->output_format, crtc_state->pipe_bpp);
> > > -
> > > -	intel_link_compute_m_n(link_bpp,
> > > -			       crtc_state->lane_count,
> > > -			       adjusted_mode->crtc_clock,
> > > -			       crtc_state->port_clock,
> > > -			       intel_dp_bw_fec_overhead(crtc_state->fec_enable),
> > > -			       &crtc_state->dp_m_n);
> > > -	crtc_state->dp_m_n.tu = slots;
> > > -
> > >  	return 0;
> > >  }
> > >  
> > > @@ -194,8 +260,6 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> > >  	struct intel_connector *connector =
> > >  		to_intel_connector(conn_state->connector);
> > >  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> > > -	const struct drm_display_mode *adjusted_mode =
> > > -		&crtc_state->hw.adjusted_mode;
> > >  	int slots = -EINVAL;
> > >  	int i, num_bpc;
> > >  	u8 dsc_bpc[3] = {};
> > > @@ -270,14 +334,6 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> > >  			return slots;
> > >  	}
> > >  
> > > -	intel_link_compute_m_n(crtc_state->dsc.compressed_bpp,
> > > -			       crtc_state->lane_count,
> > > -			       adjusted_mode->crtc_clock,
> > > -			       crtc_state->port_clock,
> > > -			       intel_dp_bw_fec_overhead(crtc_state->fec_enable),
> > > -			       &crtc_state->dp_m_n);
> > > -	crtc_state->dp_m_n.tu = slots;
> > > -
> > >  	return 0;
> > >  }
> > >  static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
> > > @@ -980,6 +1036,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> > >  	if (ret)
> > >  		return ret;
> > >  
> > > +	/* TODO: also check if compression would allow for the mode */
> > >  	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > >  	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
> > >  		*status = MODE_CLOCK_HIGH;
> > > -- 
> > > 2.39.2
> > 
> > -- 
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
