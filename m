Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFA093F715
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 15:54:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A935F10E0BB;
	Mon, 29 Jul 2024 13:54:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nV7VBvUt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECF7A10E0BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 13:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722261245; x=1753797245;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4GbGYAHDoskS5KMbLDdIfry01yJQmZ7xxBaofBtaK00=;
 b=nV7VBvUt3iem/pWbjSPzg81j4AmXHNNshJPGlEhYlKDOy465YzKgQ02+
 MxdS5WxyCGQsKQiwDRu2FwrS7HTrrQZEJmll5bUzds/+PBaSa7M9NgtT2
 qJ6k78Xz5yFXv/aLdSMP0IMA1+6FQ6e6r9PPWp52oNz4DjRp0vWCYEkBU
 xMENJdU/0AnuY9jsbdqQg9/q3/Hy0Reoq50QJO0OsgWkt1WouwCsZKdzj
 vTcAMwJy3mg18+r05N2NaQxrJIpELd1AjWomYyx49hmXrcxl0PAK0B/8P
 zhIdpvp3hMlEfrX8XxNAwhwO1FRwCbm1gkTiHwIqPCBQWKgTiVZc2pnKV A==;
X-CSE-ConnectionGUID: zw7h8PvmSuqhX+E4xaiSPA==
X-CSE-MsgGUID: Hi8YqYasRc6+XYKHqyPQHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="23879596"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="23879596"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 06:54:05 -0700
X-CSE-ConnectionGUID: 9S0g/+L3TR6AYiddVyVb4Q==
X-CSE-MsgGUID: Be8X3qkJTyuYGHm7NwBrUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="84926024"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 06:54:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 06:54:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 06:54:06 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 06:54:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n9CrxKvKbugFMZ3wProfAgcWTPUCM3ZmZmaKkMeeuMZWlxiTwvTabJHdH4e1orFDc1RxX4YOEe+D5W8TMLhPOAvcFIZV+stA0v8nZ+uPxVX1OEhxChA9UPT2wneh8AU8vm4WcgpzqKC0Fs5idfjGMNEBfKiSQyNhCHGRURpg8OQi0QN8eIljo0/L/fTxQ+4WcUtvWNwD8CETfPoNAEb8KsQjxBo0b+gy8jH1t7PMV1nhd8cHU6QmJzVP3+rac1sPbZDZIiFTjOWxnlPcOKFJbWEbbO95I/OMnU6ALIYKZqKMb0gHiU+wpwPLqZ6HTZ3arPDX0U7w8WJMIKx/KtBunQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fGzWYSDK2erpwznI49SeAZryAips5FEcUtTk5u2Cl+U=;
 b=gx0OhFxcGJn2Zx2gwsQcNJ1Sfr34DyDY7RKibwoJ1cAjN4RraJIbGrYq77tCKf8Hf+fITP+QjuN+8rj6AH7gr0MwZ7yps4IIi98jeHr46Jq8FCNJaJKl60sb0kPaApKZk+la2ymwpuzVME1XEaweRNN/f0yBlEr5TB6bmVSvBZVEh87nmA8Moq58l/7By5h1IRlTJrDKATwO4VkoBCwo1/spZ73lb9n+UHcdoQ+gMPwXvSJps0wzm1CKLNLC3uMgOKAITwXXoHp7ZKfNwQh8ih1BcwhYquj+AwnYQuhkKcfwKMHjAJ6JzG9JchTEqZsyu89zA1uEQd749uxLx0l9kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by PH0PR11MB7659.namprd11.prod.outlook.com (2603:10b6:510:28e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Mon, 29 Jul
 2024 13:54:03 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%7]) with mapi id 15.20.7807.026; Mon, 29 Jul 2024
 13:54:03 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
Thread-Topic: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
Thread-Index: AQHaj+I+mSDesZPgD06ItMjjpVKUf7GOYmeAgH/5KOA=
Date: Mon, 29 Jul 2024 13:54:03 +0000
Message-ID: <IA1PR11MB626636FF0B8623E41A890EA5E2B72@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240416093730.625486-2-suraj.kandpal@intel.com>
 <20240509032922.1145558-2-suraj.kandpal@intel.com>
In-Reply-To: <20240509032922.1145558-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|PH0PR11MB7659:EE_
x-ms-office365-filtering-correlation-id: f63ae2d8-b975-430f-27ba-08dcafd5e82b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?VaVd1vWsKSbAjEaXAMLUfZQVdCiEg16E2GVIdDnys5HWEa1HXFYO7ibZ9LZp?=
 =?us-ascii?Q?ll+ihbhMAzP2A0i33d8clBOd63bmDhez4gs0DCLPS6nLvy0C/tLN0MfXpQ5w?=
 =?us-ascii?Q?2UrP2IR0Cho/mAK0T4MrZUZwFxwjLZFoYqdDHlahFSvT70QjPvqd0MTV3ZY6?=
 =?us-ascii?Q?FakgeQ3zvSoCvGCgDBE82IiNXQRxbEHW8LAdv4zw/GyDT7l8V8kqDm/UFSW2?=
 =?us-ascii?Q?WwWe4BGAuFMKXZv2x/9bMMAbW3PEliI4Vw633TVrpE421l68oVl7asIEkkHG?=
 =?us-ascii?Q?PhcxxEEt+obtKFSZB0k0S+pZXQzYI1w4rCtJxpsFnhxFPjhFsbmcHUEMBuRr?=
 =?us-ascii?Q?gn3dqrHMQwYrXAUy5ijzKIEpVzqoeMtAuiNUcGuIIYibirBhtKiPYYtQUh+t?=
 =?us-ascii?Q?8ANQoFl1OlnCpy+eOUOiIkZ7FH6PQ+yuAgOdY2UtynEGDcKhifZGwIvCot4h?=
 =?us-ascii?Q?jXFfhHXi+bXqA5S7yudLdRFNeLYJMr3+s3hgkBPM4Ob6I3q3CP0+oF1sPJMU?=
 =?us-ascii?Q?PBbgKYtAluP9jf07Kz2si70MnlSnTr1VhWNvJ9P3n3CMkircdfMFGb0gTXGB?=
 =?us-ascii?Q?AIAmNntGoP6HPLssFkink7bgRGz09qNKN1M64wVrE7w4zCwqeIQKEIB8VJBK?=
 =?us-ascii?Q?QLRkJED0I7U31hBwZMItk/rFMRFoO5iNcV9nXuGFI7Rg6n8uE03FEluj7im0?=
 =?us-ascii?Q?VpSHdt1ct8hNDNCDcmAjHrVnFYuqp1zIxWrVWPwn4+iDcBB8VWxL0ApTlIq9?=
 =?us-ascii?Q?O8XTbfTqAhOcmJhMshD0SDr0o+Jlt6tCKvsq0FUTldiL5UILQptcqh1dEfxB?=
 =?us-ascii?Q?1cZKUPogG4scRJpGGKdl9TJCDgBRkASZJnfqlbbxWV6P+3CiKMcOPf6CEkwJ?=
 =?us-ascii?Q?HP1oGnZ6yMmYIX5fNAZWMHKRKfKyRlZxiCcaC3bu5dTmcgKMImoWld/GzA5l?=
 =?us-ascii?Q?jh5VwUoocFp6rvqvrgKTPr1uyY5JGZiZ2hiqi7FfMHf2Mz8JJR49VzI5/OOq?=
 =?us-ascii?Q?+trTWbCRH+5A3JoWpoi2b1ZlMi4VfRrLf/ymamh8QWi5TTIz7hPhvBFPKhgr?=
 =?us-ascii?Q?5Pkyj9u65SvxhdV7Ppofk6Icw1NFbWac1Zcxn20YzVE+PD0EF504EuY2j7Y0?=
 =?us-ascii?Q?/05T9XVToYMC6isAQ1AavHDBS/xZB2MqJMZ4l+d+WsOk81MUdx1Ayk8929Je?=
 =?us-ascii?Q?SlVIdKFzRO3uqBWb7tAzQt8e7txkUoXHzUArzDbWKYWzdfMj7uGmuQxQlYF7?=
 =?us-ascii?Q?ZHnlZSG6Pg43qrvaEdxhsROST+DHYlqNNRVRfWPdBaxqHR1wUIlbldlN5Aye?=
 =?us-ascii?Q?9Rzgv/g1gkemj976FsemNiBYNbtimAh0BaPJ6c/Sj3yolvktJ84PZDnpmzp0?=
 =?us-ascii?Q?u9kDUVr/Ee17ksUB6ifjYKscA4R+1iTkTCjlBLAeJKt88PmdOw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8Xr1+CSQ1dpdddyaXiFjSf2/swZlNnKuELtGx4Z7cqPSipKOwdADf2fo04cZ?=
 =?us-ascii?Q?OeC/+mJGhbIEV4jukKO0tCl4Ebgyd9/0SH1bcmkoHLEIS6j4YN5s9B5ADgYJ?=
 =?us-ascii?Q?cwH4fCiern4yf9C7vN4WOURCLyU89BI7ua0b4EDyropIu9MA+iCD6vhPTczA?=
 =?us-ascii?Q?+EaY56M85NqJuMzz77S274MPaQELdMnaFVC20hlpl7uChbvE471Zwcc7JEGs?=
 =?us-ascii?Q?pSHKg7k0zAxRXCNhhvGW45VQjGDlAYDBAQG2fdylISAT96fNzE7mSPhvDfC/?=
 =?us-ascii?Q?fYtINEE6AnOY+12v4sBR1PPmLRl3cmzydt3tvPrmTRcDZaJeEARsf0g68m59?=
 =?us-ascii?Q?lFtcyGLaP+ULIMuharMxkabpPGsbMKIAoajSRgLB9QCu87n0tlWva6VS6VdC?=
 =?us-ascii?Q?f1BzmTC9kYMntDhejsMqV6CV5UiF0FB/PPYi2EsHC7tdZFWZevAAVDG+57Dp?=
 =?us-ascii?Q?6sdcVohLzcyuloKS2iI0TK8H7JIWzHmVevb1sNaYtFsoN49fpqgA15wNZTth?=
 =?us-ascii?Q?0d321x7V/1P3MLTOX7U6JtXDXdUefx2yRfXKW1Oz1mH25FPWccsChv1nxBAZ?=
 =?us-ascii?Q?BaZdYh7AJ7pNfre9BhExKVMflUuYUd+HrPpUM9ZV+QmNtSn0FD2A2M2+IgE4?=
 =?us-ascii?Q?qMhaL6ET3SZ7Hi34L2XpFeAKrH6JgAs61kmFUOJ24kBRTuYflp28iP+qiTGM?=
 =?us-ascii?Q?gnWH5hkSf6lbNC5CbdZcMrl603vS00BLiTkAln8R2SVWrHc+tiFbrPAkhmjf?=
 =?us-ascii?Q?b10QG5XmdqcgTOzuOerTMpD5/cIlVf9pG834v/HBO8Xa+VUTUXqv/watwk3s?=
 =?us-ascii?Q?ayW8w0h2t6hq3acoH6o1q7fn26i7cOZ5ZU/gR9h2p5DD/zGHn3Hwr0nlYrre?=
 =?us-ascii?Q?4CmcQ+jEndzToS7VJZNE2lVFJD4APdK13bwvtZkGXJZKiQMIRVw+tiyMNrc2?=
 =?us-ascii?Q?U9UtustMzlc1g+Whbq9Y2m//iHeU8iZY+AI/KEmSersgtOEoSFR10gFXAtLa?=
 =?us-ascii?Q?iNXM8h20NwKTZVlzzj2augE+PxSgXOrpQaRBi3WuutudBO45xBhEvx1N6jk6?=
 =?us-ascii?Q?Y869SamnisiWKIUTTDCRP0t5llc03CeQNHzm3Z5IxvSWVcRIJmHuGRfn5ZdM?=
 =?us-ascii?Q?vyJWSE/ze8TvUUTbZmBhlv6O0hXTy0Y+PUhzymHJs6xEI45xEVZ69hKkN9uu?=
 =?us-ascii?Q?AKyYu9XiDa5ZcpUpJUOwuJQHuYa7B1K2dNp0Jgs4U8nuv8Y6H5mMdfPH5Fug?=
 =?us-ascii?Q?62sRC9nCaiHOBZLcYGddCIxsSbAqoJWqhRZCkVl1o103Jg6xmjZMcldPrEIj?=
 =?us-ascii?Q?z+Z8eitsq1pave0ueg4RFLVoNrz19pByYnPn5+FWAZRCJLUKXtn7niWMus0p?=
 =?us-ascii?Q?00T+zFoyqoCYcDmXcqD/kebZBh3CWNSdmfV0c8Kwv2FXcmkLtymxvepdavHY?=
 =?us-ascii?Q?zDFNdDNTO8B2FBCWm2U6Q4j2NTj3bAWdWOh4crcdrsKRMqlQOCg5WpFN8hJ0?=
 =?us-ascii?Q?5zZnZXXN9/ExeLIlyVVxzHYH91rXXSgXLjdxdLR1yQulG3XSn1X60wkTJo71?=
 =?us-ascii?Q?2t3wlt46VB3O855zelkqNMHR4zM+k7jYwA6NZM7l23v7lD8U/NIrHgvSkGLp?=
 =?us-ascii?Q?Sg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f63ae2d8-b975-430f-27ba-08dcafd5e82b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2024 13:54:03.7405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VZ+ISZ2dFdAfuXsCnZy7fX/EAZlofTXdpj2lnw5XPpeZ+MbeUj8xiGkkJBDgLpW6Cd6tBL0ozHD+kvto7gho6yM3bOeAkBFkJwQuKVAr31o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7659
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Thursday, May 9, 2024 8:59 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
>=20
> Disable bit 29 of SCLKGATE_DIS register around pps sequence when we turn
> panel power on.
>=20
> --v2
> -Squash two commit together [Jani]
> -Use IS_DISPLAY_VER [Jani]
> -Fix multiline comment [Jani]
>=20
> --v3
> -Define register in a more appropriate place [Mitul]
>=20
> Bspec: 49304
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 12 ++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h          |  4 ++++
>  2 files changed, 16 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> b/drivers/gpu/drm/i915/display/intel_pps.c
> index 0ccbf9a85914..d774aeb1673e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -948,6 +948,14 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp=
)
>  		intel_de_posting_read(dev_priv, pp_ctrl_reg);
>  	}
>=20
> +	/*
Hi Suraj,=20
> +	 * WA: 16023567976
 --------------------^^^^^^^^ is not the correct WA number.
Please mention the linage number here.=20
=20
> +	 * Disable DPLS gating around power sequence.
> +	 */
> +	if (IS_DISPLAY_VER(dev_priv, 12, 14))

Also, I did not find the link to the display version 12 for this WA.=20
I could see the target display version for this WA is 13.00 and 14.00 as a =
permanent WA for now.

Dnyaneshwar
=20
> +		intel_de_rmw(dev_priv, SCLKGATE_DIS,
> +			     0, DPLS_GATING_DISABLE);
> +
>  	pp |=3D PANEL_POWER_ON;
>  	if (!IS_IRONLAKE(dev_priv))
>  		pp |=3D PANEL_POWER_RESET;
> @@ -958,6 +966,10 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp=
)
>  	wait_panel_on(intel_dp);
>  	intel_dp->pps.last_power_on =3D jiffies;
>=20
> +	if (IS_DISPLAY_VER(dev_priv, 12, 14))
> +		intel_de_rmw(dev_priv, SCLKGATE_DIS,
> +			     DPLS_GATING_DISABLE, 0);
> +
>  	if (IS_IRONLAKE(dev_priv)) {
>  		pp |=3D PANEL_POWER_RESET; /* restore panel reset bit */
>  		intel_de_write(dev_priv, pp_ctrl_reg, pp); diff --git
> a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h index
> 5670eee4a498..4cc82360298b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5151,6 +5151,10 @@ enum skl_power_gate {
>=20
>  #define _MMIO_PLANE_GAMC(plane, i, a, b)  _MMIO(_PIPE(plane, a, b) + (i)=
 * 4)
>=20
> +/* SCLKGATE_DIS */
> +#define SCLKGATE_DIS			_MMIO(0xc2020)
> +#define  DPLS_GATING_DISABLE		REG_BIT(29)
> +
>  /* Plane CSC Registers */
>  #define _PLANE_CSC_RY_GY_1_A	0x70210
>  #define _PLANE_CSC_RY_GY_2_A	0x70310
> --
> 2.43.2

