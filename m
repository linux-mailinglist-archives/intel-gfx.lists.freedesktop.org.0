Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BBAC3B265
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 14:17:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4743B10E2E3;
	Thu,  6 Nov 2025 13:17:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bU4iWcty";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A60F310E2E3;
 Thu,  6 Nov 2025 13:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762435055; x=1793971055;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xbwEvHHR1GEndJGqHwOd4gidn17epcN5LRaQytN/xS4=;
 b=bU4iWctyW6jOCxNfoHbf3UcRt1staGNJVzQhUmjSmWElAD8Jut73ZVPR
 aFn/FsiLV3FCjgHrH1xFQsUPYKrVGHiPXklraMqVMWADjDX9jKr88or4L
 l0GSxXqEgiuLLJ/mMBm8rUnUCrr5Egbc+cGPdF7lUuioj5Tu8ufuX4J6T
 PttMKDH5Xv2DiCeNQsVkyhYxh1igkmJO5m9v5FfsUhgrqo9cqMlnvDf3r
 eGDmsGBAGiphrAHd0CWpHNX+ZWoo99vKYangrjMRzQZdw4+en5GlUhBma
 74ivwUTfqQxgN7E5wBVg055hijxuXZw3H8yHFwlhAThtgr6ZRw/TVN4ie A==;
X-CSE-ConnectionGUID: A85SlsR4RwqbzAs3KixRDQ==
X-CSE-MsgGUID: 1+NacJxESDCUzkY3W5edww==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64496345"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64496345"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 05:17:35 -0800
X-CSE-ConnectionGUID: O/KbHAdsTsSE6/zJHIfRuw==
X-CSE-MsgGUID: 0TTQkfinQkiGBhknAue7Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="218418092"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.213])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 05:17:33 -0800
Date: Thu, 6 Nov 2025 15:17:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/7] drm/i915/ltphy: Nuke bogus weird timeouts
Message-ID: <aQyf6vQscyyabh0M@intel.com>
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
 <20251105190433.16434-6-ville.syrjala@linux.intel.com>
 <f5d014e2b968f6b758a6c96210528b7607675945@intel.com>
 <DM3PPF208195D8D46BC28CDE4965CD063A6E3C2A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <aQyewv447ln68vnL@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aQyewv447ln68vnL@intel.com>
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

On Thu, Nov 06, 2025 at 03:12:34PM +0200, Ville Syrjälä wrote:
> On Thu, Nov 06, 2025 at 12:03:28PM +0000, Kandpal, Suraj wrote:
> > > Subject: Re: [PATCH 5/7] drm/i915/ltphy: Nuke bogus weird timeouts
> > > 
> > > On Wed, 05 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > >
> > > > The LT PHY code is abusing intel_de_wait_custom() in all kinds of
> > > > weird ways. Get rid of the weird slow timeouts. If these are actually
> > > > needed then the fast timeouts should really be specified as the
> > > > default 2 microscond or something.
> > > >
> > > > This will let us eventually nuke intel_de_wait_custom() and convert
> > > > over to poll_timeout_us().
> > > >
> > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Suraj, any input here?
> > > 
> > > Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> > > 
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_lt_phy.c      | 11 +++++------
> > > >  drivers/gpu/drm/i915/display/intel_lt_phy_regs.h |  1 -
> > > >  2 files changed, 5 insertions(+), 7 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > > index 6fb68157b322..cc1d6b7a7de4 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > > @@ -1178,10 +1178,9 @@ intel_lt_phy_lane_reset(struct intel_encoder
> > > *encoder,
> > > >  	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display,
> > > port),
> > > >  				 XELPDP_LANE_PCLK_PLL_ACK(0),
> > > >  				 XELPDP_LANE_PCLK_PLL_ACK(0),
> > > > -				 XE3PLPD_MACCLK_TURNON_LATENCY_US,
> > > > -				 XE3PLPD_MACCLK_TURNON_LATENCY_MS,
> > > NULL))
> > > > +				 XE3PLPD_MACCLK_TURNON_LATENCY_US, 0,
> > > NULL))
> > > >  		drm_warn(display->drm, "PHY %c PLL MacCLK assertion Ack
> > > not done after %dus.\n",
> > > > -			 phy_name(phy),
> > > XE3PLPD_MACCLK_TURNON_LATENCY_MS * 1000);
> > > > +			 phy_name(phy),
> > > XE3PLPD_MACCLK_TURNON_LATENCY_US);
> > 
> > According to Bspec: 74499
> > Latency can be either 21us for 1ms depending on what port is connected.
> > 
> >  > >
> > > >  	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
> > > >  		     XELPDP_FORWARD_CLOCK_UNGATE,
> > > > @@ -1192,7 +1191,7 @@ intel_lt_phy_lane_reset(struct intel_encoder
> > > > *encoder,
> > > >
> > > >  	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display,
> > > port),
> > > >  				 lane_phy_current_status, 0,
> > > > -				 XE3PLPD_RESET_END_LATENCY_US, 2, NULL))
> > > > +				 XE3PLPD_RESET_END_LATENCY_US, 0, NULL))
> > 
> > Bspec : 74499
> > Says 200us but 2ms (1.5ms to be precise) was the actual time we found the this to work properly
> > 
> > 
> > > >  		drm_warn(display->drm,
> > > >  			 "PHY %c failed to bring out of Lane reset after
> > > %dus.\n",
> > > >  			 phy_name(phy),
> > > XE3PLPD_RESET_END_LATENCY_US); @@ -1674,7 +1673,7
> > > > @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
> > > >  		if (intel_de_wait_custom(display,
> > > XELPDP_PORT_CLOCK_CTL(display, port),
> > > >  					 XELPDP_LANE_PCLK_PLL_ACK(0),
> > > >  					 XELPDP_LANE_PCLK_PLL_ACK(0),
> > > > -
> > > XE3PLPD_MACCLK_TURNON_LATENCY_US, 2, NULL))
> > > > +
> > > XE3PLPD_MACCLK_TURNON_LATENCY_US, 0, NULL))
> > 
> > Ditto here.
> > 
> > > >  			drm_warn(display->drm, "PHY %c PLL MacCLK Ack
> > > assertion Timeout after %dus.\n",
> > > >  				 phy_name(phy),
> > > XE3PLPD_MACCLK_TURNON_LATENCY_US);
> > > >
> > > > @@ -1702,7 +1701,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder
> > > *encoder,
> > > >  		/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status = 1
> > > for Owned PHY Lanes. */
> > > >  		if (intel_de_wait_custom(display,
> > > XELPDP_PORT_BUF_CTL2(display, port),
> > > >  					 lane_phy_pulse_status,
> > > lane_phy_pulse_status,
> > > > -
> > > XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 2, NULL))
> > > > +
> > > XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 0, NULL))
> > 
> > Ditto here.
> > I would suggest giving this a CI run on NVLS before merging this.
> 
> Since you have some idea why these magic numbers were chosen
> please redo all of these, and make sure to:
> - don't use intel_de_wait_custom() unless absolutely necessary
> - if you need to use intel_de_wait_custom() then either
>   use the default '2,<whatever ms>' or '<whatever us>,0' timeouts
> - document all the used timeouts. This is especially important
>   when they are not directly specified in bspec
> 
> > 
> > Regards,
> > Suraj Kandpal
> > 
> > > >  			drm_warn(display->drm, "PHY %c PLL rate not
> > > changed after %dus.\n",
> > > >  				 phy_name(phy),
> > > XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> > > > b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> > > > index 9223487d764e..36abc2bdbd9b 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> > > > @@ -7,7 +7,6 @@
> > > >  #define __INTEL_LT_PHY_REGS_H__
> > > >
> > > >  #define XE3PLPD_MSGBUS_TIMEOUT_FAST_US	500
> > > > -#define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
> > > >  #define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
> > > >  #define XE3PLPD_MACCLK_TURNOFF_LATENCY_US	1
> > > >  #define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50

Oh,and these do not belong in the regs.h file. If you feel the need
to have names for these (eg. if they are used multiple times) then
just put them in the .c file.

-- 
Ville Syrjälä
Intel
