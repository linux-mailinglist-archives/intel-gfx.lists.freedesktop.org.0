Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD936F002F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 06:32:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B68E10E0B9;
	Thu, 27 Apr 2023 04:31:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65C3110E0B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 04:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682569917; x=1714105917;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Mp2pquCorGKSn8XOt3od2pHHWWLIkxLyjk8F/z7qZ5Q=;
 b=gocwfV8B8suF4QupnwSvXNeLOWYI9NmJLdKtuLg/NUtN/SqaG2AufSwh
 0UXzmUFAB/n2fINNpyrQFQKsFhKfkFjFwbSyAT/pLYL2XiZaQlGDmy3CV
 PbejDGCNRuXVDqvKcpRToLkqvzP1zqiAqf+OblrMMQUaela9KpnYW6y8o
 z3nknhJVb4WxHHBfRT9GjGRXa42ZfwMXoDgw1cLHO4DHH36aANW3l1ziu
 AYp3jusOM02hCGVXjBheAk/xwbjDV2uuloFX8Oo56/TKw+ShqPae9WdYd
 sKazHE0t981b9eVMkuEHSF6X/ONU7Yk3XR0uif9cK5FRi3Q8lAH8vjJLW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="344772708"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="344772708"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 21:31:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="940507650"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="940507650"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 26 Apr 2023 21:31:51 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 21:31:51 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 21:31:51 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 21:31:51 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 21:31:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WN2uXhcFjnWXL3Uv+6pb+lD+pg7oLQ4otQ0MIqehGX/su2qGBhOWX+Fp3ybF2DXj4+GXT1IvD7T4YnwWJlIY23wEuZ4vEbT9S7Os+uiZMa6nMY6TorInc1k8oQBkmk+ZoECnmlY0l7FloeV3GF3qsPlpUAo1cQNIQoK8LRuJZruQrsS5AcJdquILAkGl04RA8/Dw+CPL1pFcwRSNCMfhr6zWdn0EuRn7aD+K73apXFHBQAJn4So3qhRSk54zv4GeTLONjsmdVSXvJTmSZGsAvPJJx34b3h5N+w/KM+4ZrlgPIOrdkT33giIEIzSzY8WoGODsmBu+9oCAmzLU8H4kng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EBHRxJEGcQ06QQdaBCnZsrQghqUKJMcKtlEQv38S0VQ=;
 b=lvjF3x5s8fF6MjV8Z5joT9B6I7mrdMRHZ7AGSL2V7dn1pxepJVMgo6h4vs15Z5K/U5ePBvyPUjx3vIXRAH/IUfPo0Tb5V+W7+ynuuaKr5dkccM9Tt1bt0yvg71N6aPx7G9y4Q01L1fX5T0kREdHUyNWCmOlkxrrbaTfysXLEP33WGaLgRRVI5yyhuJss3dlPSQb5jwnPIS+1glj9bD16xg6nhh91bK2sMbqkUdsdVDeHhIMiYWrVsBwf2JM2GTBH9GXQH3B/Y7SyoqcezGgG+33Py7AyhLk31SuieAYvtso0d5/toCMA7GcWlMidUQsyFGEOG+FLYnKw8P5y6xnjaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 IA1PR11MB8197.namprd11.prod.outlook.com (2603:10b6:208:446::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.21; Thu, 27 Apr
 2023 04:31:49 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::674e:f:7352:d148]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::674e:f:7352:d148%7]) with mapi id 15.20.6340.021; Thu, 27 Apr 2023
 04:31:49 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 06/13] drm/i915/mtl: For DP2.0 10G and 20G
 rates use MPLLA
Thread-Index: AQHZc4Yvv/fpK+ZJdUWIghpA4fNrt68+msAw
Date: Thu, 27 Apr 2023 04:31:49 +0000
Message-ID: <DM6PR11MB31771E45B542423867465FEBBA6A9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-7-mika.kahola@intel.com>
In-Reply-To: <20230420124050.3617608-7-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|IA1PR11MB8197:EE_
x-ms-office365-filtering-correlation-id: 2a51f4fd-37ce-406a-dbd0-08db46d85157
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RGPGh/H3ehFSSUw+JGxFjOniwv/rNWhjnBeed682IC+Y9SHh67uvnsh8PKySNh3syeJP0dCAzG2LGGJLFquxP01tUKRNMXzjD0PXeN34J7H9eWiTj8z14fU7rbsutzelQ2J3f5UzZORrasJe/bo/uw64a8jXw1+WVkOSuEpI7AMNVQLVmYe7qasUEnehd4VIiQwe4FwcaQJTe46p2Q3gapHf2qLrD+W6yqodC5hxh7ruHmn978YSv4kS1PzQCKt75i0ZahZSf847znL45a4FrnnECsRl5lmazcsjWPn/YuUVdO4l4qv0BXzSSAiPlsLYQnqAZNgrQkDsVK5r+3uIys3muziqJEcqPVf81lwJLXMxLI80Y8hsG9mwgMW6k5FCEE0GH/ugJXfqYnxxdFc+42p+08eIPEoC5EAMg7gCCR/+OOBItQWHqqbGe3EzxOqTNMD3B8f29T1UOEgnWrT+EB2eqRCu0EMMp+p1DwPbRoZr/s/XK+PHBFQamkPICvt6SJ/gIcBIdLKGfSwzJOp+F5744lvU44mMd8/DmlQLAa4xCHEC+6p31uwBAvjd/40rg0261lJ9e1PCzdAzR+7Xsok+05BBgHXo7zq8S6t+FNNHsVxZfe5De91iZZXdDtOs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(136003)(39860400002)(396003)(346002)(451199021)(9686003)(6506007)(55236004)(53546011)(186003)(478600001)(33656002)(110136005)(7696005)(71200400001)(8936002)(5660300002)(52536014)(8676002)(2906002)(38070700005)(38100700002)(66946007)(82960400001)(64756008)(66476007)(66446008)(76116006)(66556008)(316002)(41300700001)(55016003)(122000001)(26005)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Nkj9Y8zoRTna2QqRkYNBfNU5ur+fEwG+5/HfNy5AnPEXbEt0MVCMGtnFFE78?=
 =?us-ascii?Q?4GIUCtM32HRjRfeEqNuMOdWw2utoz9bfDdJkmK3bTyn2ODNUn6UR+iKyiWHD?=
 =?us-ascii?Q?xPv3IACzfuyaQ2OmqKB9zp48yrsfvO8dRtOEtfUvsPJDjd6vI53NH/CaWCvI?=
 =?us-ascii?Q?4x0Q26/Z2n34xqOl0RYAzD523P99o8wc78Mt8ZCaxF8fAdvPA9Nej1XSbHbP?=
 =?us-ascii?Q?4VQGwa3vJAFs72bBtCxilTLV7rnglBl7nDBJg+oyQosZqvimpw2lyb0RJ/K3?=
 =?us-ascii?Q?MUJ1pmlwZoqUn6GInIiMydSCU1pmNA3E1OmuDD2TFqT+op1o5/8CUpyiN/qC?=
 =?us-ascii?Q?mYAk1P7Avpruymak6YahejO47PJfL7feYY5i6qkVWuFjvSDuXeOtCqDU5OsN?=
 =?us-ascii?Q?HGhq70dCQt6KAtQY5tXmvyCz4Vrkizj1+vNLfABSxKqaPR4KR0v990QV39XR?=
 =?us-ascii?Q?3QSE/qZFxWZkWbVk0uW5j4zuXV3P1V9M/4D1uPiN2mUpJXPCBeR1SEi0Hq6a?=
 =?us-ascii?Q?Y2CAUA6ahn5k6DqoAtwJDr/aU83iOUvXGjPDluHGExYUeMPP1cgBHTMIkR+e?=
 =?us-ascii?Q?+HgONIfokAYTLaiH/aAyFEHjGi/klVT8AY5o+KoX6jVAggtYG4sQQ+5G3e1f?=
 =?us-ascii?Q?gua7cPy8jZdlbqtUnjIsci3IQb+wVNnFQNu+ZZlbKGFM/jYnySmQ+5vIy8dt?=
 =?us-ascii?Q?EaHizt5Q6AZRuSYRlqoXUyPdFxzBBbNaHp0qRouLkT0/jKRGAjycxjTNG+0A?=
 =?us-ascii?Q?xdVWA+tTlo3aT+6AFywZ/fBuaHDWLZgGRT6RmgwcpiyPB6/FZhoagjVTwD9b?=
 =?us-ascii?Q?P9n56Yv+UzGEy4rnur8ucWMJ/XSpvIiAz7jCTMvUfLwAcb5+zp4VPy31wBPa?=
 =?us-ascii?Q?XiBI2N/38U/4zzzKw5jz47oTMd82ORGlt+xPEf/FbRT7lrBXEw9JOjCTtfJI?=
 =?us-ascii?Q?TnRuyZ84U8HoGoZ/a8xmnNI/Df75BOiXPc20pgj6lJ/nhTEocHhuqJ3OkqrB?=
 =?us-ascii?Q?XFII6QpsuraXS4JRavKg9+fQ6FlqbzyIvJEIQJt/LDKZTdFJWAuNhn7Lu/Qb?=
 =?us-ascii?Q?NQ17xggusgYCab+WVUbdIKtkiFwqLlZUe3fAiy55mXUhQHFzIUn86BQBCwf+?=
 =?us-ascii?Q?9b7tteICuQP3Pxhf/9ThifpFXF7FMGibt0jpoAyWiKXCGPoOTMT33czsPjKd?=
 =?us-ascii?Q?wGeru6TVkV5ezWkJ8fzbPLYIpwS5Tb/44VDlRv+gxIGH9TUltzKBtMwOlVEE?=
 =?us-ascii?Q?nPVgdlrLHDkFHcESKnvi2fzP0pv5tmW6c4N2MZ2JwyumRvlrHcBMq7seAUl/?=
 =?us-ascii?Q?uErUzhFjqZhiV/oYH5zzRxcOPHAGvWVHIxoh2lHop5kKmCTadjSIcPaFZD9X?=
 =?us-ascii?Q?GnKWhJJZ5AMruSubg8Tf0vrxfiZma0GEsZJqItiBNtC6VtJMMc9vlYc2ZWyz?=
 =?us-ascii?Q?M0dt6SVXRkI7acz+HtUDvMjTQ1Z+PuVShpCcFt+TJh+hmz5Ps1+pfTABd1jc?=
 =?us-ascii?Q?3b8qfuJ251QZwlawU8q0cvOvjuBdqxDTf6MDt4rv/wal5McOIJngywxG9mTL?=
 =?us-ascii?Q?hni5UXqBoOdD70p38UulPVP/Ox10MGZCeI+EbWIU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a51f4fd-37ce-406a-dbd0-08db46d85157
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2023 04:31:49.4434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3WDKySdcgYdvIRRoD6cvc9pX5dLjNLs187ye3A/X/7b4IWzI+ltOiUTote/qTv2cX0GfQNEgUHTzDqaXKVO5gQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8197
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915/mtl: For DP2.0 10G and 20G
 rates use MPLLA
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
ka
> Kahola
> Sent: Thursday, April 20, 2023 6:11 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 06/13] drm/i915/mtl: For DP2.0 10G and 20G ra=
tes
> use MPLLA
>=20
> Use MPLLA for DP2.0 rates 20G and 20G, when ssc is enabled.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f7720acaf58c..4231ba98f075 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2340,8 +2340,11 @@ static void intel_program_port_clock_ctl(struct
> intel_encoder *encoder,
>  		val |=3D
> XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
>=20
>  	/* TODO: HDMI FRL */
> -	/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
> -	val |=3D crtc_state->cx0pll_state.ssc_enabled ?
> XELPDP_SSC_ENABLE_PLLB : 0;
> +	/* DP2.0 10G and 20G rates enable MPLLA*/
> +	if (crtc_state->port_clock =3D=3D 1000000 || crtc_state->port_clock =3D=
=3D
> 2000000)
> +		val |=3D crtc_state->cx0pll_state.ssc_enabled ?
> XELPDP_SSC_ENABLE_PLLA : 0;
> +	else
> +		val |=3D crtc_state->cx0pll_state.ssc_enabled ?
> XELPDP_SSC_ENABLE_PLLB : 0;
>=20
>  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>  		     XELPDP_LANE1_PHY_CLOCK_SELECT |
> XELPDP_FORWARD_CLOCK_UNGATE |
> --
> 2.34.1

