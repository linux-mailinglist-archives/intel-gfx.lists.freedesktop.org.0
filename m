Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D0F9DA1D7
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 06:51:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 773CC10E207;
	Wed, 27 Nov 2024 05:51:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CB10OKQb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C5A910E207;
 Wed, 27 Nov 2024 05:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732686684; x=1764222684;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DscucnQprNFlvxZ1i6LyaLElxuk9Vr2ZpwsR5f6KtO8=;
 b=CB10OKQbPnx6M4ryUcVxbnww76yGxYEiE+orKXddAOmdkZCIQCBQa1mT
 NSo312k4RjXT45Paf8U5BpNb0agX8QZ2VjCqyRDK5dXzQwfM79On6dmCw
 AOZ/TkvzzC8jaDd7xBv9UJz12LJhuRDj5OujqLmRuUb1xzjAZN+8Ywb+Z
 4B/OfNXxeMz9Bnzftx+Ry8ixvVcVP4kqgtWfVB3hIMpM88aCn6YOc21yN
 JwhIlM3ANbNKug2WYe6tPSU9zwuyuIEV8xzIvVPvwNAgx4s0mHfOuvLEd
 +Pn/R2kkW8jj9KU4KWJH8Hqk6mq0Tlc4Tn7Yyjlj01FEgBq7NkUtl6mBX A==;
X-CSE-ConnectionGUID: BN/dxaDVQRCmLgX2/g/jNw==
X-CSE-MsgGUID: 8mUHXeVTRNmO5FGifGSo9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="36798745"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="36798745"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 21:51:20 -0800
X-CSE-ConnectionGUID: vNA0y7tdRLGSt1wGKicgmw==
X-CSE-MsgGUID: mUGauNrqRp+LGd/7O1wTgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="92247322"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Nov 2024 21:51:20 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 26 Nov 2024 21:51:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 26 Nov 2024 21:51:19 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 26 Nov 2024 21:51:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZHr/d5Vb7KhqJ19YGw/dcZO6mss5dKp/htR716upl0J3oCkgK8y/FC2Lx/ZlZeEl7hkgxj0ZBu1Bz7omeJRcnt+6XZdihEfKECHHdHSeikVgLi40iSYqsx6DeNerXWUsmRcIDA5UkSc07lCl7NeYmURbgDjc9oDb+15TasRQhwm1IeBVqRnaGx2Wnr2w1fDDoANaTj3VwDiDMgsZmMxqWGUNrf9QKN7AQHp2ps+WWecFiXMxF2VegGxw4riSvRNXTT/EQHoGXkWrnGqqjAOEs/qVA2Zes8VaBccBirqVyNRlUyb2k6kLbFM3CulUHvzZLxDl7HBI4jRqDAiQwQyn3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m0LTXrrzGwTewqxzRUNLWib3U1kA7rl6OTQF+9DVQ0k=;
 b=gvEwoMbb5DCachAK5FQBaPK5UiueFNSaDiaBqOn4qu+WjQyOZsihnSvdDiExWqTlm3XNYDPDXcbKzDRokRYj6BtGsQatiSDwwt69WumyhajIQLVOxr15OY7a2slCee+ciSaeoMqTPiKAMDO9ORBuQRBS69CsZ5sUppu+wDJ3DBKWsVWF8raYrMAw4f6y4OZAXT5gbqUQJOaQfEnMlEK5n6VcJxP67LCWY0pWnNIOzs+gRtr2py5+ofBPcKOw2FfFDfNwhUctORhQNGSlQ+10iVSB1EooGGsc/Qpsq2XuQf8K23+BUG7NmXSbh0a6Ork8oXsiB8P6/mkWi7mlIQkWlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB4920.namprd11.prod.outlook.com (2603:10b6:510:41::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.21; Wed, 27 Nov
 2024 05:51:17 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8182.019; Wed, 27 Nov 2024
 05:51:17 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH 09/12] drm/i915/dp_mst: Refactor pipe_bpp limits with dsc
 for mst
Thread-Topic: [PATCH 09/12] drm/i915/dp_mst: Refactor pipe_bpp limits with dsc
 for mst
Thread-Index: AQHbOzf412hBnUUhck6XnaIIk7cOtLLKqioQ
Date: Wed, 27 Nov 2024 05:51:17 +0000
Message-ID: <SN7PR11MB675033DB8534F1C734C5C771E3282@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
 <20241120103802.134295-10-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241120103802.134295-10-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB4920:EE_
x-ms-office365-filtering-correlation-id: aed83400-bd42-4a28-7e5f-08dd0ea782d6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?WIdukIWm7fM6NjwV8MZEc2nKXIOEaTdqOKsDmt514GulbmkOgDw5XKZ+7Vn3?=
 =?us-ascii?Q?2tIxzpMOf62L1aYu6DEWCoPbxq0u42DbIvhjfEnMRNWcqs6ImaHoZRgB3Vv4?=
 =?us-ascii?Q?PW3fgU+GT70XSMrxXZVtQ04Ch69P0lryn6SWsk3wqTGMmia4Tl8pIOaxGyOF?=
 =?us-ascii?Q?1ao2OtSwCj6CKs24EsuGCs++MM7C7w6G10k8bMzAd2OukYowT8etmin/Dmbm?=
 =?us-ascii?Q?eIcEL+Qj35Yu/FHtsUmYSeGyf23bN9oej+rWiybeAI/Epxt+Zn4CezbAVJvZ?=
 =?us-ascii?Q?GB9XmGw+hIrZI2TB/X1W3kKRE33HNUsL8VCNwc0GvrYKN3klt1M+xon8mVLb?=
 =?us-ascii?Q?VMYKLvhe3jzTDKwti7ygiaGPEDmrQ3ZGvWPyXXzM6TQRskp0+jtMz6Pdie7N?=
 =?us-ascii?Q?KhJvYTancnR8AQC2yC9B3WtXHn8ejKgGHmfJVQjSDCrupPsShs0lMC8EpMDp?=
 =?us-ascii?Q?vgRZH2uOV0NC2SPp9nFak2DD5HneXCCHz6B6Pic55MCjUC4pl0vUCKaj0KJU?=
 =?us-ascii?Q?OH+YXBjCeHq8PCZxs2fyT0diJnwvhDiVW2O4NbzGfpUE99sRRpjLDItoKVI7?=
 =?us-ascii?Q?Zih3kD4q9AnGRCi9St32b8WiUcD/gSju0JYvTswf5hK/2k9FaTq/zjJQ+oZw?=
 =?us-ascii?Q?+JFV81vla34aOaK/OEI5hlk/18UMIhpIU7tNIhd6vx1TlY1p4H8a8atMIY4f?=
 =?us-ascii?Q?OUtdduMla8o3T0fcFi8UbWokLG6TQL35iCYXO3RjyjIDgD4kMJV/6yA6vN5W?=
 =?us-ascii?Q?mnl3+pfL+W+MaqglLshDKdsMkfLCTHEOVq08rxX9I0rn4Td5NynX0ze6S6hc?=
 =?us-ascii?Q?GSectX/uPZuA30lKNH5BuTg476vsKKp5o/d7N/7WamckaC8/Yl8sEqLGRgTk?=
 =?us-ascii?Q?McgEWg+TjK56etjApUfJT7iBcBTAukBwnqRDGpcpNJpEqYm7UxZnp4XZ/O0a?=
 =?us-ascii?Q?A9Zm2m/3fL7p5g2d02kDhWNGxY0cn2m7lFETWX0ybgISZVFwHn3und3iCYRH?=
 =?us-ascii?Q?b+32vwbYs4he3OH/xgYouYxgmKe4gpuRcpnrHhs0MMRZWQYBnStzqlQAcvdQ?=
 =?us-ascii?Q?hwFhfOq24M0cd7DDN4siZDnxCW1Cln6MOp4xn9wM+2+P117gPO77CyODs/pz?=
 =?us-ascii?Q?LPlwQ6ElMohB1jKTO3TPurQjwq/EYp7bApi3gCuPRY7902xWHYwLofFR+gmT?=
 =?us-ascii?Q?AVrL9OCRepzfy64nEymjqxU869oV7vc5NyfBMd3WQAntoDf5CkHq/xm19NYK?=
 =?us-ascii?Q?h28tZZeYnMyit6PQny1lNP5MhY5PmpxB6YBl0EbvM6l3oZUc26GWGbbMi9S9?=
 =?us-ascii?Q?3RMavcGgnUTqoNPESCxfy6/+qPZmo2C7XwAcA+xhAGf37rzQtNOabPK4ICLf?=
 =?us-ascii?Q?01vVTL8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c1Q3JVoIvBuAiNi5IqopQic1mzi2zELzFl/IVMs9YFevdocrL3zbz4mgcoKt?=
 =?us-ascii?Q?WpsxfCxLFfbKzpz50WLibn4K7HdkiJy6nq6NwBFf9FpphHg62mtIV/Kx+xKR?=
 =?us-ascii?Q?Ffc5BDp6uplKl9dx55Lrchhk+Ilylu3eAg9GSMENBBuxW4h4h3/NzlNklIkw?=
 =?us-ascii?Q?UOnIrhzUI7wc1GYmHsEaazS94EhsuyWoEQOESLqT244IbJDiAoJ6Uwh1pLgZ?=
 =?us-ascii?Q?AH0Cpw3ZZ8IIDWx8xytKztWk38efklGRLV1IUsnuEl8vBhYgZlX7BjLVCI1B?=
 =?us-ascii?Q?XgMdwdySEhxa/iUpAIrBq2ih8duvrL9Eu7LKKkkgdGjNfEPamoSUG8X74L3G?=
 =?us-ascii?Q?aSobRzDGjQoruVanYrF6q3BZw43rHoPCbCHYmQLyKbf6u0QslJe91/kEoJwW?=
 =?us-ascii?Q?DDDe4o3SrVnVG7DEvz5lJ29UD1bbani3nR2qWXNvxSoNL6TJwfbn+jLwAzfX?=
 =?us-ascii?Q?+aS8hDE53ZRvi4+DDhURK84IOW7FPsYeiK6MMOwfHAp2D8XcXRoGpvnPT5d3?=
 =?us-ascii?Q?xX/HCur9aoSDqlwLny99tOTDhw2pWvM28oEap+kFzPcYi2eWxsTFtjfcfwGd?=
 =?us-ascii?Q?xM79ruXkL2aPAtp/u+3ida/BGpkbDMIyVd7S9Ef2CA37pRbXL9SwcsMAKQT2?=
 =?us-ascii?Q?qwJQOw/W+0Xr69qDjOODi958SaBh/AosZY89Ivx/CGGOTy/wChGzqENrKnDr?=
 =?us-ascii?Q?NUqw93YN8Asub4DdQ0k0buiBXtRIEBmULyENZeIoZPEUk00YbLhsBoxRoDrZ?=
 =?us-ascii?Q?2PHmarunnAykFIwGNwn6YuQdJrC5tYP4kLDHYG9sruJarfEwrTo03QOk4zAX?=
 =?us-ascii?Q?B3RhPVw9AnQu6QUuGiQqUYJHPCPpsjnRhC9Bk1TKhtLgQtskmMIEB12L+h5v?=
 =?us-ascii?Q?+QDcZ2XGpN17/HKmq39w4hAZ3s2C7PPlwYfFoQAy81/p750BVlW/0V1NO+vd?=
 =?us-ascii?Q?S+NfDW/A3dibCAF6hJDEd6qqLtK/uB8vc/D21Mxmc9lj43EXv+I3sJWHowlh?=
 =?us-ascii?Q?isM8frhb21wE6Kkzqj5r2GPFgtEy+/RF8wNHpcBaQgHlIMloKlQnBiFe4nY/?=
 =?us-ascii?Q?pWGm09GnoFad4jYL3AeW+/SWrIJCaJ1fHkkrafJcDh3BSllfmxgVTpMrphej?=
 =?us-ascii?Q?P7PsJpnkPzsI5/ZoTo1nHCa+RLgtp7IOU4vYdAgzM60szYvcH/DVdnTh/qlt?=
 =?us-ascii?Q?D+2lGVxWIIUOpASvPfy49bviWOcO5trq5k8Hpojvh2/7x/GY6MJYrdj+7wXN?=
 =?us-ascii?Q?4i6VSG1IgTR4EhmFBLssQkWFj0H3HwXUmG17oL2Fu3si857O4Wps+Mg8auCc?=
 =?us-ascii?Q?a/NeoWktOU/kM70Su+RhY37/yjBV8KZFjN+5OMmDAA+md2CgpTGyknnVIP3x?=
 =?us-ascii?Q?sZE6VRSCOOlaAuZ3iZQuajMZzG4PjuFUhfv5ivbKk8Msv9IGCP4eyrmu4NMJ?=
 =?us-ascii?Q?SnzcVEpzL8Zg04oEaqe+AMvQeHuYmnBLnv78UTE3wE/ol7C299EMfJw25e2I?=
 =?us-ascii?Q?jiyu4HrSEJWNhm8msAa7b1Iv2wIcT/hJ5cs2HogqOYpMlmvLtIbWa9MUXDCy?=
 =?us-ascii?Q?YjkRzzCe53s9YJY9UTj+BzFcbDS2OV5ReTxHZaUW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aed83400-bd42-4a28-7e5f-08dd0ea782d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2024 05:51:17.3702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bSwRcRcnodJH8jyKZv7nUXopH1BF3NonnMqwU/5o7B7umg9AwcZT1GC6P3BpLUuc00XsQvzhylwle1KAb1G7bQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4920
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
> Sent: Wednesday, November 20, 2024 4:08 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>;
> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
> Subject: [PATCH 09/12] drm/i915/dp_mst: Refactor pipe_bpp limits with dsc
> for mst
>=20
> Similar to DP, set the dsc limits->pipe.max/min_bpp early for MST too.
> Use the limits while computing the compressed bpp.
>=20

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++------
>  3 files changed, 9 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index b6d5e8eb75f5..827368b6cdb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2512,7 +2512,7 @@ intel_dp_compute_config_link_bpp_limits(struct
> intel_dp *intel_dp,
>  	return true;
>  }
>=20
> -static void
> +void
>  intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
>  				     struct link_config_limits *limits)  { diff --git
> a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index e5a25e5cbc25..973b2aa0da1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -200,6 +200,9 @@ intel_dp_compute_config_link_bpp_limits(struct
> intel_dp *intel_dp,
>  					const struct intel_crtc_state
> *crtc_state,
>  					bool dsc,
>  					struct link_config_limits *limits);
> +void
> +intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
> +				     struct link_config_limits *limits);
>=20
>  void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector
> *connector);  bool intel_dp_has_gamut_metadata_dip(struct intel_encoder
> *encoder); diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 9568924d143b..78cb65f7cb2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -366,14 +366,10 @@ static int
> mst_stream_dsc_compute_link_config(struct intel_encoder *encoder,
>  	int i, num_bpc;
>  	u8 dsc_bpc[3] =3D {};
>  	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
> -	int dsc_max_bpc, dsc_min_bpc;
>  	int min_compressed_bpp, max_compressed_bpp;
>=20
> -	dsc_max_bpc =3D intel_dp_dsc_max_src_input_bpc(display);
> -	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc(display);
> -
> -	max_bpp =3D min(dsc_max_bpc * 3, limits->pipe.max_bpp);
> -	min_bpp =3D max(dsc_min_bpc * 3, limits->pipe.min_bpp);
> +	max_bpp =3D limits->pipe.max_bpp;
> +	min_bpp =3D limits->pipe.min_bpp;
>=20
>  	num_bpc =3D drm_dp_dsc_sink_supported_input_bpcs(connector-
> >dp.dsc_dpcd,
>  						       dsc_bpc);
> @@ -576,6 +572,9 @@ mst_stream_compute_config_limits(struct intel_dp
> *intel_dp,
>=20
>  	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
>=20
> +	if (dsc)
> +		intel_dp_dsc_compute_pipe_bpp_limits(intel_dp, limits);
> +
>  	if (!intel_dp_compute_config_link_bpp_limits(intel_dp,
>  						     crtc_state,
>  						     dsc,
> --
> 2.45.2

