Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 501F38D1567
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 09:37:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB7D910FBEE;
	Tue, 28 May 2024 07:37:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TlmZM0cU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09D3210FBEE;
 Tue, 28 May 2024 07:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716881844; x=1748417844;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wuobsUps69XKjV+eK7Nmf/ytrp9XERu4IL7voGSgug4=;
 b=TlmZM0cUeEk0k7K0tPgMjeVvZYUQAtGlwsAVxOuJrXBDJPSXWI6u1Gwl
 8RUvt/JsjPCXrcGkHXnptjagByn+VqpsSLVTiTXinGMjrooZ9AUdYdP8x
 RYKwrbDXkbE1vyuYwUXKHTOI6crLjwrGYSs/g9qx6oC1zXukP6Fn9Qiih
 GBoJn+zvgROhrNp1xT6cLPufpAA2BWfmGqAaslIGwFJVKNgSY5adO6nwn
 vGz/IYozcygFXQnWZdE5t7pfNBB8HVEwhM+zZBakImVmsyyp/998rbZx7
 qPUraGYKCSiUleWU5rrnnFdtA7Fxfizqv2LYTzIFZx2qGCe0G1g9IiZHf A==;
X-CSE-ConnectionGUID: dK29FyoKR3yIerr21Hxo1w==
X-CSE-MsgGUID: 9+F9u7wvQSac/2X3yRfPng==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13158566"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="13158566"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 00:37:24 -0700
X-CSE-ConnectionGUID: oYYuBHp7QVKx5ItKMO5BpA==
X-CSE-MsgGUID: vutbuUZvSii5lSs772Smng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="34996263"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 00:37:24 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 00:37:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 00:37:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 00:37:22 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 00:37:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k2B68C7l6/EacqToVG+usTjAOTrvQOUsyOih8j4CiXEPb5zi/NjvHfkjaRa6My82IiA9lTP7byEh1T9GhuQ05QGlLBUrnSuYQDj5ke5zGUEOgfaSShZ0Jh4zhlFFT0U5sPvXcJ1J/LusPheJWRyen0dtHSCfqq1R2/euYzMsJv9gQ/f/g6jjrdHrlPcCoNed/mmWhg79ahkmVrtzFrRYrpx/p78+iOaFJc9t4Oa4wB0fkOQckdEDTDGhnzCiBUIX87IgfLR5OESkTuynJzFDBdbbLpu78Nzl1f5airRhupU0ter7X5da/G4A9UYMgzsqwfLUAMs/i4tSi/uHwQPMgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OaSBeD95iOsU5dfamUFcHR954u008GwlKbjbL9h2vWg=;
 b=NXX3LjEzfnMriswGjBKLh/M5FZhxHA4U+Bn/4aFeW3njXGP5BHSBVnvIwcPdOpUkLeS5Wngby2dc8+RhH4+pNw8q7qReIZuUlP/bsXfcTLQMoUITHU9RBouoFtthvUOXHH9+wIxFA2uyf/UaPct9tS2ztrQ+aVR5NkuX2Ba6vym3BZyTgqpH+bukoCznh4h4NYCmQFHs1fP9tYEfjYE66zrXQHmMvK02GgrONPAuaVA8JbnEHR7AeaKELBnIEDcv55N3k7Tvrp3pxKnX/i6d11RVz08bsuHEFQus9HmPhKygRH0yBsldOC1Ud94ofFSVmXMjNzSd8FXZZQcE/vGxRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB7311.namprd11.prod.outlook.com (2603:10b6:8:11e::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7611.29; Tue, 28 May 2024 07:37:20 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 07:37:20 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Borah, 
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [v6 1/3] drm: Add drm_vblank_work_flush_all().
Thread-Topic: [v6 1/3] drm: Add drm_vblank_work_flush_all().
Thread-Index: AQHarAmjvG/bgK+YKUaEt3mEjt/Bo7GsSwgA
Date: Tue, 28 May 2024 07:37:20 +0000
Message-ID: <DM4PR11MB636020DA96109BD2A0D049D0F4F12@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240522053341.137592-1-maarten.lankhorst@linux.intel.com>
 <20240522053341.137592-2-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240522053341.137592-2-maarten.lankhorst@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB7311:EE_
x-ms-office365-filtering-correlation-id: f0b9cacd-6e8f-4497-9f10-08dc7ee90207
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?iDe+pcGbudf4zl2xYyEf/o+H6yHYIWaX9Tmh9aL4oc0G3awxAtcvCtj3bNpD?=
 =?us-ascii?Q?4FM+UQdBiON7qm04M/9JDX8S8lJVXIn0Ul8+lZ8IHCxoaw/T+hvlgHa+JrV0?=
 =?us-ascii?Q?iUA5IHMJeI5ovjK1mrfhWETbVZQfP3c8cdn4lNmohpAMZPoNTUCzs6Tul7An?=
 =?us-ascii?Q?35yggxeyE963QClCyR5OJ/Q7UF0O6mymPurG/IpzOKJJu5uYmX9wmBFvm3S6?=
 =?us-ascii?Q?13RqZnV7+CCcqqfoF+3yIniyFLvdSy23UB+eHF55z1Crx2ONv9PnAGD4gVwf?=
 =?us-ascii?Q?wOV5jomigU4VGjvnsGsYYAyfCXDQ3B9t5SSyadF3m+2gfkV0sCMM1VTvL4mu?=
 =?us-ascii?Q?GR9YjXvw2HxJZbUw/HNBkjCZduq5t5H2ULlsFJK58/GmJuWYDjczRcZyap37?=
 =?us-ascii?Q?X2Gcoj2yEUeAfgUU/gHlSjctlL+AYkYdMHfs6F0OYUcdqC+MynPmlEPgVUd3?=
 =?us-ascii?Q?cZ88qvYHOkkUoVbo89x+srrdSE0G1+5egGW2Py/0/3ibZQsg0FVhzwr52GLF?=
 =?us-ascii?Q?d+o4syu69QwDGV3pne4eW8ttUL277cYwTasI5hiEkNVvao2JS9ZtkKVWLalW?=
 =?us-ascii?Q?WmrBNOFDNKD6KtXWK/ci+jhqc6avVlxn5Fm1Qy8/VQ/4QIbd3hB9A2PZUQxq?=
 =?us-ascii?Q?kTdwo/vfECRCdXIPJbKjmiFg4NTcq9L+MBJDjHHw2DgVGQvRUX/7GopVmg0s?=
 =?us-ascii?Q?nOl5AuGclGjPkaFknvxBsjM/qREwLN+2ys+KARt6YkiZ3ubN1YORZauZsbu1?=
 =?us-ascii?Q?mIrTUX+CnVoKKCvCL0juSg4HFT+WvbIlbaTuwuKPlKAqvOqCd8ZtszdnYtH7?=
 =?us-ascii?Q?PnKpKmM32WE35t3S2C0ZQfyGl9vkeApk5y3iSafYAP5mN4F2K0uBaC2IEIm3?=
 =?us-ascii?Q?Qfn33kQEqXn9LvBGGiH+5s41JKU98J9rxtYnMll0mPsFoJ+GosjQph8dSA7s?=
 =?us-ascii?Q?HdjFNzP00QCj3k+zBM19OTwiQ+DV8v8vRqFTIrnZ5hLYTQWVoWA+D8rMYcmw?=
 =?us-ascii?Q?RDQw1MVejcRnis0tpG4VD348LKTllI5NSo2xhs3QMppOVtgxrTnHDm5Vv5KT?=
 =?us-ascii?Q?7bXJZT/+0FQE2bZC5tBzdD/gS/eRV/Q60H0J0WckZDJMNnBkyxUdzxxeD8EN?=
 =?us-ascii?Q?ASgdzD+pNjB3IY+4GMpaz1Cu6zKbk1VdrH5KgTAY1cWVrRvD/RH1D/yuBWos?=
 =?us-ascii?Q?Si7U/qK69oO0CzoObh0OqfX1OJEX7YlW8WuWSSC565eVVvO1a2UZ8E1GxGc5?=
 =?us-ascii?Q?m02xyDFjwVXa3NA3EeMhT0PFwXBIiaqKalskQS2OATh1EDbkGx2Krovx/UkO?=
 =?us-ascii?Q?dYtng1OpkACRJpMF6p66CRIVkMRnEsDOlVFCaBsPXd08jg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B9MWt0DJaFntK3WdRY1RxY/ez2jwpe4AOtBu3w2eHZI4Zvs1Fqvx5vSxs38L?=
 =?us-ascii?Q?exmCoLQtUGMCJHzdk1MN6R6XhmaaNvmKhyyQQUfbh+03iNg/abGVUEv0Xqqg?=
 =?us-ascii?Q?Fk/4t94frq9D3XaEgAqCMH4BauI2J/ilbzZoGeov6Zwtl1buv1fETToq2CHA?=
 =?us-ascii?Q?lXPHo76ELsyuTzA+qYz7xt0RqZYr/y1Evu7sIODc9LL5OkBmSsmcAFmmPQWK?=
 =?us-ascii?Q?crpR1/kW99A1SxNsNiS6g1PtXYOQ75B2Ow/YZyigijPrxrsqHmawnmieA1Kd?=
 =?us-ascii?Q?1kiKrVVP8JmqIIEiHq7neflenqG2nmKtKNndsrwby7CtD5wkj+/Lp90IGwU6?=
 =?us-ascii?Q?FzqXcAGIcdgBZb5yCDcXuDE22BZKu2cu9QK0HHH2k4awOJcAXB3mwjf/iy2Z?=
 =?us-ascii?Q?rXgpRF9/pBOkX8e8N4K/QlIJq2ufAZJg+Fq7r5yVQFsSH4kHbGbM+hH4Az8z?=
 =?us-ascii?Q?m1A0e3Nbz8vJlTKCaLWBjAUrxFccMc4c6/UseEq2LXGgaPTmS4dSZj1wPxKH?=
 =?us-ascii?Q?oEyFZZAQ7w4zzaFIWWTfKLG0EQfzB++S2mLvxIIXLVbg73cDxl7UN54UhTgH?=
 =?us-ascii?Q?hcsU8/U7cfSn6MUMweFtQYsMWf1mhY5BHlvXMa9BkjhSq7vzQtTDPlYtzX5s?=
 =?us-ascii?Q?X8ODRXT+y3tEhRo9dpHSq401HRvd8TN3khQb0w8LyIfPiO4mIYCt/H+HSSBg?=
 =?us-ascii?Q?9Hq/sH+76ZA9LuFGK0+in6BGFwLQfjy7/ITn0Kk2DoazzgnU5RDEoWK87tgb?=
 =?us-ascii?Q?vzyLhfnK7uNn0FhueNSeGrN2MopXkpUbLbM1ZTuswKmTwHSua4qts00/Mp1O?=
 =?us-ascii?Q?59807PL0K1aBgROdn/PO7T2b27VLv3kviv1da2rVhMTXDw6KgGyde31aOX8u?=
 =?us-ascii?Q?Mw6vQ9KlCyJFPe3+Rkpcx8m2zhjgEYnbBVm42bA2R76RwmDVSh9Q2/rIjpYC?=
 =?us-ascii?Q?rHafhPfzKhcpqh4TCTMaWkrOT3ZRSDutGE+jd3WnY2MXMVr64NXbXzujoIIL?=
 =?us-ascii?Q?cZWGE5e77Rpp96DDbmzVrz3GdrvvMiA/SoM3URpQmAck5ufhIVD2gXwjMKUO?=
 =?us-ascii?Q?Xm6tChDY+0q93W+z/3Z9JSCbemf1jIdgrjLKbzPhJ9ltFG7hUFUUUdcDcRGp?=
 =?us-ascii?Q?GlEjMZUzv2JDdoeokgo3H+MzbqlIdDVMOlDLaIExuLnna9di6z4DZyzIpdsV?=
 =?us-ascii?Q?2sqsaDkXeztSHf5LX8e5MH+fjSREyeLTEUMAOQdOogoHGHMkLs+t0Ospm/7/?=
 =?us-ascii?Q?f3oNLUj20UPQxGF43ETX+Q0yzqQoafUJZ/XT/+D36TBZ6Uo7ga4/LxEzlm3+?=
 =?us-ascii?Q?EV4rUjvsAPzSn9qlqEW8Wi6dq2skBy1paFPe4pwpEdgXB9lPCrowsqtowj45?=
 =?us-ascii?Q?igVpN8DVDreFRk6meMRmTSs0GSQ/WevjqA7BS/t52Qcuy7Gtsvxyf1MU4Oyk?=
 =?us-ascii?Q?1/7elfGyH3678t8v1+UG0v2FDvnNVcVC10+Ws47lp0PJFkbQPdRtoxdx+j2V?=
 =?us-ascii?Q?zaSGUJ32yihmw7p35yrIc6p4Rcbw3zG6qJn6OcOaFtNTrvpFz44hd7RL0CIq?=
 =?us-ascii?Q?VGv1zM/NlCodhfvFulXuj9NZ10wx4UYZx1gGWV3/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0b9cacd-6e8f-4497-9f10-08dc7ee90207
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 07:37:20.5839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s1rpopicYxcLdlOrS3GTXYoP5DbB/LKb9afMUVSuh8CBNMzozpNhJlro3t/g8xMlB6JElfu8tOHs1p9X0q6bDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7311
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Maar=
ten
> Lankhorst
> Sent: Wednesday, May 22, 2024 11:04 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Maarten Lankhorst
> <maarten.lankhorst@linux.intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: [v6 1/3] drm: Add drm_vblank_work_flush_all().

Nit: Drop the "." from patch header

> In some cases we want to flush all vblank work, right before vblank_off f=
or
> example. Add a simple function to make this possible.
>=20
> Check that both pending_work and running work are empty when flushing.

Have been closely following the developments and approaches.
This version looks good to me.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Co-Developed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/drm_vblank_work.c | 22 ++++++++++++++++++++++
>  include/drm/drm_vblank_work.h     |  2 ++
>  2 files changed, 24 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/drm_vblank_work.c
> b/drivers/gpu/drm/drm_vblank_work.c
> index 4fe9b1d3b00f..1752ffb44e1d 100644
> --- a/drivers/gpu/drm/drm_vblank_work.c
> +++ b/drivers/gpu/drm/drm_vblank_work.c
> @@ -232,6 +232,28 @@ void drm_vblank_work_flush(struct drm_vblank_work
> *work)  }  EXPORT_SYMBOL(drm_vblank_work_flush);
>=20
> +/**
> + * drm_vblank_work_flush_all - flush all currently pending vblank work o=
n crtc.
> + * @crtc: crtc for which vblank work to flush
> + *
> + * Wait until all currently queued vblank work on @crtc
> + * has finished executing once.
> + */
> +void drm_vblank_work_flush_all(struct drm_crtc *crtc) {
> +	struct drm_device *dev =3D crtc->dev;
> +	struct drm_vblank_crtc *vblank =3D &dev->vblank[drm_crtc_index(crtc)];
> +
> +	spin_lock_irq(&dev->event_lock);
> +	wait_event_lock_irq(vblank->work_wait_queue,
> +			    list_empty(&vblank->pending_work),
> +			    dev->event_lock);
> +	spin_unlock_irq(&dev->event_lock);
> +
> +	kthread_flush_worker(vblank->worker);
> +}
> +EXPORT_SYMBOL(drm_vblank_work_flush_all);
> +
>  /**
>   * drm_vblank_work_init - initialize a vblank work item
>   * @work: vblank work item
> diff --git a/include/drm/drm_vblank_work.h b/include/drm/drm_vblank_work.=
h
> index eb41d0810c4f..e04d436b7297 100644
> --- a/include/drm/drm_vblank_work.h
> +++ b/include/drm/drm_vblank_work.h
> @@ -17,6 +17,7 @@ struct drm_crtc;
>   * drm_vblank_work_init()
>   * drm_vblank_work_cancel_sync()
>   * drm_vblank_work_flush()
> + * drm_vblank_work_flush_all()
>   */
>  struct drm_vblank_work {
>  	/**
> @@ -67,5 +68,6 @@ void drm_vblank_work_init(struct drm_vblank_work *work,
> struct drm_crtc *crtc,
>  			  void (*func)(struct kthread_work *work));  bool
> drm_vblank_work_cancel_sync(struct drm_vblank_work *work);  void
> drm_vblank_work_flush(struct drm_vblank_work *work);
> +void drm_vblank_work_flush_all(struct drm_crtc *crtc);
>=20
>  #endif /* !_DRM_VBLANK_WORK_H_ */
> --
> 2.43.0

