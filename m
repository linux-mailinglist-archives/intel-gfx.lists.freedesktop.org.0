Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A969993956
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 23:37:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F5FF10E43C;
	Mon,  7 Oct 2024 21:37:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tb0jCAHt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB45610E1D1;
 Mon,  7 Oct 2024 21:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728337045; x=1759873045;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X5Tui6OB4RiN4Dzk1msXVANjbt07Uz5DeJ+RvHx/bXQ=;
 b=Tb0jCAHt7LiiES2t73mXG2SKWSlIAyJgSJCt7CabqWTuldTftlGxScxg
 mVgpZb9W7/81U/iQrHy2VdEZsCSd0qlsAY40AAKOwp0246D7VpQJxDLre
 wggNygpi9u9psDzQVKZ8l6MqFlluAVy5h08dcILu2pI5bkRqe/JOWwYM/
 bHWluqPTdxwryp9x2rq9FvQGjvdSCLaBEzVbyKSoJmXB1haPw/XUYRtCv
 C0LFYVAHka6OMNTP1kYx1DbNFV/kgf2cTUVRSJtYuBOLWua9WeXa7vmdi
 ub6+W37P0E7zM0e8FQWaRaHdmuH/+bvx+rJXFoMVLx/Q++vVmB6K27a55 g==;
X-CSE-ConnectionGUID: a1CeavozQg25VZeyni+7GQ==
X-CSE-MsgGUID: QG0TTSnJQaaQRVSC6JhZng==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38895233"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38895233"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 14:37:25 -0700
X-CSE-ConnectionGUID: YcJF3VOxTdGarUEBiXQy4Q==
X-CSE-MsgGUID: eePGjK47SViYgOqiIsgbDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="80573239"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 14:37:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:37:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 14:37:24 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 14:37:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k6Uldal1DctpWbGoR2oPUanLWuMI+0tEwGOfToEBWoa/XkNiSJmrbp2bR2XUn2nFJWuxHBTGzsOeFz9XOb1y3i/a6e4O4XX2puIqTUrzIgWNrJbZ7mdfHYPcXSv/0LZHE3HjXP2DFmnbGXcHCMiCmGdNhmMHX4uZ3DyAzxN8T/vZtutMj8qpx0iTaX8lmlLqyy54Hn2ywhqAKkeq1ilJVgOFNa/kepcIuFMJy6GrolXuFmBus7vwwxqYcNyQQcOfTf3KeeOPJThmYLaa+2kyq9cuZXgcHm5vbrv/THyy1mu9a+piECjFKQdQeeHefRr3QkFvHzcMGQ6wycAoSx7lMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P20yy4m4nxMEpn+13FF4GEIrdCO6HwcM/DItcG2kcqM=;
 b=ExrEt3j2gjGOJ6Sn0SUNgtAcb2uyQ94J1tiW7/AbzdLsz8v5f//zBJXypDDWROR+V+4qVU7XmL6EsezJzuY8aYtjh4Pqa0Rg8LnON/0fe5DqUXd6n7LDWINlk/YvQjd4YTFlIneU/V7bYm04W9c6dzVHJgXwZNAyrIQQXPWT5MaDTesdX53UitU00G21LZLJFPpq52oilQ8vRtJuRm8cmyd9yMb4u0HQoLsyoXv2UHdj4WvO7V6KB+9ueTf6OxOE3xNRTxCR4mwjH2SobeZa+Nj8m1zWcFr/z+RM26S7rLbaNMFivt68JriJhJhQVG8oxZ0psEJvC5rbsrNmKRATPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by CH3PR11MB8775.namprd11.prod.outlook.com (2603:10b6:610:1c7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 21:37:18 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 21:37:18 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 19/31] drm/xe/display: Align display resume sequence with
 i915
Thread-Topic: [PATCH 19/31] drm/xe/display: Align display resume sequence with
 i915
Thread-Index: AQHbDsJ1CJTUZR3xuU+0rRsBXx8dBLJ74t9A
Date: Mon, 7 Oct 2024 21:37:18 +0000
Message-ID: <BL1PR11MB5445CC7C7956AEC8ECC21456E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-20-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-20-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|CH3PR11MB8775:EE_
x-ms-office365-filtering-correlation-id: d21b3ad6-bca7-4d6c-8759-08dce7183815
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?CNd7wBV2lggx3eXmAn74ZwpynoU+uDznndnYDudx6K64qbxpEtE/jsjIdPTd?=
 =?us-ascii?Q?3jBzkKzkA/iqbQ34XhE4F1T2tSrygJQJGiFQAhA9/5DUVjIUseWOSxyRjD+g?=
 =?us-ascii?Q?VW1+O/BfFCem3FuRDK8kkAAoWJSY224pHq2vkSWZ/ETiPU3WJgYJiAFRM72Q?=
 =?us-ascii?Q?fvbF9ghxMIYyAsxiXQ9aBF2ww08bzoBmVJtBBgLZ/9VsGpe8MbfcuKHQ73U6?=
 =?us-ascii?Q?0jXOvcQqwyzZHKbCLmlRlI2b/OHL9MwvUSGXkgl2lhz9JSmv+NvB1PrXmSZ7?=
 =?us-ascii?Q?6KLSns7xGf85g+ybk+gb0qwwrwSm5p5zEnL7T8DPqo2+vkbx8S6Fiw6b8OHD?=
 =?us-ascii?Q?W8fuHufQJrZgpMx3e3XCD8JDPZBZmFOBpbUDu0XIPkrnt/2qxcbvwLLOTbeo?=
 =?us-ascii?Q?7EAa8bY44D6Qmt7+sWv0vL86FEALi8sVykr3bq87W26Y9q94n3YKtplS6j8F?=
 =?us-ascii?Q?dPM5As1dWuwkIus7Un1C12C2/VOfspSlqq5JeOnu2iOmqY9TNnRdb9wYJxqS?=
 =?us-ascii?Q?kUf9/q80spWeAeEiOdyEND811B7yOs2dtHwu9Ft16Z4fPk3frmyH8mGDznV+?=
 =?us-ascii?Q?o8V/3M24GSlh6lTMhFA70+NBIgRhgitqWrnxiamFxTJiZ6W6CXEBHKTNZchY?=
 =?us-ascii?Q?TQgU27ftaicp158grhXPWbeB8fLvWC8NlxX++Zrm5huU4o/zp60nb7IYMdIS?=
 =?us-ascii?Q?7o9E6fCcoTvxZN6YX9rPBaqnb78r/ht6k2rxK6ZbJzq2ysUncF0ztk+vtV8l?=
 =?us-ascii?Q?wA3OWHClKVbg58XUiflR7gD6to5I2lrXYAMNlimcSKrkuM2OPMfQFoPguuQV?=
 =?us-ascii?Q?C3ILKvE7Mk/o/vqx9c+C3pItakAHdRjxdw5XMpJF6XIgLQJlL3dZQkJKcoIZ?=
 =?us-ascii?Q?B4p0aphVeBQ7wORFYSg3BZhKYmBHc0BPchBs8G7zDFhQcTXdu3K35YC8Ohnu?=
 =?us-ascii?Q?kNLjIpYnskFq9M33Y7vEeOB2vs9en4WqxI77zNf6Hvhy2YZJbr0JkZMR3X2T?=
 =?us-ascii?Q?HrEuFDKj3Ksv9Kaos8/w/tdJ/qHr53So/EuhJ+XqqKtC4qZwM69VYgRY2JU/?=
 =?us-ascii?Q?bK1/cBBmPLAkvKwoJFNbPkUURLEtZ3yqwzrPAisplkurSCmeB5hpyWZkf4U0?=
 =?us-ascii?Q?XqRXZfFV8/rBMHQtO+mRRx+va26RLOfXirOtNX/SaSJnxF7UhU55hPL+w3Ig?=
 =?us-ascii?Q?Iy9gth0RrFUNXoMPaduLIRTHrQ2mTNpq/VvbJjJIccyYVwvOK1qiwqXQfuCF?=
 =?us-ascii?Q?3uHEHRunjSR1BJ1CFva/WWRq4PfBi+lxD4l3YgtqfWiAmE75yNFKXK1m7lJN?=
 =?us-ascii?Q?7/8HXHopVEgejxo/KPC6N/axcn9xgtaqeM3iD5Defdk8Yg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?F8Ol8UcKwj/KeuAfj8rPO5oZhRX1dtLEGvqCOYDG5MdYIJ8a8/YnnYj35YuY?=
 =?us-ascii?Q?5Fj3Sdm4wajeiRcNqyvvW9dwkDL9gj7DfmAz3SsGl+Gg0+chFNUZqq/1T83P?=
 =?us-ascii?Q?gPhu4DTuGYRX6D6iackpSTO1JNXzdLIfzaMvMPtKcy7J+4WJOM4KcLRIK6nX?=
 =?us-ascii?Q?019OVI3qYD1flQYxdj+ifnBLfm/PwsVFic9AkLJlkCRzD22xGLfZxHbMU8CI?=
 =?us-ascii?Q?RJ1cnYLifo3DeS/qxLfFlKwLboUr+bOe4hcU/2n6BvgxkQfYpfW1+1wP2unx?=
 =?us-ascii?Q?HMgADUImeoQAxcgUE3biKnqxHigIUOfLJ6Rgx1xSA6RrMO4XzoHkXIkssxgb?=
 =?us-ascii?Q?kQZw+nHG59ffjJuVCcd4g9ERDBD4SlKqX/OcLn3n4lSCqf3IRxxoPEIYoF4J?=
 =?us-ascii?Q?r2Df4sDmsLwmMqcBlUNVW+9JpO6mZMrw8x6SklmSBy9p12dTviPYQv6Pvxha?=
 =?us-ascii?Q?fF5pGXfsGs06rWMCppWM3VacMbxqrX64y5YRjUSTURfJIMgru0j/4Erq/BqF?=
 =?us-ascii?Q?vyJ+4l1BMkf2N2G4fPwgElXX6P3nnkAeav1xXy/yLIr2tGSztItomjY4Zql6?=
 =?us-ascii?Q?8MfGMXv/mwzUJEv2Ds9TOCEmEK2ioii0QUgUmdi7KwZ6qWnkGX9F/ObY044R?=
 =?us-ascii?Q?eZLipvB46QhXLVVKTb4Idk8+IzU2TSnnnfHZRsI8c7rZ8G3lGUhluLc2A0uX?=
 =?us-ascii?Q?JS3Sch0/YkVOT0CoNkRyIePDdJyY/6xAwtpV1ATsmHVfJMgOh/2pJfZNefsa?=
 =?us-ascii?Q?wD3d/tLxnwADcQ6heManB583Zkew+9nSLzN30xJ2yhaYXX8wpOpf6muIIgYQ?=
 =?us-ascii?Q?vwqP74BgW5y7xBTjNaG/NmfV4XUnRAnGsy/6cy21CbB9++SZWX5ltAb/5vmN?=
 =?us-ascii?Q?LgJ9mHCDzpktir0RF1/hNLHLhL0WPlWzRVX0EMWccprjA7ENuYjhH/S7eogp?=
 =?us-ascii?Q?LZUR+PDxMXyCUcYySCgj/bLvBueYgBlEWJWzagj1dLtRNXvjhYufRx+QEcLg?=
 =?us-ascii?Q?wKM1Q+ETsOGWhlAa1FjJhp+FamV52nQkIwhx6Diojr85hYWFHueT83rApz3v?=
 =?us-ascii?Q?Lsx6g70BMqIZME0++Fr1NC+9YOnJkh+pxYo9cq1DCThS+StW72OHvXCXMtFq?=
 =?us-ascii?Q?5/w8282UYQaheEiJmFSeZhrmrquwqTe7InYddBXnztFWz/a2D8bZF11clO4O?=
 =?us-ascii?Q?CGwpqL9NkMh46kTaCabdvdSvVJA+hAWlbIWYtuoCP2z/ea5OUz0DxXPsjQyN?=
 =?us-ascii?Q?Emn4PyOa6ut0Evewx8fZncl9gTn/Sr8lhi9jPdayehV8l0UV+rkOBf+LTIGZ?=
 =?us-ascii?Q?kD0WmlxLZJcei3o0VSYbgYRsDl23Qm/WhyTjERERBiUMjVGKFPaoSPS37xyN?=
 =?us-ascii?Q?zO9zcck7bvAVFa11f7UbUx9pVkOY3S6UsR1s3oWzEXzCXDV5r0n734lxGKoS?=
 =?us-ascii?Q?Q/tTktkF/UhsBdTT3x7ji6IcBLiTHhOWhMBFJSyxv/bhMMkk9Xfrzi1zPkvH?=
 =?us-ascii?Q?Q9UlkOq6VZQXSnYcuaulRJ4ZWMWk2kaNdFkAwn03xvHKYLhY3Uz6s3OhiEbv?=
 =?us-ascii?Q?d+6hviKACRiTZFPr1nAsHCY9Zr/QLL+McfNBr9vNdJttb1FBfYD0E9un29Hg?=
 =?us-ascii?Q?Vg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d21b3ad6-bca7-4d6c-8759-08dce7183815
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 21:37:18.5505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2jOP1q0mV+hkRLSLVIsL3ELht+saiXwgYGJ6WtCF2Cy7xg/tkmV7FLvWszYr+ViMO+ygCk8AuXYoJ1mMMJUnB9hY6ykfZchp0TSul65mI18=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8775
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 19/31] drm/xe/display: Align display resume sequence with i=
915
>=20
> Resume DMC before resuming IRQ.
> Reset mode_config before GT resume.
> Use direct intel_display_driver functions for that.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

This looks fine, though it also looks like two different changes:
1. The change to xe_display_pm_resume
2. The addition and use of xe_display_pm_resume_noirq and
xe_display_pm_resume_noaccel

I won't say these changes need to be separated, but it might
be worth considering.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 23 ++++++++++++++++-------
>  drivers/gpu/drm/xe/display/xe_display.h |  2 ++
>  drivers/gpu/drm/xe/xe_pm.c              |  4 ++++
>  3 files changed, 22 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index df66e47daca3..959635653cfb 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -419,21 +419,30 @@ void xe_display_pm_resume_early(struct xe_device *x=
e)
> =20
>  void xe_display_pm_resume(struct xe_device *xe)
>  {
> -	struct intel_display *display =3D &xe->display;
> -
>  	if (!xe->info.probe_display)
>  		return;
> =20
> -	intel_dmc_resume(display);
> -
> -	if (has_display(xe))
> -		drm_mode_config_reset(&xe->drm);
> -
>  	intel_display_driver_init_hw(xe);
> =20
>  	intel_display_driver_resume(xe);
>  }
> =20
> +void xe_display_pm_resume_noirq(struct xe_device *xe)
> +{
> +	if (!xe->info.probe_display)
> +		return;
> +
> +	intel_display_driver_resume_noirq(xe);
> +}
> +
> +void xe_display_pm_resume_noaccel(struct xe_device *xe)
> +{
> +	if (!xe->info.probe_display)
> +		return;
> +
> +	intel_display_driver_resume_nogem(&xe->display);
> +}
> +
>  void xe_display_pm_runtime_resume(struct xe_device *xe)
>  {
>  	if (!xe->info.probe_display)
> diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe=
/display/xe_display.h
> index a801db19b64f..b4ed5b598c2d 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.h
> +++ b/drivers/gpu/drm/xe/display/xe_display.h
> @@ -41,6 +41,8 @@ void xe_display_pm_shutdown_noirq(struct xe_device *xe)=
;
>  void xe_display_pm_shutdown_noaccel(struct xe_device *xe);
>  void xe_display_pm_resume_early(struct xe_device *xe);
>  void xe_display_pm_resume(struct xe_device *xe);
> +void xe_display_pm_resume_noirq(struct xe_device *xe);
> +void xe_display_pm_resume_noaccel(struct xe_device *xe);
>  void xe_display_pm_runtime_suspend(struct xe_device *xe);
>  void xe_display_pm_runtime_resume(struct xe_device *xe);
> =20
> diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
> index 33eb039053e4..f5d89c326d46 100644
> --- a/drivers/gpu/drm/xe/xe_pm.c
> +++ b/drivers/gpu/drm/xe/xe_pm.c
> @@ -182,8 +182,12 @@ int xe_pm_resume(struct xe_device *xe)
>  	if (err)
>  		goto err;
> =20
> +	xe_display_pm_resume_noirq(xe);
> +
>  	xe_irq_resume(xe);
> =20
> +	xe_display_pm_resume_noaccel(xe);
> +
>  	for_each_gt(gt, xe, id)
>  		xe_gt_resume(gt);
> =20
> --=20
> 2.46.0
>=20
>=20
