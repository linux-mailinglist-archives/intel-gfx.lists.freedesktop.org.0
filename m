Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5012AA313AC
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 19:03:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A35F010E24F;
	Tue, 11 Feb 2025 18:03:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C1qwxhhe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BDBC10E235;
 Tue, 11 Feb 2025 18:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739296998; x=1770832998;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kFioRHJj0FetghBUW4rVDKUgAsHCItA+/gXGp/8C5yk=;
 b=C1qwxhheQ7uY+6s8Qw4AAHmmkE9VQgbRZpPsCQ9THQuLCgd843v0e3N/
 rJW/eSjC9/ggSrEE2nqw4ZBl44lxhojhii7HObpP7KBipC81RpTmQ4eF2
 eoV+oxQedrz4jctKmhHOuEjFvOhanMx1rCwRMF88D2LFQnE/oTT++EnI4
 PPyY0iI72+2hw5U4xZiCe2K3ZlKj5Zx5YcH7OVWeYgdMxCN9dovoXgu5O
 4KxssBdn/5nEXq35Is6qY1Y4Lw2eXYZyyxIfaZmLo2N6w1rBt9JT2d1TD
 evUgFnVU1s+kc0Ql1ZabEo0WGuXTTsLuQxEAEYfXXy6z0XnvO2vtpRWRK Q==;
X-CSE-ConnectionGUID: wfMNiyGBQWeSbDXoizOxbg==
X-CSE-MsgGUID: YoqMP4YjTuiEZ2ZE78W5yA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39793781"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="39793781"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 10:03:17 -0800
X-CSE-ConnectionGUID: SDEu5eVZT6+5zFJXy2OsUQ==
X-CSE-MsgGUID: lPNP5RqkQR6lxYuX5099Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112345306"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 10:03:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 10:03:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 10:03:15 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 10:03:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CObxfVSl/QOtMj8OgNNg1dR/P4fe3WVqNRFmh+UPMPPkS3smRsAd2hZqFJCywxp5qkUnJnenSb7egCc76O5EwoyeK6XueT11t5H7xpQuen4nE3ZvJavSOlQHN7Z8Eys8qneQvmkB1vHeAtgrbrlbrR2Ifo2WbdS+wAGzFp+qPZw6irhOjW1m/usy5HCgsjYz2B/4ShPKsrYnBPg7XmppC/7JZzMgiNVR7ARV1f+HljBqSW3X/WowWpmmDDZwF8NyeAJy5jsUjDX0LoqAOJpWdSPkCgANXBRu0+4Iyu8baOcraVgwxsJzDfdr+fk66REJlEdf7tAfIGg1y81Ybg1Idg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uA0gjb/NHuAR9oC3mZ/xH3s+BR9H0hbw6LcXncvSMus=;
 b=AhX328048vg6M4ph11BkpbWT68/zx/YDHJ8vc5p9IpUwAeCRteanoKRH8WVGCJLiG4p2a8d65abc+DTc7niwxl5wN046kSqdqs/CBmwxxBsWpX1/GgkghGxF0ixhj1NN4u34tbE4hij9lC9L4FWLKEmCdpftNGRZhwkHdwgrWvv7hPaiSW3JOH7lod5LBEWI/7p9kCvgjAQLmcL9sfBIVZ21UyU6VtQ136ivgkVsHO+kdIvov4apk5REY6k8savUiE26HVzT53J2RtLe1Gc+GwmiyibDHhRcookJRdCHoovyYA5m8BQQj7OtBAPCO11Qk+HFg9vDmznwx0Bu0Wj5MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by CY5PR11MB6115.namprd11.prod.outlook.com (2603:10b6:930:2c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Tue, 11 Feb
 2025 18:03:09 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%4]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 18:03:09 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/pch: Hide PCH device IDs
Thread-Topic: [PATCH 2/3] drm/i915/pch: Hide PCH device IDs
Thread-Index: AQHbeUnQkBec7Muc1ESLF8Kz5KI6erNCa2nw
Date: Tue, 11 Feb 2025 18:03:09 +0000
Message-ID: <IA1PR11MB6467F153E92448212965A1A8E3FD2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <cover.1738923308.git.jani.nikula@intel.com>
 <d1ceb9fc461cf21e1b885a55293f593eba1458ea.1738923308.git.jani.nikula@intel.com>
In-Reply-To: <d1ceb9fc461cf21e1b885a55293f593eba1458ea.1738923308.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|CY5PR11MB6115:EE_
x-ms-office365-filtering-correlation-id: de8825c6-9837-4764-2052-08dd4ac657eb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OZEloJkN8Tjep3SeUM0N6thg5ueOaSnVi4IH6UPDvRmsMNDbzzttBZamxa4K?=
 =?us-ascii?Q?hgDC4uyP/WRlLftwPLtklOjXLOGm9Nly6jTxd93DedcOK2w0CohCFzQ6qphh?=
 =?us-ascii?Q?chjVBldQUoU3yG8ddqwhfotZUhHS6UC8HprWc5Q7s9hF7N+zZktufrxdbxoR?=
 =?us-ascii?Q?CoqMYyNZ/9DobfWoU5IAnViG69tYDseYavM0YTJOPLLxLOBGjp9D3XoYxfjo?=
 =?us-ascii?Q?OmeIwU7G5wuR14JcUBzoyl1vnLgfe5IgTZWDiSl2SwciM/IL73CqF9f40H7u?=
 =?us-ascii?Q?Nbx7oi0XtNpAw8NY4QqSW1viUIO/Cfy2hXBzzUE5O0ZpI+P3DeMkr4nwKad5?=
 =?us-ascii?Q?gDoD3Bl/J4m4DPEveRV/fj+6t08pl7hEUnH8LHBlTjzzPiIXVObjQ71OPea1?=
 =?us-ascii?Q?1sUm66/6lOIBfiuSf9NQt/BNMKn/wJiyWOl5jtU1CzBZjb5Qmp3/I9PxSfju?=
 =?us-ascii?Q?iNh7tRjjjwidXoPIq5WLeykeFh/2Hds2CfflbMUmIF9fgIcxcJREpaZ7kNB8?=
 =?us-ascii?Q?I2vCkCSzgswYgXebNw+JytqqiNDkzdBbPBfccI5v6bH3Qu+LxWBPADbsTLDZ?=
 =?us-ascii?Q?cafFxnRRk77xIRIolOTfmoaMze4QP4sorPB2EqpRJXCw/KrYpDtgBW0nlxKb?=
 =?us-ascii?Q?ex9x85NxgfXPpwzfJXKURcvmeOUWRj7xmGs7PVSwbDamdIsxzpaly1giK8PH?=
 =?us-ascii?Q?vv8MQkC7jVQ8gZDSSazIjkMOH2Adn4M/tntzTp5tPU/qR95OxNEqJD96CM8u?=
 =?us-ascii?Q?566H3r+Q3Cg8XesmlsjvURAFy3y31TX1bz6FCvl5j0DNnliULv4Vbw6LmI6M?=
 =?us-ascii?Q?cBSp+bpu6r/XzAMzD4jAIcqZoVTOmJ0ZOBaZzz1UX7s6Iovlb8SzbYaKysZ0?=
 =?us-ascii?Q?YtM2t1EDICYtpdjiTW/Q0ABB9QGIoE/B6RNdujeV2JnERWWX4iZuUn2wMrK7?=
 =?us-ascii?Q?JZsyp8GW1Jnhz7fIkAfqdG3he+Jt2hPV8f/0Bnq4az3tk3C7U/UyTxwYjA7Q?=
 =?us-ascii?Q?n7leJNxaZWvmdm2iZf2IxCsfNmUY6/pnvNWidkNvhw0SqRt9X7vqssTRqhvA?=
 =?us-ascii?Q?HA8oGGEOEm8gBZ6usOZlFd1DkopRzNISu5U9jtSWCb35TwjC6TkiKHRxrnhc?=
 =?us-ascii?Q?oT7P2JZmrk9CLYwMd0/vcqoH0viv3sJcK7/fkAxG48tlecqRjP/7m16FhdUu?=
 =?us-ascii?Q?kqUDAeNIdm6iE7T9q6gIze7ZAJMV78OCemH+RVJG/hiJZdmVe3Vvbls/w/Fo?=
 =?us-ascii?Q?MF6nIgnmEf94uXhAYJKOfEfeGZlBNudrnSFK/WaadMNQeAida/EwJ+jso2X8?=
 =?us-ascii?Q?AFGq6HiibW04eDCQbZxiNTx42XC7T59ALGItjAo41auUfSS2DftdtaKohnoy?=
 =?us-ascii?Q?cWehnmGHDlF/CbNOlDSHb27xsXqKmlkRJWl+eWHKzpUkSrx4hhU3soz4bwE3?=
 =?us-ascii?Q?oV4rOIFY2qZWQUHahAF1BVOP8Ts2RU+B?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AglDyOjTx8TG8W1t/G2I7jErF63p3/5eMGnrBWmZ+VpSgABlUrf+uimupkmF?=
 =?us-ascii?Q?FGvc0fOLeq1nmuTxdxGkD7Ij7KIfr2xGMpTWRcos2qcbO1WvEvuf3hz/ZE9s?=
 =?us-ascii?Q?xXB7vunXqEasO9S1pP3f+NIam/vjei1erw6qicZMyVUju9ID1/NVWPZ1b03u?=
 =?us-ascii?Q?HjpTlw//S6AWEqOmNjec8hp1j+SEUL1D8rbst16AJTSY0zNeSMGRdrFSLfH/?=
 =?us-ascii?Q?GsmxmUFcewreEWqDnRw0Mn02XySNR42qoTEOgXgJCuO+tJcnVJGGsUFsQVwb?=
 =?us-ascii?Q?7waMLgYpb+ydtPRFy0oLr68msuBpppcGgUN/lS1xK8bJ72G2HMspJsVKcCtP?=
 =?us-ascii?Q?c28N7Mt3RiEepyAQQzBL35XWozYVOH7Nuf1HgghnE58C3iOuvcFPO6dQ95jz?=
 =?us-ascii?Q?fGSVw4fck7Sjz6ywqzyJuATO3QtBJnpvOjrr6CjCRZT78lWJreZaqi0+cS84?=
 =?us-ascii?Q?qdntOB2lOG69a+rC4Ild2vjBV1hM2YyUa7NzYDOKnisCTW9BQGimydovG++3?=
 =?us-ascii?Q?v6epMcsPE+lI9NBIviE8EpnRLl3OdGK8R8l+cL0knMesyI22xhpobqqvwEn0?=
 =?us-ascii?Q?vPQv+QIIftm27YMbLLhkcNtFGWuABKMll4clW5jdqhdNjoLtOEe1zSG+o8np?=
 =?us-ascii?Q?zi1zQHXtkSnRtqJsrcWdj98Zl/Ko/e02+KVG3gNZpX3ybydmIJJ8Qyty+hjY?=
 =?us-ascii?Q?8JJWcsiBlfZuaNjpyZEVsZi4AB4ksg3x1idwLCJdQ/TRBKpv38O8RcdZMQLZ?=
 =?us-ascii?Q?pPHIqbXireVqrmY5+aBcyxV+ipHLVkUQ8bYy7p98W37ZmZrx6UzWf27qW1T9?=
 =?us-ascii?Q?wXQ44a3w5ecs/RBVkw8wo3bSItWoJ2R9jqroMAdqU3xtMDSZfZG2d3dJ/F0n?=
 =?us-ascii?Q?66D24u2K7E7flzEkGgHJXGf0aDs/XZWSHQMiRgsFvy/pGkI6LOjxYN6GT59x?=
 =?us-ascii?Q?IXRGHZG9unBLZ10ew1iDwQauLXeqWVc7+5UmUFRL4h3Yhd8xvcjZt1+3QchS?=
 =?us-ascii?Q?F5s1Z3LTVKkX3myuwg2mJmI9QlXHO9DeK781TlDwL9kdItF9lOw0aaP6ZyJN?=
 =?us-ascii?Q?0VxEzk54pchA4o8esoGtB1oKWOay99C4uBg99eOBnagY2i+jSWlCDvnJgHmC?=
 =?us-ascii?Q?j6XjDgrVWShrU3KTKffk5FYfWqtBdc2yRsrPSj9injH1q8tZccSArzvBiOLQ?=
 =?us-ascii?Q?JLi0GDyLIvmSgHnATshH+ctntXLsz5FHni6GmET8Sw/AO6B8/yEFDgnNXFfT?=
 =?us-ascii?Q?ZQbgEsaJXeazFu4+vJ8rj4iZPRuU0Egndlw837QGpyR0EUq5oMa7Zp2vWQku?=
 =?us-ascii?Q?oClnzUPhdD8Z6TGhQiHvEGtfjr912hnuCfsFTp+A0/zZK/HYNBBdX9tz3olk?=
 =?us-ascii?Q?xcyeQkONZBVy7mgHiqHSWC1Gcj4bo1Ikpx5lXzHl8Z6NyXF6KZul+fbei7EE?=
 =?us-ascii?Q?+UUpEjXqmFVH38LtSrEGC2gg0lSyfpPrFdARGYUp1MDe2rzFBMHvbOdbhNby?=
 =?us-ascii?Q?hJ6hTuR+xGYqyA2DH6MpH+k0NM8kxqsZw/x8ODMQtZnipMDWzxMZux3dz1ju?=
 =?us-ascii?Q?xGNiiRuRcN8ZNPP71X2KxOT+kWj8k3ijBFpujA7PuVHT6AqKlnH4/N3wpYpj?=
 =?us-ascii?Q?IvzBJCFTe7tcxdZB46/tBpMRWOCL+z2iBv8Xz6F7Ck+i?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de8825c6-9837-4764-2052-08dd4ac657eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 18:03:09.4863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D+W2dCC5R1WyiGhXXhG7Z3LIKP0+CdVV6YhwZ0yMby3M1onxUDYM6bURpS6O3jpiGPqBU/m07fdlrH3QnHQh9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6115
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Friday, February 7, 2025 3:48 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 2/3] drm/i915/pch: Hide PCH device IDs
>=20
> Only the PCH identification code needs the PCH device IDs, as all the PCH
> checks are now based on PCH type. Hide the PCH device IDs inside
> intel_pch.c. Remove the unused INTEL_PCH_ID() macro while at it.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/soc/intel_pch.c | 30 +++++++++++++++++++++++++++
> drivers/gpu/drm/i915/soc/intel_pch.h | 31 ----------------------------
>  2 files changed, 30 insertions(+), 31 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c
> b/drivers/gpu/drm/i915/soc/intel_pch.c
> index 0370ccb6943c..fa03b5068a19 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> @@ -7,6 +7,36 @@
>  #include "i915_utils.h"
>  #include "intel_pch.h"
>=20
> +#define INTEL_PCH_DEVICE_ID_MASK		0xff80
> +#define INTEL_PCH_IBX_DEVICE_ID_TYPE		0x3b00
> +#define INTEL_PCH_CPT_DEVICE_ID_TYPE		0x1c00
> +#define INTEL_PCH_PPT_DEVICE_ID_TYPE		0x1e00
> +#define INTEL_PCH_LPT_DEVICE_ID_TYPE		0x8c00
> +#define INTEL_PCH_LPT_LP_DEVICE_ID_TYPE		0x9c00
> +#define INTEL_PCH_WPT_DEVICE_ID_TYPE		0x8c80
> +#define INTEL_PCH_WPT_LP_DEVICE_ID_TYPE		0x9c80
> +#define INTEL_PCH_SPT_DEVICE_ID_TYPE		0xA100
> +#define INTEL_PCH_SPT_LP_DEVICE_ID_TYPE		0x9D00
> +#define INTEL_PCH_KBP_DEVICE_ID_TYPE		0xA280
> +#define INTEL_PCH_CNP_DEVICE_ID_TYPE		0xA300
> +#define INTEL_PCH_CNP_LP_DEVICE_ID_TYPE		0x9D80
> +#define INTEL_PCH_CMP_DEVICE_ID_TYPE		0x0280
> +#define INTEL_PCH_CMP2_DEVICE_ID_TYPE		0x0680
> +#define INTEL_PCH_CMP_V_DEVICE_ID_TYPE		0xA380
> +#define INTEL_PCH_ICP_DEVICE_ID_TYPE		0x3480
> +#define INTEL_PCH_ICP2_DEVICE_ID_TYPE		0x3880
> +#define INTEL_PCH_MCC_DEVICE_ID_TYPE		0x4B00
> +#define INTEL_PCH_TGP_DEVICE_ID_TYPE		0xA080
> +#define INTEL_PCH_TGP2_DEVICE_ID_TYPE		0x4380
> +#define INTEL_PCH_JSP_DEVICE_ID_TYPE		0x4D80
> +#define INTEL_PCH_ADP_DEVICE_ID_TYPE		0x7A80
> +#define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
> +#define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
> +#define INTEL_PCH_ADP4_DEVICE_ID_TYPE		0x5480
> +#define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
> +#define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
> +#define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35
> has 2918 */
> +
>  /* Map PCH device id to PCH type, or PCH_NONE if unknown. */  static enu=
m
> intel_pch  intel_pch_type(const struct drm_i915_private *dev_priv, unsign=
ed
> short id) diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h
> b/drivers/gpu/drm/i915/soc/intel_pch.h
> index bc926df14c45..635aea7a5539 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.h
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.h
> @@ -34,38 +34,7 @@ enum intel_pch {
>  	PCH_LNL,
>  };
>=20
> -#define INTEL_PCH_DEVICE_ID_MASK		0xff80
> -#define INTEL_PCH_IBX_DEVICE_ID_TYPE		0x3b00
> -#define INTEL_PCH_CPT_DEVICE_ID_TYPE		0x1c00
> -#define INTEL_PCH_PPT_DEVICE_ID_TYPE		0x1e00
> -#define INTEL_PCH_LPT_DEVICE_ID_TYPE		0x8c00
> -#define INTEL_PCH_LPT_LP_DEVICE_ID_TYPE		0x9c00
> -#define INTEL_PCH_WPT_DEVICE_ID_TYPE		0x8c80
> -#define INTEL_PCH_WPT_LP_DEVICE_ID_TYPE		0x9c80
> -#define INTEL_PCH_SPT_DEVICE_ID_TYPE		0xA100
> -#define INTEL_PCH_SPT_LP_DEVICE_ID_TYPE		0x9D00
> -#define INTEL_PCH_KBP_DEVICE_ID_TYPE		0xA280
> -#define INTEL_PCH_CNP_DEVICE_ID_TYPE		0xA300
> -#define INTEL_PCH_CNP_LP_DEVICE_ID_TYPE		0x9D80
> -#define INTEL_PCH_CMP_DEVICE_ID_TYPE		0x0280
> -#define INTEL_PCH_CMP2_DEVICE_ID_TYPE		0x0680
> -#define INTEL_PCH_CMP_V_DEVICE_ID_TYPE		0xA380
> -#define INTEL_PCH_ICP_DEVICE_ID_TYPE		0x3480
> -#define INTEL_PCH_ICP2_DEVICE_ID_TYPE		0x3880
> -#define INTEL_PCH_MCC_DEVICE_ID_TYPE		0x4B00
> -#define INTEL_PCH_TGP_DEVICE_ID_TYPE		0xA080
> -#define INTEL_PCH_TGP2_DEVICE_ID_TYPE		0x4380
> -#define INTEL_PCH_JSP_DEVICE_ID_TYPE		0x4D80
> -#define INTEL_PCH_ADP_DEVICE_ID_TYPE		0x7A80
> -#define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
> -#define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
> -#define INTEL_PCH_ADP4_DEVICE_ID_TYPE		0x5480
> -#define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
> -#define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
> -#define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35
> has 2918 */
> -
>  #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
> -#define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
>  #define HAS_PCH_DG2(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_DG2)
>  #define HAS_PCH_ADP(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_ADP)
>  #define HAS_PCH_DG1(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_DG1)
> --
> 2.39.5

