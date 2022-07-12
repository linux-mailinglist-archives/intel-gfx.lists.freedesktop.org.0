Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AEF571A35
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jul 2022 14:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 272F710FB80;
	Tue, 12 Jul 2022 12:43:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D64110FB80
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jul 2022 12:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657629801; x=1689165801;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YvNOKMS2zF+hwQirPTKkgMHMzMcZT5OVZ3cIBEyJrDw=;
 b=MofKdF5Gn+MBsMkQtNDT3K82BGn8pyOBjh06pwgg9wh/Hyj920QKA2rY
 LUujThs7nHgUkFDt86VGM6yQiIebMcx740qBcaHdDyDXZS8bNAdQCdVPL
 VXnL2kUNq2W/NE9/X/GLx0mSIvtQleeEPRgpdhepPSYwYgSePM82g1Ltu
 995J0dvUoJUMnAK9m9ECaHyNfxFo0ZK7MAO42A9zTsbyKzdh4XCQdLIAZ
 YY7PP08Ob3EE9QPbeMSZNoAkZzgD0VXr4dvvsUUBy6PNWXjiZlba58Jr0
 knoBZwWIdfp7jf2RSwnqGaLm2729bt3qTVOVWbGQQTSOYVC5Qa/fOJmLV g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="265334568"
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="265334568"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 05:43:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="771867579"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2022 05:43:19 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 05:43:19 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 05:43:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 12 Jul 2022 05:43:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 12 Jul 2022 05:43:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=StINUD0xs9/F0HMdIQDif383eqTR1G+fPtwQdfmvI4145LeApQYsCYumMGejS86LTgExqU2H8p69NmlqbapfjOcSiGhBgL3tJcy5nrJHA6wV9y6rwhNweSfk7h0v4lHTR2LQJLPgMuDY4ic5ZdCePF9mZxTV+MOCll+XRVivbKh03xnNxoDkoAXo0aMHMwKlg5JhSGGjiomazDuksIsjYOxjgku+2S5Ln+XFtEO5xk+a3trq58IklBWQwuJA6iUgqHfD6mKqkaiKImAFo0HKF0Ur9QFOc6QNVd8rd3GFP7ZaLNONeSa3z8+Yy+geSUA5huH9ay7sERqN0pWt3QszlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YvNOKMS2zF+hwQirPTKkgMHMzMcZT5OVZ3cIBEyJrDw=;
 b=KmlYxwaFJ3b2inJtzsL02pJZ+NenzJ/H+JKv24H1Ok4n8f+RG1VhORcFIkd4tsbiBx7gyNu/5/dPixEYRoRAFl8W9f+rNmfPqWHofbnH9s7PESUun8Iq01/Z5pTjfaSAZmHW7L+x6kDF3qAbnNqclZap/E+0+p4NfPWQxmr5sEyANscFlZaupEaHoFSecqXyntY0CGx15rbrXQIG1D0T6cYWwnaQFams4qm2b97vwSk9niLozT+52qgWjdswHBQHOMQbQP8ofOjw/+rLTNroK/RDrwqDSERoBwDSkRRL2jYZRMuR0JadSV4WwDHVhwgtGtuPNiigV4GIZiNBgeuD3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BN9PR11MB5402.namprd11.prod.outlook.com (2603:10b6:408:11b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.20; Tue, 12 Jul
 2022 12:43:16 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 12:43:16 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915: Add Wa_14016291713
Thread-Index: AQHYkxXbA2MV8G1QLUq7njh6KLEmn616szKw
Date: Tue, 12 Jul 2022 12:43:16 +0000
Message-ID: <DM6PR11MB31772130B9E172AF642B0254BA869@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220708215804.2889246-1-matthew.d.roper@intel.com>
 <20220708215804.2889246-2-matthew.d.roper@intel.com>
In-Reply-To: <20220708215804.2889246-2-matthew.d.roper@intel.com>
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
x-ms-office365-filtering-correlation-id: 071024e7-e527-4b38-54ae-08da64041792
x-ms-traffictypediagnostic: BN9PR11MB5402:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4aFEBmsb2fDctVkDRZ+e/G43MYfnhpz1Bc2st5ekPQIue08y/gjg9BMQgYf7DZ2OXLpstf/F5q1T9UCFf6Fs5qevLaHtNRv4pfCHaQj/DOMbgwkSEVmP9h3RR2MTGQ9wnqNPEvFBW/GIg3VFpGwdo6nkUPI3oajY+6D4Br9TxNcMW3RNQtYzrZrpQcOjeBFPBjXcv/Bql6+eTPp5XEbNzyA6PKssJ8GiDiGvb6NW+rbuowrkd8WmA319YwoH+33wB+wmYJWCLCUpD8hE8vHLiMoiVJrpKdoMRccX2BSnnSpcwczTXFkWZQJJ+LVjlLTnS1KpChvFkeAAvu5G5g0ny8i7BMkn7ea1YH+pvsecwdPOjz3H8CNI1jXmJ+6zgNW6SD1RV7ACGDCpkPjAZPGOLlf4CGEgiTtnqtFT0HEtJu/CvBqrq8KYNdBdmwh28rByIKUX8kMx6oSl/OPzEpbip78y+45e4fPCkxM0RD4PdKB7jPVAgUYVkSyZqFqzEabuFc+Nd30pSA/c4pl/i27Q1xz7KOv8ltRDRTrD+mcdzv0g5ogExZj6EhnS0Gf0F+L/zTwoQF8PYBf5yTd1FfJP+vyyLZ+DAM6UZa20SY+ovpM2ejCbqBvM02HNQwc3AxvZxrswXDLuFOOKkJ//18EHQqekwXgmBtQeNDFcizwCIhT/RdzAr6CGjFCM8u63eHlJ1jXy12h4uS/hgo++kERdazuUATAIyLyODl01uyV7BDVPVUiG16yakzEHTWPKSqK7M5gJ/Q0TprLXAMSo8z+pZRcw7HCOH5twe9kLOjD0AxWbTL480lEph7aWQLfnXlkd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(136003)(39860400002)(376002)(346002)(55016003)(4744005)(9686003)(478600001)(86362001)(122000001)(8936002)(5660300002)(2906002)(186003)(52536014)(110136005)(64756008)(41300700001)(53546011)(316002)(55236004)(7696005)(71200400001)(38070700005)(6506007)(82960400001)(83380400001)(66476007)(66946007)(33656002)(66446008)(26005)(66556008)(76116006)(38100700002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Oq121PgKNU/dAe43I4/AAXKepk8eQE2Mv7pkKamey3VA5I8cvqfs20fcJdcG?=
 =?us-ascii?Q?ppo6lefmrNkV6ZREN4MzeMSGVZEpV4rGw/H3QgZz9BBwaBBEk2AQ8xUSZWDv?=
 =?us-ascii?Q?P6rxiPwUTh5lblkB3B/4Q1y3aRl2XXBzCzcR9EFU78EPlOlQRRXGNDDqm3PP?=
 =?us-ascii?Q?bG1yRyW2/O76Yw1YYN3Yokq6y+PzJ7V3AlwZdf9BNBmkkvb6+Sl2H37nND/w?=
 =?us-ascii?Q?i/44QB6fEnTletCiboBoDJGcff0nbGxnpjFRU/9FYtwWDHTmshFKb1OqAiKY?=
 =?us-ascii?Q?DPPz5yj42KliRQAd37E/Um2brvH+c+858VM33KIol6VUwb/syNDhFjJTwog4?=
 =?us-ascii?Q?xF/IPXsXIkXqw8BwjZeOv6D8/JRICxy/oCzaDcNSyGWZ5C/jqJ0k1G8zTzD0?=
 =?us-ascii?Q?qhspY3cWE/Ly3qb7pHq0SIXCO0041tpx6mp6MgCEyIXHiPKycEgyYEDfidLQ?=
 =?us-ascii?Q?+mHXLiINfkTuyJGz2jEEYDmRJns/mC0I8agLddj2FiXejavJEw8A0T2nmWX6?=
 =?us-ascii?Q?zrWufDI5xT4mbEpmoTjeVruw9c70auB7GamaY+4UnHnn+904gUGhNnvdjHwA?=
 =?us-ascii?Q?kR8gXTQ6B2tMGH/5yrY+rEiBKdqm254XV91elCBq7B/zlCpsNv3jV2NmO2ih?=
 =?us-ascii?Q?8XsSjFV68W7NaPR+iVH9KjBwg/dRJuJTBoZ/m5MdT7GvFBp63MU8T9+N7LcG?=
 =?us-ascii?Q?zHAAH1mKStzdYKl1GANaHb05Q328bX4tbqY0LuaavAeuwsFJ3JZOVcRIi8qT?=
 =?us-ascii?Q?djmGoZDZmvj/z6q5jnCiGEYdqNcU1sVKhJRop0zGwc/5o6KGIr2QSTt2KWJa?=
 =?us-ascii?Q?FmceLetPXiXhb1dx9LvdmYvfOAhC6K+YKTKCT2BpYbfRc/MNtDSO0hSzCToe?=
 =?us-ascii?Q?8xhD83YkkF6MQrlYEahuzE7I436QAzHwpMKqq0mZLieawc2SnMcoZ5+WY3hd?=
 =?us-ascii?Q?LUU66hIN23Mrs0vc8nF1f8F+DVs7jsByjQkmz4MyDcLmhaIwnLQXKAfinz6r?=
 =?us-ascii?Q?6b9uy3EXIyxgDe9ENEE0HQVnDGisDWFX928os5efbU6suxKXfuSJ983Nx+mW?=
 =?us-ascii?Q?x7Ib+voGjKWTmkmEokRR5ri0NhlJwuwqHVY5+vgtaKvcRWLpN/dEv8VbQGFy?=
 =?us-ascii?Q?FLICfhfpZjxaiGKBTYrSdfrkQ4KaX8gmtMu827W9epItjK803U2RaGqtfOR4?=
 =?us-ascii?Q?3SPVE733UFXvy3rVtG/6eR5oUHnT3272BGKvXEIymR04TbiNKKxx65EIVc7B?=
 =?us-ascii?Q?HDCulD28cqBwznfRmieBNCKVlHwJcaQFgqQMt5unr3JAnYqlwT9YmSNjfY94?=
 =?us-ascii?Q?OlwW/a8DuYGhmk+j2JwZc2sCApKeUaYyF63nCdVix0eRQagy7KdM1Ef6Hv1h?=
 =?us-ascii?Q?T72jRhOzc4ZqEPeD4I4LzTYz9OaCeZsBx4MLRY7BZv/Kb620/2RLLQUHdUN/?=
 =?us-ascii?Q?NITGf4BH+zb8f1jzWSr9i7z9x+GXGt9j8E7/fLSBGxmky7XKuQh0KA5bpBj2?=
 =?us-ascii?Q?SyQZZ8Iyzi72k4He/QOUgtY9MacKRovLD2G3GnyF7tAhnhTCw4Zcz7d13GPe?=
 =?us-ascii?Q?oKhmwLsBT1cO+autb8U2MaXcmK/zdD0AE7dO4i0W?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 071024e7-e527-4b38-54ae-08da64041792
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2022 12:43:16.3834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eePhyuXauf+827QzRPvCiuAP0x5SUWok6wtfSh7bI50831VTKZXdU2zrIO04DKLqYxjHBOw9O2fyzvm0e6afMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5402
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Add Wa_14016291713
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ma=
tt
> Roper
> Sent: Saturday, July 9, 2022 3:28 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add Wa_14016291713
>=20
> We already disable FBC when PSR2 is enabled on display version 12 and
> above; this new workaround now requires that we do the same with PSR1 on
> display versions 12 and 13.
>=20
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
