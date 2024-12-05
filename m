Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 424D09E605F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 23:16:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D816810E065;
	Thu,  5 Dec 2024 22:16:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="alu/rKHV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADF8210E065;
 Thu,  5 Dec 2024 22:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733437012; x=1764973012;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CcAbSbQbt7XyUGcF7863vEAluxmd7VLXZhlgZwPcWBg=;
 b=alu/rKHV4vz+POEARrNumvvSODqua8w7iO96+jhw6sR7eH/cWFJDiENV
 O1h14VJOYpqXLoIXx9E+YFx5qkmP6fLE4MeiZC/PNLGop4aoJnVrs7zLd
 sWj2IV3eYMw8y/3EIpkdW9XOJbHsV5QnocVxOz9Vz2DGD6rb6bVUgszo/
 HZv4mAucx3uvI/qDjzrffdyDeLo5X2a3L5hrKdMssRy8c0d1jZ9K9xAEK
 6bC4xvAIbNAYqU++4r2cx/qvsUwkL0mi3x217aJlo4K0KDj7DMA9hAw9z
 pAgH/iWPGLliAzktztqvOZRZy3VGt7QxnUqGk9a6JJIyewfLFrbxxLbsU w==;
X-CSE-ConnectionGUID: NVqgb0mRTYWdEu4m9DnsiQ==
X-CSE-MsgGUID: yGDV2fY4RvSWUcHLKkb4UA==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="33659183"
X-IronPort-AV: E=Sophos;i="6.12,211,1728975600"; d="scan'208";a="33659183"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 14:16:52 -0800
X-CSE-ConnectionGUID: +nDW+HoCQgmBTz5B19TMiA==
X-CSE-MsgGUID: cAbGmBe6QAGptJanOR013Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,211,1728975600"; d="scan'208";a="94707032"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2024 14:16:51 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Dec 2024 14:16:51 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Dec 2024 14:16:51 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Dec 2024 14:16:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g/0k6oqMtNgOEb+Jgwv5q6DVgZS4euQCGKajaVGKxVptkJMbKi3/se8fLqIpS9980K+nsY2V4vWj3WSxAL/TuPC+1nF+yuEN6NnQ4iyb+Wp8sSpJfqsijb1EUHCuOaQ7B8B/MB6qH2rYoZf8NkdkvZqnXEpufH7WcAV4tF/viOLRFPpuekFIUboupIRCKc2fGaUAsbS6EuaNotdQaL04Z54lFFmbkWB5W+IYOonw9HYA0YqiAszRhHqyxj74TcO/xbGLSxr6w4jDjFZy4iPLFRzSKpsryf/pXjcQmGaQToRglxJq67qqNoRVdA+xLBA0tA06FdA4Y2qzzfZ1EOhO+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aLFcW2LyULWdBMhuAGQJf7hIlXwC1DZK9odNBd7Af/E=;
 b=hHhNwt09PmncQLQIIU7oG5N1Dn0Y8W5Kg9qk6fgjGrXr+bnptO5FbEcRsThvJ7isN54yFlCv4C/+daLvCg9AQhs+a5BP9ZAhHTSIZKuV8qz2a6DqauBNczBeBKNacCwZtToAyTdWTOi15SKb4zXRoh05rAXh62b52gETTcV0+lpUuDpZqGuZcq6mPqYCyjwheWgX9AS64pSHHJLm8ZzNaJHlY2M8Pv7kZl8SEHnuqNoy5cG2DycFs/1Bnj8+8/jdfcVtQCcYUu6q51DETIYAgFj+vC/5poWmDRimFtt607AjNAuwAeeohl1QYkDjuJKmHyp5SzACCDof1YVlOzazOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ2PR11MB8471.namprd11.prod.outlook.com (2603:10b6:a03:578::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8230.11; Thu, 5 Dec 2024 22:16:46 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 22:16:46 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: RE: [PATCH v2 1/3] drm/i915/display: update to plane_wm register
 access function
Thread-Topic: [PATCH v2 1/3] drm/i915/display: update to plane_wm register
 access function
Thread-Index: AQHbPAh1FTu6DOGco0WQLxv/OoFJqLLYTosA
Date: Thu, 5 Dec 2024 22:16:46 +0000
Message-ID: <DM4PR11MB6360C8688519445E7CFADE8BF4302@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20241121112726.510220-1-vinod.govindapillai@intel.com>
 <20241121112726.510220-2-vinod.govindapillai@intel.com>
In-Reply-To: <20241121112726.510220-2-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ2PR11MB8471:EE_
x-ms-office365-filtering-correlation-id: 19cfa077-d84e-4cb0-6ae4-08dd157a81df
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?qcJ4qONym89ne1CEDWypvLSDodYouOETYNmg5yN8Fg1/TvTSByvFml9jDhoc?=
 =?us-ascii?Q?f6g6yemizrdHJekRnRll/6ZgacVi4N6ty/S1d6IAud8/S+Iw9nSbaIfLgzND?=
 =?us-ascii?Q?yvaHNYAjT9/u46L7bZqkT15eVyTHsdQZs50SgG5MOYZft33kiloRltme4urK?=
 =?us-ascii?Q?n7JiOCBI6hryBaQqDupkQhfLG65OBySDJRyArThnYAJ8XJYN0Lwv5M8IRIKg?=
 =?us-ascii?Q?kWgCgQCk4tb+q+kHxP4745s4Av1/h41hoTuikK3Ts2ruePe4MQ53qkGbf/Ky?=
 =?us-ascii?Q?3z+ZvJ5xvAJXwyrJca9LVg4DtjD1NTjDZo1Jj94xDBJuhqHBk0njytuOaFEf?=
 =?us-ascii?Q?wZ58FDatQbCW89ABcxKo2TkXatocNfNYNOCy+Y5VvczrnHBnHGKNV1QuL4fp?=
 =?us-ascii?Q?Bk+A1UocB3U65OV3C5cvsGmGHrltyjhRWW0DqjiGuu7RhmwPs8e3zW3AycX2?=
 =?us-ascii?Q?8rhnYD1HuJcQHqPn41yo6Iryn8OuqvnlbUXySdh2MBu0F62ENhRRaKLO5EYh?=
 =?us-ascii?Q?ooB2zyiznFbhzPn1PWF/w6KkzWQhTjmTys9P+ONWFd54u89BYeyCoj2DY4yf?=
 =?us-ascii?Q?IDEi3vUQ58IWHtWnCbKwQXC75kpxc3OGvfJfVfDokriqADmuyMxIih7MZF2v?=
 =?us-ascii?Q?+eRP7wNIRN8M+Cy5rnE6qSimwS7drJXDbtHE1JmtEiIgW1EZYnc0m9pP7aaF?=
 =?us-ascii?Q?dHxD7fk0q2Y4naRkTwG4Ux+YUzqtRO3PeE7Lpj2vAnMhIxHWZZ6AIK462P9b?=
 =?us-ascii?Q?cmtN3Tutds/WAVqZGJ2c8mculVHE37BXliuyY6hQoGvUC5Inb1ggaM+qRm9d?=
 =?us-ascii?Q?LDQXXs9c93FJEJMaSDWf68/0bj7AJW/FBJ3s06THk8VAX3DsFDids4VA9rQB?=
 =?us-ascii?Q?KepKD7k3hyu+cUjtDW4X5hO6aT7PecJHKFcCrXQz7Lf6uSCLeHGhe4WE4jsz?=
 =?us-ascii?Q?jY30F2XtP4WuzazI7buUHD7XJ0WqHFTY9na1rgRKF5zZZaSuYWkNTa4jF5hi?=
 =?us-ascii?Q?5XGMxi5greqNmQgWNDe/VRNYneBc4h3cZMvWh74AqkXY2FCXhTKvggBLPl/K?=
 =?us-ascii?Q?W9Qd9IlQ4NtmEbfRfoHGqpb5GOzcYniNeJ2+Y3Y+VbN2HGjmAu0cxrMokfqc?=
 =?us-ascii?Q?ibwygfBYEIX8BwaNrRC4FlleFuFYwbZfqxEb8kUO310THtUlBk2nPJ7e6ubh?=
 =?us-ascii?Q?F+ZpVmbCw6mODpEcvZnTRS+xoeODTxdFrYFW2+0kNGbCs9BxERtTQoKJ4JBW?=
 =?us-ascii?Q?8NJc08UJq8K0GGLkCY6Jc6/PLCACOltbpg9UePv06nLpP65fVHufLA0SPQl/?=
 =?us-ascii?Q?PU4MWo9xeTSm8Enrru/7k177d6JwqTCZFwNsrCAr0nSCXPnkTWBhIozOhORR?=
 =?us-ascii?Q?PBpW/IZ4zgrk3jC+yhTSr6ILCpDu9f/U61haz8jfR7GIWIZ3Dg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Gm/RouNpo57HLt3FewzUbn63Mc0EFpPSmCSROpiou9zNlVXF86xe+W+nQmdw?=
 =?us-ascii?Q?ZTf1h3+35pNA7gROO1D5PASrR6JWcQtv8h3tmtFY9HLdlzeLHay0NGBX/qnn?=
 =?us-ascii?Q?bnJnIc5v5DtXXxph8yDrq7GmRM9EdqudCNAHm/KeHpLqB4DRqmOS+GJEmtat?=
 =?us-ascii?Q?X25srzZwDIdetBJcs36nOd9a2+2RmGxwSXYeAXCxarVGXXMBxnICdp8xQRkK?=
 =?us-ascii?Q?lHla84CtigUXrYmYo+hfUnNALKLMkY0RstKXQUdjGzUhzI8Zv/SlW8iV7pSA?=
 =?us-ascii?Q?tmcdr4dwc1tpiB7yrpZKBYqxlcysiK62I2bIpCqZ414ZVU2PDc4miWv78U8K?=
 =?us-ascii?Q?/rXg1Kper3mIInUcZegbNejar8Axktddh7nIN4Gy6rUgJJIQMNSTw5S/Pk40?=
 =?us-ascii?Q?DwUle+TbRrGz+A1nGEfuCRO/d/HuIo2C6Uh1HNRZXK8jqw9t8AF8Fj3Gw4ml?=
 =?us-ascii?Q?LLPGuHmllcltkUbLZ+3yZOCjcGLFF3IrEKy05Js4E+q4M0nk6nHjZxXyL02e?=
 =?us-ascii?Q?4jJclQ0rX4W1YeMT9eHhw93EsIzpysF0FgHYl6DKOt4HhjFgedJKDh/hgWBK?=
 =?us-ascii?Q?l4n4P9D1zAM1mhacUq9IBgAac4L61xWyRicUtxd9c/3qMAJlZqb8ArzFfDRG?=
 =?us-ascii?Q?f67jllhiZSBoIH012Bi1QPkesOH/ptzAb9wRueW92GAeQj7rJULYLzF9ZJux?=
 =?us-ascii?Q?uEyc3Ow6ExUqKq2ZpPxGDW2+C5y/HQpY4jH0k7p9ImjyUncj8adPlbMgcwXH?=
 =?us-ascii?Q?pQUWMhyJo9/32QAuHXVt4py08lLwtFM1uITzsKNy/H4LboAkF4i0TjEVYil6?=
 =?us-ascii?Q?cgD3xWdXJd3vsD4u5iZmqhlGvMbikR3vP/yeCOG6xvEPkyMAYNJngfB4lkjZ?=
 =?us-ascii?Q?Igax0f8kNF0So/5yUZAKxb7OOZ6IQqeM1BAROgxHj9zb9n6yXT5fNyJgnM5C?=
 =?us-ascii?Q?6oDUHM5voiV23Lc/0Y3BzAxnlrrtnZu9C8+RTmWlT5mNr0UB85Pm7l3pC82C?=
 =?us-ascii?Q?u/gZ7NnSySqQH/ui8Qqd9EqwqnBAdKE0GiIJNbnOz675MuJaYFw4xG561sf2?=
 =?us-ascii?Q?KIbPhT3p5n9tCfdmsbk0FTI2VCxWkj4NIiDxrCC3d9wQdqSp5s/YXZ3XvNrq?=
 =?us-ascii?Q?9CVur7UcH6zUL5HCV21+92Oo8paBM+LpGZqohDOJiIPIbfdDcBUUCIbqUQLp?=
 =?us-ascii?Q?S3yqhOgcZcrFZIYP5+Ka0dHyC8zuq77I6LKmRQJha8WP9I8UixK5m29DOXyX?=
 =?us-ascii?Q?UG+/2sEXJBUFfC4fQUfBo4GkKf+sCwZdkfTYtgDEZaVZ+ryl/h46894HEK1M?=
 =?us-ascii?Q?seIP8qp4OavFxcC1UJLDxorTRUMJqCqU4lezztVu2EbhFMzd7892EZZNo+1T?=
 =?us-ascii?Q?Cha/Ux9Wg0/9uUbfLnkI6E+79ueMDOr1HK5cvcs9e6IHBMwwMMqsirYq8D5O?=
 =?us-ascii?Q?KwQc4IQEFEC27GSJPGcGe3dFq+g/RET7tOypViCiVSGpmOgnBFvK2fXQekJ3?=
 =?us-ascii?Q?H+0bGZa6WiCXr2lDOMP66bFWqVul70TyE4t3hiavYO7lqJtzT7qoJGL4WrrD?=
 =?us-ascii?Q?Z3qRRd8DrRMJ8kIN+yuls2ZDE72KUuAGI5Lw9vYU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19cfa077-d84e-4cb0-6ae4-08dd157a81df
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 22:16:46.4950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CbdsqfJaNFdS/pnKqdO7xNJcYTeZqnSYkaN/nMM+O1TSJZZqmdU3nb1HZlFUuuQMFcNqP2pI2dOC+BnpoBMcvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8471
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vi=
nod
> Govindapillai
> Sent: Thursday, November 21, 2024 4:57 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Syrjala, Ville <ville.syrjala@intel.com>; Saarin=
en, Jani
> <jani.saarinen@intel.com>
> Subject: [PATCH v2 1/3] drm/i915/display: update to plane_wm register acc=
ess
> function
>=20
> Future platforms can have new additions in the plane_wm registers. So upd=
ate
> skl_wm_level_from_reg_val() to have possiblity for such platform differen=
tiations.
> This is in preparation for the rest of the patches in this series where h=
w support
> for the minimum and interim ddb allocations for async flip is added. Repl=
ace all
> the i915 uses to intel_display in this function while updating this funct=
ion

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 32 ++++++++++----------
>  1 file changed, 16 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 1a4c1fa24820..7c1c491c2fe0 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2927,7 +2927,8 @@ skl_compute_wm(struct intel_atomic_state *state)
>  	return 0;
>  }
>=20
> -static void skl_wm_level_from_reg_val(u32 val, struct skl_wm_level *leve=
l)
> +static void skl_wm_level_from_reg_val(struct intel_display *display,
> +				      u32 val, struct skl_wm_level *level)
>  {
>  	level->enable =3D val & PLANE_WM_EN;
>  	level->ignore_lines =3D val & PLANE_WM_IGNORE_LINES; @@ -2939,7
> +2940,6 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  				     struct skl_pipe_wm *out)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
>  	enum plane_id plane_id;
>  	int level;
> @@ -2948,37 +2948,37 @@ static void skl_pipe_wm_get_hw_state(struct
> intel_crtc *crtc,
>  	for_each_plane_id_on_crtc(crtc, plane_id) {
>  		struct skl_plane_wm *wm =3D &out->planes[plane_id];
>=20
> -		for (level =3D 0; level < i915->display.wm.num_levels; level++) {
> +		for (level =3D 0; level < display->wm.num_levels; level++) {
>  			if (plane_id !=3D PLANE_CURSOR)
> -				val =3D intel_de_read(i915, PLANE_WM(pipe,
> plane_id, level));
> +				val =3D intel_de_read(display, PLANE_WM(pipe,
> plane_id, level));
>  			else
> -				val =3D intel_de_read(i915, CUR_WM(pipe, level));
> +				val =3D intel_de_read(display, CUR_WM(pipe,
> level));
>=20
> -			skl_wm_level_from_reg_val(val, &wm->wm[level]);
> +			skl_wm_level_from_reg_val(display, val, &wm-
> >wm[level]);
>  		}
>=20
>  		if (plane_id !=3D PLANE_CURSOR)
> -			val =3D intel_de_read(i915, PLANE_WM_TRANS(pipe,
> plane_id));
> +			val =3D intel_de_read(display, PLANE_WM_TRANS(pipe,
> plane_id));
>  		else
> -			val =3D intel_de_read(i915, CUR_WM_TRANS(pipe));
> +			val =3D intel_de_read(display, CUR_WM_TRANS(pipe));
>=20
> -		skl_wm_level_from_reg_val(val, &wm->trans_wm);
> +		skl_wm_level_from_reg_val(display, val, &wm->trans_wm);
>=20
>  		if (HAS_HW_SAGV_WM(display)) {
>  			if (plane_id !=3D PLANE_CURSOR)
> -				val =3D intel_de_read(i915,
> PLANE_WM_SAGV(pipe, plane_id));
> +				val =3D intel_de_read(display,
> PLANE_WM_SAGV(pipe, plane_id));
>  			else
> -				val =3D intel_de_read(i915,
> CUR_WM_SAGV(pipe));
> +				val =3D intel_de_read(display,
> CUR_WM_SAGV(pipe));
>=20
> -			skl_wm_level_from_reg_val(val, &wm->sagv.wm0);
> +			skl_wm_level_from_reg_val(display, val, &wm-
> >sagv.wm0);
>=20
>  			if (plane_id !=3D PLANE_CURSOR)
> -				val =3D intel_de_read(i915,
> PLANE_WM_SAGV_TRANS(pipe, plane_id));
> +				val =3D intel_de_read(display,
> PLANE_WM_SAGV_TRANS(pipe, plane_id));
>  			else
> -				val =3D intel_de_read(i915,
> CUR_WM_SAGV_TRANS(pipe));
> +				val =3D intel_de_read(display,
> CUR_WM_SAGV_TRANS(pipe));
>=20
> -			skl_wm_level_from_reg_val(val, &wm-
> >sagv.trans_wm);
> -		} else if (DISPLAY_VER(i915) >=3D 12) {
> +			skl_wm_level_from_reg_val(display, val, &wm-
> >sagv.trans_wm);
> +		} else if (DISPLAY_VER(display) >=3D 12) {
>  			wm->sagv.wm0 =3D wm->wm[0];
>  			wm->sagv.trans_wm =3D wm->trans_wm;
>  		}
> --
> 2.34.1

