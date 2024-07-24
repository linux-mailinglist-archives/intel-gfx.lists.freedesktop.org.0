Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC9293ACC8
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 08:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4256C10E106;
	Wed, 24 Jul 2024 06:45:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCb2eobC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F62D10E14C
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 06:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721803518; x=1753339518;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rPb4HwoosXwqALwbnVYMZnmWCERxyPgxDD0R4hgEDaE=;
 b=eCb2eobCewYxEcxhQJ5WAnD0qeBVmDfL12RXQAEzAhMI6N7678Z8lAHv
 ck0+ghlXYjgn4QAvPMbpBTcKfjvsr2u1dVFVEX2FxJK3HlSkH/JQt/WhC
 VXMhXtI2I8eA3bG1fe7vxyIfPFT9xWZRgyC5IS9ne9VAKesNnaDp22HoV
 Ll6oroxAg463HZ32dq7ONq0BVtbl3pQ12tEILfPMrlLk0NL8W4iWRrrQz
 WU3yRoN/9TyrmE6cixXkUSnHlMZLbEzXgmzoGqF9iuHA4uod6MBOneruR
 6oVseQsRQoCuRZnx2xEgvFB/bd5MwOV+P7uYUtPpfPN4r5U2m0ELhlUqL A==;
X-CSE-ConnectionGUID: cX2uINc4TyaNXHyPkqGEdw==
X-CSE-MsgGUID: erMhJWvpT/abMpBDkRwsaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="23270203"
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="23270203"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 23:45:18 -0700
X-CSE-ConnectionGUID: 6y1A4JkLTruu3O3efwF6gA==
X-CSE-MsgGUID: 3l3XUYLCTZCvndn/833TAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="75700845"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 23:45:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 23:45:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 23:45:17 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 23:45:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZmxVtDHdqA3a+1M8Zei4nJPX065876vB9g9PDilDqrfas7WrMcVwIjBQtvjWNgdPAt4iLTvBDQbMYK4JaYDxA8TM9/iQ778tdgVG0MfM7Y/luGFkvQzH+oSGoaiMsEU34oZ2LAc2Fd6W8CqydyN+EgxW12VyDDhgvG3jL7VLrHoVxSovkr6F2BZk3qmQAhjGXlv5MS90WZf0Kb1tvJR35jqR1kY3wZdIuhkRNyMMahn3H0F/KHfLxQDU5gmT0z5qJ4rifpMrDoqOXjGsU0sIrZ/n4k8GFzh5guE4Bqp2kBoHjCHjoSSE0+sR3MPSedhA9vO6b4Q21x6Zevh3mPNHqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZOnfPuNiPtUvYBMbmpu2zIoH0KI4bLAJz60NhgRERTU=;
 b=E/BiEsyQ7FZMu9ScWNWhz5Y05XSls5WFGoY1ShQam9yCYRNkAlkTIvCO6Zen3p2fVxo0D4eil13coNBDjfXF8uHfAr1pUUg4UiXvQ8YWpwExblUShkwg2XL8Hqe7KReH542kHOXl+B0nEuoOGgNvkUTbYATQzr/v6J7I6H9eWqP79cnZln5GYdkn3RIqr6rxZgKJSeVT3dgr13j4fSaqbpB+o7091tcgwQBOtpILwVFDIgs57WV4wbI9M/K5+D2bGzNjaoRIny41Yp8VEq/zuItKYzwNFiZGX720qlzRP4EVypchKV3q7c/j0TWMfceIpu5SdpKyBK8X17NhptBYYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB7817.namprd11.prod.outlook.com (2603:10b6:610:123::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.14; Wed, 24 Jul
 2024 06:45:14 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Wed, 24 Jul 2024
 06:45:14 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 10/14] drm/i915/dp_mst: Configure MST after the link
 parameters are reset
Thread-Topic: [PATCH 10/14] drm/i915/dp_mst: Configure MST after the link
 parameters are reset
Thread-Index: AQHa3FgGpFQxWWqzAUWyxuhRqFkjarIFcS8g
Date: Wed, 24 Jul 2024 06:45:14 +0000
Message-ID: <SN7PR11MB67506FA815AB560833297DB3E3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-11-imre.deak@intel.com>
In-Reply-To: <20240722165503.2084999-11-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB7817:EE_
x-ms-office365-filtering-correlation-id: ecc41fd1-7f18-4b2c-07cc-08dcabac2c27
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?HB5xSlXSot+1VCXo35NXK2/gtF0XPjVLRld16nS/76D7NWQGCmko/tCaiiJH?=
 =?us-ascii?Q?BvqX9OR9UXSB2SzA52sJJhAEiH3emqE5ddKarWC0BSLU6Lf4GnSMTwru3Jq+?=
 =?us-ascii?Q?SyBDVUkw5KmbTYrQnbTye9z74m/XNHtZB3Iun4ALb703lpl1tmVVyYRQTHR6?=
 =?us-ascii?Q?1xXhOk7iO+R3MMzFukly2aEb8I8Oot2BQijR38Itd2IlMjMj5+V6vKQNUBq7?=
 =?us-ascii?Q?LPTtjYMY/ThNt8U8ekg++17vpHzAmDc3Y2uYwEJ6DWbhcWLP5beh1KG/W7Dk?=
 =?us-ascii?Q?i6296t/fegJ8YFkHMcIH4BWKyDE+7ntZ+wS//UzaxZxU6lHAlzDwqnuA72Qk?=
 =?us-ascii?Q?I2k5JduxGDsmlKY5XFB06uSsfX+rxFrPdPgS2OigDO84X99duJzDwlF2yHld?=
 =?us-ascii?Q?87aUIr2VYlfCQdaIZ+flLW/cg94Cmug65VVV4zWVaII81pMJlsJjcF/6PicM?=
 =?us-ascii?Q?OtLlEQbQpfRlDb7peRIMkQmrdr6H6ezLUfytJ0aTYGmBe/0hKxw15G9X01zc?=
 =?us-ascii?Q?+sm9CV/cQXuQIYzSOH0drqGZdwEzdTgtjUbFlqk62iGiiznKD9FA44fes6Pi?=
 =?us-ascii?Q?LQjap0fGBD/k1mTSONdCXQeZAdMnrGIDQeuqgkiSOphdZ+fsLkkmKC/bi2cE?=
 =?us-ascii?Q?vnIeLWq3WcRsPSuSVp6kQ3qYRmpF3Sh7iEvmAiRRAkUgejRaBLXU7JGpxJ3r?=
 =?us-ascii?Q?3dHt+BLao909xsunmMVizUUgJVj5t7kJdYL/oAHQi1e8s5DMeyC8xdyw4hrY?=
 =?us-ascii?Q?XlaJ1Te8eotVNIZoRPPRzyU+uPzeIud7/PznqyJ5a3jep2Uagie9izjS0vOU?=
 =?us-ascii?Q?UOvGfxt37APHMGOppCgDiwGCDhGE3tNTRnCJQB9c+FGwDxpVodeb2H87a4YE?=
 =?us-ascii?Q?sYep2eYU6MbzAs1zsgFtDjrPQ0VczxXpXrUE98QUdDnGHA0w3R56qA1NAFVJ?=
 =?us-ascii?Q?3ZyepfLN8s+Uohm7Ilm/V15TPBgE0s0Aoocnxql0LvXA1vWUtLOma4B7iCrp?=
 =?us-ascii?Q?gFt9Zy6iWP30JNVsjSDeFoH8L6EW5+lniH8ZWWWCR92DBNmXwjtrHoDG7CmK?=
 =?us-ascii?Q?1tC9kyl/XNZ6Nko/OMxlT/p1N/PiXZdU6a3mdUN1sH71CaQjJ4jSp+wWXWZ3?=
 =?us-ascii?Q?HNUKy3B+qCRRl4oRwUnpYCB5j7y3eWTm4dK6WneQ91p4bNmTeawEvct5YMea?=
 =?us-ascii?Q?BNDPunxHXTffGSTtigVuTVOn1HTgUEjJDsgOMHv2BodgS4SbXv45EMCDnTKR?=
 =?us-ascii?Q?A63sDwQFp88233qJgWBDcdH8k4sHP5jSzr/SHHY7o9slkDENnP4sz/KOIh+r?=
 =?us-ascii?Q?YOFLHuPred2J0S4C8VbKmu7NJ0qA2EgKcAAqy6cUdIad2Nq9DGKB5Z1KIV6e?=
 =?us-ascii?Q?NxUSKW8my8crxRAvnv54fg6d9RC2dysB5qLFKOPIRwgoZPJqAQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1k7dXtXNr2d1miVwl/BajK4duIkiC0rX5XJNW60+37Pv/Gr/KlviLZptn3Y8?=
 =?us-ascii?Q?gJ8B9gJ+z8PogIVoSiD1W4f1PsNBC2utbWP98BFIVWGucCyh4LeLzW7wWqei?=
 =?us-ascii?Q?BvAgGiEZDpuAelEN2LvncqRybRySR1vcDdn0Ju4fL2xjPSXG2hfTOj9jQpXF?=
 =?us-ascii?Q?eQuHSJasmEb3x9zshCVxPTDz/xR5V1NZs8gr/vyth8D/M+auSR1beZ1xFJtl?=
 =?us-ascii?Q?2Q2slZYKABw6+YY2ATbaVZd5EaxYQf1i/hBC1sDfseDFEFpLUrr2i09QI8G0?=
 =?us-ascii?Q?OkovFjcqhQus56zBmgcy+ZiURMD2mH1YHA2TsnLaxQq6AmjNSHI+0s8BjoKj?=
 =?us-ascii?Q?CvV0JgqHu91kAq2oWIu9XG32VNFDKVZTmJML4LyjWrt0GP+jgy9YM5zCtDmZ?=
 =?us-ascii?Q?BDloPIZbmlCIN2ljn3ZLSZo6j14Y2Vr4ElICAL+7ibo/s9jJVb5q0nB+Mekx?=
 =?us-ascii?Q?zsZNlwnASVfaoAxpRyAczvqxC3ESmTx08w7BZOKMxXEmyXKjYyixEgLZvn7O?=
 =?us-ascii?Q?qdjDy4d9PcZOF+NrbxAVla+jO7E/g7/t7HP3b0hhcwAjkV4mD0ACrHmLgQx4?=
 =?us-ascii?Q?ewQBCaViXIZnnYcJTuihQUbO0Rl116iDHFeAYh407BxDXjH4NCucrqcA41HZ?=
 =?us-ascii?Q?7E0O2+5i+IaCPzj4WgS9+L0XvIuBfC3c3KMJN+Xbl1Ukpq4O4JUbOZbrtrw5?=
 =?us-ascii?Q?WE+yJeu60Ur2SXxW3LBAHHUsmCziOaeBsIxuTnRyhm40m3YRl37RzmHOuO5q?=
 =?us-ascii?Q?JTiMIvWI6FNXzU4QcgPeGSLAz5C3wJcHQxihhTG5qXdrgw7zDdiVb9SZfKSR?=
 =?us-ascii?Q?MS0f33UuKfvk/42pkMaS8LzISjE+Af1aqbyHIXi5t2vNVchwMVQbTrmxcg1A?=
 =?us-ascii?Q?RB7PtjxsedHG6JpJXGQoEmRwUelbjTGZ9I3RAhGwK0I3Gc7yjI3W1sqA01x5?=
 =?us-ascii?Q?pdVXvjK0WwUeL3Qluwri6VBxhIRj6bQmTn3TodfWhS7U44T3LsGx3VXloNoN?=
 =?us-ascii?Q?3jVvoMpxUjXZC6YsGxprMA4pfkW1dYBZ2NoVlDwRC1eNHCwB7jRVdilavChp?=
 =?us-ascii?Q?8oKdJKamwlbTMEfnvmMTWJT6QYimzFcSwsQ6OVtrIQxUIlhsHS34iEBPeMV9?=
 =?us-ascii?Q?SWOk5wlq71oC5GRRJnVa84b2dhDZe2JKh2fRuGTJfO62VK3YCSgTtKByoPBR?=
 =?us-ascii?Q?gtJaZADPN2Bzz0Xhj59l8TJPuXq8zKZM9ZnxcI0bWz3UASbyPqcRUi2Ic3dn?=
 =?us-ascii?Q?jqd3Qo7YcI1LbllHdw1Y0X99ufF1ajX5PXgVtgFPj1z9+e8M9gHt3pPnLiCX?=
 =?us-ascii?Q?AnHsoK7uHXy8z+6dv5cP81wUtGix8tEwX6x48LxXtYezgIQ4OfaeOiOwJLA1?=
 =?us-ascii?Q?a/lmE7NzKoPxR8nWii0ETc2/SkDIWc89UYDyXUXrGxvYBtq6VDt4+ZL7iJqu?=
 =?us-ascii?Q?INJpd+ECzn/x1SHhyXl0/m3UAu8muzaOXRxirTU5JG0UrvvsnrenFFqMPoi9?=
 =?us-ascii?Q?3gYHDgUBIaICC45SLcmGxypCER//blvQlNIaJbjLlT8djx3Np2pIqbSVSOAQ?=
 =?us-ascii?Q?Orq6jBCUEpj8DdlQfFvsm1KcuYftan6NeQmQk9VJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecc41fd1-7f18-4b2c-07cc-08dcabac2c27
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2024 06:45:14.2631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yF2v20i+vj3mQfxubux4KfOP2esJbwAxONmDjGpSFXskqoPS4s6GQbQxMR82c0LO48P9kZXKmouMVh9noBAikg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7817
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
> Sent: Monday, July 22, 2024 10:25 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH 10/14] drm/i915/dp_mst: Configure MST after the link
> parameters are reset
>=20
> The MST topology probing depends on the maximum link parameters -
> programmed to DPCD if required by a follow-up patch - so make sure these
> parameters are up-to-date before configuring and probing the MST topology=
.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index d3529c5836393..1c6d1db1d2690 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6025,13 +6025,13 @@ intel_dp_detect(struct drm_connector
> *connector,
>=20
>  	intel_dp_detect_sdp_caps(intel_dp);
>=20
> -	intel_dp_mst_configure(intel_dp);
> -
>  	if (intel_dp->reset_link_params) {
>  		intel_dp_reset_link_params(intel_dp);
>  		intel_dp->reset_link_params =3D false;
>  	}
>=20
> +	intel_dp_mst_configure(intel_dp);
> +
>  	intel_dp_print_rates(intel_dp);
>=20
>  	if (intel_dp->is_mst) {
> --
> 2.44.2

