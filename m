Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9824D99383A
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 22:29:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47FDE10E346;
	Mon,  7 Oct 2024 20:29:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WkIZ1a6t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DECD10E283;
 Mon,  7 Oct 2024 20:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728332964; x=1759868964;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l5KhPIvahG1zVeCe45jgcqMNfw9izUmnAvfabrVrSI0=;
 b=WkIZ1a6tWQcrnlJx3yWWkPbmO00AWVJWz+8pBAKDkIfbIcrz9cOYHPZl
 14OEnaoXIjuT/u/grGfm1eZCoT60Dws71For4fk8RE9OFvWnOn9Y37D9V
 7smP0SqT/+lqlbI+ORYDPicKxAcY5I9mLOhIMwh3eTft3AycQXDXSEtJ+
 GFQlro15ZV4KgtFsSOUe34t4k4llThmp8Jj1kib5fS2o58W7Yup41/kpz
 sc7E6NRbRdbndbYyYJ9Vf05hBCgEUmTChA5TSLPbIwGMHtEDdhATPyz4q
 jJXQzqQTsBSC6MVNSNarNCXKRoMqLUdM0llwjAGPF9vuYCaTJPyIu8Awy Q==;
X-CSE-ConnectionGUID: WlmjIdEUQtaVEaqZWxrImg==
X-CSE-MsgGUID: TCIFRzvxRiil844oPag66w==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38888213"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38888213"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 13:29:24 -0700
X-CSE-ConnectionGUID: ChFDmKBBTQCsbF0qdhedWQ==
X-CSE-MsgGUID: SlTWxX1fQnKRt4VWmzWlYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="80009888"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 13:29:22 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 13:29:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 13:29:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 13:29:21 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 13:29:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aQ4xLmUE3z6QFHuhLZjgaAdDKkbWH6H6mdxc/or3BNUWOgP82M+al+N9vJ9zxovN6xFfAtNFx63sEbClaD1au4yRo/OKQCyyk6Ki8T3p78i9D40qAzHsJrQn+pRsJu1AgjhX6GB64H3es27+nX4d6z4LzoWbKvu9GUVrqZ6sYn0OmM0ZosQNLZGPRhiNvc40hP1z5pRcqc9nK0G7UOU/tM4Ox6s97V4jwPsx78irpVFmo19aOYRrz7+XqpUVZwmCS3yv2xo4GaWIN/3BSFBU7hQSqzAXoxQd0TPQ64VnEmW86Rz9u653EiwCeb+pNB3s7wyD9sTrQMrTlEFFZX6JCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MtQqFyqZh3KzJl6lVNGSmKKv7TsRZcruDOo1Dmn5F6s=;
 b=nFDR4RvXdncKTirt/ggX4/Zikb3T7m+vpGMcSkyJDW6Xi6H9UW/joyZSiiQpYpSJs64qIj5B6G7H9KkntrkpmYPXBuPm99+irw+V9q1zEYRo0q2Od+M4o5+6U9TfoRSK+/fDhX2RltVRRQralb9zm3n4DWFYCEVuyNlnQuscgMJy5jv+vyudopFrmZnG+g6dlhwd7VfiCIeMbrEx8eWbtZp1Gm/jq1n1zzqh8yDc6wnYaSmqFrisL+7vAP0WV+DeTothi8iMhJpIRsXKqz6Jjr+2vakcTAb38pjA3qs/GWObrxv3amVWKUdaa2Vl8apiiXTAlmE3yd+bVxHlnSpdEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by DS7PR11MB6013.namprd11.prod.outlook.com (2603:10b6:8:70::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 20:29:14 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 20:29:14 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 09/31] drm/xe/display: Delay hpd_init resume
Thread-Topic: [PATCH 09/31] drm/xe/display: Delay hpd_init resume
Thread-Index: AQHbDsJ2H5iLLkbxsUuorJhnlX5dG7J70Xpw
Date: Mon, 7 Oct 2024 20:29:14 +0000
Message-ID: <BL1PR11MB5445F427A49CAAC29B4FA65BE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-10-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-10-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|DS7PR11MB6013:EE_
x-ms-office365-filtering-correlation-id: cd603ca9-94e4-49db-fed9-08dce70eb5be
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?6JRx6BrRUqpbjfiU2rUlxLbxxmpNac4eB65tb407nmCTEDajWqAh2LBAq1Bb?=
 =?us-ascii?Q?2he4kpjhBMF210hSRSoTs/KCrRXrTVtwFcgP/GLuFmvOg6SzJxq4Oyna0nXI?=
 =?us-ascii?Q?fPoEXv1+xtstcz5bbmq15749sSMcD9fD05GFmw3RgKAjPp/n7WojA67bp+VX?=
 =?us-ascii?Q?ksdYb9o8VdighBDFWkXNxcTfzzzTkT60a+DacdhQVJfqMA7rEmZbL9ScV5tN?=
 =?us-ascii?Q?tbL/ONcZbjkGGf1VZMaR2K4t/acsBwMWRxs+g5h/rWhO/USOHa0JVvuD2bZc?=
 =?us-ascii?Q?PdilgQe3jPY/JYtqA5VJV9YXwqRR6WqOkXr5UAaMVWKz3F8uhBRMgr2bYocC?=
 =?us-ascii?Q?COCW4Za+3VnWprsl6IpNnOrwPcznksnU9y+bCcBWiPPSos7TD4SVjkWVQrmQ?=
 =?us-ascii?Q?xNoXZW9Y+gFprdsrTIER3V62ioHs4hyz10Eo8vAhSA5GI4wDpY9uiDWtfXGi?=
 =?us-ascii?Q?2nWIoyDfAHlt8koW9mW03k8C+FQ6wBwQRCTeV2Ulmp2/P8wZ7oOy/ZNLBb4/?=
 =?us-ascii?Q?mfGprUGUzSiOBw5Sutgyd7hCB5zAUxw0JlNp0Il7gJiRQ8hqPSMG1+wrlWTk?=
 =?us-ascii?Q?sac/Nd/nAQDogtKXtUENqht1m0w/4koyCfSBc5nUmKVHpsPDLzWD+7DD6yuc?=
 =?us-ascii?Q?zvlv5LQUF0aHllMlTHFLiqwcpmSp/2oNC9UX0Lj+26dALJKmE89fHi1AdIKZ?=
 =?us-ascii?Q?BN4fQXd8340h3t8zdawz71A2XjCxls75aro3RCV33oxOtFI6XBnPAS/l4FF4?=
 =?us-ascii?Q?hfH5reJ287qynRbSSviHSQAYob5aP1dCgm/SomoZCX9OW0qRjH28IaHLvzGW?=
 =?us-ascii?Q?aMIJsRUFYzXcU57npREo8rYkn2nnAa76wewR3/xvWXIk68EM0fg78nWCmcml?=
 =?us-ascii?Q?K8XZo1No+FzVAGX9gUTaB7GQNr6yGMYZQ2rPKYMUmQRVIM+u988uDH6H+eiD?=
 =?us-ascii?Q?eWlbUrRGlo7OxToB8bj+WGlZmS3WZw8CwpM0LD58yxMy9GrD4w2KKnaueb3M?=
 =?us-ascii?Q?LzfOy5DvScw+n0b8uPrxD/P9Q8KbESWQR7ziy8BGVx4PxBbed9ch0vC45FDQ?=
 =?us-ascii?Q?gB4GANA7/6YjyeqATGhZl9eAaPDrYhoEdOKKiYB0s96rrkoq2FUbkyWAUSb+?=
 =?us-ascii?Q?KNXYip3R3KMOEUWMNaenb62HLA4K54VFBnz7SonB65VnD5IwcHXISxXF6T5R?=
 =?us-ascii?Q?1HUK90jQooHs5bCZzy1/CuRrmX0RdTnnPKjYNfVpjtHP7WZVocrAIQ4DZ+5S?=
 =?us-ascii?Q?p/J9WZppzZAwiXznba8IecXoB2Y7mlZH9ljCUH8q60wGOYF45DuBRnpIlH2G?=
 =?us-ascii?Q?aKzo/5dszX0mPg33CxOErptjkMJW4xw8s0OS/t3yoD7G9A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dol7+Z2Py/5kv9cEKnxf3SV4YPB5dFJLdoGsabwBBYGWx5UkHZkmeZP0gPk6?=
 =?us-ascii?Q?4MVz4/Rs3I7C2OJxN4U6L9blfaex5YYqrOxRYuX187JgJ2exIIKr1iCaqLNZ?=
 =?us-ascii?Q?bZ2i75C/TwJOVc1O8O8/gAJr68trpw3JCHur+5xzKQDNmKPkLDYG9wf+z7aF?=
 =?us-ascii?Q?Q3/MIoIqEjfZIaV5Q2tXr5H2zEbm5/LaLYgLt2a3XRltbcG0EJ+mPUNb7I+A?=
 =?us-ascii?Q?YTTtoq24ga8MbqSWxH/BJB2M+jMeFK1zObPGr6lJrp8ejZrInNZdkLs4S3wQ?=
 =?us-ascii?Q?Xv4Z2cKNGKKL5c1eRNvddStZ6cTUdhbjFoqkY+3aQkZxoXp5yXUHtlPm6CRP?=
 =?us-ascii?Q?2jZMrwI+qmLWEg+XH6RsGiJek7dE0yKn5v6rn8ktycotZSBDmDVe1NxZztPq?=
 =?us-ascii?Q?7v8bmD1+sosFTMpf3i5nRuHm2/amJAGjv8Lfmf4eBdxNx0FZ0YxtHa8by/zD?=
 =?us-ascii?Q?9OonPmxTMxUBPOpHTwprSc7LRg9wpID+lrANvnqN8HHSE9SLlhPTPyFfuDfF?=
 =?us-ascii?Q?p6wUboUDSOVAnObjUGqBlCuImtu52WqOLgJEpjIqUDe7Tr7v6lvEm/emsaFK?=
 =?us-ascii?Q?931V+g+dcST3dfufc7xW7PH0UmI1/a7ATP5YQPafSDbcoIywFhN1ahGkuwFb?=
 =?us-ascii?Q?ANDqXRDeBRvAQxL21acJUQifrG0bfmyJyo9/TJetxT0AkAXVtMJdUfTjRl9G?=
 =?us-ascii?Q?GvUMZ7CgtVI6gkr6+xUfREF2D3iffhn41oDSOdshHTLKvPPVw2UeOj6ereNG?=
 =?us-ascii?Q?W6SS8xfeqpGYvaP6nXl5dgDazYph8W8C/+kc+L4HTVMhPvUzrl3OaPCNDb8U?=
 =?us-ascii?Q?a4FdazuRHcPwL1qadFa0BDhFsUOHDkfORa1OzmN6xYNWBiqIqABu8HLV7wAV?=
 =?us-ascii?Q?6VE2y+eprL+i3ecVDku1YIA8ZmcuGr8E1trkvszxp0aoe+s0x+Tk8/eVwzLe?=
 =?us-ascii?Q?FjmCDYjRXDO8b5uElvhyEyErO4fkgOuVGUek/RN01a4d4CWEPU3FrBoB3QLs?=
 =?us-ascii?Q?NVbcfDHXUCfIW6WJt7TY8NxDUiFB4mawWJlk6EwDbEPTeS5qoa1K3EfQh5rd?=
 =?us-ascii?Q?H8y2FaLeMQwC73BCdYlqyginmG+DJb8oe0DC2K4sgVFnG8nADa0qebvyJ+iu?=
 =?us-ascii?Q?c6wr3qCsZuCKjHRqAKKYFPpHOzZiSvkP+qNeEnz7nG/kfxRjo0dpK66vwOXr?=
 =?us-ascii?Q?2vMUgEhwuDAXnwII7EV6R9N6SfQsavCyP7JBE1YzBTiIXeylNsZkAepi6SgJ?=
 =?us-ascii?Q?bJhO5hqnwIFUEP7kS3V+f5OYo4a2uR/QtZWDOgX8LY+91w+DZZCf1pLDJjI1?=
 =?us-ascii?Q?p62v0auEAGIMVkI3mcfotrSqFLzVg8Gmeph/yVd3Cs+CygWS6YAdhjCHUIVf?=
 =?us-ascii?Q?08rFV3IhiPqwrPzjgv18klaDhKBdkblbvmbDXAx3MPdkske/sYGBAzFm4wK5?=
 =?us-ascii?Q?JrXFLAK7kG4pUtPw0lZ0xUQtor/nx6PjtK6WNe4YccPNJnO6IAnrLzngoSum?=
 =?us-ascii?Q?C+3Tg3yPpcA9oS++83mokf7QPQMzUVZdqYMDqbpeC2wtW2EEDVRmGoo68C/W?=
 =?us-ascii?Q?vWjPgwz7MdUlAi5AXN17yfiztP1/q0fwYAoQMcdN7P2yJ5XmH2jmDvIXqm98?=
 =?us-ascii?Q?vw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd603ca9-94e4-49db-fed9-08dce70eb5be
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 20:29:14.4264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HTuCvFPC6TJVLCFukM6hlcMbr2DYaS7H4HUvroHYNmOHtSp1Q3sNyPvvoE/tvO8jz1VbmKKqYgvST0eqPzr3M+7a/hZAvs/PITZbCiwbsAE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6013
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

-----Original Message-----
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrig=
o Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 09/31] drm/xe/display: Delay hpd_init resume
>=20
> Align with i915 and only initialize hotplugs after the display driver
> access has been resumed.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index bc5c00437ab3..be431d9907df 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -418,11 +418,12 @@ static void __xe_display_pm_resume(struct xe_device=
 *xe, bool runtime)
>  		drm_mode_config_reset(&xe->drm);
> =20
>  	intel_display_driver_init_hw(xe);
> -	intel_hpd_init(xe);
> =20
>  	if (!runtime && has_display(xe))
>  		intel_display_driver_resume_access(xe);
> =20
> +	intel_hpd_init(xe);
> +
>  	if (!runtime && has_display(xe)) {
>  		intel_display_driver_resume(xe);
>  		drm_kms_helper_poll_enable(&xe->drm);
> --=20
> 2.46.0
>=20
>=20
