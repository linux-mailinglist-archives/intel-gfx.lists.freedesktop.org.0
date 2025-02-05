Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E403DA286E1
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 10:45:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A80510E166;
	Wed,  5 Feb 2025 09:45:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MHEGV8r7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC63010E166;
 Wed,  5 Feb 2025 09:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738748719; x=1770284719;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wRKTc2L3epHgVnfdTEBzAp9wyrFiWHu1dGo2rtkCRno=;
 b=MHEGV8r7egKtsYwB/ZFlPYykzOKMUd6fuTFecSDqXbArvqSBYo/WTTq6
 7gwRwAnCraGSfdwdB7T4AsSz6+PiCp06A599iHriRJuRjYYjsV0xCrkqX
 H4tuaCbx+oKT+Hn2oFgRUO3RNV9Ia1ufTguLj5YxU2D4IViP/po9eQZN2
 AU3xl3TsmD4xW67Uh6kd+bmmfNG/RQrQfra2NiBm784uXH7xoY2Cy2hoh
 ttEDbJsn0cPJuOjRVFM+fKKHvC5T+Gv01nFICbv2y2sEQvRyyzJXD+4VK
 YYLttPCe+8vcfu8NxQAfhzr2lzkh0JFrTp0fjYk9XfRk3cWfFCp0kAt93 Q==;
X-CSE-ConnectionGUID: ZHt4Zcr5SfuTGiTybWZuTg==
X-CSE-MsgGUID: 89LMosZOR6KfQja3XHUliA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="64665054"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="64665054"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 01:45:17 -0800
X-CSE-ConnectionGUID: EJee4wJ5T0O1cmoJ/2nwrg==
X-CSE-MsgGUID: 71o1DarMTXeAyccfEjV32A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="111434215"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 01:44:44 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 01:44:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 01:44:43 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 01:44:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gqn/2baRWYbtHATzNP542eWFhNx+Mu4K/urPvskiu31UM9xukyIDvVZrQClPZQFLnygG8liXH5P9UQicm95+G7RBbZAvvft23jCkcheWdKTnS/c6LF2ohQg6xiCP5aGT1jUm3eqFt+f5jM/ScuMLxGtXAigwsbcW2MG0hlAMaGtUxoXTbzfwkR2/w6zZzSCzvAwtMxtqgr65QrZY8uOn2hXRqr65XicxhOgo6LUiClgYRAw+q3uRZe3egAuiFU83tP0fquhdps20co4jW8XaQr+vq2YZx2BO1GumRo69aLfJT5SMQ3tYh4piFVMbOrFok6izigXircAe7g/FcOrTIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LGa9KlOdRpr5zJrYiVY4JfCi+M8vpSnyIgT/uo2RdTs=;
 b=B/nEgbsGtmnCyK8xRw18wu9RZXosz0mYkjMbaGT0UVZzyE8V1MtF1gZOfuFftCyY8dXkxemGj+5XH2eosSGxQLIP3uEWcgGIFsLw3rC0Ssh2BMAlXzacXrTaz/xB8ybAlQ2nQKbMyIjm9J7VZ6GQDHO5taCaton6UC5KOjICDi/Bqb3WtalQZL+UlMIuMO6eb0ZEIxvx6eMONu6PK977vNmAO3cnKTEHmJSn1cO69oqILKlv2sBWFElSwIm4jvOWt1juLTPWB90BN4tD/9eic8jWbQJ08QQng9/sneTd5CpPt9Y2uaazAQ2C6h3sTXUfCHektTOW2TZ/D+muP2eaSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA2PR11MB4953.namprd11.prod.outlook.com (2603:10b6:806:117::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Wed, 5 Feb
 2025 09:43:57 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8422.010; Wed, 5 Feb 2025
 09:43:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Reddy Guddati, Santhosh"
 <santhosh.reddy.guddati@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: RE: [PATCH v6 2/7] drm/i915/xe3: introduce HAS_FBC_DIRTY_RECT() for
 FBC dirty rect support
Thread-Topic: [PATCH v6 2/7] drm/i915/xe3: introduce HAS_FBC_DIRTY_RECT() for
 FBC dirty rect support
Thread-Index: AQHbc1ob2Smclj0NSEKaZLzwy6+lLbM4fg9A
Date: Wed, 5 Feb 2025 09:43:57 +0000
Message-ID: <SN7PR11MB67505159D696CC950D7006C7E3F72@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250130210027.591927-1-vinod.govindapillai@intel.com>
 <20250130210027.591927-3-vinod.govindapillai@intel.com>
In-Reply-To: <20250130210027.591927-3-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA2PR11MB4953:EE_
x-ms-office365-filtering-correlation-id: 770c9162-1dc9-4f1e-b4e7-08dd45c99cbe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?iTZt2cADXoCxubI531730kkxqyTfROeorpQ7UhhtdG4eytwLlYiOfCn/UdlY?=
 =?us-ascii?Q?dap8JuEfBGBa9tNOmQM7HEHOT9PKkx6AccEzboF/NoClFzvV423XCI6VkCI+?=
 =?us-ascii?Q?xAuxGOSNsI+y1rOHbpV8NpAIYU2tj3aIW+G8Vz9W0vDMMLalhzH0haZGTrv8?=
 =?us-ascii?Q?kVUxGOd5W7kSVseg30ASYl7vN6R1hTRjunAgvXwDyDx5gDm/yLXdyOvrj3EG?=
 =?us-ascii?Q?F3TyPhbVRuJjeEeDNS3CAI0FwTKXBshTxHZMi7f/l8yuBnFSy/7lxUDJxOc8?=
 =?us-ascii?Q?x9pouMh+9Z30UYR0ReYbdcTWkbpAIqqasJRgrZ/aIxw0ZZK2yZeAlyn7tPUO?=
 =?us-ascii?Q?OT7ewwwtHEjBMLFZlX/1vUKkS7CJA9X0+h0banmj7XmL3933K8Y9dpjl0tk6?=
 =?us-ascii?Q?VHrpoF8qbRgwuTdw2XZlLXc90fYi+JvvVXxdUNf41FmIU4Ad+m3+jGfq/Sw0?=
 =?us-ascii?Q?VZ/qk72+YQTzzT4nxdXw9zTqkZoY+V3LWTtZdQFc0GdLeiITeCvupNSNQQvz?=
 =?us-ascii?Q?cn5SXZSPiNiYspGEQ504oNDXbPvEz5+uxSR90Q5Snk3MugAe8gqU3YA4F6rP?=
 =?us-ascii?Q?iRU9c6+/E45Bde6LViCm6ByLsVm4SxENib5blhUMlGTHArqKPPLvnwFZElsM?=
 =?us-ascii?Q?tegNO4RvfO+d7ScZLWD4qnuydG5t40dsqDoaG1xOe5f3GDMOoklH75tJnPiG?=
 =?us-ascii?Q?I9EFY70ADoBYPRgrUBWJzFqTvtvEHmA/HGrpJMo2IctZLB8iPSX8ir78n2SU?=
 =?us-ascii?Q?J+u4os2KreESU3PnywUf06wTJePqmThcSdmLFVbYdYHzY/0on5FV647KpWsN?=
 =?us-ascii?Q?/3t5R0DbqMVV521DRaXjHBrai/vhqXF3A/01peu87UMqAJnTrWA85ZBjJ8RY?=
 =?us-ascii?Q?vWwTqGHNmK3yErh03iC8CVdBmgApIWTYvY5G8eASgK37AiglwA4/+RUyQR80?=
 =?us-ascii?Q?yPxfhx2AH0zhcwz+ZhIduOmM4WQJfY7qWpdCIkmIZQMrmBkfctD5i9YzdIHT?=
 =?us-ascii?Q?lQOt8fpRCqh/Fmr6RkBULRuZFOJJlQsSOydsYmK3hAvLWsSS4Vt8bJ35Qvbj?=
 =?us-ascii?Q?/5AsBn3HPOtcQpeQxrAAeziOCrJ3awpJGawMZCoRZtRZ2Fqg95u2syDP5umJ?=
 =?us-ascii?Q?MlznbGsElg7M78vV1ZNOFmoVbUv0/kDsOp951wT8zcL2DBlIN7jdi5Ign/T5?=
 =?us-ascii?Q?A3J+iYb+fPut1iqfOSnPgm+lIEsPmLRTWpUY8dLawk7JcnMQGCaoEK+HN8x6?=
 =?us-ascii?Q?EtpyjQ81Xa3clxA0DB14jvOyp10D+joA+y0aYz/QVTVEGxSSV7y3NSl2sgyT?=
 =?us-ascii?Q?HMhf/nRNiQDikznnhKJFaJvMBktf0KuPzYc87CVhJDvmsBap1pglFcUYTEuy?=
 =?us-ascii?Q?HA6v6/bHkwq1722c3sSz8R+k0OPS/wAl55FX6qXe0eFS0AbZdN1JDZNjC9mY?=
 =?us-ascii?Q?4udKyyo/NdC8cabrRFY9973qWTwQFM+8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Qzw+NtU/U0d5g4vYzDzHTpuYdoN/u71Ve/R/CPpeW2AAjBDDeVEllJAv+4fS?=
 =?us-ascii?Q?NNDnnT5xrlHWHBl/E8OINOAOXum7TOD6qsjeR+H+YFKlFoqNwTbVAR5+F72U?=
 =?us-ascii?Q?00OvLt2GJfyt7kLr7qCrAuztIAOI0NDyBz/yOZbYqzuSS3vSvWwSupf0sSZe?=
 =?us-ascii?Q?7iEWzV1x6xV1T16XJ+0jPct9fliwdSBLYcdV+u+X5zCNScMtoCO8xy/euKTn?=
 =?us-ascii?Q?0wlw7CEf5L5n4LnnGglYooIDeZMsNCTuvShbvlb+o6LbPDg1Bl+ZPU9P4KW9?=
 =?us-ascii?Q?ES9OLZT/mQyiut5bPZ8RXTWvZa0YD2/t3arLqbrtxbjx8H3VJj2SKSbU17qm?=
 =?us-ascii?Q?41U+9dSeEbLDRhSF2h+LPR8QDfHGOyvSTJ+RlIL00wiR2ov0+FJRk2dP8oyZ?=
 =?us-ascii?Q?BMQ6W/jTVxnycr7pPVwp0uybzo7MxSpH/KDjWq3JIuwyIYzsWOsmsazO944h?=
 =?us-ascii?Q?RDc2gUOY6GzaJHMvrZpPQtazv39wrntxAM8dUyrWSeZmdioepwPho6SLxL8o?=
 =?us-ascii?Q?01PEj+QkCFAFlwxAdKRSd5hGUyvJVTDU+POpqlvLpU1dIpDUM7fl1Q2MAW78?=
 =?us-ascii?Q?nsNIbksTEfYsAYUOjJY9wNyQFx+TGV5zwD0GdC00AnLKtwHRCZl3BDjNq5y0?=
 =?us-ascii?Q?/mI4YKUVieGTf/wz67F97MUpgwhrHV8UsVvPiiAx8JX2P1UGmQefL6szqW4h?=
 =?us-ascii?Q?LC5L6EnXZelAFKeELSJW/99/oUFz9voCLNNf3rTq0VN2dzkl2OukYFAHs8bT?=
 =?us-ascii?Q?R5PT0+rGicyISzMIYf4uJ0Ri1n29JLTUuUAAbI2PdmkKYMtVcQtJjEzgbmqa?=
 =?us-ascii?Q?TOUIPR9VKZUaJFNbL9IEUXfce7vyC0QwLOTokDhfoqt9TROiSaG78xxf6SIO?=
 =?us-ascii?Q?lJCn/MxTATyElwbd878oms2xHLz062pdbLMoqa2UT1syOXGw11suflFbL/UZ?=
 =?us-ascii?Q?fMlUBk+k21o0PcF8qaTUUm5Ldl8VMsgJIK/sTfFXQoIAQoJ/g/b7xGcKWK/b?=
 =?us-ascii?Q?RrC0EJjQ+24qfnLTvGoZ0eAh6t94/Hfv6tydQjlipUd6262WB9s8m4KBzvSn?=
 =?us-ascii?Q?huZOLPfo/RFJDxun5sIPRKyUKujH8eheaCHDRN86f8coejCxkANKjuOJ4Unq?=
 =?us-ascii?Q?jFibXYOJCZ09oNeTh/UAkVl1jXX4GaGl1GwvNKiDvaPIAVkKiY7+apDy1NnO?=
 =?us-ascii?Q?QMcJ6KEKXwpRpl1BgtpNcdinIzIbW/Ijf/qIvm7a32W5MqZjt3u0K7WdrlqB?=
 =?us-ascii?Q?o63V/nQ6oFro1ECR7UoMFLiMXNh42ugR+nXgddV2gxZgnb8O6v7YnO4RWcaz?=
 =?us-ascii?Q?+SHn/HKvl55UCZorJkzpIjpLLUIC5Qt65zRGCNKUCGyX2yMYZM9VacEOlUPv?=
 =?us-ascii?Q?5fEimV5B+umdx8q/noRHksSwXV+T3uimZaZ6FxtNOmR+pG4G7W5usHXK5ecd?=
 =?us-ascii?Q?+aD5O74P17JpMkhUtwsGnoHQ0l6iANvi75jglHbY7UPlV6IH/EDT7D+glzsz?=
 =?us-ascii?Q?UV1ZkfsYDs2/f+6KNZM+HUBmibputLmjMD7nuanhj1F3HDzpFw6pqd1/rDgm?=
 =?us-ascii?Q?Jj7yH4stRxIhEMfrSmY3vsfXM+/Ms8r1Vxupm0ni?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 770c9162-1dc9-4f1e-b4e7-08dd45c99cbe
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2025 09:43:57.6481 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2plUTb9teyG6uK6DMMVgwiSjmnBqyDKDAOmJG2LPeCAQ6LWn6a73OGXXbdRJzS5ZLJR5j0rRiDmwYA1DpXz64w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4953
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Vino=
d
> Govindapillai
> Sent: Friday, January 31, 2025 2:30 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Syrjala, Ville
> <ville.syrjala@intel.com>; Reddy Guddati, Santhosh
> <santhosh.reddy.guddati@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>
> Subject: [PATCH v6 2/7] drm/i915/xe3: introduce HAS_FBC_DIRTY_RECT() for
> FBC dirty rect support
>=20
> Introduce a macro to check if the platform supports FBC dirty rect capabi=
lity.
>=20
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index fc33791f02b9..717286981687 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -163,6 +163,7 @@ struct intel_display_platforms {
>  #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)-
> >has_dsc)
>  #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >=3D
> 12 && HAS_DSC(__display))
>  #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)-
> >fbc_mask !=3D 0)
> +#define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >=3D
> 30)
>  #define HAS_FPGA_DBG_UNCLAIMED(__display)
> 	(DISPLAY_INFO(__display)->has_fpga_dbg)
>  #define HAS_FW_BLC(__display)		(DISPLAY_VER(__display) >=3D
> 3)
>  #define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >=3D 4)
> --
> 2.43.0

