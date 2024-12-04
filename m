Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 349799E3F3F
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 17:08:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 728D410E4FE;
	Wed,  4 Dec 2024 16:08:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LATn+abz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A54BC10E4F9;
 Wed,  4 Dec 2024 16:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733328527; x=1764864527;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6v0yVp+G1h6osZr6fJOgh3qOvRK0D6oY+UDUKSaIMWo=;
 b=LATn+abz5WpSmSXuuVaP7eWpqwxHxqQc97aEA9N47I40fJehdwHMmUk6
 m+dWnxU5cJFt14pe8D6+FVpHHJcx9+9JNr8pfY8PTzo4lOQSnyabQnVU1
 CP/e++vweGPUNOM2pCQQHFV92P1vjUjiKz5WhVjTTwFsvSJ195W9KkqC+
 Cayvq6XRcClHQNssm6dK1wF88KgG24r+JeCnTZ8jWBnwhlr5X7XqEXGbb
 5VlVhiBOygSl53T+0BopCBwwcvgTvz3SOtVyg+K19OOAiC7VksJGojOrQ
 ErNoNS0c8xuJjiNdPdYqwrbvkWfTonWbXoMf+53DW8ByG0ieaZ5E8vABh g==;
X-CSE-ConnectionGUID: T5hRQ8gCRDym8v1dPBx7nQ==
X-CSE-MsgGUID: taHYx6JpTWCR3yB8tPrCTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33663139"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="33663139"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 08:08:31 -0800
X-CSE-ConnectionGUID: SLp1YUY8QrWen1Mqfd/S4w==
X-CSE-MsgGUID: PwEvunN+QF6/WvHV+LINsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="97868376"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 08:08:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 08:08:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 08:08:30 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 08:08:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YrC4c1Ni3TrdSTz475ny7w5yUpD9Fm/6Ig8UR0ffeHbf7YeyVVn+5KA6EwEgdgYCqx4VXVvdcVCiO6JqjsgGReZy2bmThmL7V4OgfkzSqF7l9w2zsTEEr/zElYTZAGDFo3xy4dA9tAXlEzMtL+r9mCK0BIADP98/KF/KLQh0QkexqxTcwmBaM/9pa0RZeSpyDHsysj40QgkJVtwaZ2HAo+aMk591vyJut3VYMF5LVmE4nmhpmWcauaGutbLQW9+qWbR2eSiz+6dmPZroCN2qx431NH4jAnx+rLt25TdD1FJULG82w+ML4D5u2NCXVkOTGevW4E8x4JHF3+fsl03QLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ONGZRt5m3rkAXdkMjNW3IlCpX89RQY5p38hwCyJSlrA=;
 b=qhi79sPvBUNIRp2krX1D/hZLntdZ2waWz+4Rc9AcRSJYcU4DBHAv+JvWH9wcriFD6Z2BD6eV4S9KOEU5ckGp+IcqXUl5QI9CQ4SIMPDn3Lg1Xn7WokufTGKyXx4CZuPvSzFANzvqW9PQYX0YeICrsc7oIGzcQNM+JAeKxuHXCXWb0S2Vqtxl0Tj3QLZ8xvUIfBddlSBBPSBZexk9xofp2MJi/71tTXqDG5QV/1Dt6DFspPWISp0/0iy+BT1dEPvEw9ctcV/WzpJLpkRzPOCi57mNHuFT4wmBtXQOeZbvzEiNtPgI/TZ874ig9Ezm3kd8JdjzsFS75tBXreUsGu1MKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA1PR11MB7013.namprd11.prod.outlook.com (2603:10b6:806:2be::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Wed, 4 Dec
 2024 16:08:26 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.017; Wed, 4 Dec 2024
 16:08:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH 05/14] drm/i915/dp: Remove HAS_DSC macro for
 intel_dp_dsc_max_src_input_bpc
Thread-Topic: [PATCH 05/14] drm/i915/dp: Remove HAS_DSC macro for
 intel_dp_dsc_max_src_input_bpc
Thread-Index: AQHbRi5Gy5tJ1prZZke92cjGLkWvHLLWQP0w
Date: Wed, 4 Dec 2024 16:08:26 +0000
Message-ID: <SN7PR11MB675093B8C1D47A654BFDCF8FE3372@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
 <20241204092642.1835807-6-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241204092642.1835807-6-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA1PR11MB7013:EE_
x-ms-office365-filtering-correlation-id: ed61f695-4bfa-4255-7666-08dd147de299
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?DGNknLSJa51IVEubfbDS1Bi+Pl/VhAN7G2PXoVcA+zVencBVds1tGH6BZLRd?=
 =?us-ascii?Q?zZgxWcEF6CwNy8mNVoogMy2h18nVKYl9Q/rAM4yzYpTm4y/agF89KzhQx17O?=
 =?us-ascii?Q?jRuX27y5dq9W5ipIGz9ci5IjJV+GnngZ0qxxmYnNEsESmLZ/ci+DokC6ksvS?=
 =?us-ascii?Q?GWSkZIm8mKEVkCMWo42OMQlziJC55WJZjq98c7nWRJJoLRk5xbK2PHLb8xU5?=
 =?us-ascii?Q?9kdQ0mDA0CuGFPZc89qG5LtWRUDcdP2E8yzFlEKNcNqYxnc4wLg6wCzRzCqc?=
 =?us-ascii?Q?+OaHmwXlq5NsbMwcrduOTHyePB+3jnAWfa0RHc5g0y6jjuZ300n/lCqg2Icq?=
 =?us-ascii?Q?8dRqlbBsx0SAu64WAGhxnrDSMufZMG4F7OuDyc9XH/4kLOjv7FqdNvgfTAid?=
 =?us-ascii?Q?bWb5ege96ypVV3t62ZMtTHT/mHgFyYOG5V66Fx7CGF8wqF3xs06bl3MDJXKG?=
 =?us-ascii?Q?LIaQ/yxG3bF55cJUes1gtHieGwj34xgJ13Fw7vHJ4palqObXuNgdNFa40wPh?=
 =?us-ascii?Q?jU8GGJEUi5GC7lAxUdK5D/a3PELZDAWM8rkf8MYjv2d/3Kq969wHPmAawbhs?=
 =?us-ascii?Q?RpV7/Cba5EXRhIqOxc/X2fBKm0ym8HgDb7vUrDa9XT48LGyYDCVG7/5zjC/q?=
 =?us-ascii?Q?kXv/N4owcaQik0UB92yhRUhtz9bRGmdWHT1A7ce6qWdtrVPnZl9t5rkVRiJh?=
 =?us-ascii?Q?Hx35lRYHylYGEl+Odb8tvZf6z61UXTFROVeP24CGMlS2ufNjlB98Rjp4Z+6x?=
 =?us-ascii?Q?AimzrXkkshTXn1UQYRSUG0tcH1q7bI6KoYxuSOZUxsQCGAcRs1aZFMqsE5l2?=
 =?us-ascii?Q?lIVqyeuYz7ieVb5QuLmH5q2n2zTNv7vbSYNMGcvG4iXofAEpDbHbgc3deu5X?=
 =?us-ascii?Q?xQifXAx/KQW/3ptiiT6vg302ttbakR+lqVyeXJbT0lZNdAHxSSrX1KnDYaYE?=
 =?us-ascii?Q?9EV2uxhoqkKX9wrLLjwvJaJXw5ZVMtBd6Lbe9mhkQJ/QX1Sag1mgXoGEv+1D?=
 =?us-ascii?Q?gZHQRkI1lUzs/5mFTEbIt33dQB8YUD+fHPd3eM0TsB3ewQAdk0kj0i2P87+e?=
 =?us-ascii?Q?PXlVuQfdd0Bf6JhNxHeRxyC8YLt9XZPhw+rjPDQflQ5NyoyzKZLIzs+DvCUh?=
 =?us-ascii?Q?NykQPUKIuapIlJPe71X8ixdRVK081g9vHhHkFZsJzlwTELP4/cO6/V+EUqm2?=
 =?us-ascii?Q?pJ1EEjTJFicrs5AdWoZQoVZAX4+BtzjR1Y19bmJpSxrZ5cdBozNhj5yO51ol?=
 =?us-ascii?Q?YZPDRZPxYqOc6SwaaPqNJxM6LUI9XyGnlDzptoM2IiK0pKl6FUtwpni+qBaw?=
 =?us-ascii?Q?p4/eiIpJR1fbGmoV1ooqeUU3enSrQLL+dOTvvrrRwPxcSBuRiG4KcS3xISBQ?=
 =?us-ascii?Q?IzvW6TTwICbPdOgqVFzWyJP+eX/Vb1AiF+vRtUXzdLA8/0+IHA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BUSEaroMXPHIGcsTpo6jIA2ordE8dU30OtexJw3jywAC+syzdMEC2o/38nqi?=
 =?us-ascii?Q?Mc6xqkArUMNkBqQK5EERFJcyjrJnrBeUXco5EpUBhPINB0GmiBrQci2TbWX4?=
 =?us-ascii?Q?ns2hXFT3uS/GLiBkStn0QLqpYHe7TRHJvn2mLfRkbP9TebcxeBx7QaDkIwU0?=
 =?us-ascii?Q?irkir9/Xw2ypBnQY8Z7qowHtsJ2nTlkN9AMuFJAPyFDU4TIGTRZt752VPOhz?=
 =?us-ascii?Q?I0e1Gm3wI1drIGOWe1LMByWmpAFICB001e0U+zPDIDKMojenLzEgU3r7xgis?=
 =?us-ascii?Q?Q/U2Jb9i32bbo0O0IGqboCTRqBihjZFDSDdPgsFCwZ4hKJIM9vHKZPwEqiPf?=
 =?us-ascii?Q?pdEEe1uYK5HQlcICZXGtjH0C64sa4yiE+bvbUEf1VFTB0JI8YFedBHZOp/3A?=
 =?us-ascii?Q?0uKVrGQdLN4S4EnTRsVuSelUmbE05DMirWBotCNuMWXBLk9zlkLrBNnBtuJZ?=
 =?us-ascii?Q?RLBE7RBmCH+/e7vB2kAbKgpvcA5bfjVXQFjcB5mlUjDUoj1PxiU7I/qtlJu8?=
 =?us-ascii?Q?CZ4Bb6P++gm2OeTjEYmt+kb1SDFk98NRT3gb4PA4VBG+oEliJ6wrmcbh1iYQ?=
 =?us-ascii?Q?rPAT7EDdBgtunmU80AXgzflyDAFYjxOzORCdGNeZPxzqZQFwwSoUUte2mz7l?=
 =?us-ascii?Q?TzvtBonV6IWnANIikUU/LgY9bc5dUj53M5pX2kGB68RWg/IxuQfY+b46tn6+?=
 =?us-ascii?Q?RqHcRCpco6Fo7jSzVBrbEsYYtA45A7Or3+0kEZaTcI6Ga+dR3rMag2AnIV5T?=
 =?us-ascii?Q?xsIBoH4448aMa9lyoTxuDpwB8K3my83CtXlUpiRP0AuNy/HPEH6Dqss0BpGf?=
 =?us-ascii?Q?hRisQCYuaJ0e2ys2tagwf5rFBJnlhiQ3anX57rOBs8sP8K3suiPUOruTvKYd?=
 =?us-ascii?Q?EihqMqZaa35R2NWSKLPjkerXUtE0q7czDLgqxXc+G79gzbTuPSu/jxH0h2pB?=
 =?us-ascii?Q?0PdhiPj2Rx1xXCLq2KfZoa0aHpA4G73CwZTUGZ8oqJhmT7xNl5UshgVL1drQ?=
 =?us-ascii?Q?JY9taLuzekHnPpMwcMT1ikeXKUc2Aj/iBv/xA0m7IzJRH1WDkWDCjuYG+NAv?=
 =?us-ascii?Q?Yq8tglaUQsSdcmMuL/X3wMr+6ot39bgjYJMAeW27v+kHT9dtryPwB5dw3fwl?=
 =?us-ascii?Q?INSCTq+RYnNZYh/z4sWWNot7ElHx0J+U47JxdiXYjOvL3F3RGcmUtIhJ/eWP?=
 =?us-ascii?Q?xUPq2DdIP+V07PFUDNMzetz+Jjx6U7QRUsTajSlHJCE3YD+cTJtxUzXX/rOi?=
 =?us-ascii?Q?R4xbiScQjMlfowzSYzyuAZI/6HPj/pjB96lZ4C9cqOEi4UuB2KZWo2SvEyeW?=
 =?us-ascii?Q?utTgOYpwQ51LPwefsSGvB2FMUufUQogITfhNY+LbvNCTGbJCoK+JWpivz8f8?=
 =?us-ascii?Q?uSNaGl+KBjOYb7S/4aeMLXg/ikK5PwR17QrTnkm5NbiGLhoE3Umm6XYPpLEZ?=
 =?us-ascii?Q?nGH8o35rOFo6JL4W2nVBWN85ApffdzCpY/ak2qqrF9ZDjjfNG4z6T+ctdD2R?=
 =?us-ascii?Q?0Ni/nJhsKb1scxjqDZx8ouGcTO0sWLJubdxJn28v0RFX3FkoNHupsjKUtfFS?=
 =?us-ascii?Q?hb06pjT/jPeJH3Ek6/Llq0vDDILAfWZmnGGrXfOq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed61f695-4bfa-4255-7666-08dd147de299
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2024 16:08:26.1227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +ZZQJ2nMT+Ay3rgshLfhsrSWMq4MGBzDjt1ZRAtt1s9J56s/BCrq22DHVXUaH/pnOuKXGgrCPd7AHm3r1YGc6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7013
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Wednesday, December 4, 2024 2:57 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>;
> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
> Subject: [PATCH 05/14] drm/i915/dp: Remove HAS_DSC macro for
> intel_dp_dsc_max_src_input_bpc
>=20
> DSC support is already checked before the helper
> intel_dp_dsc_max_src_input_bpc is called.
> Remove the check from the helper.
>=20
> v2: Drop the argument struct drm_i915_private *i915. (Suraj)
>=20

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index d48fa94b2705..3989873c9516 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2184,10 +2184,10 @@ static int dsc_compute_compressed_bpp(struct
> intel_dp *intel_dp,  }
>=20
>  static
> -u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
> +u8 intel_dp_dsc_min_src_input_bpc(void)
>  {
>  	/* Min DSC Input BPC for ICL+ is 8 */
> -	return HAS_DSC(i915) ? 8 : 0;
> +	return 8;
>  }
>=20
>  static
> @@ -2199,7 +2199,7 @@ bool is_dsc_pipe_bpp_sufficient(struct
> drm_i915_private *i915,
>  	u8 dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp,
> dsc_min_pipe_bpp;
>=20
>  	dsc_max_bpc =3D min(intel_dp_dsc_max_src_input_bpc(i915),
> conn_state->max_requested_bpc);
> -	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc(i915);
> +	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc();
>=20
>  	dsc_max_pipe_bpp =3D min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>  	dsc_min_pipe_bpp =3D max(dsc_min_bpc * 3, limits->pipe.min_bpp);
> @@ -2266,7 +2266,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct
> intel_dp *intel_dp,
>  	dsc_max_bpc =3D min_t(u8, dsc_max_bpc, max_req_bpc);
>  	dsc_max_bpp =3D min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>=20
> -	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc(i915);
> +	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc();
>  	dsc_min_bpp =3D max(dsc_min_bpc * 3, limits->pipe.min_bpp);
>=20
>  	/*
> --
> 2.45.2

