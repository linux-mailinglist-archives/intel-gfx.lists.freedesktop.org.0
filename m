Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEAAB1D518
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 11:45:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AC1810E32B;
	Thu,  7 Aug 2025 09:45:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jZadqKIw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C78C610E32B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 09:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754559918; x=1786095918;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dqaulEK+Cfsf3tVRZXxyu6nCWBTe9gu6W7qUGGX9HiY=;
 b=jZadqKIwwRgDi7N67jmZmPUQW9q3DfY9DUC+Bgn6v55xsUDsU3wvQru5
 Tzi2TJZzwmm27pMfVkmCLHiMc8dUhZTNNaGBH9ivgaWU5bNlOZ9A0v0bw
 mvU5ShELW9O3uEAnFEMLFuqsoKmFbAkiMgJshxU97nVKdmx2ipWo8c9mU
 AGG0mXiv6sVd0iVSAcIGfK6NSHqwghGw7Lw9CYmV21WRpR+Uw1O3v5rQK
 9rbMPiWAsi32TUK0OTgwAnEVd02DmipooPdxU6EDNxSmJDs5E3mMCiK/J
 H+SG9CgILXRIbEURyhxvw07kvpvIp35zpL0tkEq4M6IWlN3fiNniHvUFh A==;
X-CSE-ConnectionGUID: H+JKXVHOSiiwtykqGDMN/Q==
X-CSE-MsgGUID: Ji7s1O/0TF65AuXk+8Tw+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="44481752"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="44481752"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 02:45:18 -0700
X-CSE-ConnectionGUID: tXPy8GKsREu3MUYeafnLlQ==
X-CSE-MsgGUID: aDw9CGdFTd6j5LuVVmvjVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="170276947"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 02:45:18 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 02:45:18 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 02:45:18 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.76)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 02:45:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DLie+oQT9MCRSAbyL3fDrvOevFio8coZyk7hQcDzV7Z+nLPFMvQB+YGFR8GaiKjwfv7ak8N3mB3JVLldeA/4fN3jDrDJ9AfT0ZZLrZ8v/E/1igIVrn+hYiNcoctptsqFUqEKEGJSjYUI9YkZv80E5IkE6EWYweMy3Y2RTC6z4N1eXsutiRCvvPLQi8Zk5Q6Am1WPC0GcB+hgXIVDqnPilSCJJ5Ed55lsSTYrxmXuM1GecrTsVoHOGVR3360197RVQOtq3O8Au/3JISpcFsHo1bea03fTWyXArfdn6tvlpX+iny3cp95ElY/F3iAvB8ucYGERPsj0xmrZexE3sMsBVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GLm0aLJ+5vLqXEmCsvXKhdPF1yLqABUmNb32W/CgDUY=;
 b=sio91Z19OIbd42ofWar7IKOe4n5P820ObrAM4VCjPT2+p6g7zsz+Gm4o+I8ik8RntNVhCfehtOQuT3XZ2Doykbal8FsMEk4yQNnBqd26HGIOfwe1WvFuQluDGvKSKmV1rCRXKW9D+u5y8nhlZL1NW+4t3mitTkUlTUbjM2kecDxPREoHPq7C6iKs6RlNzRpE2djgJkG69/BK4RHD1ItYEDQFdXdFFKho2FM9xlDU6MQdmGGtxa0r+s2uKmEHa/36iPx3ndO6JMYV0hCDttIWBjhQcvWfWSfL0x8MSTtotjs06sRVP5uqkJdtGcowYq+hZ54E3X9y3TQvIwYhqlXRNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB6262.namprd11.prod.outlook.com
 (2603:10b6:8:a7::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.18; Thu, 7 Aug
 2025 09:45:09 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f%7]) with mapi id 15.20.9009.016; Thu, 7 Aug 2025
 09:45:09 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/scaler: Fix for WA_14011503117
Thread-Topic: [PATCH] drm/i915/scaler: Fix for WA_14011503117
Thread-Index: AQHcBrxbTkjETH2N7ku1TruCUotDTbRW8JYQ
Date: Thu, 7 Aug 2025 09:45:09 +0000
Message-ID: <DM3PPF208195D8DE1EF756F38B634FBF9BCE32CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250806101930.2969802-1-nemesa.garg@intel.com>
In-Reply-To: <20250806101930.2969802-1-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB6262:EE_
x-ms-office365-filtering-correlation-id: a952ae65-a01d-413e-43af-08ddd59718e2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?+tYUxkYvxWIwoEY6U7yYzTu44IO5D1hJh2TlXpcOXXLRo1y/tkytS95Gh1Ay?=
 =?us-ascii?Q?qPOH9TGr4CgN9skLhSW63+juZukhfQwE546YghY+zNVL0l52nuNnVa3wkaGL?=
 =?us-ascii?Q?SGkyJSeEh9Mdf8tLRWcWSj7DuO8dG8SyiVDl3g8A/9xVGJJNOb3SbOhYMSNx?=
 =?us-ascii?Q?AMrnJ11BziQoasYfKc8zPoJ4N9hxlDyzV7hY+pNvl6UNAbtNGrJNy2gPH86q?=
 =?us-ascii?Q?z/UpkKd4C8kUl9HYI7CoBgqIqDFG3ciXfiv1vc+O07WUpgZhZYX8NTkt7xzJ?=
 =?us-ascii?Q?uLsr77wnb+tFo+prwLQFrVHlTaBUPBdLFdyDFIbRjm0wjs5ijtsAkM64KdZx?=
 =?us-ascii?Q?OnREInrIx/DH1dSR3G2Jj7umlA0uPN90jImMwwqunpNidZQ6/46iYtYeGAlH?=
 =?us-ascii?Q?Lq0EdOJbYUCAh8N6y6yKxLqIvzceLIota3tHME9T5SKlrafG2itI0PFlhJ1E?=
 =?us-ascii?Q?sSAcz2QtHGsxbmt14B8FGReBGcUDANyjoeC1TlP/oRZQ+ODvWgcRAPM/4o5J?=
 =?us-ascii?Q?2Y5HUeOpK1oB+FkwLjJw0ToLF3LondPboEfIYMlgrWgRveTB8sGuopCdZS2m?=
 =?us-ascii?Q?rN8eIC3hmoOGaCkFkRJh/956ZYLVUsuu5kPrI3I2zaG8qq9bgwf5x73JKdjW?=
 =?us-ascii?Q?TmagU1uIOubg/KNc7iPoRyDR5xU0edDsH1Jqz9p/rl8cWh55+KF9dk1vSIMD?=
 =?us-ascii?Q?uV3OA04lvOsl5pg4HPaseq8o0siEdA6mem13/O0piwrzwXCGC+loPudbmxw9?=
 =?us-ascii?Q?UQAdZw7FeZCaLq8XCyn0Vq+5Z5ByKLhV7U/b90HkwWY41hUolQ1vdz1D60vA?=
 =?us-ascii?Q?Rm2uauqpsnNiDzPuVRPxjopo8t7xeCISYXOJYPYX/vQMfANt3cG32WoObclQ?=
 =?us-ascii?Q?xmFdFnKetMUZxhKRLzwNFA2cE0GZyquNskexuVQne5iVSc9nWeQrRNWogcSX?=
 =?us-ascii?Q?SVTLMHg7aIKWBoEG1MyNsKwmAjwrNR+SWfZpg6Pk2HayZMfZdCXLH3qlbySX?=
 =?us-ascii?Q?VhU1RMQJaev1Gummxg5ULdAl6BZrcWXvBsYvoaiHY+GfFC/NaCdfqtK0JpPx?=
 =?us-ascii?Q?npQgK4pDjWdWBl49py3NMjNRrWxKVL6CnlztK9ndR/4wp4zh4gKdke4rRxFV?=
 =?us-ascii?Q?rK+N9CJsLVXFGHfD2y+5rBXqdV6/v/0FgzXv09pp90mH+Ik6MSGdrcRgAwZf?=
 =?us-ascii?Q?1sFz7qRMP4tr7Kd73B3eEF3BCPTVeGjD1qBWjlBhdCmjg2uQt46fE6U53+b4?=
 =?us-ascii?Q?nkgQi9Lw5bcza5UBFajMjPIzUF0uGd1LXS6p05niojdN6+cq6p4oIZgAgaaG?=
 =?us-ascii?Q?P9qLSWQbvMpV9PPM36MSPGmwfqbdkU+lej+u/Hq5FbNLMIldW9q101fOQuWi?=
 =?us-ascii?Q?7FcSVYpFkXiLv9g30u9UYkXpFIeFbcpmJdJTcOS+RAE9TGEDVgCwkGtKCKtz?=
 =?us-ascii?Q?Ygce5X5ETPz7304uTv4PZTormaCWhfdnHWD0oKTWeDgDxt/+ic1sUQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4dXTv3BNCbwP0wB4aHFibAbW2ELauE7VZORcyeCvMBqZv5Ksk1+hBLKIbfaW?=
 =?us-ascii?Q?FemuQos38B4R1EwdrUnhNAaprLdhGl2akk+gAHbG3tPFPejhK3xz8Ekwr9ob?=
 =?us-ascii?Q?0lXCrpFgl2f9eqj6DSl/aenxdqYga7k7zCsVTfiLD2yTM0sVtglsti3QLLK3?=
 =?us-ascii?Q?L+SK93pWwHgyt/hOFaYOuqlOTq36U/PRUqv0V2Fj9zbxa9nxJ+I+Du7EXHLr?=
 =?us-ascii?Q?Pq2pZM2q4nw+9EHoY9ERAIYtjkwSPR7gNISNsdJwlwoUVBLGqbHylOxwA0S/?=
 =?us-ascii?Q?0ptHUpl1gUKTOKdfRoF/rL1lncqcLwZWyZ0hTv+ezdiulp4ujbWkh7GdC5Il?=
 =?us-ascii?Q?a15DJnool/QJiXGB0s0tpmoU8KzNxmksgy/ZBfsuzK0afQTHyVZDpNjBrUli?=
 =?us-ascii?Q?TtMk1Q5BFSM3GrFuH3c4hz/aCZrndWHYrZZ5D1uvwA8dfuOAr3ThDHUWo8FX?=
 =?us-ascii?Q?qWBdyeoIoQqpwI9mKWqB1xigbrDhJAhNyh3RyrZHzandRgW1jkZVMaO4g/Fl?=
 =?us-ascii?Q?hGXaB1664uhcFb3l5Idkod7pCza88rp3wIB9pvD+AflNZmeU4SPY3Y1Yo1sl?=
 =?us-ascii?Q?wbxXHnsXoLOQKQ54UGvARpR0uJAYIHhGsRFb+NZ7g6eHGhncK+AZIzqdqRuo?=
 =?us-ascii?Q?L4FCEvGPIGIR2xvX+xk/zP7ZCY00HMg7XqFEeEkA030qt0K0fkmC3N53lRJ6?=
 =?us-ascii?Q?c4hr9cyqritrAhiZuXa1N7SXvP7to11vNWmvECQJDyFG241fbwNizOywWlCL?=
 =?us-ascii?Q?6qUaSq50NTSgvBNm4D3cfwGTv0uTJuakYrf/kxs42SKKSMI3UOBAqxzs/Kdk?=
 =?us-ascii?Q?iFvYKYs1AI7fF6zqWyTqdjpYRHKgIsUnU3JTIjCbOLpGn+BIfpooYzWLnXDf?=
 =?us-ascii?Q?mELvieeTSbKlLpMOWjiY2nTL4k7tTjl1D9m8BciaxHFtfstIxtWGBKn7AWs2?=
 =?us-ascii?Q?JK5N5oh+edIVzRSOlIR/WwJYKSdOnWVmqFaxLsfWZ87o5f2tqkVlea/e6lsM?=
 =?us-ascii?Q?ReyooI0PF4CTo2lf/35wKEyvHyc15zSrOYysryFLCxHJOE2byuXvgdQO7ZsC?=
 =?us-ascii?Q?wuiaL8d3ET3Zg93UngHMITu+AtaWir93Qswxi6O0ceN+LKVSk/Cs7ngnK4M6?=
 =?us-ascii?Q?Vq8jWYoywIztuEwnTVyfmHd5+Bzi2McbcXK51DCmBXcl50SCpve4VReh4hWi?=
 =?us-ascii?Q?jarJh3+6yKTZhitg9rxvGGjVXZdKUu6sCGo5Lm74Ds4M/4Q/W/bLKaXQxv9o?=
 =?us-ascii?Q?GaKIT2H/4PKWnl4zVub6gzfgmfYsQIjJ2Yud5xA+mtVQ2HV5vNgmJxDWyeNe?=
 =?us-ascii?Q?2Ho0pZdbGsdLd29jLfc9fCFtYimi8Qb22zomNLjap+a2DBvQLp8FMWNLNWDL?=
 =?us-ascii?Q?sx1vH9EaZjnGzaD66HsOkNUibHlMQLXY6q9DhSmQyZjCGWZGiMYfLWeGvY6V?=
 =?us-ascii?Q?kWIHdHSomK/Q38jGdf7Zhdg9y4CdeJmn/k5Kv2B2vMfcxCG3CMjA1ngjTpGn?=
 =?us-ascii?Q?9x0i23BfTPZNgnteu+lymgLtBAu/LLrQjB9PcIggIiFSklL5oig/kbTWXg/9?=
 =?us-ascii?Q?x0U5GHYCwMQQokscCOeIc0gdQv4uXMNEeEbQt+ur?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a952ae65-a01d-413e-43af-08ddd59718e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 09:45:09.0525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2kJtj+zPwz7bsPmEo1T90U8Y/HSSOdn4diF9Satqv7jI1xpduiVypRf0bYc06pkUBmW6JRCzMu8gp2jrP6sQSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6262
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


> Subject: [PATCH] drm/i915/scaler: Fix for WA_14011503117

We already have a commit with that name don't really want many commits with=
 the same subject

>=20
> Remove the redundant check statement.

The is statement is not redundant just wrong will need to fix the commit de=
scription

>=20
> v2: Add scaler_id check [Jani]
>=20
> Fixes: 73309ed9d598 ("drm/i915/display: WA_14011503117")
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> b/drivers/gpu/drm/i915/display/skl_scaler.c
> index cd7ebbeb9508..6891a0b00f41 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -960,7 +960,7 @@ void adl_scaler_ecc_unmask(const struct
> intel_crtc_state *crtc_state)
>  	const struct intel_crtc_scaler_state *scaler_state =3D
>  		&crtc_state->scaler_state;
>=20
> -	if (!scaler_state && scaler_state->scaler_id =3D=3D -1)
> +	if (scaler_state->scaler_id =3D=3D -1)

Hmm but what if scaler_state ends up being null now

This should have been scaler_state && scaler_state->scaler_id =3D=3D
Also please add people who had bought this issue up in cc to keep them in l=
oop in this case that would be Jani.
It's very easy to miss fixes like this in all the mails that end up getting=
 sent upstream more so if they are not cc'ed

Regards,
Suraj Kandpal
>  		return;
>=20
>  	intel_de_write_fw(display,
> --
> 2.25.1

