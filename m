Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B5F9E4CCF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 04:44:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B1F710E100;
	Thu,  5 Dec 2024 03:44:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GKgdnTw/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0BFE10E06C;
 Thu,  5 Dec 2024 03:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733370262; x=1764906262;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TsZNLVowhzGbBQ4OQ+q+L7Zkl2EDsORSgI2nTidKmwg=;
 b=GKgdnTw/3ckwZNMepDxD76xnyQZ4rJmRVBtDnpiThVPDyV6X0MZJ3HFk
 gscnxi6iK4NgmVbamARB8RbUmFzX3tciJdLIxDS+64HcFrfvOQ7ZIRnP9
 X6UTi9q88y26NRBiiCi97ENdL0Tbs57HLs2rWZKSt4ekW3Kptu7behwLH
 qcoC7dZUu+38BYhXmKW2smjARiD8LYp7bZGOXUkFqQCg1ET7SdbhhuQBM
 xo7hAN3arLscKfWGmT+lUDWDxhZLpD1uKxn9IScCITUU3riAmKfwnHle8
 IzDkE+6M/RhOQ4PxTClLDk6LbqfC5jzHFzRvLJZADmRw4rNovAOzEfTR/ A==;
X-CSE-ConnectionGUID: ydc96kljSReiGruGMLpMFw==
X-CSE-MsgGUID: y5tffsk0QQOAJXF5KVG3qw==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33546730"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="33546730"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 19:44:21 -0800
X-CSE-ConnectionGUID: 42xj1jJ5Sa695EjJ0wcFQg==
X-CSE-MsgGUID: SE6JOSFGQMOmMZwAGVj8hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="99043887"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 19:44:21 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 19:44:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 19:44:21 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 19:44:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wL7MR8ub/4YGdEozzmw0JNv3sFCpZon3K6J9Dg/UaG1iwTHFrWGSVjZg4hkaTpRh2Zctay3nN80YcE2kpem78GyXE3pIBQzvnYmeUslUPdgjBKogw0vvW7wPqmXKIdg4Jk7qCp4z++K2xd2DWjLwBVNjUyY0TPhJ2fnNX6aLxJOyytp4xGNe35J24kjHnqtP1MwwN8uqCguKp1Tu47Lkx+VUQwfzrU7KQFUxN8i+92W3B1OTDlL4JcOwtchbI5ZghSzTvEN+CS/aq56sifTTHPsNBheYqb/0Yko9xy70jlytBhWN/1ukxBG7YOG0PsuNrwwoJ6MRpnJSYIj70aiOLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9NVo0GH+1Td7RVZBtW8zS0Uk+8h3W5jg91jFc4njnno=;
 b=YMTkKOt+/P92L6nXLw4Ju3BZHc+vSL9vzLiW/QmWeXKJpiW9XJQVIYWlZiNzXse5M4uwvT8pB8EjZD3LeOFb7eBrGEjYGIAy3zVXK5zarqx9Shooj8M8BpMjmJmmq4/mHKkLURFY9nC7qldl7Mn6tZA5hJnK1hW33K4h7A8vVJeuPpXfTdPzImhUaPXZvc45OUH4Z5gluCk9zKynt0OG/ZcaUozDI1OFGHSV8fZIJMh6zicjAHoPbidfN5kxoh1Kn+TL1Xc9ra+C0RV/3i81KskWMTWuQ1tdkCombWM1nMnNvHG6qLW9w+o03GI+3NO91vySjGu4Yf+IZbAwa1U8WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by LV8PR11MB8584.namprd11.prod.outlook.com (2603:10b6:408:1f0::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.20; Thu, 5 Dec
 2024 03:44:15 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.017; Thu, 5 Dec 2024
 03:44:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Sergey Senozhatsky
 <senozhatsky@chromium.org>, Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v2 4/5] drm/i915/display: add intel_encoder_is_hdmi()
Thread-Topic: [PATCH v2 4/5] drm/i915/display: add intel_encoder_is_hdmi()
Thread-Index: AQHbRl5MPBE/mTbJBEippxKrBQW7FLLXAvUg
Date: Thu, 5 Dec 2024 03:44:15 +0000
Message-ID: <SN7PR11MB67500F4FAD43FDC5E31E9FE0E3302@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1733324735.git.jani.nikula@intel.com>
 <4292505b249268d824834d545b73aa0ad2d33984.1733324735.git.jani.nikula@intel.com>
In-Reply-To: <4292505b249268d824834d545b73aa0ad2d33984.1733324735.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|LV8PR11MB8584:EE_
x-ms-office365-filtering-correlation-id: afdbf9ef-fca4-4480-ea77-08dd14df172b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vWtZQpVKsYwzBieUUf9KW5DNYIPba8BLf4tr6oYO9xStnZozsVgj+cYnlvv8?=
 =?us-ascii?Q?sDvcNRSuZiCLClg77MTv5eftUUY+/imh1IQLEshB6RL/mrzp7WkOaaqlmstC?=
 =?us-ascii?Q?DNSxns64OZHJLQSdzI3a9I2MckqnCxoqBxx0IK8qYh+0RiueTdcFvC4nUQrm?=
 =?us-ascii?Q?1Y2giBTFAt310pIZaYslWotcmo01Od9VMMCrT5Mc3nCJn57WmNLuarTsywSr?=
 =?us-ascii?Q?VZ0OmHiIMzUurVJfK2X3ZtkCnfVaIRfsIxvGxKlPDL3ohREuOdYKSKUQgAHO?=
 =?us-ascii?Q?FNlxT0b+jIIkt/Jo9ghYa1lnMQqfyhnpkFoPD0stXiGhhMwRBAlki/Z89zO5?=
 =?us-ascii?Q?z6hOHw9gXtS3gYFbQDyFp8+PRJNlyYI1OR9+38j14D/0xQNaQ8lmPCttnQZv?=
 =?us-ascii?Q?49cpAP0rm6oImM8WMnjNNwGxa4VBANiZGqHcv9pJpAGerhhmOvcia5ZgIp2U?=
 =?us-ascii?Q?M1d9euW8ZsfP/IykuNdJlav5svOp+jFtu92Z/pT6lFbcUVqqrz3qdA7B1wfq?=
 =?us-ascii?Q?tjSUxbo/JVK508B4U94yhO94F2Bq2otYOv6YYGI/9xXStAktTUZFuwcztyNV?=
 =?us-ascii?Q?9p1Ff/M2m6Iv36zFcKc88HDXxmmN7I5pxXkvEKUrCc/c0gNl/O5l/fjMIw8J?=
 =?us-ascii?Q?ZUlCNnqexCzHSCvGi16nX/3SBU1ux6x4K6F+BbieMSSoMoMfZTXzYT8bD6FL?=
 =?us-ascii?Q?58kThERUHWR7FQlOsOlc3mg17WR4AGMB7hsPu6OpeScylxqKWSXknOhSPSRE?=
 =?us-ascii?Q?NdgjUNthy08FrhnY8rK9ilFFK6zD1Wpq9oEIzfDipEmsTOug4gEQKtTz8c0M?=
 =?us-ascii?Q?AEilQbgv12b+M0zKtvx54uLmoor+MKszjxEA52MJ4CGfBgp+3ZhI7mvULI2W?=
 =?us-ascii?Q?D6v6yuaM+e4ZNGyZE9M2y6ze4O8H8DGcdZGDq4GlmlTXCLNOMmTn1T+rNW3o?=
 =?us-ascii?Q?n/DDzFXecfPTDID/jbzETnsqPcYkka4eGoIK0nEfPRWo0bib3c2ubneU/PQI?=
 =?us-ascii?Q?w3PlhjyGsfUij/p+Z942OrkQhe1mm54qiXoYrvgI2R+qRYTdVp00RhFNBaLC?=
 =?us-ascii?Q?XoYvnG+Y4TLAid9NNWEZuG7YMghg0nJNpvEFiecrhJtZ064jW6SglU+UfsV+?=
 =?us-ascii?Q?cyLorlAR9i/w7QwEYeJka5ImRFpPY2Y+0CWJ1FtXBJ1rstgbkq1iQu9BDvnM?=
 =?us-ascii?Q?c3q79ubWsJ8rgcbWroqzzoj31xZsila3YeXRa2UP0lY1S75Fu1sgz+7DZ3Uv?=
 =?us-ascii?Q?1p01vjyW4hraNNYEBqM06SAPV0qrClAbGKdN+rPGALS610pBiqUVrlTo7fWL?=
 =?us-ascii?Q?DEcIRJx4wTq3cnyBW8xBod8nx+wLFb5RQ9O7gZfJN070nQZo2ZwqfZHda2BF?=
 =?us-ascii?Q?wLrU0PGCYxwOktgLgUUij4sI+KIR0RxXVwtEnspJRf/bsolWvA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t9EjauC8T2XbHZGVf2A+7h2aKICUoMk/DMVVD1/VNJkN1aElWJSGNb+eGjjD?=
 =?us-ascii?Q?nIvptMiWQDxdLmc6SJ6ln7Q68DjluWHDx1olCkCNky4+ujFSO5hEGPDa85ww?=
 =?us-ascii?Q?zM8qwiYhYQ2afXbXH+tm6HimOJVtHLD90UUH+MwWDqKeDFFy97SwpTp6Cd53?=
 =?us-ascii?Q?AqOKPTjJfauBYZZZJ8YVcRXBJ5U2NrLOnmwDmaHD7wal2kXkeENFn3vviE8V?=
 =?us-ascii?Q?Unc8he8J531PWmLmjC/7MTv6eiD8e4FShFWYwlqmRkhM8ecwzqv16LJyz/fh?=
 =?us-ascii?Q?fCqW1tZbkQS9IrR7AngeyXpcoQFxGywHFVKx/SkPpWafUeWjxEm4NQz76ZJP?=
 =?us-ascii?Q?mCdRJnFrzL81hlO2gMiLMZyvC2Nz8WH+lDj2ZGSlUmUC8ipJP+Ud2KinOkt2?=
 =?us-ascii?Q?PXnGt1BtbCgnfzFsVxT7J6wP3GWh1F8Pp5LPTjAoOHTOob8Z5xbw0ikancLi?=
 =?us-ascii?Q?sUXkJBYGCHl7TS5KJSKAYcy/RRaqLqyWoqotJlOdGTHsBfHuq5Kd6LZ26lzL?=
 =?us-ascii?Q?EM+n2Q8iSmt/NcqeMr4W7HmfSTyHSYoTdHe6x493sJB/KHmZzAujknk2pZrO?=
 =?us-ascii?Q?PaMiFd+sPoHA6DjgEmIXt+3df1ksKpy1UQCBbDXFoxIkebjTZ+167SpOhrbI?=
 =?us-ascii?Q?HALOlEGBqU4AYC7BslYFPbMZtUrjaVYp2k0lS8GIZa3biSSm0ZNT4EBmSBIP?=
 =?us-ascii?Q?ujroo4kcXG0wHF1IJ723BzPU4UyftmN404P22V7dtb8fyvBjLEPqLrzLnkR8?=
 =?us-ascii?Q?rS6WfaKWGnlckoUmHyEwTRzCEVzj21C3ea7lp1O2vomQfVyCAbhW57T9mXBO?=
 =?us-ascii?Q?cKkzBHJ1947nwilESCD2GMqlYC6gt+ayF4JEp26OseYadjQj/AI7hsKP1ZNx?=
 =?us-ascii?Q?KYqNz9a+stsyqXKDzYEf+tLi+V/StlTG5eYSDBIwO/2e1tBcv4A3U3H2VgHB?=
 =?us-ascii?Q?Y624qXUsG0SEIDpWPcY7whbpQyJ1vMhPGBuKU6yzHZxhKWKWw+IaRo3UqWKW?=
 =?us-ascii?Q?UdugWVy2Gb2F08EDxvMpk9ERHjM/so6X05YnP/zw0x41ZhJMWMzraelAOii6?=
 =?us-ascii?Q?Qumk3M7z8cAuqd0pf33k93ssQLOFL28SIwyPHmKP3iXwESm1Rx+PHb9pJ7aD?=
 =?us-ascii?Q?4/oce5eiiBHem0MMCkWnEuycGbmmmiQIp8H7AhWAQjZf5KKKG1vF5hZG+DFx?=
 =?us-ascii?Q?fzvBaF8xuIKBYLhDAghSuiC1K54WvRn3yo5ImC6cQEw1/FT0+LsZr3ZWMD9C?=
 =?us-ascii?Q?7CLWiOvUtnzPcBkmxwn7BaVKl/hXn4UUQb7cHxSod4hOC2zb4cVEjlzPnAKO?=
 =?us-ascii?Q?c14SIAjH95P4jCnpSCdxuDALoS/L3l+GMLqpjg4SNIfVNCx4ygpRiWV23ZMt?=
 =?us-ascii?Q?RqJveOVOzVoclDV1tOtOOeZNk3sDGiY2kMnpyfoLYM4Ig6lGYCibRaJ0qVd1?=
 =?us-ascii?Q?dI8vudHc4ilheQNOgWp72LCwF+bW4pzqOMu4f9nEvleJAOk7VZ/LoyvMkx0K?=
 =?us-ascii?Q?+RRvrYSVglWicawj8kbmg0GUb8BsEqU5LL6JiZjI/scISw9vtdl0tlgG9uce?=
 =?us-ascii?Q?fpIuarr9DciEz0pC3w33JFk3UInVikxlzLLvnSQJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afdbf9ef-fca4-4480-ea77-08dd14df172b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 03:44:15.5152 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hJBg2XPaHa1Y7uMIlDdUdmOsOFcM/BeV/Ys1x5etQkBe+IOPbzbuvI6u/2NcZbXLWJzh6nBXZ8mnNWy02KneCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8584
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Wednesday, December 4, 2024 8:37 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Sergey Senozhatsky
> <senozhatsky@chromium.org>; Ville Syrjala <ville.syrjala@linux.intel.com>
> Subject: [PATCH v2 4/5] drm/i915/display: add intel_encoder_is_hdmi()
>=20
> Similar to intel_encoder_is_dp() and friends.
>=20
> Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 167aa8ec4948..0ae026a850c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1959,6 +1959,19 @@ static inline bool intel_encoder_is_dp(struct
> intel_encoder *encoder)
>  	}
>  }
>=20
> +static inline bool intel_encoder_is_hdmi(struct intel_encoder *encoder)
> +{
> +	switch (encoder->type) {
> +	case INTEL_OUTPUT_HDMI:
> +		return true;
> +	case INTEL_OUTPUT_DDI:
> +		/* See if the HDMI encoder is valid. */
> +		return i915_mmio_reg_valid(enc_to_intel_hdmi(encoder)-
> >hdmi_reg);
> +	default:
> +		return false;
> +	}
> +}
> +
>  static inline struct intel_lspcon *
>  enc_to_intel_lspcon(struct intel_encoder *encoder)  {
> --
> 2.39.5

