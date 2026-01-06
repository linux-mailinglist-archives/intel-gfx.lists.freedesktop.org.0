Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5160BCF6DC6
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 07:15:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5690510E483;
	Tue,  6 Jan 2026 06:15:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IAV3kaEn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DC9510E480;
 Tue,  6 Jan 2026 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767680153; x=1799216153;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rGOK2ZdS+COv0tgl4/f7bh89XXVrXUlh54l7JCbHH10=;
 b=IAV3kaEnwfKrGTIfFnZM38KhFMoDduppGhiiyB8nac/HyphfhI5SNwYb
 lpu2X6OL3qTocDkenrsCilUlt97DHn35+41XfipKEnqyUvkfSyNWnUjmw
 l3kaj1w/zxEpp+pRdwCbvXFSvEa0jZoEzNzsOPsX3ruQI5uflWY6D+12b
 m9Baf950SdV6JoNhgvt3s21aeELQK3eQkokS4fbmr7gtgRMVLwT61fXsp
 xNZ2b7o1vEC9//VGNeWNjc2qovu3PpszaTS27KvVnKjgKGiSlsYfaulOm
 9+XayZLYOicAA2fmWKgyecSp2Ojtgsi7WbAAQFHjT1krvcWnaVOoAEP0Z A==;
X-CSE-ConnectionGUID: tfwbVWWVSEWDviX5lGIC3A==
X-CSE-MsgGUID: R44PmnnDSWaxjiVOa3d1zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="80160325"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="80160325"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 22:15:52 -0800
X-CSE-ConnectionGUID: 5Gwv6tBuS7aCViL6SQUD0g==
X-CSE-MsgGUID: E3hvaY3DS0CKQEvAcZm1+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="233711851"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 22:15:52 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 22:15:52 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 22:15:52 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 22:15:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RAPufDjrtD6umAkpRdjsWJGDHMrB4lWbUxhD3gg9ZAyT7TG7sESAZbT4ofvv/NHNpWwV5XcHFx1hMUL6Yt1ph6MpSx1k+E529a0Ko5Lg5AYXR7YNZAJ7VppQfpFDqbgwxxkPyAWPIf6OYxgYErj8aVEt/ZEXAHtIjUkM7YC9jW1sBFtqz+eULrKAGbONrJ7iisVj8WZE4JWez7kDcu8GrNBRopxUL7bwgmQTwHUlIC1rAK0HcnG9w0BdUTBm5Ksbd6Pejs4pS5VMI4yVYT2rwozuzzYjcWlVAUCGiBaA57bfJUNX/rRZBocbd9i2oWk7QC+8KA+unwTF/8cCU5K6pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xbAgHxC97gQRAaUKT9KOPr48p4pAeH+o4hX0mJRIv1U=;
 b=Y4YQXkgLIY4L3tBzKBD2Q8jZyHSn3af0M4D73hkZ9K84HmECi2wgeff+thbnWU5OKYoDkYBfJMadl1Mt4DQlWPhtJi/5fd8jdSARnW40DO996tVSh5QtHJa2lDn6TxHBfY++hZ/IQEyYv5Tpk+RsPjYSCVUn0yvgs6j0v/IHXaq7CFg8wJY/h+/LqdNaqtGGw/1wDQhb24Rd7Nuw9XzJzvUngKB62qZf3IYI//bG4ebGnSnfl0TVy/y8XGxA5NH8ZOKVKKGrLftY/kxFnCBlmBDckYFigf7n16ZIiHjPXhqlB6/7U0xHP+77rDUA8+ocecqcCL078upI6CyRaq2ejQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by CH0PR11MB5249.namprd11.prod.outlook.com (2603:10b6:610:e0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 06:15:49 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 06:15:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 13/15] drm/i915/cx0: Drop C20 25.175 MHz rate
Thread-Topic: [PATCH v2 13/15] drm/i915/cx0: Drop C20 25.175 MHz rate
Thread-Index: AQHcb2nsRdlrwsKqAk2qHwtGfjR3q7VEyL2A
Date: Tue, 6 Jan 2026 06:15:49 +0000
Message-ID: <IA3PR11MB89376D4C2DE5B881B0EA116AE387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-14-mika.kahola@intel.com>
In-Reply-To: <20251217151955.1690202-14-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|CH0PR11MB5249:EE_
x-ms-office365-filtering-correlation-id: ec1d8033-308f-4674-8ba3-08de4ceb09b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?1ihseDaBv6eVY8khNCbuf+9vMqpNG/Bp1nHhfownvwf+GQ+aZLw6wohvK7EM?=
 =?us-ascii?Q?QBRrytM9OicLaPEUm9GNeiRbGmToDojM4hM2G5N6nqWbJzT0VC+RTw+5ZLyY?=
 =?us-ascii?Q?wLJjOYbKuqvAOhjH7yCnm6V8w1aYmNO5FiDhxNITfh91sabS76yQTy+n/wRD?=
 =?us-ascii?Q?NONCYinpKPvMLW1JVhDmAUq2Nbf/19O8RtC/J5/HBgN9Tvyjp2zVbB0SxmJ/?=
 =?us-ascii?Q?mJJnuceSvydURrq+yq9UjviL6DwXuFovM9AbrZP43r9IEUYbwPrhdvPqBaXQ?=
 =?us-ascii?Q?YVOKM/2ebt1YThMy2JvGaFAD4c8qlyGByua+Qd4Q1cVfC+6ysj54ft0LomVu?=
 =?us-ascii?Q?NWH+opC2F9Xu/2/gGt4/iFjFoL2R2d4udhHLAcvOYu13YjOuFN/70KO1BeTt?=
 =?us-ascii?Q?0y7h/zQFwqW2NYtnMnCmnt4NWTwtDdGOxveKtxrN9jIasdir025VygWoraC7?=
 =?us-ascii?Q?riA8B/D62fAuAfDSfKGL3P/W1oY6EYJ+SNzDqmuMsbUwIb6+UtvDYgaqMiuf?=
 =?us-ascii?Q?zrKcDMV9EukjyFoBFJIbPuvbc9gsryZ8sreeHCgWWB/0Pl1UThP0frN9twpB?=
 =?us-ascii?Q?2mfXUCT+FTTfwRH2hPvtXeeETjc9CQJOxoH6h7M4C1zSHYFuqWvOPiUDAvX6?=
 =?us-ascii?Q?s0EKQiu9PtoYOJ2P9hlaypicVKKVPA3etCMdYmpbOup/TcvpI53t84boWveq?=
 =?us-ascii?Q?YI+W1ChGMmYqRI6rdcgLG9AjvIyjc+pWcSLWWq/MtwjT1mQSqB05QXipbYl+?=
 =?us-ascii?Q?O57OB8Gzybd0O/wYz4NYdw87qF5uzXLwyKvPWaW+uu8RgmFfpSJ1gn3ioceY?=
 =?us-ascii?Q?vsDZ6iTGLYSs/Z+RED7p87hfwu/Kmse22Yhx1MZZziPJHnvGY4HyGgiybS2e?=
 =?us-ascii?Q?hIq+konwsT/ZWS7SKBb+urBXg4gujGilvYZjN1hzW2FH5e6FW67KyStuqmxU?=
 =?us-ascii?Q?HvD4MkBNZiPquRh/tC8c+b/Lz0hDlNwIgLAFIEumdI9dF3dTnJZSFVV7JV3h?=
 =?us-ascii?Q?+cAX2Uo2XUYGwbk6WFweFoyVVezvBs7Cy7EV8sQRWiHS4KdjHySgNUvaKNGV?=
 =?us-ascii?Q?bNKZPvNz7oqK3Ygd7pbe1UxxHFBVjGholicTCDfTi9UZD40K+mo/rVp/tP7I?=
 =?us-ascii?Q?2DpnEeuJiYZXN011P+A9OVjR3dzdQU2+Xo0PIVhCNVFsuIj4cBwZvsXGdz2g?=
 =?us-ascii?Q?hpk590c6VeQqV48IA1dMZBzOEcxF/k+DavHeyz1ZQVy2UhZDcLcGS+UK92gq?=
 =?us-ascii?Q?MPYtnuXNKOgBDvB7Cl2BiRy/oMcyvwy8ty18CnhAEUQadQJaik+Y5r77QlS7?=
 =?us-ascii?Q?wOFMw8rEm8icjFZ1pjMu53V0XvR17GCXXJAQ9yujcUPzoW4LPQLVgb7C8hJC?=
 =?us-ascii?Q?8nogpnFo7bhvD1xhglqD+KPO6eGr8npIQ8mMmEnvG9GJYD2DnPvkv7Cj8/63?=
 =?us-ascii?Q?Ri5oWdDegr2VE9Q2FiicCGpzPvXFf30TuspHx3aGDaCyl2govkqpeB4OqfBj?=
 =?us-ascii?Q?LSKEjRrG6Jf/zda/arg4aJIfTnohqPibKSTo?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QF7eqhwhZasUGu4Y31dqbAhTf8woPGMkSK2WV2sH5JcJhTwInyVEhqwohewx?=
 =?us-ascii?Q?UYposZPmOuUIXgzXfKGRDciQMuybtu4hJ2LUN6xARl+HylFLnaZzIv1oJ5gx?=
 =?us-ascii?Q?/OJojGwt6esifJKzSh9dMQPFyQWmBDEq/MeKiraior/wQsh1lfWGQ4gU6PAF?=
 =?us-ascii?Q?QsNQZo+7BwiFbX785YhctK9XCkT9Mg3oXJbsIBbIUNi/ZuC+TPU/V/GxOVLr?=
 =?us-ascii?Q?cL4Bx5CVBgJe80xvOqk6tXH3AEx9Yc3PY9+ADDTjiQ3uwhrKa7u6aaOM+2ET?=
 =?us-ascii?Q?W8qZAYbwuXgsW6D8CHJ/nBbfp6G63PEPhatbqP5qeCd1Z17bLpK5J2yp2nuk?=
 =?us-ascii?Q?HIPh0sbreDObBxzxRV79zJ2EQL5BQIFwHW+HnsDalsjTz5XRmFtOvVegl7Ke?=
 =?us-ascii?Q?OPeniLr5IT949PaC9d64LJOB24RKeDmG8bVoSMwC93I7Hq9+nk544pzuAeLl?=
 =?us-ascii?Q?CZT0k7BFDYeAoQ/Fi9MfoCTOcG6Xjn9Yw6KUyudYZfIE7f/xS1YBIguE36m2?=
 =?us-ascii?Q?t8tvgQZWTMqaMyzKMv4ZgXLSN67f1MWfYIod8TIgyHinwtYJKHaQcRNQKRUO?=
 =?us-ascii?Q?1VZlwktQOl+KBnGGr+kcpkV7NeeBs9urAtQCjSwTztWSOvLu2li+J6I6ZlqA?=
 =?us-ascii?Q?DZEt1vc9WWgNLQ8JR51vDf90eeVzPdV9QE5JXu4masXGoPISJveXdu9PZjEK?=
 =?us-ascii?Q?oQ8Q8rbUYGJIj8S3Cph6ADVtLmMfWQritM19XcmoPlDG06EhuOPY4jeE0VGo?=
 =?us-ascii?Q?MgI+1JdKVFMTVOBhE45wwMwxrLPwO16QFbgSo5OLELFIXlvGXOWJmgTS9Z+t?=
 =?us-ascii?Q?cc/oP2NnNhNQaWEKv0+UEyB6AaJFMgF9J0mwRQ7BRjHvVao+ogjQ2jlulULA?=
 =?us-ascii?Q?Chqdl1MyWQDJ1kci95Mia632X1Xt/PeFt77uCTsLl9VP1jVMsz+YVlOh7cmR?=
 =?us-ascii?Q?X0NrMpKc2u9nI4j5kCqUsZqtejKFbvbWCIZx6H5q3qN4MaMJk5Jkiuvrt8EV?=
 =?us-ascii?Q?zylsaAlK3KSDdQcKR38fmMDZ/puMvi1SZoiXptDuzQnp+6fAGHkgPUTX8wQu?=
 =?us-ascii?Q?oxayP9PYRHOj9STEEtAcKAeXrPfEx3kBbDVISEgYrXDDLw8Po5C1qt66nDlt?=
 =?us-ascii?Q?Y4njK8CUSGg2HG26IBRXXWHW9eBP1TNV/DDE0PQFlDUYp+JgrqQZavNrezyb?=
 =?us-ascii?Q?JkRxEF6fIShIPoujfQEEfZ/DgQ+w5BEKybOWCj583hSy1wCEM9mLy31J0vKg?=
 =?us-ascii?Q?1yayTe1Hwophvp7QvD8aPBFji93KdCQVVgCq+VNItJNxaY8WRK95Fk7Sd3be?=
 =?us-ascii?Q?tV09Buknz9tSxajVbLzQcx0JbACF0xM7yWWisFcA3i7ATZIjKfjleKFVCDck?=
 =?us-ascii?Q?o3aOGG20Fh6Jn6ff9tJiVts5/iYo0BBSy0gxwLGW6WoVLIQfnPaFaYJs0eoF?=
 =?us-ascii?Q?e95aDMkFT/henWo+3qjm449Vk9RqWi9YcB3mo3CE2YBrScFZ+dBWgHeSC8VL?=
 =?us-ascii?Q?wVffIPJJtqY/CGWFuWiHecVWLqSpQHOTSmX69TJMB8xMC4Vej3FzDZymFdNH?=
 =?us-ascii?Q?rOid8pxwXFmbZkEPNrbtye4hZQWnzDbm2HWFw2UEeTG5eOzk9tOFYZazw4dj?=
 =?us-ascii?Q?SMfEJc+xkGNrZzRmnbDW7vk83bAj99xv+yf9R9zNYRcNiJ7eJj97mA96bjxm?=
 =?us-ascii?Q?X01GyNRIyK96t6+c6/nS1RQUsHNAYtDFxmpmLiR5tT8NuCGNGq9HIEphtYd2?=
 =?us-ascii?Q?ftaQr4zWEw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec1d8033-308f-4674-8ba3-08de4ceb09b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 06:15:49.7012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5qvb3SP/4BFBFTgOBtOgFsm8J9D8A0NXzOJM/NipFvuctRqxu4MtsEYnxgzx7ee9NsOr8Qj0gMBY/uqd/RUKgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5249
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

> Subject: [PATCH v2 13/15] drm/i915/cx0: Drop C20 25.175 MHz rate
>=20
> Drop C20 25.175 MHz pll table as with these pll dividers the port clock w=
ill be
> incorrectly calculated to 25.2 MHz. For 25.175 MHz rate the PLl dividers =
are
> calculated algorithmically making pll table for this rate redundant.

* PLL
Other than that
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 26 --------------------
>  1 file changed, 26 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index a8c37a14d427..5d0bca0f75b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -1797,31 +1797,6 @@ static const struct intel_cx0pll_params
> mtl_c10_hdmi_tables[] =3D {
>  	{}
>  };
>=20
> -static const struct intel_c20pll_state mtl_c20_hdmi_25_175 =3D {
> -	.clock =3D 25175,
> -	.tx =3D {  0xbe88, /* tx cfg0 */
> -		  0x9800, /* tx cfg1 */
> -		  0x0000, /* tx cfg2 */
> -		},
> -	.cmn =3D { 0x0500, /* cmn cfg0*/
> -		  0x0005, /* cmn cfg1 */
> -		  0x0000, /* cmn cfg2 */
> -		  0x0000, /* cmn cfg3 */
> -		},
> -	.mpllb =3D { 0xa0d2,	/* mpllb cfg0 */
> -		   0x7d80,	/* mpllb cfg1 */
> -		   0x0906,	/* mpllb cfg2 */
> -		   0xbe40,	/* mpllb cfg3 */
> -		   0x0000,	/* mpllb cfg4 */
> -		   0x0000,	/* mpllb cfg5 */
> -		   0x0200,	/* mpllb cfg6 */
> -		   0x0001,	/* mpllb cfg7 */
> -		   0x0000,	/* mpllb cfg8 */
> -		   0x0000,	/* mpllb cfg9 */
> -		   0x0001,	/* mpllb cfg10 */
> -		},
> -};
> -
>  static const struct intel_c20pll_state mtl_c20_hdmi_27_0 =3D {
>  	.clock =3D 27000,
>  	.tx =3D {  0xbe88, /* tx cfg0 */
> @@ -2048,7 +2023,6 @@ static const struct intel_c20pll_state
> mtl_c20_hdmi_1200 =3D {  };
>=20
>  static const struct intel_cx0pll_params mtl_c20_hdmi_tables[] =3D {
> -	C20PLL_HDMI_PARAMS(25175, mtl_c20_hdmi_25_175),
>  	C20PLL_HDMI_PARAMS(27000, mtl_c20_hdmi_27_0),
>  	C20PLL_HDMI_PARAMS(74250, mtl_c20_hdmi_74_25),
>  	C20PLL_HDMI_PARAMS(148500, mtl_c20_hdmi_148_5),
> --
> 2.34.1

