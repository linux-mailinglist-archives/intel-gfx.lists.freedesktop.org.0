Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A59A286D3
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 10:40:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BCDB10E775;
	Wed,  5 Feb 2025 09:40:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VHoTzwIx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E2F510E166;
 Wed,  5 Feb 2025 09:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738748445; x=1770284445;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mEwbGfibmw+ecoKkS1GKTpaaZH6ghwjpip7FxUe/Q7c=;
 b=VHoTzwIxo+1Him0EwE0ws1ZvJ07HRZDO0l+iSD6YH8TDJ5lPDon6ZTCY
 DtqmHf9huCdCRFe99K67BbxB5Ay2eYxcGDo/OYRDElsXNNXH9S189B0L6
 H1NImE3XaMfPkOzcjWiMM1fcUrgmF9I1f46Dss98sO/R2/hfDCWGb1ieu
 8RlRfDgepAe38siCIaUs3P2rjgV+HQF6Rlgk50eh1YpiDs9TZZt9x3Bsl
 wZj3kvNwUrgiB/Zj416ODX6AA068OSSBVedyF49OKNiLURQ6YCqVc5mWg
 u0pxFtqVyxCzvTM46BFBgL8un+nX+4OHzEG2mf0YsY6It5mZbsMrFc7Tr w==;
X-CSE-ConnectionGUID: u/SIHsWxShyoSiXKeYbPUg==
X-CSE-MsgGUID: JOnYGicYTkes3Ra5lSLn9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39205912"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="39205912"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 01:40:45 -0800
X-CSE-ConnectionGUID: bj4uFwPdT3uEPdMBnxosfg==
X-CSE-MsgGUID: svFhdoKsRcy8LdV7BTum2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="110643706"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 01:40:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 01:40:44 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 01:40:44 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 01:40:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GBMBQ6owy2ElLCXDzjl1iAJvJQDpXVdll8fnLKOvo6H4IE7eAPTX8hqSN+QmiuDiNcVXAxco9kCAol8iVvYO/ly/SjxwHV9Q1+sT45k+zIq8jdMeWLArsIRRuHy7MYSXEzb+bwSWpniSBuhRTWeiBmkuuIBUSW4TQaI+/WXOX+qj9FsZ57QCKu0ylAoqIGaY49OPudGy9HmSDtp4yYtCqAEG+Laxi1nJ0a/Z8SYKWAqzGlU+N88f2/NVyvseA06+LfsjE9PnveIdBgfqE9H1bJjkSO4s3VjF5+nxboAfHyzV3LIyOxx71cQxYFr95Vy3ED/1XsXGMXiLgslUy9Tqug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vBHwuBw95X91Ft13AiWMK0BOVfTF5AZJASemndGVC1M=;
 b=nw0aSNZhBrUy02frdD/BPMRJqwy6AsaxOXHHfFP1rcCRgKPDwoSWsJHaRONIFBHKp0N4ejUyZIqW1JtgtCNq/ebRmBC5FZaxkM6aBs8LziLavYj1XASYzXIFeQkZEWlPemhjZ34mvRKpxfWe2KA6m8+EmMPnjpO1kwBeUCFMN4RUmnpCW7HTrYKztxUCIN6XoEAuidxItzve8DV4rx9z5UTqqpm6QBag7FRN0XtC453izWWfYVojJzJrv67EJcsV+tzrRAwJhIUvQMK0y8I9h9orYqEJlpdyFUdevyOeTwJNvmfC9CgpQKR2XLy3+ebkTImjQyNT0KKOnBqLgdKn8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA2PR11MB4953.namprd11.prod.outlook.com (2603:10b6:806:117::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Wed, 5 Feb
 2025 09:39:59 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8422.010; Wed, 5 Feb 2025
 09:39:59 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Reddy Guddati, Santhosh"
 <santhosh.reddy.guddati@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: RE: [PATCH v6 4/7] drm/i915/xe3: update and store the plane damage
 clips
Thread-Topic: [PATCH v6 4/7] drm/i915/xe3: update and store the plane damage
 clips
Thread-Index: AQHbc1omfzLOu3uavki0bIAcdaas77M4fIvQ
Date: Wed, 5 Feb 2025 09:39:59 +0000
Message-ID: <SN7PR11MB67508AADD6C54A1B6CD7DB81E3F72@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250130210027.591927-1-vinod.govindapillai@intel.com>
 <20250130210027.591927-5-vinod.govindapillai@intel.com>
In-Reply-To: <20250130210027.591927-5-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA2PR11MB4953:EE_
x-ms-office365-filtering-correlation-id: 48c6d0f4-5cef-460d-7548-08dd45c90e89
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?xCxcOqdM/nUSOEDF8Xfm+t1BMEdJxNSqWVMMAl9vDdCmiY1C8fdSExSeVIYZ?=
 =?us-ascii?Q?6GG3+XgPHoL+KAaJaDC45V4fviJF3g966JziRZQcIwEoMVH5ipNOtDhe+PGw?=
 =?us-ascii?Q?kRODIFN60XSyYutgNKxnQkjqa2aEhDl5/wRNkAgZZbkQpm4GjYVuJbHzVq/B?=
 =?us-ascii?Q?RqDzgy+ADcIWy8bSl6gl3kw/OUBBMzaGbIpf+qSu2l4H/4teknEYpGBrlOBQ?=
 =?us-ascii?Q?pGgMtrp4d7MLg0DYMwIpG8YUIkyfkmjByqqf0Vxa0qkhnJa2DgzQqAZ93GPG?=
 =?us-ascii?Q?XNWdvIWt4LOa6QtMaEaYc4RRg/NFOJRbRPzX+c2XSqS8WOQRW4dDadbEFEzq?=
 =?us-ascii?Q?Tvcdljbq2IWyuBLpv1nSadjnvcbFQKz+g6EFB56ThShHOeh8TwInMf8NUtIl?=
 =?us-ascii?Q?lWH5L6az80WtE0LX8KCgeMQakgLHIh8RcBG+eRBr2kxn3byUCOU8aQm6+1PA?=
 =?us-ascii?Q?8SgLctVjVSClS228mAY9sgSwI+mRu56n8BFHW76w6u4zye9RNlxUVgs/vFc3?=
 =?us-ascii?Q?DJnhYrASCUH2BiczZxe44ivj1Bg8w1WpNoczsg89tzZyD5FMmg8h9yysHLX6?=
 =?us-ascii?Q?R/VKACz8bGoJq1HZcucYf6kD/LrrC7hcWuDR1Z0lG2ju4jw+y5r18TV3jWJU?=
 =?us-ascii?Q?Zwi+6HceBGAyLUx0d1Vo/2/ks2ijbP6OdFUd2yHYdR/KmasQnppIeDKZXCOS?=
 =?us-ascii?Q?Jo9R4mSCJbfWm5CncXClhePiuXaiiIPxzrSgpw7cy6E1Ops1TQzh3cStxPu4?=
 =?us-ascii?Q?PyHMREpTAVOa+AwzNhMSBucbzH9V0rQx9yDQtbxMmd3b/VBzDB3yFV9ECtAM?=
 =?us-ascii?Q?v1lQCgcgStD1yyvjz1D49LYHZTo7tTMRJfZIedbJ8TcWoh74g76jenSm9ZSM?=
 =?us-ascii?Q?2rfmCKEp6vOOtFUVHlyJ+aLga47nWe1/0J3g0CB1uVNpWSRT+fRrN7HzSppb?=
 =?us-ascii?Q?XZqh1kRYbkFu01p1VvWNoTMOR30CL+R2a5Nc4fWDEVjehejz4rhKDUISIVh3?=
 =?us-ascii?Q?lll8bmPlJ2tSKYH3oWSilMM0kZwgvDWjGZr458maTbyNrfjtQ4ZoHn67d47P?=
 =?us-ascii?Q?wK17S/PRPlUsOMpLWVP4pzfanFQ3Ss0bA+ks4tbK/wc4IFQUH0BGLwDAt2Ds?=
 =?us-ascii?Q?2rO/b7J/gAt4trfYHqAFa01l7tA5QrYqdMSAuE+tozT1eOvZQtmTcuwNbrfu?=
 =?us-ascii?Q?Cx2fL++AG+poU7qJKozDIvK5V+ligMNgLfmd+NdstyKwCUfQN5j3fnFi1vrU?=
 =?us-ascii?Q?C4merRTKFeunJqmco/d9g4j8ppZY2vgUIAKHgzdesrzaPo4Xw7a/iRVQI8eQ?=
 =?us-ascii?Q?zvVUjdlXWzqrtVQj3S9fePF5qIwKYj2vLo7Yqm0foY7pNDpBnf0bKApWiZNs?=
 =?us-ascii?Q?De+YdXb34pvWDbTKjPyfAuvJImwe/urzgMHI5RXoyTdtbmXBGqMPEOSOehnx?=
 =?us-ascii?Q?NJ1wyOe5yzGV8XgKDNZEvdEbENKwVcDO?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zdfp/6gKP3yJfMW4CN1emVI4scSsp33gJs5CBas19rO0VWocKwtV+T276edW?=
 =?us-ascii?Q?bdaKsmCC3HfaqoN0l2QBJI9sGvIXJf8y309R12sB2m5xHkbzQG3qFpXmBo0J?=
 =?us-ascii?Q?OJF9k/t1vFbxC6icDAYCPfSp3bDlPcGJPkdjcHRRhfcDP5QB4XYPXmf2tpDy?=
 =?us-ascii?Q?iEHCvLzw1A0dRlRZaTvHrpUcreDuNnvcYl+70CNvN0IYGKrvsM+47f02bCZj?=
 =?us-ascii?Q?VIe/DbFfPED4yb5/E9E/BV7VUkLapLLsmpvamfaFY7k6LZjXta1GKOK7NDA4?=
 =?us-ascii?Q?dBXOmuWqp48UCMrIUPL/xF3B6NbZZSU0ZAxb5pkgg4X5o559nWcubpZicM42?=
 =?us-ascii?Q?ma6se8xn/RHy0skqeEIEVlJbGtOEC4zmRxWYWnywXndLLChverQ2BaNHLSwJ?=
 =?us-ascii?Q?uUGSyeIsHPc1vqK+39mzeRmvxXUyZBbn1VKbqf9cYrzxTV8qFzA56oEK47PP?=
 =?us-ascii?Q?W88EXbj7ciBo06mlm9Wtk4r8DTHMqdV7Cwv5K/PnFNl7PfvYZDT6LqGDbxhS?=
 =?us-ascii?Q?NUWgkgunsh0xzMMZDPT5aXdctlaZ57r91+MTKmp1DvqUH2HMMSJILXtG6kpF?=
 =?us-ascii?Q?eODrievH/STgKXo+sd3dS6B6UC34rdROUiVo+tVNvQixeDoOoZJXAzJMAQRf?=
 =?us-ascii?Q?ChxyyCi9C6xwyE1TDEHszho43o2Yi/qmz5PZ5zPbRykfLo2UKqRQ9C27a5SB?=
 =?us-ascii?Q?EbIxPbtxRLi3pZeWQSVEE+oK4C7PIuzVUm1W8jogVE6zPYlimkoM5UwGyc2n?=
 =?us-ascii?Q?pTO8LeT+a6XuAw72UYn9w6WRsDictq4l288CoDsWKXsxrd4ITalcWwAeUdzX?=
 =?us-ascii?Q?mdDXQVyJD2QPAmpdpD94DzVEmVZUVY8eCK3IjIYEOu1frU9JIn+THtfKXmDS?=
 =?us-ascii?Q?paJ+8jIZTj2wo4gitTnPSXrHlKyDvJOUX2OwNSplAPCXRAlzx3rb1v7C1eXV?=
 =?us-ascii?Q?9mmo+6XnxH0UxaihgckRnbBboy7HTV/Zhq/q2I27dDBkuzyytabeJNZAzj8G?=
 =?us-ascii?Q?Asy8H/h63/TZjCWq6uHaJTBG+FPmIMk3E5jagesW90PPAyf4cr8jGwRODB7S?=
 =?us-ascii?Q?WarrIw3iCwIeW5AM/HNg0it8Vy293BwF8ogP++qSS2pjFVEUMLEPNNWgx+XO?=
 =?us-ascii?Q?p+87AOKKef4UKcnE5cNm6d8LfYmBt/k5iQdBdUP247irY6ix7HLW7iPIbxNX?=
 =?us-ascii?Q?PdZZ2XzabQHJDeduL2oZcor3pfeG3JBaE6deK80uunbJlyZc7YAnBEVu60m9?=
 =?us-ascii?Q?okaBN7C8gLzV1cq1kEMip2wBDSZnpoZdbSvc0hBTxdzM0Gfw7pZFrYuysINP?=
 =?us-ascii?Q?7rHd2B8QWhyIc1BQalAkbU0ueKxsvTs9ujzsktP/m6otkURIXvbIAafz9hjI?=
 =?us-ascii?Q?dCOj0di8630Ca41X3oaic9J9jEk7IRYXR7rmUw6aGRYZ7sPzoCU9h0hYhud0?=
 =?us-ascii?Q?4m7ejVVtWPqGGxaGQvJMCgJJTOcNDrsA8TCEy/yG79DOyzoRJBasQlrA3dhn?=
 =?us-ascii?Q?RmS9vhh25vIQ5KWSbhKAngpdR+DJFc7XPe3K5bfXfWTNFHk0EpDSRmRFVTA8?=
 =?us-ascii?Q?uooOCLykO8mFOLYofyIRrgPnnUKx33kcWcC6D5bU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48c6d0f4-5cef-460d-7548-08dd45c90e89
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2025 09:39:59.0569 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kjO3bC/WtO3LSTRACWRuYucEwJBjex75DODms1HwpMEAGBEzMsc52L/iUF4yvaionW0GSZbYmkOuI6A94oMZqQ==
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Vino=
d
> Govindapillai
> Sent: Friday, January 31, 2025 2:30 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Syrjala, Ville
> <ville.syrjala@intel.com>; Reddy Guddati, Santhosh
> <santhosh.reddy.guddati@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>
> Subject: [PATCH v6 4/7] drm/i915/xe3: update and store the plane damage
> clips
>=20
> Userspace can pass damage area clips per plane to track changes in a plan=
e
> and some display components can utilze these damage clips for efficiently
> handling use cases like FBC, PSR etc. A merged damage area is generated a=
nd
> its coordinates are updated relative to viewport and HW and stored in the
> plane_state. This merged damage areas will be used for FBC dirty rect sup=
port
> in xe3 in the follow-up patch.
>=20
> Big thanks to Ville Syrjala for his contribuitions in shaping up of this =
series.
>=20
> v1: - Move damage_merged helper to cover bigjoiner case and use
>     the correct plane state for damage find helper (Ville)
>     - Damage handling code under HAS_FBC_DIRTY_RECT() so the
>     the related part will be executed only for xe3+
>     - Changed dev_priv to i915 in one of the functions
>=20
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 28 ++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  .../drm/i915/display/skl_universal_plane.c    | 45 +++++++++++++++++--
>  3 files changed, 71 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index c558143f4f82..f55f7044dc67 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -36,6 +36,7 @@
>=20
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_blend.h>
> +#include <drm/drm_damage_helper.h>
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_gem.h>
>  #include <drm/drm_gem_atomic_helper.h>
> @@ -322,6 +323,25 @@ static void intel_plane_clear_hw_state(struct
> intel_plane_state *plane_state)
>  	memset(&plane_state->hw, 0, sizeof(plane_state->hw));  }
>=20
> +static void
> +intel_plane_check_plane_damage(struct intel_plane_state
> *new_plane_state,
> +			       const struct intel_plane_state
> *old_primary_plane_state,
> +			       const struct intel_plane_state
> *new_primary_plane_state) {
> +	struct intel_display *display =3D to_intel_display(new_plane_state);
> +	struct drm_rect *damage_merged =3D &new_plane_state-
> >damage_merged;
> +
> +	if (!HAS_FBC_DIRTY_RECT(display))
> +		return;
> +
> +	if (!drm_atomic_helper_damage_merged(&old_primary_plane_state-
> >uapi,
> +					     &new_primary_plane_state->uapi,
> +					     damage_merged))
> +		/* Incase helper fails, mark whole plane region as damage */
> +		*damage_merged =3D
> +			drm_plane_state_src(&new_primary_plane_state-
> >uapi);
> +}
> +
>  void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state
> *plane_state,
>  				       const struct intel_plane_state
> *from_plane_state,
>  				       struct intel_crtc *crtc)
> @@ -691,6 +711,7 @@ int intel_plane_atomic_check(struct
> intel_atomic_state *state,
>  	const struct intel_plane_state *old_plane_state =3D
>  		intel_atomic_get_old_plane_state(state, plane);
>  	const struct intel_plane_state *new_primary_crtc_plane_state;
> +	const struct intel_plane_state *old_primary_crtc_plane_state;
>  	struct intel_crtc *crtc =3D intel_crtc_for_pipe(display, plane->pipe);
>  	const struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc); @@ -705,10
> +726,17 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
>=20
>  		new_primary_crtc_plane_state =3D
>  			intel_atomic_get_new_plane_state(state,
> primary_crtc_plane);
> +		old_primary_crtc_plane_state =3D
> +			intel_atomic_get_old_plane_state(state,
> primary_crtc_plane);
>  	} else {
>  		new_primary_crtc_plane_state =3D new_plane_state;
> +		old_primary_crtc_plane_state =3D old_plane_state;
>  	}
>=20
> +	intel_plane_check_plane_damage(new_plane_state,
> +				       old_primary_crtc_plane_state,
> +				       new_primary_crtc_plane_state);
> +
>  	intel_plane_copy_uapi_to_hw_state(new_plane_state,
>  					  new_primary_crtc_plane_state,
>  					  crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index cb51b7936f93..8d53bcca9614 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -695,6 +695,8 @@ struct intel_plane_state {
>  	u64 ccval;
>=20
>  	const char *no_fbc_reason;
> +
> +	struct drm_rect damage_merged;
>  };
>=20
>  struct intel_initial_plane_config {
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 301ad3a22c4c..b90a7d52c071 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2249,11 +2249,42 @@ static void check_protection(struct
> intel_plane_state *plane_state)
>  		!plane_state->decrypt;
>  }
>=20
> +static void
> +skl_plane_check_damage_with_viewport(struct intel_plane_state
> +*plane_state) {
> +	struct drm_rect *damage_merged =3D &plane_state->damage_merged;
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	unsigned int rotation =3D plane_state->hw.rotation;
> +	struct drm_rect *src =3D &plane_state->uapi.src;
> +
> +	if (drm_rotation_90_or_270(rotation)) {
> +		drm_rect_rotate(damage_merged, fb->width, fb->height,
> +				DRM_MODE_ROTATE_270);
> +		drm_rect_translate(damage_merged, -(src->y1 >> 16),
> +				   -(src->x1 >> 16));
> +	} else {
> +		drm_rect_translate(damage_merged, -(src->x1 >> 16),
> +				   -(src->y1 >> 16));
> +	}
> +}
> +
> +static void
> +skl_plane_check_damage_with_plane_surf(struct intel_plane_state
> +*plane_state) {
> +	struct drm_rect *damage_merged =3D &plane_state->damage_merged;
> +	struct drm_rect src;
> +
> +	drm_rect_fp_to_int(&src, &plane_state->uapi.src);
> +	drm_rect_translate(damage_merged, src.x1, src.y1);
> +	drm_rect_intersect(damage_merged, &src); }
> +
>  static int skl_plane_check(struct intel_crtc_state *crtc_state,
>  			   struct intel_plane_state *plane_state)  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);

This change of moving from dev_priv naming to i915 and to start using intel=
_display
Is a refactor and should be in a patch of its own.

Regards,
Suraj Kandpal

>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	int min_scale =3D DRM_PLANE_NO_SCALING;
>  	int max_scale =3D DRM_PLANE_NO_SCALING;
> @@ -2266,7 +2297,7 @@ static int skl_plane_check(struct intel_crtc_state
> *crtc_state,
>  	/* use scaler when colorkey is not required */
>  	if (!plane_state->ckey.flags && skl_fb_scalable(fb)) {
>  		min_scale =3D 1;
> -		max_scale =3D skl_plane_max_scale(dev_priv, fb);
> +		max_scale =3D skl_plane_max_scale(i915, fb);
>  	}
>=20
>  	ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state, @@ -
> 2274,6 +2305,9 @@ static int skl_plane_check(struct intel_crtc_state
> *crtc_state,
>  	if (ret)
>  		return ret;
>=20
> +	if (HAS_FBC_DIRTY_RECT(display))
> +		skl_plane_check_damage_with_viewport(plane_state);
> +
>  	ret =3D skl_check_plane_surface(plane_state);
>  	if (ret)
>  		return ret;
> @@ -2289,6 +2323,9 @@ static int skl_plane_check(struct intel_crtc_state
> *crtc_state,
>  	if (ret)
>  		return ret;
>=20
> +	if (HAS_FBC_DIRTY_RECT(display))
> +		skl_plane_check_damage_with_plane_surf(plane_state);
> +
>  	ret =3D skl_plane_check_nv12_rotation(plane_state);
>  	if (ret)
>  		return ret;
> @@ -2301,12 +2338,12 @@ static int skl_plane_check(struct intel_crtc_stat=
e
> *crtc_state,
>=20
>  	plane_state->ctl =3D skl_plane_ctl(crtc_state, plane_state);
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 10)
> +	if (DISPLAY_VER(display) >=3D 10)
>  		plane_state->color_ctl =3D glk_plane_color_ctl(crtc_state,
>  							     plane_state);
>=20
>  	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
> -	    icl_is_hdr_plane(dev_priv, plane->id))
> +	    icl_is_hdr_plane(i915, plane->id))
>  		/* Enable and use MPEG-2 chroma siting */
>  		plane_state->cus_ctl =3D PLANE_CUS_ENABLE |
>  			PLANE_CUS_HPHASE_0 |
> --
> 2.43.0

