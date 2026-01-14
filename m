Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F08D1C7F7
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 05:54:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82FDE10E594;
	Wed, 14 Jan 2026 04:54:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V0uodWPP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28F8C10E39B;
 Wed, 14 Jan 2026 04:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768366476; x=1799902476;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dC5wkciyRkJ8i/vCRrou7VfQaGfktXV6/k2I8ZGX0lM=;
 b=V0uodWPP0/A3LQgK2gLN4CBxL7uYUfyY1NQOUVjiz6Pb+8l91KrHCMPH
 5/DZi/35Keup8ICiSlKEZyTygv7a4AYQ+AL359398HpfLVxIzV1VW7WRj
 5y6gMhFIH7b9v2Uvn6MnQqRU1DBSh46CPOgjSslZk28O5FQD5ajh4CE7o
 Yd6H1/6KTL3vWY9o4UOZaQfpgc/bYcjLcTHCgaKN+b2t+9p8av5CNtwaS
 UgxDyp90Q8RJgQYhWppJY38QoeAaZIqyBG2z4shqmDRYYE7f5eYFszZyu
 riyv4OZ7Jg7IPJmoVLAxrl5Kxnu5XQBGCemK2ahmdcPlXhEAJ1TqhSV9S A==;
X-CSE-ConnectionGUID: 2b8yK7GvTYapZtLiFbmJ6Q==
X-CSE-MsgGUID: zCOIJkn2QTWdjG/lIYW3Pg==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="79958242"
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="79958242"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 20:54:36 -0800
X-CSE-ConnectionGUID: DJCyw1MITcKKzNCbcSNfJw==
X-CSE-MsgGUID: 3j0lOQPzTMySKYpRywXx0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="203713451"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 20:54:36 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 20:54:35 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 13 Jan 2026 20:54:35 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.20)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 20:54:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vN35bPwgh2W9hOZcaXG2qU+Ilxfea2jT+hjscbazjbbQx40P5OHtBGpMNsUNgIj6PlJXvi4K2lDHD+TZIiHKRuH7ST+WL9GXsjqAJoyP+VXz4nYItT7fS1DX/oXV9mS2depA6s4sFTK6ng1wwrV7KTrIPCGZXKvcql2oUgs52LMyGaRLQIX16fSV7IQ9AmY/9bTmHzH2dpdxCWJyLn2lSkzWTTW7ANLMXC/n4w84BOAvaoG8W+NM5XPUMY/FBqjCFr+6k9SFF496auAWv4nc6hJNtTidhgyL3HBzqjeQOE7YlcU6mwYCCFUdy2Vr6sXfLFm1H8aTcI6IjVJ+VvXbBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wgvtymw5O/XPih5lHy/RCF2i8RIcZVY+52zoWRAx/GE=;
 b=V7956eeTx4k4xsylxgE4n8P/pQjkCCHgpKXp9adqUi5Hib5L8S/V9uNhHuWXPqjxdvkDRahVnde864NmQWqndYjK91y/kG964oNj96hli8/bDk2i7SIgYkv+HjZtmjtPkakz/Hfb/dGs3lssrme8toAgaFiHpYx5KGRxrPlVRmEvzqSQks4EETctqP5ad+k8gk7gvUFO7DnqbcZpfmPEIstcAdcm9DRyDo0F/JPXAbE/GIgM9ZFVtzHJhhIkmtqSnb0RliuGSwZX0Efh6fbB7uAArWgT5SIwG9N0YE2mdTXANKJ4xSRudjIUIdANVDl7AXAuKnnsEFLqlekypplDFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MN2PR11MB4727.namprd11.prod.outlook.com
 (2603:10b6:208:26f::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Wed, 14 Jan
 2026 04:54:31 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9499.003; Wed, 14 Jan 2026
 04:54:31 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>
Subject: RE: [PATCH v2] drm/i915/display: Disable casf with joiner
Thread-Topic: [PATCH v2] drm/i915/display: Disable casf with joiner
Thread-Index: AQHchFFP+XUq7kqlKEmwBekPK02xELVRGd4Q
Date: Wed, 14 Jan 2026 04:54:31 +0000
Message-ID: <DM3PPF208195D8D9B33FCC495AC893A59D3E38FA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260113054925.633053-1-nemesa.garg@intel.com>
In-Reply-To: <20260113054925.633053-1-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MN2PR11MB4727:EE_
x-ms-office365-filtering-correlation-id: 4113c8ed-1d69-45c9-d075-08de53290174
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?8uTmm3WlWpbL2XR2lSD6s1OSX0K4rbN8IHohUqdKj/4+J3XlxirP7zCHU/u8?=
 =?us-ascii?Q?2ECp41H/tBNRhpuNDxi6xrkbJ9MlvwqQ8zzx7Ft5l25mIIBVBuK0TAIJ+Nzu?=
 =?us-ascii?Q?pVIxYCILDRTN6cDUfzrLKT/00ogYOF/KeJUjKUX1fk3UjYk4b9elUwoJDiho?=
 =?us-ascii?Q?NxxxNNp0+O3yUYd2t6ZaxTqLh2hVVhZyeQLgeFJX+2BDHVHw8plNarIYQ/6l?=
 =?us-ascii?Q?CWvVdjqNkKa0j2Vc1dqE3SO1a0sXeA6VimlYM4T2YtXPr4fxycc1osSVF8s+?=
 =?us-ascii?Q?SECkNFQoFPI73cAz7znAilrS2OTh/Ejf0dLgEiBo8YK/NSivLZyHjBEi/HAe?=
 =?us-ascii?Q?JUhWyJE3uLDrbjxjhCiZJjnzDb2xgkAXPxycIGsHBRd34J8OnrWMMebgpd0Q?=
 =?us-ascii?Q?o0L2GTXragdReirqqoCcmzV4bSHxFrctvUtW+YFljajuDAR2zW7yV2b9X0QW?=
 =?us-ascii?Q?aX58Nlvrq5fki1+SZtQuXvbY/Bsj7zVxki1BFI9F1e4Ze94DKHarDwPLOx+i?=
 =?us-ascii?Q?IeW8isAV0ByJ+/sYlAX8dUNunXG6Qo+waR8/7yjVQhYUCjJPxDZSP5Ch3vpt?=
 =?us-ascii?Q?mb7kXscMBZB+KgacaVn6A5zpbSXqAv4fkV6Geh3kLB0n8A9eSObnDoKgF4oY?=
 =?us-ascii?Q?1/KWbeX/cEMcdYzFkmkZI7lrAXcXDypOdlg/UPziLXpfDRJvpmsW/y0jFq0v?=
 =?us-ascii?Q?ukwj1ARuFyruj8d/SXdeFrIb+a8b/LNRsTwsPa+XbOSgKBIxSGyBtTm5cv+7?=
 =?us-ascii?Q?4EIHzw/e7PAfStzNxfu7gYg87znFxUUkhFpxzWSZaOF47xAx/Cr9s2MHEPkT?=
 =?us-ascii?Q?4t/ekHq9QaxEhWLYvBuTE8MBMM8vzxbPcsrz03PzuCJ7Q9NO/UXBX41maC+b?=
 =?us-ascii?Q?Mw6V9ym4mYFaWof9Fb4f3H1glT56uHTAzKxqwPZmdquV6vQ6lJylO47kTSr0?=
 =?us-ascii?Q?0DmBilijUppCJQmHKttcBu1+9hUTBL2RWs2moeogY4gpmQXkECiDlfcKZvlf?=
 =?us-ascii?Q?FOWMYW6Lt1+GdlP3T74NJ0Ik1TfgFMoDmsM71GVJwQOH9u/QFoIKk0gTMxQV?=
 =?us-ascii?Q?+lRF4DdbCjPjsMpPZk9Lde5L3EBQjQGS3iLXp0N1dvbO+rn3yKbTXFvzqfZ3?=
 =?us-ascii?Q?ahgX4iX90eEopTVCPeN4BltrK7L+yGTKnfbMqcjHVcay39OtF5ND6ULsKNud?=
 =?us-ascii?Q?OokEZ2fFnhFPLupiiHTxivHM7nPEAJMTvibr3pviJ7ggQ3TFdnF3alyIzQv4?=
 =?us-ascii?Q?OyQQPdDlVVk9I3OIlmUWlxuDErKgO/3bc+cmOluCa6ZofIpgxqU7zbsvMhEt?=
 =?us-ascii?Q?kQnJ6Lfr6MAfrWl8EGCQqds3VHTjruviJDpfKCIYopq7rN2tJSCOesCHkam0?=
 =?us-ascii?Q?YfvDgZpere0JKx9T1s2k7fpJU+74XEf8W5Ik3Wl+Tm39co00nQAOr5eHX0Rx?=
 =?us-ascii?Q?zsA0qoaHuKL+Miw+zQXV+wVGH4vrDeHDGgH5TSvwmEpFtCw6QCRYj394IhPX?=
 =?us-ascii?Q?v/LMYPP2sBfCeM5xZb7vUv2EQSIXvMLzFJK2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Flh6QPCizf1n3HQQ1VlGPCHwLrIjKr6ZnBhm3LnB+9QDaMchiG78f4PlH3pe?=
 =?us-ascii?Q?PM4QnatA4Y2WR866Ay9983rzk7pCwHi/ceMpU/JKy5Tw7vqFV2+Zp1oglkHE?=
 =?us-ascii?Q?lxfFMOnGIS1qICCNy6pblwKMlq6iIrKJrz6gaRx5c0XB9TW2JlRxYyunC7cm?=
 =?us-ascii?Q?TqHNvlkuX16m/8bqP9TJGr/tqzDHz6ON5vbp6FK8bnjb5cnYsvEb7LDYKnMe?=
 =?us-ascii?Q?3tChQ/390SlJtfg4QJ+C1AP9dO5c4ct5SWTHfPTiQ9OZ9yk42Dphinzpxch/?=
 =?us-ascii?Q?CVqdJuLhTm9M9LRlDyjVQzXB7L9rk2m8u2glZEEf47JkpFffDEMTjZDWRzIy?=
 =?us-ascii?Q?GosV7ZuYYYqWfzkMqe5OIRzp2eOuIi4mGzZfr/kRHucr5EI+3Ay9UncF9vZC?=
 =?us-ascii?Q?tawwx4GuD5vr3PAOVIhy9P6id4PthAkZ7nhY2cjzHcEg4bEBR72Ze8U2GE+z?=
 =?us-ascii?Q?syEYWlRBeJir3Dme7v222zkmdH8xLwZZIs9prGC3RyXz3FaTPZkFm3BWK74r?=
 =?us-ascii?Q?7NfYPxAiozZdhzuCP5xyZ0sM5GMJWdQupcNehY5hUxemXY1RzkONBe60c31/?=
 =?us-ascii?Q?YXo7ttZt+0GeLvz77LOhSHMiDgnJlWNQCR9bd5K+LjR5Q97cUWKFEfbTaRp8?=
 =?us-ascii?Q?o6S6pzD0EswO3DMcWfkpS9dNVy16Bn0wu44/pAvkLKFCi2sNUgogsjGMKkfa?=
 =?us-ascii?Q?tHwmkkYvPgNmoTZ3kMqJp8zZYg1q+1ZZLwkTG+xq20fESsdgs3iuGolNKBEo?=
 =?us-ascii?Q?n3NEIAYIRDZjA+Bym00HnxD5RuLox0zKR1pWAquFDV7PRPkRwJayuzz8fGrl?=
 =?us-ascii?Q?HYM/cv2TdJ81uvtKv2bULu4atyKB0Nnj2I8lCFCdQUnxT5oj1O+GbxxbICY8?=
 =?us-ascii?Q?BcbvpLkCZH7wctiS3EUj0orrA3j3efNLX5V3KfNu2l3Sp0cpWfhBY4gB+O2Q?=
 =?us-ascii?Q?ZBukhXElKU35TJhCsvcWIhlNBvkOS4+HdtXZ5YWqTLQZk8BIP+fz291jkK6O?=
 =?us-ascii?Q?ZG7akzb7lSEwQnBgNi7iU31EZxIzYNKOnmWYhMXP/YjiKvrnPkLVjELAPmWe?=
 =?us-ascii?Q?etkNuwcUrej/8WTLKCd3rIi4LWhTylc2dhMGDA6IuHrEokZ3Nwza/yRPUcqu?=
 =?us-ascii?Q?WDsqj/7cLBVCnSXgu0m3vd/SlG7kRA5cBee1dliLOWmlQLetCiS+DN/C4Wha?=
 =?us-ascii?Q?zYTEwwEzYq9QqhsW1SjFteq5U5E1/K2M3djdLJsZ7oG9e2h+4Ws3Pbgj7gTw?=
 =?us-ascii?Q?4rnBSofpIEtU8XACpus9hrOiYrvZx3L/uht0oiG49EbAgvezNwnBEAlhpqbc?=
 =?us-ascii?Q?uper5Kkb1kLrvBrr6t68U9H8qbrdCyxYnQKVfjpVkP0KJlsFq6JIX/vEwS37?=
 =?us-ascii?Q?sT9+exv8DyydzdvQ/QPHdvTSjyaQyaK4ztOXI7AA4TsNDFmAYwOs16052PmE?=
 =?us-ascii?Q?iYi+xsf8DDGDLEGX1+UaRGZHS8tmpYZKTEEZTKN9cygbWZmlRRvGNFnXTAZl?=
 =?us-ascii?Q?hOtNwuEYXkihgFIJ4dw1khN+GLJipGNzrOtHUxVdpkbRxyiPGUXiG2oCw06V?=
 =?us-ascii?Q?FE9WgAEPXqmWG//a2ehUjw4yAQ0BCF63RNAtjTmebMPv4hKLomDzGN1j5aHW?=
 =?us-ascii?Q?vOrOmGH3osAE1YaBV8iPe5nk0ULiW9zlJLl5K2VHL+TxWlyW8ofTsWpkvVuv?=
 =?us-ascii?Q?BwvQzel4mIv6bgaJwO7HQKItsNyXVvIJ1gj6YfW3hLpyMzhvh48SXfeyH9eH?=
 =?us-ascii?Q?GpxLQcqvWw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4113c8ed-1d69-45c9-d075-08de53290174
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2026 04:54:31.6171 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l+x+lVbo7qaygI5hC6O795vdxOav3GBeyOeRrnpmIPhlQLf2sjqm1ejyQnXZeY/7ZDhylJPrsRD0Sj7KUYf5fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4727
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

> Subject: [PATCH v2] drm/i915/display: Disable casf with joiner
>=20
=20
This should be drm/i915/casf since you are doing the changes in intel_casf

Also please make sure you are keep the acronyms in capital letters (*CASF)
Unless you don't mention it as a function name where it cannot be avoided

> Currently pipe scaling is not supported with the joiner. As casf requires=
 pipe

Ditto.

> scaling, fail the atomic commit whenever joiner comes into picture.
>=20
> v2: Replace dmesg_WARN with drm_dbg_kms. [Jani]
>=20
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_casf.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c
> b/drivers/gpu/drm/i915/display/intel_casf.c
> index 95339b496f24..63c2c94a243b 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.c
> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> @@ -116,6 +116,12 @@ int intel_casf_compute_config(struct intel_crtc_stat=
e
> *crtc_state)
>  		return 0;
>  	}
>=20
> +	/* CASF with joiner not yet supported in hardware */

Commit message does not match the comment.
Is pipe scaling not supported in H/w or we don't have the support in S/w ye=
t=20

Regards,
Suraj Kandpal

> +	if (crtc_state->joiner_pipes) {
> +		drm_dbg_kms(display->drm, "CASF not supported with
> joiner\n");
> +		return -EINVAL;
> +	}
> +
>  	crtc_state->hw.casf_params.casf_enable =3D true;
>=20
>  	/*
> --
> 2.25.1

