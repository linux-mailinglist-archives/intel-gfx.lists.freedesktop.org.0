Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66224A2C817
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 16:58:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09E5A10EB66;
	Fri,  7 Feb 2025 15:58:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="biGe4xLk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5531410EB66;
 Fri,  7 Feb 2025 15:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738943937; x=1770479937;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nVwgITbJ86Bosximmsq2/maFroGeyskGwx6QZ3ATXIE=;
 b=biGe4xLk5629v8CxOOkOUMoEqBlnTDLhjdYFWkYYyhAlT4EdMF84yAJi
 scFV6X9Q8JcN6ApAa9c8PkCO6R0gFtaVAe5QCT3aAJIUh2VpnGeG47Scq
 mZPuuNjuI8/8XMEG20wQFld+RVUMiVrossTkBq9CbfEtlKbGRs8q5SJ7b
 VLiQ/+DBemX3SfGolTcBmw2ujtSsI7gy/UpazWsXMigocawAPfzjlTBqy
 qFJPLeX5YdaNh+5Cmb12WXrdccn+Nfo9FnPR/xpkzA/LqEhTDSyLTSjG3
 AytyA7tbUJ6Q54rkCGRAQBYqvjP3sIJH54n6amjH6KXIOrgvB4u0vKjC5 g==;
X-CSE-ConnectionGUID: wgr6Cyz1RzupucDeGg+NFg==
X-CSE-MsgGUID: yS9VosTPRfi40eT4TUVj/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="43350487"
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="43350487"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 07:58:56 -0800
X-CSE-ConnectionGUID: al8zjZ2KRfCm7KSwPor38Q==
X-CSE-MsgGUID: pHG1QQfQR6qFOUp/F7SMpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111406342"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2025 07:58:54 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 7 Feb 2025 07:58:54 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 7 Feb 2025 07:58:54 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Feb 2025 07:58:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dl9VIGcDTRaCe8ZYKKSYlmGyn+xiu6sIhLBBgGbHt5RyId+2x+232QVR0vDG1d0v2IqkJIQzEE8k6gyCuesuKboB99w4mOA44YpyFUSc1nZVDNusJSoF1nk8/B52bZwuyG6vi0/iBxDxRkaOwKA+dv76Pr/L2slP3yZXEhx/hAO8M+zCtfRUMJhkT1ocerMi6MJESUOu9206x+G8xf1zSV0xdLUI97gN6dajIGNoQbyJz0A5IbU9RykfKH7xAREjmEWEsJbvm+LbKUtQr1u7Za73qvULBnei7BcFLgUDltCvx53aVrTZXVPEeWes6dZelUzpnam13NqTy5yDLYUkKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6JujDunqDE/P8WY2cV/Fi2Dh/fOe+2btDoYc1og7wMU=;
 b=okZ+fsE8dh2IjfzbjU/ZJAnXZpFXtgcQ/N38+PUSb1d+Ro/I6iWCblMBciRX1SShBMU2T5FL5Q1iHKyk8ui+CMui5ASHIt062NMxdJczKpGIjVA59Nt8aEC66qjHFCTKYGTaaupXHJ9cvR0e+XpPCqZbKoJhoda87liCUFRNXtD8SodBxl0I+UTS79LN1VZFdwyCHDZjjZQDV+GfoWutl3/PiEFqrtCOOZ9S49v+zcigeisBUcqCr1i1Ipqvrg2rT7tCAD4MHHk0zGWoQyjc3bvf9eML/OSVtR/qjvnWYI8/FGymvUlOqy1fcY4zHY8yqJTWxwq7hCZvYzkRUlDJtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB8264.namprd11.prod.outlook.com (2603:10b6:806:26c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.12; Fri, 7 Feb
 2025 15:58:37 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8422.010; Fri, 7 Feb 2025
 15:58:37 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 4/3] drm/i915/hdcp: Make some functions static
Thread-Topic: [PATCH 4/3] drm/i915/hdcp: Make some functions static
Thread-Index: AQHbeU9INPNTEnMzSUG7yVhJTuiaMrM7/zCg
Date: Fri, 7 Feb 2025 15:58:37 +0000
Message-ID: <SN7PR11MB6750584D241F8AF605F4927EE3F12@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1738924826.git.jani.nikula@intel.com>
 <20250207105838.179805-1-jani.nikula@intel.com>
In-Reply-To: <20250207105838.179805-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB8264:EE_
x-ms-office365-filtering-correlation-id: dc7fe3ae-ea15-4b56-56b2-08dd47904864
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?qQM/Xa9iWKJnw9OXKJEbV3RRXv+TZRJnZfHjTv60orZZhEWfkP7cR5mGibxz?=
 =?us-ascii?Q?UMUPIEOTT368586nWsJZBbhsPKPcRS+ZhOXSqiZGC37Y3J5Utl0PrVqkbdA8?=
 =?us-ascii?Q?tk9OQ+Vs4EMj4nEzM5mDQJQsHuPfldC99HsDUuU6MUnL7puQRljRQXCATWOo?=
 =?us-ascii?Q?iHLVR31NmaXoyzNtWMKN1uUpR7wq0TO5VTdwtP3Q/I7pinWPk7q5uGhE6B4p?=
 =?us-ascii?Q?BnOmMfAQ4kITdj7T4xgui73qvx0a52CclYHGGi+La37wzHUHIObKJWyBSkR+?=
 =?us-ascii?Q?xwaqx/VRwUAXVGexXGhoSkKpT0i6S7BAbXh/kUzXtWAL31R6EA0f5mqZ0yeb?=
 =?us-ascii?Q?D4CKz6JKx6znU/XYXyJuJQUXsXY4wH1phBdoDSkA8vETZXPycHsuys4PcGER?=
 =?us-ascii?Q?KJ8mP9be2ATcEbX+ft8Du+iqtYVghzab+MpAYlUGYhyRICzz41/uS/AjF18y?=
 =?us-ascii?Q?ZWVdNfMrATffXcNxSqFaN/fMmWKdaOtOwd/RnPVcZkiGpITOzoz1YqE9Wt8S?=
 =?us-ascii?Q?WdPjTg/nFZkHOyhkyJl6tjiGn0ozjxttemI2Vn2oKJUQpbalP1bcDLYZQCLu?=
 =?us-ascii?Q?IZJyWeTz084je9shRlxEYWJ2GtOx7a4U5fibSOqHGeZvQ5IW1gVueQJpuicW?=
 =?us-ascii?Q?YGIKoV1OhRG9SVvf1joXlNrcX4eHfUQMcvJ5nNeoaPx4GDi20S2xo4jwujg1?=
 =?us-ascii?Q?K1sq7h5ddB8LQGn+s4fRJ549VvFVT7UylOgm2zluhNibid9Sjlwf3MJ2mB1u?=
 =?us-ascii?Q?GIPPP8obwjQ1NF1rxdMu/XmnHlLKNkhabL28zvFvi3BSnT4KDTo/sWGgzNqb?=
 =?us-ascii?Q?csqjjveYc6KDRrG1NKbjLl+9Os/mTg+mrNIv1wlwEEr/Q/qQvXgb6n38JHQB?=
 =?us-ascii?Q?A6cXYahCn8Kymq7Brf/UjA9/9iDeEd2WTa+km9X6oy9wrMNy12mNnfq4+oBS?=
 =?us-ascii?Q?ciEvYnPpfTrubCNQv5EC5W+PwJHnJHpaOCBsD6R93b9IvdHV5Z1kt+QJsh1v?=
 =?us-ascii?Q?EgsKVkvUd8r/g+lW8V1qmZMQ2ZvH/dTEXwISr9mqrkmfumyRwope1jiFXWhH?=
 =?us-ascii?Q?Y7H/jJ7Y/aIJWVxhrvf2w+qRk9WG3bgcRLAHNrvLOY+u3Kt64ulPoZKUFt2U?=
 =?us-ascii?Q?1LmGDICWmQtRbkIEoCcixrbfeRCgLvq3d63geJxiV2EWQHKAQWkrL+7HnOi2?=
 =?us-ascii?Q?B2boigsDKfd6jq4iQHLftPBxzNsDPOzcCyiPgaslS9F9f5mPgdat3ZoqpUAN?=
 =?us-ascii?Q?jOZiuq2nZEBzEgsS5wVthS4nlc/SH4p0+wKtK4PKFrYI/yzgOqsFt8Cnxyu+?=
 =?us-ascii?Q?P6S7VLpyt+YM9ejM1U2qJc8qa2b23A4PVTG/IdxbX15sqYccCjEcyRimMh22?=
 =?us-ascii?Q?CqzLPGmLfscE2LxXsbKCG32DYAtYKXvBLx8zTYDr+4/QSAyxiOgM5iStOpse?=
 =?us-ascii?Q?ox/mfGDLbXCnPTtZCBCmdNJka36uAhD4?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cS6bcpnw1tLfpoWc3pwtOydYfLE6Bz4dLZSM26WFCUsGDCQ+bCD7n2rm2oJX?=
 =?us-ascii?Q?DdFhNs9XVyxr7A52lfXRo5kjsjTQTzN1aHkBevxaMLlbib+wLw5TEjKlgpmd?=
 =?us-ascii?Q?mdu7HaVCa/6MyPwqWb5FXVRNoXgzGdOe/qfxjWJ5fw+4fre8VGPej/2RaLHk?=
 =?us-ascii?Q?0EJBHw83rNDTuCgDXk4ZpLLxHoLIonF+7kA65nip2Q55+et/C4siRoUZf8XK?=
 =?us-ascii?Q?X2MEUWuly2gPdJdS22TvPRPN59rmm58JxehdgwDmpVCREwyrgyQ3v80vWRkL?=
 =?us-ascii?Q?xrYYdECWIIZdoF/i156dKiMmES7luuN3pgD3ptb2Gqdq2fiHx6MmvDi0LteS?=
 =?us-ascii?Q?xQ5TFS3L4OinCTCX3zkdF96+E2zvw7yz88x97KCtm4euwQtKyPw/mgxpyZy2?=
 =?us-ascii?Q?XKxLAGhG2VnYD4R3x4PmJlDbTsigzV5CrIVFVQn2zSjrf4EWWz9STPiQAoHm?=
 =?us-ascii?Q?ut9Yu9gZTl1aQAzGRv4WrdhR03LQbB4Ao+oKsskNZI0GUptrSYKxLNPfSQFQ?=
 =?us-ascii?Q?5eeqjCq5j/03tL/m2xeiL4l9DKiAD52y99vZBn8iF02kDnHOdpHpXVqWU1Xp?=
 =?us-ascii?Q?LI8oC0Bxp0XELYGGKyno8JvO+JHVGm8VaCG8Dy1Pg3r/cn1WXz6OfYlWvODw?=
 =?us-ascii?Q?+brwcjsRnSOjByejXR7q9PS8jqtWvlJdpKcUUH+nY+B9vKCkSMiVTzSwC6Lp?=
 =?us-ascii?Q?hkike30aDyvDQlq1OpI3FVJrcIUbszH2HVnRlGwGaB9mckU2gWBhbB5vzaQQ?=
 =?us-ascii?Q?Y7379V7dvLS9oKg38ObMGSNls3J7F85CvXiyrBOuoj/qwGYfL6KjKdqkFMX/?=
 =?us-ascii?Q?SH8hzk3vW0s7Un71gMliTUzmQR5uJl5hg5/aUYNq7CAoqZR3P07tBGZv8LPD?=
 =?us-ascii?Q?3p+W+NhhPCRsjEYMF8igYAV9hBtuuoeZVhXrKhwEra7/1yWQYolVxm890pt1?=
 =?us-ascii?Q?xK5wX9br7dMHsKqSqTIsoM3AYfswgx1DgBqXYRe3mxaKplxnbN34U6e2BtNS?=
 =?us-ascii?Q?RLADjT/HwbDaLAhZxdUJk6H1TwrsUngmC9HYPwYRL1SQ35eGemXcXtlGs4hc?=
 =?us-ascii?Q?7fRBh89ZfPXK7hSuuWS1sczsc5kWVut3bu8Fu5PEKjWEWrXmxMbFLxLGNv0W?=
 =?us-ascii?Q?7OkwODvfuDLkeUpX/EIEPwBuOgKBO12GkneNs/EHPRlrXmCsgtBwgoRFZ3sW?=
 =?us-ascii?Q?lSePMWirdX9V8g0S7mLRKV1YRYuR1TqXJlK7lLU8iAcdHEk0ubPq2jwtrZZW?=
 =?us-ascii?Q?ZI6yoz7nvHIUZq5AHKf21VcnrViFdKOC3qS6ZfNU+PURs9XwmkdmQymzLEAh?=
 =?us-ascii?Q?z8xs6GQLP+zAjlVnmNV7oHhdWc+DM7coV3vqoi3hF+YlpDrnakEnpo+RdTgv?=
 =?us-ascii?Q?GTDaHHbfIZKAld6U693SbJIlp3RiGcIc2lf0xqS9btZ5TR2nqJ2zR+UwIzZt?=
 =?us-ascii?Q?o94pPFl3mU0/sP+EuPlpidVFiuzK1pprpyLGwdyYgT1Yli0ShyoQv0FuhqUb?=
 =?us-ascii?Q?LwBUqGwrkliaLa9cEbQFC4IoJgInxPOoCKVyNc5Z5CA3TCrT86j/RnRsFFcj?=
 =?us-ascii?Q?yo4hr+JM/GyM1rXD3QDK7n5o+gVnDi5jWHgMabXL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc7fe3ae-ea15-4b56-56b2-08dd47904864
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2025 15:58:37.1446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LHKEGBYXpjMjrFW2m1n2j5T2pY4tHiYvknan12wZPkqMo1ZTQOxtf6Rk3GA6mFDuopyC85/F0n7jitewYS/4cQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8264
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
> Sent: Friday, February 7, 2025 4:29 PM
> To: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 4/3] drm/i915/hdcp: Make some functions static

What happened here wrong serial number the patch itself looks okay maybe a =
refloat is required otherwise ci may not test it
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> With the debugfs implementation moved next to the implementation, we no
> longer need to expose some of the functions. Make them static.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 10 +++++-----
> drivers/gpu/drm/i915/display/intel_hdcp.h |  6 ------
>  2 files changed, 5 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 3d83db793baf..1aa4c0fd216f 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -209,7 +209,7 @@ int intel_hdcp_read_valid_bksv(struct
> intel_digital_port *dig_port,  }
>=20
>  /* Is HDCP1.4 capable on Platform and Sink */ -bool
> intel_hdcp_get_capability(struct intel_connector *connector)
> +static bool intel_hdcp_get_capability(struct intel_connector
> +*connector)
>  {
>  	struct intel_digital_port *dig_port;
>  	const struct intel_hdcp_shim *shim =3D connector->hdcp.shim; @@ -
> 265,7 +265,7 @@ static bool intel_hdcp2_prerequisite(struct
> intel_connector *connector)  }
>=20
>  /* Is HDCP2.2 capable on Platform and Sink */ -bool
> intel_hdcp2_get_capability(struct intel_connector *connector)
> +static bool intel_hdcp2_get_capability(struct intel_connector
> +*connector)
>  {
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	bool capable =3D false;
> @@ -279,9 +279,9 @@ bool intel_hdcp2_get_capability(struct
> intel_connector *connector)
>  	return capable;
>  }
>=20
> -void intel_hdcp_get_remote_capability(struct intel_connector *connector,
> -				      bool *hdcp_capable,
> -				      bool *hdcp2_capable)
> +static void intel_hdcp_get_remote_capability(struct intel_connector
> *connector,
> +					     bool *hdcp_capable,
> +					     bool *hdcp2_capable)
>  {
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h
> b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index 76bd3996f636..3a7905551051 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -21,7 +21,6 @@ struct intel_encoder;
>  struct intel_hdcp_shim;
>  struct seq_file;
>  enum port;
> -enum transcoder;
>=20
>  void intel_hdcp_atomic_check(struct drm_connector *connector,
>  			     struct drm_connector_state *old_state, @@ -
> 39,11 +38,6 @@ void intel_hdcp_update_pipe(struct intel_atomic_state
> *state,
>  			    const struct intel_crtc_state *crtc_state,
>  			    const struct drm_connector_state *conn_state);
> bool is_hdcp_supported(struct intel_display *display, enum port port); -
> bool intel_hdcp_get_capability(struct intel_connector *connector); -bool
> intel_hdcp2_get_capability(struct intel_connector *connector); -void
> intel_hdcp_get_remote_capability(struct intel_connector *connector,
> -				      bool *hdcp_capable,
> -				      bool *hdcp2_capable);
>  void intel_hdcp_component_init(struct intel_display *display);  void
> intel_hdcp_component_fini(struct intel_display *display);  void
> intel_hdcp_cleanup(struct intel_connector *connector);
> --
> 2.39.5

