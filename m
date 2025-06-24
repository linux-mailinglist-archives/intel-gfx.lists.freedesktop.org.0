Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 814C6AE5C69
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 08:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AEB0886A4;
	Tue, 24 Jun 2025 06:04:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HUDCLryq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92664886A4;
 Tue, 24 Jun 2025 06:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750745090; x=1782281090;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NaeVNxj0LgDw3MctCS8bTCO3Cj9gyIVE4POWMtKH/xo=;
 b=HUDCLryqmBX8Be8q8Qb1Km/iH+7BJ8ALMzOtM5Dzv8M/wnlyJkNqCR6/
 Fbmu0TJJXeBCoMYjbEvGak/xgWhhJKmhKOe0OzPRtaY6UV4iEYSHE8y1M
 gaxCR6g6axs2BJi6Oc7KjZVzZMbRd9sVmxfOajHspKymKOZaRn3Gj44Jf
 jHPcSgbflcQDht7bG+twFzk3MdiPMN/E1rAg4hh2P0Mx5Zb9LMQKH3MVp
 d9y/vQPq8MyPEUmKFP9aL3eDbe1mkW1qngn/dXerKjQMimJWXXZxIchBq
 yV6NB9QQCn1jmMBy4dDfTnsBapseqc+7yZOTFK9rtJCALxCxdPRo7iQfy w==;
X-CSE-ConnectionGUID: PCnlw+N2RbKTlHJ5sed20Q==
X-CSE-MsgGUID: bmUvkumrRKe41jlFOTlKlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="70393810"
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="70393810"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 23:04:50 -0700
X-CSE-ConnectionGUID: 9Ivsv1qQSZKWHLpuzK31tQ==
X-CSE-MsgGUID: 14UfGQpUTCepbjsnSIQ4fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="152119532"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 23:04:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 23:04:49 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 23 Jun 2025 23:04:49 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.76)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 23:04:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nn0a+wh537YxcJHZ+OiBA3xib+NlHum7IyNFVw+Hvx9j2nQxhe7m2lpgWJi1EKDViReILg2TqOBlRp8SB+b0T3cOw5r8tCEp1iptzXb3EDcDb7CpuUEtSWvHtEpdhzGmpWjDLHgeYumEft5i8A3SFrUfMDhrcBI5WHFvl+zxrFCTc807FUpv3QpklMW6eA2Uf53rvdiBiGM4dT4TKVVOqrt4ANiKryhSyYVhJNVt2QjcUnv5WO8jDD6oJJ+U3TNKDikhXG/KiLNc8dOJJXTjUjM77MszX/Vd963MpmwWjEY0wYC0oQm0snvwhFdQ9L1ynC2BULUHT7gZGvAMOPMR5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KVj+SJyFoRxAEMHdmc3qhPxwB6Zo2ngHbn8XVAh/VLI=;
 b=N1t4LKka8WCS4QaJqxdRaS/1iBUy6+timMkpJFdkhNV0dnt7kEcQg6GNR/WLTrNoNt9JZ6w7zMJcQ7ND6sYrYjqebyIKE9NAcmfHBdjeI5If7Dwx+nFeLouE7B4A85TSO2oi++TWGo5DBzp2roR4QDaOvRJ12u1DhtCYrpBESyH4CSQ9D13gweM4PrpHoOyNUQu8m0DiHY2s+MfAx6TVCiHUR0XpB59nftZVPlQKTIzLiYkdy1AU4c1Qm2KlrQ1nGLqiFhJg3f77s0VgkvqjxRQ4Olve+bx2velxtJAm13pkIErjnK+5m+GbT/53+A6v0cKeQvcMbITtqqsRcesC7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ1PR11MB6227.namprd11.prod.outlook.com
 (2603:10b6:a03:45a::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Tue, 24 Jun
 2025 06:04:40 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64%5]) with mapi id 15.20.8857.026; Tue, 24 Jun 2025
 06:04:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>
Subject: RE: [PATCH v3] drm/i915/display: Implement wa_16011342517
Thread-Topic: [PATCH v3] drm/i915/display: Implement wa_16011342517
Thread-Index: AQHb1gjjNChBL/a6pkiFSdgbvo/F97QR7Z4g
Date: Tue, 24 Jun 2025 06:04:40 +0000
Message-ID: <DM3PPF208195D8D33AFB5F3B912AC0FB034E378A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250605105432.1273182-1-nemesa.garg@intel.com>
In-Reply-To: <20250605105432.1273182-1-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ1PR11MB6227:EE_
x-ms-office365-filtering-correlation-id: ecacf421-c845-4ef4-c834-08ddb2e501c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vfB86ve1GEgY7x3xbSKgVUumv2MlHCkvMbuwGbi5ue6iRaoocmF3HrxlsH/Q?=
 =?us-ascii?Q?ShQcwXeUcVDUz2i+WL73+XBdachd9JY58OVO6pyuq+dSCLiwor46TTGEpBur?=
 =?us-ascii?Q?COq2hM0E3ONK6ZYAYxAdKVnMuNotWDdA+uSHBE6KlXhbV3AIKoCf2oojXNpw?=
 =?us-ascii?Q?hk61S2rRld5M4n4nSWpguswo/Vmr3SYHEcZhoKo+uGEZWWbj4t57YWqxXH05?=
 =?us-ascii?Q?0z13H80GLfu0+Bcetv/NndSmMS7YwaC4mvbFZyhoEPYkFEoi2oYLtd+wPuKr?=
 =?us-ascii?Q?kNkTCEu7KqySuDfCgOhUF1IR92/FNomRKnOcEiFt3b1v4gcSWcUE3tyaNmq8?=
 =?us-ascii?Q?/lkY7MioM8mCQ8OUGMVyzDv/YvwmxHupEJB0TJHBnwxy+xN0qRFO4pcLKfs8?=
 =?us-ascii?Q?dpML/oZuSXLutduLaX62Y4ew7waSUD0nuBuF9h5WTrckUxXr9/45lsWLg9VC?=
 =?us-ascii?Q?OpDPW0RTNbR/fKOIIRo29tHatUEhI+7SbuyW7DScbvaSSgWeqaVJIXWR81rH?=
 =?us-ascii?Q?AVHdFYRATSjpKX8AW+z8ukxWxH//pEs2eGLOjJw6ES2TfcIXZpduLPzaqj4l?=
 =?us-ascii?Q?s1NBj3EKqwGGonafv6rm831Uab4duMSdtqR9pJF8I0473GMdJ2gJ4V3lAitG?=
 =?us-ascii?Q?9SlfgAgVFYcMOli98U1dqDk+64JS2aiEDKFwwFE3G05vRxBGCqB+zGm0hK2Z?=
 =?us-ascii?Q?wM2LByTKXYXhND02NqrY2sk0vVCQGG5DQ+d9Dzfm87iX7mKKL2HB8vTfwBPR?=
 =?us-ascii?Q?A2tx0hL+BgftkQjMhA1MdU0ZFg1FEHJzxPeZroA56Spbl3QuqwugDz/YSXo3?=
 =?us-ascii?Q?IeGsFkRu9vTEl7vdCo7IMxx7zhcY56CHCfelhNdQ373GEAYNN+GRMLNTAyT8?=
 =?us-ascii?Q?NGf9GVb9WUzphnTnJdnxa8/Tu0f9CGS+DY12xG2ePcyHXmyeq/e/xLobT/MU?=
 =?us-ascii?Q?hKdxY6sjnA3ZzR6tM+jg1yIr0OAlTJP4RnRGfhwEIMWkQhka3Lzfc21LXWEw?=
 =?us-ascii?Q?AnAxqW/G7DK5Buaaoe4ENt9ToHgW7DcfQHD/Gj6WALe/hy7/lf0+DzfCYZRT?=
 =?us-ascii?Q?XY+qKYJP6x6PYlHb894+ZKQbGPcLyZ78AFCBBIU22imfKrwl8aQzU5eYDJO4?=
 =?us-ascii?Q?eQe4vP2DBCU4UlzghBeGTyP1vWqmqzpxDKshDALJSva2LKvd/YMPNcCgRduv?=
 =?us-ascii?Q?k8VNkgyXs3EklrY3qZqZ9lOK0/4++x9U8fZNFY0dfxPQp4RgWcTkOHlOXI6E?=
 =?us-ascii?Q?4tnOunxSaTdvX48hms7FAHWs0g3mBuxPifGpAEt3AWVxyZIhj6tmHiDkhJ3C?=
 =?us-ascii?Q?+OdiHqLodNxGnwaVNWJti9/iEb7au3zw5gJG9qsPJwCBGkH2xb9jPDZyC3d4?=
 =?us-ascii?Q?kvBs5XQcphY+iSY9QpJhue05Ok4wkNLlR5k3Psy091a4woUPl7LydLIqdskw?=
 =?us-ascii?Q?eGq9HuQC1qzxo3Ej5VZI39WvSs+E5+A0VdE5zcyPUjp3Sk4oQE5/oC0HB4wm?=
 =?us-ascii?Q?pK1K/ye0VSbFdK8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5sMgV4Jpr7/wth8rfgv8wo5j+K9l73++BacKMqp8fPaQ/9rI+n/wc5y9NJit?=
 =?us-ascii?Q?ulwNYR0uCwuyTq+QPvI2it6OuLetYd69GyKUEhejjx/XWePSsvGWv+EPXXQi?=
 =?us-ascii?Q?DeN3TL4zs6gkaF1LjV/pWyb0643VgjirL1hyNMMTwyV0JswexO71R9rT9RuZ?=
 =?us-ascii?Q?itRWY/7T+Ux6wdrpBKeqFN9ivR/5VDSAy54hU04ONfDlGijQKZObvAyh4HEm?=
 =?us-ascii?Q?7ReIpbjXuX88N3l+FD/34sR9yNU4hq/HhPXSu71+HPNI7JWzoIs22qmTbQ09?=
 =?us-ascii?Q?Sy25+ULU7ELXg8BUClRHEAbxqi+0waqvp88GJZsCafePIliuXvTduLvs1uaK?=
 =?us-ascii?Q?BsTDegtyTi2eiPggDamB/pGCkY73k7L50grkm0KFD1P2lim7UW3BbebesU9a?=
 =?us-ascii?Q?+K7VBiyWZRXtMR0e599TtusTJn4YvsBImD/qL5rM4uew8hyg9JXG7GWzBu7n?=
 =?us-ascii?Q?OGw5nWBXaPXfUujWzPprIgphJ3XcpHMYUPOcsoMfaAAmuu1KsM9a9ZuNc/dP?=
 =?us-ascii?Q?NX7bZmg0F8/sEkfZ1FTPOkeCSGA2W648KOZ0ef78MmDldayZgCRzMTBu8+Bt?=
 =?us-ascii?Q?2s+SR8A4DN/8RZj/KGIvPHuiEOjxQypahmjpdvsEZCc2WKeQ4Xvs2PQFijCe?=
 =?us-ascii?Q?0YZeU0KXIGVcEeQsxM0IG521PDhFk2oKc746DFXCNWAd25ahCTJhhRj6R1yw?=
 =?us-ascii?Q?cy7hBJg5xrQYXud4SZFAeEyh9/+5u7aFUdfSxXMAs05qYk6A5tRwYTcO36mt?=
 =?us-ascii?Q?mBfGNWzc9IpWQf2luVWjbog4pWvsIEewmEcJdEY2mIrgVLgxJt35JmbndvLm?=
 =?us-ascii?Q?rQvY6M4ZW+6KjgU3ttr785RE0RKl1MfcyPt4Y/x5bN5waUa1PYAwS2h6MK+P?=
 =?us-ascii?Q?bIlGMC9AeOh5gmMgxwAktFsbfjm6fZ+6bEIDH/tGvH4FzYl3U7shhwBJZ+7i?=
 =?us-ascii?Q?7sVKm+BT54jLMxnKGUEcmbkyLaWJUkI/oK/vIcdzL1z584ASPfptSUyQ4NcG?=
 =?us-ascii?Q?apWbwDS2EqDdZHX8BwANl6nGi4DTjMIb0bYBYg7K/SNLu7r8YB3eLfhX0XW0?=
 =?us-ascii?Q?rhi6R91vznu/b3CjTN59GL76tI9z1CkQTPNH4c1IDCgs6TzeLmrACvoHfbvD?=
 =?us-ascii?Q?LYNaw+IhD5H7gWrZPDse9ABlULqFYGxtzQd1n9ZQmOMBZ7GM0W+th6qMhezu?=
 =?us-ascii?Q?bHlo7+t6sq8dCmD7B8u7/eHeYSyUaWzQAAA1gdTZw930VJoQix9TTevtf05/?=
 =?us-ascii?Q?OVvehsJLspMNhjNsPSMfYXKZ2PwDxc5PVAuJwZUVwm1KmYoi1/rA+Am8nvqN?=
 =?us-ascii?Q?GLVyuPpn42i8utG6MyFPQ8fDAWwjmbYUwSX9NQn/wtHEpyQLGctGgm/ytITK?=
 =?us-ascii?Q?uss2ZMx+4+c7juo0KUrqxLfz6eRtYNiBJDhy4Y78BM3QjhIIuzGk3V5spZQJ?=
 =?us-ascii?Q?952wQd1kTM6FIXex1ShWHSNYq7eeoHOIwPbVxF5Id+3RukMQxF14piBdIBBI?=
 =?us-ascii?Q?EQ6d85YcGFgDUM/pfLF3xPaIlPqsusNoPcmgH2x/OA8Hu+H9jOoeBwoQ1EY7?=
 =?us-ascii?Q?t8CHaMdN2Q04oqe77aWKPuTYvfoQSLrdxigspanQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecacf421-c845-4ef4-c834-08ddb2e501c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2025 06:04:40.3003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rutFpTSp22eStDIh/1egXCmANUIh6faptZ/bX9ENXqW/wHRenMLbJogFPZKVG3F4TJH9b+AeNe+mtWvmChm77w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6227
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Nemesa Garg
> Sent: Thursday, June 5, 2025 4:25 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: [PATCH v3] drm/i915/display: Implement wa_16011342517
>=20
> While doing voltage swing for type-c phy for DP 1.62 and HDMI write the
> LOADGEN_SHARING_PMD_DISABLE bit to 1.
>=20
> -v2: Update commit.
>      Add bspec[Suraj]
> -v3: Move w/a before DKL_TX_PMD_LANE_SUS.
>      Use DKL_TX_DPCNTL2[Ville]
>=20
> Bspec: 55359
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c         | 16 ++++++++++++++++
>  .../gpu/drm/i915/display/intel_dkl_phy_regs.h    |  1 +
>  2 files changed, 17 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4c845dd410a2..d99d4c80fe17 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -77,6 +77,7 @@
>  #include "intel_psr.h"
>  #include "intel_quirks.h"
>  #include "intel_snps_phy.h"
> +#include "intel_step.h"
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
>  #include "intel_vdsc_regs.h"
> @@ -1393,6 +1394,21 @@ static void tgl_dkl_phy_set_signal_levels(struct
> intel_encoder *encoder,
>  	for (ln =3D 0; ln < 2; ln++) {
>  		int level;
>=20
> +		/* Wa_16011342517:adl-p */
> +		if (display->platform.alderlake_p &&
> +		    IS_DISPLAY_STEP(display, STEP_A0, STEP_D0)) {
> +			if ((intel_crtc_has_type(crtc_state,
> INTEL_OUTPUT_HDMI) &&

Use intel_encoder_is_hdmi function to check if it is hdmi or not
On a side note maybe a fix can be sent for existing output check that only
Checks the output_type separate from this patch.

> +			     crtc_state->port_clock =3D=3D 594000) ||
> +			     (intel_crtc_has_type(crtc_state,
> INTEL_OUTPUT_DP)=20

Use intel_encoder_is_dp function to check if it is dp or not
With the above fixed

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

&&
> +			      crtc_state->port_clock =3D=3D 162000)) {
> +				intel_dkl_phy_rmw(display,
> DKL_TX_DPCNTL2(tc_port, ln),
> +
> LOADGEN_SHARING_PMD_DISABLE, 1);
> +			} else {
> +				intel_dkl_phy_rmw(display,
> DKL_TX_DPCNTL2(tc_port, ln),
> +
> LOADGEN_SHARING_PMD_DISABLE, 0);
> +			}
> +		}
> +
>  		intel_dkl_phy_write(display,
> DKL_TX_PMD_LANE_SUS(tc_port, ln), 0);
>=20
>  		level =3D intel_ddi_level(encoder, crtc_state, 2*ln+0); diff --git
> a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> index 56085b32956d..ac2f92482d67 100644
> --- a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> @@ -151,6 +151,7 @@ struct intel_dkl_phy_reg {
>  #define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1(val)
> 	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MAS
> K, (val))
>  #define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK
> 	REG_GENMASK(6, 5)
>  #define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(val)
> 	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MAS
> K, (val))
> +#define  LOADGEN_SHARING_PMD_DISABLE			REG_BIT(12)
>=20
>  #define _DKL_TX_FW_CALIB_LN0				0x02F8
>  #define _DKL_TX_FW_CALIB_LN1				0x12F8
> --
> 2.25.1

