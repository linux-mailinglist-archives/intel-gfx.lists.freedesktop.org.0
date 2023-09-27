Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D02A87B09B5
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 18:13:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40B5410E563;
	Wed, 27 Sep 2023 16:13:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E28E10E564
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 16:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695831226; x=1727367226;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2YnEtKvMoTJOtfX6C4p1gqScqm6XLKbYH9jSMalJGvQ=;
 b=DAaM6bP/EecRcomYB2s4jiaTfVjhI6wTJGUzSKvcTMkZDpX9J14COu3f
 FHoVSQU2VuFVjpOB213pn27PQNV/aybUrRPlWQ9yhDW5nEON1bSpK8DUW
 PtpP7lHoVgC6y85HkviPTeczA6fG5lfQg8Bssiy7t1jcVYN7ztNopfpEm
 4ZAyUiKMcmEk9ZnGH25eC4pJ9volbB/C+uYxUx8GOs1oRlJ2LJmDtRO40
 /1FKFQJdRcKkeBrqR0zf5JxBYBprnRaLIqwi7LJfKs58ZQQLMa/6wXtAW
 3R2e7JLQw1ZDODe6k+U0/VJ6H/JpZ9VntAgD3nCxdhPD2frT4TKVoL2J7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="361245926"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="361245926"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 09:11:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="819479032"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="819479032"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2023 09:11:22 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 27 Sep 2023 09:11:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 27 Sep 2023 09:11:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 27 Sep 2023 09:11:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fezle0Tda8ZSaukeauKW4YLb+zel6wR8UwNS4ajOEPAWtj1OvFim61d4KyzCnEC2vmxaVzwCzjJlSV2BTPwSBHBmzMlPS3RPSA9vHv+CKjw5uFJWvEfiUPH9emE4vSZyRJDxLUUI01UJNZqQJJLoZuT1GN0vTSDtfIg1wJOtc2EOZhKjkHdm402L2U5k8EvoGCI3CwEYmbSFWKTu1AJumWRSUbUd1DWDNsGU08qHp5bBaCHm1ycJtDIGyCnHDUSgtOALiRcdaUtTqDY5p/oNtZdLIONg1HtGxpcRbzqTdtzf/M50ximM9Dt9ei49sbUbwrVzZr+aiCj0MjoekLHaQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pKHwLdiJT4F4Lul8jmEBkXn8W0oO+ZaX34reragSEME=;
 b=C3+dg1iRbLkF4PPTuJtMYdBju7eMmA4IPYikJHbPeP8PHFJt1jfY9u3evlrhkhFpatZhzT/Wj8roL1+aQE+eIYaV4wA8ws56PT9IvtwbCDJJWiewhdxtuvGLHD9YdRC3ak3whukWIJeaoZCllZPaEOaUtwYr8z2orFazdiwfFWcUVDuK37ftSJCsOaf0waCGUY4F1wONWkuw9vbYgMG+DP6GHSCqfO2HWEJuqcxOvShHwlSnbHBZnDWhUZd8VnuPq9IWjF5LerWP5dgD54YckpQ5I9nK11/BWb1uWBLTwva++d1GytBURS7IttZwFzPl4Xujvaxyahn0hH90LkD18A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB6676.namprd11.prod.outlook.com (2603:10b6:510:1ae::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.23; Wed, 27 Sep 2023 16:11:19 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6813.027; Wed, 27 Sep 2023
 16:11:19 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 17/19] drm/i915/dsb: Use DEwake to combat
 PkgC latency
Thread-Index: AQHZmKtgbn1lSrR5iEy//JSpHI3OGLAZpBnQgBXfkYCAAAVMQA==
Date: Wed, 27 Sep 2023 16:11:19 +0000
Message-ID: <DM4PR11MB636058D727E6B2F0AA76C607F4C2A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-18-ville.syrjala@linux.intel.com>
 <DM4PR11MB63602CC163A61DEE251714E2F4F0A@DM4PR11MB6360.namprd11.prod.outlook.com>
 <ZRRPi3iQeFdQrEIL@intel.com>
In-Reply-To: <ZRRPi3iQeFdQrEIL@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB6676:EE_
x-ms-office365-filtering-correlation-id: 9d617e55-79a7-435c-875a-08dbbf7462cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yH9vP8AsikI7IISi6iH1EkMrv01AZdiSwYWn32ARKx/VKScE2/r2BaWnjXuZ+9f/L7Nj91HnKTSGNtVPXOhdqnduFrxnAME5eI3Q6eT/e+CaaNtvmTHzJNF95KVPttlW+4Z61pBHHRWPZqChUsntFN4UP62aURQRgjZeH+LGKAnpnkPwHiaE6asqFBCQL0dDrNOrQ0vwtqq36dYzBh8s+tg1XY4s5faLWte8bwlg/gY8fR6esqPuBsbjVuS2+ivbTjTVwFEp0qei5kuismIfgUbU0goilNRxGAI0nvJI7GHxqdUeDruKM07ehNwTBB5tb0q7eudP0+B1Kdl1RJvPGRGjL2QXqoguE8h0kCtI9vW4uIPeFCkq2NzlElFgam+bKcLu8F7csFXndMhPE5boKFvo7BBCplK3dhYp7648VJro55YWoHBTdiSpRkCvuS+aWqUlzt1U0OGIrxQJAIYbfBsp+m4YobFOyAridLrtls9cd5oFpAi+xBC/3Rlc3XvQOzrNwSUpqrdYaY5Om5DIIfQCMQm2/jZH0b2/lHc+f246kRlTeeptYV+MfgExPvEaHxmQUnecxL3fyfFGVNPiGpZmx5V71Lpp4gSsb8pDN/zUyomvBe9Xi8EvrUE//U82
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(39860400002)(376002)(346002)(136003)(230922051799003)(451199024)(186009)(1800799009)(8936002)(86362001)(38070700005)(8676002)(52536014)(38100700002)(4326008)(5660300002)(66476007)(64756008)(66556008)(6916009)(76116006)(41300700001)(316002)(66446008)(2906002)(33656002)(66946007)(83380400001)(478600001)(55016003)(9686003)(122000001)(66574015)(82960400001)(26005)(7696005)(71200400001)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?xLFyFip09Lp5BevCMid4/eCdYugpnuKhmJB68hvcgjEB4PoDhcLRLrDNTy?=
 =?iso-8859-1?Q?7onggq8jHPLqEkryMON64Yx4+YuKZNKOE77NMEmZc9AAJut85jwbsWxATO?=
 =?iso-8859-1?Q?BA483eyiypz8NT/4VCWz3IffRlMGTuBUSq6XnvYWdH1um2EM08KH9xGn7m?=
 =?iso-8859-1?Q?OaQ6pDDCCt/y/Ro+/J38wLQUcaDn5fqPoNvTK4tAYTlDZooQyXiRzxShXG?=
 =?iso-8859-1?Q?7Zp4+shGKUe5yXO7tvjCg/QCJxUelcywDdfgRI4Wl8sKYv2sMDDfp+qx8p?=
 =?iso-8859-1?Q?zjXPC0U+zSHzMpfki3AETPqXGCOFfA+xuVanbVGh6YSqilEdqjNpk4wws1?=
 =?iso-8859-1?Q?hn/rWirAEnGk4ocE6nTzTGmDWAaweT+3S12cUWnxNEfEZqMcic4hgSUz9h?=
 =?iso-8859-1?Q?PJKWSnr9zFB3Ix1izcIqIMXCl+TAyCyHfs8EBfi/quyBD4/3JSDTPCG5s+?=
 =?iso-8859-1?Q?AZ03G7Ff0QqIQ7NTloD3V8sxPISaocgrwXnQ0LIyvil2Q6xN0sdPFVSyoA?=
 =?iso-8859-1?Q?AZNK0LDFAMOlXRYcWCt2ji+UQu6jbt1VW3g+Cjkb+cPdb8qFJkz4xhUCyj?=
 =?iso-8859-1?Q?SvKD3F9ul4Ma6+wGNx/RkO8EkIVqJ03qnwDwu6hL64nTWjFWc+Z8M8Dg7S?=
 =?iso-8859-1?Q?BkTYSTcJSIsi3q0gEoNbu554658hSocyvEjlVY62F7WkuBRjnYZBcTuo0P?=
 =?iso-8859-1?Q?uJ2i3SYtWpRMjXbPaf7GjodSmV95j/E7t5Z6WNJ1iB5R4HTH5jeZkYh80c?=
 =?iso-8859-1?Q?hAQCyy5ENQ/3t87fAhgxv8ljzb0GuTCT8TtVoLp9DHa3P60vrgC5oQF+hl?=
 =?iso-8859-1?Q?qvSbn7+GelAWE8IVxGepP2POUurx4rINMMew/LfoVvhGdnyWw1e5PjV3rg?=
 =?iso-8859-1?Q?0RdHxucrxraQTzTLOQIFRSr6hfQdL0lcOpml49PNfyT4swtQBOlKjUFzgE?=
 =?iso-8859-1?Q?EB1m+F3qNLaeQG+UeS3M/19u7B2EuxsG6Z0NPELY2Mr2dMZTLAQ1Fgt1uh?=
 =?iso-8859-1?Q?H731TceN4ibHYDx1V+OpFzcq4+kU90n4lOCaOdNZ8ZAwmCRS9xubqZrLX+?=
 =?iso-8859-1?Q?qkZEvfC4uZp5e8X1URjn01n1h7JX8VMnErBZhKtns7Ngve0brfDYmqW/nW?=
 =?iso-8859-1?Q?1KQVxdKHh0bTzCXztphJQsDqykWiOurMXD6b6ZBKlYxn3LcJvFYaVbM5PP?=
 =?iso-8859-1?Q?VbhlhB6Q77k1jvaNs6AgAhHQumXcQ4H3ACLZ0k17fGxeDZBm2KZDZeFidy?=
 =?iso-8859-1?Q?BatMfViJDyz/GgyTXoNjB9F8kTODoFCFXM0mqhRR8qU8zxI5QPl2ZI6vsd?=
 =?iso-8859-1?Q?dD8V+L8VhGARgyTZVWt75/Ad1AcY0X+ZrXG6Ar55stqctnTZTcZ60zzI9+?=
 =?iso-8859-1?Q?yMwMqGTROqeRn+0s7yaiiug8UbHatOjSs1aGB1ubbyiqs8DHKbWTKehNJ4?=
 =?iso-8859-1?Q?9eWt5C3NIuudkQN6E+XXJkD898Q6NTZo8AUF3lK/TK+WtELVM49OBCHyIQ?=
 =?iso-8859-1?Q?AP4GQUYqMDtSnlV0CKwEdLja7XRrapwjML7ds4dE85Y/0R6e73Dcb+mn75?=
 =?iso-8859-1?Q?nNu+IRLsbTU5Uy/CLaJGD2gerLULCPyQk/vOBG6UJ04/1hkfwE+95WQ3g5?=
 =?iso-8859-1?Q?HUFcQjKLk5TWIfjUSm97C3qReRKEI02UUE?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d617e55-79a7-435c-875a-08dbbf7462cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2023 16:11:19.7590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QYGH3mC2JsC5JwJM5C5EI/AbYk5q2DamCtM4czILMMgREcEIhoKMi1mv8i7E+wEO2nYlVUFKc/c83n4406YkcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6676
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 17/19] drm/i915/dsb: Use DEwake to combat
 PkgC latency
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, September 27, 2023 9:22 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v2 17/19] drm/i915/dsb: Use DEwake to com=
bat
> PkgC latency
>=20
> On Wed, Sep 13, 2023 at 06:08:42PM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: Wednesday, June 7, 2023 12:45 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH v2 17/19] drm/i915/dsb: Use DEwake to
> > > combat PkgC latency
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > Normally we could be in a deep PkgC state all the way up to the
> > > point when DSB starts its execution at the transcoders undelayed
> > > vblank. The DSB will then have to wait for the hardware to wake up
> > > before it can execute anything. This will waste a huge chunk of the
> > > vblank time just waiting, and risks the DSB execution spilling into
> > > the vertical active period. That will be very bad, especially when
> > > programming the LUTs as the anti-collision logic will cause DSB to co=
rrupt LUT
> writes during vertical active.
> > >
> > > To avoid these problems we can instruct the DSB to pre-wake the
> > > display engined on a specific scanline so that everything will be
> > > 100% ready to go when we hit the transcoder's undelayed vblank.
> > >
> > > One annoyance is that the scanline is specified as just that, a
> > > single scanline. So if we happen to start the DSB execution after
> > > passing said scanline no DEwake will happen and we may drop back
> > > into some PkgC state before reaching the transcoder's undelayed
> > > vblank. To prevent that we'll use the "force DEwake" bit to manually
> > > force the display engined to stay awake. We'll then have to clear
> > > the
> >
> > Nit: Typo in engine
> >
> > > force bit again after the DSB is done (the force bit remains
> > > effective even when the DSB is otherwise disabled).
> >
> > Approach looks good, this will help hardware be ready and maximize the
> > chance of update within the vblank.
> >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_color.c |  2 +-
> > >  drivers/gpu/drm/i915/display/intel_dsb.c   | 91 +++++++++++++++++++-=
--
> > >  drivers/gpu/drm/i915/display/intel_dsb.h   |  3 +-
> > >  3 files changed, 82 insertions(+), 14 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > > b/drivers/gpu/drm/i915/display/intel_color.c
> > > index b3dd4013d058..c5a9ea53a718 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > > @@ -1824,7 +1824,7 @@ void intel_color_prepare_commit(struct
> > > intel_crtc_state *crtc_state)
> > >  	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
> > >  		return;
> > >
> > > -	crtc_state->dsb =3D intel_dsb_prepare(crtc, 1024);
> > > +	crtc_state->dsb =3D intel_dsb_prepare(crtc_state, 1024);
> > >  	if (!crtc_state->dsb)
> > >  		return;
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > index 73d609507f24..3e32aa49b8eb 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > @@ -7,11 +7,16 @@
> > >  #include "gem/i915_gem_internal.h"
> > >
> > >  #include "i915_drv.h"
> > > +#include "i915_irq.h"
> > >  #include "i915_reg.h"
> > > +#include "intel_crtc.h"
> > >  #include "intel_de.h"
> > >  #include "intel_display_types.h"
> > >  #include "intel_dsb.h"
> > >  #include "intel_dsb_regs.h"
> > > +#include "intel_vblank.h"
> > > +#include "intel_vrr.h"
> > > +#include "skl_watermark.h"
> > >
> > >  struct i915_vma;
> > >
> > > @@ -47,6 +52,8 @@ struct intel_dsb {
> > >  	 * register.
> > >  	 */
> > >  	unsigned int ins_start_offset;
> > > +
> > > +	int dewake_scanline;
> > >  };
> > >
> > >  /**
> > > @@ -297,17 +304,40 @@ static void intel_dsb_align_tail(struct
> > > intel_dsb *dsb)
> > >
> > >  void intel_dsb_finish(struct intel_dsb *dsb)  {
> > > +	struct intel_crtc *crtc =3D dsb->crtc;
> > > +
> > > +	/*
> > > +	 * DSB_FORCE_DEWAKE remains active even after DSB is
> > > +	 * disabled, so make sure to clear it (if set during
> > > +	 * intel_dsb_commit()).
> > > +	 */
> > > +	intel_dsb_reg_write_masked(dsb, DSB_PMCTRL_2(crtc->pipe, dsb->id),
> > > +				   DSB_FORCE_DEWAKE, 0);
> >
> > We should also keep DSB_BLOCK_DEWAKE_EXTENSION set to 1, the default .
>=20
> This is a masked write that doesn't touch that bit.

Oh ok, yeah got it.

> >
> > With this fixed or clarified, this is:
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> >
> > >  	intel_dsb_align_tail(dsb);
> > >  }
> > >
> > > -/**
> > > - * intel_dsb_commit() - Trigger workload execution of DSB.
> > > - * @dsb: DSB context
> > > - * @wait_for_vblank: wait for vblank before executing
> > > - *
> > > - * This function is used to do actual write to hardware using DSB.
> > > - */
> > > -void intel_dsb_commit(struct intel_dsb *dsb, bool wait_for_vblank)
> > > +static int intel_dsb_dewake_scanline(const struct intel_crtc_state
> > > +*crtc_state) {
> > > +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->de=
v);
> > > +	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> > > >hw.adjusted_mode;
> > > +	unsigned int latency =3D skl_watermark_max_latency(i915);
> > > +	int vblank_start;
> > > +
> > > +	if (crtc_state->vrr.enable) {
> > > +		vblank_start =3D intel_vrr_vmin_vblank_start(crtc_state);
> > > +	} else {
> > > +		vblank_start =3D adjusted_mode->crtc_vblank_start;
> > > +
> > > +		if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
> > > +			vblank_start =3D DIV_ROUND_UP(vblank_start, 2);
> > > +	}
> > > +
> > > +	return max(0, vblank_start -
> > > +intel_usecs_to_scanlines(adjusted_mode,
> > > +latency)); }
> > > +
> > > +static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
> > > +			      unsigned int dewake_scanline)
> > >  {
> > >  	struct intel_crtc *crtc =3D dsb->crtc;
> > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev); @@ -
> > > 325,14 +355,49 @@ void intel_dsb_commit(struct intel_dsb *dsb, bool
> > > wait_for_vblank)
> > >  	}
> > >
> > >  	intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
> > > -			  (wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0) |
> > > -			  DSB_ENABLE);
> > > +			  ctrl | DSB_ENABLE);
> > > +
> > >  	intel_de_write_fw(dev_priv, DSB_HEAD(pipe, dsb->id),
> > >  			  i915_ggtt_offset(dsb->vma));
> > > +
> > > +	if (dewake_scanline >=3D 0) {
> > > +		int diff, hw_dewake_scanline;
> > > +
> > > +		hw_dewake_scanline =3D intel_crtc_scanline_to_hw(crtc,
> > > +dewake_scanline);
> > > +
> > > +		intel_de_write_fw(dev_priv, DSB_PMCTRL(pipe, dsb->id),
> > > +				  DSB_ENABLE_DEWAKE |
> > > +
> > > DSB_SCANLINE_FOR_DEWAKE(hw_dewake_scanline));
> > > +
> > > +		/*
> > > +		 * Force DEwake immediately if we're already past
> > > +		 * or close to racing past the target scanline.
> > > +		 */
> > > +		diff =3D dewake_scanline - intel_get_crtc_scanline(crtc);
> > > +		intel_de_write_fw(dev_priv, DSB_PMCTRL_2(pipe, dsb->id),
> > > +				  (diff >=3D 0 && diff < 5 ? DSB_FORCE_DEWAKE :
> > > 0) |
> > > +				  DSB_BLOCK_DEWAKE_EXTENSION);
> > > +	}
> > > +
> > >  	intel_de_write_fw(dev_priv, DSB_TAIL(pipe, dsb->id),
> > >  			  i915_ggtt_offset(dsb->vma) + tail);  }
> > >
> > > +/**
> > > + * intel_dsb_commit() - Trigger workload execution of DSB.
> > > + * @dsb: DSB context
> > > + * @wait_for_vblank: wait for vblank before executing
> > > + *
> > > + * This function is used to do actual write to hardware using DSB.
> > > + */
> > > +void intel_dsb_commit(struct intel_dsb *dsb,
> > > +		      bool wait_for_vblank)
> > > +{
> > > +	_intel_dsb_commit(dsb,
> > > +			  wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0,
> > > +			  wait_for_vblank ? dsb->dewake_scanline : -1); }
> > > +
> > >  void intel_dsb_wait(struct intel_dsb *dsb)  {
> > >  	struct intel_crtc *crtc =3D dsb->crtc; @@ -363,7 +428,7 @@ void
> > > intel_dsb_wait(struct intel_dsb *dsb)
> > >
> > >  /**
> > >   * intel_dsb_prepare() - Allocate, pin and map the DSB command buffe=
r.
> > > - * @crtc: the CRTC
> > > + * @crtc_state: the CRTC state
> > >   * @max_cmds: number of commands we need to fit into command buffer
> > >   *
> > >   * This function prepare the command buffer which is used to store
> > > dsb @@ -
> > > 372,9 +437,10 @@ void intel_dsb_wait(struct intel_dsb *dsb)
> > >   * Returns:
> > >   * DSB context, NULL on failure
> > >   */
> > > -struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
> > > +struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state
> > > +*crtc_state,
> > >  				    unsigned int max_cmds)
> > >  {
> > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > >  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > >  	struct drm_i915_gem_object *obj;
> > >  	intel_wakeref_t wakeref;
> > > @@ -420,6 +486,7 @@ struct intel_dsb *intel_dsb_prepare(struct
> > > intel_crtc *crtc,
> > >  	dsb->size =3D size / 4; /* in dwords */
> > >  	dsb->free_pos =3D 0;
> > >  	dsb->ins_start_offset =3D 0;
> > > +	dsb->dewake_scanline =3D intel_dsb_dewake_scanline(crtc_state);
> > >
> > >  	return dsb;
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h
> > > b/drivers/gpu/drm/i915/display/intel_dsb.h
> > > index 54e9e1dc31ee..16d80f434356 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> > > @@ -11,9 +11,10 @@
> > >  #include "i915_reg_defs.h"
> > >
> > >  struct intel_crtc;
> > > +struct intel_crtc_state;
> > >  struct intel_dsb;
> > >
> > > -struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
> > > +struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state
> > > +*crtc_state,
> > >  				    unsigned int max_cmds);
> > >  void intel_dsb_finish(struct intel_dsb *dsb);  void
> > > intel_dsb_cleanup(struct intel_dsb *dsb);
> > > --
> > > 2.39.3
> >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
