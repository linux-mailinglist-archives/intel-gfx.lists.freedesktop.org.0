Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5D46D9714
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 14:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93BDC10E20C;
	Thu,  6 Apr 2023 12:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE84110E20C
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 12:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680784529; x=1712320529;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bOx/z4I0EY2rnvVRy/FRIc2kfGMnzG8WAlP86pJumYE=;
 b=O4JCWFl61+2sc29GC9VYvpkWGDUr+r3dlg1M8WKWoD7KuNKz0lc9/7A6
 kV4irnVJoXX8EDjduqTqTucbg+XU1Sdx5ZWZJhprEDJWvDroSCkTJh0Ew
 eTFEDGmRzV8vlGNHi0dy2JFrV6kQRIHkuLloIh7d9FVhmzf8iM/5GAu0e
 b4FQDVp0+l97O1GbbYJlz1LZ0U71g3drFoTOMEFU/uE1534u7pvROjB4H
 Siqj5qRLjhXQ2cdWYIX2wGPOu1XCE8eDIQgRWzBeA/tQPF9I5SUkT9H67
 B88PaXTWWB5HGnRB0jDgcShhZzN5u8UjJKn7RsKixKAT+nzyisSR5asJK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="326765902"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="326765902"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 05:35:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="798306081"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="798306081"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 05:35:27 -0700
Date: Thu, 6 Apr 2023 15:35:19 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZC68h9j0rQ63gwy7@intel.com>
References: <20230406085802.7381-1-stanislav.lisovskiy@intel.com>
 <877cupz5yr.fsf@intel.com> <ZC6lQGuxumD+J8dC@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZC6lQGuxumD+J8dC@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Query compressed bpp properly
 using correct DPCD and DP Spec info
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

On Thu, Apr 06, 2023 at 01:56:00PM +0300, Ville Syrjälä wrote:
> On Thu, Apr 06, 2023 at 12:59:40PM +0300, Jani Nikula wrote:
> > On Thu, 06 Apr 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> > > Currently we seem to be using wrong DPCD register for reading compressed bpps,
> > > reading min/max input bpc instead of compressed bpp.
> > > Fix that, so that we now apply min/max compressed bpp limitations we get
> > > from DP Spec Table 2-157 DP v2.0 and/or correspondent DPCD register
> > > DP_DSC_MAX_BITS_PER_PIXEL_LOW/HIGH.
> > >
> > > This might also allow us to get rid of an ugly compressed bpp recalculation,
> > > which we had to add to make some MST hubs usable.
> > >
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 76 ++++++++++++++-------
> > >  1 file changed, 52 insertions(+), 24 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index a88b852c437c..9479c7e0b269 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -174,6 +174,50 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
> > >  	return 0;
> > >  }
> > >  
> > > +static u16 dsc_max_sink_compressed_bppx16(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
> > > +					  struct intel_crtc_state *pipe_config,
> > > +					  int bpc)
> > > +{
> > > +	u16 max_bppx16 = dsc_dpcd[DP_DSC_MAX_BITS_PER_PIXEL_LOW - DP_DSC_SUPPORT] |
> > > +			 (dsc_dpcd[DP_DSC_MAX_BITS_PER_PIXEL_HI - DP_DSC_SUPPORT] &
> > > +			  DP_DSC_MAX_BITS_PER_PIXEL_HI_MASK << DP_DSC_MAX_BITS_PER_PIXEL_HI_SHIFT);
> > 
> > This duplicates drm_edp_dsc_sink_output_bpp().
> 
> These registers are not even valid for non-eDP.

BTW just checked DP 2.0 spec, says "For DP v2.0 (and higher) and eDP v1.4a (and higher)"
for registers 0x67, 0x68.

Otherwise if those are cleared and for older DP/eDP standards it instruct to use Table 2-154.

So I guess this function can be used still.

Stan

> 
> > 
> > Both have operator precedence wrong, leading to the high byte always
> > being ignored. For example, sink reported max bpp of 32 turns to 0, and
> > 24 turns to 8.
> > 
> > Broken since 2018. 0575650077ea ("drm/dp: DRM DP helper/macros to get DP
> > sink DSC parameters").
> > 
> > The definition of DP_DSC_MAX_BITS_PER_PIXEL_HI_SHIFT is misleading wrt
> > all of our regular usage. We should never have a FOO_MASK << FOO_SHIFT
> > in code, the MASK should always be already shifted in place. Here we do,
> > because the shift is not for shifting the mask in place, it's for
> > combining the high and low bytes. But I don't really think
> > DP_DSC_MAX_BITS_PER_PIXEL_HI_SHIFT should exist, at all.
> > 
> > BR,
> > Jani.
> > 
> > 
> > 
> > > +
> > > +	if (max_bppx16)
> > > +		return max_bppx16;
> > > +	/*
> > > +	 * If support not given in DPCD 67h, 68h use the Maximum Allowed bit rate
> > > +	 * values as given in spec Table 2-157 DP v2.0
> > > +	 */
> > > +	switch (pipe_config->output_format) {
> > > +	case INTEL_OUTPUT_FORMAT_RGB:
> > > +	case INTEL_OUTPUT_FORMAT_YCBCR444:
> > > +		return bpc << 4;
> > > +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> > > +		return (3 * (bpc / 2)) << 4;
> > > +	default:
> > > +		MISSING_CASE(pipe_config->output_format);
> > > +		break;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static u16 dsc_min_compressed_bppx16(struct intel_crtc_state *pipe_config)
> > > +{
> > > +	switch (pipe_config->output_format) {
> > > +	case INTEL_OUTPUT_FORMAT_RGB:
> > > +	case INTEL_OUTPUT_FORMAT_YCBCR444:
> > > +		return 8 << 4;
> > > +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> > > +		return 6 << 4;
> > > +	default:
> > > +		MISSING_CASE(pipe_config->output_format);
> > > +		break;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> > >  static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> > >  						struct intel_crtc_state *crtc_state,
> > >  						struct drm_connector_state *conn_state,
> > > @@ -191,8 +235,6 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> > >  	u8 dsc_bpc[3] = {0};
> > >  	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
> > >  	u8 dsc_max_bpc;
> > > -	bool need_timeslot_recalc = false;
> > > -	u32 last_compressed_bpp;
> > >  
> > >  	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
> > >  	if (DISPLAY_VER(i915) >= 12)
> > > @@ -228,6 +270,14 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> > >  	if (max_bpp > sink_max_bpp)
> > >  		max_bpp = sink_max_bpp;
> > >  
> > > +	/* Get Min/Max compressed bpp's for those Input Bpps we got for source/sink */
> > > +	max_bpp = min(max_bpp, dsc_max_sink_compressed_bppx16(intel_dp->dsc_dpcd, crtc_state, max_bpp / 3) >> 4);
> > > +	min_bpp = max(min_bpp, dsc_min_compressed_bppx16(crtc_state) >> 4);
> > > +
> > > +	/* Align compressed bpps according to our own constraints */
> > > +	max_bpp = intel_dp_dsc_nearest_valid_bpp(i915, max_bpp, crtc_state->pipe_bpp);
> > > +	min_bpp = intel_dp_dsc_nearest_valid_bpp(i915, min_bpp, crtc_state->pipe_bpp);
> > > +
> > >  	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, max_bpp,
> > >  						     min_bpp, limits,
> > >  						     conn_state, 2 * 3, true);
> > > @@ -235,28 +285,6 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> > >  	if (slots < 0)
> > >  		return slots;
> > >  
> > > -	last_compressed_bpp = crtc_state->dsc.compressed_bpp;
> > > -
> > > -	crtc_state->dsc.compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915,
> > > -									last_compressed_bpp,
> > > -									crtc_state->pipe_bpp);
> > > -
> > > -	if (crtc_state->dsc.compressed_bpp != last_compressed_bpp)
> > > -		need_timeslot_recalc = true;
> > > -
> > > -	/*
> > > -	 * Apparently some MST hubs dislike if vcpi slots are not matching precisely
> > > -	 * the actual compressed bpp we use.
> > > -	 */
> > > -	if (need_timeslot_recalc) {
> > > -		slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
> > > -							     crtc_state->dsc.compressed_bpp,
> > > -							     crtc_state->dsc.compressed_bpp,
> > > -							     limits, conn_state, 2 * 3, true);
> > > -		if (slots < 0)
> > > -			return slots;
> > > -	}
> > > -
> > >  	intel_link_compute_m_n(crtc_state->dsc.compressed_bpp,
> > >  			       crtc_state->lane_count,
> > >  			       adjusted_mode->crtc_clock,
> > 
> > -- 
> > Jani Nikula, Intel Open Source Graphics Center
> 
> -- 
> Ville Syrjälä
> Intel
