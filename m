Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9559BC4F4AF
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 18:41:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFDCC10E62F;
	Tue, 11 Nov 2025 17:41:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C6Uk2R42";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B2F210E62F;
 Tue, 11 Nov 2025 17:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762882889; x=1794418889;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DSQ1ILpmQTdPWn9opO935KywqHBFxo7gCOGKmFTBWeA=;
 b=C6Uk2R42wRQ/XTe82otBjw2Ty6raDmHOUJ606LBlPTj26CVYj7Y6eIBC
 yeb7QrcKzLWBT8Qw6nuAC9waniJgXU23WdIQIUx9akNLA/rPhw9n7CRRj
 CB5FqJW25Jl9ogsAMpKbTloykO7EZnoGqg8OyZv9dXILcNB8AgL7+uuVT
 IPZHW0RUGuLGhIG1ieV9JaGUzbD2VHGmn038PxKzSYcKqfaZpD+tNPpV6
 beMZRjuS9KWuUm0J6+QCS/KuRuvzyreoUvbwQRLASJaKVa3mwejHT8Znp
 GQe5axfS/RL5IRZv9e5bRNKeQidGuZ2bRAQz4YHSgx1xJsjQV45udqsPi g==;
X-CSE-ConnectionGUID: tZbdGyU1SPyWjEpzoiR8wA==
X-CSE-MsgGUID: dDNRVZvmSCCBecLXFFckmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="67552390"
X-IronPort-AV: E=Sophos;i="6.19,297,1754982000"; d="scan'208";a="67552390"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 09:41:28 -0800
X-CSE-ConnectionGUID: lB8+Y8G1RSyCuG7iUIjadg==
X-CSE-MsgGUID: SaGNS8slSDKwCDWUjnM7NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,297,1754982000"; d="scan'208";a="193402084"
Received: from bjrankin-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.124.223.47])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 09:41:27 -0800
Date: Tue, 11 Nov 2025 19:41:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 06/16] drm/i915/de: Use intel_de_wait_ms() for the
 obvious cases
Message-ID: <aRN1Q5ygV91CiVf4@intel.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
 <20251110172756.2132-7-ville.syrjala@linux.intel.com>
 <IA3PR11MB8937335A53E8777022F4358FE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA3PR11MB8937335A53E8777022F4358FE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Nov 11, 2025 at 04:32:17AM +0000, Kandpal, Suraj wrote:
> > Subject: [PATCH 06/16] drm/i915/de: Use intel_de_wait_ms() for the obvious
> > cases
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Replace some users of intel_de_wait_custom() with intel_de_wait_ms().
> > 
> > This includes the cases where we pass in the default 2 microsecond fast
> > timeout, which is also what intel_de_wait_ms() uses so there are no functional
> > changes here.
> > 
> > Done with cocci (with manual formatting fixes):
> > @@
> > expression display, reg, mask, value, timeout_ms, out_value; @@
> > - intel_de_wait_custom(display, reg, mask, value, 2, timeout_ms, out_value)
> > + intel_de_wait_ms(display, reg, mask, value, timeout_ms, out_value)
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 15 ++++-----
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c   |  6 ++--
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     |  5 ++-
> >  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 32 +++++++++----------
> >  drivers/gpu/drm/i915/display/intel_pmdemand.c |  6 ++--
> >  5 files changed, 30 insertions(+), 34 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index af97bd42495b..55fd95994ea7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -164,11 +164,10 @@ int intel_cx0_wait_for_ack(struct intel_encoder
> > *encoder,
> >  	enum port port = encoder->port;
> >  	enum phy phy = intel_encoder_to_phy(encoder);
> > 
> > -	if (intel_de_wait_custom(display,
> > -
> > XELPDP_PORT_P2M_MSGBUS_STATUS(display, port, lane),
> > -				 XELPDP_PORT_P2M_RESPONSE_READY,
> > -				 XELPDP_PORT_P2M_RESPONSE_READY,
> > -				 2, XELPDP_MSGBUS_TIMEOUT_MS, val)) {
> > +	if (intel_de_wait_ms(display,
> > XELPDP_PORT_P2M_MSGBUS_STATUS(display, port, lane),
> > +			     XELPDP_PORT_P2M_RESPONSE_READY,
> > +			     XELPDP_PORT_P2M_RESPONSE_READY,
> > +			     XELPDP_MSGBUS_TIMEOUT_MS, val)) {
> >  		drm_dbg_kms(display->drm,
> >  			    "PHY %c Timeout waiting for message ACK. Status:
> > 0x%x\n",
> >  			    phy_name(phy), *val);
> > @@ -2827,9 +2826,9 @@ void
> > intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
> >  		     intel_cx0_get_powerdown_update(lane_mask));
> > 
> >  	/* Update Timeout Value */
> > -	if (intel_de_wait_custom(display, buf_ctl2_reg,
> > -
> > intel_cx0_get_powerdown_update(lane_mask), 0,
> > -				 2,
> > XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS, NULL))
> > +	if (intel_de_wait_ms(display, buf_ctl2_reg,
> > +			     intel_cx0_get_powerdown_update(lane_mask), 0,
> > +
> > XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS, NULL))
> >  		drm_warn(display->drm,
> >  			 "PHY %c failed to bring out of lane reset\n",
> >  			 phy_name(phy));
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index 2e7dbaf511b9..809799f63e32 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -62,9 +62,9 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
> >  	u32 status;
> >  	int ret;
> > 
> > -	ret = intel_de_wait_custom(display, ch_ctl,
> > DP_AUX_CH_CTL_SEND_BUSY,
> > -				   0,
> > -				   2, timeout_ms, &status);
> > +	ret = intel_de_wait_ms(display, ch_ctl,
> > +			       DP_AUX_CH_CTL_SEND_BUSY, 0,
> > +			       timeout_ms, &status);
> > 
> >  	if (ret == -ETIMEDOUT)
> >  		drm_err(display->drm,
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 78c34466e402..5e1a96223a9c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -410,9 +410,8 @@ static int intel_hdcp_load_keys(struct intel_display
> > *display)
> >  	}
> > 
> >  	/* Wait for the keys to load (500us) */
> 
> I would prefer this comment be changed/ removed since we now wait 1 ms 
> for the keys to load

I'm not changing the timeout here. Reviewign the comment vs.
code for correctness is a job for someone else (someone who
knows what the timeout should be and why the comment and
code disagree).

Though I think generally we do have other places where we use
eg. 1ms even when the specified timeout is less, especially if
the specified timeout varies between platforms. In those cases
I do prefer to have a comment that documents what the specified
timeout(s) is/are, and why we use some bigger value.

> 
> other than that
> 
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> > -	ret = intel_de_wait_custom(display, HDCP_KEY_STATUS,
> > -				   HDCP_KEY_LOAD_DONE,
> > HDCP_KEY_LOAD_DONE,
> > -				   2, 1, &val);
> > +	ret = intel_de_wait_ms(display, HDCP_KEY_STATUS,
> > HDCP_KEY_LOAD_DONE,
> > +			       HDCP_KEY_LOAD_DONE, 1, &val);
> >  	if (ret)
> >  		return ret;
> >  	else if (!(val & HDCP_KEY_LOAD_STATUS)) diff --git
> > a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > index 243fca1c6a2d..ac6f61107528 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > @@ -1201,10 +1201,9 @@ intel_lt_phy_lane_reset(struct intel_encoder
> > *encoder,
> >  		     XELPDP_LANE_PCLK_PLL_REQUEST(0),
> >  		     XELPDP_LANE_PCLK_PLL_REQUEST(0));
> > 
> > -	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display,
> > port),
> > -				 XELPDP_LANE_PCLK_PLL_ACK(0),
> > -				 XELPDP_LANE_PCLK_PLL_ACK(0),
> > -				 2,
> > XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
> > +	if (intel_de_wait_ms(display, XELPDP_PORT_CLOCK_CTL(display,
> > port),
> > +			     XELPDP_LANE_PCLK_PLL_ACK(0),
> > XELPDP_LANE_PCLK_PLL_ACK(0),
> > +			     XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
> >  		drm_warn(display->drm, "PHY %c PLL MacCLK assertion ack
> > not done\n",
> >  			 phy_name(phy));
> > 
> > @@ -1215,15 +1214,15 @@ intel_lt_phy_lane_reset(struct intel_encoder
> > *encoder,
> >  	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
> >  		     lane_pipe_reset | lane_phy_pulse_status, 0);
> > 
> > -	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display,
> > port),
> > -				 lane_phy_current_status, 0,
> > -				 2, XE3PLPD_RESET_END_LATENCY_MS,
> > NULL))
> > +	if (intel_de_wait_ms(display, XELPDP_PORT_BUF_CTL2(display, port),
> > +			     lane_phy_current_status, 0,
> > +			     XE3PLPD_RESET_END_LATENCY_MS, NULL))
> >  		drm_warn(display->drm, "PHY %c failed to bring out of lane
> > reset\n",
> >  			 phy_name(phy));
> > 
> > -	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display,
> > port),
> > -				 lane_phy_pulse_status,
> > lane_phy_pulse_status,
> > -				 2,
> > XE3PLPD_RATE_CALIB_DONE_LATENCY_MS, NULL))
> > +	if (intel_de_wait_ms(display, XELPDP_PORT_BUF_CTL2(display, port),
> > +			     lane_phy_pulse_status, lane_phy_pulse_status,
> > +			     XE3PLPD_RATE_CALIB_DONE_LATENCY_MS,
> > NULL))
> >  		drm_warn(display->drm, "PHY %c PLL rate not changed\n",
> >  			 phy_name(phy));
> > 
> > @@ -2002,10 +2001,9 @@ void intel_lt_phy_pll_enable(struct intel_encoder
> > *encoder,
> >  			     XELPDP_LANE_PCLK_PLL_REQUEST(0));
> > 
> >  		/* 12. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 1. */
> > -		if (intel_de_wait_custom(display,
> > XELPDP_PORT_CLOCK_CTL(display, port),
> > -					 XELPDP_LANE_PCLK_PLL_ACK(0),
> > -					 XELPDP_LANE_PCLK_PLL_ACK(0),
> > -					 2,
> > XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
> > +		if (intel_de_wait_ms(display,
> > XELPDP_PORT_CLOCK_CTL(display, port),
> > +				     XELPDP_LANE_PCLK_PLL_ACK(0),
> > XELPDP_LANE_PCLK_PLL_ACK(0),
> > +
> > XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
> >  			drm_warn(display->drm, "PHY %c PLL MacCLK ack
> > assertion timeout\n",
> >  				 phy_name(phy));
> > 
> > @@ -2031,9 +2029,9 @@ void intel_lt_phy_pll_enable(struct intel_encoder
> > *encoder,
> >  				   rate_update, MB_WRITE_COMMITTED);
> > 
> >  		/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status = 1
> > for Owned PHY Lanes. */
> > -		if (intel_de_wait_custom(display,
> > XELPDP_PORT_BUF_CTL2(display, port),
> > -					 lane_phy_pulse_status,
> > lane_phy_pulse_status,
> > -					 2,
> > XE3PLPD_RATE_CALIB_DONE_LATENCY_MS, NULL))
> > +		if (intel_de_wait_ms(display,
> > XELPDP_PORT_BUF_CTL2(display, port),
> > +				     lane_phy_pulse_status,
> > lane_phy_pulse_status,
> > +
> > XE3PLPD_RATE_CALIB_DONE_LATENCY_MS, NULL))
> >  			drm_warn(display->drm, "PHY %c PLL rate not
> > changed\n",
> >  				 phy_name(phy));
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> > b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> > index 3cc89048b027..dc44a7a169c1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> > @@ -462,9 +462,9 @@ static void intel_pmdemand_poll(struct intel_display
> > *display)
> >  	u32 status;
> >  	int ret;
> > 
> > -	ret = intel_de_wait_custom(display,
> > XELPDP_INITIATE_PMDEMAND_REQUEST(1),
> > -				   XELPDP_PMDEMAND_REQ_ENABLE, 0,
> > -				   2, timeout_ms, &status);
> > +	ret = intel_de_wait_ms(display,
> > XELPDP_INITIATE_PMDEMAND_REQUEST(1),
> > +			       XELPDP_PMDEMAND_REQ_ENABLE, 0,
> > +			       timeout_ms, &status);
> > 
> >  	if (ret == -ETIMEDOUT)
> >  		drm_err(display->drm,
> > --
> > 2.49.1
> 

-- 
Ville Syrjälä
Intel
