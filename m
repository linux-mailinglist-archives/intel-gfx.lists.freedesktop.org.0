Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB5BA33A85
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 10:01:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3727E10E2AF;
	Thu, 13 Feb 2025 09:01:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TmO/Xhx2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4605D10E2AF;
 Thu, 13 Feb 2025 09:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739437315; x=1770973315;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4T290Y0KCcmCNdFExdBK5vFvQSHCbS6rEJ8DDwrCJ6g=;
 b=TmO/Xhx21H9lgLGWyHdhlQ+PQPPhswK2Y/vtCHijPwaRD+XaTLuwIgGh
 Pwmv5ugW8G9kE79jP062cqmrFk18l30c1ACPT4O39pw9i8jVBhj0XYpq4
 guigNjNgzAgD8aIukqK6peB11M3Is7f+ctIsUfISnxFDyCFqEM+15pfKi
 /CZTgQ6ehGVB3tkkkt7wndScs4x9UJlcm9rjsXMDhJ7ScGjiUOvIL08hz
 TWeu0qG8uL39dGgZEtTTGXBV/lMUOzuSGqFayxRuEqjPWWZ4LE6nSzigT
 rGD+xyoiRoraSjdk5qagbbgqGlgtJcMmmXqy2chXuDR3X+74ZWoYBcV3W Q==;
X-CSE-ConnectionGUID: r0OpozzMToC/7hWkTB1cQQ==
X-CSE-MsgGUID: fSXYbYTxSH23dJQe+OCroA==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="40390733"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="40390733"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 01:01:55 -0800
X-CSE-ConnectionGUID: eq8GSAhIS4mUVpAXhecoMQ==
X-CSE-MsgGUID: u/Q0qvZmTqG7M6HWCwnsGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112924585"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 01:01:54 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Thu, 13 Feb 2025 01:01:54 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 13 Feb 2025 01:01:54 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 01:01:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uJaLKuluZ1kwsIqtd/eQ2jczzr3vcuEqLU6+0e+6Ow+ORIxHg6vPQjtV1G6jlYRLeV3i3L8HEqOjtRnYjkTnzFVW+UwDG3NA2bkdt5kEMTpZwB7/RnUUk2ZwtBmFaBKG5R9pF9aKDJRqcOmOhDVZ6PkBthhN98aQVNHeZ8h7S9B8V1Lmuy6t+Rvpm9dLbtT8/VvjZHPrg54Uat53ApXLzGAmRvMQCo4lAi+wMRV6ahi/s9gNSPA83NKjzc2OZ/7r36mt13Eg1Mtc3lQKd9PGWpT16uuNkjVSHfdO8OFKwLilP7B3q67wXZMAonIgDGRV60lyGuKkSlX65N2YXF8ASg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jiU+HyF3RqB3pnGAENpq1prXm78DIcfIPoTCtggXcds=;
 b=HRFNyMQrslj8Lhf5F/tVF8NDnG4QktfFK6XeQfTBq7KAi/Fi37BBs7IO/0gINRq4UbTlaQ31HWeThsKJXALdybM/BO+b0e6+DW2drWCwuI6lDYzkXNpurngjX9t2MuxUfqlNgsLvVyrBewamymNTwm3DVEX8awO/eaj2qSMCTfxmfC48oXjf20QunX98ggZnoCpiN1U1Icbbbk/weJ/l6aIet73+Xaup/rFRLATxVvFq35UGzn4wsceEXCQ0i+LYGSL538PRWMqUxv5jcehqT2c7MWoo6oie9L+aZJwfn88Gc/tvNJ0pTNY5S1WO+3nGFQr8DanLTbqn77J0DxIv7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB8035.namprd11.prod.outlook.com (2603:10b6:510:245::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Thu, 13 Feb
 2025 09:01:00 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 09:01:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 06/14] drm/i915/hpd: drop dev_priv parameter from
 intel_hpd_pin_default()
Thread-Topic: [PATCH 06/14] drm/i915/hpd: drop dev_priv parameter from
 intel_hpd_pin_default()
Thread-Index: AQHbfWxz3wRHkO5hc0i8hlQw0jrj/rNE8J0A
Date: Thu, 13 Feb 2025 09:01:00 +0000
Message-ID: <SN7PR11MB6750E7C6DC4D275AE724EC1AE3FF2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
 <4347a0f71a1a8c515617cf06471486d9bbb4a026.1739378095.git.jani.nikula@intel.com>
In-Reply-To: <4347a0f71a1a8c515617cf06471486d9bbb4a026.1739378095.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB8035:EE_
x-ms-office365-filtering-correlation-id: 57a4ac3a-301a-4c32-493f-08dd4c0cefe5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?34KqckpeYpyHLgxFPPtAU+QRvu/0muPVHyNXQ8mGrNvgxr1J7djkeENH8fYF?=
 =?us-ascii?Q?L2C2c7JHkANMV0eQR0Jj73sje3iJzd21IZ0KvMJFrWcRgSMPUBqdJAlFNqGC?=
 =?us-ascii?Q?5BzX86vZDSP++GYj5WeBXt4mWIp9S6dnmXueWV1sDK5RAkdLxjohCsFx0UGG?=
 =?us-ascii?Q?1L8Xnf4QRlLwHMxUzkH82q+j7t5T0OIXD4+mUxAr0CTDeLFQu9bKGubJMIGv?=
 =?us-ascii?Q?l+HIgxEVwFuPuQIsbdKDe9dksvLeHEO3N78unPfVwJq+gWre+TwM0URaqQFf?=
 =?us-ascii?Q?q7QKxHXTIe5m3f/Wu2wGlCvTR7R3H9k0WKhGTv5Ihr5/5WEp7RIsWP21mVYO?=
 =?us-ascii?Q?PEg8RCpsPbMy/C1P3z6o1BlmFPEMOE8h6hHcE2JWPrypaGx0erS8DcpORXtP?=
 =?us-ascii?Q?3IvvkBbT7JNa1/VEXAGCvNuwEGPG4JgnWO+YUw94rRifWn4H5wRLuQCMpKdm?=
 =?us-ascii?Q?3AwvEbFDepTlYVATkyHYtWeP1trY7puhaVwbwd3aGuUFAlbkSPMaxY+co1Nz?=
 =?us-ascii?Q?CBpxML2OI1hlzamWQtcpEPBf8ISVIMSJt7RdTfeh5XihYWKv1rCafNCYV1DO?=
 =?us-ascii?Q?jNXnQr/1Dw/cd6AvN+hT1ybCuz3sP/yHCNY2vhiEfpykfgWL74/UHhJO+Yih?=
 =?us-ascii?Q?nc1jNQzpaFWO9fXMAj82f2CgmkTCeWMzohvBAT6X/Y34m/ERfq+H6ORoJtbT?=
 =?us-ascii?Q?INF/MKzoG+kVUN2kVdyGOJSUfS/ixPYJp/O7kxt9MldG2pQYfXT5DL4g43GV?=
 =?us-ascii?Q?zZPYefADhnc2a+Av7l+/nOMYeU+qqL0HdIzEFKVNEQOuHXHYHvnkn3At3I1C?=
 =?us-ascii?Q?eGJhqgHApaFFuBQz2zPC38IEK2tKpbJ1pCXi0B9cegMjJF304AYcK6VBHHT9?=
 =?us-ascii?Q?k2/+A6osUueMfl6vmneDjxC+zu4I0Eyix3WocqAZeuvhd7ewwJ1neC2Ihwp0?=
 =?us-ascii?Q?XlbEXnEFUtce8Ym03WExvHBpBcSFYqYDOlG0bg0DIhWAAV746HltFC1GogQY?=
 =?us-ascii?Q?UlBd+ppXrBZgmNq6Xel+pKSLMFv9pcxi6e1nrZkF7ak2nggwMTcVRaHSg8Sq?=
 =?us-ascii?Q?G5/rQ/55vuZ0XjdBf2LVXR/xQrbhz35zDiB/9LE4rBkz6EE/CA5HE2wsmdOi?=
 =?us-ascii?Q?LX2FlVNwXFgZmI0cGyFmgQUKgPhc18FM0b+RfBStUuahIybAgvcISoQ53AHf?=
 =?us-ascii?Q?LV0/DooASZPk5wjyhwKTPFGf/7KU8xVgJvwbVM6e+nTor/Sju7ATTWL2H444?=
 =?us-ascii?Q?YReC90J8yQcOT767+DZxxTIv12zpa9oU+dh/FVeFEQ8Ghjrp2gIldlwkbmB9?=
 =?us-ascii?Q?zUHwX21RgYoXgXjIbHeG1s6wL3uc/bNUjKP9JvEQ6fMWUXM+sC35wLF20afS?=
 =?us-ascii?Q?T93TIxYWICEiSGFIHhlDq6GLj8XGFKVHjqM0yI+knDbjriBDSsAnOJArpWF+?=
 =?us-ascii?Q?1muvmp4kBoJ1nettHHJhpFm17NV/iGJx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?v2utx/EJQw/xN/DboSk/adotuYR7o+wbwAHzwdV2jLkAUTN91KJZ0KF4R5rq?=
 =?us-ascii?Q?400Ya1iL+hlFEQM3tpnR0vjEw7buDbCYe+IJwIr5ioHTGl8qhojz0ExgcOqA?=
 =?us-ascii?Q?aUvK0zy3T1sqNfasxytC/VraOjjo99FHCgqjEQ/NM6U2dE3UmS3EODSf4h2X?=
 =?us-ascii?Q?KyGReMfsDWzQU7aPl/dgpFQukMbc+5uxSDXiLpFqCzVRFhpvlh9wg5h3aTi1?=
 =?us-ascii?Q?duXoVwW9Z4lUeU9QLysyXINrEQj4PhXnve3JAqjQ7gpnnXpWiM/794xgZ4yL?=
 =?us-ascii?Q?j3LKdMAbc/eb/xapk66BBibThXOqCd7UHylkU2bR39N7JcZCxayXM7S9DtTm?=
 =?us-ascii?Q?cuoJhBYjN/DWH881+fa10g/ePt4ltvy49m8azmJDdg2HHhVT/MOmiFQISvcr?=
 =?us-ascii?Q?LpyAAsT0GKLmKor6jPnzqxYfUU9jITXqMqA9OHbs82XDAPgwVSkvh+MRq0CD?=
 =?us-ascii?Q?3TYECWYLNsUMVos46jrp1B+7WpvX/Kd3LRGNE99fAXhJZYBYHs5DXNJkKw/d?=
 =?us-ascii?Q?gJtTptfqMhJ9c5kstyz6eq0DZjzM0V2O056DsipnQgDIB/J2XOvQwbLeXdHr?=
 =?us-ascii?Q?Yv/xY5BTKmVpJHNGbyrqgmKfhnMULsCAYO5sEAC14JUjgn36zwawtFUHVzZH?=
 =?us-ascii?Q?KuqYKHJHndyKGTaw2OPxzzlPsawmCVPFELnDz4WNTx3ch36hgMMjiK90R2nd?=
 =?us-ascii?Q?Eoshefn+oe+fsdwdypYWmC8xniPaARGQ8ShkI0mq0LKRC+nyGQL/eW0MTEzN?=
 =?us-ascii?Q?w45yLHDKGyeGZ09zr7sTxPf7prb/PDV/+SPXaLv5lXQ+k2lkhHzhfstQAyl0?=
 =?us-ascii?Q?Zkj6ObZL6G1vHiaEM20FZMngBoTFGlXxH8qHLJsSLNyqRCB3knptf+jQWKev?=
 =?us-ascii?Q?Lwt81084tM/fO3Ieq3axB0ZK1i7Og/NVmtm8g1o0Fk3hnjwc1zGy78TE3YA9?=
 =?us-ascii?Q?XhQj9z2Me9PowBKxOpZBNGmcdqLxP0SMfMcVj41qC3/kYK2fJ+TJLWNnRz07?=
 =?us-ascii?Q?KyIpLjZoRwgh3BncMu+ARP0m4Lrb1O+bigVz6ReTvGo5wppgmQ9VJ79fXtzi?=
 =?us-ascii?Q?abiz/0BA1Tl4t7izw1IiGhKtT8hUeZ7e5yX7QnesuWvXPu7t0IYwfXGnGjGH?=
 =?us-ascii?Q?ef8QAESielcHAq7R0n613Im1jkAOB9SJHgSN9v7ij47q+DysJjT6BKw4phjx?=
 =?us-ascii?Q?WHQUpq589G0jibWUtAnesmMZeJwRWKm5Cr4RIcdGMkfGmdQiO1guErss++3A?=
 =?us-ascii?Q?n/hhLulfbuaddZLG77xQszkrLrsJ0F1FjrZ8Iv40LJdr7NJuwVIl3OV11XnL?=
 =?us-ascii?Q?6m74216OZjywgZlQwUZLdVc6nwwBJtqZ+7VcbTJt0UAbGcxPJzg7QYm2u0sf?=
 =?us-ascii?Q?5l8XNLctyPAin/6Y0AFZkknvaPJG9zs3cwwU/jlmDPKPcQJmnG7EK+2zXC+e?=
 =?us-ascii?Q?5ormA59+rrxcGhvB+gTtPcE1vFxqcQi+LQYwUKgNiADBDwKxVfJaxphRo5n5?=
 =?us-ascii?Q?hbnkMhmBqaetAMCp7Jcv9aCPN8pKb/vgMdUAcmQ1btPSYlPq8FQ4+G5ywaIV?=
 =?us-ascii?Q?H0ao6IHJ+NX9KFZwweyPSACAYXzkboybe585S+Lr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57a4ac3a-301a-4c32-493f-08dd4c0cefe5
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 09:01:00.3950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wMgQyYESsfgvbg5CldllUjxGL/6j0zcA+s523SKiOzJAlH5AambBDr7CqeSMQm9RmrBN08DQprBrTlxVCO8sxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8035
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Wednesday, February 12, 2025 10:07 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 06/14] drm/i915/hpd: drop dev_priv parameter from
> intel_hpd_pin_default()
>=20
> The function doesn't use the parameter for anything. Drop it.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c        | 2 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 2 +-
>  drivers/gpu/drm/i915/display/intel_hotplug.c | 4 +---
> drivers/gpu/drm/i915/display/intel_hotplug.h | 3 +--
>  5 files changed, 5 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c
> b/drivers/gpu/drm/i915/display/g4x_dp.c
> index b6cb5c74a32e..4b51a4e47f63 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -1393,7 +1393,7 @@ bool g4x_dp_init(struct intel_display *display,
>  	}
>  	intel_encoder->cloneable =3D 0;
>  	intel_encoder->port =3D port;
> -	intel_encoder->hpd_pin =3D intel_hpd_pin_default(dev_priv, port);
> +	intel_encoder->hpd_pin =3D intel_hpd_pin_default(port);
>=20
>  	dig_port->hpd_pulse =3D intel_dp_hpd_pulse;
>=20
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index 5b2df1014c10..1cd2e68e6ec5 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -771,7 +771,7 @@ bool g4x_hdmi_init(struct intel_display *display,
>  		intel_encoder->pipe_mask =3D ~0;
>  	}
>  	intel_encoder->cloneable =3D BIT(INTEL_OUTPUT_ANALOG);
> -	intel_encoder->hpd_pin =3D intel_hpd_pin_default(dev_priv, port);
> +	intel_encoder->hpd_pin =3D intel_hpd_pin_default(port);
>  	/*
>  	 * BSpec is unclear about HDMI+HDMI cloning on g4x, but it seems
>  	 * to work on real hardware. And since g4x can send infoframes to
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index ab382adaba56..ce7097937d70 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5368,7 +5368,7 @@ void intel_ddi_init(struct intel_display *display,
>  	else if (DISPLAY_VER(dev_priv) =3D=3D 9 && !IS_BROXTON(dev_priv))
>  		encoder->hpd_pin =3D skl_hpd_pin(dev_priv, port);
>  	else
> -		encoder->hpd_pin =3D intel_hpd_pin_default(dev_priv, port);
> +		encoder->hpd_pin =3D intel_hpd_pin_default(port);
>=20
>  	ddi_buf_ctl =3D intel_de_read(dev_priv, DDI_BUF_CTL(port));
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c
> b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index d2e0002c5dc3..9c935afc60aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -82,15 +82,13 @@
>=20
>  /**
>   * intel_hpd_pin_default - return default pin associated with certain po=
rt.
> - * @dev_priv: private driver data pointer
>   * @port: the hpd port to get associated pin
>   *
>   * It is only valid and used by digital port encoder.
>   *
>   * Return pin that is associatade with @port.
>   */
> -enum hpd_pin intel_hpd_pin_default(struct drm_i915_private *dev_priv,
> -				   enum port port)
> +enum hpd_pin intel_hpd_pin_default(enum port port)
>  {
>  	return HPD_PORT_A + port - PORT_A;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h
> b/drivers/gpu/drm/i915/display/intel_hotplug.h
> index a17253ddec83..d2ca9d2f1d39 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.h
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
> @@ -24,8 +24,7 @@ void intel_hpd_trigger_irq(struct intel_digital_port
> *dig_port);  void intel_hpd_init(struct drm_i915_private *dev_priv);  voi=
d
> intel_hpd_init_early(struct drm_i915_private *i915);  void
> intel_hpd_cancel_work(struct drm_i915_private *dev_priv); -enum hpd_pin
> intel_hpd_pin_default(struct drm_i915_private *dev_priv,
> -				   enum port port);
> +enum hpd_pin intel_hpd_pin_default(enum port port);
>  bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin
> pin);  void intel_hpd_enable(struct drm_i915_private *dev_priv, enum
> hpd_pin pin);  void intel_hpd_debugfs_register(struct drm_i915_private
> *i915);
> --
> 2.39.5

