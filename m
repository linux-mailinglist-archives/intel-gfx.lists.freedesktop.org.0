Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B8F868A28
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 08:49:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B737510E88C;
	Tue, 27 Feb 2024 07:49:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MzW5dWSl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F34F510E88C
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 07:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709020166; x=1740556166;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+jV0xID+Bsked3Vqibq8DEtU6YbCLqSX8i3DsKRIr54=;
 b=MzW5dWSlSlX338nVQH0lz7lfXtxlRHvzmhp0MIkoYhN1hmeB4pczqdPj
 sYoL+iLElx73iUADZpxxEgEhf00oQWl6yfuTA5oZ43EA1TUCJmocgsd54
 7Nd204UyvQTRtlLpwNmQ0hM3djGiGOkd+Bc7+O9dVA+0DrlHxcBNkErDZ
 vc7nvru7JdNEvAAkMFOkgVIFSGq6RxQYBXo04pK3eXCG1lSI8psFGaUS/
 23jvKKs7y+HEkL9m9LOa10m+NSDZx4TJOIJE/KNmG+P2joGGwEvH2mhHr
 v1thnaCplEAP52T+8I0UJ5zgoVUPxgOOGew8nz+dbwlrqDFBybF/oW6yX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3215155"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="3215155"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 23:49:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6983370"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 23:49:25 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 23:49:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 23:49:24 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 23:48:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jYDrJZlG5P1xdWPnjc8NREhaLx4hT1tMBKU240V/XiAA2KnuRh317ZrPwVuoAe7InUqZdg/gbmzrz8PVs4624HOogSC73UNz6TwrZ7t8KCmQMXfWAkAzXtZYZ0zK6ja4tsRVNwPdDy0KzoJVSMDDGzEk25DN2lW3RZ7Z0dvgvmOxrfz9SVWEaTpWpnDJbMKJQR6CKVSzlIOOte493BdMikl3OeuipfGxAGW8FhoIOiFnbPbTf8kVnrWeNHuTJsq3Id75oEe4rHfUJLpHyXvGB6H5Ej20BIwjRKGjNLOju2KtK5s55J8GVYZUrFSH+KHjD7pxwqzu4E2YVT6Mc+BZCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Bmdcpr5vTSMODcUlO6Ad5daMtU1bLw65eYlw4jRlUA=;
 b=NajgcW4nBr9SET7C6SML4txh5dyDEMnaztQsgDq5seUTb0e+eLqlYon+Ueo34zCbZ/AWTsI+TJLQ8iT5CKIAqA+w+bwFHROEXWSjo314rzDFssmpGm0FPqK7kTqtZOh+gyQ6GiNYd/eUg1sKyz1wyu196pQtZC6l3kuW7qVeKqSVtGNYKqfH8REN8V6hpLFAQJjao/fu7JGxz0RdM0XlAy5bqtWi/2kEodB9L55JnhUdniSNXTpXpjr5K31hHc+WlDAzf+4Tm529n1Tj07pZBOQPt20ZNdgiMZfG6OMtvT0f77GZ1tx27Jxx+lE1cRnzEDtgd0/RnZNppsHAIIkj2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by BL1PR11MB5272.namprd11.prod.outlook.com (2603:10b6:208:30a::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Tue, 27 Feb
 2024 07:48:52 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7339.024; Tue, 27 Feb 2024
 07:48:51 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Hogander, Jouni" <jouni.hogander@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH] drm/i915/panelreplay: Move out psr_init_dpcd() from
 init_connector()
Thread-Topic: [PATCH] drm/i915/panelreplay: Move out psr_init_dpcd() from
 init_connector()
Thread-Index: AQHaZbwq0e7ff2VwCUi7Fzx92ZlcHbEc7DyAgADq42A=
Date: Tue, 27 Feb 2024 07:48:51 +0000
Message-ID: <PH7PR11MB598187F683C5533A186BC944F9592@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240222180824.3634193-1-animesh.manna@intel.com>
 <8734tfm82c.fsf@intel.com>
In-Reply-To: <8734tfm82c.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|BL1PR11MB5272:EE_
x-ms-office365-filtering-correlation-id: ef556388-191c-4489-c2e5-08dc37688a68
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BXRk9DR40D3HrEgA72IrRcAWFWYYkeoDTQwscEjquvi/sqiti5RTK/t7/O5+cBCrL4woBm23lE3gkKEZznyCrZfYzUvX3n5OJfDkZjznj7o+ej1pb8Egyz/z9RVASQLg4JbV9KvCaFdvlVwg4ydIy2s9GfZwt9CD3YXZS7vFF1KNswTKHsrDxU0NMmJmILAf8ZqmziObfw3Py8yzObzR8WxkA4MfJnDdPgqdo6zHqNjdhrH9gtff4WcoSBL8X4E7HOk+SXg7uvjVL1x1LWQuDuaN0w/H3bE+vZcCGCvjkuFZG1kpTv3p6RJZOwkzW6/7Qwvk6DJgwnWtGlmDwAhDjVn/yAo8g3b6pydP59FcTaaZWm1XNnXiRjAZPuu0RYAF6kDSgyaEs+xBDsQakU4Y755R9iZe8ZcaRWBAOdykrMtGB0FTnwl9tVW7X/5DXEBlj4VIloEef3HuvmoGiVPrE4L1s8HNIUb7RgDdS59oLHhbXJMhMKGcGpY2FJ/F1Qf43iJuwdZXsIoKXyBJdv2SFrUTFK8kjNT8EAo9fLKKRdmU/l204HaXwAeF2v2UN85JvahGs2XeIm2zrxSaQ4eIWL4DflHYe/Mx5W1g5uZCDsKgCNeQvh7zsyL789eDL0MhDlRrkrHrK+qVJWdflnm81eONOnE9+o7WPlEILp6IitWeJBJHdY7r4qI4WOcDrJTFay5rKJp2w2XUWgG4TxUsREipOmUFD+DfOYSLG3NeMsA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0NqV669qvspf6Q0IERIojJf8f35rKcl3d9mHma+A8mgsFDHwly4FZrYpUA5h?=
 =?us-ascii?Q?Gc13Xxh7/ISYTnFDnfd5MEMGWLslIVqQMfjOHRcLzsomGx9d0VT6cb9E7NL/?=
 =?us-ascii?Q?x9k7Qkjz8wbiZa3gJeWtLu6zcxfQb6+QwsvDhfZbKmheVC9pBMBTX0LBYCiM?=
 =?us-ascii?Q?FNFy/X3Ij+3FcdH5bEvIr1XxfKwLmq04uETenfWB+8GPx7ctbHcp2x0GIUpX?=
 =?us-ascii?Q?MOISfa7co9Kd2bMVisYU57WCuFhT00VYm0d+m4OgskMjSgFRG9Eflxchl3o5?=
 =?us-ascii?Q?JfOUm4Icu5Nc1cWKSQOK+pkkehT52TUypjpWY/TMW00IUjl/cDUAV/NUFGRq?=
 =?us-ascii?Q?fk+nAbGrrcBLcDKKLeDLdPNu8I3PDxZBSFDYBzPfifUj+KG8Wx0v4xpQORHF?=
 =?us-ascii?Q?k6po1yHIyu9oMKs3O4fMRU7A+KoVKm0uqPhCqrL4+LdqixbG38ScpkpDHQNm?=
 =?us-ascii?Q?AM9o0zehx7Gw9rZF87zLMttikf5Bh7P7KwxwCAfaZkYi34HjIBJIhozhi9yA?=
 =?us-ascii?Q?zSQlllSkNgb9zu6N810Mo2Ins41OLMXGO/jVxIHI0PzpLnoPBmXjitOi31uV?=
 =?us-ascii?Q?gjX34K7++bQ/2nXlxxCPq/23DuCsdzTgHv3TabCil33ixTIfe31ynk+I3/LK?=
 =?us-ascii?Q?lp6ORIzyImNREQHFY44dyqE20XvhEV3k4P9A68FSpPFTU0Zon3fN0jy628U+?=
 =?us-ascii?Q?Htf9UPnT0levKP1QOgNsaIcw1JpqfZCbuPpbTSa4EJo5HVb0y+jz/uq86G4D?=
 =?us-ascii?Q?eWM3DR1erl0jOxSojx2EkXEOSlUAS9/f0yyK9H5hjqhxEOTLPT1mAAziT475?=
 =?us-ascii?Q?eRE4yrvH/aGfUjyk2/mvCc9YJzTFuMlrV5lQWJp4uDwozACVnJoGuvCw/H0a?=
 =?us-ascii?Q?Kk2OsMThFqIY9yFsycVmfz9IkUjedAGEsdKBcaZ/VOtUScGKGFIbYTlbB93u?=
 =?us-ascii?Q?mE5jbfn+lWk+66AoD33fjcFU6E+s9Jw9+pnylml5IKmnSHnLzu+p+b0GtpTG?=
 =?us-ascii?Q?Az+nd80gkolIkgJbgUSqp1Fakk/gRrlqc9x2GSOQ8091c8OknC1G4fp0z7RR?=
 =?us-ascii?Q?n2hPpsAJmrdC/Of+TFp8yJgXKCL+pl3TyEO253rbD7cbZrIJJAVD73GIDyRF?=
 =?us-ascii?Q?g3zGAtYaWhzZ8/NtdYiBdHk9x2ajvqU3qDI9jR4f90IJryOCXoCwRbs6fsiB?=
 =?us-ascii?Q?p5qhgnHU93UpqmmMrYKwOaTZfjQlgXoVnzLIeznB7awNVjBtQXKi24FxSHz8?=
 =?us-ascii?Q?6k4lWK7CqBbEVKpVLmU4cGvcG9HXe4mEtQLOFfUAtmOHwq0eM0d74mkxZNNG?=
 =?us-ascii?Q?klqDf2UtXKZ8NBJjYdJq0UjXKh6GabaCU4AuNex/qG4UKrszcf9gMozSwwzY?=
 =?us-ascii?Q?dQh+pj5FalAgywnA2yw4D0ylCfY6ObVQRuHYnjAwlXaWZBuinv39c9/QpItk?=
 =?us-ascii?Q?iyfuaTrPkrnA1pdIqOCs49MRICDNsTdSNUs84JtSliD6oqTo0lhR+RHNo2nx?=
 =?us-ascii?Q?9oo/gZ5/76IpB7Lq3s5OKCs9Byo7PjznFx/NJ8iRVmm//FWJdRiUHd3jJDEw?=
 =?us-ascii?Q?M4bGQty6ax0qDrz695VGNsvPC6VIk14GGlUl5Lk1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef556388-191c-4489-c2e5-08dc37688a68
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2024 07:48:51.7379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0fnirzBuoDBn5Tmk7PkeHXQgxD/Uj2Ymvq1ImdEZ8awfXtVk74gIP3DZJUQ6AbVRXPL0gpLKlQrEseXyFEyU9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5272
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, February 26, 2024 11:17 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Hogander, Jouni
> <jouni.hogander@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>;
> Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH] drm/i915/panelreplay: Move out psr_init_dpcd() from
> init_connector()
>=20
> On Thu, 22 Feb 2024, Animesh Manna <animesh.manna@intel.com> wrote:
> > Move psr_init_dpcd() from init-connector to connector-detect function.
>=20
> Why?
>=20
> The commit message *must* *always* answer the question why, unless the
> reason is completely and utterly obvious (e.g. don't need to say why typo=
s
> need to be fixed).

Agree, will add. Thanks for review.

Regards,
Animesh

>=20
> BR,
> Jani.
>=20
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c  | 3 +++
> > drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 217196196e50..4553e1f5f1fc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5709,6 +5709,9 @@ intel_dp_detect(struct drm_connector
> *connector,
> >  		goto out;
> >  	}
> >
> > +	if (!intel_dp_is_edp(intel_dp))
> > +		intel_psr_init_dpcd(intel_dp);
> > +
> >  	intel_dp_detect_dsc_caps(intel_dp, intel_connector);
> >
> >  	intel_dp_configure_mst(intel_dp);
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 72cadad09db5..6927785fd6ff 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -2883,9 +2883,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
> >  	if (!(HAS_PSR(dev_priv) || HAS_DP20(dev_priv)))
> >  		return;
> >
> > -	if (!intel_dp_is_edp(intel_dp))
> > -		intel_psr_init_dpcd(intel_dp);
> > -
> >  	/*
> >  	 * HSW spec explicitly says PSR is tied to port A.
> >  	 * BDW+ platforms have a instance of PSR registers per transcoder
> > but
>=20
> --
> Jani Nikula, Intel
