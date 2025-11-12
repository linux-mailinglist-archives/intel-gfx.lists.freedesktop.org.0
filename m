Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB91C50830
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 05:29:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C3310E19B;
	Wed, 12 Nov 2025 04:29:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lDVSjOtv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 783B310E191;
 Wed, 12 Nov 2025 04:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762921741; x=1794457741;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9AhISL488+4wC6Jn8ACs66ys1uhZmdEpywH1hJ96SbA=;
 b=lDVSjOtvyq6GIPSyDUYftPMC+ZejM7R2b0aK+xH4PTkJNtivsBRuq9aG
 ck9xPGqslX7TiT9sU8uwJLZXSXWYKnb+DXl1bt5IcPyTV58lHQ/0r7xJ/
 o9SL5NtT+WB6ipRMhenZc0fCda9IcnVrQKsyHQUR+ssnnZdmu+KKxpcwV
 bbsI05qWsndXNEi/jBsnkGj2q7lkTmGwlZDbS0ljITlBl5uKph50fR/6V
 aqD7iUPIqfVOBFUaI4U8FLydIuO2266IMJOJe4EUOCBi9ygpF8dvFGzru
 u8Kd9gaVkzep+C+Zl+Q/8A/dbO2Uekx+y2KKJb8bnZ2AU+jzWhJgETGCy g==;
X-CSE-ConnectionGUID: WQ+7yQ+iTkSVZhc79ejptg==
X-CSE-MsgGUID: byRiFt1MTjq853vp2iLKMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="75285001"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="75285001"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:29:00 -0800
X-CSE-ConnectionGUID: moUbdvgZSRq8iNwwh/IhpA==
X-CSE-MsgGUID: qpo2QPJsTeCCGACXCFGy5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="226368142"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:29:02 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:29:00 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 20:29:00 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.19) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:29:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j+8JsI3IJfzJjSkw2Jnfn6ykGsXmJd+PGSnEtx1P59OsYbsvsBIG6wANWDM0GPtIDNOXyOMdhQGty1r5l63/n7HbcC6OVe23vvcd+YsvWZTC15H4mqSE6D7EINRoJ4JVLpgSv84+Nedt/4/gw7RnsaVpTpix2n4gcn25tlOZF//nL4DyAxBzeDbwkvctRlN20/eceEW5eD03JOBXt0k5UgDyajkOQ9Apb1AYV1jZtlXM//RpqOloeKC5W7qfBIm2e5tyQHMTrZ/1DfUYDzkCUHxe0kSHUD03eQc1xbiHcIp4yPC5j9YVj9mVzJ19Sq0wthjY4v7K2MYq6g2oprckqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mcyXB1tmaJVR2O2po8FGzJXunCQ5xlWr61kpNSCe2q0=;
 b=CaKTbweJnqG07oEac1Xi3Ul3tEQXK+EOna4SCPikngbYkJAeXUs5ldIeZQqs84A2ysOAWf+MPor9eyq5q5JOVTPm/BGr0Ro0NLsPytN8m6xmL+mFvhEpnw21TVyhVQL42w0ZWzjbUPifYA6XXnaI7d+/5gOTfrYe0feJLpg7BAvpZB4TN6HQ5usdGaELknxzGAjmOMeB5q6u+WkncEclgAe2anLkjIfgZM/yqtimgJfeRob8k4gfOg9ljSlZIU9iBl+VHyiaNtGQRgVi238S26369BEj4CgH0N/tRbadtSebZb38HQHi8ABMWPF+0xsZl91ufhqFRHmKGmZDkKy4Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS0PR11MB8051.namprd11.prod.outlook.com
 (2603:10b6:8:121::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Wed, 12 Nov
 2025 04:28:36 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 04:28:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [CI 17/32] drm/i915/display: Update C10/C20 state calculation
Thread-Topic: [CI 17/32] drm/i915/display: Update C10/C20 state calculation
Thread-Index: AQHcSmixftWV7LYZjkyjBnr+eKASDLTug9nA
Date: Wed, 12 Nov 2025 04:28:36 +0000
Message-ID: <DM3PPF208195D8D50C00E06FD28C7123F5DE3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-18-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-18-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS0PR11MB8051:EE_
x-ms-office365-filtering-correlation-id: a9f1de97-15a8-47de-14cb-08de21a3f29c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?vhRnC9WNNNJS9m0uFy+MUr0OlTEkNSgKo5njb9RUVfDzQBs8UYIczE0x6ldq?=
 =?us-ascii?Q?yb6yLjyJE2Me5tVJLM7DPDdYQ1Dlgt3+NggLQj20Ew9IFubrQ/w2Y8C2d83u?=
 =?us-ascii?Q?VwUMCSW8lTi/DaWvfTmxeFRV/R/xRJhYnYEZiN/vt4FbGYV8rQ1dCQgoUIXc?=
 =?us-ascii?Q?dKFIIev6gx3WwY+BvkDxW6rFGMkPwXeBa0ZVWlbRptTjPJcOZjJ0gr9ex/sx?=
 =?us-ascii?Q?EQLZNYbcwE3uDdo4Hx8uIlhhhu6tkzzibzXqUPEjw8I+oo+hrFTm4RrFfK0T?=
 =?us-ascii?Q?tWz6k2/e1sBeDMYbWcr7KqsZW7klwpORk4mq0H0F6VlIeVK/aqxZ88LwoSXX?=
 =?us-ascii?Q?JFKgb6+X+2Z5u/ZiZg8a2g04rTLpkujUQA47Qo8ifundx5bnptHRheAP/T3a?=
 =?us-ascii?Q?BTN44iD2BaJXJvTVKjaB7VFqPp0uk7C9JmEhMb/izcaPamyfVkLJX3oiMgnQ?=
 =?us-ascii?Q?c0aWlEmTAt2nvEkxxEGimyzzN4XhcQt8IeknO7yjYIgtpcDJR1KSiUqCOD7k?=
 =?us-ascii?Q?XA8QGowxkICw7e2ZrF1zPOsqZOY3XCbvYYHlqWPCxOgJ52lsvs4vHysU96d5?=
 =?us-ascii?Q?myWq+FJ9Fg7tb51+U0bsFAg4ml2jBAap0m3GeYzVadV9YcdaI0nO3lMSKAhO?=
 =?us-ascii?Q?4GCl3Yd9gWtp7NzwGja9zuPg0cV1WJxfLBzbvYMT7ODs7wNUFDIXFfPZnVAH?=
 =?us-ascii?Q?1gEBDLlOyMXMD7WaSDwnLHD5OcpvhGqjtftaC2JC6/PX7LeKO+RprL44TYd1?=
 =?us-ascii?Q?l2EH5V/kVg7Tp84USIWi7IEFngI4f32hO9crBiHoRn6RzN6o2iLPQVRgAxa7?=
 =?us-ascii?Q?49zyuG/ONYEBviuigc1LrCmqx5L2MdIBprzMSdS1/mWn9/T818slvEkGNal4?=
 =?us-ascii?Q?Y918RR8M4ZvcHmsf7KrTTmCpIDn/EaG3cu7FqRE+4+wp4+qC74FkkpKGqb1t?=
 =?us-ascii?Q?FYg7PZbDPAa8ch7m0/poPSuTJ05oqdbsq+DG3lojVy/IoOpTsSCSpeQgThsi?=
 =?us-ascii?Q?machzrw3HZfNkeOrYXrPVfaHH9RQskdMEV6FylFM9R6UAGHLXQIH+467pLFT?=
 =?us-ascii?Q?Ga+bEIP4UYq6TaPniorzuItlnlLXwT47oJKm0za4HvOqJMKa9EM4WGYQD8pF?=
 =?us-ascii?Q?1wrv5Myt2IByHf1ENomxkI09llNy5Sw8pmMzl79Mq4qaPNxJ6cECf8abB64Z?=
 =?us-ascii?Q?Tj7za2YfmkTwpO8Mn1ncE/SGaUZ59eK0CdnkIARP/s8NpqICO2k+zBZtg5Dm?=
 =?us-ascii?Q?Q6OF0dK/6it8UA5I47GTokNOkKV8QMnH/7wSP4HQT89SFSJfPg+elIYf+dQK?=
 =?us-ascii?Q?ChsbrFwsP9Xjk7L8H9U+al085tf/X7lq27aF/HuyQLcOUcepGtEqxEJRGBiH?=
 =?us-ascii?Q?eBPoz0Fiv1rKWW2T099ZCMweos83s32pWfBwTrlz2nSINPWZyBoaIcK1oJz6?=
 =?us-ascii?Q?tVsZn9f+KxHpGC3/lKRf58DRc5u/kRmWVRmy4pvpARrnTXt1/y+eTQhkD6GI?=
 =?us-ascii?Q?jMu4mW+8MrhFH9k1rL7hIfysRBxjAlrzF+sz?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?My1S7/yWU3HhFoKOjF8KONGbxlLclOc04oUT7PKbScwdChl18GA5m1FXtYwh?=
 =?us-ascii?Q?/IV4/qT9g56ZAEQnKK5guI62noccFnQcc0897rJqlqkRu4zt6MEu9kGSb60k?=
 =?us-ascii?Q?NRHJs90SdF2H77Gx682HPx4nLaSC9UW71QxwTz/gGfAa8DnDiAhvPDiBiAu7?=
 =?us-ascii?Q?P9vzB6+hItdQgWJVFF0vdClT+3TgrRnziuy1CD6TCZgYxVKSfNue1R960YvU?=
 =?us-ascii?Q?KnHkmr29h9N+GSmYDEXHxekyra3ENsdQZ7Nt6itbh3yj6LYSJY2VT4eo20ZV?=
 =?us-ascii?Q?dkfznk1tryKtlMQOen2RY3t8UgE1dgXNx1rnzsl1Pfyf06yyiIbbg4mJzl4s?=
 =?us-ascii?Q?NGxVIz26c+qvrG/6Oa4wNdLvkyLYCk4bOId9HXO03C1rnpkOr32HJEO/yVmx?=
 =?us-ascii?Q?3i0YWE2rRTvWJ1e6HLJ9Jf9WA7bugO6bVpX+BYHy5L8bRooNXytQivMGqSND?=
 =?us-ascii?Q?O65Q5nfZY3ksLWaYjOMna7cx3TojNtl45NDc7xrurkXXjU2B6FjrY34z2OOs?=
 =?us-ascii?Q?9gTSX2+cRt8Zqi7KtY7z5i+t8de0VIFmCdORO7YSlDnoEo0cjqAftlb9Qj23?=
 =?us-ascii?Q?EZdyIBrL6aAUsSTG3BpU/RfrnKJd85SJEnk3gwBgthJBsdJYLmCVSoMyah/G?=
 =?us-ascii?Q?JaWF9bjkk3XZTbgzdBnMiLlie3dRkATDApuASLWcLmMZRObUV2YDGeRdQg+s?=
 =?us-ascii?Q?3QVzzUeLJpjwuYzWdg+BM2WlEyuw3uR6IZpEC+RAFC+nhv59G25q/hbHeRGv?=
 =?us-ascii?Q?4rD7m0VFhJJ2tHqb8cKDSVgcAk0ABW4cOUAjkr1YZ/Y0GeqeKuOuOAiT3JvO?=
 =?us-ascii?Q?cGvXz+0s7xJLh53DpIU7WzJMCXGXRtn5sABHF8IVeQ0rws0sc8/yhibMpE1z?=
 =?us-ascii?Q?SxcD6a22YnnxGR7Zs8jTf7S5PaVsmXNW7VfpmlIpCd0mIiOEXm8wx9LjK6zH?=
 =?us-ascii?Q?Z3LMf5NHIZQSc20yW7RS3gsoD9wIqFFhvaEjf9EthmDcCuTtNes5KXbFAx8N?=
 =?us-ascii?Q?S+pS9Y7QvEmzsVFFxMXxR3Z1BvhXj9k6LqaiHVHEX38+9WT4mcowpRjiTR8N?=
 =?us-ascii?Q?msxAH96ldZer/JEWbyzuvoFsJxEQjNWnVTC7gY5Wz5xkN7hTaHxUKMUBpTbl?=
 =?us-ascii?Q?faRE11TlIe96D77+ckovfa0XqoX/gdijWVzIIvcsXipOiPUtKl1Dp1NJdliq?=
 =?us-ascii?Q?3ryKylhm0o/a6cbSMkA6sw2FJJxmjsjw4Eck2m56NpuXt+SbccdRCrNd+HlA?=
 =?us-ascii?Q?CZkm0B+J/A8hfA8PLDLec6muobM5is+ZsJMgC7qBvTXNLZfvv4mHPZsjkc22?=
 =?us-ascii?Q?cz6YUuRZn63tSkXD5yFANUURo2DLmy5PSRgwb6o2WlxN1Q3T/k3HVOLnAt4O?=
 =?us-ascii?Q?PMFnTkBTzLeIjib1Xk6z03DF6oIJ3dOHEeDjEzBc3IvxAwk7zFNcRD+xotR+?=
 =?us-ascii?Q?WhSQal+NpNjW4IfZcJSTczzanw8k3zj7MnJmT74rNhnqGTUfZb3soCRuio5s?=
 =?us-ascii?Q?AY57EfTghmOm+XgeOlDhEQhl/ZGIP7TzOSO4V5rTBYD5f0hxRjzXFpIBIePO?=
 =?us-ascii?Q?gQkzoWprq8p/I/Z+JeludF4gGrml5ePaRJzdF9Nc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9f1de97-15a8-47de-14cb-08de21a3f29c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 04:28:36.6590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 64Cl1Xr3mIA3cstMjuoh6/rZscXs5nBhlcmWk9Lv/eJWdY4wifCMEQq924aeO9lGNNWH177vyxFJ3J+YQ9DueQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8051
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

> Subject: [CI 17/32] drm/i915/display: Update C10/C20 state calculation
>=20
> For the dpll framework, the state must be computed into a port PLL state,=
 which
> is separate from the dpll_hw_state in crtc_state.

You have state the problem here but failed to mention what the commit does.
Also port PLL state?
Also two different changes are happening here struct crtc_state argument be=
comes
const struct crtc_state and a addition of a new param dpll_hw_state maybe t=
hese need
to be two separate patches.

>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 68 ++++++++++----------
> drivers/gpu/drm/i915/display/intel_cx0_phy.h |  5 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c    |  2 +-
>  3 files changed, 40 insertions(+), 35 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 5332f33800e7..f5e6634a6389 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2034,7 +2034,7 @@ static const struct intel_c20pll_state * const
> mtl_c20_hdmi_tables[] =3D {  };
>=20
>  static const struct intel_c10pll_state * const * -intel_c10pll_tables_ge=
t(struct
> intel_crtc_state *crtc_state,
> +intel_c10pll_tables_get(const struct intel_crtc_state *crtc_state,
>  			struct intel_encoder *encoder)
>  {
>  	if (intel_crtc_has_dp_encoder(crtc_state)) { @@ -2138,8 +2138,9 @@
> static int intel_c10pll_calc_state_from_table(struct intel_encoder *encod=
er,
>  	return -EINVAL;
>  }
>=20
> -static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
> -				   struct intel_encoder *encoder)
> +static int intel_c10pll_calc_state(const struct intel_crtc_state *crtc_s=
tate,
> +				   struct intel_encoder *encoder,
> +				   struct intel_dpll_hw_state *hw_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	bool is_dp =3D intel_crtc_has_dp_encoder(crtc_state);
> @@ -2152,21 +2153,20 @@ static int intel_c10pll_calc_state(struct
> intel_crtc_state *crtc_state,
>=20
>  	err =3D intel_c10pll_calc_state_from_table(encoder, tables, is_dp,
>  						 crtc_state->port_clock,
> crtc_state->lane_count,
> -						 &crtc_state-
> >dpll_hw_state.cx0pll);
> +						 &hw_state->cx0pll);
>=20
>  	if (err =3D=3D 0 || !intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)=
)
>  		return err;
>=20
>  	/* For HDMI PLLs try SNPS PHY algorithm, if there are no precomputed
> tables */
> -	intel_snps_hdmi_pll_compute_c10pll(&crtc_state-
> >dpll_hw_state.cx0pll.c10,
> +	intel_snps_hdmi_pll_compute_c10pll(&hw_state->cx0pll.c10,
>  					   crtc_state->port_clock);
> -	intel_c10pll_update_pll(encoder,
> -				&crtc_state->dpll_hw_state.cx0pll);
> -	crtc_state->dpll_hw_state.cx0pll.use_c10 =3D true;
> -	crtc_state->dpll_hw_state.cx0pll.lane_count =3D crtc_state->lane_count;
> +	intel_c10pll_update_pll(encoder, &hw_state->cx0pll);
>=20
> -	drm_WARN_ON(display->drm,
> -		    is_dp !=3D c10pll_state_is_dp(&crtc_state-
> >dpll_hw_state.cx0pll.c10));
> +	hw_state->cx0pll.use_c10 =3D true;
> +	hw_state->cx0pll.lane_count =3D crtc_state->lane_count;
> +
> +	drm_WARN_ON(display->drm, is_dp !=3D
> +c10pll_state_is_dp(&hw_state->cx0pll.c10));
>=20
>  	return 0;
>  }
> @@ -2355,7 +2355,7 @@ static bool is_arrowlake_s_by_host_bridge(void)
>  	return pdev &&
> IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(host_bridge_pci_dev_id);
>  }
>=20
> -static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_crtc_state *crtc_st=
ate)
> +static u16 intel_c20_hdmi_tmds_tx_cgf_1(const struct intel_crtc_state
> +*crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	u16 tx_misc;
> @@ -2379,9 +2379,9 @@ static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct
> intel_crtc_state *crtc_state)
>  		C20_PHY_TX_DCC_BYPASS |
> C20_PHY_TX_TERM_CTL(tx_term_ctrl));
>  }
>=20
> -static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc=
_state)
> +static int intel_c20_compute_hdmi_tmds_pll(const struct intel_crtc_state
> *crtc_state,
> +					   struct intel_c20pll_state *pll_state)
>  {
> -	struct intel_c20pll_state *pll_state =3D &crtc_state-
> >dpll_hw_state.cx0pll.c20;
>  	u64 datarate;
>  	u64 mpll_tx_clk_div;
>  	u64 vco_freq_shift;
> @@ -2648,8 +2648,9 @@ intel_c20_pll_find_table(const struct intel_crtc_st=
ate
> *crtc_state,
>  	return NULL;
>  }
>=20
> -static int intel_c20pll_calc_state_from_table(struct intel_crtc_state *c=
rtc_state,
> -					      struct intel_encoder *encoder)
> +static int intel_c20pll_calc_state_from_table(const struct intel_crtc_st=
ate
> *crtc_state,
> +					      struct intel_encoder *encoder,
> +					      struct intel_cx0pll_state *pll_state)
>  {
>  	const struct intel_c20pll_state *table;
>=20
> @@ -2657,52 +2658,53 @@ static int intel_c20pll_calc_state_from_table(str=
uct
> intel_crtc_state *crtc_stat
>  	if (!table)
>  		return -EINVAL;
>=20
> -	crtc_state->dpll_hw_state.cx0pll.c20 =3D *table;
> +	pll_state->c20 =3D *table;
>=20
> -	intel_cx0pll_update_ssc(encoder, &crtc_state->dpll_hw_state.cx0pll,
> -				intel_crtc_has_dp_encoder(crtc_state));
> +	intel_cx0pll_update_ssc(encoder, pll_state,
> +intel_crtc_has_dp_encoder(crtc_state));
>=20
>  	return 0;
>  }
>=20
> -static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
> -				   struct intel_encoder *encoder)
> +static int intel_c20pll_calc_state(const struct intel_crtc_state *crtc_s=
tate,
> +				   struct intel_encoder *encoder,
> +				   struct intel_dpll_hw_state *hw_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	bool is_dp =3D intel_crtc_has_dp_encoder(crtc_state);
>  	int err =3D -ENOENT;
>=20
> -	crtc_state->dpll_hw_state.cx0pll.use_c10 =3D false;
> -	crtc_state->dpll_hw_state.cx0pll.lane_count =3D crtc_state->lane_count;
> +	hw_state->cx0pll.use_c10 =3D false;
> +	hw_state->cx0pll.lane_count =3D crtc_state->lane_count;
>=20
>  	/* try computed C20 HDMI tables before using consolidated tables */
>  	if (!is_dp)
>  		/* TODO: Update SSC state for HDMI as well */
> -		err =3D intel_c20_compute_hdmi_tmds_pll(crtc_state);
> +		err =3D intel_c20_compute_hdmi_tmds_pll(crtc_state,
> +&hw_state->cx0pll.c20);
>=20
>  	if (err)
> -		err =3D intel_c20pll_calc_state_from_table(crtc_state, encoder);
> +		err =3D intel_c20pll_calc_state_from_table(crtc_state, encoder,
> +							 &hw_state->cx0pll);
>=20
>  	if (err)
>  		return err;
>=20
> -	intel_c20_calc_vdr_params(&crtc_state->dpll_hw_state.cx0pll.c20.vdr,
> +	intel_c20_calc_vdr_params(&hw_state->cx0pll.c20.vdr,
>  				  is_dp, crtc_state->port_clock);
>=20
> -	drm_WARN_ON(display->drm,
> -		    is_dp !=3D c20pll_state_is_dp(&crtc_state-
> >dpll_hw_state.cx0pll.c20));
> +	drm_WARN_ON(display->drm, is_dp !=3D
> +c20pll_state_is_dp(&hw_state->cx0pll.c20));
>=20
>  	return 0;
>  }
>=20
> -int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
> -			    struct intel_encoder *encoder)
> +int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
> +			    struct intel_encoder *encoder,
> +			    struct intel_dpll_hw_state *hw_state)
>  {
> -	memset(&crtc_state->dpll_hw_state, 0, sizeof(crtc_state-
> >dpll_hw_state));
> +	memset(hw_state, 0, sizeof(*hw_state));
>=20
>  	if (intel_encoder_is_c10phy(encoder))
> -		return intel_c10pll_calc_state(crtc_state, encoder);
> -	return intel_c20pll_calc_state(crtc_state, encoder);
> +		return intel_c10pll_calc_state(crtc_state, encoder, hw_state);
> +	return intel_c20pll_calc_state(crtc_state, encoder, hw_state);
>  }
>=20
>  static bool intel_c20phy_use_mpllb(const struct intel_c20pll_state *stat=
e) diff --
> git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 2b934b96af81..7b88c3fe9de1 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -16,6 +16,7 @@ struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_cx0pll_state;
>  struct intel_display;
> +struct intel_dpll_hw_state;
>  struct intel_encoder;
>  struct intel_hdmi;
>=20
> @@ -27,7 +28,9 @@ enum icl_port_dpll_id
>  intel_mtl_port_pll_type(struct intel_encoder *encoder,
>  			const struct intel_crtc_state *crtc_state);
>=20
> -int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state, struct
> intel_encoder *encoder);
> +int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
> +			    struct intel_encoder *encoder,
> +			    struct intel_dpll_hw_state *hw_state);
>  void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
>  				   struct intel_cx0pll_state *pll_state);  int
> intel_cx0pll_calc_port_clock(struct intel_encoder *encoder, diff --git
> a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index f969c5399a51..7a48d6f0db10 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1220,7 +1220,7 @@ static int mtl_crtc_compute_clock(struct
> intel_atomic_state *state,
>  		intel_get_crtc_new_encoder(state, crtc_state);
>  	int ret;
>=20
> -	ret =3D intel_cx0pll_calc_state(crtc_state, encoder);
> +	ret =3D intel_cx0pll_calc_state(crtc_state, encoder,
> +&crtc_state->dpll_hw_state);

So you are adding a new param which can be derived from the param you are s=
till passing to
the function ?

Regards,
Suraj Kandpal

>  	if (ret)
>  		return ret;
>=20
> --
> 2.34.1

