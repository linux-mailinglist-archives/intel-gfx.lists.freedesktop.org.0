Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FDEA286DC
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 10:44:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1CE10E0F1;
	Wed,  5 Feb 2025 09:44:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cfG24TXB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DE3810E0E0;
 Wed,  5 Feb 2025 09:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738748539; x=1770284539;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iJpv2+FFWqvzVQAgaWNewKsQPbVYLIjzlaWvCtSfM9g=;
 b=cfG24TXBIiNwpDnDx9w5RJ6aSY+ef/Qf/Lk8/18AwnvvfTdJkFMCuZAK
 jXz8e0oq4VUFZsrgIAYnkKcUoZc9zpmeRxjd3yKr2u1On3nvnmGI0Y90E
 2DEhLwM7AAvRZOWw83v+tZE3cnIqkjvb8/vSAFptYkb5XwEUxWyTovOIM
 cr6rvc0c95KWy5+LTZsuNr+bobQ08Os+KJ4UxTdOFN+o+MZNao9CUJ9NY
 uixDDceE6mTJJeWAHIhjwOQDPrGwWg6iZxig2QoCzOmERvJIix9RXHbdL
 PCqrm3wVyiQ2kFL+1WGDkq4yhtaXn5Z3UU+f0eXurR+BSVsIazTFc+ene Q==;
X-CSE-ConnectionGUID: r6AP6cWkSN2zuvMsKLwIpw==
X-CSE-MsgGUID: t58OGm8xTqqMrZiQbHrV2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39206353"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="39206353"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 01:42:18 -0800
X-CSE-ConnectionGUID: 3jTothZ5QK2HSSJaiiNylg==
X-CSE-MsgGUID: XGZzjKhwQ9SyptzWe/YVpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="110644235"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 01:42:19 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 01:42:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 01:42:18 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 01:42:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eHJuqn2Nq1DXtzmjJ8aBt+M2iIinorSLdPh/y/2yKOVHbOXg8WUqE4SFVo+WxnRaq8KpaRFhep8Iqs8u6NBSRkughSToU/w1rr/egGpysSaf8IY6cny0b2KgLImfHV8xqbrFfghNOp2SHeEAG8d+RkeDF0B7FmBazX4LoaGlJZ9vWQid+BuTnI6824KZ4coV6y4Caw0iCLehF7IBzjMPK70AEDHPDxwWzwArhwVkWMzj6D0BMWT97fYfJL7cXG/uEuRme0RPT9+D2pMYwr/GASnuqcUNXO7w56ZqKn39TP46T9g+bwmNBhobwxu6+nz1d4c3Ykah1Bv88HCo/KHc/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9usPaEglDx87ROUSNXby26YVSJRgWAT+Wre6xVipx88=;
 b=qjXBgper4R4uLqms/fCQc2qhmGH4PTM4NatIWbJT3b2QzoZAoCfM3+4KwFUiIkAA0Qagvu9NZ4biOuEcXfP4Oa4frsKVHDfT0LQ3HX6RSk6LERAYxVBXbS7W7UeFUhTtFGYaLk/mTLqslN+jPaXAs9BCYiQ2MweHUQ/CHr5MQWBl4iXSo64XwO7tDr6cnVf22a7WnAZ7gm1oBuwaOmz6gdm1lw0AAgmwegJEoWvZT0a08ZnE5KAfA+xityBayb7DlEyq4CzQQWYrSdkPcX2o9alagWlzmkR4I+fucTBGnKVW0C/Ce1j95Mq1rl3ILQDMiElq+vEkQYdAjPj8qLC4xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA2PR11MB4953.namprd11.prod.outlook.com (2603:10b6:806:117::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Wed, 5 Feb
 2025 09:42:16 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8422.010; Wed, 5 Feb 2025
 09:42:16 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Reddy Guddati, Santhosh"
 <santhosh.reddy.guddati@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: RE: [PATCH v6 1/7] drm/i915/xe3: add register definitions for fbc
 dirty rect support
Thread-Topic: [PATCH v6 1/7] drm/i915/xe3: add register definitions for fbc
 dirty rect support
Thread-Index: AQHbc1oiC+2wv3udR0yfMra9Zp7NoLM4fYdQ
Date: Wed, 5 Feb 2025 09:42:16 +0000
Message-ID: <SN7PR11MB6750E1D8A589A5BE2169FEC4E3F72@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250130210027.591927-1-vinod.govindapillai@intel.com>
 <20250130210027.591927-2-vinod.govindapillai@intel.com>
In-Reply-To: <20250130210027.591927-2-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA2PR11MB4953:EE_
x-ms-office365-filtering-correlation-id: 9d4dfdb5-e3d1-4a73-28f6-08dd45c96048
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?WHAc3dUxjcF8LSWWXwTfjMjGbAxcxG9D2JtERKlpLEptgLdtpyCeZfodojaG?=
 =?us-ascii?Q?9DaFwVK23gKLGiPreiT1REVJ8uyiHDZLKBH1kslYY46DhyXYmYMovUiNaJGU?=
 =?us-ascii?Q?jeAUolvvIqZXleyDA/3NqWYKhOGlf5WIdbZz+LXqi+eIbrIXWMyX0szPUNoC?=
 =?us-ascii?Q?Z1bd+7Ytoi+IEaqoOfseQLDgcDsFCZ4xTp0Z/kVHMSnJXCCJLL7S3Q2PdnfL?=
 =?us-ascii?Q?5TKU/84bbYwbGjTVn/lIdgdv9KL95XHSkefGE9fPLHYNt1ZudlOzg2BQLEK3?=
 =?us-ascii?Q?G2RFUyp8U6/YoJVr9oH1xsV3FWlwOE/KHIV+hCTS7LqUErZpQtWCrSwm1m0d?=
 =?us-ascii?Q?vzeym0WAbYIDCzRAui7QpY95o5l/8SZnasWST3e/zZOEbM6E59yRpXqHOGlq?=
 =?us-ascii?Q?N9sNObF2WLrRTmcZoJON1j6EmP+qiNxnLe/IHnrHeZUbBrKAsqKP+3BQn0x6?=
 =?us-ascii?Q?pRxXwSHlkohUOiebynaQh+4qrrxbZZLLGRwDONqctfC5n6JjZjSrFXjIsOE1?=
 =?us-ascii?Q?pI/pXwzOwo4b866Gy73x8ts74+n4nAYJR+10ebAOn05Av6R3azy5Xyyrd46m?=
 =?us-ascii?Q?lvny/Rf6r2hQihgxDooWDdxX3e6GzL4TyUEOQWPGXKWfd1SZCD7X7MUFv5l/?=
 =?us-ascii?Q?ahT9EBEsCZ+wHdNa8QVJgOHWadg66kYCZXBHtCEB8SJJ3s3vTWE9aw1uuEjl?=
 =?us-ascii?Q?DRPZPO79NPVyTx2bU7ITdyql/pamGUbDvFW2h4GBtJ3pPppk/2sDpeviq+bT?=
 =?us-ascii?Q?W6M3BiIx65GTlq6nAtC9J53yHAJLXSd65zBpWq9Ypsg4dSAA+h2iFvRSJ9QB?=
 =?us-ascii?Q?5CqeIEhTmG5UWx/hmsV9pB/8IYZlC3xLkSqsFNiBftoLIC0pZSQa2tFN5poW?=
 =?us-ascii?Q?9Zzsky3cnqd+WvSweburYrKSk/hudgNjCXu8yA2jdzWhEfpj8bHnZyORXmek?=
 =?us-ascii?Q?rfz+IOD+BLP9olafLWyvtDkgW5qgDOdMI9GctlmWKQwcAuB17YnwDhVihzTz?=
 =?us-ascii?Q?gOiuJK/ZAwIs9SVMLis6Bo+uxahYixDvrexi3WyqgKGNXcGnhDunvMkCjDzq?=
 =?us-ascii?Q?IHWJbhlhuXODGpxzTUPm9thS07AeE5tHdlpivy1Aggzoq8pnxYTqoqk2njhl?=
 =?us-ascii?Q?B2WVkYTgLyqGYokk4wnVaiJkFDUN3tWiZfbc6Zk+8q0LicI5WYpEqrXYPGxm?=
 =?us-ascii?Q?v4AjmUWaxM2NjKMipvoTAqcAPFHcGl53DJxxIaCYGgOClJPFlaOcOk4Kl/HI?=
 =?us-ascii?Q?g6gwwnG3zklQSyA3ws6KQKCOHMNo48OIm3KeblRJSWy7LbMzVVaS23rY/gCO?=
 =?us-ascii?Q?/q2E223C6t+ceMk6/ruLWkO5msaU3l2foafi73/klumbGwobNIg4Ts05i4sA?=
 =?us-ascii?Q?3/A+p68xoD/6QPP/P7TBX2ngLYGweEEzAgCsQNrnvuLMPVTEhABT+EaJIu6q?=
 =?us-ascii?Q?LXE4wZO25wbA3iixVWclp00yvyku3Jas?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?C2v+ro0ogDZdqrJ6DhfGrm0Gvp61dmkfrIZr9RS85Vi0uHN3Af6Z84u3mrn+?=
 =?us-ascii?Q?2zX5P7K1UIKLj5PIIx43AILCxZaqJj04gSJrIO6FCgzFh9G7ce+uwcZcJubT?=
 =?us-ascii?Q?ZhWQv+8oMzXwHRfWga7q3hpTtSFcpdlbfNnpRckHaLwcCt/lLw5sbElM6oWr?=
 =?us-ascii?Q?upzZaMjJF/9XLKXGuAm67KRHlCBwrDfdXkPddL0Q/7N2VU1y1Sf5a/6GtMKA?=
 =?us-ascii?Q?BG1kocoilv0Rmfh8CbjvMXIBp+Baw9YMKgFEf7n3BTzhZ6JKerGWJvtPlhp0?=
 =?us-ascii?Q?iO79mEb1QtGxrFUr96DJhf4tPZ/a3W6pO6C8/ZC7DrbbKaOXHTmar96a0Ib9?=
 =?us-ascii?Q?rr8zoREByrZ+tiEKNtBXpibm2VDiuyAaYwlY2NpECAEQCsdAWKg6l6tp786B?=
 =?us-ascii?Q?ltLzfVg9hVQh8k+mjkaV3p4AkOvhG+JdYHiFnEFlAz2Cj4xWf+VZn9xLRKI3?=
 =?us-ascii?Q?NXvHFhK/xHc6D+GmDU7mwrT+WuRfciF4o/CDQoG08e87Eecl6inUyJFA197z?=
 =?us-ascii?Q?x2t9V3qWGyjTI2Bx67j317dnCN3cD8KNqootjV4OUTa6OhWFidlSFHcXrCX4?=
 =?us-ascii?Q?4pfEOmMlk5C+dVi4+sTqbPo4sHtb7eCCWGm9B5v2Af7VkqGt9PyX/ZlXXZyf?=
 =?us-ascii?Q?ZGEbKz+KncpZeMo7ufC4R+VhvbSi2FzSG0REKGAaA87Z2I6gMfv/Fw2LG9Tr?=
 =?us-ascii?Q?VAlO+Z8O3F4+T+3RbUls+PlYaCMKYpHvvFahntKY5KIYuzDkjQ1X+Wc/zPeM?=
 =?us-ascii?Q?eA9G8qRaVX6CzqKcOvjDGa3xh3nwrh6dCGgZsQr4x6XFY55zq9JeSVE2qCUV?=
 =?us-ascii?Q?+k4wgvKjkPYmhp2hyMlMp4GuyRkdeqpsLNCaDWHb6/wweCWR6CN/B+AK8ZC8?=
 =?us-ascii?Q?7gYeX8ExQDs/a2nhRPlc7e4ZtwG9GcF3QXGsIJa/Dp31N38xBSFtDGlDLS9U?=
 =?us-ascii?Q?9WKdneNE6xJGsRGurmN+cxvBjSR+nf4UJOSg/1Z9g5vqXvgQH0z6fC9lYhEC?=
 =?us-ascii?Q?Gco+mGra3pmlEqxGUaHzJeyBS4n7U2zAkj/th50a5GfgSFR2pJEUi4MoiLaM?=
 =?us-ascii?Q?0e3pocYqthPb3ZxQ/0gsiVCPFOmOLNOHFwIF+XJPFx2uWysbHFRmuoYiDDRf?=
 =?us-ascii?Q?DAcmxc27PWX9F4QcfEekDDFyCGC58/NLVZPJb3gO3qgoA5MlneJ9mx7WKjWV?=
 =?us-ascii?Q?GmdZKUPz1YkwWkUIa6HdAy6JmwfvPvLJOYoajDaKR+gQE05R0MziNdKLjU9q?=
 =?us-ascii?Q?/wU8R+zP4M2ZZ41N7K8G+SIckrpSbs9V25pfBmuxHUgxWrVKwkPFUJJOsX/l?=
 =?us-ascii?Q?4UmR0+xLYG+pGEoC+5NodtGe4Rx4A63lRd+ckOB4J+ezb7k+yaXLIJxh24RR?=
 =?us-ascii?Q?5p+6Belk9iM6gJRN0FRvO2dGUvZcLK9ahBuovTE9lH6HQXgsDQBtlANW4/8M?=
 =?us-ascii?Q?gOc9l2bELsvnSr/Ylcmz0DoPDmmN/6CLuoD8B2SOaIN3CjM0s1D7HFJfduOE?=
 =?us-ascii?Q?NqhOve5Ud+M4sMYaqZDFlhjez8ko8ojDRyRtOmbqN6YFR7+6LDKMIjDbNTh3?=
 =?us-ascii?Q?/ugi0foYS2d+SdLCkCoXHDAovEJE95rH5igRz5bb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d4dfdb5-e3d1-4a73-28f6-08dd45c96048
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2025 09:42:16.2121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w7CqqBpk20o5F2ccWu5LOyXmH7aqsUr23yfiIls74sJXNNUkgXD1wQ7H06WbQUE7L02rq1IiObAeKttBLXb4hA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4953
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vi=
nod
> Govindapillai
> Sent: Friday, January 31, 2025 2:30 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Syrjala, Ville
> <ville.syrjala@intel.com>; Reddy Guddati, Santhosh
> <santhosh.reddy.guddati@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>
> Subject: [PATCH v6 1/7] drm/i915/xe3: add register definitions for fbc di=
rty
> rect support
>=20
> Register definitions for FBC dirty rect support
>=20
> Bspec: 71675, 73424

Add the reference for 69003 for FBC instances
Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc_regs.h | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> index ae0699c3c2fe..b1d0161a3196 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> @@ -100,6 +100,15 @@
>  #define   FBC_STRIDE_MASK	REG_GENMASK(14, 0)
>  #define   FBC_STRIDE(x)		REG_FIELD_PREP(FBC_STRIDE_MASK,
> (x))
>=20
> +#define XE3_FBC_DIRTY_RECT(fbc_id)	_MMIO_PIPE((fbc_id), 0x43230,
> 0x43270)
> +#define   FBC_DIRTY_RECT_END_LINE_MASK		REG_GENMASK(31,
> 16)
> +#define   FBC_DIRTY_RECT_END_LINE(val)
> 	REG_FIELD_PREP(FBC_DIRTY_RECT_END_LINE_MASK, (val))
> +#define   FBC_DIRTY_RECT_START_LINE_MASK	REG_GENMASK(15, 0)
> +#define   FBC_DIRTY_RECT_START_LINE(val)
> 	REG_FIELD_PREP(FBC_DIRTY_RECT_START_LINE_MASK, (val))
> +
> +#define XE3_FBC_DIRTY_CTL(fbc_id)	_MMIO_PIPE((fbc_id), 0x43234,
> 0x43274)
> +#define   FBC_DIRTY_RECT_EN		REG_BIT(31)
> +
>  #define ILK_FBC_RT_BASE		_MMIO(0x2128)
>  #define   ILK_FBC_RT_VALID	REG_BIT(0)
>  #define   SNB_FBC_FRONT_BUFFER	REG_BIT(1)
> --
> 2.43.0

