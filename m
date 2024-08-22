Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A904395C074
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 23:55:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4780C10E119;
	Thu, 22 Aug 2024 21:55:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N5VceGje";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA34010E11A
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 21:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724363754; x=1755899754;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q63/nodqxSNN1+Anzu01FTrtwY2yEQqFh44BHZIvsuY=;
 b=N5VceGjegUaun6NcqcuwtYCrVjgUHi+7z3OBAxWP8pyQaVJm6mkp+0fG
 g/5HVzpG1+Iz0M7zRfRQfC0c/RGHguvJx1ijXGFE6DRaA/S5FPBgXsE7a
 1gftXMvKs10U8YQQVseRFPG177mmd0hY0MzIL5evE+/zmaucJw6gE2qC9
 O2lHHWE2pgDuhOkZzka/qhLvkq//JP0s81N2nsBQz5cU7FhaPF9Lg5UQI
 h7VjNsPl5ZQiFZWKzsaWRS9gtDLWqOFiifim0FeE09hsuSAhzZrD8lXTF
 VcLWTP9TaUJnol0Lm1gdGJ/WRZ14mwVLq/dVk30Q6SGT8GX2T8BzIOEQr w==;
X-CSE-ConnectionGUID: 6e0YODEESXO+FXsj4MHa/A==
X-CSE-MsgGUID: 9rAVOSPSTG2aJGVl3BmCgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="33474059"
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="33474059"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 14:55:54 -0700
X-CSE-ConnectionGUID: MeGj5qFrS3OGJy0vWrZQFQ==
X-CSE-MsgGUID: 4ftgvjPdRZO6nGrMcR/CXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="61618713"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 14:55:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 14:55:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 14:55:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 14:55:53 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 14:55:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=THO4/dCtg/xXawgk9ft3g5V07rXypJwACAbFP3RKS/qZddJjRQIX4kLtaXZC6anWiY+iCfRz9Mdoe7QwjIwbMJsYVQc5Z2dMowOFJ4AZ3Yy27nh/4aoC/ZSmHFNFoKiooKKTRQwrGSE03VVZPgg9jcF7Dz7S1ZHs8Hc4Ca6CTD0W3Mde9EMn0Thgna6Gqym54dez9X5HHbtW+3smvEK3Vi1gFYYM0fzeehG7WFa8r3c89DchTbA5PO/rRdgV/UgsE9TKiSDQvW1z3vKw/Sos5d/5NfiCaaWhffrJPJTo8WvoAwroy1LqM7hhf6e411WUYE5Xu/S9IorvdrAvE2VN4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aYEQfOmGsrNkCps80A/EpVojN6nTiHvw2eYE8UFsq0k=;
 b=REQ04osWvILOMXMSI3c+5HfTHCHIM61T0iB8wBjdX5dPdFlydQDRBOJUVYTrT0V547cFufGrjR9hpCREF2ociMcyk5+fDnd0y/pFF+uLvNeGF3g3tTF2nwrE4ZhAOTGkjQtZF4EPS+8Vj8YCckV/NubRxloD5IliXGbjlV5bdll3XoRy3q+B048vK4i0swbon/VdK+b0Ycw4HanMcUOHDXtDKR7viFZskUhNa/d4P+1HwAh3iQJmdAEvCWV2zxxa+FQK9YY/n5qy9oAozVDVLdjasVhDLECsoUwEYGrvWYedxpGDnh9PSO+wsLJLz+GvoDhS6tV18xfucwdLUlWJEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.18; Thu, 22 Aug
 2024 21:55:48 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.7897.014; Thu, 22 Aug 2024
 21:55:48 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915: remove unused leftover basedie step code
Thread-Topic: [PATCH] drm/i915: remove unused leftover basedie step code
Thread-Index: AQHa9KEtHK11w/fjLEK7B71T70DFPrIz0qRQ
Date: Thu, 22 Aug 2024 21:55:48 +0000
Message-ID: <CH0PR11MB54449E5B506DDAF39AB28D7BE58F2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240822143946.2526425-1-jani.nikula@intel.com>
In-Reply-To: <20240822143946.2526425-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SJ0PR11MB6789:EE_
x-ms-office365-filtering-correlation-id: 06aae389-412d-4688-0667-08dcc2f52e89
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?5QNXcdLSQjUB1h8JNBSCAKBIDyVSa3jQApbf2HrQ+VsXmMBGMzjrCc6HnDpj?=
 =?us-ascii?Q?VuKA3bX3TjEyY3cNzMgfONLmIM8C1o/2uOx+A32YHW/1xAEinMuME5KHaRJF?=
 =?us-ascii?Q?rlmNmy4EqkQcX0QZXU3bWaJzrYvrcJ9LhRHzvhLm9abmrotzgxuTLeLTaBmz?=
 =?us-ascii?Q?9EYe3SVwRuLSNhnED2tz5SbG66bfBXmm1hsf8d2afOPAQEAdyOSIRLhi8nYd?=
 =?us-ascii?Q?dQLEJtLR71kOVH/1TF81Q3A9qCZiYJGgVgQ18CBHPfDCCwgfoJxOliT2L+2Z?=
 =?us-ascii?Q?0D4sWiz0+74A3z2oxVKykXZMmlFNW9W8ftO9ParbQ/QZ5V8aeLZxqwJ5bFZK?=
 =?us-ascii?Q?Eg08uOlt2Zcikux/lPgAPSq5D4vgZpK/0Hhsmj6aXyyazM2Zz/VI2Saec5XW?=
 =?us-ascii?Q?P+IRviVHdMxcu4pZQBBysmkFZ5GIShBrakgUAKhXUmGIe9eDCtiavtefmacS?=
 =?us-ascii?Q?e23SAMJOhokkFof+afPCdNKJxL14RlBi1yeBlvuEg1foValDz4pMeODH4qMa?=
 =?us-ascii?Q?n51R1In2NXb1KsiOwdDG/N/93EVwZKoofDQ1JKF2Euu9LR65Iex2T/AlLNf/?=
 =?us-ascii?Q?dFr9ai3wjiJa1VuPSyD6KrJ8FmxTe5/roMdTvVfib5FtetEoy1zkR+xWZDov?=
 =?us-ascii?Q?ACmzOKDYd7Ea3n+CQ30c+dG00Nqpl7u/jTUfOAMF9BujW3gd1j2kkjyrKYR1?=
 =?us-ascii?Q?Vtdy9bmVzIPKo4Ux4ywsmFoBlPWIz01esXh/KfWrFaM6VyjdhiDTss+DVS+h?=
 =?us-ascii?Q?BgVLGrpjEMneqd1WzolE8nQJE9OVJwRuwEnNMOXPwlp011MBhzlL2RBxNKb8?=
 =?us-ascii?Q?EjOJc5nStDyNx91YysyRWeEVVATKXov/jJYpCnfCf9U4CZvnRqWg2UEwgMfF?=
 =?us-ascii?Q?EA7YtXfx8AhYV/7GPoq9fj4fPNx5vXD2tc7U+HRNKslfXiqRYJQmjaCrANKa?=
 =?us-ascii?Q?jwwPfaR/Ox3o2xuTcTmUoHKUd53HIt3sHy9LfnWnG8QlA54eY1XQH00vGF78?=
 =?us-ascii?Q?31RDQh1zqJibh96hbSqYqsqSgqClKZ8rrlMIQD0wu/MOtB0Z186q/IOFXfn+?=
 =?us-ascii?Q?a8pUM6RRHtKwGSREOzvBmuqFmiPgC+JywKKz4cFuluyLagioga7Q30uCfQi+?=
 =?us-ascii?Q?SixID9OSr8GZIcNhM2h/QN77JJde2yRHgudivavFNYjuEVqueax6aPdtQZPT?=
 =?us-ascii?Q?L79u+37o43SKROhL3bAReGfEPiykbTLB+G3dh7M9/E+ZHPDoBnDj2uAFLQbT?=
 =?us-ascii?Q?wJt8fFJ6x+wPESGWDlvgX40RliFc/a9moTDkIMd5ixVf5lGvRzv15dypJ11O?=
 =?us-ascii?Q?UwQBtf7K/0V+3WzT5/v2nPrTmlN/A/RpsFnD6OHIdfLO/bz+qTGT/BDYJl81?=
 =?us-ascii?Q?qYIuo9GTfDNWNJAjrHZCCgS0iA68vYDiaBRh3aQwOVMHLw5vCQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3KviRyfzlWIe7k3yFrJPww6+tOiB1SDqlZ/b1+pD1PuhwxOxzFI5VBpTeiPQ?=
 =?us-ascii?Q?4+CnXj+oUM6m41ewSDtgHm/bE+yEE7Bl603ev+4fSpWeK5ATMIPxBMfES//8?=
 =?us-ascii?Q?gN5sLrA6dfheLux8LXyB5evC9xvT+F96+HwnyLzEJzUV+fxkO+H08I/6ZeXW?=
 =?us-ascii?Q?XsiQlQd4K9+FRrtoWgTmTXC9KCzG6PVEtwZbGGOmZJu7uQHLEQcJUMqOPeWm?=
 =?us-ascii?Q?HC2FmwCBBM+TUujbAaTLdm+UIfYFP2XkS4A3F0USd0f7Vfa0dTttO7wGWXvl?=
 =?us-ascii?Q?tdZaXycbP67dbM4SLsXbwlSq2Qd2+CZCydDnor6YDgBUVbGFHLn36UVzgD5x?=
 =?us-ascii?Q?dmAKRt57cdpY8fKe8TFiWnjAihuxc+JjK8CPXuD6m2/XimdYGyD8965RO+Lk?=
 =?us-ascii?Q?+yg2w/+w4jf94ivcUu6YMjWZziBwzTEBdZju80Fqlehq/ZMujX00KoRxEIKt?=
 =?us-ascii?Q?C1LmYet0UgW/UcCm6bJDDqlzrom4PPGJ61eIx5E2/x9vgz4nh5puDZroW8qa?=
 =?us-ascii?Q?UjGwqpo00W5uNA40RqJY3OOAJtyTCuDtAtdqiG3KfcDODXnNvkXo+dA+ddBg?=
 =?us-ascii?Q?GbwrMUsSZb+dBV722fNDYr5f2SiqJcNTe3ngHOQhCdPAYOlQ09dOKMC5wK3I?=
 =?us-ascii?Q?bza/ZAnJ5s/pjpqFtlUD8KVyv6ykdqh7GUziT5WgqttS6dRHR9Q/wcM1EwrC?=
 =?us-ascii?Q?5NPhjT05AmoYcarmIp4IEdB0Fh+KBOYRghiLqZqxJ+HhmpITGlm3KJzYFm9V?=
 =?us-ascii?Q?s1qeaxaSe0d+hD6T5qyUkpBeufa2P+Go3/9sc4zPEqsBBHo0/on8+gSeGEGh?=
 =?us-ascii?Q?pccmjtypQhgXVyk8o/yXHqL341n0hHkzzEvxj0MpXN1x8DpyEtgFlJocAkXA?=
 =?us-ascii?Q?W0R8+IRprYzuZp/i69li6QQYTLLbA+J/SWapWA8XU2NpHLCKWgxJqjzz+T7n?=
 =?us-ascii?Q?kfE7LEnsnwleyTj+vyXRjRq+5dBiWm2CafBL9dWMmCsiQEKrGhxAXNrHxawo?=
 =?us-ascii?Q?HwOlIlV5iK8moWRAJpTFdKpWjjilmc1jeyTMbZghw/2YwPSo3ZuxIzRROnA8?=
 =?us-ascii?Q?njKQQkV6lexkMaZEnfNFSoP9aJcFsNLW0F6j+tbmi9LpWDwHs3qXGe1w7okr?=
 =?us-ascii?Q?Zgr/OMSBh0d5UQodlHLiVDQrkX+DsuT9N+yr/LqrkYmMuS+b4g6a1eGGKrL3?=
 =?us-ascii?Q?Ho/miyvJv0CYZ5znMA9Jt8BS34LC5GdEsJ/fFjo7leJ49vCz2Xg1+hyaqunf?=
 =?us-ascii?Q?CjLG+ovTmfxkdqI6ojuQ6ipLjsrxMwyf+u6q60atzdt2W9FKncywRhSihksf?=
 =?us-ascii?Q?ZRccFTU+WTAEP759TS0sldCz7rC3sKK5vuu0jvUSqG6m555kAR2HYjY0tur/?=
 =?us-ascii?Q?VpRuzVINQWDJoXaKoMEEIp2VC3azgc8b++Wao2dgWqUbIuKmgwZEeWk6NJwk?=
 =?us-ascii?Q?FINeH5jE5D1vv5UHmMzHGkPRp2k9A808nEGdvngRod+51RK1njuBrqq14Kq/?=
 =?us-ascii?Q?boFNrDqsf3++SafL9ek90O4noaHmUCsGjEQHV+P+oxYwH0Rq4uW647bbPQrq?=
 =?us-ascii?Q?9/mvofiJbZ2J7yDhWhGsnlIanIsRGT2Wlt2O8PnD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06aae389-412d-4688-0667-08dcc2f52e89
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2024 21:55:48.3102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: thJTRpeOPcVgVMxx0YvNhzJEw5p0Xa7sF6t86UhE2SWo4gBab+W8dIQkbDqtEjwP0+tFYCH6HW5z6+AzmpriJ7+moS9os5Z3l+XisPV9E6Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6789
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani=
 Nikula
Sent: Thursday, August 22, 2024 7:40 AM
To: intel-gfx@lists.freedesktop.org
Cc: Nikula, Jani <jani.nikula@intel.com>; Roper, Matthew D <matthew.d.roper=
@intel.com>
Subject: [PATCH] drm/i915: remove unused leftover basedie step code
>=20
> The basedie step initialization as well as its last users were removed
> in commit 326e30e4624c ("drm/i915: Drop dead code for pvc"). Follow
> through with removing the unused macros and struct member and debug
> logging.
>=20
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 5 -----
>  drivers/gpu/drm/i915/intel_device_info.c | 1 -
>  drivers/gpu/drm/i915/intel_step.h        | 1 -
>  3 files changed, 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 3b1b16e71cf9..eb4c33e83c7c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -410,7 +410,6 @@ static inline struct intel_gt *to_gt(const struct drm=
_i915_private *i915)
> =20
>  #define INTEL_GRAPHICS_STEP(__i915) (RUNTIME_INFO(__i915)->step.graphics=
_step)
>  #define INTEL_MEDIA_STEP(__i915) (RUNTIME_INFO(__i915)->step.media_step)
> -#define INTEL_BASEDIE_STEP(__i915) (RUNTIME_INFO(__i915)->step.basedie_s=
tep)
> =20
>  #define IS_GRAPHICS_STEP(__i915, since, until) \
>  	(drm_WARN_ON(&(__i915)->drm, INTEL_GRAPHICS_STEP(__i915) =3D=3D STEP_NO=
NE), \
> @@ -420,10 +419,6 @@ static inline struct intel_gt *to_gt(const struct dr=
m_i915_private *i915)
>  	(drm_WARN_ON(&(__i915)->drm, INTEL_MEDIA_STEP(__i915) =3D=3D STEP_NONE)=
, \
>  	 INTEL_MEDIA_STEP(__i915) >=3D (since) && INTEL_MEDIA_STEP(__i915) < (u=
ntil))
> =20
> -#define IS_BASEDIE_STEP(__i915, since, until) \
> -	(drm_WARN_ON(&(__i915)->drm, INTEL_BASEDIE_STEP(__i915) =3D=3D STEP_NON=
E), \
> -	 INTEL_BASEDIE_STEP(__i915) >=3D (since) && INTEL_BASEDIE_STEP(__i915) =
< (until))
> -
>  static __always_inline unsigned int
>  __platform_mask_index(const struct intel_runtime_info *info,
>  		      enum intel_platform p)
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index d92b3050ac78..b485e959f064 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -108,7 +108,6 @@ void intel_device_info_print(const struct intel_devic=
e_info *info,
> =20
>  	drm_printf(p, "graphics stepping: %s\n", intel_step_name(runtime->step.=
graphics_step));
>  	drm_printf(p, "media stepping: %s\n", intel_step_name(runtime->step.med=
ia_step));
> -	drm_printf(p, "base die stepping: %s\n", intel_step_name(runtime->step.=
basedie_step));
> =20
>  	drm_printf(p, "gt: %d\n", info->gt);
>  	drm_printf(p, "memory-regions: 0x%x\n", info->memory_regions);
> diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/int=
el_step.h
> index 83bd1190edf5..22f1d6905160 100644
> --- a/drivers/gpu/drm/i915/intel_step.h
> +++ b/drivers/gpu/drm/i915/intel_step.h
> @@ -17,7 +17,6 @@ struct intel_step_info {
>  	 */
>  	u8 graphics_step;	/* Represents the compute tile on Xe_HPC */
>  	u8 media_step;
> -	u8 basedie_step;
>  };
> =20
>  #define STEP_ENUM_VAL(name)  STEP_##name,
> --=20
> 2.39.2
>=20
>=20
