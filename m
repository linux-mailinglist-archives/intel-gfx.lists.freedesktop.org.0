Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9682597BB21
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 12:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 126D910E0E1;
	Wed, 18 Sep 2024 10:55:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XUFj0kpn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BCAE10E0E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 10:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726656915; x=1758192915;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Vq8yDmmHbNbjAc8lpIUNFn/LHqW0ItWT3APFhdvxlGo=;
 b=XUFj0kpntGm0fgyQO2/0atguXDL5QG4B8zNGV+YAl63Z1d6OJavfHJA2
 qVZ44T+ctgWgkQSsLuE80O3Akjod/KPsYa/9+NPPTMkpazzLgUirIfAl9
 l00VWRLvKqoZ/oMX21vXmvn+VCKP177kojbJKGUrMMBYI4layaKmah+Em
 u+ko5g1/sN8L5WA7XUthPlxaEzhlLdxDuIxD603zgr0869vXlD4hYaOrQ
 q4eVNEE+lYZj/FNz1J1Zrx6L0ujXhlAuyYCDSDNF6HgfkvpvBgLYyMh+t
 wOVk0fLIjNLFiOm+hgJvYjySCziTShwTp/INwA5aXkToBpFmDWp4zlap+ Q==;
X-CSE-ConnectionGUID: orXbT77CTIOUA2TnpLcEOg==
X-CSE-MsgGUID: NG/wHESsS66Q6PMfNLeWfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="43032025"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="43032025"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 03:55:14 -0700
X-CSE-ConnectionGUID: 5h9Z/4xHT42lf3kXGQl6ww==
X-CSE-MsgGUID: a66DUCcySJC2iI3bikOaWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="100334058"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2024 03:55:13 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 03:55:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 18 Sep 2024 03:55:13 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 18 Sep 2024 03:55:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hNA2SC+qgEbOnZ9NUpfEDojQFrkfBHt11QYuseFv4yvSPV/lkXG7liyw/UelBJXkmhxN2uCvOmESZ4zALTCiPW/omdX8tY/BjnLl78rDAaphQ1ETAClcSB/QCwJ+tQZigNqKGx2oslR92M+L56+KNVPaCn2hF23FViweQ4BtuZXe2MjkJKUXtthrUns5CzxG6Yx8eBa25vtN0WQvj/Ef+6WHBGW2VMNDYX7aEdJ87e0Lf8pbUa9ISRWfOrUbzujzCMw7AO6FcosjyrVN8X2ZiEkqhT39AHFgsj1HiwbUWdLJAaqzteMTdmf13jvgss33GX46AIhK2GMvK6H9i7Rfsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TGNjDvS8OpmDtHeE0uifdIp/Hp8BKAtDiJSx+7THJtc=;
 b=HuN5ZDwZFT8B4AzH2ujIwxyeYHhy6npkQV3KkKZp70Xh9/wVNO5n9JD3bQ3NTSVOGZUrvAiM92SjDwq6nxi4eSi+0pzom9ZukZ69rhy9+biQM9IzsSbL46N5NKajI9gT2TAmtC7d8czVW0jSCmllNlNskOmN4hAkMU0btGhyHMvKnpExbO8o6RJ7mlhR5j7srxh4Wbox2nkRbWA2xnivUXjkW2BxsNBAp/TaxJLkyJoXjLD+k8UcMGdW7lDBvgEcwTiTiJI/KZUDJFaZ6lQo488lurDYAjiaEu2/0qlRI/6jK57zt3edmR54cGywSe1ZB47BvjNCK8hOmXdWO0Jp+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH0PR11MB4966.namprd11.prod.outlook.com (2603:10b6:510:42::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Wed, 18 Sep
 2024 10:55:10 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.7982.012; Wed, 18 Sep 2024
 10:55:09 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv2 3/5] Add crtc properties for global histogram
Thread-Topic: [PATCHv2 3/5] Add crtc properties for global histogram
Thread-Index: AQHa87WaF9adTJaJbkqu5ftYXQh5QbJUDQCAgAg7jaA=
Date: Wed, 18 Sep 2024 10:55:09 +0000
Message-ID: <IA0PR11MB7307C982F5925BC02DC1D099BA622@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-4-arun.r.murthy@intel.com> <87plp9gpns.fsf@intel.com>
In-Reply-To: <87plp9gpns.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH0PR11MB4966:EE_
x-ms-office365-filtering-correlation-id: cab0f2b3-cd47-43ac-f88a-08dcd7d05cfa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?RUza+nBMFH9qNck1TzwCoz1wdC4AOX6xu8Y6GcS7OOzMuy7VPjDUZOwd/us3?=
 =?us-ascii?Q?jv/mFlQsd2RbV3JiB6m8mjO0xodiEuzfr0DbN0xYZXWKxsmYnloh7ywRCruX?=
 =?us-ascii?Q?fyJGS+NBDZmZWCWQBDRO4Nv6v7jsSh3sLChoNtXsfnJlwTXwUhyYP+h+yfTb?=
 =?us-ascii?Q?BJMG/niltSuLNv4ANW8L6cRy9NxXXePk8igpjsIjOhn8fMaEzzjzaNpfjqvu?=
 =?us-ascii?Q?nh51AxTulzGPC0KYGHFmIOxcSgax3nBLyi9A1UekxGfO9AvZhjN1hy/ANZdr?=
 =?us-ascii?Q?XWXdVBJ8yQWDiiEhbQlGN1A4CxOittE+CjAjedRoJHMiTLpEThboBM9Jhv76?=
 =?us-ascii?Q?S1/TKt/L6Z5QymMIBCepjRjUV4Rl76U7fQVAMRzjUy7YuYZKBOWCVGWbmB4x?=
 =?us-ascii?Q?qwjF7gpgzOq44dswheh4HU9RVGAdXOay+7yBJZHai6iIYM6LN1kq1+Rbb8FL?=
 =?us-ascii?Q?0o7SiMybWE7LWspSCR8fJaeY5IHuqzMenPGzKFAeNLCcvU9c61E0voa7/VdK?=
 =?us-ascii?Q?W3/q52krtwlHKMUklJM/SFb4xX8gEABxJZGeE+fhwps3OJl+az+b/GeU6Q0r?=
 =?us-ascii?Q?2fkMxrSzlBgYc1Q+FOGYavJjWphPY7EQDICn+5QQiMhAXxCSfmBN3rBNGxwu?=
 =?us-ascii?Q?8CP6fPQFv9dKI0U6gDgRZ6Z3Ff4pe1WUIx3G20zT89M8zSrCnXN94U9tD38m?=
 =?us-ascii?Q?9rPdYS0AzYHtFx3kGxMK+mQmq7gLRk4UiAwbua+1sseXsvqRDI3YtXrVxhRV?=
 =?us-ascii?Q?QzFsoopqa1CycQXfOOgpHJz7BQryRqY2bJvVU5Hx19bAg1+o7ht7ibIx8caz?=
 =?us-ascii?Q?tOsMWpQnFbTP9PHnAi34MXbh05Q6Xs86aE/tm7aBJCHucxEvHpkO0TjIVpaw?=
 =?us-ascii?Q?VzAtOS1XlDnGcEe4RZIXkFbL0Ur16vBB8tRP1zVWt9Wu2pLTbIXvxTK1KJON?=
 =?us-ascii?Q?BSTIS0nbGAdBCgsxNDAHt2xStXfE+yve4Z6JAMsz+9QDIHG9vjTglpInl5LR?=
 =?us-ascii?Q?U6PlCvrmdalAPZDuWicMem/iZe3NTCRieoxBcPXTcjosWwDFkgXyVCMm/H2k?=
 =?us-ascii?Q?9FVwNHpvGS/KgeSqvidTXScaZu15H2MFNk8fXP8Mz3EHE7j7L2DlPIKe0AlG?=
 =?us-ascii?Q?5ZPizLr3VPOf9rauezWHgtc4ddXF2Oy+Mv0rR33N/hCfRBxvKyXG4y0XFCgw?=
 =?us-ascii?Q?0SJ/ZhpXXgX7+gYFV0qHs2IWrjT+t+pm7SYp58h1iYj/liErz9BZIOCM1CzA?=
 =?us-ascii?Q?ME/hVl2k+/nkoulJYvyw+Q1rHseZih4jQwAh2aBmio9TqZfPMmrWKwEa+ARY?=
 =?us-ascii?Q?5HMCW24ggVGsYZiJMARBUcNP3dSS48+4CnO8q6doZVzt1srqraEzI6/QGoIF?=
 =?us-ascii?Q?Mf+0FdqknDRtAH4WCrN8k13Xoy4nRANqYJc+VQH8hjmsyb0yjA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vmLmT5jIH4CGaxePh6ZQHuIxoc8YQvNRaACaVaSi7zssQ0+kyePpn8iX/RDL?=
 =?us-ascii?Q?hccRc8x2ToBHhbeFeRq8fTRJynYBC9QkrZFc06HvBKczupo6dzCt3jzsn1/Z?=
 =?us-ascii?Q?fslolNTXzi0g2cg0GmLOzzKj22PcwI0eubXzHkpRIRAAWAjPVIVra0EyNIfC?=
 =?us-ascii?Q?4+/uiqnpcZE1o6mTSGVRz9/R6GDr9lrlLizzyMTZsFvYQifRrmh7lJGSkZdY?=
 =?us-ascii?Q?c54MiQB6EBx6G3e3H84d0J3LC22mhjEYgxmsPyO301AEjAtncgMma7fPDis8?=
 =?us-ascii?Q?Yx+vVY2jTUxxuwIp6DVxRZ6iC6vT5B53bnyqyZA/4+dToExxn9ublwe/IUtI?=
 =?us-ascii?Q?q/JIjeIGvOXr2Cbfmkw4V0Wy0Y+D1FZSfye8xGMJIv32vnpa+gkH4chy8M7k?=
 =?us-ascii?Q?pNTQwnvHnNgT9tessCON9z7CkZornQ2/ikm/hpz8HIItLJ9sy2PL8n8VKEUc?=
 =?us-ascii?Q?khvluGk0cXdVR0sJfEylBYHOsVCiowR4RvZ00fWIOHJHsdIGdv1W0Y9YpOjo?=
 =?us-ascii?Q?MF77GDaTlFbxJI9oyAz2jThSbRYA+/WyYorU9uYJmCFd+9IODzIrX8xhDjhe?=
 =?us-ascii?Q?kj7imV2c+zAk3jwYiQutANRkjOvreEm84sOCrq/EhgMHJhHjVPd/hxPpiYpm?=
 =?us-ascii?Q?VTXHjCj8U8PATSt5zV0HbFyNNAbQmN5Ib0e4FWfOleERHQjy3eHLhTTWZzFn?=
 =?us-ascii?Q?q/+zMi4yFwLO9wYA7Ru7nPd3S9GAo6fW33lczb7o/WglVxCBHMLz5eCXKR5r?=
 =?us-ascii?Q?/u4/CE3sZjKvFKtVrMCmVnH7BxVPtyl/qs5M8z1aVXHRosAy5+jmVe2JDfpE?=
 =?us-ascii?Q?CeJOu7AwxGAtDnkHwcompWQGvvHgWiXwHo0dOPt+yuF32JeXvm/Vv0EtJFtw?=
 =?us-ascii?Q?rnkcqGAV3mY0BlhK0tw9CphvqxR3ii9yl7Z3Qm8SbLcHbQm8bBMmjRTd2iiJ?=
 =?us-ascii?Q?ZlbTCxoFw3UCQli8S1Vbvf3+qLE7KQIll3dohQcz72QYoxz8EBdSwojhPara?=
 =?us-ascii?Q?F78jyejuT2avg6vTXSNQ8D1SDwDx6/bxzYjchZfZGwZ7uW+4IOOyo0jbLOii?=
 =?us-ascii?Q?opGz2NOEFUXYXQytAJsvFI3ewuIeoqlwIMV6RCrubpc0riVZ7kuaB1hwSjlH?=
 =?us-ascii?Q?UCZu9/hWqnwzw9p+S8gXFwHIvQeFZhvEH0CsAvdRU0gxlg9je4NiyaOxesUX?=
 =?us-ascii?Q?F8SfBcTu3SDi88LZSQ5E0JmoLfitSGOJTvEUoElXDaAuBuCBAMMx1JHpKYGm?=
 =?us-ascii?Q?dUEHVQLiTt6vvCzebpfD4sR+G8Du46CjE6UV0v7hsNLACkhUtWynjluNMDfy?=
 =?us-ascii?Q?GHpEPB+O/TOQCHSnb+KHxJK0O2KWYqZJ67aCqj3L9UJ65xQZH9ect1fq0Ag6?=
 =?us-ascii?Q?LlUVD4Ea7cAyleSLqs7rgBNYkr/ICt18PZmnQwyU2XJ0dfiQg0hlQNxEehi6?=
 =?us-ascii?Q?0dOSCrMJDufGtFnnJdeBJCDplDi4mLoY9ZczxA3lFn6srlSf4qsq8tFxDmXH?=
 =?us-ascii?Q?dT3VNZfkN1wAJR1rUyNDdrm6bAuRrN6IAyw3dNAiAk9jEkCP19TDgHisI+Fr?=
 =?us-ascii?Q?02N9pTxMjKVOLjkwUcuANWzOfolac00DcX0JKcgGfhtqZFQ2C3xY+72Celac?=
 =?us-ascii?Q?algud4gBcyQib9D/8NmdZT5IGBUlvu4kqAmW3iUcAy0i?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cab0f2b3-cd47-43ac-f88a-08dcd7d05cfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2024 10:55:09.2805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T5LypfI/Nsm/nGYRFDm8ISsSg/NYGRMH3WSR7KjCHdLjdX7CUvjXWVt5V5bjjiuBubFuSfvaV8Opi6DD8OYU6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4966
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

> >  #define INTEL_CRTC_FUNCS \
> >  	.set_config =3D drm_atomic_helper_set_config, \
> >  	.destroy =3D intel_crtc_destroy, \
> > @@ -229,7 +326,9 @@ static int intel_crtc_late_register(struct drm_crtc
> *crtc)
> >  	.set_crc_source =3D intel_crtc_set_crc_source, \
> >  	.verify_crc_source =3D intel_crtc_verify_crc_source, \
> >  	.get_crc_sources =3D intel_crtc_get_crc_sources, \
> > -	.late_register =3D intel_crtc_late_register
> > +	.late_register =3D intel_crtc_late_register, \
> > +	.atomic_set_property =3D intel_crtc_set_property, \
> > +	.atomic_get_property =3D intel_crtc_get_property
> >
> >  static const struct drm_crtc_funcs bdw_crtc_funcs =3D {
> >  	INTEL_CRTC_FUNCS,
> > @@ -374,6 +473,10 @@ int intel_crtc_init(struct drm_i915_private
> *dev_priv, enum pipe pipe)
> >  	intel_color_crtc_init(crtc);
> >  	intel_drrs_crtc_init(crtc);
> >  	intel_crtc_crc_init(crtc);
> > +	intel_histogram_init(crtc);
> > +
> > +	/* Initialize crtc properties */
> > +	intel_crtc_add_property(crtc);
> >
> >  	cpu_latency_qos_add_request(&crtc->vblank_pm_qos,
> > PM_QOS_DEFAULT_VALUE);
> >
> > @@ -690,3 +793,100 @@ void intel_pipe_update_end(struct
> > intel_atomic_state *state,
> >  out:
> >  	intel_psr_unlock(new_crtc_state);
> >  }
> > +
> > +static const struct drm_prop_enum_list histogram_en_names[] =3D {
>=20
> en_names?

Changed to enable_names

>=20
> > +	{ INTEL_HISTOGRAM_DISABLE, "Disable" },
> > +	{ INTEL_HISTOGRAM_ENABLE, "Enable" }, };
> > +
> > +/**
> > + * intel_attach_histogram_en_property() - add property to
> > +enable/disable histogram
> > + * @intel_crtc: pointer to the struct intel_crtc on which the global h=
istogram
> is to
> > + *		be enabled/disabled
> > + *
> > + * "HISTOGRAM_EN" is the crtc propety to enable/disable global
> > +histogram
>=20
> There's zero gain in abbreviating enable to _EN.
>=20
Changed to Enable, also removed all caps.

> > + */
> > +void intel_attach_histogram_en_property(struct intel_crtc
> > +*intel_crtc) {
> > +	struct drm_crtc *crtc =3D &intel_crtc->base;
> > +	struct drm_device *dev =3D crtc->dev;
> > +	struct drm_property *prop;
> > +
> > +	prop =3D intel_crtc->histogram_en_property;
> > +	if (!prop) {
> > +		prop =3D drm_property_create_enum(dev, 0,
> > +						"HISTOGRAM_EN",
> > +						histogram_en_names,
> > +
> 	ARRAY_SIZE(histogram_en_names));
> > +		if (!prop)
> > +			return;
> > +
> > +		intel_crtc->histogram_en_property =3D prop;
> > +	}
> > +
> > +	drm_object_attach_property(&crtc->base, prop, 0); }
> > +
> > +/**
> > + * intel_attach_global_iet_property() - add property to write Image
> > +Enhancement data
> > + * @intel_crtc: pointer to the struct intel_crtc on which global
> > +histogram is enabled
> > + *
> > + * "Global IET" is the crtc property to write the Image Enhancement
> > +LUT binary data  */ void intel_attach_global_iet_property(struct
> > +intel_crtc *intel_crtc) {
> > +	struct drm_crtc *crtc =3D &intel_crtc->base;
> > +	struct drm_device *dev =3D crtc->dev;
> > +	struct drm_property *prop;
> > +
> > +	prop =3D intel_crtc->global_iet_property;
> > +	if (!prop) {
> > +		prop =3D drm_property_create(dev, DRM_MODE_PROP_BLOB |
> DRM_MODE_PROP_ATOMIC,
> > +					   "Global IET", 0);
> > +		if (!prop)
> > +			return;
> > +
> > +		intel_crtc->global_iet_property =3D prop;
> > +	}
> > +
> > +	drm_object_attach_property(&crtc->base, prop, 0); }
> > +
> > +/**
> > + * intel_attach_histogram_property() - crtc property to read the histo=
gram.
> > + * @intel_crtc: pointer to the struct intel_crtc on which the global h=
istogram
> > + *		was enabled.
> > + * "Global Histogram" is the crtc property to read the binary histogra=
m data.
> > + */
> > +void intel_attach_histogram_property(struct intel_crtc *intel_crtc) {
> > +	struct drm_crtc *crtc =3D &intel_crtc->base;
> > +	struct drm_device *dev =3D crtc->dev;
> > +	struct drm_property *prop;
> > +	struct drm_property_blob *blob;
> > +
> > +	prop =3D intel_crtc->histogram_property;
> > +	if (!prop) {
> > +		prop =3D drm_property_create(dev, DRM_MODE_PROP_BLOB |
> > +					   DRM_MODE_PROP_ATOMIC |
> > +					   DRM_MODE_PROP_IMMUTABLE,
> > +					   "Global Histogram", 0);
> > +		if (!prop)
> > +			return;
> > +
> > +		intel_crtc->histogram_property =3D prop;
> > +	}
> > +	blob =3D drm_property_create_blob(dev, sizeof(uint32_t) *
> HISTOGRAM_BIN_COUNT, NULL);
> > +	intel_crtc->config->histogram =3D blob;
> > +
> > +	drm_object_attach_property(&crtc->base, prop, blob->base.id); }
> > +
> > +int intel_crtc_add_property(struct intel_crtc *intel_crtc) {
> > +	intel_attach_histogram_en_property(intel_crtc);
> > +	intel_attach_histogram_property(intel_crtc);
> > +	intel_attach_global_iet_property(intel_crtc);
> > +
> > +	return 0;
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h
> > b/drivers/gpu/drm/i915/display/intel_crtc.h
> > index b615b7ab5ccd..56c6b7c6037e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> > @@ -7,6 +7,7 @@
> >  #define _INTEL_CRTC_H_
> >
> >  #include <linux/types.h>
> > +#include <drm/drm_crtc.h>
> >
> >  enum i9xx_plane_id;
> >  enum pipe;
> > @@ -49,4 +50,8 @@ void intel_wait_for_vblank_if_active(struct
> drm_i915_private *i915,
> >  				     enum pipe pipe);
> >  void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
> >
> > +int intel_crtc_add_property(struct intel_crtc *intel_crtc); void
> > +intel_attach_histogram_en_property(struct intel_crtc *intel_crtc);
> > +void intel_attach_global_iet_property(struct intel_crtc *intel_crtc);
> > +void intel_attach_histogram_property(struct intel_crtc *intel_crtc);
> >  #endif
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 9f2a4a854548..20caa952d687 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -94,6 +94,7 @@
> >  #include "intel_fifo_underrun.h"
> >  #include "intel_frontbuffer.h"
> >  #include "intel_hdmi.h"
> > +#include "intel_histogram.h"
> >  #include "intel_hotplug.h"
> >  #include "intel_link_bw.h"
> >  #include "intel_lvds.h"
> > @@ -4335,6 +4336,10 @@ static int intel_crtc_atomic_check(struct
> intel_atomic_state *state,
> >  	if (ret)
> >  		return ret;
> >
> > +	/* HISTOGRAM changed */
> > +	if (crtc_state->histogram_en_changed)
> > +		return intel_histogram_atomic_check(crtc);
> > +
> >  	return 0;
> >  }
> >
> > @@ -7512,6 +7517,14 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
> >  		 * FIXME get rid of this funny new->old swapping
> >  		 */
> >  		old_crtc_state->dsb =3D fetch_and_zero(&new_crtc_state->dsb);
> > +
> > +		/* Re-Visit: HISTOGRAM related stuff */
> > +		if (new_crtc_state->histogram_en_changed)
> > +			intel_histogram_update(crtc,
> > +					       new_crtc_state->histogram_en);
> > +		if (new_crtc_state->global_iet_changed)
> > +			intel_histogram_set_iet_lut(crtc,
> > +						    (u32 *)new_crtc_state-
> >global_iet->data);
> >  	}
> >
> >  	/* Underruns don't always raise interrupts, so check manually */
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 79d34d6d537d..ddf1cb0ab26d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -99,6 +99,12 @@ enum intel_broadcast_rgb {
> >  	INTEL_BROADCAST_RGB_LIMITED,
> >  };
> >
> > +/* HISTOGRAM property */
> > +enum intel_histogram_en_prop {
> > +	INTEL_HISTOGRAM_PROP_DISABLE,
> > +	INTEL_HISTOGRAM_PROP_ENABLE,
> > +};
> > +
>=20
> This is not a property. This is a regular enum. And it does not belong in=
 this file.
>=20
Sorry, this is obsolete, maybe I missed removed this.
This will be removed in the next series.

> >  struct intel_fb_view {
> >  	/*
> >  	 * The remap information used in the remapped and rotated views to
> > @@ -1431,6 +1437,13 @@ struct intel_crtc_state {
> >
> >  	/* LOBF flag */
> >  	bool has_lobf;
> > +
> > +	/* HISTOGRAM data */
>=20
> Why all caps?
>=20
Changed

> > +	int histogram_en;
> > +	struct drm_property_blob *global_iet;
> > +	struct drm_property_blob *histogram;
> > +	bool global_iet_changed;
> > +	bool histogram_en_changed;
>=20
> Please add a substruct for all the histogram stuff to keep it clean.
>=20
Done

Thanks and Regards,
Arun R Murthy
--------------------
