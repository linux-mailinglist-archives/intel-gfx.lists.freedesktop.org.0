Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C82CFAA6DE8
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 11:19:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 447A110E8D4;
	Fri,  2 May 2025 09:19:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cncK7eJ2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C22010E15B;
 Fri,  2 May 2025 09:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746177586; x=1777713586;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6RrsLMnyXMmaBMpQnEMCOA0LAesWUTX4J3U5jysKAjc=;
 b=cncK7eJ2286H3uiy1NC2IhKQdgCDdR9c4LWhqOpFr327il04KdKih5Ib
 azw0HPnWfIUKhEJQiBuiT7eGUr0thjKmmn2pWe58TmUxAhqSLRLHDVEiU
 d+FY+wlKHMU8EfUFCGg3ZCfLLNBRpRf/kpZt+WCWPm2h4MSp5qzV66bR1
 O1y/n1R/IYGbWeF3FtUNFwt1ujmAYtiRdAjFIDdfGrBYFDIQ86hhSO0Rp
 r4k+hTbIfBXGDSqMM1/lrNdxoyIe1zq8nGoIl0YFYRsv6fnduToBwDUek
 3BTeEpOFNrIIGrlxz9Gt6tzTqpOG/7e+6IdYQy6Hy7ZWOrEftHDSO2Yss Q==;
X-CSE-ConnectionGUID: lGp8ZppYQcKpm/plcc4YrQ==
X-CSE-MsgGUID: wA1rWzMtQ+yzeuv/+B4Vhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="51675131"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="51675131"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:19:45 -0700
X-CSE-ConnectionGUID: pKvEGnBlTF+LhvQJ52J/IA==
X-CSE-MsgGUID: GU0Sp7+2QYitQdjKitLBdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="134559674"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:19:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 2 May 2025 02:19:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 2 May 2025 02:19:44 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 2 May 2025 02:19:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ylJ062kE3XyjlGD5mz1PQnkIX4vdWrymXi91FfbifI7cZ1+Km3TNz2y7/fa9c6eTCwHMfycoxBsA+Le3efoBIcFDnW40Gz1nEzM8a/0Vrmvxe6BOgAl8xYPCGovZBvsGveZLLidEOLqpktXZax/bOWRhOtX8+S90Sqq/XYrufzHoUOXneUEMRmAsboJPDor1mYrLGRWDpU0cXX1zecdRpHfMoGy3Qpak309Gebdy3+9aahZGpYR8oNBqwyJtI92sbpdnybcerdHPCHpXghzIFXUFGywhe+yZxs4IJzjq2xYcGCTGdz/Fm+bxp/a+MllQz/7q2YhXUSfuoatE9FLN2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DIZBBhK2MUMUaip6TQcEbPw93m0bkt1wI6Vjq4o42Uc=;
 b=q2HEhKykBm0fzSdOx1wOf/Y3FalTExKoN9Y4dr1tE+3lkXxFuLdXq3zqnokzDt+squv3s9XGGRO4+NDXjA70/b0MhN3gpqbwzgCaqL16MtBp1ZlVWPFP76PH5aJoR/2MilV1AGoDE7+m6aFa2eAfUkWCPNp763IhEWYgJcffwfkJ2SPHWwekDb38EZzC684v+/ta71i/ic5hFYHP7/zPZf83NQCz/bO/vtIXUsBEWmWDfLaqRAUIsr6+L98oJjQN0iGHPR3+sVDoFqWIgqH2RXI0Sb1W+MYtt9bBVdWscDNWz4/s/eZ0Tgkbp0ze7DKUmqCVRyG+SEkjGY6bOvEn0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB6971.namprd11.prod.outlook.com (2603:10b6:806:2ab::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.20; Fri, 2 May
 2025 09:19:42 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8655.038; Fri, 2 May 2025
 09:19:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 10/10] drm/i915/hdcp: drop unnecessary include from
 intel_hdcp_gsc.h
Thread-Topic: [PATCH 10/10] drm/i915/hdcp: drop unnecessary include from
 intel_hdcp_gsc.h
Thread-Index: AQHbtVPdzY5QjBC5hkmx3Kv58WOJQrO/G+Jw
Date: Fri, 2 May 2025 09:19:42 +0000
Message-ID: <SN7PR11MB6750BED9969C93D992C3A7C7E38D2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
 <26ae2c04554fc8dd76d2fdb0f2b0a63cb1fed98f.1745524803.git.jani.nikula@intel.com>
In-Reply-To: <26ae2c04554fc8dd76d2fdb0f2b0a63cb1fed98f.1745524803.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB6971:EE_
x-ms-office365-filtering-correlation-id: d8b40f8f-9919-4d10-cbb6-08dd895a78be
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?wAHtTqGGxNWB5Pkt1aRNhtK6FpCB6w3Xm4TmR00Panr1w8wuYhJZtMqKkrtO?=
 =?us-ascii?Q?zNdmGOP629uK150DUgI1Y4fQRaR7SRGPwYOEdcZaGtFTdfj++MKEzEFtiGs+?=
 =?us-ascii?Q?lZuu8rZm9cWBKcTO6n83Fh765hidi+M8MIJ6mgY7BI8+Mn502qBWNFuhn+J/?=
 =?us-ascii?Q?h57SH4exChx3TrGFnpdmMwqmQs3MdAQ4Dkv++He0v/Ba8YW8T8ZKeR1UjiH+?=
 =?us-ascii?Q?yHj9XBjerbgk7MwELTS2FPV6O23yAP8/uxQfi90Txze31BqXdGiQrGqDhix/?=
 =?us-ascii?Q?4J0zipaPSq4X8fb3Ecvck8E7zllmak8rNHOCM2gi4Pp8coscsZe/Q26qHVf3?=
 =?us-ascii?Q?lC+eU7PNKZPx1CLe+dcnoHfuths7M5By26AJxfuJUi+pcHqXcyHa6qj6L8N8?=
 =?us-ascii?Q?uPAYieDoV871Na0bYG0TqjZTkRYvdGqJbQPiwvrv6WUrblj4lnO8gtVInO36?=
 =?us-ascii?Q?rYseujQ17YO4pSunxwbPds4B11sH0Rkf8nm1oNw53P+jGGpDJqXJ/LcOaP7E?=
 =?us-ascii?Q?EKS8nmaDgtP8Q8XUQpR1ZMHfII6jM85TUflaXodr1KGd8oJLwNiUges79ub4?=
 =?us-ascii?Q?Ugq+CUedX9VLooScj8fs+rN5trPw4iSrkwm3848V09tOf8fDUoXVKfmbds83?=
 =?us-ascii?Q?KGJH0G2Ua4Umzzs5+NK9q3vsk/8tAfFt0gj0f8AT4Bgh3OLWayrJWN+D6pPL?=
 =?us-ascii?Q?q6601UCKgAOGi7hzfLpIpz4Y8kf9jvk6ty1nPR1f6E6sgymt+Xw1NAUJQyXn?=
 =?us-ascii?Q?IM8pA/qqDzBokQyoN5ddVbgdlPi8oQBqcfi0zgQ4tdnyNunS/lNjaTU9U8Cl?=
 =?us-ascii?Q?arOtgCLepre+asp4/oKXASwcrpvuXYDCh96rPXt9MkWfZfH4279tkW54TN0j?=
 =?us-ascii?Q?jq53GYQRJwV/WEdMt4dFiCD+7g7dJKlkitrDyYtg18sP0382oXuSYhhrCYXi?=
 =?us-ascii?Q?tqZad28ELPDdMHrotuGCI+nFO850S8vmm6vQqyinxgE0so5f0jqUnZt7ve1A?=
 =?us-ascii?Q?PiT2kXgr+Zs/LPys85XrhVBUR1C/K4U5z/gwxJfwujqnAZ36Bf0Z243EY6aX?=
 =?us-ascii?Q?ajux88gOG2om+n2Wf+iU0TkenRcvMl6tB5jo3TInuzBd9mi2JW3byw1P1kYr?=
 =?us-ascii?Q?LS98drNLR7yZ7ULdY7R98aw0uFD8dfORmYGyD1dxUMkzNFqa81A75SrUiJ9x?=
 =?us-ascii?Q?+arQLs30hDvvfVAuDmjCeaVL6WYvx9cFzOs5J+/+yhomdxwrLYQlSZJtKQ1u?=
 =?us-ascii?Q?UPJDGATvQlIoUmgsOrNQxB9+dom+NLgYJkaQTx1xYQqKKTazcuULvyr6FtYy?=
 =?us-ascii?Q?JN6dLFrPWcs2PsLTrfYxq3MnI/CYvxQCpX7xSiclulO6T1iR9A0rTPDFxORo?=
 =?us-ascii?Q?TOUf6+hIixymoOhluEjS3Z4XhSO9t1QbqaAVg3splHxJ3YsOf3Esa4bkoXm2?=
 =?us-ascii?Q?IM6YJ1t+bWiRtSAs3TaU2J1zL6Nn1TFi7Qsss38JfQoyQjXtmEPjHJL4eOPS?=
 =?us-ascii?Q?T/5zPI2i0xQKh3w=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZIhG1EIg0tLzHXkHwLYa3twhqpNmamnz45zox2dYiCZ7jggpX96HJC9yeRZF?=
 =?us-ascii?Q?21CRk11DlbekmAR+Mc3tZJfnDZCVYh7+9uURDJdPtG+aZ30Ky9ABgERReVrG?=
 =?us-ascii?Q?n1JiUVtkPb8JfuRY2UK6r6hNRggs0jaP3rMIhU0FJn6JEoPhzH9d3S4u7jbV?=
 =?us-ascii?Q?4ztIGEiseh0pj+a8hi9kKnVjoe3zDnNEqUztinrPk5l9biYb4eKLm5QePmWa?=
 =?us-ascii?Q?9zRkolBnAa9orTIDlzFD8sf+W6e/yuRjxjak+eVKJBxAUcBVTzrC8wdjerar?=
 =?us-ascii?Q?q9djTpT677/BDZZvwhhgxZ6K3e1ZLJVPFxSMOyZ07mkPKbTFf11VObyGhXkZ?=
 =?us-ascii?Q?qs/3Hi0BgYRsiFEXLYJ6EbeAXL6xk1QhXVfS468lu2fcXnNf20JRnSxgv8AV?=
 =?us-ascii?Q?DowzdqkFZVOpAVzuqsRGPyAMKMeZlLGmO+M52mXWR/fsq1x1oPdl5Mj0uIXj?=
 =?us-ascii?Q?gCSdTJzN6GTp/JBq+/9viL95us3CL3PQKYvExqUI8tVRJVtJSPiKG1XvGzSw?=
 =?us-ascii?Q?2fWPCb93UtB61TL4Psli2uPohmkt1fJ+p95O0LbsHLeH5RSTeqTtSgkbEju7?=
 =?us-ascii?Q?y4CpcuZpyqOuIibkX0gAmDuE9btdlO6BJBjQqEzASIQztz3HXWDu1CqL8IcW?=
 =?us-ascii?Q?CJMGJRwmrIy5FBRAYhzVZdOVVIwgMN6hC0si3Qcaiq6JZjspQ/PLH+fE9eQo?=
 =?us-ascii?Q?bYFECNm7JLnyGoJMq+BghVLSFO/uDW3KF0bpueFykpf8F2x3bUCOXuh+gUBA?=
 =?us-ascii?Q?U3t3jWUIpqVnnV9yFbLLFG2nK9DTOtgez5pGTcbBEKizI7SbhYfbz5Q8VSTV?=
 =?us-ascii?Q?ELvQuKo05U1R2U0x14nqlT6UuJrKOU7CEZOooaIUYguAzFlepqP5FMrinycU?=
 =?us-ascii?Q?eHuHZoPiOkPKgwRn8Pj1FwqBa6+/kTZpUjCchXu7zy9rl1EyKyv8JfU7F1tN?=
 =?us-ascii?Q?XrATvkk6CzZv8ZaSwD/n019jSaDnOnPbKtJes0aeuvojUTyAKtwAQ7Fb4wn9?=
 =?us-ascii?Q?vIAI77FNe5Ujs4dp2nahTWgquXWYeC//LRf8RA/zrKElAD8KJV40zZGxiC6p?=
 =?us-ascii?Q?dLv98O4CUtz/49gaV4Eqp8DdUKTlSCMfyfWMPL1RbZ1wpagm2eD3k2o16bjq?=
 =?us-ascii?Q?HCffj5VvcKNhA2V7X7vC6vUwtv5Oic2aezlCkeAysoEJ1Xw4d4DJCiaPX3Tx?=
 =?us-ascii?Q?cMhIP0puEMK6geMi7GFYbNxxPbtvAPO0tk+7zbaa+c2IfMQF9ke0aQbse6ur?=
 =?us-ascii?Q?340G5RK4jEQMoKnxWMQEtDTrVUhmSWhieIWbWTfhi+Gk/sLKLBeF/2CgTmIn?=
 =?us-ascii?Q?UzMX7uDRcJj7rHkH7k+tLGl3xHTBAATMB8kh3ynNxMwBoTzoiv8c0HxmXQuY?=
 =?us-ascii?Q?iBHMPz7wVgmvgUGYrWRZxAmpfWRo0NdxtgXytLBH4hdI95gP1D3OKn/PuyH0?=
 =?us-ascii?Q?CW4tE40nEHGCJOs/WsnBRWnIbsBnRzvuYu7931QcIvorniSSFda/nBtzeh7n?=
 =?us-ascii?Q?ZogU5N9T/FVGtvg3MY9oQqV5ioJ3wv289aF6F6VMUCZQ+gEkn3/gYpx78OI/?=
 =?us-ascii?Q?8N1qA50inn52rDDmCjWVuFrKtXkIPXwAyP71ulRi?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8b40f8f-9919-4d10-cbb6-08dd895a78be
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2025 09:19:42.2152 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g4N8N9qbzkdyiV21EvYk60m82QID5C6S6tysoaiUg01DlixwTQh9jo60h3GITepcR1JC8xGPIHe+bo0+lK/9nA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6971
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

> Subject: [PATCH 10/10] drm/i915/hdcp: drop unnecessary include from
> intel_hdcp_gsc.h
>=20
> Nothing in intel_hdcp_gsc.c needs linux/err.h. Remove it.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index e014336aa2e4..9305c14aaffe 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -6,7 +6,6 @@
>  #ifndef __INTEL_HDCP_GSC_H__
>  #define __INTEL_HDCP_GSC_H__
>=20
> -#include <linux/err.h>
>  #include <linux/types.h>
>=20
>  struct drm_device;
> --
> 2.39.5

