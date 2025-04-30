Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE87AA41AE
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Apr 2025 06:10:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4144910E6C5;
	Wed, 30 Apr 2025 04:10:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q4edyhRv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A6A110E120;
 Wed, 30 Apr 2025 04:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745986222; x=1777522222;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DG7rh6LOHhRkPEsU+bGfeZWZeK4z2pZCyJy4h0c2aF0=;
 b=Q4edyhRvjC4uuB27tnO6eGPR60VvbETgi7hnMXY7cq3iRDuW6/OcMXOa
 Pp0ByewBnaSdWDteWHo27S3GBlLqruMp/XU3eAeEEXVT+1tDqxgjp4hpf
 hXxkHFFSxjFr364hT22BnuaripfzUXZLOXq5JVHnNGP6GXVWalG6exCkc
 bc28+shg8usbYgWaVHY6NpeD1c6wOqXFzfvxo+y5rzkWnPpUJRaYWqJaE
 NZhGeyLvjWKGEXD0i0bx8wQ0doRRvIE4dzvLa3VPzaZWHCk+TjsVpWOyx
 l/rVH/oAPgZfKyqJzs240a7Bd8xY7WKMF3W35LHuL+uy1hF+lPJKdFrSY Q==;
X-CSE-ConnectionGUID: o4ZlUoPDSG2Vb99FxOUrqQ==
X-CSE-MsgGUID: kewqYExYRoGHEmjWxi4Dwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="59008555"
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="59008555"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 21:10:21 -0700
X-CSE-ConnectionGUID: Hmnx1yzNQYKVBk5kpTlJYQ==
X-CSE-MsgGUID: UgAuj6WOQDO13xJcqvTWbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="138831625"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 21:10:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 21:10:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 21:10:20 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 21:10:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wrb9uYj7l3hjVnlSBEVg7X4vxBB9J2LsBHq1lvjKUEeQsgpN4k/eFaD4OWcjgFsivLvSiScQ3CTYokhYTd7I1oFMO2jQXxjICMuv0oiiH5FfodbEmLAVGYSGbeCCIDDjYUzmfFw7TrH2ZR9LrdZjMGh9gFKwOaZnfZmLIuvuZzKcB4znljBH/Thc0tJxeGAQODBQjNsMUjbewUpxUV1Diz7ESWIa434DQUOau1m56yJ5rGzishYKtz4NBR5HPsL1zMfm/culTYn2Lw+Cvcsr7261hHIL/keyX6nPR20iir7Bzg5a15tukAit5qy1MFTEA6BKuPrfFmYG3+MLWW5PKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+sSSDdqilnPAnkuso16M/coHuFvtiNsKqB92rBH00+0=;
 b=dWq0uB3BtGTZtI8IA4gKRhZtV7F/n9XJBYAtuca7cURo6irfyV9B1lBQl17isLI56ZtoBQ8cki7hnXxNs6n4wPyTY/eIdW+nQBXxqmgL/w7jTXF91pnarzk12yTR2sCOtGLVpm7I5EBLoaSqpK2+tI9ro9Kz0nm5pP3YoUpeKVVX14hvxQaX533oLw2shQ6Cw2pbV1RY6NU2pHe5/U3I0xCHSsyRrF0HR66aMVnGbZt1j0RxrX/zMoU0Oqm85tnEfTppNZP0oDKQMFpU6i8KQaYVWkG4ra4A9xmYUpylvIQ/CPAa+F1osSj3wBN8cK0Tk4GMSuvnGBg6JKH84SBBrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MN0PR11MB6181.namprd11.prod.outlook.com (2603:10b6:208:3c7::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.20; Wed, 30 Apr
 2025 04:10:18 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8655.038; Wed, 30 Apr 2025
 04:10:18 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 01/10] drm/i915/hdcp: remove duplicate declarations
Thread-Topic: [PATCH 01/10] drm/i915/hdcp: remove duplicate declarations
Thread-Index: AQHbtVPFm+pmsJTyzUyuWg2S0bB2LLO7oKQw
Date: Wed, 30 Apr 2025 04:10:18 +0000
Message-ID: <SN7PR11MB6750217C53585BE1BAFEB099E3832@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
 <f300d7cdb2af681291df938194f575f05c2c41bc.1745524803.git.jani.nikula@intel.com>
In-Reply-To: <f300d7cdb2af681291df938194f575f05c2c41bc.1745524803.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MN0PR11MB6181:EE_
x-ms-office365-filtering-correlation-id: 5945415a-f6d6-4ca9-bdb7-08dd879ceaef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?xiXMd2BLRIcK+PykYNG/M4lXhBrn9/4i3vZVzIFc7MOx0E8skt3qksxI29L2?=
 =?us-ascii?Q?lMWK3yim8BEl7KoPvhrQdWH1BL3MaudQK9vAiDgB/dAiCshGPY3cFbK9IcIT?=
 =?us-ascii?Q?4oBCgqtJctSlK3ZhYN3h8kX0MKcGncX/iIsM4hnbr2+Anv8oL1pXq8sFs/zM?=
 =?us-ascii?Q?TSzmUGHyMvXFEH3vGRXONHgLXfRNka4Uojl5XoHYL2LZViCmrRuvF8EwiajL?=
 =?us-ascii?Q?BPtAhQFwz9JuKE4I4fmlozHfLDMKdBUmFFuDw+3G5t9G+5ZN3xiLOY2xAxfQ?=
 =?us-ascii?Q?qNdSLrFujGPN9W7dippYM8rezMuqtOs0V3S6zF5YekEy40+ELjB1tWAtUsun?=
 =?us-ascii?Q?02/slisAH/IF4puhQI3R3osN0o41kf+SDTFXXoYvkCCLpzkSxPJHTDZq+R3A?=
 =?us-ascii?Q?4vS3hFi84KDIaG/h9Ow02EZP7wa2oAUWdTHPN7nRCgfHht7HpAiRpo3vaDSQ?=
 =?us-ascii?Q?XzE9h+IRW1hpnj4s/GASRE65B4e8er7THljY5JkSSsUkiwj/w7/Ge8HlfAdl?=
 =?us-ascii?Q?r6QlJOmqalDMGpAOlpulzAXK3umxtpGUmFoQbaFTQCFJc6JRQS41MQb44UXS?=
 =?us-ascii?Q?S4blCxA17dZ37gXW7HbEvaFvskfeX9GqrHFy8cP/ge88eKR4vMKup//UFlU7?=
 =?us-ascii?Q?b47CzotWXvi72uVjo0gfhaZ2KuKrYM1/ZAjShmIv7dpZ6odhT6BvHh4ueYFU?=
 =?us-ascii?Q?QgjktW+kiLRbZJyTzZY1NXyHpKhYEDe6kOrZThU5wxLoelo+XcF9N92Dk5B6?=
 =?us-ascii?Q?3QJ0MhOkCWLG3GNhLzGSWxOv8V9ex1+Aaip/8R7IRtVc/O9ABMrizlTK5cvY?=
 =?us-ascii?Q?4mjg4Vxm0gsiq3jdAI7R3rCeDDcncXA1je5GBykQglVUxOUMIicMZKPSLvQj?=
 =?us-ascii?Q?Dag5Hb+h5EcBanMn1Q+y/d9XoToNu/bEkPdE0dxPN92w2jCo8hmNlLEEoWBl?=
 =?us-ascii?Q?zvDLKONBPvirbw6kGlQmzhT9RKjrwDDpmmr8AvIhpBk6xwG7VFYOBayyTikK?=
 =?us-ascii?Q?302hDnXHlVS8m7hpX6b0dHaJhxQiKE6FQf4dPdEE9+jv8DAYgPWJdt5iCg3b?=
 =?us-ascii?Q?U/5E52H0TxAsTdcrvxD2DvQTK8TNPSqsrjQgFIO14SL+2GDNBxqMxhMURP3N?=
 =?us-ascii?Q?tZMv7og6a2WTycvVYBZrTeF/7rjA3GERyPb/kakwrUzSdmUkjMwufJN821hQ?=
 =?us-ascii?Q?bCq1BbXAf+QmXxmEuRHulvQWGTgi7A5KxvdJBYnCORJJlsyEBeU/hWMyJypU?=
 =?us-ascii?Q?h78olMco4DYYflYXGOqX468BBQjdbTT6lgNGurw+cxkVaIUcV7c+5TFJO7bb?=
 =?us-ascii?Q?Uq2c9pfc6bjqEOg5gnqqzEFw961dOSYcE6t8teGKyj0fe3QeKxM5GAsCe0JJ?=
 =?us-ascii?Q?5RFbm9vABnAst/UazmmYP0cGWlvVc+aHf5pNIhXnYZcsSQvbmOLmfRLzz3MR?=
 =?us-ascii?Q?P9/O7edJtJ1PgZwXL+u2jSS3VxKFTHEk9qzX36nHIdFw5aWmGJi5NRTKQjpo?=
 =?us-ascii?Q?U2iCRi/CTQU+uUM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8wvQca/mF8dxRGvJd5dTwvNZPpHflObbJrJ5BKVKyr2186HkIDELdY+NUiuV?=
 =?us-ascii?Q?v6VCDDam3+VL5RGyeabOWl3yTqKGgww+BRbv0D/PCqtZX7Rpw6tVF4HLyNns?=
 =?us-ascii?Q?ZJfiF+S4068GgBrsEAXQF5ezRGffE58Bef2qK3LOVPrAYtKwyXGJXJhexe+d?=
 =?us-ascii?Q?/Rea2/GlYaqozI+97F+iL0kSWfP3nviqDw4jOSFp0Qqmh2eUlFG4P5P7A3fJ?=
 =?us-ascii?Q?cBJ5aWCWDK73pvAtmTD9lowcB/ouJDvTZDuDn5Qw2epK/LAUnNQI1dlfcDn8?=
 =?us-ascii?Q?uUJNCeY/q6zmCtDkm6ed447ws+ZHuCY1Q9DZVg6BsscUiOgPcgQiEVd4wCld?=
 =?us-ascii?Q?0NhMpe9U8v6NH2HyqaZp38slbMavAe+ME3EVXQLUwNxv8P1oms37xjOMHK6U?=
 =?us-ascii?Q?RACWjmUjAioPVj9x+l/gXhePFwdThM/C/W/ImZluaRyny3e1RP+HLJSORc/b?=
 =?us-ascii?Q?cWhyM6JfQ0WfZPu0+NQoM3f15uP37d1oVYakHj3Q5jcosqnSwpeNtSJ+RBmn?=
 =?us-ascii?Q?TYledYiBWooXtNR8G5quHhNN40yjILC3pIvpqJB6MX0Q9AXmJgarHbhmahgw?=
 =?us-ascii?Q?MyLf5GO3D6fQWShH+St5kx7BeFl8pVVsrsgxDRIjljeN9DUfN51KTRHo2kLM?=
 =?us-ascii?Q?3LlK3tGMIfw18OzeqZMLHjKQw3j1vLvmeT5E0VpBUtmOtpC9R859ouWs8S7b?=
 =?us-ascii?Q?Yr3OVe99iTEkWoSw7WhhERmXuSghPS63TK72bIh5PeNzeBK5i4L4jdJA/pYC?=
 =?us-ascii?Q?uVIHgCOvGP6VpSM8HHZtYhmDWN3np8bxZYCx2xp8DeFTYUU1cie0VnjtjhoK?=
 =?us-ascii?Q?zk2suj9W5hJB8gEMr1k78ize/LqIkxzDSrRTTd5cWHWY6MavtPqeGYfdlr3u?=
 =?us-ascii?Q?mo1fvRDyoz6CT8rfN5YPT20e32MSlWhassLFXgXDIR0w22yYvilPJbSrQl44?=
 =?us-ascii?Q?mWOf3ce8BgOZvcZokp32mJkEH3rG3G2tV0sTm6O8oAzOxhgczydR7A1xtfCq?=
 =?us-ascii?Q?hc0cQoGGDZyMxxnYP5WnoIoWDLdRpPpNoilHIIzrXYlvui3HPtkUuRZWuov2?=
 =?us-ascii?Q?lRRtlsrwSQql4FkCER7ZV3/ewIfP645T/w7JXeHQEae+GvV0H8LyAb8LbVQM?=
 =?us-ascii?Q?vZjVqE0hr0VHlEHtpQnLl9Ic1zPM5xK9ow9dx47YBrt6Unymh8GHfdEnJMax?=
 =?us-ascii?Q?85VZIvQwHW9GNOItmkuDKl3w9lnQThpCLNIZ2Rdx4Z68uN1wxWUR23CRO5F5?=
 =?us-ascii?Q?Qj9AFFAmevc9qEDdp70OitVOKoff1/WqCA4at17sCKIINwgGtzcZ3VPs4dbB?=
 =?us-ascii?Q?eYwPi0Z0FIm3+pkgIVFkIoWeJfaoORd5wigy6/CcuGBygf5/qTbrRHP0fAMC?=
 =?us-ascii?Q?YQqV/tV4D/JULQ/A+aShCz+1+f1Jra5M35nFAL/UWlDS/Z+iIO0SErQq9P9L?=
 =?us-ascii?Q?5wz7Z7FMMHznPa3D0KSziJ9oT0+RvKCr0FSpXy19M2XprLetVaTUOTJsnwKR?=
 =?us-ascii?Q?cgeDTzN+0HczuaSYnuPFEMzozVRCDf4Q1BilJQuXqVnVeEtC5KZeXhwgQrmR?=
 =?us-ascii?Q?Or8OM+kH3HV7Q9hO+jb5Dd5xscTlNDy15xFD2wJr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5945415a-f6d6-4ca9-bdb7-08dd879ceaef
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2025 04:10:18.2066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0XKzmyvQwlTsq2pEGSER0VHcVRwRu+A6ZTW3AdCZFJYdPfpPofbVvXSXmTWxaOwoZtrO9uyAs2ahV6CwDsAz0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6181
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, April 25, 2025 1:32 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 01/10] drm/i915/hdcp: remove duplicate declarations
>=20
> intel_hdcp_gsc_msg_send() and intel_hdcp_gsc_check_status() are declared =
in
> intel_hdcp_gsc.h.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c | 1 +
> drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h | 5 -----
>  2 files changed, 1 insertion(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> index 129104fa9b16..d4620b54beba 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> @@ -8,6 +8,7 @@
>=20
>  #include "i915_drv.h"
>  #include "intel_display_types.h"
> +#include "intel_hdcp_gsc.h"
>  #include "intel_hdcp_gsc_message.h"
>=20
>  int
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
> index 2d597f27e931..1af2f7c745fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
> @@ -9,7 +9,6 @@
>  #include <linux/types.h>
>=20
>  struct device;
> -struct drm_i915_private;
>  struct hdcp_port_data;
>  struct hdcp2_ake_init;
>  struct hdcp2_ake_send_cert;
> @@ -24,10 +23,6 @@ struct hdcp2_rep_send_ack;  struct
> hdcp2_rep_stream_ready;  struct intel_display;
>=20
> -ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_i=
n,
> -				size_t msg_in_len, u8 *msg_out,
> -				size_t msg_out_len);
> -bool intel_hdcp_gsc_check_status(struct intel_display *display);  int
> intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data
> *data,
>  				struct hdcp2_ake_init *ake_data);
> --
> 2.39.5

