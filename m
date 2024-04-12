Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1880B8A2641
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 08:12:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA86810EE2F;
	Fri, 12 Apr 2024 06:12:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k3GLg/vU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 992AD10EE2F
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 06:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712902331; x=1744438331;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v6tmClmpPFnsd1+rv/rg/EO3ViDy6gYvrXS3zVK0KiU=;
 b=k3GLg/vUGe95nBYd5usCeevgGOUuBoEd2PBtydNR7etgZ91FKBVisecL
 vfmR4Zw0eDetgy6sjb47v9LY65qJB6Jly9UABQ/Le+ZD4n23a9p/+Kkvg
 r8L0jxT0xUFyvLCMWwy5IE3rymeGA0ZXn8IrVrOGGWuJQbkgfBUU15qnL
 rDT5KtJoBj4ED+qA3xsknt52rCxJGEYUwzzALZR40eKbEWGInzq4IHIVy
 4TUHfm+N53YWhGP0N+Ztfe4wIvC9imMJVd1JTLg5fBllxROlhqCryaCz4
 OgnhACllld/q9oZ83R9WnyZUyrSEvl/jJAHSypD+JIRBz7ovpFSVF881s w==;
X-CSE-ConnectionGUID: wrzeWXuMS2+NC5zTY9Ex/w==
X-CSE-MsgGUID: 70t2ARvQQ5mtxrJggELNGA==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="8513757"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; 
   d="scan'208";a="8513757"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 23:12:11 -0700
X-CSE-ConnectionGUID: HRwh7Dl3RZulUjGN+lzIeQ==
X-CSE-MsgGUID: wnkq4C11SImB1dEXyyR1Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="25794333"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 23:12:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 23:12:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 23:12:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 23:12:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 23:12:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iPo8K2nLi4ofKN67cd54EN1OIA20OZDqLaL5NycgsfMmdgyDHc88qNHcuSFmuvHEA1NNXb3XH/0EKCvfA+Y5tmqi/c2nlA6/VKu7YZgeyO4HD4lpTkg7vn9vZ9UPm6RtexavmE0/vbhEkWnLlT5k1k4ckJ+ikRG3Ev1jMjMz//mUiv85YyC5va7qMtd60ADonI4Xtt4mp8BrO/yswoZEYn5iSIBT19I99LUYkHXiJMFOulR3WUh7e8S9n//DTo9+NLbxqO0UYDcLXb9jAhBAK88NzMpehOMI4tWcmjrZ/VLX8HMHAFa4SxapMOAvI2uAeWxS4v7JmvqiolT0F26/Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VoBc1+SyFuTK7MtlZ0CFFyjQzFxBwe90Cqe2XaLP9Js=;
 b=ETAz6LtXwCR/M+5BX7oCogkJpYDbQdrH8KiTWiyPOSCx24rfyg5pUYpp6RzdLrEm7+jspgh7ZsE9G1Zw9WbAiXLET+kf55HleIuefMInzpD7D0+cO0D3jJyiR38bE/nVDUtWcRFqUHulonatNP2ojHAHPxh2/Fja6xeoOzfmyaFljTHuMNS58gvXu60TkWhq9W5FZJDM1KP/vkzZUzFecCg4LhDThwqCfK7prm8ku9MAqgN3PRkbrp6uqwUtInvT2fhlN/kYiZJ6U3ApWJseUH0E1+qIPyVJFFkZPSvngA4HbA76Xgd93FKzKD0tIrDHHvm1JB7T5OQVcfO5XjuvFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DM4PR11MB6190.namprd11.prod.outlook.com (2603:10b6:8:ad::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Fri, 12 Apr
 2024 06:12:08 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7472.025; Fri, 12 Apr 2024
 06:12:07 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, 
 "Nikula, Jani" <jani.nikula@intel.com>, "Kumar, Naveen1"
 <naveen1.kumar@intel.com>
Subject: RE: [PATCH 1/6] drm/i915/dp: Make has_gamut_metadata_dip() non static
Thread-Topic: [PATCH 1/6] drm/i915/dp: Make has_gamut_metadata_dip() non static
Thread-Index: AQHai9cvOXZfK1Ptv0SEtfF8sWBCbLFkJ8Kg
Date: Fri, 12 Apr 2024 06:12:07 +0000
Message-ID: <IA0PR11MB730777D080B51BD6E4E6FEBCBA042@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240411060925.475456-1-suraj.kandpal@intel.com>
 <20240411060925.475456-2-suraj.kandpal@intel.com>
In-Reply-To: <20240411060925.475456-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DM4PR11MB6190:EE_
x-ms-office365-filtering-correlation-id: f7664a5b-bbe7-4273-0fb3-08dc5ab77b84
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e1l64vztaoqy00Q8NkCog+Xo5s1HwKGBtLLjZQjaa7VmmuT+PEURginp7AgDVrfjf0xiZxaDli++lWN3hrfLMK50BEZNZyOZ1k2JBp9vjHy3fDnzlkl9MSLkCLPtoCxuucvxJa0+B2iI669nxl6dK4la9ji3O8/7Gt3dl9ZBZaES6Ay2/2BN3shj7RJy9LuqlOYjRh7oQhG8eBp1JN/gP5eaZ2bZyqTCQZ7g2Af/85p9icPrgvwWaqZhy9KkHDVfkZcy0K1iyN3Z84KUhM2Xq2k12liSA9vMUON7KlB2Q/y217vD9WzRhHxDCRv2shs8qybgtBQbLqsk4ZfGK/0Ww5Q6kfgLrsXAqH5P6ToZTBkWFzS4IKN2iwLLeUjdYgW+wERxD+RKntOj+XqnG6X/Aep0RB6h20SO9p+W9+shejlt7q09zKHevRce/WKN1wGH0FTNtbQxUUWW/ZsjBdBB12oBs7S1r6O3/5cO+sL9w7YIIR74V6zVRYAS4rWsvpycZU5kjfem5sESY9kRRCF0/cfJR3fSRXHFxSg7iHvXoJGYvLvVOYuNbt/miVCG/G0b3ELsZDpznRkOgBZ/kcemu/1h/H3eglg0lCH4yi96Zy/v3YQ0TY4IoHXtvDFouwOp3Y01f1UuZZpg80IWrdBYvqCtsZvmHPxZhLwyS/vT36xRWRWoASFuDQK8brc4pJxluvr7kWgyKUdqgZQm3yRT9Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Mkmq7K0yMxFEPkui4HsMXPwdgAZ2V8pe0Rs2TNttRNHAjvBJXbYnux88NEfq?=
 =?us-ascii?Q?di2OkzPcW2uoUSaLWfRGcSa5mxOXtjmGU2aNon2TaVqdotQQ1CLSB7/N6EWD?=
 =?us-ascii?Q?29q3RbdNIrfpTTvgzhriUhIdvTvEBsobXrbPsFqTMCyOLAg+MIzvEuSS0v7P?=
 =?us-ascii?Q?B+SO41npAg7q2qLwTLDz6CeyzFXTDgOYIiJ/ttRB86jnnxSUi707KZGqXS4U?=
 =?us-ascii?Q?KNA3oO40T27s48kLyjDkNsfTTFvVC0eDe7xQX7YE82GvNUueoKsqbGeUFDux?=
 =?us-ascii?Q?EG0o1f7tCPAmsiNn7xg1wVZz6ZMUSDm82zVLN41v9Ucmb9VXjkAYEczQ75gi?=
 =?us-ascii?Q?5V5LH1idXfsOsdxu45jwBUVFsjCJGJnUj9jDwIbMkb0UTMAmiy8Vx/LMdAQy?=
 =?us-ascii?Q?IyoBe80ASDjEyuo5JTgtb/EhiQvl1Gj62mxT9Ex/zWihN057HhdyxMZoc8Jx?=
 =?us-ascii?Q?Lg+onIrGJtZCnrk++6m3PsbXTN7JpeZ2WzlvoD4UC4QC9sW1UhWNrr3rKCr7?=
 =?us-ascii?Q?F8uJ9RClvVdwSVJTMPI8TRqhGgDgPCSH7C7fJ/X6dJ9iMqSyud8pU0bNB7g1?=
 =?us-ascii?Q?qDRi+TRnre1vc7CPCMzel0MPNA+Ksxuf9jvkO+PZBehMSjZpJ1MXKFX30Tmr?=
 =?us-ascii?Q?1q7lWNwNECebk4/t7syT5LIom9d8LqbU2erQpQd2thPOy8cQp09RnYOEjtOj?=
 =?us-ascii?Q?+f6eknRXpa5xu2eKSB8vAN6OSORntbdh7QQxJsEjEOL6OkI2jeWrBcHJoL8T?=
 =?us-ascii?Q?1WZWKW0mWcqQPk013kHrT3RqKeEkdovCoyz+292ndbphcBtkqgfgeerwzZxW?=
 =?us-ascii?Q?A+sBH07HUObN17o/MAOQRLL//+kIszaaGzevEmkXWdHv3qurC6xe8mjVwWWS?=
 =?us-ascii?Q?BrLedAj++fbPgZZbJZqXAz/z4iq1hsJIgSHxAS35E5fPG6Y0z+DcwNyHZGnp?=
 =?us-ascii?Q?dvYebMkJadg9+/bGZweNKP1ZiU7+SlGURljNy8gSgag8NgKO3F8Wtjk/MwvH?=
 =?us-ascii?Q?yCvelB9W0by1kiSwpw0JcyRvYlNkjQaU/yoX49VcNh/vSuE5JF1xcvG+44CF?=
 =?us-ascii?Q?oTdsPdVXxYPrVjqPJi1+gSQnXcQLjiMq3uM6MwDUTP/vOVprm6eCfzNmhWiA?=
 =?us-ascii?Q?u/JMREnvVvqKD/l5NJeWRiaGDgxiCJE8D0//kDdPmmUroAYkX6ZPSSQqd2+d?=
 =?us-ascii?Q?RK9qTKuQaY8hIzaxOBzsj88HuyboE8mE9eQH7BQoFKdzyNnw1z+oxWyapzb+?=
 =?us-ascii?Q?ayFQAstFTz3uZ6mmGSAwUAbs5myYQbwtzR1VEa/zbl19QbNIGlhpnMobrySy?=
 =?us-ascii?Q?ym/J/R1W35/TuQRdODkni3W/1Nc9UoIJ4X6mOf0d0N6g3Rh6rDQCcmn5uWIm?=
 =?us-ascii?Q?wIT8B8S4LpOE0nHzxV0vfUcZyzmE2VSxkzCN0+LBR92/AZGVjcr/HepTgf9e?=
 =?us-ascii?Q?TcJy/0kuZiO3aVmjGoF820z/AyiJ44/63NcpTKf+RpNw1mowry+gpKsGzOjT?=
 =?us-ascii?Q?7TlVVlEVJmyyLm/1VUouCBLU3/o/ZDdrjjOz8CPjPrP5O8HUk+Z6p72CB5hY?=
 =?us-ascii?Q?SA89gK9wk9evuXaOSuxp69qGMN8wG+0qwD3B0BPK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7664a5b-bbe7-4273-0fb3-08dc5ab77b84
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2024 06:12:07.7257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uEnMYrlD4YaTTTstqUV6Mwv3/SXvp3NNnfzJVGtNwGXczHUUD7CVJztsxAI7iLJcU6e+xTUNMxNkeNuwJkqTVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6190
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, April 11, 2024 11:39 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>;
> Nikula, Jani <jani.nikula@intel.com>; Kumar, Naveen1
> <naveen1.kumar@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 1/6] drm/i915/dp: Make has_gamut_metadata_dip() non stati=
c
>=20
> Make has_gamut_metadata_dip() non static so it can also be used to at oth=
er
> places eg in intel_dp_aux_backlight.
Can you specify as to why this has to be referenced from backlight?

Upon adding the above justification
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
> drivers/gpu/drm/i915/display/intel_dp.h | 1 +
>  2 files changed, 4 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 163da48bc406..8b105efd4de9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6365,8 +6365,8 @@ bool intel_dp_is_port_edp(struct drm_i915_private
> *i915, enum port port)
>  	return _intel_dp_is_port_edp(i915, devdata, port);  }
>=20
> -static bool
> -has_gamut_metadata_dip(struct intel_encoder *encoder)
> +bool
> +intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	enum port port =3D encoder->port;
> @@ -6413,7 +6413,7 @@ intel_dp_add_properties(struct intel_dp *intel_dp,
> struct drm_connector *connect
>  		intel_attach_dp_colorspace_property(connector);
>  	}
>=20
> -	if (has_gamut_metadata_dip(&dp_to_dig_port(intel_dp)->base))
> +	if (intel_dp_has_gamut_metadata_dip(&dp_to_dig_port(intel_dp)-
> >base))
>=20
> 	drm_connector_attach_hdr_output_metadata_property(connector);
>=20
>  	if (HAS_VRR(dev_priv))
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 106ecfde36d9..aad2223df2a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -196,5 +196,6 @@ intel_dp_compute_config_link_bpp_limits(struct
> intel_dp *intel_dp,
>  					struct link_config_limits *limits);
>=20
>  void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector
> *connector);
> +bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
>=20
>  #endif /* __INTEL_DP_H__ */
> --
> 2.43.2

