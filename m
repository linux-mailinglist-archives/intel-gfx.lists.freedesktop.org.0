Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D79B1392B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 12:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BA3F10E138;
	Mon, 28 Jul 2025 10:44:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J1dczkg8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EF2610E166
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Jul 2025 10:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753699485; x=1785235485;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=phapNV0f6G+JQ5CorIhLLo0A3RlaTHDfzFEiuL3YBDA=;
 b=J1dczkg8DKf26FVa+xTxXrcz32wOQT1odhkRkEDC5vHnlBPab4rCcPcS
 dk7i6V/f1nLDan/aOqiQCzZ7lkM4eXjP9kTaUrjUpVSIkBNYANhK4+q8S
 q1rd3c3jKZfbJA00aB8gRRsA1cChxktulN5tYA80pflcLwn17K3ARVcaH
 Jdb5kXnTRXw3tEwlJyBRyWm8kPTJc5FafjU+bBpe943q+hyd0NYaYMGWN
 au4bbeTpfBppAxkKthuOQru9oUxLSYYV1qkOFdmNPZQI3UexbhfgdCkKS
 s4KCy3P0EwL5DnUley3mcQWXH1PQa7Qv+6qKMGDM+bMlNwDJY/Sfbh8/2 A==;
X-CSE-ConnectionGUID: oKgl4rj1S+WLma3ixpl8+A==
X-CSE-MsgGUID: wruC57stQgeJQWu6Bt6q0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="59593889"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="59593889"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 03:44:40 -0700
X-CSE-ConnectionGUID: hkEkRMpRQom1ZmBSJM3ZGw==
X-CSE-MsgGUID: dyP4vG7XT5+FEgoAv8Fqpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="193244185"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 03:44:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 03:44:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 28 Jul 2025 03:44:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.41)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 03:44:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ch0zhlf9+/pjpNHoP/gOZlONSHSdmkf9mDjdM3QD+Lgi+J/gJFTKkL2gM0F51Tk8UvkNDY1tpQy730mp68C5CDq5BJV8SlW7rcQiy9D96T1e+QRXhp2Seb9DfrYF7V5Xt8S06iZR5LkfaeyifsUilaKuDLbXCU2swmHOvmGGjuaJnxzQF1iHwZOmZ6P1Md60FJs3VefP5sa9FIot29IH7UVZUHMpqkTU3vBd1dQlQ8oySC4iDBIjCHLS5jWtjk4Y9DTq9TLayb7qUpwwab8VB/F5b1XeK61smXFdrz0aW9VHyCb7mbH6pXG5QmjY2qBdxFgTpNtwlR37A/lQKbAI7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mJp0Fx6RNHQRyxEkSm+fk2XnUv4A+TiF/23s/7vBdlc=;
 b=QRZprXr1Xa1YcmoaQfkQDqhp1jDUnVBmj4mgifIxrDA5r8zm+kHFw3xuymgYAzFemA5H2TVww8UP9ysqztlKng0TwSGWARfrcvY8hewQII/ef5QClaUNHK6ovH5ir+bvmsNdxt3QL+D+POCVrDNjQpuh8FHrTtuT/lcsg9QYjrMHHiGIuJeEDvDSRp0uM7EE4T6gTnWWFp0Trns8jKzHsXYDCcK7r66bxIzTmG8zn0areSiPTxsMgJQgFi35J6kPWjWzZkBfN7f7KgWPvuKzMcaY2GrOs2M/TB0musC2wyZi/Lf/F/3A5fvSyDddcn6+krjyXhtOQIJqaWvbDRcLlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB4957.namprd11.prod.outlook.com
 (2603:10b6:a03:2df::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Mon, 28 Jul
 2025 10:44:21 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f%7]) with mapi id 15.20.8964.023; Mon, 28 Jul 2025
 10:44:21 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/display: remove superfluous <linux/types.h>
 includes
Thread-Topic: [PATCH] drm/i915/display: remove superfluous <linux/types.h>
 includes
Thread-Index: AQHb/6ljfCTkFjqZkU2b85aU3ddHJrRHWa0g
Date: Mon, 28 Jul 2025 10:44:20 +0000
Message-ID: <DM3PPF208195D8DBFB1D3E9C5CB782D40EEE35AA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250728102113.238730-1-jani.nikula@intel.com>
In-Reply-To: <20250728102113.238730-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB4957:EE_
x-ms-office365-filtering-correlation-id: accf1c48-d3eb-440b-6dbb-08ddcdc3b5e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?M4dwJHdP0rFGdC2XKOero5AxZmxCS6iPBF4ct/TJjl1xjUxOUGszL4YC0UAc?=
 =?us-ascii?Q?whKVFFgj19qEndArD01HPCgDBTgJiCgS/MtMa5JcVBuCjGB0lbcbCFFF5Bkc?=
 =?us-ascii?Q?BpzkwYf8PTSxzBq3hFgBVdKPiQKcY0q4Iae7QKEQmpzwqSFNvVIcT33EDM1E?=
 =?us-ascii?Q?TvZ5waeylE+AFx99ZL+VJvZ//XrN+7lertnp7fLjXf1cUmmWFjdz9NZ/fcAM?=
 =?us-ascii?Q?Cocod0lXbc83gqGb3MPQq6qh2pSqhRc8Rk/v8qSLNssdTevuw++MwmyWzAH2?=
 =?us-ascii?Q?Fy+4aILDf7Dg6N/cL5bF/vhatSYYaanhQUgUErbzrVPFRPomwG8OLGNLSsBX?=
 =?us-ascii?Q?ksBVrUMiegWFwNMvBveHSgaxXdYdqVeuoWlOsVdpbimIjbmOsJHA7QjnfqE7?=
 =?us-ascii?Q?znmy9C94wbNh/dlFPc0X2Nawn233FQ8yKivcBCxbzGy2lu3lMeVYsNN2lwJD?=
 =?us-ascii?Q?zftuEm4WLhHVk8qTuKawvkT8lqgEX+1GqIEX7+Ku66KMKRZWcvkiaIwt2UQT?=
 =?us-ascii?Q?mUZaUu+uhSaisFoVWd4kh6ZvFzhOq7oNY+PFSEq/M0OpGGyDKL14T/uHnhAN?=
 =?us-ascii?Q?JAIXGXbnitV/HInUID7FWBgrRltnzpScN6m3EpvlvBWp1P2n+lOkSttHi8cU?=
 =?us-ascii?Q?xpOoirrNsrE4kBRhwL5FtzHtauqi240GyyDaZ/oTbw5U+qtw5K9Uq/t2ITXz?=
 =?us-ascii?Q?fQnXUh8hbUtEP8Z7soRiwR/Kl8UuEiS6I91ILVSWYG6s1yWvllXlixuM/kme?=
 =?us-ascii?Q?uS6d63Aj4joFrqDMOeyi/2GQOtU3HjzoIk0w1XExNZr5WB+vr5JGl1wAfy0s?=
 =?us-ascii?Q?XMoFQVj9280YMgRgmu7EuO/L0jMxe1T21u9+C3QMXHg+s+t6oyYsUKHEJ2BN?=
 =?us-ascii?Q?P0wLuoXf70UujuayRx92TMXDnT95evbcVELFEL29JuJDORPq5LL3kL1daqNL?=
 =?us-ascii?Q?sHqU2140bT3Jb0bOh88vrIsNz0OWwHRpjjbNJwl4wE/vfDAAM76LiNIMIDpS?=
 =?us-ascii?Q?Aa6HT8w16Dd1KNZ0JhJkTGqhda7pyuasde2KUjkm283Xw7nqzC6qcPKBHrES?=
 =?us-ascii?Q?sEs5EjFzpvvRExMU0ItBYfsyyy9+iUSLx+g0Nz2R87UTLyPkMLhhytVvr7Ec?=
 =?us-ascii?Q?UVkPH//JLGk0ZZo2NNCKqbSqy4mRCil4Xs8NtyFxlyySfjeIWAa7ywYpBfPZ?=
 =?us-ascii?Q?2UIQ2H/vNRAN9Vl+Xydxoo1G4T3iEi3lhOW9pfigpcSy6Kc6wWFeBSGzTmI0?=
 =?us-ascii?Q?ZW2VtVNUN8Wa71hBcYQ0194xC6fPwEcQ7OW/l+FawjTU8yrMDXFsiwBGiF36?=
 =?us-ascii?Q?56/bajFpctEBSZgJCEvRx5y6a0nuPV75k3znQtEVDKUySMJs4Nq5vgKJbFQw?=
 =?us-ascii?Q?JM2pfERb0s0fYiZD8hVun68k3QmK0ait1VCIDZxbfAccYZYIeb/8lbPlvGSe?=
 =?us-ascii?Q?+mPqfU+fhTz782Sl2XN+6Xu+sgiZDDiUPVpjYZzxEknZTEMoXaejCw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ISOruZbcjcHW1TISmGXbuDA4+yVd9JGQY8BWrwH7Jl29Ax/3zePSP/odtv4a?=
 =?us-ascii?Q?aO0ejrbru7uKQB1O6zGr5/spzp8cdgCuvbmzgWDyyRXpzZOrU+0tTpULmHgx?=
 =?us-ascii?Q?0rDO35AZrSzE/paYgxX5wAWJQnwMDm8YnpPpRV+50KxKpLic0JC+e8DiKIae?=
 =?us-ascii?Q?AGjEKx6cW9VxLUY1/QQPa9oGdrAAe1nuOImVe6J2OMPGcC3ua3S8d0hm4wdb?=
 =?us-ascii?Q?5VefVijEqFhF5mFNavxLq9fgXS5j3pEWGmYY1QZUzkJmyE/u3F32uJx0kKDn?=
 =?us-ascii?Q?5NA+maG8noUeZEGxYH37YqR3JIi29kFLeP8RDR34uKMvFqnwy0KLikp2Z8rt?=
 =?us-ascii?Q?ynqg99ZUxcYxpWbv5JN/Tjo0LUGm0dEjb3SS94R+fNNU8I39SuNqUEaON4D2?=
 =?us-ascii?Q?FwT33vWhkzM+ZBz3eesdSzwLr8Ib8q3Tb+tX+EasMmYSBGFE37N0ryH2dj1C?=
 =?us-ascii?Q?kkOCan93XK1ClGCwtOf8Y4hBHqUP63vBpLU8z/HumPSPmoZHiCmhHzM/Vn0y?=
 =?us-ascii?Q?GZ4HZPFeYSrtDK+GpVJbO8RA08w2aLKa4BKNAERFCOFzviS7KOZq8woq9Lzc?=
 =?us-ascii?Q?mjzEKFjGHGUgLvkA2jx4Xa45Ad4yxhp6B3qu94NzhRYmIWPFRfnaN6utRK9t?=
 =?us-ascii?Q?oxGzK2o7WB2ar5o7bgipynoRvwt5mWzAqxvBl2pTuXyEdHrhVCehXBYLnomg?=
 =?us-ascii?Q?3ADZCpPnZE12qT7tKXqP02d/LmqkBOSaCkh1RIz8RDIrKq7cpw12Dmj5/+v9?=
 =?us-ascii?Q?+/RRfDxEZzuDjJWvvHO8F0U1VrZDkPZ2gkJrb3i/QQc6sRvIRaaxMc77XzzD?=
 =?us-ascii?Q?q2I8NcYQObTLLA/lCcam3DyTy3M+x+K+/3zwF6pvn4Dgb9WA7a8abwV9PTzS?=
 =?us-ascii?Q?JmWzkatjbUiL/4EGrD+M9hBqnvHViewCEmHoU8UPoZSgLb4QIen+jw7B5rrw?=
 =?us-ascii?Q?8B/dCD7pFC3YijV6J4tMrafZWG1972hzthVOViZsE6FGGjS+Qh+hJ6DxTjlH?=
 =?us-ascii?Q?N37+/q13/rjgvjQp1k9nBc9rWW5vCOgnZsOS4URlW98ALi1/GgBOdt5yJaCR?=
 =?us-ascii?Q?sjAUClBz9fhq2updUV+KdUQfureAeam3NYI9EkXUlhQwErqMKBmWI3sJaVri?=
 =?us-ascii?Q?tkZn+Ywu4ZkC6qCHD5zs3n9r36bgLfSyGufjfwsD7ivN7imEe0bUhAqmRqha?=
 =?us-ascii?Q?gzAushwh0OIQ4Nu7ZmllPpybdZgKHO1BbM12ojwh94xvB4dEnw3JCRsZArgS?=
 =?us-ascii?Q?XPVy8ftGWHO99peXbneChT61JwsHFI+Dtn+cDfzU/3H20EZHBhUFSBl1aAi5?=
 =?us-ascii?Q?Rjd+QTHHGfdH4A2fxWC4VLULFtBltTQ1nOVi2Ij/sKnyfzrVw1nvVw6t6jGp?=
 =?us-ascii?Q?HBCqKltKkh24ZjhSk4vPGeWz8qRHPLOP94oD5WZLmMYx939pac0Vc5jos+iU?=
 =?us-ascii?Q?FoK8K2GBwKI+u8PnoMVxY3Neqc8GKacoVqklWs907E1KGdPqOylrwus6mbMh?=
 =?us-ascii?Q?69XY2c1ZJUwcWokw9x4FyNAz7ARnznfIwy4SGNlqQbJlja6WfwtJkcJJqZYx?=
 =?us-ascii?Q?tX/qnLDCxTgNG4M1leKeNVYDhueMoPq9Poj1zy2z?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: accf1c48-d3eb-440b-6dbb-08ddcdc3b5e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2025 10:44:21.0102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a4GkZYzOp655MXyXuAfl61W4mseudxcPCO7e4RHnu5OwHSONr1tHW5B3u2eF+0T5qqfwLOuBjD3HYsJS2TppSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4957
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Monday, July 28, 2025 3:51 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH] drm/i915/display: remove superfluous <linux/types.h>
> includes
>=20
> Commit f7a9dc796567 ("drm/i915/scaler: Use intel_display as argument to
> skl_scaler_max_src_size") added superfluous includes. Remove them.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_pfit.h | 2 --
> drivers/gpu/drm/i915/display/skl_scaler.h | 2 --
>  2 files changed, 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.h
> b/drivers/gpu/drm/i915/display/intel_pfit.h
> index 2f075748a34e..c1bb0d1f344e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.h
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.h
> @@ -6,8 +6,6 @@
>  #ifndef __INTEL_PFIT_H__
>  #define __INTEL_PFIT_H__
>=20
> -#include <linux/types.h>
> -
>  enum drm_mode_status;
>  struct drm_display_mode;
>  struct drm_connector_state;
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h
> b/drivers/gpu/drm/i915/display/skl_scaler.h
> index 692716dd7616..e3b35d2c13be 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -5,8 +5,6 @@
>  #ifndef INTEL_SCALER_H
>  #define INTEL_SCALER_H
>=20
> -#include <linux/types.h>
> -
>  enum drm_mode_status;
>  struct drm_display_mode;
>  struct intel_atomic_state;
> --
> 2.39.5

