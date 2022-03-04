Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 341284CCCA3
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 05:40:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6964910E44A;
	Fri,  4 Mar 2022 04:40:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0905A10E44A
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 04:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646368822; x=1677904822;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2mUjratFnt6bEwV5hm8f2Ib4TfcvfR2vJztLjHGBKMw=;
 b=FEA4wKRuQG2XEzv4TXHH2/w4XcFWfPWHi2ryLRe+mKD//XpFworC4n7j
 pBIeGYSQsF1mab8BgUj7AYBFy5q4x2q1fh7U8+rw84kIFgiH7Di8zK7Od
 5bLKGh8fjUmPKvnxsH0+AxquUhcMPV7ltcZA9ssOehDDVGUComvkwcxWr
 1cDz3m1mDgQbWlGSQvAknOHx8YR1t07BivrqEbSZ92N9Dv5BuoLn9NApR
 xnCZEPswpi1uS74UpBHIhau88eK/o13EvgNVDl7w4Zcdum1JAbzj6Ree9
 yzKxkvaGCBAtc4ncMu5ZCtYfmjA0/KiefDiJDpBQnPQOTrNME+p1Bwwmg A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="340324258"
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="340324258"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 20:40:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="810232932"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 03 Mar 2022 20:40:21 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 3 Mar 2022 20:40:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 3 Mar 2022 20:40:21 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 3 Mar 2022 20:40:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PveShvThwnHXvAiv2F6K9PAooZ0FjHRxffjn+iX4xhYF2KgNYkvb6sH6shLdYpz0PGGZ05QSiaHXLaAZ8nSLdl9YVR1mCujz5C8ozA5iSuKv9ixor/v0RE9o88BhCE7ZeFfz5rXs6Brw/OWUmXpNPgZdHmQf+I22YFob/v1gezUqfDyRF0IV19lcY6pVxZZoRYXp6zBH8+fl1HUUMqOddakbPy8fT08p5L00Rz5mP8LsMRx2YKmpS8IkGcaWJWG+/X1orUDMBGoZHdiZ08WTJo52ClKgLqI9pHDM6i0tzj0HHTPsIkJKMZ2hYM8myMX+EkvdEB54rvIdzwXxI0FPjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9ALC9gizAIAdvciiLBm1Ppyy3qzRmQYIjBDrt07VbRI=;
 b=UUlj6WWLnYsMSyvdLL/BiHvKN+3vSeNMALvt52X1b7yPAbBi/pxf5gxCSXGqULtF6BDJ6Oq2YSyGpdcclIYtLtmv6xvrhLSO+snPwJm/UCCSGAYTaLbDWAWQGu+E9iSiYENeg7nqIY0aWHg36wl3PvgrI442Gpp7L9uN19swFOWCqLbt50R+usw9lBuVVNF5akm5QzIfo9M8dMqgQfAIK004rKOuQXsTfUcrhSbB3G/SSdT2HodhZbJdkOMRGAf2aIqKZUDOpajE8f3SQ2wJ8KgA4b2yq2605+MWy5UKwPrGkEdmW2Fn1KGU6IjUoyXl5XRny/1QqrVwuLtpEvb+zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5819.namprd11.prod.outlook.com (2603:10b6:510:13b::9)
 by CH2PR11MB4373.namprd11.prod.outlook.com (2603:10b6:610:3a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Fri, 4 Mar
 2022 04:40:18 +0000
Received: from PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::e435:95a9:4a0a:8e67]) by PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::e435:95a9:4a0a:8e67%7]) with mapi id 15.20.5038.014; Fri, 4 Mar 2022
 04:40:18 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH] drm/i915/adl-n: Add stepping info
Thread-Index: AQHYLvRRC/r3iwvV50ij9oh7OJeBS6yupYeAgAAAUmA=
Date: Fri, 4 Mar 2022 04:40:18 +0000
Message-ID: <PH7PR11MB58192205A2156A2E9C6C5407DF059@PH7PR11MB5819.namprd11.prod.outlook.com>
References: <20220303113252.212873-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YiGXz5h9Hv1xs9ia@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <YiGXz5h9Hv1xs9ia@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 510523fe-1cc5-4eae-aca6-08d9fd9915c7
x-ms-traffictypediagnostic: CH2PR11MB4373:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CH2PR11MB4373EF98045F7A0DAFC02470DF059@CH2PR11MB4373.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dUbLy4DTUWf5pbPpukl3mIGvhxsAfSDl5m8vgnRWWCAfp7NNuzaDIiu2na/Ye8wxAXjgWHt0IjfDFayIGz8o+u0+RUVNIhM3MoNcAQ9A1tu4QYuFx9UYihWPeYl+WAEFy4pRYdWy1MAz/kLQxfeg0RFSyTBkOFfnXQhKjRgI8eNFtdf3Nm3DfsTOLq4ScDfNk2PHlnxH0HR7OePhWUXXPmQOUuFxBWqlVjA5wLQieRopX+fut98r+jKp4D7pqb7z0eMYOb4NvBobTC1WOYPfiZToL40qsJhRnCIR4iF7pTakSjs9ZrlVKGKCYRy+9TLo5X/epLU1f6FbTr6Z998xTMOjcpc2RLWvfcrOA2CEfL8QQVcTS5sGopAdQLRkTqqN8AOsVYCaLdQJwLHAMSeMby82VXI0xAmfTK4Z5SV9NA6lskoU7sYSQHIcBtm3Kveo0yb9QpmpjkcmZn1CR0BMeVzTn9plf+kxo/DfvMt5aAosdXwwwzViKjNFQbzjBQzmrRoG6ihht4g53ijLNLW+bdAcu+V8wH0woDwe98BWmPnleYMvIkMn4wFMyOGWiytmeSyQNPrVSXLgpvWqRHH6NGTAQW/hwSDwN8GY0WfU0Vl1h7PByZQ4cvcl0ATIwnlcmSfGebOkuuTAmIZLlVJSPelZy4xcvs48/8eINLDXBXSi3XXhV05q5263by+6B+ImopD05Vx/G/0tb4eMkuDW9g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5819.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(86362001)(8936002)(52536014)(4326008)(6862004)(66446008)(64756008)(8676002)(66476007)(66946007)(66556008)(76116006)(71200400001)(2906002)(6506007)(508600001)(5660300002)(38070700005)(316002)(6636002)(38100700002)(82960400001)(53546011)(7696005)(122000001)(83380400001)(9686003)(26005)(33656002)(186003)(55016003)(40140700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+8Btn+Zm5LQNfH8fWhx4WJwfYmtwLwTRYwKvrJPrF+XdjWrp33zNd7XDWMTn?=
 =?us-ascii?Q?z/QnC031N/WYkk4iaVzHZQ0+59eFBR39iGpo1TRBuPhXfNknVtz1+eltEMCo?=
 =?us-ascii?Q?7Hz8sEJ6nYpGGr0YvWJTFX1IVNVVBNkcDvueqbMr/NiS9X3AkRkwGFHxOH/r?=
 =?us-ascii?Q?gjLDMt4C5zQn/MTAV5HP+6BuIsy1OOTJRZKiKLWA3TlmvN0IAvAY6mN38Y99?=
 =?us-ascii?Q?4mT5PKhZz23CdL2OO66E8i4NicpG7JEbwZI87r/QKkm0Dm4C6viVLgFvXeWE?=
 =?us-ascii?Q?YoVx7KC2/C+ANUylZWjTHWJwnXKuVas/70fynSkHNDTh41rIoEDhYS+cb1oA?=
 =?us-ascii?Q?1yhkoKy16APpuiqkaNhtv4LMirCooCu54XT0X9jZCi/LwJCHUrVQ+9F84t4z?=
 =?us-ascii?Q?ssSVJIkbGExJ4jf0l88AMevtsfXbbht+aGxA4S8M9gRFvCG+qD8Z9oalqPFH?=
 =?us-ascii?Q?E2SI0r8A00ANk7q99WssS8bAdXVh7pEvnpxbPuZow95/8OR78mArmwnjHYBW?=
 =?us-ascii?Q?/y/CMAnZ01v1wxtjAAuAnwck6D/4/NuHcZDAj2cNjQige7zFLONkyAAbwPNU?=
 =?us-ascii?Q?o8coDx5/1kHtuDVHlsIhIlwmsNaigDm7cHZ6ec9VSJbBD8kzyknvCCImHAtk?=
 =?us-ascii?Q?Z7sym9mGQszOlEe7RZEoC0wC/BvDTFtvVEP1OSddDRKqBDce0Xcdr4Z/+S9c?=
 =?us-ascii?Q?9gArHZRhhL9BJfTF3O1jI8kLVBq2HEeiTk9z3qvx/Nlrouiy/ik0iO5agHEp?=
 =?us-ascii?Q?QuChz0uI4ZdvGaxhv8s1dwQNEAyLwGvBbTb0VlKltxEPFKYsN9YN1BabfG6G?=
 =?us-ascii?Q?n1gk12D4gMUBQysLttN+xV5EMUruhbrkeRxFiJbzz4WiOsF07L4+Ga1mSy8h?=
 =?us-ascii?Q?y6VpOI3HlUVcNH9/zcPL4NMpBaEiEYbqe9g+dZ4QsGk37jtyGIss2MGxl6MR?=
 =?us-ascii?Q?o5GbKcAH91dN5NTL3FqDH3KXvnpquBDxn9++WPkHBAvl7640GQf9AijAYIDQ?=
 =?us-ascii?Q?vLOtSHjaN66jF84b750XyrZtCtHHA9JUBC1t+6snW8rhblyTLzy5ojzX92rZ?=
 =?us-ascii?Q?vDI0MR6w7kHSpMK2CrkNXezLuFYa+YnVHjelkAjMayOLe0NuL2Hdxm/Rz72W?=
 =?us-ascii?Q?9U/eGrKuUjRdIwxfSl34ejV3MKPHfZCt4gEsM4Rfrr/cm3Rr3Hd8EiD6JO4x?=
 =?us-ascii?Q?BYedAcxSDMzyFwaDheIOfMsqocNiuFSnVhYWBMX3pgl0zpZ/Tm9ch5ZwRAZ9?=
 =?us-ascii?Q?lV1Xvz0CfLRDhBUPFKyW8LkGjwX3tDqMAPQ0cTOkzI+l9mkmKYsb2+tVS/eM?=
 =?us-ascii?Q?+LkZSy6LYz2T2UDNy3d/33zXYklmWa6FidieC5ELl15ueOWD3JZnv0nZR5p9?=
 =?us-ascii?Q?Uwr4Sr8CVPQI5ShDotrp51IC043+nnGmxV27SR3cfohUNeRXUEGRDVq6q2jD?=
 =?us-ascii?Q?W2fjyrih+3vndOYjrSjGVwV6oJGFLoyvo7q8HQkUG3k4kO9tkfbMJ13dL2ou?=
 =?us-ascii?Q?rwXsxbFgwbyGSra8hnVkHzhbroZpdn1PoKL3ecGkDgeQYgqSYUyY68aiXb42?=
 =?us-ascii?Q?wSw841ENZOupb3v1nftGSuGuXSQH+1dw5dDZmgo++g6bbFoHa5bklW98S8PF?=
 =?us-ascii?Q?6q23JIxrDB/mHboBWqDRY43TqKFVgmRXfGslVfYzGJQRu/ZmMTDGXsV4HNfS?=
 =?us-ascii?Q?D/nQjgSXuC7HW+9X8G+7QqWwjKeVGGz+Yv5K3HOr22Cjs2g4Wfs3TlgyrP3Z?=
 =?us-ascii?Q?yyW5KMlcUEcl9amL3J7MeicaQ/9KUotYwgPB8JCryhCA9fdgibDDoafKd9yO?=
x-ms-exchange-antispam-messagedata-1: hGiBQBg5r4k4CQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5819.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 510523fe-1cc5-4eae-aca6-08d9fd9915c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2022 04:40:18.6072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5iaOMB60U/7rVmrkTOBGXpn2oslKG3POilHjHjboilUAMVpO7j4sHgbdKFnEyth1Lr9rICF0seZtdnZFUxfK7azy1wH8mz8Cr2qjGaNg9IkGw0EkVg/13QvTJN5XhQ96Akg+J9Xtfv5dxcRzQqVTNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4373
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl-n: Add stepping info
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

Please help to merge.

Thanks,
Tejas

> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: 04 March 2022 10:09
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH] drm/i915/adl-n: Add stepping info
>=20
> On Thu, Mar 03, 2022 at 05:02:52PM +0530, Tejas Upadhyay wrote:
> > Add ADL-N stepping-substepping info in accordance to BSpec.
> >
> > Bspec: 68397
> >
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
>=20
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>=20
> > ---
> >  drivers/gpu/drm/i915/intel_step.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_step.c
> > b/drivers/gpu/drm/i915/intel_step.c
> > index 4fd69ecd1481..74e8e4680028 100644
> > --- a/drivers/gpu/drm/i915/intel_step.c
> > +++ b/drivers/gpu/drm/i915/intel_step.c
> > @@ -131,6 +131,10 @@ static const struct intel_step_info
> adls_rpls_revids[] =3D {
> >  	[0xC] =3D { COMMON_GT_MEDIA_STEP(D0), .display_step =3D STEP_C0 },
> };
> >
> > +static const struct intel_step_info adlp_n_revids[] =3D {
> > +	[0x0] =3D { COMMON_GT_MEDIA_STEP(A0), .display_step =3D STEP_D0 },
> };
> > +
> >  void intel_step_init(struct drm_i915_private *i915)  {
> >  	const struct intel_step_info *revids =3D NULL; @@ -150,6 +154,9 @@
> > void intel_step_init(struct drm_i915_private *i915)
> >  	} else if (IS_XEHPSDV(i915)) {
> >  		revids =3D xehpsdv_revids;
> >  		size =3D ARRAY_SIZE(xehpsdv_revids);
> > +	} else if (IS_ADLP_N(i915)) {
> > +		revids =3D adlp_n_revids;
> > +		size =3D ARRAY_SIZE(adlp_n_revids);
> >  	} else if (IS_ALDERLAKE_P(i915)) {
> >  		revids =3D adlp_revids;
> >  		size =3D ARRAY_SIZE(adlp_revids);
> > --
> > 2.34.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
