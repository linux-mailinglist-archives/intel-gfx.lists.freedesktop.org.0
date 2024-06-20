Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B0790FBFB
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2024 06:36:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FE7210E1CB;
	Thu, 20 Jun 2024 04:36:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cHZpnjFw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CE3C10E1CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2024 04:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718858190; x=1750394190;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=V5pB8pYJw8O1RmLHfxDZbbxhypPlMEg+JBW1VbbHT3c=;
 b=cHZpnjFw2u0myEMvvT3VvL/Hq8oOgWwYipo0jBhR4WAcHbML+Gj0W3DN
 gaBTQlUA4duG24alMHyGp19g79HdpFCr7TpdHQmZquhKRliZvCuBsxW6U
 tBF0Z+mqrbXz9YpI6bHvKnRneI/Fi26i7R8KUpFtOmK+rIXQ6AJ4cfEQf
 uebG1/38K7vBmS6yjlGATzf1I2j4KKzWNbPkQVrKDwoE65mlBFKjhHHqM
 jaWjQ684L9REOoNHB/BbAapjGhSzZaPpCML/zQcuVfirxaz1eBSGTxn+A
 G3ZbcE+9CUoowqh/y9kqDyIKeQHslX/3ev7FilqBVmcfb8kMnfteBlCRx w==;
X-CSE-ConnectionGUID: hF1sIRC/QmedrE5x/2cwYg==
X-CSE-MsgGUID: yJVCmLVHT4G5s0lJn921cQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="12156961"
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="12156961"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 21:36:29 -0700
X-CSE-ConnectionGUID: SO9ufGMIQm6aowHQ4l+Ksg==
X-CSE-MsgGUID: Ef+3L4HxQLaQ2MTe/yyl6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="42068185"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jun 2024 21:36:29 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 21:36:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 19 Jun 2024 21:36:29 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 19 Jun 2024 21:36:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bq57kz1vm2XI5NUwaT9+Xslp65QIB6mEky9aUGKSrd37L2wqzvmGqCO6WZBO3neHmDL08OOjXJlF6pH6DkiWOKcoyLkhawPLMVkinsajDolpA656+Tg/BEUZ/m8eSqXRrU2hI9TaI/6ISIYgIqNuJd2cRAt5So8/naRz/huKT4OQmP/7MVFoKgQsSwYkjLiaNhMd0Rrt9+B8XMyA+DZ+yENr9EusqxV3lJuCeZbAgd+in6Q0A9YKsFvOFw3GLUVUAkgcuT6+aS0nT4pGm4ThBX+JcWLt9vq0lBV1S2q9M4eoEixHC5cW9E4fedtnd9dLIFYl3PMWwVjv6JVZt7KoZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RsSVADonVQw05ylNjxi43ubnAJY/FWZP5PYR6cIMYXM=;
 b=DQPfcvd2lVM6K7KrLbyPGrPdp1bl4Q/n0sJWVdMsHfV3XpX0C5zkWQeOiREHoeBTtTb5q4zd302tjtG89VUIY9OFddIs/+M/m6D8DajuZPImYCTZ5ebjgvN5EiMd9vDcwEF3T0kkZADjKBhmP/5z7NdDA38mqWOw8sBEdJ5c6BCfXNwNCALyT8sQLg4HtK8GvdSsMhPgwlt2yXPkyEDZPHnCj2Y+Bpi1g3gun9tCTRoV+EuPB85Y7DcVL66gkZ6Wi41rS1sgVT7ZTzZB04hgNcb2JaKFuge6AbgnPMiODTktUJn8NKk/24XSeYODfjaBiL79f7+WjYE4KNcAXYDgvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by LV2PR11MB6070.namprd11.prod.outlook.com (2603:10b6:408:179::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Thu, 20 Jun
 2024 04:36:25 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%5]) with mapi id 15.20.7698.017; Thu, 20 Jun 2024
 04:36:25 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3] drm/i915/display: WA for Re-initialize dispcnlunitt1
 xosc clock
Thread-Topic: [PATCH v3] drm/i915/display: WA for Re-initialize dispcnlunitt1
 xosc clock
Thread-Index: AQHawjTPRO9axZw5cU6aYkuKH7svsbHQEUNQ
Date: Thu, 20 Jun 2024 04:36:24 +0000
Message-ID: <IA1PR11MB6467CD43E3FF6D50E2775B99E3C82@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20240619103803.865289-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240619103803.865289-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|LV2PR11MB6070:EE_
x-ms-office365-filtering-correlation-id: 0a4373f0-4f29-4e79-9f34-08dc90e28b14
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|376011|1800799021|366013|38070700015;
x-microsoft-antispam-message-info: =?us-ascii?Q?c8Lo4VF49ELEdsf2G09cjYlFtaRQThJKd8PvFypBAI4SO7D0Z6YPAYYEIq1y?=
 =?us-ascii?Q?XHPajOeIu1fPBCLL3lug76sHdAfX4AYl787rU8BeyoyUPnwQUpOMBaWdxJd8?=
 =?us-ascii?Q?Ptviipe+N6pkXfMQ3lTJEFkEHBA1+qxgIbn+qybfehdBcGO7YVU6srZfCLBg?=
 =?us-ascii?Q?mU1UFXypwmyu4iBerZA3oF3G8Mx0oTWuG3/SmiBfJbjnpKfm7RSdQyHodp2o?=
 =?us-ascii?Q?l+STMhpGnlMHtiQuUhSncV03UXxAtmoAXx5dmrYtU/wv3qcGZh2TcM3+OJzy?=
 =?us-ascii?Q?yhAmQkUudY5I4gOclWRZuuEPbF08NraHQjFBdnz/66vNULd0bhV/mKin1/gR?=
 =?us-ascii?Q?OhpPox3T1CJvt4LjDCiSTJLq/MVWl/9a4J1IuMGWJE2OkDalWdr5+/NgUOQf?=
 =?us-ascii?Q?G2aIHjIDFbKd7xBSUeF6YyHk45y5hFLLFLsgwtkKDEP9sCRN7ih5Uyd9Vft0?=
 =?us-ascii?Q?Z6ZUEQ3HKZMaPq24uTDqentkREQhsBVNDTiVv9oRK/xRgjLxhddWpc2I54p1?=
 =?us-ascii?Q?x78p0QDCesNnyOSUnUz7KseIocVJ2kUNrdq2M1W/Z/CAbKf1pWExi1mLYxa6?=
 =?us-ascii?Q?sc7xuyHU+Po/3tqVlU4impkSCt3sogS6TC7TXQM5zCevQLSVlbTakdFetIZm?=
 =?us-ascii?Q?QRqTEaTOrsmn5W914d4WGOvVv7mX2VhQuGuAKIinWR27X+PEoWAfOTtB6XGn?=
 =?us-ascii?Q?D8CrnpJJfu5dGBsLkf6z9h8PkvfFQDkYVBUKc8c2BmUXYeuErpJqsEezH0xO?=
 =?us-ascii?Q?lElGMd5vdfEphqk7yJUAxDaF7E8lPWWcMZcYCxeqigvAjNN8CUK8coF/xRnw?=
 =?us-ascii?Q?1dQ2a1G415hJqplqsRPr8RWvD8Ti621TFlc3rD4667zgYbrNOCBj9sQwdeoA?=
 =?us-ascii?Q?XjQmwvcYw9pOPrekyqNGPExq4+ZSXWEsjLXXPs67BUutpndrTE19wWW6BseW?=
 =?us-ascii?Q?Day6tFmcr8dkVND7C9sbvGAaA/4GtplD98pZChi5+5wzBxbiedcXC7t1BcU8?=
 =?us-ascii?Q?zPkBpUj6SJ1lKuScIiaqXCqUD2BaSzQkK0YpIfMBOrta8wlFRhNlQbJQ6zct?=
 =?us-ascii?Q?55LFSoSq2W5hCRKp4TAKD4gSNCspX00LVAE3k2Oa0LVoplC7KfAhnSRbvwV3?=
 =?us-ascii?Q?KXQm/ZSMgCTEXRpM9fWIdt2TiOncErmdQxcb3KYeWGRJq8FHMQtabzIwoOxO?=
 =?us-ascii?Q?zobhksbBrJkYmXLaW7H7ca7kGeJxRvGW24u71uhVBntDDJdvVT103Nugcdjj?=
 =?us-ascii?Q?O1kzW44bVAoALqpcobJR+YYptBH8nNb0kDHazjNqjM1orVJalmQborSbUcuE?=
 =?us-ascii?Q?F0fr6CrZCuwfEC5fQYtQeoUmOuLgD43m0wYTd2pHa2td/D2ZY7Hy2b1a4jnL?=
 =?us-ascii?Q?PoBhi+g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iV5QIWAcU1sumQz2kH5bq8stCKWjtNgPH+NGIsbnQV7KlkfM4Qy7FplvOqKn?=
 =?us-ascii?Q?2BRKGdvXmAaYM1Nn5zHDlle8XgJgDD7FqU6rnjDi+bpaLcOs5GQXFUxIQRGu?=
 =?us-ascii?Q?9qXaoS0MlTRowTclVCVI+AgFOUoVbrfoQ4oCepsU4CJJs2K128LAfI5YcK5Z?=
 =?us-ascii?Q?wUUvqpoVXuiwyK71dHJAc849BktNW2EQ6G/c82CYVe1zibRL9GqSmh06jpB9?=
 =?us-ascii?Q?lqOeMfO6055zvLdSvOoVBkhPPitJcI/C3WuljGo4qYkfoVWsmLnW8Lbf4CQc?=
 =?us-ascii?Q?jUUYJUVX1MGyw4J1aNwiZ4oj4y4u/KkyPQKBrg3xUBLivmO04vBeSypXhAdH?=
 =?us-ascii?Q?xlLEYQJqDIaA+iOKol0/rOcwNEYyke+wBBlvkzY/yV1lOvGo3fxaSERJkbis?=
 =?us-ascii?Q?yMeKVKQNbUtrl6HOZVlHXYeJIou0ea8ec6O2kKAXUPZ8Va8e4RI6n49OT1hk?=
 =?us-ascii?Q?BPJ0SZuZ/BLMrU6FaoxbUSL7UFRy/JXxPMmIWJrTLOOgPclam5/npNhaP7mq?=
 =?us-ascii?Q?SZ8z8ZBqFt8J+nX5j6rClhwzL5wCkpYiCMK0mucjbsWODQw7dXCG0T7UBjMi?=
 =?us-ascii?Q?Qfk2aVHbTemu+OFxPeWdTY9PvgbZs+1qCQjprxCWKaSd8/k8PTdNhzpddshM?=
 =?us-ascii?Q?LBTaRTAWuX4RTgdawHRIWviiGK7h4ePkuDn8kPtVDGChojrIVtA86MBJijVU?=
 =?us-ascii?Q?IygvSSfWBY5/xGCE5aJdf3reaE/Paa1l82Ys3Aa+6YFtBMxzOenmW4EGINkw?=
 =?us-ascii?Q?vmk9DSFTx5DansmwNYBIcIZSMLdBr2giQlQyWUZWmKlqDwdwgqkWaToFPB6X?=
 =?us-ascii?Q?v+MHlaZ9ka/6+VZKTLKINNYHuwPUFUT73l4pQ+/Yyqj0en02iEzeyyZG2Iuk?=
 =?us-ascii?Q?X16e0oIEeDH2EcjsmB0O1Y7FWCULPiglIW/UYd4hiZJTLnnnzZ3gix/07XUA?=
 =?us-ascii?Q?lZzxaegFwwtq2HRYNterTHyX4XPlhvRUW91+uP8sgF+1JhTaA2/J5OugNJXw?=
 =?us-ascii?Q?h+xnV5OQz3hSVsfqgockELSpejNsvcjklmAzfESyw+p0y7CByjvhTloDDyXp?=
 =?us-ascii?Q?RBZ6wbC92vdFL5xSgRFw4H5TSoFBAjRExczPNUj8AYTy3A5ATo0gZXxowJIp?=
 =?us-ascii?Q?oaiqRjAlVJG7pT2k1b3zS5S2e2mspQwUEfgpheaaWoNKAG/qK+NtMi5PF7Of?=
 =?us-ascii?Q?zQhArNyx4jMNPUAVRMyuw9p0y7JWCHLndznciMt581tjwnuGJXnnynSvbsj1?=
 =?us-ascii?Q?LV7xui1FDk06+mnam0UUfZap+OyM3HSfBfmXBJpkaTk/U348HrNajbFHPKpm?=
 =?us-ascii?Q?pTIwtcKd1+EghmSoB3ZFk4OYbOJ7kuIq1yeDxn19PN9ijVM5ORnlcWIvUD7c?=
 =?us-ascii?Q?DBg4rzgRzlms2DGyGgDLIo4S9HgDtfQuTZ7H9D7lPB3S+VWS71++wbytgZD0?=
 =?us-ascii?Q?nUBC5kzYrQNH4/5KrYAlnaHyGFsgxi54i8IasOAE/F4e4PtlwXatTFyixWhU?=
 =?us-ascii?Q?syxakktU//EArUyby1EY9fTT1nUOnMTNsq5I554751YtB4c8maw7i8tRfSP4?=
 =?us-ascii?Q?9Ox/oNsg2wCXP4fWdnZ1v9ql0NZzds5aQHIfFFlt?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a4373f0-4f29-4e79-9f34-08dc90e28b14
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2024 04:36:24.9752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RmS9La17da+KQ2T2hFcmo0MVl2jD8VawfIkI1NOpXY6Aj/cR4W7gs1HMTdlfDlXIz1+lBsj46TbvZtyuE95aww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6070
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Wednesday, June 19, 2024 4:08 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH v3] drm/i915/display: WA for Re-initialize dispcnlunitt1 =
xosc clock
>=20
> The dispcnlunit1_cp_xosc_clk should be de-asserted in display off and onl=
y
> asserted in display on. But during observation it found clk remains activ=
e in display
> OFF. As workaround, Display driver shall execute set-reset sequence at th=
e end of
> the Initialize Sequence.
>=20
> Wa_15013987218
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index e288a1b21d7e..aef54c1a2ba9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1704,6 +1704,14 @@ static void icl_display_core_init(struct
> drm_i915_private *dev_priv,
>  	/* Wa_14011503030:xelpd */
>  	if (DISPLAY_VER(dev_priv) =3D=3D 13)
>  		intel_de_write(dev_priv, XELPD_DISPLAY_ERR_FATAL_MASK,
> ~0);
> +
> +	/* Wa_15013987218 */
> +	if (DISPLAY_VER(dev_priv) =3D=3D 20) {
> +		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D,
> +			       PCH_GMBUSUNIT_CLOCK_GATE_DISABLE);

Nit:  we can replace the above statement with this intel_de_rmw(dev_priv, S=
OUTH_DSPCLK_GATE_D, 0, PCH_GMBUSUNIT_CLOCK_GATE_DISABLE) so that code consi=
stency can be maintained in the code block.
otherwise LGTM.

> +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
> +			     PCH_GMBUSUNIT_CLOCK_GATE_DISABLE, 0);
> +	}
>  }
>=20
>  static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
> --
> 2.45.2

