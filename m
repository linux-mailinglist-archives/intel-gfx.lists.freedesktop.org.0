Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6AAC3B28D
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 14:19:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5764F10E8BB;
	Thu,  6 Nov 2025 13:19:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KnawPbps";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1F4010E8B7;
 Thu,  6 Nov 2025 13:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762435161; x=1793971161;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=z7ivmT0ZPuCRxkTOzSgGdUGzW1oRYlubSxneSU8Kljs=;
 b=KnawPbpsj9+BqeTyxMG83aUGQlitWp+HoPwug+dv6JnghxdJOGqGJ+Lu
 fkoJi4NNWDWqLnxgkmWoQtvWAIbE0AMDfO4LYzMatpoFvajzUImNSZ50q
 q9o6DztzWp7dERvIXNuXQFPEYkS0huewKlI7zeplmus4uelUURIwqaZcV
 F5/F/ZYkiIx7kItKyVRKqI42QJPpTxn9GBh6If89HnCMro+MNuThIF7DI
 7isliwJDx4A7eAHA2Gs6P0oopQWkDeWx2fez7GKSXIVBrgUlzgxJ8IwMB
 jRIcguwTSUkFqBbZAEfvFCCOzMtwdZbJqlSr5Rx9JxsCHhZH/IlyFyiJB w==;
X-CSE-ConnectionGUID: LyOSYeDrQcOALGSW4e9YWA==
X-CSE-MsgGUID: la3eIsB2QuKsaKKkcYaqfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75178547"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="75178547"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 05:19:20 -0800
X-CSE-ConnectionGUID: V7TAtvDIRbmUyq0gSEP63w==
X-CSE-MsgGUID: peZNdVTQSdKcD/pUhQ08SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="191852205"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 05:19:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/7] drm/i915/ltphy: Nuke bogus weird timeouts
In-Reply-To: <aQyewv447ln68vnL@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
 <20251105190433.16434-6-ville.syrjala@linux.intel.com>
 <f5d014e2b968f6b758a6c96210528b7607675945@intel.com>
 <DM3PPF208195D8D46BC28CDE4965CD063A6E3C2A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <aQyewv447ln68vnL@intel.com>
Date: Thu, 06 Nov 2025 15:19:16 +0200
Message-ID: <46ab856eab5fec27a57ce70fd4c6f454c580432f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 06 Nov 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Nov 06, 2025 at 12:03:28PM +0000, Kandpal, Suraj wrote:
>> > Subject: Re: [PATCH 5/7] drm/i915/ltphy: Nuke bogus weird timeouts
>> >=20
>> > On Wed, 05 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wro=
te:
>> > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > >
>> > > The LT PHY code is abusing intel_de_wait_custom() in all kinds of
>> > > weird ways. Get rid of the weird slow timeouts. If these are actually
>> > > needed then the fast timeouts should really be specified as the
>> > > default 2 microscond or something.
>> > >
>> > > This will let us eventually nuke intel_de_wait_custom() and convert
>> > > over to poll_timeout_us().
>> > >
>> > > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.co=
m>
>> >=20
>> > Suraj, any input here?
>> >=20
>> > Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>> >=20
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_lt_phy.c      | 11 +++++------
>> > >  drivers/gpu/drm/i915/display/intel_lt_phy_regs.h |  1 -
>> > >  2 files changed, 5 insertions(+), 7 deletions(-)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
>> > > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
>> > > index 6fb68157b322..cc1d6b7a7de4 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
>> > > @@ -1178,10 +1178,9 @@ intel_lt_phy_lane_reset(struct intel_encoder
>> > *encoder,
>> > >  	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display,
>> > port),
>> > >  				 XELPDP_LANE_PCLK_PLL_ACK(0),
>> > >  				 XELPDP_LANE_PCLK_PLL_ACK(0),
>> > > -				 XE3PLPD_MACCLK_TURNON_LATENCY_US,
>> > > -				 XE3PLPD_MACCLK_TURNON_LATENCY_MS,
>> > NULL))
>> > > +				 XE3PLPD_MACCLK_TURNON_LATENCY_US, 0,
>> > NULL))
>> > >  		drm_warn(display->drm, "PHY %c PLL MacCLK assertion Ack
>> > not done after %dus.\n",
>> > > -			 phy_name(phy),
>> > XE3PLPD_MACCLK_TURNON_LATENCY_MS * 1000);
>> > > +			 phy_name(phy),
>> > XE3PLPD_MACCLK_TURNON_LATENCY_US);
>>=20
>> According to Bspec: 74499
>> Latency can be either 21us for 1ms depending on what port is connected.
>>=20
>>  > >
>> > >  	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
>> > >  		     XELPDP_FORWARD_CLOCK_UNGATE,
>> > > @@ -1192,7 +1191,7 @@ intel_lt_phy_lane_reset(struct intel_encoder
>> > > *encoder,
>> > >
>> > >  	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display,
>> > port),
>> > >  				 lane_phy_current_status, 0,
>> > > -				 XE3PLPD_RESET_END_LATENCY_US, 2, NULL))
>> > > +				 XE3PLPD_RESET_END_LATENCY_US, 0, NULL))
>>=20
>> Bspec : 74499
>> Says 200us but 2ms (1.5ms to be precise) was the actual time we found th=
e this to work properly
>>=20
>>=20
>> > >  		drm_warn(display->drm,
>> > >  			 "PHY %c failed to bring out of Lane reset after
>> > %dus.\n",
>> > >  			 phy_name(phy),
>> > XE3PLPD_RESET_END_LATENCY_US); @@ -1674,7 +1673,7
>> > > @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>> > >  		if (intel_de_wait_custom(display,
>> > XELPDP_PORT_CLOCK_CTL(display, port),
>> > >  					 XELPDP_LANE_PCLK_PLL_ACK(0),
>> > >  					 XELPDP_LANE_PCLK_PLL_ACK(0),
>> > > -
>> > XE3PLPD_MACCLK_TURNON_LATENCY_US, 2, NULL))
>> > > +
>> > XE3PLPD_MACCLK_TURNON_LATENCY_US, 0, NULL))
>>=20
>> Ditto here.
>>=20
>> > >  			drm_warn(display->drm, "PHY %c PLL MacCLK Ack
>> > assertion Timeout after %dus.\n",
>> > >  				 phy_name(phy),
>> > XE3PLPD_MACCLK_TURNON_LATENCY_US);
>> > >
>> > > @@ -1702,7 +1701,7 @@ void intel_lt_phy_pll_enable(struct intel_enco=
der
>> > *encoder,
>> > >  		/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status =3D 1
>> > for Owned PHY Lanes. */
>> > >  		if (intel_de_wait_custom(display,
>> > XELPDP_PORT_BUF_CTL2(display, port),
>> > >  					 lane_phy_pulse_status,
>> > lane_phy_pulse_status,
>> > > -
>> > XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 2, NULL))
>> > > +
>> > XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 0, NULL))
>>=20
>> Ditto here.
>> I would suggest giving this a CI run on NVLS before merging this.
>
> Since you have some idea why these magic numbers were chosen
> please redo all of these, and make sure to:
> - don't use intel_de_wait_custom() unless absolutely necessary
> - if you need to use intel_de_wait_custom() then either
>   use the default '2,<whatever ms>' or '<whatever us>,0' timeouts
> - document all the used timeouts. This is especially important
>   when they are not directly specified in bspec

Yeah, should be intel_de_wait_for_{set,clear}() then probably.

We should probably change all of those from ms to us units to make them
more generally useful also for shorter waits.

BR,
Jni.


>
>>=20
>> Regards,
>> Suraj Kandpal
>>=20
>> > >  			drm_warn(display->drm, "PHY %c PLL rate not
>> > changed after %dus.\n",
>> > >  				 phy_name(phy),
>> > XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
>> > > b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
>> > > index 9223487d764e..36abc2bdbd9b 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
>> > > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
>> > > @@ -7,7 +7,6 @@
>> > >  #define __INTEL_LT_PHY_REGS_H__
>> > >
>> > >  #define XE3PLPD_MSGBUS_TIMEOUT_FAST_US	500
>> > > -#define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
>> > >  #define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
>> > >  #define XE3PLPD_MACCLK_TURNOFF_LATENCY_US	1
>> > >  #define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
>> >=20
>> > --
>> > Jani Nikula, Intel

--=20
Jani Nikula, Intel
