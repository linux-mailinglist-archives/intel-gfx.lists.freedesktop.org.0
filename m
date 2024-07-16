Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F21931F82
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2024 06:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56ED510E0CA;
	Tue, 16 Jul 2024 04:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MWybePkX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9615610E0CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2024 04:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721102612; x=1752638612;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UlLDbdfPQDKtaTHHmY9mAKJhFplDM81TlTwRRUpY+HE=;
 b=MWybePkX/f+1tzAwDnKBDfJOKljVfITMimAfDPnK+sedgQlMVsWUx9Am
 Bdou6+0fORnAh181Z/UuYzhYhWrPjV8AMR6/1ygXmIWMtvi8yLP6txFnR
 wBXhZYWhO8C7iNfg8TdpVzWNlKX6SxYV18F3iq8eKA6l5PaGMDUjEeAeL
 17zaY9nL5jYTVHr4ryg3FTJEaBeGAEx2gODfa8bSHGIRywXMYS3eIsueq
 HHBsmWFBJK25KWmz4C/tNHyFh98NZ6DV30K3i5xkkqJiHwz5L6smnVual
 03XzuVtab4y2w5yl5Gq4X/k0kQ8H6clGfeSAECP2+eh+2ZjZXaXAColTI w==;
X-CSE-ConnectionGUID: EGwVRaKIRfmYi6FUS12L+g==
X-CSE-MsgGUID: UdFWuc4RSmKKifun2RnRfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18630989"
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="18630989"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 21:03:32 -0700
X-CSE-ConnectionGUID: ujnU0qmCSIyCcLKU50rQuw==
X-CSE-MsgGUID: rrKbch1DTduCv9Wi33KISw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="54220434"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jul 2024 21:03:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 21:03:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 21:03:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 15 Jul 2024 21:03:30 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 15 Jul 2024 21:03:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sjauhx/n+j4gTYKeE9mGG4u2dnNnS84p2143HKRGBOoF6VFTkUF2ZFHQS27dFZ5LxGWN7urnWQX37/YOoIf/n8oLhap4XNJLzjFBW1olQGG2ayu/h1Jvwvh0TbsrDGfZtfqGytW/JvzAdMj11aAYpN/y9SQFwQxlFpM879dibi6lmwJSRML/+rE+Ry1vLWWfQjk5z0CR0VEcRFUyMCQAt2A+FfvwhcXKqF+DqH5rqZE+7Eg6N7ACJy7eLYCTZfi8eVTbgAbSm3YlwkI80cBzQ6/BV5IUqTLE292xErfeJHmU3SGjsl/Hro0WQuRhPJUA7iMGRY7eAwyaRdM2nAtUwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D78bBSmVG1v1YIhKlWtkYF/P6vlP9RxwHA72H3gWk3s=;
 b=WzeqJOpbiq01/4gFW4BMpsK31jjcZeqCdIDLLKGtThZSxT3BpdFQMQxX8TVDafhlEmXY5uBNe+b04CwF7DIiyTtLbdi/S/8Cg4GDiOywHE53kWFaovD1kptg4o9R9tQP/G4kxUi3G7nhX5lvv+jpIVztEXS5dD7lnCVuX7EMcpsafRIXPiE//bRl+Q8DZnDble1RVBgd5TeNKMVJ3Bt5CQuuegOGI4M/6xAPj9uTeAoLe1boYus7GhA5i1wyPMau8LAKGABz0GOfum4L7oNUEN2+/IJPJ/X++vInpOXcIbn23yJSBA1aDmFsfQCn0/VysG6Vlf/aj37QihU1rLKIlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS0PR11MB7829.namprd11.prod.outlook.com (2603:10b6:8:f1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.28; Tue, 16 Jul
 2024 04:03:25 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.7762.024; Tue, 16 Jul 2024
 04:03:24 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 02/10] drm/i915/display: Add member fixed_rr to denote
 Fixed refresh rate with VRRTG
Thread-Topic: [PATCH 02/10] drm/i915/display: Add member fixed_rr to denote
 Fixed refresh rate with VRRTG
Thread-Index: AQHa0a+++XQ1mK5gZ0WP5v7Dayp/ELH4xevQ
Date: Tue, 16 Jul 2024 04:03:24 +0000
Message-ID: <IA1PR11MB63485D6582CBC903C5A2085BB2A22@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
 <20240709032651.1824185-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240709032651.1824185-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS0PR11MB7829:EE_
x-ms-office365-filtering-correlation-id: 43bbc1cf-a057-4dee-acf0-08dca54c3d9c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?IqdyyeuXsfCxxByo/TQYaYO1/QHJNLnRUywlqAEEYoZrzfuNdF1qNS6MZKif?=
 =?us-ascii?Q?Avchc9/7OlBGihyJwES2r++/+12I7eIif+PRZfnPjwIL2gU1BqG2iAecaS0e?=
 =?us-ascii?Q?LcDVZcWpLeSn0VzB8KqvNubnN2z3CDY3BfQIPFn8dZ/7SPyeVT6ygN2J/1UU?=
 =?us-ascii?Q?K2EqF8STdKUYbFchzvky4wwpKP3CHrfuX3bjTVITDXPWzQliRDYXHWPro75I?=
 =?us-ascii?Q?TbJIqmOHKrluQQWHJPlg2jqAWURVVqDse4/9DjIK099zT2UYz9lEjal22V4a?=
 =?us-ascii?Q?/7vDQ/gXBw4Wo9LOsoH6Hlg/HIc15+xS+cwws/Yn1ZTKIF4y15QjgEl8vMTh?=
 =?us-ascii?Q?lGVBfSXvPBXqVhKstYUvtsX2CRqUyZjTPns5oavoXRdBVSNzSF8HqbT77fQV?=
 =?us-ascii?Q?HnxKXcgScNnDBealx85Qfz0eJsBwrZmOFvvqT0avNV9U9/+3uLl2LvUCUDTf?=
 =?us-ascii?Q?rMUPw6NDshUX1JQVySyNxibL7jvC5/y9Q7PY0mizXiLEUnHzSYQDbtiBOfst?=
 =?us-ascii?Q?Rl1RVinvyGh8h4hQZbk3mZOCCIDQei0etfAbPUZrhWbS/T7ojxvQG/i1zLvY?=
 =?us-ascii?Q?AiJOVNv9TibL3z+pW6ODvm3a+z7q91G+BNYbT0fCJcybUIzGgjdS0nGHbSFd?=
 =?us-ascii?Q?psrxY3GTsQOOLLXPcc2zYsg4yLsm9q3KqJTo0nuu7AKapyhtB1Gug63lw2rI?=
 =?us-ascii?Q?+1N2dI8yQahfJ2eOrb/MlEAI+4LmbE+K3CwA0B+ftsmXT43ycl325hZ6/bKW?=
 =?us-ascii?Q?M4/arjc4TF9VLKuqBNiGaek8YqLO7Lg8aZv/lKawbhBLilQWy2IdD79qH0tv?=
 =?us-ascii?Q?C/enIb1smEFJaHrjmiAGLE16PErTJe6Z37T5pvauiLzbopjR7wf4iVR6IwcY?=
 =?us-ascii?Q?cn1D/SIy96Xl0tDwlgv0Ng/adBhXHfHoQ6uxcEp2Bm9aHgjjXQPqX8IfXq9K?=
 =?us-ascii?Q?g5lOdeInQJ/3N15pu7QCmYmHbwioTMxozoP4CT5sVz8u5ICQKqsclAClDEMc?=
 =?us-ascii?Q?Bzxy73b/D4E4Xw6hpXUMGUYHRXbeVZ7KeiUSFFihfJYBD7ZzlUmHo7Z65O7I?=
 =?us-ascii?Q?ImcE2HO55b5uVSxHxXBuiYAfoRgJvrxPxCBrfm2aGGUuX8SeAVQrQqrIflIV?=
 =?us-ascii?Q?/wLUB7hLRUyvy4fSAD6nbs35upEBnjky8iLLB3mUVeLOjPfrPPW8S6HksFJV?=
 =?us-ascii?Q?CJ9aiw0S4Jlb78a04xTgNE0ff5wegY8ZvsA7coxVQpbiVYa2voYwcR0xQKxf?=
 =?us-ascii?Q?ZbeO7IdUMTjrzLUV0S55HiDlOk+wwW/SY+4O1xer+Kbpm5QulLEjaPTDxK2B?=
 =?us-ascii?Q?DVt/v0qbtyD5Xv+e3VhFbgU0OlxxH6mJeE6NqJx/+9TfpY0xcXdqcAIx3fHD?=
 =?us-ascii?Q?oJiq6y3tvVo4VmKdqI402MG1PDyFa7Xiu5nMBpx1Q72KGkLQeQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?N/Ui5D+ohOrbT++71rRiyjOoE6Ja3wBhILpueAQgEU4jf+EQ8io07vsu7zd/?=
 =?us-ascii?Q?S35xWR5nYN616whIn6a3Rho8uhJGTmTCfA8+yCeElwgtoCRwrq5PU9cxCl4z?=
 =?us-ascii?Q?rDLpOR2TOL3L/CwDM0yhoSSXz3ZHDIsz8DjcRdvhNllZAMPnHSKcoL5qJamh?=
 =?us-ascii?Q?ZHh1JIOeNSoYsdNxFAGKiI9EZi7q9OBfIFKYDRQXxiURlYppVH/qGbBUwqnD?=
 =?us-ascii?Q?LRkVg7vjQTZ1/0MWDjxmjIFiqu0tq8BECJ1JZFCVY2WQvVXJidhU1uavf7oB?=
 =?us-ascii?Q?BoM6+RicHBweN6aAeucuMTXzwOjETl3KrgF8ZTUHByulwawFP1XSLUHaYLT4?=
 =?us-ascii?Q?A43Tld9I0Ejwa2wruoYyc6J36imwMaEqmT1PZ+T4lu404PfShllRtbt3ilLd?=
 =?us-ascii?Q?jCap8CBOhSp/7vaQpC+UGZqHTtUcEIPi72j7dw9ysLjPzfiY0lo2ojlD27Lw?=
 =?us-ascii?Q?taEjXGz9Hq4Uggtn7MZ7IA56Czwud0j4EeU2rs8rFXNYtE+xGrjkNJcet320?=
 =?us-ascii?Q?D2P8HN/ltoNSDz4P71d9IK5Miql7PnMQfc10S4jTdxyLw28mh9d5I6mf8OXj?=
 =?us-ascii?Q?e0oquyaHdlLdzFJLTRo6koMUUoWdL2HU2JI5BCGc1ubPyZ0/irNuizsEN5+7?=
 =?us-ascii?Q?tznF4P9aPNiWg81L3l3/Ipnrcz+S3emZO9plp1oBOwkhFimNYyvWB2xYXwM0?=
 =?us-ascii?Q?xi5M4ttoaOBSpENgkLx7h8W4p5zr7TTNSfqVbb8o7iBSswO1P6KA+/GktoOE?=
 =?us-ascii?Q?uFsWhPEql8if7CvhZ21wFOuhZgl0yIEufJaUciEDCQl1MfeFFXHekGlIZp5d?=
 =?us-ascii?Q?GnjkTMZPuPB2mTgWtyCva+bxEuNX0TZ9PUw+pYHoq6k36gKrL4OmSer2MmoR?=
 =?us-ascii?Q?UgvCvX8FaXL65ZDQojf9UOjhINVcYajXk9uCQ8w1EMw0Jmx+ueBX+YGoZHGq?=
 =?us-ascii?Q?NX7fEPNQK8o7+MRmQ5MO3Zda7ELkk7QAMhw+BDc1ZV4jqBW8yH6rtKyKb7D5?=
 =?us-ascii?Q?wI40YEKmxrYeJUhN8CGiBzR3G5WwQwrWJFUgUGcNLkFaMC2LmAOd7iCKIqDs?=
 =?us-ascii?Q?lhK+eqYIuTavJDjDzcY1Z1wScTyp3ysUacLdZDs6qsi4pamj3eGyIGFdmq6k?=
 =?us-ascii?Q?BBBT/BewpHDe5qxF76z6YLfVjbYhOuIRPqpYrKFmxnBOjqoLi7Czi6Olo7Vi?=
 =?us-ascii?Q?q5eRRUCq6CqTIN9xFGOFmhKuPvUh6Cdf4kd/gQGcMV3QnSLcljTNjsD3eXBp?=
 =?us-ascii?Q?sXqC6ugJoXUpzSjv7g7BGBeqkciX95z1X5hn05wigYCdEJNBsHPxEPSER+vQ?=
 =?us-ascii?Q?u62QWylTe7jVX5kKLDnvH29vaRBMM0id9whmlNlqfO4H8R1WBGnkqZbNjMsb?=
 =?us-ascii?Q?zceiHg5M2ZaB9GKIVIqziuPGenxEbVV9ZR3OdE+zlS0w+9vMgeZc/q5C9DDl?=
 =?us-ascii?Q?pqJUW2zknZxOF7NMtQq1L67ZupPIMmnm3HjLsH5tVLcEn4rkXvyDDIjttybW?=
 =?us-ascii?Q?NPY9eXKDQgWxozh+g3U8RvVS0Yg+PaTce4ZJRImjn1rNnvIvUR6QS5q7m6O5?=
 =?us-ascii?Q?uGtui7kXo2wmvKFuUBTanP5tEUNhbn442V1zzrM0fHY8td4pC5DG0ZndamcN?=
 =?us-ascii?Q?jDL3lUddvqbwuEhnqqV1NEY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43bbc1cf-a057-4dee-acf0-08dca54c3d9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2024 04:03:24.9387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aDZi/2+diphDw/sjtby1mnb7mR6NibbGCbS9G5dFDtQFM+d/EtlYzFKaves7gnfmxeZQzup6uptmVrxsPajWKXqVk4fR40Bz7szRDje5+qCEsyGMYeg69zdV2bT865/P
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7829
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Tuesday, July 9, 2024 8:57 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com; ville.syrjala@linux.intel.com; Golani,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Subject: [PATCH 02/10] drm/i915/display: Add member fixed_rr to denote Fi=
xed
> refresh rate with VRRTG
>=20
> Add fixed_rr member to struct vrr to represent the case where a fixed ref=
resh
> rate with VRR timing generator is required.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c       | 4 +++-
>  drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c           | 3 +++
>  3 files changed, 7 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index c2c388212e2e..85695dc2b2e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1004,7 +1004,8 @@ static bool vrr_params_changed(const struct
> intel_crtc_state *old_crtc_state,
>  		old_crtc_state->vrr.vmin !=3D new_crtc_state->vrr.vmin ||
>  		old_crtc_state->vrr.vmax !=3D new_crtc_state->vrr.vmax ||
>  		old_crtc_state->vrr.guardband !=3D new_crtc_state-
> >vrr.guardband ||
> -		old_crtc_state->vrr.pipeline_full !=3D new_crtc_state-
> >vrr.pipeline_full;
> +		old_crtc_state->vrr.pipeline_full !=3D new_crtc_state-
> >vrr.pipeline_full ||
> +		old_crtc_state->vrr.fixed_rr !=3D new_crtc_state->vrr.fixed_rr;
>  }
>=20
>  static bool cmrr_params_changed(const struct intel_crtc_state
> *old_crtc_state, @@ -5469,6 +5470,7 @@ intel_pipe_config_compare(const
> struct intel_crtc_state *current_config,
>=20
>  	if (!fastset) {
>  		PIPE_CONF_CHECK_BOOL(vrr.enable);
> +		PIPE_CONF_CHECK_BOOL(vrr.fixed_rr);
>  		PIPE_CONF_CHECK_I(vrr.vmin);
>  		PIPE_CONF_CHECK_I(vrr.vmax);
>  		PIPE_CONF_CHECK_I(vrr.flipline);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8713835e2307..875370219892 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1407,7 +1407,7 @@ struct intel_crtc_state {
>=20
>  	/* Variable Refresh Rate state */
>  	struct {
> -		bool enable, in_range;
> +		bool enable, in_range, fixed_rr;
>  		u8 pipeline_full;
>  		u16 flipline, vmin, vmax, guardband;
>  		u32 vsync_end, vsync_start;
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5a0da64c7db3..24568dae717a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -421,6 +421,9 @@ void intel_vrr_get_config(struct intel_crtc_state
> *crtc_state)
>=20
> TRANS_VRR_VMAX(dev_priv, cpu_transcoder)) + 1;
>  		crtc_state->vrr.vmin =3D intel_de_read(dev_priv,
>=20
> TRANS_VRR_VMIN(dev_priv, cpu_transcoder)) + 1;
> +		if (crtc_state->vrr.vmax =3D=3D crtc_state->vrr.flipline &&
> +		    crtc_state->vrr.vmin =3D=3D crtc_state->vrr.flipline)
> +			crtc_state->vrr.fixed_rr =3D true;
>  	}
>=20
>  	if (crtc_state->vrr.enable) {
> --
> 2.40.1

For CMRR case, when vmax=3Dvmin=3Dflipline is there, to avoid any state mis=
match, should we consider moving this get_config along with compute part ?

Regards,
Mitul

