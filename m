Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96ABA3FEE59
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 15:07:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC9216E52A;
	Thu,  2 Sep 2021 13:07:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA18C6E52A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 13:07:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="304673065"
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="304673065"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 06:07:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="602377299"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga001.fm.intel.com with ESMTP; 02 Sep 2021 06:07:30 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 06:07:30 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 06:07:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 2 Sep 2021 06:07:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 2 Sep 2021 06:07:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XCoe3lgaVcp/uai2gxZaXw/VdRQ+SPnoWiOht71oqQfS29L3pxdAznlJVnKxXQKcNoDmQS9rjtbHAkWLynEsAKjsPwSlAGHzP1EraYVtdoi6Nl5ndsbvLYUcTeOezyu4iSVEmkDRBGE6v6BWNjTbiO6fq07wYtwUzTBHFJIj2nZuCoMmvCdRPDFt1yb2jJ6+mSUQRj1iwLiWKraxDAu8bno2iSfZLTYUjXp+i2qmk6nqiVcJTFLBJ7lzQ+zinXB90ihvDtky+1NB7mcg5i68VMd/l4L5gnqY9rIfmJG/NkGUN9Uj1C+wyXLNovjzliM4cuewfdD/Y4YuQxc5qbWsrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m+Z9ASJlBRiwAJ6o35ICtoAjqQFXY7xNttkvT/jGs1E=;
 b=jdcYGTvuzJ3ppH1UU2LdgjHgKsy//NvnyLmxBLBNuvomJwJu+NYjNLKJPa2cvKarBlQLLuIW/5gh3k6e8iH8VrYxWPFtX8G6QtDslLspN7KMNviE4z7Q9evmhE7qPMcKOSQ3/r9uqKac4h86LIVk7Tu+DXOTWRQLMMfPFSLdNf72Cxrdv04Jj6r9LpcqpaTEkmfsi2ezty44C6ON9v8H7CO9mKIrdoxEChO8PfmOOFrZSj4mwnm98Kh/esiTRjZobdoFHavw4u7mcufW2KIDoBcmwENic3/gRRgDkJ9Uwxp+QDxhIF4RSc6PNmLhrdqK2bnINtfmg0mpSzq7Cnu3kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m+Z9ASJlBRiwAJ6o35ICtoAjqQFXY7xNttkvT/jGs1E=;
 b=AkXMw6HIE3/RhMPhXmkv0XVGd5Eoo4FVXULoz45jApyKdtXXz0BkS4ZAAhFRcb9nip31pvUgqCIlzijtUnnb+0W9gOut13g/+v77dfY3g2BompL9OFkRVywsaRs3BKcRKp4koJpD0OPXhj34DxCqBWvIr80i+AEQL7LH+hnPGO4=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA2PR11MB5164.namprd11.prod.outlook.com (2603:10b6:806:f9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.18; Thu, 2 Sep
 2021 13:07:28 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::2165:791:8cae:31f]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::2165:791:8cae:31f%7]) with mapi id 15.20.4478.021; Thu, 2 Sep 2021
 13:07:28 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>, "Pandey, Hariom"
 <hariom.pandey@intel.com>
Thread-Topic: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
 gating in HDR mode
Thread-Index: AQHXZ0sW59N9gqV+40m1IXOqKgMck6uPoZGAgAFkdeCAACAYAIAAAGkwgAABwLA=
Date: Thu, 2 Sep 2021 13:07:28 +0000
Message-ID: <SN6PR11MB34212E5091E6614477C07C00DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210622093424.886133-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YS+EuzTIv5YWfzIL@intel.com>
 <SN6PR11MB3421B0900C9A9770B19367F5DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
 <YTDKrJTd6VnV+08K@intel.com>
 <SN6PR11MB3421DB31729DE8DA0458D175DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB3421DB31729DE8DA0458D175DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a4155a1b-aa34-4ffb-6cc3-08d96e129d9d
x-ms-traffictypediagnostic: SA2PR11MB5164:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB5164A6108248A421FB2B09A4DFCE9@SA2PR11MB5164.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gyd065Yy3USlD3E2D0qxXhW5s/43IbPkooH/MxzSMdjpc+/anSzzfvT1J/mgrmWmiJSR6bFggpWaSAlB/0tlb9qzokENqkaO7T3egj3Cx7zQkH52r7/TvzLpZe3YZu+y74F2U72lJJitpnpsN2lP2xr5nJ375u5LeMDxxV/aiM74yTssaqdETrMlHERGh61t9Rjcz6L6dCtAROSdZR5Aj10MypzXkzq/Tm1uW8C68/1N5C7zo488qDvELQvgL3WZAEB6ip+Rp6tNxbAkeNIC1UdQXO0jhbbHC6C1twyfkXSGzVffVOBH8JM7IyOyn0TIty5MxbUQu3laS5o9pK2HLIs+HDQfdRA0tL9ndpLrQxBenvfgMEqIcXOa3zrZxLEs2sHHPlx5/9YPQtXt93fC/HUcNLKA8kIYx+cf6MeX+UDD0VVM/fYrX0ob34Uc818PgohdkBrqsCypLA81iQycFqYK5JKU3eVsghu38q1x7no42niPU5VFed+iuSnAS4/ge/w69F402/g72Yd/NLPfEifZ40IdpUbE++Dg5DqJF/lKt/qNmky1r4DF611Z4BYOEnS5sFZYONZqn5KnIcpL4gGB1uiA21J/9m4A68UkQwMIGKbZ6xM8TKnGFSl1hsybUc1MmDBIyTeXymviZhMQnJx8SqNeUsKgnBgrATG2n/FunOQd++ksjS0aWSfLzA3jWQsKxMpTMNjZOdHtBVnXzg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(346002)(39860400002)(376002)(396003)(4326008)(76116006)(55016002)(7696005)(186003)(8676002)(38100700002)(26005)(122000001)(478600001)(2940100002)(66946007)(64756008)(66476007)(71200400001)(54906003)(38070700005)(53546011)(8936002)(9686003)(66446008)(52536014)(316002)(33656002)(6916009)(86362001)(5660300002)(2906002)(6506007)(83380400001)(66574015)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?8EawG109sW3khGT6MhvxMy3CRQuG1N4+Qvi8B/l3xptRrCeLqkT/RqI7WT?=
 =?iso-8859-1?Q?31IYWn026oRHKbK8d5GJaC5xvUxlPKe551TkQcHRkVuaI5GlTiaHZb1RNe?=
 =?iso-8859-1?Q?OPjjT4R9RT6XlFYAzYd+IQAOrOExwtIt6OF70yzakfBioxWSAGiddPKIvF?=
 =?iso-8859-1?Q?0AlRCcG0ThfaLKJk2Oebyx21rMSbAjXEMlRsUQywV8KyJTedL9X8uLCjsh?=
 =?iso-8859-1?Q?qXrSTdURqgeW4sVhS/26a5E5u/9KowQ0bQANioQzq7XEe1jJJ4qkHUPPvZ?=
 =?iso-8859-1?Q?lEyTGpdikZIlNkR8aARV0JFMina3Q58C8CkdlFzGXBL25YqhlKCFWwKAKk?=
 =?iso-8859-1?Q?We6fnY+KPHQEKcLDg6anvtELpV69M7dNaK/0xR2KxKDb8pg7jCA3ky/t9o?=
 =?iso-8859-1?Q?Ssrf34vEl5Q15q5PjbvjRKXNQFMYM1CwRxbvcPgAsGERCQHONuM7fhoRKU?=
 =?iso-8859-1?Q?5ha3NxGQ3ezjrxoK1X//H8DHCvfNOXeR58DxOolzId+qYB4uhvzppdeaMI?=
 =?iso-8859-1?Q?7iFtNZN0iaYgywVO01MGQhsZyPVz8nqDWxqR4aJFKJ3dqpKCz9Q2SXdKjJ?=
 =?iso-8859-1?Q?hiRYBBYKkxl395Sa8kSvGiUf4V8OvrVtXIeKoY+Yf0lG8lcDeE4LI+aNuM?=
 =?iso-8859-1?Q?yDv0o58RyUHcrgaEbUnfOPNIkvSl+daC+N6MrnS0yqu9inIXCLlnfVNLO1?=
 =?iso-8859-1?Q?/eS9+6+2+4y8Dmc4ibCW+Vq3eihTQ2dJ8wVu6xCErSe0RYF38ZU/wenTMc?=
 =?iso-8859-1?Q?rUXGRy5JkGwLQMQDxhl7NmqUSyhnk7cTsWnDl1RkbZA0rUUw62/Y+zrYSP?=
 =?iso-8859-1?Q?R1Gg2MYN6I7WFmqq/T4AY3SJJDVwm2gNh0HCoOcwocMv10w0B2307Uem5e?=
 =?iso-8859-1?Q?HKS5GurmGNG/FocEBZiBYB2r4W9Czxuy7KJZBxQ8W+6Dp/3sG1qdwdgI/m?=
 =?iso-8859-1?Q?jkoK0mzL9tONoukGgd3saTnnFUoKZRIcRpQAZfrSwQndU6Z5ROA+uwUksm?=
 =?iso-8859-1?Q?IYoWPsYKsi+0ota+eB7ieeWaW142vJ1SJm6hPI17tzx2xT96fhMvcDAsJh?=
 =?iso-8859-1?Q?U2sSP1G8cyYUVcdHlR8sb30sPoxJGCLU8PcC1U5y9GjdWEPEI6EE4SoH/G?=
 =?iso-8859-1?Q?01OHlZeuQl+EaCOLPEeXffip9FzQyi98ngpk5SCQH2bQIEt3H2+Yv/brXs?=
 =?iso-8859-1?Q?yZwjNvsxpIvoGJy28oQ12+LBSD2zCmGRvxrQeRrpLC0XPFMATaYET5Ek1V?=
 =?iso-8859-1?Q?5jULasK/0sqilmg1jN8EDbSMIddYUPoJQynxIRDxAgRuPH8mG2oJYDIQzE?=
 =?iso-8859-1?Q?3MS6E5cspHJ8kA6L34IURXx70mVhMNKPHF4OrHHjXvurvMeAlcmf28gVEn?=
 =?iso-8859-1?Q?M/w6LtQIlq?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4155a1b-aa34-4ffb-6cc3-08d96e129d9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2021 13:07:28.1474 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hVczz3ruLkXrT9faWewOikDMQdg7+RSCxQILlbEBG0j28c6fhee6vBbGiD8TuepzHw6QZzQQF7kg2DOdy3J2164+j6f3SaDB8G+SdNh5VBDkFJLrU1H0RyjvBIwBNsZ1NQ8CZe8Ts63YAUWHMX7wdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5164
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
 gating in HDR mode
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

+ Hariom

> -----Original Message-----
> From: Surendrakumar Upadhyay, TejaskumarX
> Sent: 02 September 2021 18:34
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Souza, Jose <jose.souza@intel.com>
> Subject: RE: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
> gating in HDR mode
>=20
>=20
>=20
> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: 02 September 2021 18:29
> > To: Surendrakumar Upadhyay, TejaskumarX
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor
> > clock gating in HDR mode
> >
> > On Thu, Sep 02, 2021 at 11:07:06AM +0000, Surendrakumar Upadhyay,
> > TejaskumarX wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Sent: 01 September 2021 19:19
> > > > To: Surendrakumar Upadhyay, TejaskumarX
> > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org
> > > > Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor
> > > > clock gating in HDR mode
> > > >
> > > > On Tue, Jun 22, 2021 at 03:04:24PM +0530, Tejas Upadhyay wrote:
> > > > > Display underrun in HDR mode when cursor is enabled.
> > > > > RTL fix will be implemented CLKGATE_DIS_PSL_A bit 28-46520h.
> > > > > As per W/A 1604331009, Disable cursor clock gating in HDR mode.
> > > > >
> > > > > Bspec : 33451
> > > > >
> > > > > Changes since V3:
> > > > > 	- Disable WA when not in HDR mode or cursor plane not active - V=
ille
> > > > > 	- Extract required args from crtc_state - Ville
> > > > > 	- Create HDR mode API using bdw_set_pipemisc ref - Ville
> > > > > 	- Tested with HDR video as well full setmode, WA applies and
> > > > disables
> > > > > Changes since V2:
> > > > >         - Made it general gen11 WA
> > > > >         - Removed WA needed check
> > > > >         - Added cursor plane active check
> > > > >         - Once WA enable, software will not disable Changes since=
 V1:
> > > > >         - Modified way CLKGATE_DIS_PSL bit 28 was modified
> > > > >
> > > > > Cc: Souza Jose <jose.souza@intel.com>
> > > > > Signed-off-by: Tejas Upadhyay
> > > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_display.c | 27
> > ++++++++++++++++++++
> > > > >  drivers/gpu/drm/i915/i915_reg.h              |  5 ++++
> > > > >  2 files changed, 32 insertions(+)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > index 6be1b31af07b..e1ea03b918df 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > @@ -358,6 +358,13 @@ static void intel_update_czclk(struct
> > > > drm_i915_private *dev_priv)
> > > > >  		dev_priv->czclk_freq);
> > > > >  }
> > > > >
> > > > > +static bool
> > > > > +is_hdr_mode(const struct intel_crtc_state *crtc_state) {
> > > > > +	return (crtc_state->active_planes & ~(icl_hdr_plane_mask() |
> > > > > +		BIT(PLANE_CURSOR))) =3D=3D 0;
> > > > > +}
> > > >
> > > > Please use this in bdw_set_pipemisc() as well. This could be a
> > > > separate prep patch actually.
> > > >
> > > > > +
> > > > >  /* WA Display #0827: Gen9:all */  static void
> > > > > skl_wa_827(struct drm_i915_private *dev_priv, enum pipe pipe,
> > > > > bool
> > > > > enable) @@ -383,6 +390,23 @@ icl_wa_scalerclkgating(struct
> > > > drm_i915_private *dev_priv, enum pipe pipe,
> > > > >  		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe))
> > > > > & ~DPFR_GATING_DIS);  }
> > > > >
> > > > > +/* Wa_1604331009:icl,jsl,ehl */
> > > > > +	static void
> > > > > +icl_wa_cursorclkgating(const struct intel_crtc_state *crtc_state=
) {
> > > > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc=
);
> > > > > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > > > +
> > > > > +	if (is_hdr_mode(crtc_state) &&
> > > > > +	    crtc_state->active_planes & BIT(PLANE_CURSOR) &&
> > > > > +	    IS_GEN(dev_priv, 11))
> > > > > +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc-
> >pipe),
> > > > > +			     CURSOR_GATING_DIS,
> CURSOR_GATING_DIS);
> > > > > +	else
> > > > > +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc-
> >pipe),
> > > > > +			     CURSOR_GATING_DIS, 0);
> > > > > +}
> > > > > +
> > > > >  static bool
> > > > >  is_trans_port_sync_slave(const struct intel_crtc_state
> > > > > *crtc_state) { @@ -2939,6 +2963,9 @@ static void
> > > > > intel_pre_plane_update(struct intel_atomic_state *state,
> > > > >  	    needs_scalerclk_wa(new_crtc_state))
> > > > >  		icl_wa_scalerclkgating(dev_priv, pipe, true);
> > > > >
> > > > > +	/* Wa_1604331009:icl,jsl,ehl */
> > > > > +	icl_wa_cursorclkgating(new_crtc_state);
> > > >
> > > > This looks a bit wrong. We shouldn't turn the clock gating back on
> > > > until after HDR mode has been disabled.
> > > >
> > > > So please model this after skl_wa_827() and
> > > > icl_wa_scalerclkgating() so that
> > > > a) the ordering is correct, and b) the code between all three w/as
> > > > looks consistent.
> > >
> > > I did not get what you are suggesting here. Can you please put psudo?
> > > Currently as far as I see icl_wa_cursorclkgating is already modelled
> > > after
> > skl_wa_827() and icl_wa_scalerclkgating(). Are referring same Or
> > something else?
> >
> > It should look something like:
> >
> > intel_pre_plane_update()
> > {
> > 	if (!needs_cursorclk_wa(old_crtc_state) &&
> > 	    needs_cursorclk_wa(new_crtc_state))
> > 		icl_wa_cursorclkgating(..., true);
> > }
> >
> > intel_post_plane_update()
> > {
> > 	if (needs_cursorclk_wa(old_crtc_state) &&
> > 	    !needs_cursorclk_wa(new_crtc_state))
> > 		icl_wa_cursorclkgating(..., false);
> > }
> >
>=20
> Tejas : In the previous version it was done this way only. But after revi=
ew
> comments from Jose I had to change it. See "Changes since V2" section. Al=
so
> you can check in previous versions of patch.
>=20
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
