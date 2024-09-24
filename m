Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AA9983D2F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 08:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E62610E116;
	Tue, 24 Sep 2024 06:33:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ijt9DEfb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B89F610E116;
 Tue, 24 Sep 2024 06:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727159606; x=1758695606;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=arHRXN4dnisFRZwWUf6i65W1r1L09hvLZlOA80LAZxU=;
 b=Ijt9DEfb7u7+4oFxRlu0M7xkP7ZmBvNqrIviV84ywj1mFICLCrSSDdUN
 PmIVSW9ytVQElZ5G+7LuTBbst8q3v6AEc0DAC+ngXWquzTxex/S8HykMY
 C7fNHZnP8pepOuvaHgrOEBBo0ZR8RJCDcEh5uotv5nLyb3qbFzKYi0NuN
 Sehs7ZBamNekvzCeF78GPhri2OFxU6GrjyM3LRwM2jqVCJTobrPWntWco
 D2SUwGa0RqDGXTYbBxGSIYPOcuwfnjerUcUIdTZKCNy5lBMRnqliaDrws
 3F9ueQOkS5+uLu2dT3KPaZ0xXh+/AzQAs6vFYuBsmAk1z2tMXu0WpzmYq Q==;
X-CSE-ConnectionGUID: fuCh7Uo7RGusHvnBlndPJg==
X-CSE-MsgGUID: CuNZ246eStO8d5DervtBiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="51553087"
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="51553087"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 23:33:26 -0700
X-CSE-ConnectionGUID: TX11ouMxRSe/V9EfflVvgA==
X-CSE-MsgGUID: kiZEmBXDTxeQjOoFUHVq2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="71575852"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 23:33:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 23:33:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 23:33:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 23:33:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bpwfqahfzljBwliBu3CAvLzFvn+toUF0kBSAITVp+eU31JAn8xtW/8vANCZjltULHnZfErufzMPOFWAtjLuarPXie955cd1Ouvft6OSUVJ5P4xyNVZjcccriuBxGCxa1sQxR829hLENtCKbCDApijJWEYN/G6z6/WbKfRXjKgo3HcmsYwVq8TFNe3Ar30BxiuFu1YZ3T3g3MtQz+/iDzYvMYUbrP18YKV1dvNn5DOAM3y/uOoG4s7sO44ZFj+J9ivDND9EaC5hVoJVYd0T9pZLjtxPl49CRjE/PIidGgyqGp1/QP8v9otO++THBxse43RrrWufm8NIA7UF/oQH3JqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RTC6K4iZijep1Gl6+KjqAUCeoi5/+LhdX2gGC3EwMZc=;
 b=ikOb6fvsGmjjUaJKSsAjHh4WSewVJEXHDjYxwFgbhw1gR9w4RjvCTuGmpxXdiniBL5C3fQeJ4boV0m0/F5lOV7JLmKa7Uc58aje8pQMRF+tXgYcPMmB8E/+HeUnjjLtAGA+feRnPIfImD4so1RBmqxOC3Swh3nnRv7y3UnXuSmA2NfjERogPwLewXxUnZ2yti40W14IMnAtd0Et9/I2ykMA3UQ2qiSMYQmotX/Av396W9qPfIrdUHgzWnd2k4QQxqU/A2mEg5iwZb7L1j+D5deOc9vXKJD65qWd91u1SG1o2Sgob0E7oW0n2OQdgmdskRGoRYIDRK3tbDZd/ZABOpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA0PR11MB7212.namprd11.prod.outlook.com (2603:10b6:208:43e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Tue, 24 Sep
 2024 06:33:22 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.022; Tue, 24 Sep 2024
 06:33:22 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Srikanth V, NagaVenkata"
 <nagavenkata.srikanth.v@intel.com>
Subject: RE: [PATCHv2 2/3] drm/i915/dp: read Aux RD interval just before
 reading the FFE preset
Thread-Topic: [PATCHv2 2/3] drm/i915/dp: read Aux RD interval just before
 reading the FFE preset
Thread-Index: AQHbDkpgsdUHDmku2UeFqcmjrV9/+LJmemyQ
Date: Tue, 24 Sep 2024 06:33:22 +0000
Message-ID: <SN7PR11MB675014BEE31E9A6204628F68E3682@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240924061358.1725306-1-arun.r.murthy@intel.com>
 <20240924061358.1725306-3-arun.r.murthy@intel.com>
In-Reply-To: <20240924061358.1725306-3-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA0PR11MB7212:EE_
x-ms-office365-filtering-correlation-id: e580d52b-1702-404c-6d62-08dcdc62c98e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Ii+Iod/OssgjkL1pzDiQQi5w5RElNZsGjgx7JtppLXCg9vpwKMchtnFs0BxL?=
 =?us-ascii?Q?0jtt3deMZoUavY75ns9Cr9es55zGSkymTy9Ftj9nf6lnQHugRvbfrpJ5R/Ha?=
 =?us-ascii?Q?UfCcypPL3Dlf9FK96GbyKe/kfV8+Zzl8SMwWNIoUd0oQftupL8qIfzI0irxw?=
 =?us-ascii?Q?9PVSQPjWwWWjbw4B2twg9u/aSysaOSNUi06qJLmAA1HRsV2egZRYXSvUmBdV?=
 =?us-ascii?Q?U9BEYlfLAFyBjnVx+dfiCJjHh2W6PCfsP1uoAf8sBsWWh1RM7o5OdPw9q6Kr?=
 =?us-ascii?Q?GUrD38/MV9TjRXn5+PKxE1O+1itsx0boRbhqU9O+ThEeN8Gy1ZyFoH7u0N+n?=
 =?us-ascii?Q?o676r/PdXCh8s4jS8Uipr9a5EmdlURQXr4mSudqgYSNT13HjoKZ403ezHzp0?=
 =?us-ascii?Q?Atvl4yzOxMHXeP8wa7i2urOQ1eiXKUzkDUXGGiDm/O2Y/JtA/CroIAWKT/ip?=
 =?us-ascii?Q?CdP/wML0+q8TLhi0tOZ5Cj3m7+yKCYnn16nAqgAct0VT85VBm9H1/L6zt857?=
 =?us-ascii?Q?PyGbU4sDmMv5pMsValiqAQPuvwIfw941uxLwf2XHCYTwW/cxEIEfLaLpMrVp?=
 =?us-ascii?Q?EZNa+rHOfbLn8Kfo2Q9twJz8vmIJAynF3tjc5PqNHNr+9I1zRkAR5ihGO5Gt?=
 =?us-ascii?Q?u3pcYo/ICXPH1UIeJFHmegm32ei2/buvBSpfDb3lb2JvjSF9+HQJFtKR70Ew?=
 =?us-ascii?Q?yh7jaarbyiEiRzxmAhM5d6t3BbRof7SIiG7LFvuzlsVgU7GjFxvnrQeHCmBv?=
 =?us-ascii?Q?pqh9gEktLjesmdHaDR7k8NWzdAg/BvsMrw6192vS6lHQq9gklf4IHBxB5sgV?=
 =?us-ascii?Q?1eF/HgHf+Ov4rZSFkgnIAD4/L9I1o1FzNjleUr1+RSNi0d2BY3/ER+E9f3FH?=
 =?us-ascii?Q?lYZzgQQDy+g6ewbBgpaiKNzQbNvuEP2In72/KhyhjDXOGGNsMXXCJc9LU5Ik?=
 =?us-ascii?Q?2x01CSWe7ONGJzv0kmcYCo2N+Xxw3A8HMkbq2SyXQ7ehD2p8bEq0bReli/C8?=
 =?us-ascii?Q?o1DHYVWcHj+jGSTgHwqhwrJWOnzVYzeENynUEVZ79HVuHGVU80iVS2JckGS/?=
 =?us-ascii?Q?wCF9TpwaXAn+ox4HONN8+QbopX1eVSwmUXSycYegJuXRVJFX5IFfzzINJ98D?=
 =?us-ascii?Q?3qNC+6jxK8CO8fyARHZu5ub13n6DoM1jAJX3xfPJtOHDIpPFfmkoK7OKCU8q?=
 =?us-ascii?Q?aVmj3N8e90WSgKJrMRLkMcI+cVcSzGc0nR207R6uvQoWe32TfFDGBoTru2te?=
 =?us-ascii?Q?YuU9OeylyfSx465lCsdOchc0lovykklhDqyP4oM6w+0akwI8JDO1mqAPPx4f?=
 =?us-ascii?Q?BRKQFS+7+XOehrSYNZ48C+wnrGV9GLwnnMK85hY5W9bHIQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?u0/WRUgijMocoerAZ0WatcGQKN2+UA87nemwaBxZ62HUImHPBvos9lfxSxJs?=
 =?us-ascii?Q?Q5GJI/Ar0+XWN834tIzKPGNx1zQet51rbAdPpeB3xL9XyCX3JKNjrEv1vs6X?=
 =?us-ascii?Q?CvVknOLYujQ6znJP/GKBylHlp8jwI71D24QD7dQIa9ai8ubuH51YznwWoUh+?=
 =?us-ascii?Q?t1oiTFNnHPmQgq1yB/w89pjpwnfPDODo64U4uoXapD2l21paPhIUc6zb8iSQ?=
 =?us-ascii?Q?c9a4ubLXy0fJ12lZqLoasBZBC4vfZ6bdbGjKjM8u/S0aJEyKN5sojxUTuWvi?=
 =?us-ascii?Q?zgNET8UltklMqYfMJLfk/4BQ4gsqONLEolTVeKhXX1RVwtAvoICyQ/EdQRdA?=
 =?us-ascii?Q?DEzbQ/rF1xDqB4Xuq1WXfrJYiSBtfvOzLpGLeh3Cz5EDtyoaPsm/fExZ7QN7?=
 =?us-ascii?Q?If8FGPs/TCaHpELitDD4hw+Up7yuRqkdhN2oaAdA2CxYW+MTWQSlIohBbwWA?=
 =?us-ascii?Q?DHLqPuk22T+okXVUeSvT9Yoi79ghoBXkxWbAyM/Mh3FKiA+B8QU7HdTpZcPv?=
 =?us-ascii?Q?owYgjt06KiEtN0ov8SKFq3P3Tf8JFpt1RefOfzQQIr4UJngN7fkx7CAKvf/0?=
 =?us-ascii?Q?14t3AvnPj7WOWhdibQas6PpATqXyzNwK38/swvR9/kInTkuYpT+lMNYbiiyr?=
 =?us-ascii?Q?/abYpGCl/GBxoKlMPbn0KPciQGkExuEBMWcgf7l5wQQgHrtKs0h8/apylAVn?=
 =?us-ascii?Q?pga4VJXCXjPxTRnU2NpiN8HCddXSbFfVBxNoAPmUE+VKPFjn8+bgwNa80yIM?=
 =?us-ascii?Q?1d5szhmQZYrUYd8nur7FvMQOIQyKksYTVTwJsY6IAmc1hc0rzEdeqDw5+kN3?=
 =?us-ascii?Q?LiD3U8fpD9aZtagMP6N3nNdNClKXlhtgSgWuUa/y3UAUUgOp2vRnSOXu7LFT?=
 =?us-ascii?Q?gbb3uGEardB/KU5NrarIiC5If/A9DlpXlguGBXIfm9f7ks5pnDEd2Fm1/pZS?=
 =?us-ascii?Q?YLxQVRE8EnWdiGMZ4KkyY7/sg5aP50t7cKoBQPg/r3e5assoAJ/hkdH8MeqF?=
 =?us-ascii?Q?OkF2Lu0+PXbbTOcEsNnC9rDa/75hkt5lV2wz0Y9vLRkVzQuEorWv6QZXC5Df?=
 =?us-ascii?Q?JhakkrU3ODOJDgMiW67qNw/dL3yRMvC13IX7am77p3MphX8zUILju4Yi4Jww?=
 =?us-ascii?Q?yqAzNsM2ZjocT8nXcoxzgxBaidX8EjQ1JW4GxL65XPniPlSvDW8Bo1njoHZv?=
 =?us-ascii?Q?v7PvBGtR/JBFaoAgt5pnV5tctdVu2L9CeGOzYVXn0bKLT8QBqvDXmoRuu2fr?=
 =?us-ascii?Q?32127HQHSjggstNNhOF785BGeGmJ5t1hOesNWU5nr7pjpf62m4kgfW7iceym?=
 =?us-ascii?Q?oELehypWDdHnSQOQdHSDwx1MbTePXSoPs8aeDYuYpDIbPFBkqwxAlD/AelWH?=
 =?us-ascii?Q?VAMPgEtImsyvqqg4nDDPLj/9kyLGtBEpx8+c81XdT9rA/wvJ4CpIw+TRd955?=
 =?us-ascii?Q?8wvC/XSqTOml9BK2M/d4SmW1aXL6H5CTYUT4pWHo0+itNVWLGh/BcIGp8z1J?=
 =?us-ascii?Q?4DZwq9pyGwPkISDHSrz+30foqk2nOQv46Q8GbyVnWGCy1WX3v9i3hh16X1qs?=
 =?us-ascii?Q?B0iK0EfLtXWIQYselhS6n7t3Ngp9F5ZGC/oX0bjo?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e580d52b-1702-404c-6d62-08dcdc62c98e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2024 06:33:22.5829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E41pDA1I1xI9H/2dMr8nzbuuJJaMPd1lJq9EPSu/xlfXdQEt1B7egjx6mcEV/tTWHfInF1wEYBCJztXV1CcIJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7212
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Arun=
 R
> Murthy
> Sent: Tuesday, September 24, 2024 11:44 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Srikanth V, NagaVenkata
> <nagavenkata.srikanth.v@intel.com>
> Subject: [PATCHv2 2/3] drm/i915/dp: read Aux RD interval just before read=
ing
> the FFE preset
>=20
> Figure 3-52: 128b132b DP DPTC LANEx_CHANNEL_EQ_DONE Sequence of
> DP2.1a spec.
> During LT, the transmitter shall read DPCD 02216h before DPCD 00202h
> through 00207h, and 0200Ch through 0200Fh
>=20
> Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com=
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index f41b69840ad9..460426a3b506 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1419,12 +1419,6 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> *intel_dp,
>  	for (try =3D 0; try < max_tries; try++) {
>  		fsleep(delay_us);
>=20
> -		/*
> -		 * The delay may get updated. The transmitter shall read the
> -		 * delay before link status during link training.
> -		 */
> -		delay_us =3D
> drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> -
>  		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status)
> < 0) {
>  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link
> status\n");
>  			return false;
> @@ -1451,6 +1445,12 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> *intel_dp,
>  		if (time_after(jiffies, deadline))
>  			timeout =3D true; /* try one last time after deadline */
>=20
> +		/*
> +		 * During LT, Tx shall read DPCD 02216h before DPCD 00202h
> to 00207h and
> +		 * 0200Ch through 0200Fh.
> +		 */
> +		delay_us =3D
> drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> +
>  		/* Update signal levels and training set as requested. */
>  		intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX,
> link_status);
>  		if (!intel_dp_update_link_train(intel_dp, crtc_state,
> DP_PHY_DPRX)) {
> --
> 2.25.1

