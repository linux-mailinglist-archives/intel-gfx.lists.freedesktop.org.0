Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A31E854B34
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 15:17:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DBF110E271;
	Wed, 14 Feb 2024 14:17:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QUg93539";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BAAA10E271
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 14:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707920226; x=1739456226;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PjTcWAsxAg+eGaZw7uQudqhbeGnHmpYa+W6fxHmLEWc=;
 b=QUg93539WDnjvs8Kp8jqh1o3o8j4wx7+QNwlzxYkHuqm2K136qsv2HVJ
 OUUkSYi5D+2CX5xKg7/tbZzsMF7Cw+awI1pGP5h/ul+YRSX3NjsrZRyoc
 zbU1NvozAzr4OQIxudPdLqxn9QvSw9ZTVnS5ms9kNaXllBMv950UTJkYd
 Ch5TlM2av4v5WVMGHRi5fZjH48QP/4H1iuYkJhIfuIFDFpBsSufnZNRoi
 o1h28CdWBfVliNIsZMoSsu07MudRSVrnhV1+bnAujOZRwWRO/r6PhDX4m
 3h3vggin1GHi1ofwboT8LD67RL5utX8yTk+gOWhTi6DHSjiI+cgJlgCKY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="4929883"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="4929883"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 06:17:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3353198"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 06:17:06 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 06:17:05 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 06:17:05 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 06:17:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=adZyLzIvu20eusO5g93azbTK0yc2lPHlJk3WgkU6iTKNc7hIR1PHh63TE1AHE4DWTCnmE7QAP54bQJyoMdLV7chDpvd0wEXiCvlQwz0tyGj06lk4DzlDmXKlA4Hv1dh2i8R5cCFpPE8Miikme+wdtFS5j4Ff38kmGzQNk9nlWpIC/goyqcal4i+/gpjXwnc7FsHINl8rt5dirPB0bKsai3lwG95wYtH+rc0ukJk0gtXyHQPvtMCNLJkB0t2IpECIYzQnbHuEBhh9l6zfldyf1eyM5aC/vOoTN4ISURSqT0ySAsqRxnq83scmHjuoIX1KiaXdjEqSI5mudf7cGBcEXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=POrV/bTAidpJSCzKwY6Me72OFAoM0YaE01LHAb6c8bw=;
 b=PGRRTe0tid3JnK3lDOXQh9hDT5ipBBRysogdjFUqwaUaTrKswiaegJjZJyM2dDNzJWaAhleASkeJIGIOS5Lgh2x0dVzIebJLPecyzPNO2TK+6xDpYPhzI2J9gWtbbbmXBwbi9sXfbnKrJ0+zgmJF9tamlrMkfM3TS5Jcf6Krce+qVrVlkCCNifGQ3ZOV/RLD0agXmstM35wuXhCuutEhvy0ImZJnPyX/3rKlfQ0U/5SK9UnQ5bOnDwJ1tCt9ONiPq1HKj5qisMA6eLVyr5PwW8qyqHCaiCZPJhiDz1KoHu4UJWu0ky7749aKQeryG5Hz+OxQd/gnLncnNWvRVwKnWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS0PR11MB8205.namprd11.prod.outlook.com (2603:10b6:8:162::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Wed, 14 Feb
 2024 14:17:01 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7270.036; Wed, 14 Feb 2024
 14:17:01 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [RFC 4/4] drm/i915/display/dp: On LT failure retry LT
Thread-Topic: [RFC 4/4] drm/i915/display/dp: On LT failure retry LT
Thread-Index: AQHaWOtsMN1zvveYmUyeE7uDkTOiqrEIn0sAgAC4N9CAAGkwgIAAK34g
Date: Wed, 14 Feb 2024 14:17:01 +0000
Message-ID: <IA0PR11MB7307E0ABFCF8EFCDB8074239BA4E2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-5-arun.r.murthy@intel.com> <87v86s6xjr.fsf@intel.com>
 <IA0PR11MB730783C40D327B26EEEA8EC7BA4E2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87il2r705u.fsf@intel.com>
In-Reply-To: <87il2r705u.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DS0PR11MB8205:EE_
x-ms-office365-filtering-correlation-id: 780dbd05-73c3-4ca4-75ad-08dc2d679cb0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RD3NhNfrqSQjGorZ+Yt85UZIel5g1zLLCbzyAfFJXHK8GTaqnvpFg88u7YzB7iZp5hpNLYzhQ6756+OdlcSRGxZ43v5/1GnnWn01cToWNJf1r7tNEGAYVyv9u4OjgO99MzGadX/1xEfttBgWaRrBjxXN665bu4/BHZgk7q1zw9WAS7Fz8qXFXZnzzEwfjGnY1mVbHlI0nas4/1p2oLS6rljoY2rW7wGFWcF3VlDdhmVqG9sVhLfl0vhDBFBfCbnP33t5jsxHs5yUrxLpbYkKUjH7eFOxgP7M33kdhXL/clw1HCoVefHSBzatv65yNoyAn4Y3oD5zYQmCMgd7XZ27rI7SPxnKzrQep+mJ0FF8CLOwTY//p/1UWoShXLqKzap5q7Qyz/b3trXlca7WlaH0xUiOUA+mbYa73ZMSN4lXrFfx31la/wBcvjuK1xguDPwT9G8wb0ZQS9k1JlNdJU119OYAbLW/qTDZXS7jlARrNS+GFyAiBFKMERRRt/6zXgbr2NbR6Z7agE2wwmbGSt+JfxjhOxT81U0cb6zCbws8L4q9Z6GEnMG6Fk/v5fvEDWpKvxEO3DC9QrfJzqLDzvkY1uqjMRlvcXjbl+lMCh8MZoib8/p0R08qaTsdetJ1PVQ4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(396003)(366004)(136003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(33656002)(9686003)(38070700009)(83380400001)(41300700001)(107886003)(76116006)(53546011)(66946007)(66556008)(7696005)(8676002)(64756008)(8936002)(66476007)(4326008)(5660300002)(66446008)(71200400001)(110136005)(54906003)(316002)(6506007)(38100700002)(86362001)(82960400001)(478600001)(122000001)(52536014)(55016003)(2906002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Jm2zryjMBtMEfnfK31YkfgjL+w2aXgQ84Jk7XN0w+oNeH+yOedk0GopWMEl1?=
 =?us-ascii?Q?+6Iot7HrJC4j6RvcaaXxCsizkFyYlKWjvc4LOchkGRoLnHLukAPnlH3mTdlH?=
 =?us-ascii?Q?EYH7PLQA4bcHwjsUp/EGiF7FM/XXNAg2+vxEhgoZ9sv0q7CnOLrLq6boT2nQ?=
 =?us-ascii?Q?czUu8Ai3IQUUUlMHuhiIE2xPk+N3UEFsqd2OCPzVEFS7v6aAA5uLh6zqACw2?=
 =?us-ascii?Q?MrJdZi8O+z7mn5oYWb3bl32+mG+6WL/9ZPW1dnYEZXl/zc+nxZTgpxP2tXrv?=
 =?us-ascii?Q?0vAIR3hrLLHiIE0v4Zz2s4sMNUqXFeY+WKvGxdZCYo8oR45/LJzUB5rJrbOL?=
 =?us-ascii?Q?BEtaGedp4aWNL/DradG6XgtzRT1sLDNBGLaIUB8z2qqFNjCGg8KJCJAoh99N?=
 =?us-ascii?Q?t0F++S/4aua8M7tE0fzpHhTLt7+AUceeCEY6J+SgJ/9fi00qJ2ZUIM6tuHrj?=
 =?us-ascii?Q?lcHrdzqCl9N4yOmXhm22m5LtggNbcUoiUX/119VGQcOirI68+aZfl6QmKn2u?=
 =?us-ascii?Q?jfcPZx6NKZqx+BiGKlRcuOXmF0Ov7L+YpUhl3e+LSbLmDM+Fu3JqQUhJXzly?=
 =?us-ascii?Q?3JH13lhE9pFZmxVmjMyYgU67JIYhvYfb86dLCJp83dzLYXfmMn+yfuAyhTi0?=
 =?us-ascii?Q?JSq2IGaa7MtqBvt1qL47dzRtIuxUWzPWpLJSmONJ2jk+rrRzvpZ0vM4GYWWz?=
 =?us-ascii?Q?yR+6d2FCyliiTHSIGKHBnBh8dM8h+K0PAqQWzSzPKWsZxOktwZMluO09Pa96?=
 =?us-ascii?Q?e1pvFOKSeAPn+6me8lblJSbT2r4e/P0DGmLV5AnnFJXgH9MpxnjrREiAhjdU?=
 =?us-ascii?Q?6dZsvlzbntETVANRZIjJaso69Jx2wIRMVUb6NzdsSNWwDrgYIDHSxcuWe5tc?=
 =?us-ascii?Q?Y0kP0iSnBsRnn821RCYHeVduKktQojDpikZxCaRQ+rsiTE1DCDuLsV0PuZA9?=
 =?us-ascii?Q?bQRcHDbWlc7Axg/sc3GDaThjNuXBdQIPWyfF50oqQL4BOkwSymf73PSy7CK5?=
 =?us-ascii?Q?N1fCxdCVcb98o1Ei8/IW0ByMEyTOjNLdfxBYy+hjhpF+HGMiZh0TOszcqfQC?=
 =?us-ascii?Q?vhh8gG6nMtUumujWI52RPdWw0KEqh8UfGwLa8YUiIY7lDjTRoFjijonQb0VF?=
 =?us-ascii?Q?Ky1r+uQ/xdtZvrSZpR1K/HjVm6TMGx+HjUR0+Bt28Fu5+rHwSzLG4KaxYUPl?=
 =?us-ascii?Q?tG3bAph37urWp5O0BmQo3tT9m1mm8Xc+CDsDQhbA5fKS5duIystCI2uuMIhu?=
 =?us-ascii?Q?OjrSAImOqW/WjxZzU+z3bWhW2FSY+KR3neKVJBbSJiymCIaVaw0Uhk/EBMBY?=
 =?us-ascii?Q?oDJHdMrQ3PwpHra38QYJrNFwmWthRNnzpJngoYB7qsJcK/vGqJpzq3MBFbti?=
 =?us-ascii?Q?IQ01ycdU7qVtU4iqxaMKDHcq2VZjAXQBO+2FOMXMtbZ4b7VXK/j5pLLPNFwq?=
 =?us-ascii?Q?XV+Hy585ruPZi10BUvclT69XkryDoBSCoVXZyL8oVtjhmnvFqxiA5mu2IkdA?=
 =?us-ascii?Q?p4qFBF9uqIHHZaLAgZNRuVncXZ6khboLJX30CE9mf9JAwAwGnYIQIAMFE1fo?=
 =?us-ascii?Q?zL9UFmKiVUPJ1sDgnWEbqNFpEoaxTj8Fjx/WAB3pyeDEtW/IiAj8YT4LbClE?=
 =?us-ascii?Q?RHHApogT9QBg5BUTH1Ovhdrs2DV3JzcqGLl43rGFNSb3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 780dbd05-73c3-4ca4-75ad-08dc2d679cb0
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2024 14:17:01.3166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZT9zPFYi/VA5ih38r4tw3RQkDPOvbMRtKEDlZOzFbE2sgEs9WGa1zUVh4i0kNfisJBgrx5GNiUuwH2CapgIUqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8205
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, February 14, 2024 5:01 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Deak, Imre <imre.deak@intel.com>; Syrjala, Ville <ville.syrjala@intel=
.com>;
> Shankar, Uma <uma.shankar@intel.com>
> Subject: RE: [RFC 4/4] drm/i915/display/dp: On LT failure retry LT
>=20
> On Wed, 14 Feb 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Tuesday, February 13, 2024 11:45 PM
> >> To: Murthy, Arun R <arun.r.murthy@intel.com>;
> >> intel-gfx@lists.freedesktop.org
> >> Cc: Deak, Imre <imre.deak@intel.com>; Syrjala, Ville
> >> <ville.syrjala@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> >> Murthy, Arun R <arun.r.murthy@intel.com>
> >> Subject: Re: [RFC 4/4] drm/i915/display/dp: On LT failure retry LT
> >>
> >> On Tue, 06 Feb 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> >> > On link training failure retry link training with a lesser link
> >> > rate/lane count as specified in the DP spec.
> >> >
> >> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_ddi.c | 10 +++++++++-
> >> >  1 file changed, 9 insertions(+), 1 deletion(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> >> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> > index ed7620e7f763..29d785a4b904 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> > @@ -2502,6 +2502,7 @@ static void mtl_ddi_pre_enable_dp(struct
> >> intel_atomic_state *state,
> >> >                              crtc_state->port_clock,
> >> >                              crtc_state->lane_count);
> >> >
> >> > +retry:
> >> >     /*
> >> >      * We only configure what the register value will be here.  Actu=
al
> >> >      * enabling happens during link training farther down.
> >> > @@ -2586,7 +2587,14 @@ static void mtl_ddi_pre_enable_dp(struct
> >> intel_atomic_state *state,
> >> >      *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles=
_Sent)
> >> >      *     (timeout after 800 us)
> >> >      */
> >> > -   intel_dp_start_link_train(intel_dp, crtc_state);
> >> > +   if (!intel_dp_start_link_train(intel_dp, crtc_state)) {
> >> > +           /* Link Training failed, retain */
> >> > +           intel_dp->link_trained =3D false;
> >> > +           intel_dp_stop_link_train(intel_dp, crtc_state);
> >> > +           encoder->post_disable(state, encoder,
> >> > +                              crtc_state, conn_state);
> >> > +           goto retry;
> >> > +   }
> >>
> >> As said, the retry needs to go via userspace.
> >
> > If within the supported mode range then also do we need to send uevent =
to
> user and should it come via userspace?
> > The fallback mandates in DP2.1 spec does this fallback in a loop.
> >
> > The present fallback structure
> > Struct dp_fallback {
> >         U32 link rate;
> >         U8 lane_count;
> >         U32 resolution;
> > }
> >
> > In the same fallback code, the present mode will be verified to see if =
its less
> than or equal to the resolution in dp_fallback. If so proceed within the =
fallback
> loop else set the max link_rate/lane count values and sent uevent.
>=20
> I think I'll want *all* the link training fallbacks to go via userspace.
>=20
Wouldn't this be an optimized way of handling the fallback values.
Figure 3-52 of the DP2.1 spec also says to restart from the beginning of li=
nk training.

> Trying to sometimes do it in kernel is a premature optimization for a rar=
e case,
> and it just complicates matters. We'll need the path via uevent and users=
pace
> retry anyway, for when the mode doesn't fit, so use it always. Let's not =
add
> multiple ways to do things, everything around this is already quite compl=
icated.
>=20
When a mode change required due to limitation of the new fallback link rate=
, will use the existing path of sending uevent.
I felt taking would approach would an optimal way of handling fallback.
I am open to remove this optimization and take the uevent path always if *r=
equired*.

> And as said, the uevent does give userspace some inkling that something f=
ishy
> is going on, and could use that info to inform the user that a degraded
> experience may be expected. Again, adding a new stream to MST at a later =
time
> might not fit because of the reduced parameters, and it'll be surprising =
to the
> user if it used to work in the past (when full param link training succee=
ded).
This FRC is not targeting to have fallback of MST streams. Its targeting on=
ly the link training for a particular stream only.
As said above if no *optimization* is required and uevent path to be taken =
always for any fallback  value I am open to remove this optimization and im=
plement the way you suggest.

Thanks and Regards,
Arun R Murthy
-------------------

>=20
> BR,
> Jani.
>=20
> >
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> >>
> >> BR,
> >> Jani.
> >>
> >>
> >> >
> >> >     /* 6.n Set DP_TP_CTL link training to Normal */
> >> >     if (!is_trans_port_sync_mode(crtc_state))
> >>
> >> --
> >> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
