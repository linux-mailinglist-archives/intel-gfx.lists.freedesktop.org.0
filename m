Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2F5ABD166
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:05:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 378CC10E50D;
	Tue, 20 May 2025 08:05:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ghHBuaBK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE7E810E49F;
 Tue, 20 May 2025 08:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747728327; x=1779264327;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pAB0qgbyq+m+Dohy/u2xZHRXE8zEt+0Q46kfTuOXAis=;
 b=ghHBuaBKaTo0I6NzQbzPoEVNtxpfGSykwk4dSPM4+qBRzWuGrCP2UAJA
 bWzaYOc/fMoPtrdT3SdFEefIsL3AVZTPw+yJOH2ENZ0LhnXzguhpOMYk5
 mVLCZWkfihRE/qobdS7Nfu9Tn/BOvx+umpmDwDHNSgte00WFtcJVTFGeU
 L2dY6vGyT5Ou7uveTnkEW+iyocIB2voyfLHq8nk2zOxHdlPVnrrA+tB50
 Gp/YpciQ33WDr9/8wHDimAS9TNDwF43RzXGI3KHCml7nU2XmkOQrSBp7e
 rTLAddAvcH4ma8rH5o4OxtA2WcqZMP9PmJmLgkUkMEQe7wc9lrCnbe4/z Q==;
X-CSE-ConnectionGUID: JkGXayI1QamXb3Z//jyTlA==
X-CSE-MsgGUID: r5hwF8CJTVO5lGXyKsHrKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="60285883"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="60285883"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:05:27 -0700
X-CSE-ConnectionGUID: KTQFAelESjOS5INdfIAt8Q==
X-CSE-MsgGUID: Aoigcuv8S4upzxD884jhFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="140127470"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:05:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 01:05:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 01:05:26 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 01:05:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S0XQign5uO8fMdE73EsHwa2ZKzpdT0Pq/jyokIA6dIe+PSLIbpcVueCVZ3FGw0xhkDXTaR26kDtuOYYsNTcBdBWe6VBRGLAcYmK/Exy+pcD/TQeMiu4O8Z+zUlUDulNcuzj8+BbFDLl3T0HfaVWiHtaBKmnNluPNhYihtPjYf6wyqotpz88MkwPHqPvUWpxTxZROktES4u3EH2DtMevjeEZscaZcP85rpsGTuGV0WnJEi6b8IOfaBVFD7W61mFMlRF3MQonjBQ9Y2ksxYvjEY6fzk6rMJLUzLTCy0t/oLnJmFUeA6HMHNVJiCFvzgCN6vHDo1lmsSpZSL5K08doMTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hmlgrn6aGjgoZdsGSawrogEZWZlUOdmzNgBEcuKmdVY=;
 b=TpiiGzMmwpCRZ+xMULgQnVFdx/8oCTEdEmH2IvdtKfM2JI3/i3HLZjqxy+o8SNBcreaSUia+sE9J2VOSg12XzPtLCtRDYGy59R5SYIv7U1KyqxoqomC+gXWRYlA6oZyu4rdZX7+5QypZ3e6OeqRPZPyZAJOxguQVWXALIumOb4l5T36Cz1x9j9p++1kK6hj0iOuBnbvFtM493rQDxdczr9U0ufGs0mcriy+sFBvQbSERmD+Rfi3Oo3SeNyxCyqfbg1FYfYF7aDrXXYTEEBsyylEtgSgNnQ52EB8PiDE2TURjb4ySDSj5UD36Vpvluuov57CGhaTUX5vBPNFa8tKhzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB8362.namprd11.prod.outlook.com (2603:10b6:610:175::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Tue, 20 May
 2025 08:05:23 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 08:05:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>, "Kahola,
 Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 00/14] DPLL framework redesign 
Thread-Topic: [PATCH 00/14] DPLL framework redesign 
Thread-Index: AQHbxWmSyiCL7H1Gt0elK2KQEkZPybPbL/Og
Date: Tue, 20 May 2025 08:05:23 +0000
Message-ID: <SN7PR11MB6750565A90260496A664A2FBE39FA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250515071801.2221120-1-suraj.kandpal@intel.com>
In-Reply-To: <20250515071801.2221120-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB8362:EE_
x-ms-office365-filtering-correlation-id: 03cf6ccd-53e5-4ec1-4af8-08dd977512b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?5kdRo1Lq1HLTXCjBPIoRXQAlsMLUwdbSvFZQqx3bT4RsLm8n42SB5qgHFvJm?=
 =?us-ascii?Q?RcgmUzTHtDB117xAC7DJX27oJV/nQyt1m2uP0dzJn3v3Jsv4eswVbGwd1maQ?=
 =?us-ascii?Q?LlI97VR+caNs09X6S4rC1SMW9gBUAIciX5eTp+yBYc99E+9qnN8CBiYYkI9Y?=
 =?us-ascii?Q?/MxFZ2WZLFN2EDzuHk5o0QwRzDSZawpD6CvCkm7DqqCxupcT83HK6SqDLtRP?=
 =?us-ascii?Q?yPZ4rSlswG7dLn4elwhM1Zt2HGJfExd+1mcniBT5VPYAmh+vvyc2j/vpVnNR?=
 =?us-ascii?Q?k4VbzdbbeHnbv1P22RyrLkwKzkwKTkHBl2l1pmdZ9yaALlKPZZSZtbvS04EH?=
 =?us-ascii?Q?vUcb4uFyD9ZNphroUWkTRXV1U2x9oDUOpxJFBGLNg4S7iDD8x7UXJ+JAX25Q?=
 =?us-ascii?Q?Q7lrMhmlbP5E9JmBkj1gqqOQqJMJnMXf1nnyPZh1kZHUwHLF9kSD+IV0U2Hp?=
 =?us-ascii?Q?mx7MyuHO/7+HvQJpZTsXMQvlFlr3xZacum6wO5TUS0gcIJaRkOQ95520Dh1N?=
 =?us-ascii?Q?VyjungTjkXxA0YCkinCVK8PYPQ8G9JxSdeo/88ULJFNA3co6SWINJ+uBxzpm?=
 =?us-ascii?Q?FcVgBGBkTY/5uKDLxPrjskqbOosdfeI+q+cJZTe9ItlIvY/0HtGef6FKmwgS?=
 =?us-ascii?Q?323ouHb+LFzRT10BJ+LCRCWSBMRo3RhXViQg4r6YQhNHUNtRsowdPorOJj/m?=
 =?us-ascii?Q?0THj+2W85SJCD9XDvSUAjBwEjtP5d9kkghuAMxP6o1KM6M+luoK5P4tYsgog?=
 =?us-ascii?Q?y+UORpyX0pHzmuuVsuEi21FfVtnTeKokX5dx8ISL2dDusnTZLQgW+m1jbw1t?=
 =?us-ascii?Q?Yuloip8xjy23NVxCCjA2qG2Z3oFGiKqL/jN6hXHBSVybXj6NCITYo4oeTGU1?=
 =?us-ascii?Q?8bIj+qQhTGr2Jo+IRnOgOXErdhtJ8eAWjTD1AyYHjjgDz0qu2SNNmLEpfz1F?=
 =?us-ascii?Q?QqmnKCnYYwCdWdIjl/EpnXY6HurX3MJRXLyqzXBh8cRdnPJrMv/TTgTWbXXV?=
 =?us-ascii?Q?C8qUljJ8zxP1fMNuqxi3nJNNuwi8S2lN1QACa9oVt4dmm0ZtuDGQsqMmpZpj?=
 =?us-ascii?Q?X1IaAS1wWRzMFZIobkt63yzc+oW62WjnGsMoIU0N0iNRTulHzZjXVnDkzaRF?=
 =?us-ascii?Q?x0BuwW8gi2WXnskYDXLDLpZWautBrBjOwTInPNYZmrrFDcnwUs6k6gzmVUWx?=
 =?us-ascii?Q?w/tkVB/Qpt6QfBsWJJZh3Xdv9KhbqeAO6CfyIJEigUa9mVX2/PZifEfDWRze?=
 =?us-ascii?Q?Zhi3xeuq7ZN5d22mwQzwhjrppFdv+Pzg45Qpfc7oiMI3fmiq7GgmMtl4+RBG?=
 =?us-ascii?Q?X731xVBErDG4FeNM0Mt1r2pa20ZnOHVLny7eEZ/L4SBi3TgoNAm3yDJC3epe?=
 =?us-ascii?Q?OL4+D5Pq0tpzYH8qAmTFHZWCcNsM+QLxBpTg824s1AAuTRrxCc7jnhk+UR7s?=
 =?us-ascii?Q?iGQmiDLp89f3pQF0YdgnNSuvWR+mSLLMppbkosYz7holtvR1443n4DOSPAh4?=
 =?us-ascii?Q?3DfTP15uyExtAUk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+qaV3kB2G+WgulGTJjx69qs/RkEfjaRF4oxE8v2XIoaX33p4sx3ou9yKYOEu?=
 =?us-ascii?Q?e/lHgleDo2Nf/0WXyQbIjey0JjbiRqLsK/xNbSOBTo+8RU66OWbP/25xDJ/f?=
 =?us-ascii?Q?zTc0yat1gexYLyG8eeEX5r9g3GIkt+j6bfx1+8sWACpmEEJPOi7CJnLw4j2W?=
 =?us-ascii?Q?xbceU207otFCL3qhxhEUKOZS7RCdt+mMQKLlNgjGpOi5KIc9OWqCF0q58vCW?=
 =?us-ascii?Q?EeJ+pvBVJb5nE1LCKT5STgL3sp9UrE2ZahTRBoTFR+KAQwH6uRX2QgFsTAG5?=
 =?us-ascii?Q?HGSVreSxqpQNJjw+VwhZ2BlsuaXUtrUKFUa+TeBPuXW3o9Sso0Cmt+Hpqe1S?=
 =?us-ascii?Q?4kiByiAk2rhOdaLtvFv3yqNnQgKrE+sLXy2HfLSS8diG9i8ztmhL068soaRd?=
 =?us-ascii?Q?hP3QNsJtgXcTxX4JctSvfzA1Cb+eo3hJxWjRWhzDv8eHp8bNlg4Tb/4SrFJd?=
 =?us-ascii?Q?RomE5ZGT7PP+rnr4bo0BI+E2r2Z/ZX917r8Pumr1ueGuQuf8tCF38DRt2/MO?=
 =?us-ascii?Q?otslMXvqkt72hMp1nOouK7Noa0H4fMtywnu57sOlxHe20tu6VGLaY7lxYL/k?=
 =?us-ascii?Q?EJYF07mylHSmcthCIonN14ZkRg6vSkIJshrMyBHsfJLRz4Xktg/LSy6W/E28?=
 =?us-ascii?Q?iehqRMFPYg0ARdVmDp+aaAJ9ThO4NpRend2zpXKxKDl6ZZCN8gDbFn425XZp?=
 =?us-ascii?Q?ABraODiw0azoCF/85vZJm7wbq4iomyjgVbHElRL9rpiBcr0h2rWeYsMGtCKT?=
 =?us-ascii?Q?Fvn7XVQ9LisSp4/jNYckoCqcLSwtOhJlr96MK+LgkoJcLG2fNkIv6rYF/eLU?=
 =?us-ascii?Q?spXh+b9pC2aSo0Pz+LmRuVrcS4a5L3sFb5g3810vB1P08mJ0alJIT9AHroIJ?=
 =?us-ascii?Q?DIQwJOH6hrL+GC+BJr/KSMm1CeFxKriVnRqqhU3L0PAReAXa3965Naqy7YSQ?=
 =?us-ascii?Q?zA4uF9IDu4sZjdca6hPjR7yY70h4B+l165vQVRhCC228kKpesTHVkJ336dal?=
 =?us-ascii?Q?9KbG3xo07um6hzfnIIM4Sjx+QSh2reBjhEyDrq/Sd92oWdQLFzKYQTONG8Lx?=
 =?us-ascii?Q?uDwgkFB+dnF3Np3z+sYszHrMG9ZkHQwYMvfpu5SCpa3V2EOUf0SZvvCXdNmK?=
 =?us-ascii?Q?i/PJOROatmikZU1lx3pisVI45OBvqSTx/i3oFqsiDrhD//MNySL9LhhCLMky?=
 =?us-ascii?Q?JQ0hO85JKJYP/U0UCDd68g1X0hSN9sOErmqJXMdY7DE8Vq+9gY8u7NIwT7e9?=
 =?us-ascii?Q?1SH+Wl0xXTnRoYpVG07x55P2In4iPIjvFZehC7pzF3ovTz2WzxAcEZoB4M/p?=
 =?us-ascii?Q?w+dvyG3ijg2KjDhhgJ8VIZjUV5kTa6RMAWdu6MCdkEJfvfQ0SzuTzCa68NT2?=
 =?us-ascii?Q?F0X3MqiyFNyk6JB3nxLRo79gIrJtvHLXFiiX0IZdGAuljHysM4YlEIQPl7hb?=
 =?us-ascii?Q?SmZcrkR0V3S04a8clUNfRxIVS2Ro58ZTuq/Jt7WmIpS9XNtYZ1+yINg3WySK?=
 =?us-ascii?Q?U/9ddI/fKLp36BWonLnPNcrpkD1JC6vhcMI3hy/kiqMO5vll4hAiJwD2fG+J?=
 =?us-ascii?Q?lAvp5x9zI+L4dHVB7Ohncdky2hRBP8MK6nlWpOmJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03cf6ccd-53e5-4ec1-4af8-08dd977512b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2025 08:05:23.7269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9xoP9Au4rcf29s7ci0ZwTZSRkaKQ+eJAoO/RSIatCJrIHhtp++7YQQgaj+PSrQiVesQUGVukJ2H42s78aqL/GA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8362
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
> Sent: Thursday, May 15, 2025 12:48 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Nikula, Jani <jani.nikula@intel.com>; Kahola,
> Mika <mika.kahola@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 00/14] DPLL framework redesign
>=20
> Since MTL we moved away from using our existing DPLL framework this was
> done since the existing API didn't really work for us.
> This Redesing is a first part of two part series which will redesign the =
current
> framework so that it can be used for PLL/PHY enablement going forward.
> Here we move away from the shared_dpll naming and also change arguments
> for some functions which are needed for PLL which have individual PHY
> keeping in mind that we don't break any of the legacy stuff. When this ge=
ts
> approved and merged a second series hooking up the SNPS PHY PLL API to
> this framework will be posted. This is done to reduce the rework in case =
the
> current design floated ends up getting changed during the review process.
> We also rename some functions in intel_dpll_mgr to start with
> intel_dpll_* in an effort to make sure all exported functions have the fi=
lename
> at the start.
>=20
> --v4
> -Rebase
>=20
> --v5
> -Break series and send the controvertial patch next patch series of this
> redesign
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for all the reviews pushed to drm-intel-next

Regards,
Suraj Kandpal

>=20
> Suraj Kandpal (14):
>   drm/i915/dpll: Rename intel_dpll
>   drm/i915/dpll: Rename intel_dpll_funcs
>   drm/i915/dpll: Rename intel_shared_dpll_state
>   drm/i915/dpll: Rename macro for_each_shared_dpll
>   drm/i915/dpll: Rename intel_shared_dpll_funcs
>   drm/i915/dpll: Rename intel_shared_dpll
>   drm/i915/dpll: Move away from using shared dpll
>   drm/i915/dpll: Rename crtc_get_shared_dpll
>   drm/i915/dpll: Rename intel_[enable/disable]_dpll
>   drm/i915/dpll: Rename intel_unreference_dpll_crtc
>   drm/i915/dpll: Rename intel_reference_dpll_crtc
>   drm/i915/dpll: Rename intel_<release/reserve>_dpll
>   drm/i915/dpll: Rename intel_compute_dpll
>   drm/i915/dpll: Rename intel_update_active_dpll
>=20
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  68 +--
>  drivers/gpu/drm/i915/display/intel_ddi.h      |   6 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  22 +-
> .../gpu/drm/i915/display/intel_display_core.h |  12 +-
>  .../drm/i915/display/intel_display_debugfs.c  |   4 +-
>  .../drm/i915/display/intel_display_driver.c   |   2 +-
>  .../drm/i915/display/intel_display_types.h    |   8 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  60 +-
>  drivers/gpu/drm/i915/display/intel_dpll.h     |   4 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 537 +++++++++---------
> drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  80 +--
>  drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
>  .../drm/i915/display/intel_modeset_setup.c    |  10 +-
>  .../drm/i915/display/intel_modeset_verify.c   |   4 +-
>  .../gpu/drm/i915/display/intel_pch_display.c  |  20 +-
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |   4 +-
>  18 files changed, 423 insertions(+), 424 deletions(-)
>=20
> --
> 2.34.1

