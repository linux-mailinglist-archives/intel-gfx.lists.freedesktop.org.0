Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCF4B3F855
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 10:29:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92A2610E5D7;
	Tue,  2 Sep 2025 08:29:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BQlqewsi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 809F510E1B8;
 Tue,  2 Sep 2025 08:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756801759; x=1788337759;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hZ4Lt5AmLoiDgBUzwfIyESia/mCAYv3x2iwFa9jON6Q=;
 b=BQlqewsiI6izDtaaTkgqryMl8qwMTFBiZzq5CbtEGqVjzMHqUrarckuD
 eBJ1L5IlGYYFgNJgQsZ8TZLShS7XbDEdw8FHCyvES18B+T1fwvpvVD9GW
 6wKp0WJ7KjbeX8YxhW7nCH8hV9hxF6xNBCE5+v1E/Wc7I2HKtkIfKygai
 EerHRvSmBogG+sSidFg0/GH4F0J6buTU5xpE1Q2SjLVgBroBo5ghQj6D5
 kWYk3vVoVdzJNQS0ky7qkzC88qLQAQwZF+L6UcRKpeTyqRh6q0oqq/lsw
 MayN2nW1IHGZFsCUUEb2rMxVAOYBv0dmNKmXYcyGnsUcsonz4u4dtvLF3 Q==;
X-CSE-ConnectionGUID: mkZI2103STS9b2GHrUMzbA==
X-CSE-MsgGUID: U2ASRZEGRZ+Iom2I9Ec91w==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="70166761"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="70166761"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 01:29:19 -0700
X-CSE-ConnectionGUID: DLfjEl2qTya9tqjGaaBriw==
X-CSE-MsgGUID: W++9vTuASGuOI5zVeR5cMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="194856420"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 01:29:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 01:29:16 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 01:29:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.85) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 01:29:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hnbRfksH43LEmX6bLX1TJIXBzywR3Jq52JfG+U+0GtaD0kDGcJa5q+rruhv43U9JC4o4Dx1NzLFFhEp5APEGp29AChYIwWngszTfrfcNm6Iqf20zIz+Khqht+8dnc3t8PVr2uDadIJrCBhhLsmTKmxcJwpvDuRERa2S5vBIaHmTOF+NNimX7imWOOYW7pjN7jRmuJnVsrGIorXTbqbEEM5rVw8GqrxL1JURckP8uL7CKihrHwk6/Y7G8AoPVjZUHeEvsSx5VgHnZVgleByRx8kpU2OW4sWOIJxStZav1euba+/RZi25948K6dEcG6utOYbjEOh0y+xa9BK5o+68oXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PD6Kvw/3N96NXuAA/z5pB//GBbEJTOcrZbwEwlysPY8=;
 b=dSLXW+gnkqyJA9YhiyZL/fkc6QLDNSrZLmSdFD8nsP++mTCQL+TPq2tgQ+q5vN9h37yNCigH7zHm6uPXmSkX7rYKuAaU/17GDmXzahQ3MAAI8nOCTGIs0zKqf6HqKWuxfiKRWtO93bi10WS3yBt3lasm4PPvYVcdnLnXK+OWXFU4p5FwT9cVWAFPcXLHrSHm4pL0I2XsaG/eJwDD892wA9YGARTjWpkXOx7l/SPZACnvlyQV3Ki7/C+mTS3dgDCqu5sGaALuHb/jVy2PbvZUdimflD7ZOFpg6McKGaZd7gaALdQwLPbHANRLggHdq+SFIoePAnTMkUNJAfDTDuWH6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY8PR11MB6937.namprd11.prod.outlook.com (2603:10b6:930:5b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Tue, 2 Sep
 2025 08:29:14 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.9073.026; Tue, 2 Sep 2025
 08:29:14 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/backlight: Disable backlight when using
 luminance control
Thread-Topic: [PATCH] drm/i915/backlight: Disable backlight when using
 luminance control
Thread-Index: AQHcFl+H2JStcLekikmEGtVLNGqmf7R/lQ6w
Date: Tue, 2 Sep 2025 08:29:14 +0000
Message-ID: <IA0PR11MB730716C9EEFBF74FB7741176BA06A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20250826080005.501534-1-suraj.kandpal@intel.com>
In-Reply-To: <20250826080005.501534-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CY8PR11MB6937:EE_
x-ms-office365-filtering-correlation-id: 99d9bf9b-3b57-4dd5-0141-08dde9facced
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?EvXygDe5ZKW4U5wbWj7v0l7c+U4l0xsjXD1pdnKaLQHnfWmoT/EFgwVdN6+E?=
 =?us-ascii?Q?WOZT1bm9RfpjP3eZ+bP7bwGKM3gZEDCI8Lo3wVYNj9T7SVOPLpqKAsuELZDH?=
 =?us-ascii?Q?a5IBzfq92btB+M6e31EeNFFV5P0PBuLTR27TSsKq9IHRnaL+z3O+982ivRy8?=
 =?us-ascii?Q?/VG8OFEsCkjk/Kf7JFXDM4yyZBs3J+AHNTlzl2hWAepeF+AOyklnC29UwPUW?=
 =?us-ascii?Q?015U95OtL6cknfWNmUp2hW0PmpBrQUGVfYpdiYl3Ath1mHUQ3cR0QRLjP8Y9?=
 =?us-ascii?Q?P/u0EALdzUQahgH27eULZAIoIpP3GQySN3XZLrymZbzDX706BxtbY6CtR9UU?=
 =?us-ascii?Q?loxolhYqeCCPlfMjJ/pHIa4dBF8iBCN9dxMfmFxshIKjI6xKMhvL69q4BXSW?=
 =?us-ascii?Q?ZC9O9C2XZzQNHHUsUop6C3zd/wwBXuTR2555tv4zfZmgJfoGsCY/LIKRax44?=
 =?us-ascii?Q?khOpyg3j/TtMbaBUoMkd7PuQpmKhY35uC0nMsmGjGu2XbAdL2zBXWD4/B3q+?=
 =?us-ascii?Q?MTuo6duS/oG+JpZmbmP6d578yQioma5AChoPMb42VycYgDDeT1NSL3XX9OK5?=
 =?us-ascii?Q?1x8e//Hc2voF9812WpyDUBiDMQXhX+LgA6y5cUanVvgjPp+kT7VWFq20n3nk?=
 =?us-ascii?Q?HcXQ+W2yp9fVxIlvGic3Y5yL9+9bh38Ssh+YPypIZbjCLYnTsnI3d15pj/0W?=
 =?us-ascii?Q?GTOdjpBlt5GW4LtHi8NmYqbp0La1WAWedSvtuhkoVwcEEVwZbuqz1q4sHJJb?=
 =?us-ascii?Q?df56qc8XA6bgL9YPjR+IJ0MBH/LU5pjOZRjfbXiUfokdlo4DhjXdrjWGxoJi?=
 =?us-ascii?Q?Cm0j0P+Uf0tZQyLG22RZ2XVFvi09rqc2rcUweqeCxk9QyPWXnEbjZ0yMzuLM?=
 =?us-ascii?Q?NIZPyJ18FPqmN/oXW4ctIYdQZo4BgHWRBp0I2UJyljSLtPOW0jbrEXNJAJrO?=
 =?us-ascii?Q?3q6B7vWUXjrXm7ZRzALncvN5sCZ4iibYqaQILrMyJPYNH1Gb/FWC/x+qDlkY?=
 =?us-ascii?Q?q9IZ5stk3pD8rcmDncDpB4BTMty8X1qPFXjtvmQcdSVyzR7sAMRQIZbOjT8U?=
 =?us-ascii?Q?Kt0QDDF/cgddbm6VumTf04vODioYxm8rbJ1KQXXuxeNLlPR7/hXqP3apCBwn?=
 =?us-ascii?Q?gn+o0haXkX5Nt1WVZfIzZ57OWkZUxlb2T+1qvir8mlY7vVbK4v9QCPHzM40z?=
 =?us-ascii?Q?phFU6xE4MbIHbUWR+oJcouqZVHJUhorb47nEkFtfurc77qOC/nB+TQIj/txv?=
 =?us-ascii?Q?3xKXCV0goO4gxDGVrCCFHQB8T9pbZ24+fgd7xEjR6essUTgCvmLBuLXY36dT?=
 =?us-ascii?Q?1+v8CpmdOIRqNPuUsqOvp58D+nThMoNQ+6282JW3CE6wbp+GHvyR0wdULk41?=
 =?us-ascii?Q?6+IIYWuXjEC2ff34DkaQUz9Xb+aOcf8NKJ7qa/0E+yKh5eV1YDobOP7ZfR2K?=
 =?us-ascii?Q?QQbhdIn1k3Wh+4KSMR2R8unDUP+pQqoAzttPnTmWlqMqf7C7NuHf0g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CGMC2I//rDGqQLf9xZMIkX74kDCyF2r7F5ODXQTZDvFKudGkeETOyaMH+E6z?=
 =?us-ascii?Q?Vb6QAMwYMYtiVnAK+qZIpbofzbFpDmdQBE7YonK97p9GZINBOYpJkIPfyGIb?=
 =?us-ascii?Q?d+UEU61GD2Rm7rkyopl2SE3iL+KkBjBBsoX2iRnOMsxHbJ4wWt8hTb3tiAEo?=
 =?us-ascii?Q?zHSaZyxStxtnh11U1F0RmMmjcsAzZYd7U5HqhlBwsip63PQJbxP0cP8e4E6E?=
 =?us-ascii?Q?KDexRfDi7JQreSSncHxZQt/Nk02IE/UvnRn4d69o98iavUPaQsWam/Jbm8+N?=
 =?us-ascii?Q?qSVo1TZISIEKX81iID1E92X+d/uKKF1MheKq+8VZbGBYP1FvfvbvwRvbUKja?=
 =?us-ascii?Q?2HE2gXkPbga14EyVcfEwU2bELnh8sb0/0ClNtaqO6i0ENPc4PK9zz5tzQoZO?=
 =?us-ascii?Q?qIS0vCVZ7bThylkqmPh8bAL0OKO98Lf9qpl3t+ut3cuw+S2ivP99KLfLcz+p?=
 =?us-ascii?Q?K3dIQMmyF9XZP+VKlSbQqWjlafDL6Xdjh5YG/0KPWQRsiIEWN3yZhP1JW9hu?=
 =?us-ascii?Q?739MxPi7+QxeMktoUtOn5559SPXUNDaVVewzXvbVGOgRJsEj1Uhpt1ozLN6I?=
 =?us-ascii?Q?Sa2MPVcHw8PVcmFx0APz1/QB9t11G1T3mVr/7Tzc0l3z1zKcW64DrEWkENaJ?=
 =?us-ascii?Q?C7N6gdpzscDpknrwWPTyPuaXKB44+yb5U4/iLRVzzYHMLrnQW7GXFfapTCKS?=
 =?us-ascii?Q?oamN7hpjMBWyjTdoFtVaLG3GOONVofMVSLK29+6kOUwiHas81Cy/+jHBI5+C?=
 =?us-ascii?Q?vCiurSAZg9gjQhyZvw0qdQlFczBbg2LlpHGv9ALgNnC5Ka4m2j991QS0f7fU?=
 =?us-ascii?Q?H8LqZXl/QNka8vobQHkF4M1Ot9BuLO75sSa1ohzn8i3gWtGPB0piZWsxtvrD?=
 =?us-ascii?Q?MYzxMQHgdwDiv02yJHkDfPuSk4W1PIBFRJTYSFCpjyXitkUSdepWsU/okR/K?=
 =?us-ascii?Q?gAlI72Nt/+WQS612HKER7l0opAdItttGVJSYBZ9p5EozjAcT3NLHjBmwZDKg?=
 =?us-ascii?Q?+o9UXRhlgrTbofxE4WXqTlksgXjHrohTiXR1itZb3nVI3CBdH0vTGSsM5LaL?=
 =?us-ascii?Q?m4970uoKts+J71fvDKemoDbtdzOvHZCAtIK0BIYajFeEfHAmptqFcECZj4Sw?=
 =?us-ascii?Q?fO76J5DHIdcj6LTszp5fEVfdrjowogpyArfALohFbfEiYk8pg+eFnZ4rLGo5?=
 =?us-ascii?Q?NwX4CEE6rhAOqwrHgDNTd+0/Q4KRPCqSYvvijIzIzyGjUUxL2DvfKprH1hnh?=
 =?us-ascii?Q?wZW3O3z7u9UvTIK7pMd5PPk4JT0q7WRmuMHifuw8q6dCZzS0k/aDJDJpL4t4?=
 =?us-ascii?Q?RAVVutM+9cOv0TzWAaDOx9mdKl+2fHq6f8p4NBWsbCHUxqFFx6INyIRabq+f?=
 =?us-ascii?Q?7s4ZIipNef1MyWn/ShWblOZDfq1V+xVW5l2UdXxuxpCiCzr+P40wQ7ZZPTBE?=
 =?us-ascii?Q?H7WnXEPMroh07VGBDijFLZ97ej7JTq9R3AjdiMOyEoSVeJ2op/k1HoH4YnnE?=
 =?us-ascii?Q?Ug5TvWaFogogRiyD6XFMPTtWJDzTV3xS5UHIvL05VXTwUmqQVI7gnLH7M+R2?=
 =?us-ascii?Q?NopT/zdIuMEtYmZ/gBwfe6n2DB+PLy99rIJ7VKUz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99d9bf9b-3b57-4dd5-0141-08dde9facced
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2025 08:29:14.5140 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C1hHtkhPpyTI7NlmTXSRZ3hO2dxuQOD21ME625w79bxrz6TLSXSlds0bcq0zXDb3wN5rP7td29Pb/EC5b37aLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6937
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, August 26, 2025 1:30 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/backlight: Disable backlight when using luminan=
ce
> control
>=20
> We just return when using luminance control instead we should be calling =
the
> disable helper to get everything cleaned up properly.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 12084a542fc5..7306858467fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -508,10 +508,10 @@ static void
> intel_dp_aux_vesa_disable_backlight(const struct drm_connector_state
>  	struct intel_panel *panel =3D &connector->panel;
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder);
>=20
> -	if (panel->backlight.edp.vesa.luminance_control_support)
> +	if (panel->backlight.edp.vesa.luminance_control_support) {
Basically this if condition itself can be removed.
Upon removal of this if condition
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Also update the patch commit message accordingly.

Thanks and Regards,
Arun R Murthy
-------------------

> +		drm_edp_backlight_disable(&intel_dp->aux,
> +&panel->backlight.edp.vesa.info);
>  		return;
> -
> -	drm_edp_backlight_disable(&intel_dp->aux, &panel-
> >backlight.edp.vesa.info);
> +	}
>=20
>  	if (!panel->backlight.edp.vesa.info.aux_enable)
>  		panel->backlight.pwm_funcs->disable(old_conn_state,
> --
> 2.34.1

