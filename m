Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A26D81216F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 23:29:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A3E310E86B;
	Wed, 13 Dec 2023 22:29:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B63FE10E86B
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 22:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702506584; x=1734042584;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cI3sKbhbrB714WV8fypJsBLm7NO6iwrn/oss6ZyOvUY=;
 b=jEsG6iMfvUkCBr75cplQ7mQPY4aXn1W6F5pp6qqWCELCKjYA9xtfMtKs
 w1N+XVlO50CVEjLFhRj6eQij7W/crB197iATJp5kc7nGBv/ykXElb+wmE
 lDKzAjV6poxly/irbLgRwzMywQVk5M03Muixq0MXR7pvafqPbCgdE7mrX
 0obIUELj16rjuQX+M9sDYqLzqB8cN1CofCBEu1LZ0kgWIalUOVuVhh+7/
 Qkr/4IZu3zqVPvAw8KnuL//IE5OJz2ukWIfIWgIE9m9wmdK8KmDef4yMH
 ROZBqWMifFGgH4lptOUVWeHeObEpuibPEWNdvlZY+GOjxbwfL8LJ4V6U7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="426168151"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="426168151"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 14:29:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="1105463095"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="1105463095"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 14:29:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 14:29:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 14:29:43 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 14:29:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S8a5K3jApATXJd3Oip4iaJE9jqpSLdUHWhHdyh92al6EaDyLrHbxbpK1deaGaAMgEmf42w/Sv3UUDMObCSxWTU6Pk0RC1OstGLur6vFxvo1eRWZ6VV3+z1vV6cfaJ3ad/a7vFeJ49N+14eI5W8F6hh7oNpj5fYqjPu67DJNGmqbZz80ny3Qs7phs7rA2OOUHcTIMeksfD1z8HOxA/1mRymWZTMYKn+SlBC0Xt+J4YVy1z2GKCxftw7JaUdtGilDqiKxPbGLB5/zJ5+5ToaKKouDg5YvxX27XlNKMnUd3udkH5D1r2f1upaLOOLyY0wbXYO5+wfdaGuUBZ468M6Iaxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vylb5xbCjK3Z8m4AVJCgggzbJxYCwGEAYNP1s2USIi4=;
 b=Sus9yJXOjHbBs7rd4CZ2xcCd0G8ovwOEud/TX2yxaLvPKbSygaLPeTNiStwILP6DQ4b51UToIjj5x5fjUh/Vs6I4IkPRZyGfFB1QB4yzsPwQPfVq7BPXCzHfcJ6z304+dh7UXt/1okuQ98gyY+kc8XAbr2KWQSCrWc2YmwR4xaYxe5zSZyXR1mUb6ex/wr1jMTeQgi4AhrAscFMc6JnmJfry9bxPHariK5NV76TP5uTCf8TbXIi1BG98D9634wXrG4+gs4Vk5U5LoR9Yg3EOOOrW+4WxGegQBUPKoFNmQxt3ZtILZj5sF6wLO8PJOargWRzye5/twgdyy5q7mfxX/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 MW5PR11MB5883.namprd11.prod.outlook.com (2603:10b6:303:19f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Wed, 13 Dec
 2023 22:29:38 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7091.022; Wed, 13 Dec 2023
 22:29:38 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/mtl: Fix HDMI/DP PLL clock selection
Thread-Topic: [PATCH] drm/i915/mtl: Fix HDMI/DP PLL clock selection
Thread-Index: AQHaLhCAatlMq1sPO0K3tY+YwVlkCbCnyDTA
Date: Wed, 13 Dec 2023 22:29:38 +0000
Message-ID: <DM4PR11MB59716E7EC4762799BD8C04AD878DA@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231213220526.1828827-1-imre.deak@intel.com>
In-Reply-To: <20231213220526.1828827-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|MW5PR11MB5883:EE_
x-ms-office365-filtering-correlation-id: bd03f20f-b33c-4259-5154-08dbfc2afe38
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t8YUnCl2YZ3aOZPr76ePvEeXrg8x+5znyyji8S3TN7S7gweTats0JxyYogMuV8gH5FgPcF0F4i0yjxPO6d0E+cMDEhF2rgVR4lBs+tOkMxcpEmujrtbAZRTJZtn28wSWyCe0ApxCeKDvZU9NeUGqgUujUuugDiut70MiEi/8X7TZx8iVYBdGm4C15uej5+jhh5LS8luqnoCd4/POOMxe+KJoDwzlIEU9mOIGrV8IbX3h0DYKOCr4XrTdxO7UFJrn5ZBVZYpmmxqSKQg1ft6NYKwr7tz/PbyODEUG9Zv/tCcVWuNk4GoNCyyRABTi+f3yCyogirwSJbqwuQMaGYa+b/XqMow4cwOpY/kQyOmGvGzjVAnL3MBw6fnyg/5cNA1U2xAMVnNYdDaQaV8Rk6qhhAz19O31TBQu2eVgyzhG/BRZq2CvP1tHBrIu5gp+VmjK4U2f6cExIMYFnz1Cp5kszB5acW3hasmqsJGIlwB1e3O43gbb4e7v6TVDVVHyM4Q+j/B/FzkKN6mQYoX3Duf/1aH2zkU9BtIupwBg9b/2OAiKiv4jtKt/8ld6Wey+jEtBHcjFK89itYZGqNl/G8yxIvu1FUnu3cfO5hWJ7yW4AIYQ0NK39mlqManr3KhSJy5A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(136003)(396003)(376002)(346002)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(4326008)(110136005)(316002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(122000001)(41300700001)(53546011)(9686003)(7696005)(6506007)(55016003)(5660300002)(478600001)(8936002)(52536014)(8676002)(71200400001)(83380400001)(33656002)(26005)(2906002)(107886003)(82960400001)(38070700009)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iDllXeV75I/JdaYZs6fCYFqwHzm7BPP4EChjBW18pMxdNtKwcUWRD62mute+?=
 =?us-ascii?Q?FiXphWwRx2DSSMUiyihcF35go3auUlzqO1Mp+PxSjnhtIMgm1o97p7qKFMWK?=
 =?us-ascii?Q?X4rE/4lCoD9AoWNBg8ImjacOawSZXKY+ie9a5nlG/hmX+XnLo+s7WBvlJJb2?=
 =?us-ascii?Q?8pTyP2J4ovI5HXt6+aNfmz5WzWVd1aFrJ0vwde6uf5X/k9v+ceBUEvFxA30+?=
 =?us-ascii?Q?czNkw+K6NOJ2uQybrInG6/fwl4G93pc54jL6jX3UYwbOAGq7T2qbDVxZdQqN?=
 =?us-ascii?Q?4gFk3jgPobphhuWqkHH91AvaSUQK7kZ0zPnf54prc3azlwwpOjCxSOSwuY3m?=
 =?us-ascii?Q?iDaraxyMLypKtNoeSZRGMA+JfgBRe2LoBtPzwAC7wHmgwP608hzKuEvWVJI4?=
 =?us-ascii?Q?0wEZx4T8ReQIryL4mz79FzXvHnSvCzXalP+vInfUkKUyWZyymayjvyxGWIBF?=
 =?us-ascii?Q?xAJNkq5iKWWLMKpUeOYnOCtx/TqqvKOaBFZNB6AxhAPimFygsbM+cVoIo6G4?=
 =?us-ascii?Q?DaFSQ+vgaeFR2YpUsbPG7v1ac+4NnyS00VVhPRxX8f/w+nguNrofh2BhAmwH?=
 =?us-ascii?Q?WILYw2Ij4QQDRQjlKfmAAcZhV9+2pDeLPD9FDL9mG6dR7g4zSKVgw3obmtrl?=
 =?us-ascii?Q?vB5HeM8wID/pKNIoU6OwLc3NgJsAnoGh/Umf8U86R//eqFwl6L3LoBkabrZi?=
 =?us-ascii?Q?ukDG0I7UPmJhRbSLusJMj7aEV8Xon8tQ8o9GJ12xgNEt8kp90iyCzEHsFQ6N?=
 =?us-ascii?Q?SgyhWL7i3vWI8ESKHo+LDES3Wg7dYLtxtPT/d6bIeHEEO4OKwUjORNw4JWmx?=
 =?us-ascii?Q?lt7EsUi1vf3niriLNc8cbGSC8QB/++478U3VdIzYqvc4MWq4JSQZOitr8z3d?=
 =?us-ascii?Q?YC4qS2ZJh04OZmxGx2uKo9SHTRr8wq9kJVlMgGWpqrep0gno7ej6zywOW99i?=
 =?us-ascii?Q?BDmRxiH1ealvPBn43vei4LQ2ZJ2wDyTwwZ79RnR9xTYyPFBvpyiNwJlaUzPI?=
 =?us-ascii?Q?cb+VgvJxhDpI2p/cn42iEzvBQPVXgj4R4tgdHZwAJtGOD6Ejau8M3EYz2yGc?=
 =?us-ascii?Q?x2zUBDMvGeWdmtP2Cfa4C5seUa26vQbmfpXR3dNhyILTPS7syUOZbY+gemd0?=
 =?us-ascii?Q?m9VW6V0RMguTZZpvZ9jigv9vF7elS32M7XFBS6uyPrp9vttQoXkjlMfEyRg7?=
 =?us-ascii?Q?GIShKujGYULMLK8k+ze14g3poMo36+FyUuflMgXxo+8R6LkiyTt3dgsyWIJH?=
 =?us-ascii?Q?NMTlqxrAv3gM39jKuowWqR4slvlEccz8p6ox8WgNigCIYiklZJk4odaxunlN?=
 =?us-ascii?Q?dRkD7YDO/YIEMKj4tsys5VFc/i2+D9jHybn20ZYRvilgx/U0EDE8xZeHjHCt?=
 =?us-ascii?Q?mrUat2WNnchMEpQJduZK7+ool5KrxIEIbR7VsBm9LcqtExEX6Z+2FBStvj/x?=
 =?us-ascii?Q?OaNQlmuxXt7mbE7+3D4D0lgAh0RF3wFbvwfwhgJSnJ9GJwh0jrUHgViqDVvb?=
 =?us-ascii?Q?KEpoMQXnqRwJx0xvBvFeyFo2XCjJsVpuW303iHi2K4T4v6yxeXLJq4CwV3UY?=
 =?us-ascii?Q?v80q8vvgL/GlrU7zc9RrGjKHfM13H1GV3K/nXnpAL988u3N8lTQzrEINsN4O?=
 =?us-ascii?Q?Wg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd03f20f-b33c-4259-5154-08dbfc2afe38
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2023 22:29:38.1886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7CGUYqvRPg1aB8zHnUWcoWp0SoZGR28U+YR1+h/51ugtLqCzEpYIQqKb2V74CYh7WxoGdQMRGFp8iCTyaXuGSWeRf+FkbTw0FLdWMplAKT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5883
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Wednesday, December 13, 2023 2:05 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kahola, Mika <mika.kahola@intel.com>; Sripada, Radhakrishna
> <radhakrishna.sripada@intel.com>
> Subject: [PATCH] drm/i915/mtl: Fix HDMI/DP PLL clock selection
>=20
> Select the HDMI specific PLL clock only for HDMI outputs.
>=20
> Fixes: 62618c7f117e ("drm/i915/mtl: C20 PLL programming")
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

LGTM,
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 4e6ea71ff6294..884a1da360893 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2468,7 +2468,8 @@ static void intel_program_port_clock_ctl(struct
> intel_encoder *encoder,
>=20
>  	val |=3D XELPDP_FORWARD_CLOCK_UNGATE;
>=20
> -	if (is_hdmi_frl(crtc_state->port_clock))
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> +	    is_hdmi_frl(crtc_state->port_clock))
>  		val |=3D
> XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
>  	else
>  		val |=3D
> XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
> --
> 2.39.2

