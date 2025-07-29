Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 358C1B14B1D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 11:22:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E1EA10E1E2;
	Tue, 29 Jul 2025 09:22:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RxYDKNU5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C04010E1E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jul 2025 09:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753780971; x=1785316971;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NNhUyJ7r1CgS6J1SlroSFbSYO2TY4bEF5yclZVQdeio=;
 b=RxYDKNU5Pe9/2DNhE8kPp3Kv2SExmCc+1DnqfCAXr5mZ2U75D/fBsryY
 zuFIYa2pDrPq9RHen2jPx9n8lAH7tdRFCV0OXa/Ty73DHlwlOkoXl5HzP
 ZCWG7fYfwMYcF9xMOFHks3MRO9OkKYUbc+PFMtuZCRxI9+KfGfhxTKbmU
 9PRTz6zWT0dfrGwQMri92Y6a3Ej3qds/h/SzpyZP5SQ66c5j28ghGqHY3
 7knoVv+QInUtpXgPrliJtCjJZPeIvKwCUP+euqQHn7sBNiqnSmnzdWIT5
 r4xB3VteThSfPt5YVfPKh5lMaXNww5ZyPJbphCYBKdPW4oXwbhvK2vKIH w==;
X-CSE-ConnectionGUID: rKYhSO3jRuu2Du5977+2Yw==
X-CSE-MsgGUID: iTcsDD2pSlSmL72z7ICYLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="56192923"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="56192923"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 02:22:50 -0700
X-CSE-ConnectionGUID: k69gRHhGQzGESoo6VA5dNw==
X-CSE-MsgGUID: JCYAlqcwRZuB52jojXx4aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="166906125"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 02:22:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 02:22:43 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 29 Jul 2025 02:22:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.43)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 02:22:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HQDvI+FmAPaq6XePU+9ioh7cP0EqESURHup3IN8ayUaNcYOQTAiTFg1x0McUqBTcjMfzem9CT96ZRlcYBciVXiu+wYLl7YIuEVKnvMzSduekg5WBtXITCHg/KXMBi+mCmgJ4xMiucJxYWDv8tNvE9z3aPgPO3BlIKDQKVGeJoFBx7iAioiFKIJhFT6y9WSXtMrDflv6yiCdlwquRY2C1IH9DO8kEaBLzmZ+wpD94dg+xzey1RqO+6aj65Xjlg3DMB2TlOVsIYDeOe1pd4yKlVDCQICMC1KmPiwemA8hPH4oKal8ahVR4hF1UUapQGwZdokR8HOnwoEDVS/w0y7gNIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bh1PZdXceqrasJvCi1dEygYacyInapggwYgPprvCtgE=;
 b=nD4cWtiZzPY16qFks9570lbPfI4bkFA+2lcK3HkRLFNvdumjbLJwC6lf2wETeqkEVkJt3WfaF+yufloGpwwubeTiPfl8RpFBpSPiSdbg7zzKqWH82wJk8d8JV5gwWg9lZoycuKIuo/HkgZ4h6QrplYggo+eKm6geVMxwSn9wIKhGcRBmu2AJc6tqL54uHsBN34puWFit5QYdIL9UYp9ciBOGMXwIWhMgFQ3WkYFWbx9ZiAUBJlOZ0gQoDlJHHY7brM9yjYGbKHrJ5NpKEre5IZlWm/fL0Bm9ofWHQFpFCzxSNTI98eazRBItXvBBL6NziN4CK4NkgVeHd8LKDeBBlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB8042.namprd11.prod.outlook.com (2603:10b6:806:2ed::20)
 by PH0PR11MB5175.namprd11.prod.outlook.com (2603:10b6:510:3d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.27; Tue, 29 Jul
 2025 09:22:38 +0000
Received: from SN7PR11MB8042.namprd11.prod.outlook.com
 ([fe80::64ae:3ed4:5277:c90]) by SN7PR11MB8042.namprd11.prod.outlook.com
 ([fe80::64ae:3ed4:5277:c90%6]) with mapi id 15.20.8989.010; Tue, 29 Jul 2025
 09:22:38 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>
Subject: RE: [PATCH] drm/i915/display: WA_14011503117
Thread-Topic: [PATCH] drm/i915/display: WA_14011503117
Thread-Index: AQHb/YzjtYlLFzlX60y+jVX9fNackLRI0ixw
Date: Tue, 29 Jul 2025 09:22:37 +0000
Message-ID: <SN7PR11MB804244B42470F1EA6A2F9D93F925A@SN7PR11MB8042.namprd11.prod.outlook.com>
References: <20250725174657.688520-1-nemesa.garg@intel.com>
In-Reply-To: <20250725174657.688520-1-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB8042:EE_|PH0PR11MB5175:EE_
x-ms-office365-filtering-correlation-id: 52755bc6-bc1a-4ecb-c505-08ddce8175da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?DwNcrIxEvLRns4kX1LAwkl6jmwpDA8Bi/UABRlOCIAG4hC9lg427dJE8sx13?=
 =?us-ascii?Q?LRs0I7NpAW/Gouanjgi0vkw1lpqbuqj7ZzVqKT9TWEfgiUYetIgoHO1TSYUj?=
 =?us-ascii?Q?hiEZGx3DfXWYb+WkdaI/LZVCg7/aPURupPjnADigcLKZDKAcRzrst6WfqD7q?=
 =?us-ascii?Q?OFYzI3cCoGsg0N7fFzHUmcSf0M1q4EHh7Y7ETxY7hMBovHvog5Qs4cGSRdOW?=
 =?us-ascii?Q?iBJ/znbxya3eJ0we3+aAhS209GTLe58N+0je4yX94BwUCOzagH/RvV7HBHIa?=
 =?us-ascii?Q?298ZICLzIxi9rRjBXiel8eFR242kylmoSGjSm36ReBAYwYSbXu6EHMa1hQGp?=
 =?us-ascii?Q?73cClUC9H4tELhY+8IQVAqSQi0EDmdIeY72uqNAXLC9JD8J1wRhcK6p0Bc48?=
 =?us-ascii?Q?7ey1a+vpxXHnMYyMM7fngrU8bGqxLWlgWSlRSJT/LpEnA1tQ8AhOaETnBLbL?=
 =?us-ascii?Q?AuJ4BrzU2qnPgBVcXSzEy3ylIeuWWks30bdoBybrmuXy0mW1X5VMrhUGzOjn?=
 =?us-ascii?Q?vbnJtts2TUfDoScg+Hs/S6HSgSymcC5gCHtsb5xXSWNhYswyM55ObVcekZB2?=
 =?us-ascii?Q?5omesNWj6ldzcWN8lx8LxNfHdEOMroP+MV3MlMBVQBo237/tDZjKO4J0Ukg8?=
 =?us-ascii?Q?/e6Ril+0naboxZtpogQEM8V091EWQ86aST45xdHjVIuaDRaHFTgMeDlJRhjG?=
 =?us-ascii?Q?j41/DfF0jOPbD6CCHoTHItk7zt2EKP7mHPozRq8hSmAyCTjNDRtiYNjnLYrE?=
 =?us-ascii?Q?KffkEHdUGmG2WTGz9NuKv2hKB4IK4w42ruWmxQhUuaDQn+mHRoNaapu4vduy?=
 =?us-ascii?Q?Rokmu0AnuBTjSCI9uXcr7cf5BkWsWbGngTwh+MGbq80bbaTVfNal9ebTxMvD?=
 =?us-ascii?Q?04k2SEOGGSsLA8QrAwlC50JNeUV+YAv3qjK9EXkr2j+sdxtVQCIPhSYgv+Rl?=
 =?us-ascii?Q?E1hb61R0LQuXTHWRDukdH4GtKjem4fDThOU2X/QtVoqMq4NPNOgY41Chpluo?=
 =?us-ascii?Q?u5heV5xxf1XVPLi0puj8uG/aqZkbnL2Jym9lSc/gY2kEFMeqtVuidJTM7JUH?=
 =?us-ascii?Q?pCQILR3x45MYjwjPU57VL6qw/PVHWMDYzv8LcAB1mzhoT48D0jjGPliFJjfI?=
 =?us-ascii?Q?wqCkhauh3lHRcwWZmf51RUloZ/ZofwufatvZMiwl4mrFTWNQAbecCvTskQa7?=
 =?us-ascii?Q?p0obkjYZWgeleFXryjZ37AQNa47szdK8mk/5yVBXxiyodMLMiHcERWxpndsn?=
 =?us-ascii?Q?j0V8ZTYmWTfim16W+ANDG/zqkN9pTl8xjOOFb9XfMQtps63qLMhbCtw/LlVX?=
 =?us-ascii?Q?1P4nqbTcsXCirnzsMHGt0KlKEoNkSaGqZDIyPzkuQ+TrSYLNFVjPLhw1T7M0?=
 =?us-ascii?Q?EW1wYtTtye9AYfTGO+ezU9jlWq9xQMDqqgbL0FvhrSPzy2mTIiOvsJzHXPLK?=
 =?us-ascii?Q?3ESwXgzZO8NZcKxEsMtOG6OKIaSgVrab4IzpG2mAjsqdq0UbtGU0cQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8042.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fpjyEdAWFbeIp3KkDliFrNmkKMp4cY6arRZV34Zgm2UcNPzJqCpEKoERkni5?=
 =?us-ascii?Q?wclyzixaOEkNh1FYZxH34CZ4KH0fSh9X05kn+76l+v2tYHqQXA6a3gnVGcqQ?=
 =?us-ascii?Q?U4Y8Z/MhuNXYCKpY42nz9F/oGXo2iKEcSfitB7ZvtXRIxaCxsxxD2ewej5V6?=
 =?us-ascii?Q?GMSNLXdobFlN+oCK84k3NYT0xfn4A/+gc8YUYBoHgEDgIeTTitsELR8nElDi?=
 =?us-ascii?Q?sjAHd6c7VAf2RQRqhfdO0qFyr3IjMstxvEbDVVkPf3/HNoYJOelG8rEwhi52?=
 =?us-ascii?Q?CNpziHXKv94Hyphuiil3/aQ4TQjzeGcuGg/soYlNyu16K+7bQAKTqKis6HmH?=
 =?us-ascii?Q?TfguufuNpeasw1NYRFp/YMVKOpTHd0B/KIPyAOjqI2cpg+LJZyLTA4gCCD21?=
 =?us-ascii?Q?vy3JJh9bT11w33Mi3cNuk3TCM3gOoz5nSx9bdq40Ts6tdllOOWJG504gf3ec?=
 =?us-ascii?Q?BUbG+c3SBHAG99V/4+E2qZf2XdQNGvmsi7Zw7A2xX1SmkpAsqv55cllMud+3?=
 =?us-ascii?Q?FmUnSEr1w3jfeUtwuN2Oab34wg5jgyWk/ucgFbWs4BpMXZRMwvlsPgKCbGJU?=
 =?us-ascii?Q?VtbUc0d3WYXPl9ZIRr1JdexkHpDNzlOnWWRP5XAVkeHUFICv2/SHDANPC8Qe?=
 =?us-ascii?Q?V3dX470/qg8+7j74IFvXb9Zaf5SKHgpQNHZfwOHUIEUczYt7IoFDQo6d1iqA?=
 =?us-ascii?Q?BcM/VeWR0ro4z88WZWC/Vznt27kjzI10PR38W6YFmKJgN8NLvw9/IxQ7S1sx?=
 =?us-ascii?Q?IFaEeiao3qPnwZy0gFZHqzdpHbnKz2jTw3DHu57N6S8R7Ltqt91I6Xml2Hru?=
 =?us-ascii?Q?0Ho4HprN32ya9NICLsqsBIoLvtEyONhCU8cRUTBecsfXBnbtulwLA753MzOx?=
 =?us-ascii?Q?xgW4/86QKuK1jOLM6RwWIkwU8ztTw5ym2gTVu3Z/2MNqLQGR0ad6Egaw0w/y?=
 =?us-ascii?Q?us0eq3gxkQ3zMpSBNfhm2/vg2U8EGBCVYQZNd9mM+r/NB2EfMjpJb9rnuBTG?=
 =?us-ascii?Q?MxSNv1hdpITpBkagZYtD+y8UzUmSNh4yBwgcxEVx+I5sZkhj09FMzgUCSUiy?=
 =?us-ascii?Q?9n0ardcyBbAFlWF38J4h4QXfXvIH3Bstk91F/+e4PHrUbht1gzN8XZ2fNvoA?=
 =?us-ascii?Q?Oa7Qf5h5YOsZ394vJjJ1L4EBNX8iqGJNjou1IUgrngo9XYt3PDqa6xbNajLR?=
 =?us-ascii?Q?DMGFUqOUbPss8TwmP/ihllhC24SARWf7H7V8opBKOtXrOH5F5gSsKJp4OuU9?=
 =?us-ascii?Q?mt+SqG+RyzPZyri7DAgK+Z2gzI0ZG15l0XRuF4EHXz5mfyP/9oufyex/ewfU?=
 =?us-ascii?Q?/8G/oRGZztUVVjUt/7iLivgZN8TJ+5YgyYsLADMlTs3gj+qnfkyYfhojYEDV?=
 =?us-ascii?Q?ktO6KFaAjtiepDVK4jX9hCqTgC3P2Zcd50ascLFRnAqB2VF0ae9oeerd8W1c?=
 =?us-ascii?Q?FJo3dG7pAqP8L+45o1EyR1z0ipbeTz/gW++2tPazl35ApBlFzE41S/Cu9NED?=
 =?us-ascii?Q?+y0JQl2vTzn+4h2UdYFrt0Z2JyoUJofKuzbrP2uJqpL/NM3THSviXKL+irEg?=
 =?us-ascii?Q?bfnmkbcjdGDQ2Ctqm33CJMqfQ0NTmxv3KEufx2H1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8042.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52755bc6-bc1a-4ecb-c505-08ddce8175da
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2025 09:22:37.9776 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ksbHsqylpyIqglw8MFN0b4YhUhw3Tj7fwuPqqMKldiYECsEo3XbljB1NVaL05imUV14/xXwpUngEWYI3qlRG/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5175
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

Hi,

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Nemesa Garg
> Sent: Friday, July 25, 2025 11:17 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: [PATCH] drm/i915/display: WA_14011503117
>=20
> Before enabling the scaler mask the bit and after enabling the scaler, in=
 the
> later stage after waiting for a frame unmask the PS_ECC bit and
> ERR_FATAL_MASK bit.

Good to mention what will be the impact of this change.=20

>=20
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  4 +++
>  .../gpu/drm/i915/display/intel_display_wa.c   | 13 ++++++++
>  .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
>  drivers/gpu/drm/i915/display/skl_scaler.c     | 31 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/skl_scaler.h     |  4 +++
>  5 files changed, 53 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 7035c1fc9033..97664fd1b9c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -76,6 +76,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_rpm.h"
>  #include "intel_display_types.h"
> +#include "intel_display_wa.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
> @@ -1081,6 +1082,9 @@ static void intel_post_plane_update(struct
> intel_atomic_state *state,
>  	if (audio_enabling(old_crtc_state, new_crtc_state))
>  		intel_encoders_audio_enable(state, crtc);
>=20
> +	if (intel_display_wa(display, 14011503117))
> +		skl_scaler_ecc_unmask(new_crtc_state);
> +
>  	intel_alpm_post_plane_update(state, crtc);
>=20
>  	intel_psr_post_plane_update(state, crtc); diff --git
> a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 399c08902413..0366eedacf2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -52,6 +52,17 @@ static bool
> intel_display_needs_wa_16025573575(struct intel_display *display)
>  	return DISPLAY_VERx100(display) =3D=3D 3000 ||
> DISPLAY_VERx100(display) =3D=3D 3002;  }
>=20
> +/*
> + * Wa_14011503117:
> + * Fixes: Before enabling the scaler DE fatal error is masked
> + * Workaround: Unmask the DE fatal error register after enabling the
> +scaler
> + * and after waiting of at least 1 frame.
> + */
> +static bool intel_display_needs_wa_14011503117(struct intel_display
> +*display) {
> +	return DISPLAY_VER(display) =3D=3D 13;
> +}
> +
>  bool __intel_display_wa(struct intel_display *display, enum
> intel_display_wa wa, const char *name)  {
>  	switch (wa) {
> @@ -59,6 +70,8 @@ bool __intel_display_wa(struct intel_display *display,
> enum intel_display_wa wa,
>  		return intel_display_needs_wa_16023588340(display);
>  	case INTEL_DISPLAY_WA_16025573575:
>  		return intel_display_needs_wa_16025573575(display);
> +	case INTEL_DISPLAY_WA_14011503117:
> +		return intel_display_needs_wa_14011503117(display);
>  	default:
>  		drm_WARN(display->drm, 1, "Missing Wa number: %s\n",
> name);
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index aedea4cfa3ce..abc1df83f066 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -24,6 +24,7 @@ bool intel_display_needs_wa_16023588340(struct
> intel_display *display);  enum intel_display_wa {
>  	INTEL_DISPLAY_WA_16023588340,
>  	INTEL_DISPLAY_WA_16025573575,
> +	INTEL_DISPLAY_WA_14011503117,
>  };
>=20
>  bool __intel_display_wa(struct intel_display *display, enum
> intel_display_wa wa, const char *name); diff --git
> a/drivers/gpu/drm/i915/display/skl_scaler.c
> b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 4cc55f4e1f9f..bbe84e4b71fa 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -762,6 +762,9 @@ void skl_pfit_enable(const struct intel_crtc_state
> *crtc_state)
>  			crtc_state->scaler_state.scaler_id < 0))
>  		return;
>=20
> +	if (DISPLAY_VER(display) =3D=3D 13)
> +		skl_scaler_ecc_mask(crtc_state);
> +
>  	drm_rect_init(&src, 0, 0,
>  		      drm_rect_width(&crtc_state->pipe_src) << 16,
>  		      drm_rect_height(&crtc_state->pipe_src) << 16); @@ -
> 938,3 +941,31 @@ void skl_scaler_get_config(struct intel_crtc_state
> *crtc_state)
>  	else
>  		scaler_state->scaler_users &=3D ~(1 << SKL_CRTC_INDEX);  }
> +
> +void skl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state) {

As the workaround has no relation with skl, need to add appropriate platfor=
m name instead of skl prefix.

> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +
> +	if (!crtc_state->pch_pfit.enabled)
> +		return;
> +
> +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, ~0); }

I think we can mask it during first time scaler enablement, not sure touchi=
ng every flip whenever scaler is enabled maybe not needed.

> +
> +void skl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state) {

Same like above.

Regards,
Animesh

> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	const struct intel_crtc_scaler_state *scaler_state =3D
> +		&crtc_state->scaler_state;
> +	int id;
> +
> +	if (scaler_state)
> +		id =3D scaler_state->scaler_id;
> +
> +	if (!crtc_state->pch_pfit.enabled && id =3D=3D -1)
> +		return;
> +
> +	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
> +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0); }
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h
> b/drivers/gpu/drm/i915/display/skl_scaler.h
> index 692716dd7616..ec0fd80a3933 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -44,4 +44,8 @@ skl_scaler_mode_valid(struct intel_display *display,
>  		      enum intel_output_format output_format,
>  		      int num_joined_pipes);
>=20
> +void skl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state);
> +
> +void skl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state);
> +
>  #endif
> --
> 2.25.1

