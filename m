Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE319A1DB5
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 10:59:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5158C10E30B;
	Thu, 17 Oct 2024 08:59:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YmbYKDeP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 113CE10E30B;
 Thu, 17 Oct 2024 08:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729155540; x=1760691540;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=25+ukuwb2HgLInm0LFNtrTIKI2K46SqLLablL2k3AfI=;
 b=YmbYKDePgVpy6yyBIvFexIuDHzWliGIwWubp+f6GGU8NOnxeg8aAFeoP
 h4mYui68nl4zmh4pxw+mKHzoNEFTyCRH6n09dbBSHwaNnIzPknY1LYcjK
 Lmk6NC+9hEjFmH5utrzC7SJR3iwYLKSzHVc8N/eglMqdOaZa+8KQp8Fln
 DzzszeHsLgd6fCPhkjg8lTlQU43NUJdcyvjV+zG9tV2O0aU1K/5OIQ9QA
 xIdZH/VOBbTZk88sH4eIZm3T6C5WM6ZcoqaCaxJl0XkWK21hyWw/FfdKZ
 kHTTM4nhQRpgB8YFM63QxmTmd6tRg/0Hr73BocNvXPKV8mwX9hlk1DXzS g==;
X-CSE-ConnectionGUID: EjdMMS/GQkaTyTd0bJq+UA==
X-CSE-MsgGUID: MQtudleFSWSfRkzDYu8Gag==
X-IronPort-AV: E=McAfee;i="6700,10204,11227"; a="28515310"
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="28515310"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:58:49 -0700
X-CSE-ConnectionGUID: lWt4t2uTT4+k9JDjKJHfxQ==
X-CSE-MsgGUID: VKtxA5mWQsmqVudk0p/vxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="78833350"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 01:58:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 01:58:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 01:58:49 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 01:58:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vAPdz6aga1nzU4jwIHl8ZN0ngpqqbdeFSAjNsp9C12SPD8AcNwnBVfCCTrRaRu1VzIl2jTRxP97mfC29+qO/b654YJ5SQQPbCjuF4A9RdgN8IrMWrwTD+utVG8mKKoeUitBFRoItVnscOn+Y5yhGGRk1BbTp40K4xSnnj1hOhM4qD0XI2ubViuNuHG2SDiZsEQ2T4hKH1eNiaqGwReV5ArQc5ha1KNNlcHL+pEz+JzDLzk+9OPhD2A3NGL3wu49I5nyLQvK3GNur/9PphcXnTzDK5gufrb4TBGYjyXdRnceQnizZ/QAuGZhwmX3OsXhNm6xgXrwcgRMt8q0mQNETFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Ag1ytv3ip0ssoYlR2rg0pVF9PrMN2En2wKuCoutcV4=;
 b=eswxTnRy/ayDt16zghConPdQPf8h2i2oCA2EA2dc7qf56zHuin5D4V93iEqm8WCZ5Gi0lMN/Z0P+bKwmPwjxiTosujC+A+xZu11pdGTUfDNKkZSkPvZCOKO0goqiE6pmld+o1LX9mXOPdd0FtBlcFHX8lxHa71wz8LaQwf5VGpiUvajt7C4o/IDwM2cWes2ECfbmEwuc0l8PtXHFWT+2g9His5Dxij493+h1cNfM/kdqfEJcKYyD8B3bcNqOpBfFwUbgaM0zyeXHUnRqkMmMLrxh5Y9RX1WSoOblYIfQ3lnX9fdYzrezFNFWk+jrb2Y0mZDTPB9ApbZL67kAd/CmTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ2PR11MB7473.namprd11.prod.outlook.com (2603:10b6:a03:4d2::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.17; Thu, 17 Oct
 2024 08:58:47 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Thu, 17 Oct 2024
 08:58:47 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 01/10] drm/i915/display: Prepare for dsc 3 stream splitter
Thread-Topic: [PATCH 01/10] drm/i915/display: Prepare for dsc 3 stream splitter
Thread-Index: AQHbIG2mdBoftKu3tUyUaghyxjEkarKKo6Hg
Date: Thu, 17 Oct 2024 08:58:46 +0000
Message-ID: <SN7PR11MB675035CF9AF24A70A1F2F186E3472@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
 <20241017082348.3413727-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241017082348.3413727-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ2PR11MB7473:EE_
x-ms-office365-filtering-correlation-id: 3324ff33-732d-48d2-a7ea-08dcee89e931
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?f8n+kY0HfzP6UloISC03nsgNzhtMOBTrZnq3CZorptc4wMBn7E4FsYBtbgRA?=
 =?us-ascii?Q?76aXKI2q/lykOkPsqhqU1HNAWoWRMTnVNKNxKKBkwz433eAVG1b3tK4+Z+qd?=
 =?us-ascii?Q?jOiefeHIwOSJR9dFm6E5JOjTRaNsoOpzXgszHrRh9g6hAu0fLieiARNqjai1?=
 =?us-ascii?Q?exHoclXN4KRmAgMcasUJE0etlGc47OeVPILK8RVE81EdJON9fibwNlIqVd5b?=
 =?us-ascii?Q?guhDR80JfJHRwUXV0yLYpiaeTCZJkB6JgezGbk+15X+9WlV0GYShEQbPZ8Ee?=
 =?us-ascii?Q?rMre88ccHibhEjiAMy4gxvGh+6OdurO9PaAn9x75EoLMjCUPFj0F1aIM+QUn?=
 =?us-ascii?Q?p7zrsJRomjrVnE7ZJlp3EdriTq7MhGld4eIRtI59Ke5Ux4KywkB3jLw3aYEX?=
 =?us-ascii?Q?VP5V1GWeOxPmgz9maGW4nXwF/CPHwkhiJMmGdPkhYjjUSOF9kW/zYFHpHdIY?=
 =?us-ascii?Q?9P+ETRLFe3X6s5q1LmB0E9jl3gplEIj9K4kX6qCoQ1HhpvdCjYzrlRm0Cw7m?=
 =?us-ascii?Q?t59lgH4FllvphIl/xNz2Pqwh+wBd/Ip1AGc5pfWOm1puqEsSgcj6bEdxxOT8?=
 =?us-ascii?Q?lk8qbCKP4atpaJ7msLwp1kpwJzwO/PZON6myxFMbZ0PvRkbO9+o7o8qx+NuK?=
 =?us-ascii?Q?K3AgLUAl7OXKXlVffAklUV9tQdPYJeYRJ9t4lAdzfeE8dAkm677V6ZYKY5JR?=
 =?us-ascii?Q?8/xDL4W0IIKMAkCH0A77fcVcp+Cd0DCyFwZz4eFcVSYs4EdjcWeOK4lqWtl5?=
 =?us-ascii?Q?t/LWkoUPRyUXc7wXsAMkWdKlqspcLLQ5UP6ym+Hu9XWsq3hsO9AUvHZVjyFX?=
 =?us-ascii?Q?e493YI+9qMColv4pYqxf9ChedafkBADkUOxltGNstk9uAE3bk0ISjcOvjn/W?=
 =?us-ascii?Q?YSEc2JjzIj2w2msomGG2y2amCSXHKwxVYCSV/gZLH5hxrTPNU58eGv0YMgH0?=
 =?us-ascii?Q?jUPnLo8oeoDzD/FAgGSoxZaRSaMdWWnqE7VjD5DLbPH55L4cqJVou2HNXWdv?=
 =?us-ascii?Q?QqbS/x0uBODz5p9e0GumLQkLETMY7sLrj2zI1sjMZz2vLToLiT/8/4Z3lu4t?=
 =?us-ascii?Q?9mfGaQ6wT/SXmisreFCNISzTeuG8u5uBJD7dKecl/WeNtlHQS4p/5nN6OCLr?=
 =?us-ascii?Q?xIWfc2L4UNROORT+QhD+B43lUTP3htBo2lwjLQVtmhUOxuAMsaQwYmbnA0dX?=
 =?us-ascii?Q?FDjnstQ2cWoEB7TW2j9Kp/P9bYMldrS6pCM8Mkm7CDu7+u0hqYnYxdmTPHAe?=
 =?us-ascii?Q?spzQ8QvgRiZan2o3F5GEkqhwHoHH8i8/wJZdqj9Wgyhv1D2ozzgXk/l5anhN?=
 =?us-ascii?Q?T5fn9dZbKpjwfGMeni0CH/zJkP2sSAzXI21zo9XnQbyxDHIKWJXT/vMHhaRD?=
 =?us-ascii?Q?OAv8LG4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XYpLUl77HumWf/FJl6P9fh5OMn4Mq71BpgULEDkOt5a1JGcRj378XLwqGXFv?=
 =?us-ascii?Q?I+N2yO7aTRVomIvV3KFHsfCKW71yH4WW45cQ7rHfMgMy+oukOdTB7tNQzEMz?=
 =?us-ascii?Q?T2wDGRrdTSsEnHkFRJvO1y6inWAfBI7fY/IYKE0aevg9I2kl4yDNtukCAlnm?=
 =?us-ascii?Q?aK7JAWAYP2Ebre3ie+4FWJ5vt4tYF8XEglVNCcb2mtMObgVqlOkgVJ5JoRh5?=
 =?us-ascii?Q?Kxj3zncmL+Kv2e84EA4apOBsjuoBS8D+UZZrSJbVQneiUVzc9MI2U0+3m2hK?=
 =?us-ascii?Q?JFoJdjaJPXq+c9cA6JeKEYtulGaFZv1usqX3FdgwUGOO9VH/wsOLdWAhugh5?=
 =?us-ascii?Q?9QSRSU53Dxof/+2Mn6fNnh9sz+p2ou5jryGG2hLsBSR/P4HClcJRHWx3OiN/?=
 =?us-ascii?Q?tLk1c2mJBl02PjsNnpcKHufnP1u4vEDsCnt/Debr1AXhosHFxQnPhBXJyvw6?=
 =?us-ascii?Q?+VHzBgk42X+MyRm/cXCjYFXiwhU8Z5zClAlLB1F9qNFZ/F/s/5AhTM18WlTe?=
 =?us-ascii?Q?lcMm0C1g4eiDkaaVWPytLGxF62jpUEjejJfyA125vKF9lbbLpCoXCSP7zUKq?=
 =?us-ascii?Q?XYgCYMXVsJSICU8NH0zsIQ2/pphSrw4Rq0l0fA/eyP0NWlOJTpYPvStEwsgb?=
 =?us-ascii?Q?6qLh1UyZ+9U8M39sUK3zNNQ2T/MbqFJB48sWOQbgrnSlc+P92yf9P4zEYF9+?=
 =?us-ascii?Q?iQbR/n0ofYPd1Tkx/suNYnLPEW+thJ86/V3Pf3w50NPE3HeW3kCd6RuZHDgJ?=
 =?us-ascii?Q?y7uZF4pFMNh1QWAJGqKFqbz2DU1SzrnBMajXmr/0gwafQMKIv9P61sJWX2Qu?=
 =?us-ascii?Q?aRx/LhhwiFiAXULVbe7eNN2Ihwgyu18F8QwRIOaZHuZafHmMPfK6LLHdsi27?=
 =?us-ascii?Q?/pZoB29dg69zylP2SyNzNejFaiQ1urqeSVrafbSOJ/Mm7ZmRL+V3c/0FCA5s?=
 =?us-ascii?Q?BVslCBJgOnb9HA1Kq3x45+DvS3KZa9/EqAymPN8ZFM64j0BJbjSVnRIVQ3pF?=
 =?us-ascii?Q?SLr645ekL9Xew93yO0B+D7ND2/BM/MRLkNQumM3V5xPu4Npkx7JRER8aACTz?=
 =?us-ascii?Q?NnK7TkiMCeFnDwRE6nEl0HvvOrvHrFPwUiHq5ObSf8q9j2KpXwbXi5KKcIaF?=
 =?us-ascii?Q?YVbC+NSeMnyyjBFtK8LxqjaBKwyq6FQn3K7q3JMXR8/MOQXj15PK++KriCuU?=
 =?us-ascii?Q?eJZ+CcRKcUKxPjVtrrKaW4aOOprkIfmBT74k9dCLkc+LZ7mtQWiwnsoAI6ch?=
 =?us-ascii?Q?UPvYXn3UO0c9Q6KLiJj+LCD5wNVXdWAuBuip0PyzVD25J/EweU2paIcgKO2M?=
 =?us-ascii?Q?ds3i545tbWu/nM0y4whZ3cY4psLJiBkmg5qcK246hyeLs7ye34m0QbByXtlj?=
 =?us-ascii?Q?FI0PmAzI7DZlK/W8VsRjEwoXQpgN46iRBrSCCI1FGD0JO+0csyWVgR3xM5Xu?=
 =?us-ascii?Q?D5NrKymou4+90yhf26OXo8+GNgNrEHmkl3moAwK6v0o7jTswlWqJ261rLQrQ?=
 =?us-ascii?Q?zeGokxPY0Ob8rQ4V30hY9Ityv8LtRVzUq72BoDa5GN/rhmUSzD1uDB2SkCGT?=
 =?us-ascii?Q?iyp83zKg4EvhAeWzs5nKP1uwKUeX2dpP5a/ErSnH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3324ff33-732d-48d2-a7ea-08dcee89e931
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2024 08:58:46.9764 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ePLzOm7NCp3/3PmNmVJtbN75lpxDTVW0iJm65LOD8Xb8RuVq0tFyh2krIB+Jlkn/Hw39rRO2YJKjfpxAsyDWxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7473
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
> Sent: Thursday, October 17, 2024 1:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 01/10] drm/i915/display: Prepare for dsc 3 stream splitte=
r
>=20
> At the moment dsc_split represents that dsc splitter is used or not.
> With 3 DSC engines, the splitter can split into two streams or three stre=
ams.
> Use enum for dsc_split to make space for case with three streams.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>  .../drm/i915/display/intel_display_types.h    |  7 ++++-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 30 ++++++++++++++++---
>  5 files changed, 35 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 87a27d91d15d..5dc077c8200e 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1595,7 +1595,7 @@ static int gen11_dsi_dsc_compute_config(struct
> intel_encoder *encoder,
>=20
>  	/* FIXME: split only when necessary */
>  	if (crtc_state->dsc.slice_count > 1)
> -		crtc_state->dsc.dsc_split =3D true;
> +		crtc_state->dsc.dsc_split =3D INTEL_DSC_SPLIT_2_STREAMS;
>=20
>  	/* FIXME: initialize from VBT */
>  	vdsc_cfg->rc_model_size =3D DSC_RC_MODEL_SIZE_CONST; diff --git
> a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index ef1436146325..9e2f0fd0558f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5741,7 +5741,7 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
>=20
>  	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
> -	PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
> +	PIPE_CONF_CHECK_I(dsc.dsc_split);
>  	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
>=20
>  	PIPE_CONF_CHECK_BOOL(splitter.enable);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 2bb1fa64da2f..8bd63da8516c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -909,6 +909,11 @@ struct intel_csc_matrix {
>  	u16 postoff[3];
>  };
>=20
> +enum intel_dsc_split_state {
> +	INTEL_DSC_SPLIT_DISABLED,
> +	INTEL_DSC_SPLIT_2_STREAMS,
> +};

I was just thinking what if we didn't use an enum and just used an int no_d=
sc_split_stream would make
It a little cleaner similar to how we went ahead and did it case of ultrajo=
iner and big joiner no of pipe joined
case and at prints we can print how many dsc streams are being used instead=
 of yes and no.


Regards,
Suraj Kandpal

> +
>  void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
>=20
>  typedef void (*intel_io_reg_write)(void *ctx, i915_reg_t reg, u32 val); =
@@ -
> 1235,7 +1240,7 @@ struct intel_crtc_state {
>  	/* Display Stream compression state */
>  	struct {
>  		bool compression_enable;
> -		bool dsc_split;
> +		enum intel_dsc_split_state dsc_split;
>  		/* Compressed Bpp in U6.4 format (first 4 bits for fractional
> part) */
>  		u16 compressed_bpp_x16;
>  		u8 slice_count;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6b27fabd61c3..04d22f0c1524 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2403,7 +2403,7 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>  	 * then we need to use 2 VDSC instances.
>  	 */
>  	if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
> -		pipe_config->dsc.dsc_split =3D true;
> +		pipe_config->dsc.dsc_split =3D INTEL_DSC_SPLIT_2_STREAMS;
>=20
>  	ret =3D intel_dp_dsc_compute_params(connector, pipe_config);
>  	if (ret < 0) {
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 40525f5c4c42..65c884b4f064 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -379,7 +379,14 @@ intel_dsc_power_domain(struct intel_crtc *crtc,
> enum transcoder cpu_transcoder)
>=20
>  static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state
> *crtc_state)  {
> -	return crtc_state->dsc.dsc_split ? 2 : 1;
> +	switch (crtc_state->dsc.dsc_split) {
> +	case INTEL_DSC_SPLIT_2_STREAMS:
> +		return 2;
> +	case INTEL_DSC_SPLIT_DISABLED:
> +	default:
> +		break;
> +	}
> +	return 1;
>  }
>=20
>  int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state
> *crtc_state) @@ -976,14 +983,29 @@ void intel_dsc_get_config(struct
> intel_crtc_state *crtc_state)
>  	if (!crtc_state->dsc.compression_enable)
>  		goto out;
>=20
> -	crtc_state->dsc.dsc_split =3D (dss_ctl2 &
> RIGHT_BRANCH_VDSC_ENABLE) &&
> -		(dss_ctl1 & JOINER_ENABLE);
> +	if ((dss_ctl1 & JOINER_ENABLE) &&
> +	    (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE))
> +		crtc_state->dsc.dsc_split =3D INTEL_DSC_SPLIT_2_STREAMS;
> +	else
> +		crtc_state->dsc.dsc_split =3D INTEL_DSC_SPLIT_DISABLED;
>=20
>  	intel_dsc_get_pps_config(crtc_state);
>  out:
>  	intel_display_power_put(dev_priv, power_domain, wakeref);  }
>=20
> +static const char * const dsc_split_str[] =3D {
> +	[INTEL_DSC_SPLIT_DISABLED] =3D "DISABLED",
> +	[INTEL_DSC_SPLIT_2_STREAMS] =3D "2 STREAMS", };
> +
> +static const char *dsc_split_name(enum intel_dsc_split_state dsc_split)
> +{
> +	if (dsc_split >=3D ARRAY_SIZE(dsc_split_str))
> +		return "invalid";
> +	return dsc_split_str[dsc_split];
> +}
> +
>  static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
>  				  const struct intel_crtc_state *crtc_state)  {
> @@ -991,7 +1013,7 @@ static void intel_vdsc_dump_state(struct
> drm_printer *p, int indent,
>  			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-
> count: %d, split: %s\n",
>  			  FXP_Q4_ARGS(crtc_state-
> >dsc.compressed_bpp_x16),
>  			  crtc_state->dsc.slice_count,
> -			  str_yes_no(crtc_state->dsc.dsc_split));
> +			  dsc_split_name(crtc_state->dsc.dsc_split));
>  }
>=20
>  void intel_vdsc_state_dump(struct drm_printer *p, int indent,
> --
> 2.45.2

