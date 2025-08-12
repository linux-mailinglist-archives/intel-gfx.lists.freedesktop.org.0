Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E956B21BB8
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 05:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A441F10E323;
	Tue, 12 Aug 2025 03:43:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KQQg+SMM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9CDB10E320;
 Tue, 12 Aug 2025 03:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754970182; x=1786506182;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VBuLPw7G7HNGMMEA+rqfF78XcxLnR5fv+a52VBazWu4=;
 b=KQQg+SMMRE3hZ7jvo+KjciJXxXaLpLhvmNzyVaZrpDpvzZMTEZOl1RvR
 v0P2+cVF6YacVGEi41lnnOgh8GmL66AfjBY8rqtbCmAB6gnANjQKqR2Q1
 zqREWTMvlyyqNxF4KPxPFsjXxSY2Mjqt9F1T4HkyH8xD5U4tuhoQ0YNKC
 eKHyTlWC9jnINQU4ORIV2vOQe6RvQARaILOCa7a3gdKACosaP+bSKDOgl
 uEaku0YeHNUgm3Nc1C6KaZwRNhJIRtQpbgTAOYxDBmPLsSz08p/83eg55
 QMWP04Oxj55efhqG2ZwouErYHawgcEAwsiA0cdH5Xd3D3JzabZuk5ce2F w==;
X-CSE-ConnectionGUID: YDYjI9qKSQaLfvylmvIIEA==
X-CSE-MsgGUID: 2m5hQ32BS0WpqtkuxLqXBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="57358187"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="57358187"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 20:43:01 -0700
X-CSE-ConnectionGUID: l7Ull4UzS8CbBDlCHfX49A==
X-CSE-MsgGUID: w8NdOa8FTMWA4OCTtl1kUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="170528172"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 20:43:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 20:43:01 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 20:43:01 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.62)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 11 Aug 2025 20:43:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CaqHRPF+uvu9FgrYCzHkbI5qushbMHMNuIy2fI6nBf4ws+B9rU6u7CImSgMd3ocEjgnbiq5UAJi2o0kMrpeMfL5vKa7EzrBkAx3VuO/tcdygRNVmBfwAhNRdcGVTH9/WWXUz46Tmnvyq33KabqW2p2OsrYcBc7w4LFK0hbgTmr5TxcoYJxUEmf+kfQ4TSJirSf1PfAZbDasVzENryDXpJzBR2+Jo46I1rezeBMmkJBn8LxDSXFUjaDntP4sCaujNltGcYq3wJ4apB1+D0d3kkOTTDDhvpCkSbQLVR4aDRAlB2mSSjL9VtCGUDLL3F75gitgVh3et52MTMvDB3eqHEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cVkLkGqTXaGNZ7Bx4KHDTGL/CoRdIxZ+ZIeAVe6KO6Y=;
 b=hIRutTaCygc8NVkYS2CGx5p3xbqmwIHACpAVnxJUtr7SitjSSW12oKJB19kUlCfAq/H8T6zZ7hft4KD9kw0lwg1Zgm1x5xrU2fldNygA4aRETxUmgW69mM3/Pn6u8jzgun1n/EH3r52RU21SOh60oUPZ0eB320ttr7MKgsAkR/sigd9h4fIXTY+kAQn2ptwls2AgQkU+VJBMybJHp3aSYvLiRRLvKr2ektom9VUwJoKQ8AvNW55UKy4K+k8rCvLsXOVQPaE+1hOl0nPbju+k8MITlCUT+sZ4DiEbCo0ATLf+s/ZBfN+y3NdEpUbUIsndIkic/V0PoZFpfOyGwK/XqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB5871.namprd11.prod.outlook.com
 (2603:10b6:303:188::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Tue, 12 Aug
 2025 03:42:59 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01%5]) with mapi id 15.20.9009.018; Tue, 12 Aug 2025
 03:42:59 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 3/4] drm/i915/vbt: flip bta_enabled to bta_disable
Thread-Topic: [PATCH 3/4] drm/i915/vbt: flip bta_enabled to bta_disable
Thread-Index: AQHcCtRT6XwyA5gHbUymunDxfEK6jbReYJQg
Date: Tue, 12 Aug 2025 03:42:58 +0000
Message-ID: <DM3PPF208195D8DF6BB9CE2817DCA535DC7E32BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <cover.1754925923.git.jani.nikula@intel.com>
 <180079eca346edc1671c164da2ca7f428c2ba1de.1754925923.git.jani.nikula@intel.com>
In-Reply-To: <180079eca346edc1671c164da2ca7f428c2ba1de.1754925923.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB5871:EE_
x-ms-office365-filtering-correlation-id: 3994e6a8-98e5-4b8f-2e33-08ddd95254d1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?5WELiyeMaHaITlA033BtmJPv/m62wfjr8OPlCFOad4ouKFXprOhxy5esxZGr?=
 =?us-ascii?Q?iig4Z8L2gK9XAJj9XQX/VtKxX+GdrJyig25W6V9/P6lHeexq4dvchr8Q/KQi?=
 =?us-ascii?Q?xeqxklOvBqiT4GMvEaEtVKWbNMyy7N4AJkGpQSROplrNQJylAPWoPgMio6/0?=
 =?us-ascii?Q?/66pCAJwliRxhvIvbw7QmjMK223X+G5ri/Lw2tSTwKjCgYoe5bOxn8LUTx2K?=
 =?us-ascii?Q?iNZaj81X680R5dryt9JQ7OPwyoHifD2HS3nn45R/o3lJ2v9zL9a1a0i7Aw2M?=
 =?us-ascii?Q?oiq5YlshOwfW7aged1q1WRizMLCduTifk0uGD1nP/xrAKph7E0uYV4NLkdzW?=
 =?us-ascii?Q?+NAod82uFNm26dFu/pmkIc00Vz1SoodxwtLkptEen+OEdtxBwmK2rEKxG97F?=
 =?us-ascii?Q?9axS33AagTBOgmlXC0umAxvcyXDjglt5csXofJriPVL8VuGdbx0v5KjI2KRG?=
 =?us-ascii?Q?TP5mTf2g/tSy075lkgqwmZVZ5ncozJgSzGIwcWEYck/2ij8o78Sxyu3c25BY?=
 =?us-ascii?Q?fdP0nm0uzd5GYBxFtJop7pVLjI7PaBnnTI3C0jREasebIqNRtYEiyxnxqwRC?=
 =?us-ascii?Q?7A+HmAb3ZwbosMB82CaTdMpZPyXL8FxQEa+W4XL5gkBJdiILInwtrPldEK0X?=
 =?us-ascii?Q?0HJifEdXGDiesXzUJs3hQmdlfZ1pggh4fwxLh11TFmIStuInkauzN8m1lXi6?=
 =?us-ascii?Q?g7j9FeEWpLIjUV9GylBjpU8cz3g1kFuhok5FdVMhztZ0n6YSJz2eAvGfU/MK?=
 =?us-ascii?Q?OV2uQ12q3vLocOtrC1/SShJzo4yk/z9W90W+7yTMxISe83TTGypZ3KecJ4AD?=
 =?us-ascii?Q?050KrcCXUHpPyhX5dcCWoNst462/4Iac3r+kWgOtc3zU0f3tD2xTWaNMzAUf?=
 =?us-ascii?Q?CPOBkZ3hvHf2h7613xByWc5mw6KAd3t4iMMXD2SVMdjAQWJa2Ca0ZiupWpSb?=
 =?us-ascii?Q?z4mo5YgnnFf9tv9gMEG0aoTKeSRxA8XPx5c8vBPPTcrcqvfPJYxpdzzb4AFo?=
 =?us-ascii?Q?9vufZ/ev3Q+CsPB1LvEcAHO9bYGlGrTacxs9e5DQTSJkj4802jTvNc5LDg/l?=
 =?us-ascii?Q?1T9WxLDWz4acPGyWjHfQkUdtMPHlFzzT2FI3PygPDeDHCb76wBRENZnOzs32?=
 =?us-ascii?Q?78cFGeyr3Az1rJa/uKkRUqLRkweQIGuPyQVqrDzxjLxja+SW/+rd5ll8ju3H?=
 =?us-ascii?Q?ysXvH5Ugg0Lu3EPYlH7w0X2DHi+vlRNVnY6ImKLQMRRra62VO5Bzds9yUyb8?=
 =?us-ascii?Q?wYFpQdduR+XfStuy5VczShdq3tLkoXtf3L1pSAZyx2PMDZjtf+tddYnyTEOo?=
 =?us-ascii?Q?oFqcAJlkGW6ZlcZBU+9MBTjVzHi7r8vuCboidaC65RTzi5AhwambT/aiEsca?=
 =?us-ascii?Q?Mf2OyStKA4ZK1yh3TEA5s/47r/WWVaxR4oSWOTfyi9UWleqHscscHAUPlXdf?=
 =?us-ascii?Q?BzChPc+xIq0ge0dBpxqEsKQvgwSW8chPhv5lICI87w11gxCysnlVE8tc8mRb?=
 =?us-ascii?Q?3WDdoqD4oC2THeM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Bs5Lsw+d95+gpTVIIhzga96hquP3Qi7cGiCmp3qax5TvHv5Zpydn45M5lIS0?=
 =?us-ascii?Q?9uCNw2oZigMZZTWeSMa9iQuj6XB3fphwjNIdDkQuGmD3VPOPh7tfLKgsFwK6?=
 =?us-ascii?Q?fqNAIIOorkjeKMIrExPnODwy6EkVRNLoJGQ1QqUsgGBchUWaiNCf/j+OaucP?=
 =?us-ascii?Q?l/QFUD9JeJigdGOUJuLfSfQoWqGE6ObiK/8qKn/ziD5HFHMYe03iOIu9/A/V?=
 =?us-ascii?Q?jP6AySx4/P5UypoCE+tuz5YdqXfQcX7XJdmG7JZe7m0qZCyVbIxfPN1zActv?=
 =?us-ascii?Q?iAkVy3K+bZCF4XWQIzNnB1KQfppyMNnb3EVkmidAUjthqx3QUdazcKwkUj3n?=
 =?us-ascii?Q?pgQK2xxp+JoQQI+bNeI8HupUhDWEb5Qby7AsdKkkFLNgHRjoNrr5IBPkmZ1k?=
 =?us-ascii?Q?DSeXX5MwkZLUAPXTO5LVgyBOJldLgnHZxfd8o8oXna262fjgk8SnxZNVSkb6?=
 =?us-ascii?Q?d8ZoWBUktBqngSSKKN/Ayz6/4oIdrcFY8jrWXE3qjXkC3Msdp6/eIQdn363p?=
 =?us-ascii?Q?bDLoaKkB2e+MoqGP/M+nv8YwZ4Hj84s/Yqw9afgVujc8BRvRkL+6p8+kIA0h?=
 =?us-ascii?Q?II6bkBkMg3MqEmqn3hyNwetavZrT9MPqJmALLW31eeB/Cg3trAhXhmk8J2Wk?=
 =?us-ascii?Q?BOI38G+cfMfOCo5xWpoYTU3wHYzG+JDZQsutPwmbk+1nmNW/F+8M7tbeCpeC?=
 =?us-ascii?Q?i9qShzl35kQWZYa4kYEam9nr5KQxNbh8Nt8St64z9PaRwld450A8OxsPrV69?=
 =?us-ascii?Q?Pe3HlrwdF5mWqf4hdRVXZtyC6DadbjWpXru9m9f/tEHRI0dWtvXtlj0tvvyc?=
 =?us-ascii?Q?K6grFfuSGG1O54Jz5Mbotk/kf2uxh4TVhtf+yxojbjvziIQEPE4mvpCsRX9g?=
 =?us-ascii?Q?5+WYiEjwVzfHp80jjl/sXbf0DKQnypNVv1cPTZgCWkPBLwUOS2jkIs/z58Xj?=
 =?us-ascii?Q?EDng62QjgFvUY8ih8TuqWy83wzxc17Oa2izj6m+sq5aQd2y0Tvl2tQW5xhhh?=
 =?us-ascii?Q?L7Goy2GsD03qMxybj/fKc4/OvXnYzun4+CE6/Bf2FGfD5osAP6xC1HZBE0lh?=
 =?us-ascii?Q?r14/U6qsaDtRMVyo/Bm+5PvDrJSCSihswEMPUxgB5bXG5ofP1gwWVazxzSKn?=
 =?us-ascii?Q?7GD+qNBVMYvHMQGxVEvN74YZBMgH/szuMjwmGYvg3wNTVZDa87EtAFc4FfKt?=
 =?us-ascii?Q?ceyVmEVPKTT7bDtyCFmRhJK7aVUiaVEYk71/Xk3N31/Qyk9LVF0tmY+7T8Yz?=
 =?us-ascii?Q?nBbNGOsiZ+w423/5HIYng2O63r9rfFsGSywdeqVs+faNM9uo3W6YoMm2ky/J?=
 =?us-ascii?Q?jadKqs605rG0nfyDjHxqU/k2wcYRd3FXu+7GvKZ/Igmt1PfAdYiPeSeeo7g1?=
 =?us-ascii?Q?4H5ITyxaTc8Qy9qJXsgxyu8zc4hAYhBzZBKpZFOWsx+53ved42SBeewdGC75?=
 =?us-ascii?Q?Mcvc81loZtFb+Coh1p1w7zykuKURjlpoZfhQ8dafCRzt84oTkXL8r6A4barJ?=
 =?us-ascii?Q?eME9JBqm/8Hh2XBpj4UtmH69T9Q6OQfdmU1z081wUfrHdKUFv+i33EjNTlwE?=
 =?us-ascii?Q?JJrhqvj9IgysKMqEI0oixk8+TibjYFPl6y8r9ggc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3994e6a8-98e5-4b8f-2e33-08ddd95254d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2025 03:42:58.9710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6hJg+AyNf9Z3JWRaZoJJBD+8ScL339YNb4LCT7jpfQpOaXhOvhqgfwlKxmiLhi4M0HAe3lylmN7XxRwugTPhZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5871
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

> Subject: [PATCH 3/4] drm/i915/vbt: flip bta_enabled to bta_disable
>=20
> The meaning is disable, so flip the member name.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index e6a851d276f8..23402408e172 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -777,7 +777,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, =
u16
> panel_id)
>  	intel_dsi->init_count =3D mipi_config->master_init_timer;
>  	intel_dsi->bw_timer =3D mipi_config->dbi_bw_timer;
>  	intel_dsi->video_frmt_cfg_bits =3D
> -		mipi_config->bta_enabled ? DISABLE_VIDEO_BTA : 0;
> +		mipi_config->bta_disable ? DISABLE_VIDEO_BTA : 0;
>  	intel_dsi->bgr_enabled =3D mipi_config->rgb_flip;
>=20
>  	/* Starting point, adjusted depending on dual link and burst mode */
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
> b/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
> index 7ac872dbba8d..3f9b9ed6592c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
> @@ -76,7 +76,7 @@ struct mipi_config {
>  #define ENABLE_ROTATION_180	0x2
>  #define ENABLE_ROTATION_270	0x3
>  		u32 rotation:2;
> -		u32 bta_enabled:1;
> +		u32 bta_disable:1;
>  		u32 rsvd2:15;
>  	} __packed;
>=20
> --
> 2.47.2

