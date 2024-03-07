Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C44C9874795
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 06:27:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78C7410EF49;
	Thu,  7 Mar 2024 05:27:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e+sPHraI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DCBD10EF49
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Mar 2024 05:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709789255; x=1741325255;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5XT94ur5lELv3WKHoaPPv02oR4+1q2/BqDN2Tupi13I=;
 b=e+sPHraIhtwhvTMnsOLLGpLjKF2UdwjdCrtC0cNAotuLLv3KEcuJPaxl
 21b8rhxhzPeKKAvBUdEb6Vx+2EgLsg7cMxvx2vwvPLzlFM0btlspQ80Pt
 cv9+DBkboLXK9q99fuAJd1PYkyZcbsfkSXe7s9R6JEmXjqcwY1vgOovef
 ZRy5M9N27QII6fpuR8rN6Kp5Sbp4QbbEVRgzgJn7pXR97PG9kpHoQrWxp
 fDuldjW8UrD74QbZW/PZWJ/pj00hVpWKJnoxcd9N7lMU2C4aRHjHUb3Lk
 y3kl10DhxhOJ+snrT5eP/VYlJSN/+Q/sVOrZPsQEiU++Iz3g6ZR1YFKoI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="15086815"
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; d="scan'208";a="15086815"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 21:27:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; 
   d="scan'208";a="9974792"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 21:27:34 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 21:27:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 21:27:33 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 21:27:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XUZ8GPapvgFDWkLUexTDwn9j0jdoVtj6r5MPVkM/J1w4K/bSII8g5AJ9qH1i6Ngd3Hw1AZKJvUIcIUROfgQ80cDcGGkKiryteRK4XF99wgvxBqBO0QGLMaPCmhrWNS2mMlir32+kAPDUVvkBQYcDwoEjUfNyh78Ms1d6xvlU4k2vaVm2mOeSO1XKBvv1ABOTK4Qvfbkp9eCN2JH4xpE0KybuPSVevNm8Prl9cWy0Z6CnipjjRlpEa8pwoOTT4yy9sfeNnMeOAq7jrIiMszZsXH1B4cyyGQCgvKi6iMCaEg5E81L532cVKclOiE1+ps1TrH0n4SeU4BAydkYs8lSNSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PH4VjND2qxRftcMlkwZ+SDFTRcDjQYzEuOCF9mvVTCE=;
 b=Hf5kqSvg/O85TsjcnSykF/SMKVDNrpeHGuseddTFTV+X4p3iPnRHcWAXr4EpiIfLTVi7SgPypDYRtHoWheYq4rT2Yq+3pmK81WQpetfQ0VidPurhiG+yb8KKEIxoXEgzY4EVgTS5Lm7N4tE7QfkGOPR9xraKhOLiyymnGeOanyrtYjFXSLO1CL+5CSfsw4ESrG4lX6aDgwoRDRiV+NvUe8FK/ulfD6GjprgSoHBnYbGRNEdCz+j/KL0aua97MGRqQA3Pbu5TEsn5ga3qKEmjri6lUfpq9G4UXKZdZd+YR8CDXlGNk/avsmxs/M0KXHKU3iDqK6GlAB+2Hm0Q1/Q/Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA1PR11MB8256.namprd11.prod.outlook.com (2603:10b6:806:253::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.6; Thu, 7 Mar
 2024 05:27:31 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7362.019; Thu, 7 Mar 2024
 05:27:31 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/dp: Enable AUX based backlight for HDR
Thread-Topic: [PATCH] drm/i915/dp: Enable AUX based backlight for HDR
Thread-Index: AQHabumMpM1UupvL+kG9D8zzoC+PKLEqa02AgAA5+QCAARxvgA==
Date: Thu, 7 Mar 2024 05:27:31 +0000
Message-ID: <SN7PR11MB67503FB69128DAB24C1C6B0DE3202@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240305103757.1856179-1-suraj.kandpal@intel.com>
 <20240306085915.1861083-1-suraj.kandpal@intel.com>
 <ZehhBN-gFIfULx4H@intel.com>
In-Reply-To: <ZehhBN-gFIfULx4H@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA1PR11MB8256:EE_
x-ms-office365-filtering-correlation-id: 454dbd00-1bb8-481f-75e8-08dc3e674985
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LhOuniOpsqGpnvOKZweMOkltXsdcl5wiu1U1RUvMlNq65T200K91h4fw9tbFw2+bktL9frIM+t0IKBrX6dt749LpM/tV58z+F1j6s8reackq3zw6B/R9q/gCrMN46tgKiZmup7rkmXu0i1xytYMapdLX54Cb95rcdyoCzXRXLau7lnR46zpy3TNswhlEOuu8MAsQ/ffFjL0Ed7mFTwh64ZF1f+ExVecf1qTo3HXcfM6WyCn3rzJaCHkFlNWFgpFDX+9+Oj/UFYeHvMUmHtOCE2SgyH1gvGpZwwJ+Z9oF20o18cDvGujDmjz3Ju/WGbxZTSeJ1SR4eJnNpFVVOu/UyOSlVMgcTDY28ztdZZONhfKMpjtYg7bvWpY6KDW+lJP13AyiD4vpzVSAJmmGiYtEtpvjz/oEQSW9vPecQVf/9XX7OvqBCjQQ4IlYoXp/a0Q66aJwUkaegqU/Dh3FfxPeDL8rklTOSvTqHCll6wlChT3klchwjQvdLjkDOCiehseObPLEBvit/6NRkvxP9TDOZrmkqU2UXQtx3H928Je3433RSWGqT74CBMwPow+J8v75pWGsiCa3U/LHFyqBe/9uILTuwHiFZ6RyhMp6l2HTSLhU7FKa5LPbWC7KQNDvTmcoUx21ieElxbpPLyHMVyPKIN5GU0I6RUxJ3qvyfEv/9Df/6OmlSHPxRWpKMJHxYD1lQ5UJyUEb44CndzitZs8PZA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?slrGoYs46j/6s/RimZ7JPC3cdCCO+WCxCynFJVcfOlrqpl+/LQLZPxlHKl?=
 =?iso-8859-1?Q?ryR8yzurjGQjjLHq/254+odiwrZNflq60rfbPkvtmOZflHA5LQJe+2vB4a?=
 =?iso-8859-1?Q?G4tjhVFcTLKb6qKqDJT09kGp5NbRH2OKcY3onFSHLLkXzPQPq7kfd+bzne?=
 =?iso-8859-1?Q?v8YfCOJE3+iz61C+KIG9arO2MiNQ+IL7N0D/iCfvVQLs4/a95A8dMHJDwg?=
 =?iso-8859-1?Q?9Anz38025JiIVSJYF1PdQAJWp73TWQPdoZOLTNdIhNo9OOV6qhJfmTqcQb?=
 =?iso-8859-1?Q?6ypho7sL1a/CYh+p9Sew6W6yZDW/hsvGtH0PBZuA8Ww4THoWFOZxsD7aZK?=
 =?iso-8859-1?Q?ErRD/2/EeivAF6WEgR0c+zAdXJGNrrW1U0d0Kok6L3qnMY+uKPX+NT6KN4?=
 =?iso-8859-1?Q?fj1s7ct9cZ3t5+2zEqBZPeVYoWCebR1p7rk0vKQtKsLK5QyQOWgRX+uulB?=
 =?iso-8859-1?Q?bK7s4KvBLegPr1YEt94lO8qOzddPcnjxR/atJpbOxANrsjgI11HT3x2TfR?=
 =?iso-8859-1?Q?0faq6qWpEs90jazkMSlAYqN343NJYFSRdM0n2GHzlI8TPuZrGOpjrTOvEC?=
 =?iso-8859-1?Q?NKzxLBJp8Y9FOHKoDL22Wr/IiOsuKSk5t9BrK85QxokUvFZ9+2L7P35PRT?=
 =?iso-8859-1?Q?YbODFvgLoILruJz6+QWz5nYo1vnjSS1hJDPGUsWwRzKlUamdD6ZXjb0Jo3?=
 =?iso-8859-1?Q?qxcDisP7cfp+4smuy5nfbxQDUDlYPCbsqxYy6n5tvoEDUvBbnmoIJiP6dN?=
 =?iso-8859-1?Q?oiD/V3KrbP6Cp1Tk7QLxiQs5Ptgjo36MR0D8p7DBoH4NU2EUm84gV3yCEU?=
 =?iso-8859-1?Q?UTwTzAy8ArKIPkXAjqpmS3fGTyI0F/WpxT3CbIgyTthryvBzEn9uP8funN?=
 =?iso-8859-1?Q?08ipmgQ7tFIMu4WuzbO5phF4N+AESyg/hFcBEXqwi9NT6QGoTVI2lWJ776?=
 =?iso-8859-1?Q?Fdpxh/3J6fR0nWBVO+TfVAhoLnU83qXwSDa6pku9LrNxmzFu4b4Sxt0RS3?=
 =?iso-8859-1?Q?NJNIJQWvV//G7Gue/9FCzbYTgZNAiSMXkukNovawF2VuTNbFyKr4oteEz4?=
 =?iso-8859-1?Q?KozUlz/y57TfkbpBhmOOP7QXXpZfjJDxynbXrAjALYJlt1WnxTcG1OqopS?=
 =?iso-8859-1?Q?LooA0IiEeLUCUpz0OLIcb56UB3lyoWwvv1wrKHvh+5hWS/ie2S98bXwr/6?=
 =?iso-8859-1?Q?BViwG8vI3TGZTZD3+yQqqOxj+hHARAYqpkKp744AXbCkZ6jQpGTMzdk2VS?=
 =?iso-8859-1?Q?0M64nzr1B6bYv1jKO2KUL1ZPvRMTF7JTRGkFJAAKixTZxxlGToAQiZdrV9?=
 =?iso-8859-1?Q?cKpPrmqvaKRqQFRoeB5tPDzPScccqn/O+q6yJmqwLU7FNMRFlSyx7A0KBv?=
 =?iso-8859-1?Q?1Vc35MtOrbZVtlVq5Me0EJj7bSBEVvJ59/NwooaMsrM9v2JQMfQBfXEE8c?=
 =?iso-8859-1?Q?DprurAICyOVTyRbxWT/e91sZyvMIoZVP04yYwfbbEjFttcil0m8CC2dQp9?=
 =?iso-8859-1?Q?ESRLwnFIASrL9jPyWsUtXSAch35AYu5ju4mZxJtAhO4eux93eVlS2jChZ/?=
 =?iso-8859-1?Q?qU6xFT+Q1XYtA8O9mA4BO8dIVGxF5l67SlKcKB84GKe7hn15SreUWh4YwG?=
 =?iso-8859-1?Q?iYPhxjSoZUcQ3Kj/PV/etfeA/0QCZHEC5r?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 454dbd00-1bb8-481f-75e8-08dc3e674985
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2024 05:27:31.5313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: naHMeT3LB0zMUI3SRf0PY7CZNk2awVCPZQ80f3ebzLfQgzrKwbOTGaUkmy8BXTjpMZ9qe/O94f1wHyC2bk+neQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8256
X-OriginatorOrg: intel.com
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



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, March 6, 2024 5:57 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>=
;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Subject: Re: [PATCH] drm/i915/dp: Enable AUX based backlight for HDR
>=20
> On Wed, Mar 06, 2024 at 02:29:15PM +0530, Suraj Kandpal wrote:
> > As of now whenerver HDR is switched on we use the PWM to change the
> > backlight as opposed to AUX based backlight changes in terms of nits.
> > This patch writes to the appropriate DPCD registers to enable aux
> > based backlight using values in nits.
> >
> > --v2
> > -Fix max_cll and max_fall assignment [Jani] -Fix the size sent in
> > drm_dpcd_write [Jani]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_aux_backlight.c | 30
> > ++++++++++++++-----
> >  1 file changed, 22 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index 4f58efdc688a..1b6f14dacf3b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -40,11 +40,6 @@
> >  #include "intel_dp.h"
> >  #include "intel_dp_aux_backlight.h"
> >
> > -/* TODO:
> > - * Implement HDR, right now we just implement the bare minimum to
> > bring us back into SDR mode so we
> > - * can make people's backlights work in the mean time
> > - */
> > -
> >  /*
> >   * DP AUX registers for Intel's proprietary HDR backlight interface. W=
e define
> >   * them here since we'll likely be the only driver to ever use these.
> > @@ -221,7 +216,7 @@ intel_dp_aux_hdr_set_backlight(const struct
> drm_connector_state *conn_state, u32
> >  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> >  	struct intel_panel *panel =3D &connector->panel;
> >
> > -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> > +	if (panel->backlight.edp.intel.sdr_uses_aux ||
> > +conn_state->hdr_output_metadata) {
> >  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
> >  	} else {
> >  		const u32 pwm_level =3D
> intel_backlight_level_to_pwm(connector,
> > level); @@ -251,8 +246,15 @@ intel_dp_aux_hdr_enable_backlight(const
> struct intel_crtc_state *crtc_state,
> >  	}
> >
> >  	ctrl =3D old_ctrl;
> > -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> > +	if (panel->backlight.edp.intel.sdr_uses_aux ||
> > +conn_state->hdr_output_metadata) {
> >  		ctrl |=3D INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> > +
> > +		if (conn_state->hdr_output_metadata) {
> > +			ctrl |=3D
> INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
> > +			ctrl |=3D
> INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
> > +			ctrl |=3D
> INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
> > +		}
>=20
> Wasn't bunch of this stuff supposed to be only used with older hw, and mo=
re
> recent panels were supposed to pick this up more or less automagically fr=
om
> the HDR metadata?
>=20
> I seem to also recall that there are a bunch of capability bits we should
> probably be checking somewhere...
>=20

Hi Ville,
Thanks for the review
You are correct I had a look into it, content luminance will will fill from=
 the static metadata from ICL onwards will get that corrected=20
As for capability check that was already being done in the function intel_d=
p_aux_supports_hdr_backlight()
I soon send a revision with the fixes.

Regards,
Suraj Kandpal
> > +
> >  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
> >  	} else {
> >  		u32 pwm_level =3D intel_backlight_level_to_pwm(connector,
> level); @@
> > -292,9 +294,11 @@ intel_dp_aux_hdr_setup_backlight(struct
> > intel_connector *connector, enum pipe pi  {
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> >  	struct intel_panel *panel =3D &connector->panel;
> > +	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder);
> >  	struct drm_luminance_range_info *luminance_range =3D
> >  		&connector->base.display_info.luminance_range;
> >  	int ret;
> > +	u8 buf[4];
> >
> >  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDR backlight is
> controlled through %s\n",
> >  		    connector->base.base.id, connector->base.name, @@ -
> 318,11
> > +322,21 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector
> *connector, enum pipe pi
> >  		panel->backlight.min =3D 0;
> >  	}
> >
> > +	buf[0] =3D connector->base.hdr_sink_metadata.hdmi_type1.max_cll &
> 0xFF;
> > +	buf[1] =3D (connector->base.hdr_sink_metadata.hdmi_type1.max_cll &
> 0xFF00) >> 8;
> > +	buf[2] =3D connector->base.hdr_sink_metadata.hdmi_type1.max_fall &
> 0xFF;
> > +	buf[3] =3D (connector->base.hdr_sink_metadata.hdmi_type1.max_fall
> &
> > +0xFF00) >> 8;
> > +
> > +	ret =3D drm_dp_dpcd_write(&intel_dp->aux,
> INTEL_EDP_HDR_CONTENT_LUMINANCE, buf,
> > +				sizeof(buf));
> > +	if (ret < 0)
> > +		drm_dbg_kms(&i915->drm,
> > +			    "Not able to write content luminence to DPCD
> register
> > +err:-%d\n", ret);
> > +
> >  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR
> interface for backlight control (range %d..%d)\n",
> >  		    connector->base.base.id, connector->base.name,
> >  		    panel->backlight.min, panel->backlight.max);
> >
> > -
> >  	panel->backlight.level =3D intel_dp_aux_hdr_get_backlight(connector,
> pipe);
> >  	panel->backlight.enabled =3D panel->backlight.level !=3D 0;
> >
> > --
> > 2.43.2
>=20
> --
> Ville Syrj=E4l=E4
> Intel
