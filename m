Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7EFA13246
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 06:17:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49DF210E068;
	Thu, 16 Jan 2025 05:17:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VI8hiJBB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69FC110E068;
 Thu, 16 Jan 2025 05:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737004669; x=1768540669;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dfh8Ia57WhQqSGeBluz8C9ZtATCx0i780sk3E3sCvvY=;
 b=VI8hiJBBAoZ5rIh6wxkYsVwCM4w6Kd+MLFPthWT3QMAfaFaE1EP2xFL4
 eNdx0vv8eCZMW55TVNWj3ZqfGg63sEv8cNsQjc3grA/iIE9L4x+4kGSUd
 oOL9+Yyf3En69vjOZH+Ka/OGbm2y58l9uslWQXSicGujowvne8AGxoMzk
 ++vrd5IVTsIfqVhUQDFM7+JGG6itveGIr+4+KXxwxiL/HnLNz/AQr5gCW
 aEQSrHaQRShFKs2jE5iMgTUzDFDLe2IWNggZD+sczGlgQwvE8Wg81LHPA
 NPTo2knJrXEWOM84oGmXomueDcfgdZgn6ZBxW76ZEua50rC88oD7+s1a4 A==;
X-CSE-ConnectionGUID: W9KSQrztRli9g4Xswjuzjw==
X-CSE-MsgGUID: Hp8Kv8SCQgKXWwNsUBUVeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="41308362"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="41308362"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 21:17:48 -0800
X-CSE-ConnectionGUID: vBK+bOQmQkmN9+CzTU5EYQ==
X-CSE-MsgGUID: 9Gj2Ed9KSjGjjP3b49xyCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136233309"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 21:17:48 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 21:17:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 21:17:47 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 21:17:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CBK6uWB8XNgraEKkrLnhoIC4Teeq8/0EiO7GRWEv/P5rQ9OAWAw35M41KUkHISxHfuC95f6Dy99egw0Seru6hm+yBr7EmuKrTWXeCMAntasUQRb9yhhvNJOC2PQ0aoA4ckbe4iCxU7PK+olOjT0uQNPz4KSaJalAuXcbZLZlrhDQcFxYk+JHdsxiRuJTqmQXI9fxeOhZ3h08vmB21FawT85J/CbVa3dGqBEUr6HPjLyhGWFe/1rjfNvuHbbvUIerdE+iv1u6tY5i6HV6ueVyI8exFwB8YfkZBCyNY0ts0XA+VkcfQ9uiUMQKzfHXD6PUBtaBuVcsz2S0TNEp4FyFUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gVqubs7hALxdlRiimksiLgqymvyyIljfizBdLgzjR84=;
 b=BoHftWvMNma983YZfXocI2SxhofuV/DL384GMFXeEJTdtx5ZeBE6E1ChQzzODzjpJG8Do7MCCrm5XwmsyZUR8WZ66N4Q8Lj7TtoRuQgGtwv2ntYKnIdpA5UlMA4cUFFPVimpdDlGMT5+0bAiACDGTmEdp3YxAkMCP00/6fTdRZQ6ljVitjyOpmwuBBfCbofvOlMoAxFNGdUSTEFb24EhvFfJ16zSCE5wXVTH+3MQIy4RscPOCFvy0kE3csExkpO/n+aiNWQzqYpqBK2yTMCjJvCGGvLzxVFwi2dDQJ1j43GGu+I5afdQdl//KfRyWJ7M4Newf2uNUyaq0yvqSAWWnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by BL3PR11MB6411.namprd11.prod.outlook.com (2603:10b6:208:3ba::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Thu, 16 Jan
 2025 05:17:17 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%5]) with mapi id 15.20.8335.017; Thu, 16 Jan 2025
 05:17:17 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v2] drm/xe/dp: Enable DP tunneling
Thread-Topic: [PATCH v2] drm/xe/dp: Enable DP tunneling
Thread-Index: AQHbZn/WZHdbGvmle0yi3oh85lJQArMY3qMw
Date: Thu, 16 Jan 2025 05:17:17 +0000
Message-ID: <MW4PR11MB6761FF76A01C7A989B62F875E31A2@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20250113154832.1004369-1-imre.deak@intel.com>
 <20250114122857.1050090-1-imre.deak@intel.com>
In-Reply-To: <20250114122857.1050090-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|BL3PR11MB6411:EE_
x-ms-office365-filtering-correlation-id: afa6ef86-842c-4443-9bb9-08dd35ed0bd3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?kuXQiaLeOM/PB7nSEpsHsn8SWIxrGf6LXRTJv51qnGNH86nLeQrvcV0HAciK?=
 =?us-ascii?Q?rbs5YvfWEkrhPNlwehkO/m+Q+K+Y1VzQvyzAujjLq+cqs3sTDkYYDyti1WR4?=
 =?us-ascii?Q?ztglS6YqJwZ/torad8p03OpcsnW13GJrzhhLtH2PFL/3+0XR/UthXEeM4qli?=
 =?us-ascii?Q?zlar28ccYiFC7qsxp45C0TqWSITxaf2jFhSPg8lDfZqSpWDAdPnfYJNcFoAz?=
 =?us-ascii?Q?6VDzeG7NM3+gjdbTUpqykJShL9LVh3kKjcrABcbs8vinkYahCetdlWg5j+jo?=
 =?us-ascii?Q?GYqS+jo10bcJ4gawuB1AK4JtGyviFkIdZGQfsHrjpowbyZJHz1+juCHJe8S6?=
 =?us-ascii?Q?4TkPoiVNnSCWWeQ2PPLvWUJpO35hWqifuHUOEUuWuaEIwS1wIm/A7YgnnKW1?=
 =?us-ascii?Q?N8T/OEhnd28OY4L70ygqixdP0WqEx1BhUlRv6y4EcM8RKJTTD0CBm6V/EvWl?=
 =?us-ascii?Q?AQOUsMUlY+t32FEiGEayE65zZXN00LsOsjgNfXidD5ucKAzSN8VogAbddd4W?=
 =?us-ascii?Q?bVkuHeblCtDcT3AQiwa3rgV9/Gq/yttgRropVwWGbrYY3hWgtgMnzbQCOvO7?=
 =?us-ascii?Q?1Iy8sFm8y5DxEtB7unkAoyB3h/2wgnApgpJTaQgSdOMRHt8vPmvetLH0gosl?=
 =?us-ascii?Q?dFBQd3yqlJ1+O48yHksfzNOBho4bAa5lzjY3//tDD3GfPlnBLDm7yjCOIoTb?=
 =?us-ascii?Q?xXaLfppzayg5JhsMWFfvw27zo5RybYCjBS8jgxZHsaCk+fhsG1voTCCPp5ne?=
 =?us-ascii?Q?h8RlXLTYQCLb+M82ZsNUhzMh95cVG9dirhUUF/JMlwm+/PKXkcguJBWss6Ll?=
 =?us-ascii?Q?oQqCeI/CkxQmok0s6d+6rStQAd8voyrQrpGUWrQfexUMPUAG73mQI8Cikp0h?=
 =?us-ascii?Q?c6LYAjNT0Kyx3ZlDDr5f7YBIp0wiQm4tLLGOVm3On7zsEWqumn++eyxjoZTf?=
 =?us-ascii?Q?4QcVJc2sdQ9ONAyKutJGXDMPGs7fHGPG21J+C0RYzwtzRLKJfOZrfDWxkRsK?=
 =?us-ascii?Q?4gVybMjDSXSk5zs1OTNwwoGd3DgrUYxGBZgNA5bHEsxJ4JMcVRTsY8Clndu6?=
 =?us-ascii?Q?7bbGgmCmFcQVWHS+Pj4k38NCVbK03cufhsTApr7G5Ybni6K3BLOucbSrBQxq?=
 =?us-ascii?Q?SHUf5iFmUKsolukFx2cI5MJfAuA7PBfPhY/5zzQePyjdDVJy3d78ZlKdXkrZ?=
 =?us-ascii?Q?z8oH4ytr/eAF2amsDEw1bYSNLvCrR7TwfzCKSDMYlhNcWeUrOclCFKHSF81g?=
 =?us-ascii?Q?n3Q2JiUobyiH43RiiPcN0NhYqq6EZKfAcGeFQq6jG4Y0d3/Zp51GjPp0y3rj?=
 =?us-ascii?Q?lQAjEv4lJsJEQykz669E/F0oA3El/EZrwjzepim6sc/BgskfMx8R+UsecmUR?=
 =?us-ascii?Q?vvD6CaqewDnvbjwGC6XHvR3kGbkcjaNsZ3rf0uH9dEDKbFn5n8noDGdacjwn?=
 =?us-ascii?Q?IfvK+gCimVTD6+evt1wv0AEOuQup/TL5?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FCHm1+L6Gjfn6htbXzXUt35y0Du2tgHVM3eMZuzI/eyWk25QSllww9X48sG+?=
 =?us-ascii?Q?w2qsTI5g6LdBj2iZFftRrLIHXUor3kyTacQpFHrdNsNqVTfUNXQo8dRezRFg?=
 =?us-ascii?Q?ZsowaHWZSzdrvBogztfxi8nWQY1NUNS6DsNmXClj7NIhJOZP4CyTrerdX0Cl?=
 =?us-ascii?Q?3M6fC2UspqYMO2z8sDs3l/GRH9qlP1ybAJOeslZdrmrY/L2Ue4yspnkSAAj1?=
 =?us-ascii?Q?lKbDQAzLzPp1AiY83tOOL7XQpcLQGu8lmbz9I7SI0tKkf99y25582vq0AbxC?=
 =?us-ascii?Q?yXGj9Z/IJ2iDSXNqcnw3EY16yNG/bNzwZChPafLultiAYiHHWTKooBj5PjPc?=
 =?us-ascii?Q?Upvi+JPdfJyqcIIqTqxhJ3+8wp1veEalEuwKMGyTEef7NVqNcwSxVx5RyOYF?=
 =?us-ascii?Q?ZYSJD5cQH2xEVgLe0InYBCWLMr01w7hmzymwGdBFePG2v4JLeMAX0LOv40XM?=
 =?us-ascii?Q?PJy32T57q7MPCnXK375ScjMg1bsLny1zzvCnE+le1FLxQDv7NQGvv2XHVinI?=
 =?us-ascii?Q?H1D3NSKTnD2Fj5Hh/q0TYg8oq/1/J7bPcOzBEjrX40lb+REuX7KIKHK3xhfx?=
 =?us-ascii?Q?N7L9O8hBGCFESsrPEYBctveP2S0Z69oLOwTeFYrx39oprIUPWT9xmgWmREA5?=
 =?us-ascii?Q?WUF04advPZwSRaa/Xy4YfLGVo1GMfUY9g22bOQnfQmzVaPDV9BDo4UsCvyJL?=
 =?us-ascii?Q?hSK22NdpYUeEtyGZOU1ucPXpXqYnsLjjzReV8+5jxrzRtyA68E8u/6SdkgFZ?=
 =?us-ascii?Q?Fg65VC/v7dg/M1zdOLBefKVoCGuTJm01/IHr3JJ9I3/ncuQ8gQH4JqD8PxHX?=
 =?us-ascii?Q?fsNvdprHcmjK2Xt3+BC9c5/Opm9V1bTb3MtbMuQ5Hrzr68TahrKDe5Pv/oDl?=
 =?us-ascii?Q?fzvhhFu3EbmpsQ+SCQ6LUzZRqeJisUAWUFNTSi+KHRLyKwz2s3NxOGQoeS4z?=
 =?us-ascii?Q?EXbfHHqhTS5O+PrvO/gVLIwxPDRZdsaa5dxttdbloyBXZ9YTSnHOY2dHXj4y?=
 =?us-ascii?Q?mDgui7i+yqTSgeAIk+FNZBmhfhKM8H6NZMmizPtmaPNBzLDk15dtMyRNiDu5?=
 =?us-ascii?Q?pBQYd44SvDMokD9rxhx7IBs5NG7Gp3aI+Nck9wkNHTQ0YIqWEr7SeEDGBD+C?=
 =?us-ascii?Q?alB8Rm22JAp+eAxSh+gzersRJKRj+1qe6coPolEEmRQFTZqrRzeY6QqcI383?=
 =?us-ascii?Q?URaSI3OBv0AhR+Ky2gI3ZwLIRoWx5GsGJlUPlLDGmfoOPMXemC7LEcIFOBK0?=
 =?us-ascii?Q?qo0ZwmGcnospD0sbIW231AAKXCjRntidmeKUJSumvuLd8gM60sEcNZd1LWJY?=
 =?us-ascii?Q?zrQyGrMi6VjM875gihbGrlTDiWH0dSqYHiU52Dt/MMi+G44WwB41A9aX+wY9?=
 =?us-ascii?Q?tySUxQdNCcSCrcqaunS4Sr/a6qYAJiGzhY7h7cZQkvK+NJYnJG1MB70i5ua7?=
 =?us-ascii?Q?cpw6ldywsk56DhvgxdW9E9JevJosT2HPk7/lSi6AmzoLhoG1OzBAaMeGiLRi?=
 =?us-ascii?Q?yAfnGybZVKcl9tCQMz1NOLfecV2ZdgccWbZk9WqCsZyudeBqdJSXCZjVecw4?=
 =?us-ascii?Q?OslBqWWXJ1zGIHoW+UCqCOmaB2MYnO9Jvh6WotQI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afa6ef86-842c-4443-9bb9-08dd35ed0bd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2025 05:17:17.8186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9G0wQrTNGlX+yFDqGIcjWgXABhZ4adqq26TBmYO5MMUqiR1QLg5gdh4CzhohQA9laTZlXDpl56KTQK4wpM/C8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6411
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Tuesday, January 14, 2025 5:59 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v2] drm/xe/dp: Enable DP tunneling
>=20
> Enable the DP tunneling functionality in the xe driver.
>=20
> v2: Keep using IS_ENABLED() for kconfig options. (Jani)
>=20
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_tunnel.h |  5 +++--
>  drivers/gpu/drm/xe/Kconfig                     | 14 ++++++++++++++
>  drivers/gpu/drm/xe/Makefile                    |  3 +++
>  3 files changed, 20 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> index e9314cf25a193..7f0f720e8dcad 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> @@ -20,7 +20,8 @@ struct intel_dp;
>  struct intel_encoder;
>  struct intel_link_bw_limits;
>=20
> -#if IS_ENABLED(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)
> +#if (IS_ENABLED(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)) || \
> +	(IS_ENABLED(CONFIG_DRM_XE_DP_TUNNEL) && !defined(I915))
>=20
>  int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct
> drm_modeset_acquire_ctx *ctx);  void intel_dp_tunnel_disconnect(struct
> intel_dp *intel_dp); @@ -127,6 +128,6 @@ intel_dp_tunnel_mgr_init(struct
> intel_display *display)
>=20
>  static inline void intel_dp_tunnel_mgr_cleanup(struct intel_display *dis=
play)
> {}
>=20
> -#endif /* CONFIG_DRM_I915_DP_TUNNEL */
> +#endif /* CONFIG_DRM_I915_DP_TUNNEL || CONFIG_DRM_XE_DP_TUNNEL
> */
>=20
>  #endif /* __INTEL_DP_TUNNEL_H__ */
> diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig inde=
x
> b51a2bde73e29..50cf80df51900 100644
> --- a/drivers/gpu/drm/xe/Kconfig
> +++ b/drivers/gpu/drm/xe/Kconfig
> @@ -59,6 +59,20 @@ config DRM_XE_DISPLAY
>  	help
>  	  Disable this option only if you want to compile out display support.
>=20
> +config DRM_XE_DP_TUNNEL
> +	bool "Enable DP tunnel support"
> +	depends on DRM_XE
> +	depends on USB4
> +	select DRM_DISPLAY_DP_TUNNEL
> +	default y
> +	help
> +	  Choose this option to detect DP tunnels and enable the Bandwidth
> +	  Allocation mode for such tunnels. This allows using the maximum
> +	  resolution allowed by the link BW on all displays sharing the
> +	  link BW, for instance on a Thunderbolt link.
> +
> +	  If in doubt say "Y".
> +
>  config DRM_XE_FORCE_PROBE
>  	string "Force probe xe for selected Intel hardware IDs"
>  	depends on DRM_XE
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile in=
dex
> 5c97ad6ed7385..81f63258a7e19 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -301,6 +301,9 @@ ifeq ($(CONFIG_DEBUG_FS),y)
>  		i915-display/intel_pipe_crc.o
>  endif
>=20
> +xe-$(CONFIG_DRM_XE_DP_TUNNEL) +=3D \
> +	i915-display/intel_dp_tunnel.o
> +
>  obj-$(CONFIG_DRM_XE) +=3D xe.o
>  obj-$(CONFIG_DRM_XE_KUNIT_TEST) +=3D tests/
>=20
> --
> 2.44.2

