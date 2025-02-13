Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB49CA33A5E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 09:57:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BED410EA2B;
	Thu, 13 Feb 2025 08:57:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VT9y/8IA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BEE310EA2B;
 Thu, 13 Feb 2025 08:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739437019; x=1770973019;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GFBwaSTbmna1Z7lRRarIxW9K9xeyBWWd6cr4D+UOPxU=;
 b=VT9y/8IAO/ErxIK4ttfoUhrU65Sm3wEh3B0SySbzZ3oE8MxpAU3xKXWW
 f79ZktwVs+ql8317j6DKqlFUPYeg+tpIaBDF1fUzI3LUIDP3pu1ycUYpP
 kf3PgGJXIab/Y1C3sHrpZnAoH44O2exVFt3BtZzteY4WjQ3zyHOC3msN3
 xcoID0hKRyjGVbWWWWORmpu5jaBNbwmpzGLBpKorV19yh69iGYwu2I2Cn
 Z02L7sELHNvVMpMWJ6wpjamCWlp5CjuhwUDsIQs7EbYK1xbSK3R6MWQlU
 Hoqrd4CBEJuqNfTzWtAUCeOOUZhGXoH04hT2qP6bwys6xHdWXUqxAj9YM A==;
X-CSE-ConnectionGUID: Z14QSD2+QTK8mwZAh5NOtQ==
X-CSE-MsgGUID: mCN0DDumQEGACPxX/unN5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="62595582"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="62595582"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 00:56:59 -0800
X-CSE-ConnectionGUID: kNv5f6zzQySG1lm5zLCnAQ==
X-CSE-MsgGUID: D38E/mC5Sui+8KZKrOcGOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117188264"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 00:56:58 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 00:56:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Feb 2025 00:56:57 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 00:56:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DkX65Bm7U1mVQsyM3bGWAbRAiE2ACaxT16X+45/FN1Jc+Hr35kb/33BPD3rvVJwNxd/m4hC3ywNZgPH5d6GmyM8zjgS2VZN82L5R2KAWmfYB1YYy8hx6skKSTK7LhtaZy/wq1PzhB6FDSYWxMqMfxxtlFSyyOAu2aKUcZfXq1lecBh3OPnQfDP4BMqwcUskF6T4lmUk6JTbWc7tbu1aupe9UP6TxR6LXqdqBLHr8qD1KhT1LBatPi6qqf10TScZyIV0PctbEPM5F2t5G0CVheZwKbayEBnTbclveWZVZIZ1NkJH3KweFEaXag0ZkQJd053isijSlPjqOdqJBvI8QsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ooU+9U7iheXRkWxH6dGjoMaqQ1C63zLV79T3AmfIMQw=;
 b=LOX9ZlL6kgGaEwPzejbqUQgpNNHnrTyYMnV7knHyHACWT1yGFIFlms8N4bj827EhY6YMDbj9fA3L3lKsCMHkJJxQNXeLOgB2xDGSbfhYgiw9AEezajrW++eQN8O15vKFsGXjOrPVALzOT/F+5qOPKw2I4opWOiG92DXzfJlcwUumIopua1QRchKSw6T7d8L0O85EciRV+9nbV6y5KWKwlfJQmIT5GtgfaoNaAANXVrbUvwKoY/OKsvcwLss0Iq4jK1Ppbyb8hlhE7QnLp6CbGmxCcAuZnn8p3CJJzBeHHv669hdoTA2IsZ3mI+099QNoziP2/wdAoe0ZUM8naZaZyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB8035.namprd11.prod.outlook.com (2603:10b6:510:245::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Thu, 13 Feb
 2025 08:56:28 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 08:56:28 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 03/14] drm/i915/ips: convert hsw_ips.c to struct
 intel_display
Thread-Topic: [PATCH 03/14] drm/i915/ips: convert hsw_ips.c to struct
 intel_display
Thread-Index: AQHbfWxrrsPCUUATH0CArxLQEJa3JbNE72Ig
Date: Thu, 13 Feb 2025 08:56:28 +0000
Message-ID: <SN7PR11MB6750CF72FC6DB4C20C1736E5E3FF2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
 <ebea40784fca6cfb4dbacec570bc9bef49393fc1.1739378095.git.jani.nikula@intel.com>
In-Reply-To: <ebea40784fca6cfb4dbacec570bc9bef49393fc1.1739378095.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB8035:EE_
x-ms-office365-filtering-correlation-id: 6f798a40-eb31-4e3c-3d59-08dd4c0c4d84
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Sle4wNusuVIJU+SNFEIhuJYuKVKVj9CFL00uDLCrQFHh2di/vL9tQRECUyp7?=
 =?us-ascii?Q?R1Kwy3+LIWh+RcdJy+woG9B1rR+3q0WLU2njhntb/beqnpNl87D47uG7Ik12?=
 =?us-ascii?Q?C4jY2Wrg3k1QMrar0RmzxXIvYUBvLrLgtKlZA+6lWvsx72aaydT8QxWzRVHH?=
 =?us-ascii?Q?vIkO6bobNJEz9IRgm4HnVIEXo1tqXXbFQ8tnpfG5XK59ChNCFPtViB4+jFhL?=
 =?us-ascii?Q?/MZNmi27MdjKz5iKmHIEdHn17Srh54Stxo+4/2BQ/ceODZJb5iVwu8On+yIJ?=
 =?us-ascii?Q?GuwPiVxpQWtKP1ox2tRofqqalNaOtfj4pMQpgh+2nzHAM+RAQHjukeclAc/X?=
 =?us-ascii?Q?+BY3AWpKIaPDTiF+zFdjut/4qmBRz0j98drWTKypHiRcsfzjbRp/7RFIPha8?=
 =?us-ascii?Q?Uau5Z8n0H2s0HRdUymo+2dX07M0fJyG5t0gP6pL+83EpJ4eKal5HoKONDBWM?=
 =?us-ascii?Q?V+IKXMFlpfyuyPowmRYgJyyq3rah4GNZsow+4ctq298Sv0fKXjYYE4trLjIH?=
 =?us-ascii?Q?Z+/XBXQXwnlkclah4omNh3U4jgaTSMLhqx24hcY9oAF/IW8NK2fVWZrRk2C6?=
 =?us-ascii?Q?xLBonX4E8XhTwgtyXNB4LzqcKV8OPsZjq3A9puRscECBwjBEj66PId53+v7I?=
 =?us-ascii?Q?aphe6mg80bfWr16m/EIk7xqAY4vve8LKf6L7pdtgBE/TIuEVDh0zc7ZMzMwA?=
 =?us-ascii?Q?s+BIsaeYsDinujkV2WuXuoDdjoKfTbeDNUnr0gonoTqkOa7RSLLdXn6rhz+3?=
 =?us-ascii?Q?gHXPId+uvO1/CU9/Gr9qWT/WJ8IaRi3nzEplifK6+/aDdW64Qpp5lsP5hzhN?=
 =?us-ascii?Q?eOlPh0UWI1aHlyhclgdSnYrRF/UmQSjq64pKxb76eKYsTerIABKpnxN2lrzq?=
 =?us-ascii?Q?P6fMzdHP6+LsR8qqdX2OUVlHQ9DyBpdnQMQBfDOLSW49v+gyuYDUR0IxT+Nb?=
 =?us-ascii?Q?swjRTMoaSONA1Vyu4a1orlWeLQNQp3ZUMN1y7iddUkHdO0nnlIOAeYnNp6X1?=
 =?us-ascii?Q?ukMtdvr8iHfi6kGPAozvu0XDr8QkM0Sl1m/+yXRE8n+KFSeRbJuvbDFip8K2?=
 =?us-ascii?Q?tOQVr3mU91LmYHPnzPIRfSuBjqUBQlDhADMCnEKq69jceMun7ag81g7leEH2?=
 =?us-ascii?Q?TXqR0hauesGsxHUBJWqefrpNEugG6efGBVuLJ4ETw5qReRSA62WzKvU+XMIa?=
 =?us-ascii?Q?WqWW8gA4iiVc51X0pLY41wa4Fz1UC2MumHO2LL9pPiZoPDbKwlx0bMid9am1?=
 =?us-ascii?Q?BnssnIei4S91IYcTZTdpApBXS0hj6xOVFafHY1ES2yE4cGjpvtQ2NWnX9CcW?=
 =?us-ascii?Q?7lGhn7vjexRrnj/q9FJUF6rJVsl9tkLLhamI8TPzYQ3JyAh+mvkaSZg+MKlt?=
 =?us-ascii?Q?kb0VmONA4oyK8+EhGov5o6UlByCD1rO87tNuS/kNTCeO+K5bf2B6mKxRtRko?=
 =?us-ascii?Q?Vwe0eICvd66f5oJJsvhgwSasOQR65dhb?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cfLDTawBNALzDhoxPx+yBT1ZfP77doTt0/AkbGbgQXJ2+vEiPPLm6xUmLjLz?=
 =?us-ascii?Q?6K67jenkm3ZSxYkAv2rOfa7f3AnWbHgjQ+TxDBSDYCO6YqA+xM9XFJpeh9Vm?=
 =?us-ascii?Q?kaZKjHFjqg898WzN5OGAcwyyINqJf9KJcCFtuYpyEwJtSVOJvEN98x46rB+D?=
 =?us-ascii?Q?RHE1kUxhYrnxoomcsXqr3Q6XruuIrw4yPtaoxeoqqQWiItpH96L+7ns8BaiC?=
 =?us-ascii?Q?YMhkpFUQiNzwtDoRhA9oGeLx7azMFBPHE+AypyudelVqh538sdL/gFUqoS3+?=
 =?us-ascii?Q?MVYllj5Bt/EGym71B2wqkwiqOeQYXaQJYwKRZNocu3CZKKyY5sFSppceBasq?=
 =?us-ascii?Q?8lw37OnaZI8snAM4T8aYd+oWBL5mOinCGdliyEpyVMHpX8Uf/99OnL26iHhd?=
 =?us-ascii?Q?EKExNBfpVP7cC5u6oUXo1pYfd2saFVerG/iK797kQVjal+lUPlWrspajBqYB?=
 =?us-ascii?Q?UlAboCDwIQB9cNUqARzZ9SSbtwNuG3n1XAuLZy9dNdN3D3y97WLV/+55wlfA?=
 =?us-ascii?Q?Lwp8zqpWQ/cP9228/vIaua5X71vHfYiWzOLZK7D2NAF2tK5Elqtlay/tiwwJ?=
 =?us-ascii?Q?jameTVc3DrPwS3TkoQf/SKkQo4c04iUd0NVQDvlg08kWdUxXIEUpTYcVjL0C?=
 =?us-ascii?Q?3dPSFbSXR645RDmzOwAkRS2qpn/Mb1M3PMtHg39jUE4R8EKQ/OEeItx//9DK?=
 =?us-ascii?Q?mooYwQQ3ai47QAN90CRiQaJuaO5EgDHWuo917aDWSbXBFilDyathzp4pNMKA?=
 =?us-ascii?Q?UHBtkrM0zlNnBdZ3TA07FpoTe/1z6xsW3363FIZNg5EjuUafs7ZuHFtAbrUD?=
 =?us-ascii?Q?5kn6coNep0MTZwN12v06PHsDu8JJ+aPRZEzuPpwKJpPflysvQ0nPgayY8iiU?=
 =?us-ascii?Q?EACF1PquWBYpeODG7zRi7EiW/UEgAHNUPlKBvuGS3v+Berd0iEZcMGIXxW9y?=
 =?us-ascii?Q?eXbI5E8lY7+7ZKVmpf9Y6llruVMj8TUpdvHyzwpJBYlXfBAIXTo5nlCLVxhW?=
 =?us-ascii?Q?O1+dPoElT5mNBezBHVEXkCoLjcp1a752gj+Sv+zGum94PtsWOG6AT5sH2O/4?=
 =?us-ascii?Q?bB3wS4rn+eOGlwnI83IUhWhkMh1aM9lHfNzIoecmFcfUFxDtYay5+KiBqyWN?=
 =?us-ascii?Q?KD5raoeVtR6vBqtbN8fnUXFoTjO0kY8OpjGtpx5uX7hC7Av2K8YHV1dZBVHo?=
 =?us-ascii?Q?Wy+/437kJH91ZtUpnMBMpYg9+LKv8aURnAcj+VfQpQqJtK/0QL/IlA71hjt/?=
 =?us-ascii?Q?n8wqGO0e1cHmQ5vtbZJVkgKJpOpfFrvoKC35xBAP8PEzFV7GbY4Kwvf8kpss?=
 =?us-ascii?Q?NJZRqkVDTWjyj5Jni4Z/qSwxQOpZVd8GjWvkcjTiaqoDch5R/K3/AMuab3PQ?=
 =?us-ascii?Q?/R1HntPpJwQghecoMO+iFDxpLhCR4fcfEEQM2Mhd8UH/qhJKDcX3LlsO54hV?=
 =?us-ascii?Q?ndMGRd1D4c8bpEF9E8vEUn7qgq50+6gcCq1UMCjxsP/Tk+ptYWorzfxJaWYw?=
 =?us-ascii?Q?YeaJjruCEgmOD9q8vfPqSHy5B+2ReZlf45TOWHtLAG/pbWbmSgciZHRmOkaZ?=
 =?us-ascii?Q?GyLNuKK3jsoDi0Rd0BeEB7RNyulrVkSuZveNEyMW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f798a40-eb31-4e3c-3d59-08dd4c0c4d84
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 08:56:28.0245 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9DSGQRh9nNfTluIRGqPaYiAwt1y7fSYfgkWewrdnCEv0zHM4B+QzSiG2obsbepWM8bO3sHRDWUzlSuIcZNOeGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8035
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Wednesday, February 12, 2025 10:07 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 03/14] drm/i915/ips: convert hsw_ips.c to struct
> intel_display
>=20
> Going forward, struct intel_display is the main display device data point=
er.
> Convert as much as possible of hsw_ips.c to struct intel_display.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/hsw_ips.c | 26 ++++++++++++--------------
>  1 file changed, 12 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c
> b/drivers/gpu/drm/i915/display/hsw_ips.c
> index d02c328bf902..674a0e5f0858 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> @@ -36,7 +36,7 @@ static void hsw_ips_enable(const struct intel_crtc_stat=
e
> *crtc_state)
>  	if (display->ips.false_color)
>  		val |=3D IPS_FALSE_COLOR;
>=20
> -	if (IS_BROADWELL(i915)) {
> +	if (display->platform.broadwell) {
>  		drm_WARN_ON(display->drm,
>  			    snb_pcode_write(&i915->uncore,
> DISPLAY_IPS_CONTROL,
>  					    val | IPS_PCODE_CONTROL));
> @@ -71,7 +71,7 @@ bool hsw_ips_disable(const struct intel_crtc_state
> *crtc_state)
>  	if (!crtc_state->ips_enabled)
>  		return need_vblank_wait;
>=20
> -	if (IS_BROADWELL(i915)) {
> +	if (display->platform.broadwell) {
>  		drm_WARN_ON(display->drm,
>  			    snb_pcode_write(&i915->uncore,
> DISPLAY_IPS_CONTROL, 0));
>  		/*
> @@ -96,7 +96,7 @@ bool hsw_ips_disable(const struct intel_crtc_state
> *crtc_state)  static bool hsw_ips_need_disable(struct intel_atomic_state
> *state,
>  				 struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	struct intel_display *display =3D to_intel_display(state);
>  	const struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	const struct intel_crtc_state *new_crtc_state =3D @@ -114,7 +114,7
> @@ static bool hsw_ips_need_disable(struct intel_atomic_state *state,
>  	 *
>  	 * Disable IPS before we program the LUT.
>  	 */
> -	if (IS_HASWELL(i915) &&
> +	if (display->platform.haswell &&
>  	    intel_crtc_needs_color_update(new_crtc_state) &&
>  	    new_crtc_state->gamma_mode =3D=3D GAMMA_MODE_MODE_SPLIT)
>  		return true;
> @@ -137,7 +137,7 @@ bool hsw_ips_pre_update(struct intel_atomic_state
> *state,  static bool hsw_ips_need_enable(struct intel_atomic_state *state=
,
>  				struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	struct intel_display *display =3D to_intel_display(state);
>  	const struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	const struct intel_crtc_state *new_crtc_state =3D @@ -155,7 +155,7
> @@ static bool hsw_ips_need_enable(struct intel_atomic_state *state,
>  	 *
>  	 * Re-enable IPS after the LUT has been programmed.
>  	 */
> -	if (IS_HASWELL(i915) &&
> +	if (display->platform.haswell &&
>  	    intel_crtc_needs_color_update(new_crtc_state) &&
>  	    new_crtc_state->gamma_mode =3D=3D GAMMA_MODE_MODE_SPLIT)
>  		return true;
> @@ -194,7 +194,6 @@ static bool hsw_crtc_state_ips_capable(const struct
> intel_crtc_state *crtc_state  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>=20
>  	/* IPS only exists on ULT machines and is tied to pipe A. */
>  	if (!hsw_crtc_supports_ips(crtc))
> @@ -213,7 +212,7 @@ static bool hsw_crtc_state_ips_capable(const struct
> intel_crtc_state *crtc_state
>  	 *
>  	 * Should measure whether using a lower cdclk w/o IPS
>  	 */
> -	if (IS_BROADWELL(i915) &&
> +	if (display->platform.broadwell &&
>  	    crtc_state->pixel_rate > display->cdclk.max_cdclk_freq * 95 / 100)
>  		return false;
>=20
> @@ -222,9 +221,9 @@ static bool hsw_crtc_state_ips_capable(const struct
> intel_crtc_state *crtc_state
>=20
>  int hsw_ips_min_cdclk(const struct intel_crtc_state *crtc_state)  {
> -	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>=20
> -	if (!IS_BROADWELL(i915))
> +	if (!display->platform.broadwell)
>  		return 0;
>=20
>  	if (!hsw_crtc_state_ips_capable(crtc_state))
> @@ -237,7 +236,7 @@ int hsw_ips_min_cdclk(const struct intel_crtc_state
> *crtc_state)  int hsw_ips_compute_config(struct intel_atomic_state *state=
,
>  			   struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>=20
> @@ -259,7 +258,7 @@ int hsw_ips_compute_config(struct
> intel_atomic_state *state,
>  	if (!(crtc_state->active_planes & ~BIT(PLANE_CURSOR)))
>  		return 0;
>=20
> -	if (IS_BROADWELL(i915)) {
> +	if (display->platform.broadwell) {
>  		const struct intel_cdclk_state *cdclk_state;
>=20
>  		cdclk_state =3D intel_atomic_get_cdclk_state(state);
> @@ -280,12 +279,11 @@ void hsw_ips_get_config(struct intel_crtc_state
> *crtc_state)  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>=20
>  	if (!hsw_crtc_supports_ips(crtc))
>  		return;
>=20
> -	if (IS_HASWELL(i915)) {
> +	if (display->platform.haswell) {
>  		crtc_state->ips_enabled =3D intel_de_read(display, IPS_CTL) &
> IPS_ENABLE;
>  	} else {
>  		/*
> --
> 2.39.5

