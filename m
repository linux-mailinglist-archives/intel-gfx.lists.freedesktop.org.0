Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 277B3594F25
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 05:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54588DAD19;
	Tue, 16 Aug 2022 03:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E77BCDACF8
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 03:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660621328; x=1692157328;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZvAUz7UDmjJAJ1paAaHmWSakNSDqijOH/YTVIik5/4g=;
 b=Enm0kJ52TvYJHkWqqFraoCqkiZICj3XIguE9ogPSTFNvXoTOLTUARsiZ
 sasBtQZgkKW2m3PJVrxCpKzhP00BMA2Lq6AUDjlnpRU8H8yMwo6h78WOL
 Ydc4Io5dI/cQqhkS2yeo7/nm+op9ZuH2Oi0w0bQsMVLL6FQAT6fAKxVo5
 oFFarUMokGpYtGbmtFsdMCBLnTSTYubRDqVEtd7GdEwYsiuLUX3hyKcVN
 pFwrnjDIlXLq/kH4S6eePGuZ0SP5fkATyzaODfNzHG+byLEiG4/dBui7s
 TSnQGc/Dr9c6sNBwCNBV2ihrvxyG/eLtyH/kJQjRNt8u2n4bxcpHbGBF6 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="292112168"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="292112168"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 20:42:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="610120927"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 15 Aug 2022 20:42:07 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 20:42:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 20:42:07 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 20:42:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ts4YNEQYUgtzGAMvMwiWoBzoL08pzwyi+3MPBqBbZVbvtlGMC05KY3B4tXpNnR0EghTeSNhgObq1PdkjjaauZ80zfjVyaeLJlgcmDTi33qvwZFPANNsjQBIBX42I+r8N6jChD0pRyYCTa4sSnFUekiQFGVERu25OAwgEZQXSGnATg3e3Z+o9tccK7ORjZJnHiw9Lj3IE2ozjiEwZpbQ5SbUSsWWy49rFT7B09QhrABvQ5LyBOps7bssShPWqpSlNOm7Uh5atYOLGoXi/0CT7GPg1oyRjhLm/GbaRc9dpwlEzs3cvX2YYFFQOqHYRav9FvKcuj7FrgtJ1c1ngdAjX5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sh3ToW4ZIF0wJc3GIAe4OJ3MiTfFJ3OZodhRea22DaM=;
 b=f8Zwm7a5yYgM9UeSCpFfy3fcRfpPiRICIT3IR4eKIHtB2QAxPeYNkkygOhMKw9NGf12kNEscpEpvjpn8rXOV10XtO2EVL/h2zIcxddJlE2cXKVpLBjMzeWJ811wlZi+a9K0w0iq8KB9FqYT/ANEeNMPzTSgKbZ8RatBOIXFm3S57FUo9eUMR/ib0rFU4vv/Df0uZC0w2Ty9O92xhv4BFIhJqGKYNOoEZobOKESB5QAXgxmII1xP0eWX430vnnATAgw8tIGfosC8ji4qJN3/V16rS58tbE7TvC9OPiZGYazJmK797ujDSF7aI6AOxgHVXlbCuvwNTiQK3RND7ItoN6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.15; Tue, 16 Aug 2022 03:42:00 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 03:42:00 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 02/39] drm/i915: move cdclk_funcs to
 display.funcs
Thread-Index: AQHYrZVtcpwPFk1z4Eed6kgo0LhXX62qrKYwgAAl3ACABhXFkA==
Date: Tue, 16 Aug 2022 03:42:00 +0000
Message-ID: <DM6PR11MB31772823DEFAB1F443E70333BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <835133f5ef41aa58f8fbbc7e1c86ed2efd5de694.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177C4C0D0790E1A46F90116BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
 <878rnut10r.fsf@intel.com>
In-Reply-To: <878rnut10r.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8906c3a-b9f5-473b-c7bb-08da7f3946b6
x-ms-traffictypediagnostic: PH0PR11MB5657:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U7ykuu9Hj4GHonxPUM/Mrt3NtJ7N7UCsdPI9999OP+zm+gaBhxjAIlHs9RuJ3YdfW0P5HQXzQUYvN/2OfPWuJb8LQICpyVMh+2LM+OyNcxtgUay7tuaX8cPmbpSGTMi1Y4DRorZko5d7GvRWsNTR7wG91Sl2qPAUheMAX3bsT1uguL8wszEuxjf15/JYzbaKCaNwBC8qJp+aFoPL1/CEjv0WW0JNmTo//7cjpQrfC0+3PuWjbBfGps23yCQNVHPNAPPqhYIdnqfVMGfKWq/noF6bA1kybq2f4Qnct4NlRB2AG8G18q+VWOabTHQ9i0/E6KS4LbqrNa51DaaFGsnln/aBQ49+lbyZ/xpMjNEqtZNbeLY7ksQKOP2er6w0sC1fj8qFveI61TOcm97UVTA0v+owV49XR8hIjaN9flUpNSDm1pAp9cfkIAJBigJIdf84mtjNMuU+rP+qnq0DRhBFc24Pnto8amhbamX4QX9QpkkU+GWRaKE/XxCQVzRa+O3akx9COmibmE2BCkP0bXjbuRzgU2XTiGVuLhYyODDco+cX407nz0M64g87vOq4hO9I6jI4EjKeY8mPBeEYGu/SH0IeJhaKZsVzlseoVv5gYOjpVvbvqZqjiO+9o+A9Q3Zt85LgjnW8Kh1UxySi3/QuaITOYty7uyHmwHSmedNOJtODOdimAfe3udcWuA3+GwwNKhufa5XZmVpHnKWWZVGOhZ1VJYMXwHEYEgSuGFIiy9zObY2Yyf6yN/9oMbHynHSPBf4bDa4oEKxZGgCp7kcizuwBiR/MH6fg57tKAAN0YHy/g1vAEa2L6S1+PEmpAlW5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(39860400002)(136003)(396003)(346002)(76116006)(52536014)(66946007)(26005)(8676002)(64756008)(66446008)(4326008)(66556008)(8936002)(9686003)(2906002)(5660300002)(66476007)(41300700001)(55236004)(33656002)(7696005)(6506007)(478600001)(107886003)(86362001)(83380400001)(53546011)(186003)(38070700005)(122000001)(38100700002)(82960400001)(316002)(55016003)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hDgZXNFqi+mOhYeSBPaSIuMH4XvRLvP8nS6HD1PKPflmYAOUOEUYac1LanFd?=
 =?us-ascii?Q?6D5goyC9R5VmgUdiPCdVbCPsraUZGy6cAHC+SVJoNg9EaoQqD/PcKQLAEMs/?=
 =?us-ascii?Q?Fi4YLQsxxY2cuqutXwwW5puT1pwK3/3caPYgE8jMwnGFF/yUHugpJqkJfpY8?=
 =?us-ascii?Q?EZJi12STcGcXJ/FS04iraNHp02JQA7Ku7WzTRlJ8xAKQcR3DzCchi4r2o3HX?=
 =?us-ascii?Q?qxpq7iraTlZRwdR7Kb+4R0CoVXv3u9YnSjkAp2vGxMzpWSP7KNN71p0r1tNQ?=
 =?us-ascii?Q?knTUiCyQflgyqodbnq1asLq1NQ6c8BVw20eB7yiPOIJXwOPLS0KQxzooEAmQ?=
 =?us-ascii?Q?Ei4LW5A4ih7q9dV3LGPUAw1jiu2mjE1M9L0qetJ4Z0yMpw3mJ4tNf2Qifkkb?=
 =?us-ascii?Q?hwvrp8DfwhpBFnP25I4qFozglxQeBjLdwFCT6FpDscOMW5rYb0dREtY++52S?=
 =?us-ascii?Q?KgptKVnCARFyzDP4oJ8NRXfksOseIs/uoNuYgONwcuNIQdVGzQ/RSNFRr3aU?=
 =?us-ascii?Q?H2NJ5+iulnL30tOhOE1utZWxqZdZXjwAAj5Ty7NAHxbBqBKHBudp7X2WpNb7?=
 =?us-ascii?Q?uEy7kF4JULwNlmJOcM+afJ9p8KU5NhLU6JnUrEXHstTppjQv7X9UFnByZikQ?=
 =?us-ascii?Q?qu1vpni5SzzUZyVV1eFGVUyCH5SdU0SL5rZ7eVJjA09J7fKfsor+R+lh0lZN?=
 =?us-ascii?Q?XZF8/lttLnjDiG/ZFzC7BrkKgDVm2Sn4gF3A7GFbtAqo8bfUpMjv/VhASv+l?=
 =?us-ascii?Q?sPqiFDDsqn7hW9CY6r8dWW/BrgDNeEN411QlBtHSJGk2OmwVWzHStK8zVGcL?=
 =?us-ascii?Q?JY4ZKDbdXUaKvaKZAchquk1XhEtkpJ7HyTYkoLANe95R2dDTWNY6iv36BtGa?=
 =?us-ascii?Q?ZnF6I7r67DeeeDpZDBugIjeGNMAsIMpLUz31UbMfs2ND51d85yGICI03oigv?=
 =?us-ascii?Q?/7fnl5lqjla/KhntJnmqtDrqvtOuxiQeAC5PK9GScY7/UcM5OZkDFn0ScF7I?=
 =?us-ascii?Q?aOsCazdK6nS0Orkl4j+1yxv8QqFryWb2mElur4AJxssddRN+6AipYYCAs9v+?=
 =?us-ascii?Q?fu6MlCZrqJX0EL8ems2gycFHUJxenUFdWUquJzCs61l/cTKXUBmsOucOnlj8?=
 =?us-ascii?Q?jdQgPaBJYUKcSih93cSZWrNUxPsGn5XXndASLmhXGUMyPK2i4lCsMynbj7OO?=
 =?us-ascii?Q?UQnETctew7x8JuE3uLgWcH35F0w5KeL8aXY596qDChlovpdeEdDjKigsSvhp?=
 =?us-ascii?Q?A+HR19isBqldItxmKCx8upb1hWbCwvjMsSdCg4p8TPwkOmvmj/ZAJxZ5K+dK?=
 =?us-ascii?Q?Mxcb4gwPh3hXMNxl4mwqqnMQPvataCQPPFCVN/CECaP8N8iXjpbizX12A96D?=
 =?us-ascii?Q?lvh4bJnUIKNfqqZs0aArzc0MplKe4L6DqOCWZtztkEbqdqXvO4RJMt6gZcSK?=
 =?us-ascii?Q?k4G/FQ7OmU60FLyMjwDwM355oj+NXyLeGPd+WLptrVE/OHCnfbWNT/aLjhnR?=
 =?us-ascii?Q?kktyn1H7X6rVc8pLViLiPf/hwHh6mqSMRYH/CeK6o3PSKALjRJfaFgjokxgM?=
 =?us-ascii?Q?XrJMXGDMiXYqSw3V/b0yzpUvunLCPHkVV8+PAdyw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8906c3a-b9f5-473b-c7bb-08da7f3946b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 03:42:00.2281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +brF8KGhlGvqm9HgXtFGOEqlw3UJuJNN9827nHQMRR35nD0fCXGv9DjR+00uIOABfLhuYxwo0pIMY7+TlzbpjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5657
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/39] drm/i915: move cdclk_funcs to
 display.funcs
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, August 12, 2022 12:14 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: RE: [Intel-gfx] [PATCH 02/39] drm/i915: move cdclk_funcs to
> display.funcs
>=20
> On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> index aafe548875cc..74e4ae0609b9 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> @@ -9,6 +9,7 @@
> >>  #include <linux/types.h>
> >>
> >>  struct intel_atomic_state;
> >> +struct intel_cdclk_funcs;
> >>  struct intel_crtc;
> >>  struct intel_crtc_state;
> >>  struct intel_initial_plane_config;
> >> @@ -32,6 +33,9 @@ struct intel_display {
> >>       struct {
> >>               /* Top level crtc-ish functions */
> >>               const struct intel_display_funcs *crtc;
> >> +
> >> +             /* Display CDCLK functions */
> >> +             const struct intel_cdclk_funcs *cdclk;
> >
> > Like having intel_cdclk_funcs *cdclk, will intel_display_funcs
> > *display makes more sense and maintaining same terminology across the
> > driver.
>=20
> I was considering renaming it struct intel_crtc_funcs but it's not all cr=
tc either.
> But display is both too generic (these are *all* display
> functions) and has a tautology (display.funcs.display). Dunno.
>=20
I think this(display.funcs.display) should do.  A struct display having fun=
cs and inside that display_funcs.
Will leave it for others to comment.

Thanks and Regards,
Arun R Murthy
--------------------
