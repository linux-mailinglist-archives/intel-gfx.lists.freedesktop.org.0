Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF8C433E4F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 20:19:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9FEF6E811;
	Tue, 19 Oct 2021 18:19:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED39F6E84B
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 18:19:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="228865235"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="228865235"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 11:19:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="483350827"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 19 Oct 2021 11:19:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Oct 2021 21:19:42 +0300
Date: Tue, 19 Oct 2021 21:19:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YW8MPmf3TCmxcB4B@intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
 <20211015133921.4609-4-ville.syrjala@linux.intel.com>
 <87lf2oq3r2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87lf2oq3r2.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 03/20] drm/i915/hdmi: Introduce
 intel_hdmi_tmds_clock()
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

On Tue, Oct 19, 2021 at 09:16:33PM +0300, Jani Nikula wrote:
> On Fri, 15 Oct 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Rename intel_hdmi_port_clock() into intel_hdmi_tmds_clock(), and
> > move the 4:2:0 TMDS clock halving into intel_hdmi_tmds_clock() so
> > the callers don't have to worry about such details.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdmi.c | 25 +++++++++++------------
> >  1 file changed, 12 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 37ce8a621973..e97c83535965 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -1868,8 +1868,12 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
> >  	return MODE_OK;
> >  }
> >  
> > -static int intel_hdmi_port_clock(int clock, int bpc)
> > +static int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output)
> >  {
> > +	/* YCBCR420 TMDS rate requirement is half the pixel clock */
> > +	if (ycbcr420_output)
> > +		clock /= 2;
> > +
> >  	/*
> >  	 * Need to adjust the port link by:
> >  	 *  1.5x for 12bpc
> > @@ -1932,25 +1936,22 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
> >  	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
> >  	enum drm_mode_status status;
> >  
> > -	if (ycbcr420_output)
> > -		clock /= 2;
> > -
> >  	/* check if we can do 8bpc */
> > -	status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 8),
> > +	status = hdmi_port_clock_valid(hdmi, intel_hdmi_tmds_clock(clock, 8, ycbcr420_output),
> >  				       true, has_hdmi_sink);
> >  
> >  	/* if we can't do 8bpc we may still be able to do 12bpc */
> >  	if (status != MODE_OK &&
> >  	    intel_hdmi_source_bpc_possible(i915, 12) &&
> >  	    intel_hdmi_sink_bpc_possible(connector, 12, has_hdmi_sink, ycbcr420_output))
> > -		status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 12),
> > +		status = hdmi_port_clock_valid(hdmi, intel_hdmi_tmds_clock(clock, 12, ycbcr420_output),
> >  					       true, has_hdmi_sink);
> >  
> >  	/* if we can't do 8,12bpc we may still be able to do 10bpc */
> >  	if (status != MODE_OK &&
> >  	    intel_hdmi_source_bpc_possible(i915, 10) &&
> >  	    intel_hdmi_sink_bpc_possible(connector, 10, has_hdmi_sink, ycbcr420_output))
> > -		status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 10),
> > +		status = hdmi_port_clock_valid(hdmi, intel_hdmi_tmds_clock(clock, 10, ycbcr420_output),
> >  					       true, has_hdmi_sink);
> >  
> >  	return status;
> > @@ -2057,12 +2058,13 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
> >  				  int clock)
> >  {
> >  	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
> > +	bool ycbcr420_output = intel_hdmi_is_ycbcr420(crtc_state);
> >  	int bpc;
> >  
> >  	for (bpc = 12; bpc >= 10; bpc -= 2) {
> >  		if (hdmi_deep_color_possible(crtc_state, bpc) &&
> >  		    hdmi_port_clock_valid(intel_hdmi,
> > -					  intel_hdmi_port_clock(clock, bpc),
> > +					  intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output),
> 
> Does not having the clock /= 2 here mean the check was bogus before this
> patch?

Previously the /2 was done by the caller (intel_hdmi_compute_clock()).
So nothing should be different here.

> 
> BR,
> Jani.
> 
> 
> >  					  true, crtc_state->has_hdmi_sink) == MODE_OK)
> >  			return bpc;
> >  	}
> > @@ -2082,13 +2084,10 @@ static int intel_hdmi_compute_clock(struct intel_encoder *encoder,
> >  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
> >  		clock *= 2;
> >  
> > -	/* YCBCR420 TMDS rate requirement is half the pixel clock */
> > -	if (intel_hdmi_is_ycbcr420(crtc_state))
> > -		clock /= 2;
> > -
> >  	bpc = intel_hdmi_compute_bpc(encoder, crtc_state, clock);
> >  
> > -	crtc_state->port_clock = intel_hdmi_port_clock(clock, bpc);
> > +	crtc_state->port_clock = intel_hdmi_tmds_clock(clock, bpc,
> > +						       intel_hdmi_is_ycbcr420(crtc_state));
> >  
> >  	/*
> >  	 * pipe_bpp could already be below 8bpc due to
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
