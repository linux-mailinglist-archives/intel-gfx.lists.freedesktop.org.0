Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B97EEAB0912
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 06:17:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DE0E10E141;
	Fri,  9 May 2025 04:17:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oytq0P1t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E023F10E113;
 Fri,  9 May 2025 04:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746764244; x=1778300244;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vpJynuWllAPZ5UGOUztGJAk6yLyWrIDnF+xuWTlwLWY=;
 b=Oytq0P1t/hz4zA8G2CFq087pbKHcAwntpMKPQLCP7RGSdTjA92eAOenL
 zS0Rgb3i7B7z2GXtbG7yXNQTXK6gav74mK0XrR7dDcvkaRjlZ0dHIfbiu
 HXOE7QfTrN+2QPMwfeRGXc3pCyDDtThgMapGrS1kVlqG6yFBbDIo0uKmF
 aIYhHIRlCdJezMqElK36GRml6beqRyJe7ONVOFzmcRHHnfeWHyglQg6tc
 cRJ7zOgoby2ZCyqg7nHjMVteI7UwHlzi8v4vgb6u17sy38GnbYmtsNoqw
 tA7NR2vA10BFUUTrOribA2ftpDu4Bz8Qkcb2xCWVmVhTjTzSsb3Je+OOq g==;
X-CSE-ConnectionGUID: vW7oJd8eST2Hj5gcUrBSxQ==
X-CSE-MsgGUID: LQ+6+v/IS3e+2MOqoZio/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="47682482"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="47682482"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:17:22 -0700
X-CSE-ConnectionGUID: Wsx1DXR7RByEZqAf+bEE6Q==
X-CSE-MsgGUID: PqyzuaywSQ+62vqvi1VcAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="141458572"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:17:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 8 May 2025 21:17:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 8 May 2025 21:17:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 8 May 2025 21:17:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QfltKD7kVCi+2HheQ09n7XcoIVJdF2CFUHRnAZ/iuzNRf+px/d3t5Cvd010ZtUdNCHu51aJOtqSLPlWOFVRgnbIWbz1PxHdA7CCO9VdVH4y81i3Htx135ipFave/Y1xe0aTbjWstIEHM+VjpphMq7zwaYDTzYuX24skZk5I81PBFAT1W8jGhCswouzVFZySDsjL5de2D6EnAfxZgNYrsHx/vd3DADORExBzLPUWA5BwMmOjItBIQZ3xv0Xm0h9Tj60TFvD32ODnES0uR++wrXRy1yu9Ok+OTj3IUhoi0Ow9afG8fJX2HTHRRU4h1ea0IzG6VevNVL1U6VEgb4AkJ/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s+ANodyp8fwsStLbHBKIMGFwp07BI3CTvfi+/Z3wdRg=;
 b=n3hgwlWBOkEIOZNcxIVoio9N0fJ6TMI+IZ2FF+RT1Qu0TDU0Yjsx/epmGRbY/08dae6ZlmSfDz8Bvyzu2LI6x+fZHsgQZbKiOCJw5BBE0ebFKNo5tOQNS1Zt9EtgNhI46M6AuKBNVEHcjg+YTAzL9I9TPXNWC82eNxwqlK7DmvJbT3nv7BT5l9CcBr72iAvxhVIeJPzUyE3W3kif10xocukcD5N9Oaz3b1HVZIkkNtbiogBeM+1Ffsy9Xr8seBORMHueJa+PfV375nqT1vLkw4w+d4mihhNT3lPqQqrtSQSEdfzyo5O/R3ZZmgtScT9Tg1+AdfNxVg3pzx+4LbzGug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA4PR11MB9083.namprd11.prod.outlook.com (2603:10b6:208:569::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.23; Fri, 9 May
 2025 04:16:46 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8722.021; Fri, 9 May 2025
 04:16:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Yu, Gareth" <gareth.yu@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Yu, Gareth" <gareth.yu@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/display: Send DSI DCS commands with pipeline
 flush in High Speed
Thread-Topic: [PATCH] drm/i915/display: Send DSI DCS commands with pipeline
 flush in High Speed
Thread-Index: AQHbwIghMI+2+MwsvEqR1tqVpkKFVLPJrkKw
Date: Fri, 9 May 2025 04:16:46 +0000
Message-ID: <SN7PR11MB67504851600CFC833363CB2FE38AA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250509021327.649003-1-gareth.yu@intel.com>
In-Reply-To: <20250509021327.649003-1-gareth.yu@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA4PR11MB9083:EE_
x-ms-office365-filtering-correlation-id: b55a566d-f5d0-491f-bdb1-08dd8eb04ff3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ITrHC9g8hqz/8kO/fRlF17b8FEf9YjZDAJWXd+eGnO/Sjj0A72TLwfgmaEoq?=
 =?us-ascii?Q?YWN5V881de54tDbJhAmL3qOoFzLViqtlJTICTWD3smB1XS/25fcqd8ZtNnvs?=
 =?us-ascii?Q?ijnJOH9FkQ38A9xwT3j//PxMdziRT3bVDsi6jvGub9kFcmU6Ispu/iQc5JPj?=
 =?us-ascii?Q?GbnoLAbL23maz5WpLBrVA+hpIO36XVot2vImzKi3eWHptk+6h5mFSvmlBZd9?=
 =?us-ascii?Q?9N9Gk6ki2mGs5LISH/Bd4fnzgVr6ApvF7u4bpTAfYKmJ7tCbb9SkWpOCA0kk?=
 =?us-ascii?Q?zivCopfKyyPwTG7+SbbZyfWqwi1hIoi6FRFYd3m4iBpQNdTKduRXskOSeOuw?=
 =?us-ascii?Q?wFOgeY3o0ynfuQKOOAmTXCREWO5gVL98X3mRwZ0sAtKHuGIUm5l7LBFl1jCL?=
 =?us-ascii?Q?0j9daikBBo8tLQ2jeIxd0PpJbRaK+0gtf4I/6JhtYLgyA82ULizcG7Ouu4J5?=
 =?us-ascii?Q?Jzgdu39MG1yhlMRRpHviFm8A14CSc8DbYg80uP53jYnIO1hnC4EOod8mcEsH?=
 =?us-ascii?Q?y46L8Hxhd8F8AolpAkDuOtuQy5o6/gi7J0fhqpWGus/DqSEtjrbS1pjts8Zp?=
 =?us-ascii?Q?psPCWZARBajiALHnYkg4tLvifx77kxm/NAWfbXmhY5nziVpphzMbHe2LP/Io?=
 =?us-ascii?Q?5FOxMBXWC0hU+9aqzx8TUCjLPnSygR2+U6VkxyJJi++7De+SslIXm1iZaPSB?=
 =?us-ascii?Q?TEtEIJAvZgKaowEDAUPB1Yd+i2FwSyGOnwgA6jW4Hfngcn//SKPvzb4vvF6l?=
 =?us-ascii?Q?UItqVBI8t/mxOBpw3bXJ/uCEHcbMUmv8X0IdyeINf3n5XjA0iWWpZdzpKArm?=
 =?us-ascii?Q?/FkiNOMXeN8Uc8ZJis4de3DcLPhz06iKOaihcm63kT8eveoenPfoyXums7M+?=
 =?us-ascii?Q?UoTm2Sh+Je+KcIIjYVVsqHrMu1+8K1ox6gomW1isIhIFNaiL8GEUueAHSm6e?=
 =?us-ascii?Q?cSlpLG3RKGN+I2vw3xyewbWF86bH4i9WaX76rZJR5X7fkfS8wFQhjO7a5nuD?=
 =?us-ascii?Q?OFZLzt5rTL6VevaOinf2ToGWkfcMDQpQmJ0WlGOCrUJpn0EMQOrBWZNKLYWV?=
 =?us-ascii?Q?Yl/+FU4CjqHokMyf6xpg1q/whErOkVQ/rH9m2+s5Brl3DI+CtGjYTLlP5PZ3?=
 =?us-ascii?Q?OaNTonose1Zpzakb8od9BhL1QVv4/PR51WU40HrKB/4EEPHL8oLr4xqf7azt?=
 =?us-ascii?Q?9gvGgrz26Z9w3vUPGtMpNdXP2vqNQfHO5I9v2+M8GDkySA2MMrhiIJBzYdku?=
 =?us-ascii?Q?4R4VF1sPKt+NhiH186wrAn3EModUb3cip+tl9z25/wcsP9vBMkQE+y0Es0Bu?=
 =?us-ascii?Q?/g6JSnSUCg2ry8u5cfqlNn4W8p3odICfS6FdmyVvsdKvtckcUhbn8YjXInlX?=
 =?us-ascii?Q?nkJ69gYFUKRV8MVEc46bRH56zG/vDJIOYRWtpXYKMeSC3BRVQeu41QIrK0iS?=
 =?us-ascii?Q?VNmvCCIOzlY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KLBApr5NIEv7tjPGuu2tViWPR/wpYlzeBmd099FfqLC7X58UYtsBAdAWMqCl?=
 =?us-ascii?Q?dLc1YQvgQjOW74uoThpx+kNtumjH9l/rMjdTi/CoyU4GxOExbeKPoEPxb6y3?=
 =?us-ascii?Q?F/D9h4TbNlpM1HBAT+bXxWJRu3VXpGlGwqz+VGAUfYgESKeSEKmqSNDByHtC?=
 =?us-ascii?Q?3++SBAr2yDjONmosPDaYD5YTIQzbtlkPGn51CZtzKkHnpRHnGoHUVu6YadUA?=
 =?us-ascii?Q?9iES0bAYoAGJFj25gPUrzJf3IOTQdN8FaPVxs8pOJ0nbNmJlGLIXrTKSYtdP?=
 =?us-ascii?Q?kWbm23bMBVgchpy5mn6LhghZZ3vRvWx7miUcrQ/fF697ryOfeioMi6AR9pNG?=
 =?us-ascii?Q?W111segJIWzuO+oj7yBW+orq89qqgZ3lpIL02B1Kj5LVsvEI2PPRAEwQu3X+?=
 =?us-ascii?Q?jJmdV+N5KfHN0jIczxNlKbT5+JisD/LNQPG/nwptJ6mvpa6Pa4VdU5Yq1PZ1?=
 =?us-ascii?Q?QW7s0/sQNBLxWuRD16BUWqPPoN6nqClmy0LilmLJBlRbk1LJwLRBGfqP2y6u?=
 =?us-ascii?Q?KQg0BtmytErXNOOlD+kkAGcGackrjtK4yc6tmYghVPNlHj3ipWTUU9FGF+iB?=
 =?us-ascii?Q?gEUMKFWFHeOviequCTb2rwgJi8k0mRm/4vWzw5cIGDO2/Z3S3KQT+twXMLue?=
 =?us-ascii?Q?ZzIbSwPkxb2sml2jYsOiAia0SXEyc2+Az7LTfvLPFOd8MfOLC27Dbh41oBlL?=
 =?us-ascii?Q?LyADI/hZbQ7wY8c4YkqAEKAOBlf7Jsbpr/riEqg+83X29pC+iupT2rdna77d?=
 =?us-ascii?Q?0ju5pRUbPqyPFxd+CIHyyMbiaGOhzHtRDorJu0HqdifeOtaIUPOxOS9GlJKo?=
 =?us-ascii?Q?8A7iLhVTNBay00Rrom4gJsQDIHNZzMRdGK1rYb4o44c7/E8grWwVWgI0vMrA?=
 =?us-ascii?Q?GeijHN4uD79qu97Z0zCspsRnyuQk0Qx1jaTVcoBMCaM8uqGQ8T7IUL1uuGRd?=
 =?us-ascii?Q?bOuOq4BAEdInVrTJY4MCUvJTbbd554g4znOjRFxAoaoGs5t4fyvHBUR9v4Hz?=
 =?us-ascii?Q?wxdC+BWL+9FtD/l7kEtDdwTgIIKdIvZ7vouHTSsugXjMiozjeEPTuk8gBMq6?=
 =?us-ascii?Q?O59hHNOO2QYZGjQfQrB7HL9WwGeog6pi+i00fGy8hnLJnLJcHoAVm/JyaEEO?=
 =?us-ascii?Q?V0tOv4VmHt3O0GHf5nWle3Pi9+fJ6Rbpk6MCQOXCHs4EypSW639MWjq/Cc4Z?=
 =?us-ascii?Q?aMzS4wQzM/eUjnMIuI7x2sVrwkI/p4qLVPuA4CMr2CTuzq5rPg2jDAx9YJDK?=
 =?us-ascii?Q?7THntt3UXyx5+paLsozXfDYV6pZ6SGA/6nO0svZnPAReveVrEYPQpp+He8O9?=
 =?us-ascii?Q?QapTLd5fCWZCGXSNIyMeMk9SWUyQloEI1fXU58t2vw6vpow8HMv1zTADXAwo?=
 =?us-ascii?Q?On1OyZRv5zdkdTRoTtwkXOZ3I3ylheMXhvjDcGirgMnlISuPcEmTvsOnj6ZT?=
 =?us-ascii?Q?HZwv3OxssmO3sINxFcmBTbji2sezL99v3e2qsg0dBmBw8eZwduDjrQKhMcor?=
 =?us-ascii?Q?Cao94dDHF5QJKd1UBjXBd+Qtowqpl1ItdfmI70C9iU7iUAMH+iskG7NkwWfW?=
 =?us-ascii?Q?fKhvmwnxQAwE9kKkDrPkvgo/0GTLfV7oKOznGkO6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b55a566d-f5d0-491f-bdb1-08dd8eb04ff3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2025 04:16:46.3180 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sh/XSvQQ1Kf2f/UtTroISNoIAN3KwS9J6beBSHgfHyVg0z1M40LeFdiHPzHwu2Usel4h0uNmnj9bpjMIWkvx5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9083
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> gareth.yu@intel.com
> Sent: Friday, May 9, 2025 7:43 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Yu, Gareth <gareth.yu@intel.com>
> Subject: [PATCH] drm/i915/display: Send DSI DCS commands with pipeline
> flush in High Speed
>=20

Clip the subject make it a little smaller

> From: Gareth Yu <gareth.yu@intel.com>
>=20
> With all of the boundary conditions when streaming the commands B2B in ou=
r
> validation (part of the reason we added the flush),  the Flush effectivel=
y
> serializes the transmission of each command enqueued within the command
> dispatcher to one per V. Blank line which simplifies the behavior of the =
High
> Speed Arbitration.
>=20
> So, unless we absolutely have to burst these to the Sink, we should be us=
ing
> the Pipeline Flush bit to serialize the commands.

Do we have a bspec reference and/or dsi spec reference through which we can
verify the data that needs to be filled out for the dsi packet header.
Add it here will help make the review smoother and easier


>=20
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14247
>=20
> Cc : Suraj Kandpal <suraj.kandpal@intel.com> Cc : Jani Nikula
> <jani.nikula@intel.com>
> Signed-off-by: Gareth Yu <gareth.yu@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c      | 4 ++--
>  drivers/gpu/drm/i915/display/icl_dsi_regs.h | 1 +
>  2 files changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 402b7b2e1829..f91f27067768 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -191,12 +191,12 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host
> *host,
>  	else
>  		tmp &=3D ~PAYLOAD_PRESENT;
>=20
> -	tmp &=3D ~VBLANK_FENCE;
> +	tmp &=3D ~(VBLANK_FENCE | LP_DATA_TRANSFER | PIPELINE_FLUSH);
>=20
>  	if (enable_lpdt)
>  		tmp |=3D LP_DATA_TRANSFER;
>  	else
> -		tmp &=3D ~LP_DATA_TRANSFER;
> +		tmp |=3D PIPELINE_FLUSH;

Seems a little fishy but cannot be sure till I have the spec and I can veri=
fy it

>=20
>  	tmp &=3D ~(PARAM_WC_MASK | VC_MASK | DT_MASK);
>  	tmp |=3D ((packet->header[0] & VC_MASK) << VC_SHIFT); diff --git
> a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> index d4845ac65acc..b601b7632339 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> +++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> @@ -272,6 +272,7 @@
>  #define  PAYLOAD_PRESENT		(1 << 31)
>  #define  LP_DATA_TRANSFER		(1 << 30)
>  #define  VBLANK_FENCE			(1 << 29)
> +#define  PIPELINE_FLUSH			(1 << 28)

We now follow the REG_BIT(28) macro instead of using  (1 << 28) convention
Would like to see that change too, ill send over a fix to get this to file =
use REG_BIT instead.
Or do we leave it as is ? What do you think Jani ?

Regards,
Suraj Kandpal=20

>  #define  PARAM_WC_MASK			(0xffff << 8)
>  #define  PARAM_WC_LOWER_SHIFT		8
>  #define  PARAM_WC_UPPER_SHIFT		16
> --
> 2.34.1

