Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C91FC97B167
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 16:25:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E5E010E481;
	Tue, 17 Sep 2024 14:25:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HJ7ODEuP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64A2510E481
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 14:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726583100; x=1758119100;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WZxoQ3i0nhiQIPdSlfT/jXnoUzzNGK1v7X9aVlz4L48=;
 b=HJ7ODEuPZQnXD+0ZUVdbu2lgxqHfWlBNHjF8UZPxcq5MRfACEE8L6W6R
 XcgV5Tts55YVXhWRzV8g4dIfgT/Elz2x/4w1C5lXYOCyiNv4l0X76t8p9
 HZwx6hKwnpYTgDwGRvlC9mBEUt0t1qxtU3Cp9GH+zS17qiTRWeCaKSjnX
 3MaTJGFgnE+2ktSlaARNAP7dgUXP7wec/UiBXbjXmZn9RcimRyl1aLzlq
 8aj6shDriVia4NHdGAYLq27FdI/I9txsOOkoRBMiITAn5CqU+LLZAqD7R
 UBT738/5fMv2S4Ut8N0RjtOGQJHoAsDj+2XMoZvovrlP4c0LOmFqVBR4j Q==;
X-CSE-ConnectionGUID: KjElazuER429OCyXMBLpTw==
X-CSE-MsgGUID: M8GHyHJBRp6SbKOnMToJRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="42958057"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="42958057"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 07:20:39 -0700
X-CSE-ConnectionGUID: a4mvUjTlQaaCDSODbPpUOg==
X-CSE-MsgGUID: crd8DxQnTpey3m8RM/qEmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73960931"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 07:20:39 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 07:20:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 07:20:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 07:20:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 07:20:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rYLPRCvRxJYTGBubAtLdK1HSFzl4ImL12iXig1RFhL3p9hgt41pwyniR2ree8zWCt/n/tUMrouSj9YYLzPbuHFECWTgSMSG8sG9wXX6MboNhRx6b37M8bXLtM+nG9i6NXVo1fxAFdN8cajlnYhaDXsa1JtkC/JYFk52yfGVtvugrBAQB177XDbD4cqCWolyQpxyF62mVBSLHrClkjnWPljfTrtZTpNeczYtgdGo3zqzKZOXayv1uQlN1PXkCNWjE8o1bctE5b1+ehLNQ3ki6ut5E135f9/z+u1RVglSdklkwL+8EuN3tfs4K/S8JG1MlmOtQLvmQYuQmUFj+FLMP3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PuNtCkHhiCPp71ByMRBA4RFoFP1g54TMIqvI3sMrfUA=;
 b=LaS9/KNigwYtJ0JYRuTiPwIKQO8u4FoOPFydBsR9o369RhICRF0dTS59ljPOX1Hdftuav3JxqmxxbIw9vqebz6EoUFv2JfCA2GYjPln+0oiLTy9tHHRzni9Q+AT24m7bCSd3nEgLGwIYqEDK8jZJy8Pv0XLOVeLh9jVLc0sHQH5OqiDvPz+pTmJYAz2M74HPolzlSf82gGgVvRTtDRRJqYfz+/fGfMUtgwmAP+te8kKYgitb/ceHjA1jqz+SNHKbJ8OG22TsAguNds48TVD+5g/J2BwUxLkk0L4SjU4Zg+XcKnlDR7mUSwv7fpAyijS50/ZXJtV6tDpBZHr1+Vpd6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by CH3PR11MB8314.namprd11.prod.outlook.com (2603:10b6:610:170::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.25; Tue, 17 Sep
 2024 14:20:31 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1%4]) with mapi id 15.20.7962.022; Tue, 17 Sep 2024
 14:20:31 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Anirban, Sk" <sk.anirban@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/selftests: Implement Frequency Check for Energy
 Reading Validation
Thread-Topic: [PATCH] drm/i915/selftests: Implement Frequency Check for Energy
 Reading Validation
Thread-Index: AQHbCONcdM2yN5RBjESMJKJvhCEWurJcBwxw
Date: Tue, 17 Sep 2024 14:20:31 +0000
Message-ID: <CY5PR11MB6211B7351BA163D5A67C0A3095612@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20240917092023.1238924-1-sk.anirban@intel.com>
In-Reply-To: <20240917092023.1238924-1-sk.anirban@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|CH3PR11MB8314:EE_
x-ms-office365-filtering-correlation-id: ac6e2df8-5837-4ee0-d938-08dcd723e2f2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?P2bzxkaLU42qoTlBShqC8rXfgfldEJJO9ehwktbJcIpIFl1f8jtwbNJkjux8?=
 =?us-ascii?Q?9pkIqVzPwtC6H0sDkfT76deVmPE8fS2Wy0mDMl94e3o5fVZlwhvojXNAXHYI?=
 =?us-ascii?Q?CzQvKphGOtCNpXo2wQ2f6tnhqIkbe7TlVV9/xz4qzgvWMXOys+RvAcMb2YJR?=
 =?us-ascii?Q?IW8EcO1tJJ72ASRuPeCL5kUyY7NcTwpNxBZObablXNe7hvegfaLAhbp05pzI?=
 =?us-ascii?Q?7Iaip1q1tzmok1KYTbpMFojb3yqGtAG4+W3xEgPqwXoM7FgR8+EMnkqOa3jw?=
 =?us-ascii?Q?PIYmMASLm/nlh1DdTFjdfOoEgCXIo1mDj1vY+lnlwPUKOp/Axl0d+xYAPCzv?=
 =?us-ascii?Q?zM409XRs5AjQjYw6DAFxS/frQRDzGesTM4GvboYJFvnXBTOo55UhBnTkxHWZ?=
 =?us-ascii?Q?Zgs7yrsHnp6rmRAEsxaHeOGKQ5otvDLlx8wgg3IC+1in74aimMOxL95w0ktg?=
 =?us-ascii?Q?D3erJZ3TGlaD0M+P1RN7DuVHXL41MBwhgfB2hpxf79j7DLsQvl67WFsNusJN?=
 =?us-ascii?Q?MG3jdmynWHXS7zVqHjZ2auFaMaMV/dlrmz5MhCiWxkv2VL1hYaHtDzvUeAgW?=
 =?us-ascii?Q?i5axM4IwOC7u8E27fVfuTYp2R0lUEs3fwwL4CR8f4i5GMMJw60GugWC4eOjb?=
 =?us-ascii?Q?22oOxgnGRNYN2vn77EGq9Uf00aW8Ig7XPeYoPyLNDHSCOQtbYsbfnqkoGPqm?=
 =?us-ascii?Q?03Ou9GB9ilbyIpi2Lb8icl7F+fGOBfkDOwOQmsEjIL+xY49+TAJYL8GiskMV?=
 =?us-ascii?Q?HUZWeOf0jJDIW5cOPbhHKlxsDxC59aFhNY+mnKyvYyiib1M6L0UiGuwGXRVW?=
 =?us-ascii?Q?KJC0s3C47C+Mol4yyYTD4FrTY5FxIiVEJCw6guAhBC68GrSjsRR5WyJNfFKI?=
 =?us-ascii?Q?/B2e0gGdQJb/+2vLt79Sh9SHq32uDJEdmBStzsfdoHs8GEh/CvqGPZh2bDLG?=
 =?us-ascii?Q?PvZkooRlda2hudh6ulxJUXw3cBIWELXY97c5wX2J0prz0i5esnjZlSXAFXqC?=
 =?us-ascii?Q?oiJ8akjNN/IxJEOQo9+EL6p6js1ZHkcBbIOn8zSvXkjmkG9R2W4U5SjprypB?=
 =?us-ascii?Q?Yc65I+c1FR57x4p3h7hrUW5RXIr+HGJlSlSzlihkg+fcutJ3uKlHHGKRkju/?=
 =?us-ascii?Q?9IJoAxiHeabDcvCmuZSN/t+T+ZkP0Yq47P6q8ihZyQmjOMsmIZItzaXCqJN2?=
 =?us-ascii?Q?9KFMv4dXh6/H8s3kJzp+MILP9lL7WCsLQ465QFfw8jDKdFTjjEgVsUPZJvjn?=
 =?us-ascii?Q?ffMaOu1lAPpAGeibg+4G8LWqeK8gzD60Oe/md76azwbSZ70KzrqZdei1f/2O?=
 =?us-ascii?Q?Bo+ep6BVLes/5qwXuRKKVUix7tYO/IlBpkKfmJladRwKduw07g0xdqkXsoQw?=
 =?us-ascii?Q?xOPDrF+1Jufi5IrWx/5XlZKUF8pvtgD1lFcB+g1qCaEyWC5KlA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mKQhR+t/LJ6pDTzXrbQ8bLR4SOvN6LkWN8GE68qYqE/21nt7roV2kMReci8a?=
 =?us-ascii?Q?De0XFF97c7cTdnC1RBlga2JcoIvAdC7R94Ru707QcteVMi1OfVQLtW1To0oW?=
 =?us-ascii?Q?4OHaL/dNXgO1OeubzO+1Bl8wdxDSlyULoidD4wY80Q7MmlaUWCIsbRsxFLLO?=
 =?us-ascii?Q?T7U9c2swhdUQwj9lYqcha6MZI8RQ5k0Oii7x00fo6zp3+QOyHf7AjxwXVWim?=
 =?us-ascii?Q?E5R3gz9GGltJZO2UQXK24hlj+hld14ddwMOZNQzCqwU80e/gkQ/g7HR8PqOf?=
 =?us-ascii?Q?HSUirM1mnnN8sSFI1XFwNpwDAMo0SXGIFqI5/nB+Wxa2mHizHd7l6ULmX6qW?=
 =?us-ascii?Q?Ve4KhorNkYKuQCEX+yW/dyun9RZYXtDM7omKKpH0T3VKdNXSsuHG89lvce82?=
 =?us-ascii?Q?upljjSnkGewng1QVzUcBNiEBelZvw+fFYI6C4+8szzxCTvX8jvswbjJjMBLM?=
 =?us-ascii?Q?Wae5M3JQnvSiSXV+LpEfZ4s792kRZnG1b0K8sP3ZqL1+A5JpEzh64luUs2RQ?=
 =?us-ascii?Q?pJ6l1ggbgfwJcmOMO2/2L08x+tTIspd+Qg1uVMUUb+dYFFQY4M91nCLdlQSy?=
 =?us-ascii?Q?nW06gCtX6cXGBsK9+NCsbi5Bohk/jpmGngu6frYzS8iWXIUAJp4g5ac28b9u?=
 =?us-ascii?Q?A2bAd/hl77QORLNwSOtvlKDRxidDLrQOVDqjOnGQ3coLlZcnckKBVI80VbXW?=
 =?us-ascii?Q?WYp1NVpCVOa2UDLF5d7FSYzdV6xACfrkRRfIlm1Cc2sV8BJv9FqfTd2Ytp5s?=
 =?us-ascii?Q?ga8GnFf4l9ka9GhEzTNNfi48v8pbCn3MZkEejxToXaMSWXB1cMAB4vErh9/l?=
 =?us-ascii?Q?msd695fN2DMN5jafUJXzldOGj0yg+sXkC8QdthXxEmPwo8Bo+n/nCUOYvDaS?=
 =?us-ascii?Q?unACwpL1ISPGD/wqYfl7bRcOM3NTLppo5OzA+gtXC+awB01OMhNbQcY2TpzF?=
 =?us-ascii?Q?WZon6n3ljGMbvr3l9eLanmHp0cIhawCUety/bUUqKXY+O3zhRANbjOEouPw5?=
 =?us-ascii?Q?XZykR9USM/8ut+7gtQsQfLvch8Jfwtdzmo2o8pLmk1m6cecbbOURzKyhTOXm?=
 =?us-ascii?Q?blCV53ZAcFvtd/W6WlPKAl2Sgn2SBNzxS8xKBv72w9p3thWJ/FRld03M4Sq3?=
 =?us-ascii?Q?aiTd7A1KgiDUJXaq6WhsOrEginMwc7QT4Orv61nYWn1tE6zJo+aTeE5yRWqp?=
 =?us-ascii?Q?E+HRpkn/JNBR2JeJgjkxqYJlQdSsQKRWUJR126Au86zvmF6xtgW0GNDyQgqX?=
 =?us-ascii?Q?XnIdBVNWoJA2VN0ndhchARo44e8WdHcF/4fAChTxxDhyYSS6Xs884Jpf3qLC?=
 =?us-ascii?Q?3e3qxa1+yS7fUjRhIST4y8cgv6rh9pvbKwlqsMdzdSbIsfRT0Sr7NWNjI8O8?=
 =?us-ascii?Q?0pYS3V5n6gpOKFGOwQ6ZOk6JYATraTRorc4Mp6Yd/7eKrzp7vYDIRc89V4JZ?=
 =?us-ascii?Q?PyZTZeV+I9b1hxFGw3RW4g/Pqq9MXKHIZEbVwCtZxByq8SXLRmr9GlUFociU?=
 =?us-ascii?Q?dreumoW30817OqdFIt4p/ry8zj0M4jtYUi6N9cF9l+r3G83DZcH8ocMGV1JF?=
 =?us-ascii?Q?iRm4mypQ+cW5btsT9YbJ5qB7wYCEUWHBh0vSHEnj?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac6e2df8-5837-4ee0-d938-08dcd723e2f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2024 14:20:31.0602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SIDkLEvLFlsYT4TRr1AVLLvQT+N1KT1dbBR08GIRrxLAApRHKx/ge1cikn1qyHpSViCV5uaUCaHKdyenECGvDMP7IXKeJvl6n/ABdolQ+Co=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8314
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
> From: Anirban, Sk <sk.anirban@intel.com>
> Sent: Tuesday, September 17, 2024 2:50 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Anirban, Sk
> <sk.anirban@intel.com>
> Subject: [PATCH] drm/i915/selftests: Implement Frequency Check for Energy
> Reading Validation
>=20
> This commit introduces a frequency check mechanism aimed at ensuring the
> accuracy of energy readings.
>=20
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rc6.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index 1aa1446c8fb0..b3602328c832 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -12,6 +12,7 @@
>=20
>  #include "selftests/i915_random.h"
>  #include "selftests/librapl.h"
> +#include "intel_rps.h"
>=20
>  static u64 rc6_residency(struct intel_rc6 *rc6)  { @@ -38,6 +39,8 @@ int
> live_rc6_manual(void *arg)
>  	ktime_t dt;
>  	u64 res[2];
>  	int err =3D 0;
> +	u32 rc0_freq, rc6_freq;
> +	struct intel_rps *rps =3D &gt->rps;
>=20
>  	/*
>  	 * Our claim is that we can "encourage" the GPU to enter rc6 at will.
> @@ -66,6 +69,7 @@ int live_rc6_manual(void *arg)
>  	rc0_power =3D librapl_energy_uJ() - rc0_power;
>  	dt =3D ktime_sub(ktime_get(), dt);
>  	res[1] =3D rc6_residency(rc6);
> +	rc0_freq =3D intel_rps_read_actual_frequency(rps);
>  	if ((res[1] - res[0]) >> 10) {
>  		pr_err("RC6 residency increased by %lldus while disabled for
> 1000ms!\n",
>  		       (res[1] - res[0]) >> 10);
> @@ -91,6 +95,7 @@ int live_rc6_manual(void *arg)
>  	dt =3D ktime_get();
>  	rc6_power =3D librapl_energy_uJ();
>  	msleep(100);
> +	rc6_freq =3D intel_rps_read_actual_frequency(rps);
>  	rc6_power =3D librapl_energy_uJ() - rc6_power;
>  	dt =3D ktime_sub(ktime_get(), dt);
>  	res[1] =3D rc6_residency(rc6);
> @@ -109,6 +114,7 @@ int live_rc6_manual(void *arg)
>  			rc0_power, rc6_power);
>  		if (2 * rc6_power > rc0_power) {
>  			pr_err("GPU leaked energy while in RC6!\n");
> +			pr_info("GPU Freq: %u in RC6 and %u in RC0\n",
> rc6_freq, rc0_freq);
We don't need to remove the pr_err , just add frequency in pr_err log.
Thanks,
Anshuman Gupta.
>  			err =3D -EINVAL;
>  			goto out_unlock;
>  		}
> --
> 2.34.1

