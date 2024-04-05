Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 920FB89A39D
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 19:40:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A89610EBF7;
	Fri,  5 Apr 2024 17:40:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zit/pXlC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F0B310EBF7
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 17:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712338841; x=1743874841;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5gFIx0htJ+45sQQ3ALxYVbgjAZh6ML9MdOhNUwshWUI=;
 b=Zit/pXlCpOA65w2iI69+nQJ6+RGeNgoL57zVuLsQ8tTquHVZWvybbWJB
 cm/bQl/JS341L8/VU22Blv86Elg2MLEuj86jkTmYBdd31G/1/iiDYVxLc
 3Eg/0kQ3t6XYjeaF6/VBP3DjJ88r3G6+uqOvwvUibKnJYnDGR8nsTaT3V
 J04QQ1a5xcdGZEnkCrT19Z9zAbQ+Y1V65oLiqBQIsEmPIoUdw+F/u20DG
 mqbEk4jsQnzLTezmVyVtRj8vdmo0cgljOxzcHBmKqoKh6kP3jqdyhLxsb
 83OuNdyShqLyH9t/a3couhcuWCNmWOhqXWafBOXLjcCcrTtDDGnCM4hvk w==;
X-CSE-ConnectionGUID: 8QMU2t6/Tqi9H0jeyvV+Hw==
X-CSE-MsgGUID: OlGBu2dyQPSfUIbBOCUecw==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="11472948"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="11472948"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 10:40:40 -0700
X-CSE-ConnectionGUID: 9Qe1U3jvTTSi06GLEQzzsg==
X-CSE-MsgGUID: ZqwB2GHURKSZjolasmzWyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19666463"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 10:40:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 10:40:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 10:40:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 10:40:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ekQ9YQOZTrIzKurPzsJ/BuwWAqwaPXyL2l8LhunfgRndVDKdgck3Fa6b6txHDHaNk7WBdcfnJhLzLjk6Fz3Ow80xOyP3afcRiUsQXApeNOKFhBR/Yr+BRVFlcv4/QwY1DS4GOytNcJ6gqBMXVESugjGqpJbYZP3HHsd0EesLu69CrI4+AotziORcJFBCES99QZ0fSd7wBbfE1YJTQiwqYFoyhc6mK0U8GsBOOWFdD7z/TF1Xj7LxAnDLnf6s+nEMrlBgo82Rc5nilH2QejUYr5KC1GuZPMDZTSKJVPTKBjPjfdwEs4rlX2btSZx/a4QUe7At004puiqdQrei9iN0AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SHTQwHQvmZIz/VyWl02w5SU1Q809jq4sCXdQpF5nnbc=;
 b=l/gHVS9OJDAGekb2ugjpwo9/BX4yZT4FaIf9rs8ekEqp4IgHdS4fc5zSU47y4hAitku6TTbRvgXTeFezTzEipqEWgd5E4i9M33H/2dDnfa1eSWPgJg//ADQbsXiu44Mh9A0SHqUf71x6E1pVCC6kJHlxwA99m7m+2V8pl9PuLeHeZdzBO2yJc7EE1jA1tNE8cRlIVc5mbrI2hvJXIVC42KqFxjQqmGHEpN/vG11fZQRtdbuwRi2StP70h6fu4t73wnXApSDGS7zqX7LqqI9AgYZaz9ivi8qxLVr4pqyltfsw+/+Pvn3qTSdiVGIxuqMZdMEQjj1WSrszeOLM4zTvwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB6980.namprd11.prod.outlook.com (2603:10b6:510:208::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Fri, 5 Apr
 2024 17:40:30 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Fri, 5 Apr 2024
 17:40:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Sebastian Wick <sebastian.wick@redhat.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Kumar, Naveen1" <naveen1.kumar@intel.com>
Subject: RE: [3/7] drm/i915/dp: Fix Register bit naming
Thread-Topic: [3/7] drm/i915/dp: Fix Register bit naming
Thread-Index: AQHah30iew9nTh4DdE+KOn7mFgqqzLFZ8MQw
Date: Fri, 5 Apr 2024 17:40:29 +0000
Message-ID: <SN7PR11MB6750BE51599F5F3CF4454659E3032@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240404032931.380887-5-suraj.kandpal@intel.com>
 <20240405171610.GA931166@toolbox>
In-Reply-To: <20240405171610.GA931166@toolbox>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB6980:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZVhV761IRS2HT1CDNzpkbnEGNP6l5tKXr/M/9zyYf0P+CaQGbR9DSZjI3nYpGP/IM5f69zL0js0GAS7K4TtciUYJZCri6LYhTj5stD5bao4MlLo5IgSLXE4WZxNNvbLTLLTm/k6wHrK3+9CpFQvgx2B21KeKyEodNLbuiFK9xMRmopCwdPQ+7XSj4ZGKXl1owa/6f43A0jVyOBoLrrwAAdgOwXPqeOOOo5Q8iMTxFZYuWt/G1x6mLAtcLtS+tdNUeH4e5crr3SjUwYnVPgWQV+QjCAiR+sntlgxbvgSVGbyuUqdf8Uxhy9wGL4brKtWMDwMVRiDwW1ZnpTaBs3WA6rIQL/z1vXwPvK8x02rRp7vbjVXP9tZR7xfbQXkbZSsOJGchs/8ZFOdH6Os8mVFztukvQOQ5XO13vwLZTRIHVM6lGA60URsc6ktINGRYSuTLxiqeAHWeCmixOvzo2W2576pZDY+W0kzNB0TO6BvBtNPs8Zajnp+7gNKSlm3d1m02cMgYvBRIXt6GYm+ryVFz3GrC4Ycuy7566b2GGtiC2/0V0Uc19q85w6VpY46Q7oOYyJ2yHEuC+6APp6WpCmwucqsOPnYMMt4W/TwVcmtJibUV8Ck4XGSfqpIQwnhSHog+iLcfygXzbVhFUydiYFg2KCTsGgb9vDonS3So7/x5Uu0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LS3Jt95F32lQJdJENZZ2o7TuwFllYQWxqJV6BSXJmo2oFyeyfRDOv6PUyGDQ?=
 =?us-ascii?Q?c4g+GJHzWE74DnBEmVC67CowyhupAOMNIoe+GDXb3065ilVeQhDKoopH5yPU?=
 =?us-ascii?Q?PIQIFYikoXycF/5A/qCuncg4uyqqQa3qaDUxdzkuXEqR+cSkVjJTeHXD+jkR?=
 =?us-ascii?Q?0EodIiX13pcvQ+Yy8hLkYY/tub27fJJuPIGWIARsykR2ziNqDcq7k6JnruH6?=
 =?us-ascii?Q?XXkm6ebLHX79H7ofTHF8TrRVlRC5Y+1zrPey3VFNPnA4Eq8RnwUaWr8S2uDz?=
 =?us-ascii?Q?PdDYu7A0NGZeWsgvOpbyL2SM+9WyHae3Vf7iEaGEr/oSI9PDUkcNnJu7nYfp?=
 =?us-ascii?Q?uct0njJ5z8NFqIhN9ujlCiKG4x7lgs94gvrpIlMAdS9v8rckep0IESRXOLZN?=
 =?us-ascii?Q?/nzuLbtyVLUFZQBkNfcHpmCeC3pJWLr81ayFG1yrYKR89kjPN6go9npz0+Ca?=
 =?us-ascii?Q?o0OVVekkmT07AHnB2/PFpLJBpdkHO9z7ckN1asqYjTB7hJ7qWr8A7rFO2EYl?=
 =?us-ascii?Q?WvNXp55CxFCOxFB498khDqNGnXpiYdL/d7wuIbc12z55IUTYs2mmwy4ptYxs?=
 =?us-ascii?Q?P1azBsUiwI6YFu7o5aJJW+3vnaZhYJCbMLVlvkallydWvjwmf5PpV2IGXfe0?=
 =?us-ascii?Q?JlAOQHS+l0fTsm4jdbyAbyxC+73JJ+lnYtg0nGSE4iXKXDFAxLTyPX4iNRg0?=
 =?us-ascii?Q?F9ie3I6eU3MYK0RAFi0Q9T7x7kGyeNVeHef/f8GaCyRTtRNR73b6FBWVOGNr?=
 =?us-ascii?Q?LHnQziqdE8Lmj/ToA0RKoi8H5yTO+dNmZSlV8azaCvBaQ28vv4LaJrc9JuTB?=
 =?us-ascii?Q?5e/9A3IJZVtheO/LoOvRN4Ju9m+CWLFixqvHtjhakObK/aEbnxIFw4wLfpRv?=
 =?us-ascii?Q?+Digui19IhZniNCtCU1gmHtkdfCTe07T3vTfQLSb4M0iWkKMndweyKdemGaG?=
 =?us-ascii?Q?KID6n5QZmuGm1jwluLKeAXmX82XIjTcV10j2vKP/eORSnltQhBSHvFKKg92I?=
 =?us-ascii?Q?iFEF3gYZtCf/vc8fvCuBtq9tM2of0KAQJaKVXDpMul9S1W46kTQ4jN8Z9aIi?=
 =?us-ascii?Q?kEABvgcu62byh0TzWd6JOnej1DMlDCcrYPx4kydU0U05NyQam3uQx9IE3tl5?=
 =?us-ascii?Q?AyM/3evILeVzSGzdnXqlk4kv/pdDawMfoZ3IXL+uLPQ4efKgWbKxbQZM5kQ0?=
 =?us-ascii?Q?m4xhcgpMwTXy5fYR5eg46N694nKiM/mdJAFmyBWRww+oAipquHCQDeIaGgZU?=
 =?us-ascii?Q?+GQaGKyhMNZ8ADrdfgdrecGCPRHZL9V3ebh2H2s2zQrpZ2rgqsTYYS8shxkk?=
 =?us-ascii?Q?vxejHU67lxm8A0j5UaBNP4dJ1UrMqoQhHlPPTd/K7eSJ9+5cjC9lO8dzvcQ8?=
 =?us-ascii?Q?pQRnhttp+XX0tYh2EmDIpjy9Kbi/cnX5W1pihsmL5pkZKdZ0UZt+d/LmhVqq?=
 =?us-ascii?Q?JN2sZ3ZWTS0+CBuaePqQ/F/D546HSqcm8EQXGqDng/DdwDUwDtxG1QD5arDJ?=
 =?us-ascii?Q?e9hYNaC1rdjTuj5ZeIgDXuGWtPo5twtklTIRXuhPiy0fRg7lakg5DE/nRGV+?=
 =?us-ascii?Q?zLKE22SS2LnXdwM93LSlIsMMfrBPUHCyzdfCUDRx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45e7e66e-e272-4fdf-67a3-08dc55977cad
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2024 17:40:29.9831 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: faD5AOeK8ouFOsLwye9qdvpP/kOmK8+3k5ad7yhWD0V1Fh49jTcmGIjnJLLIQmPB3yQWRdSNr7oLpSm4H5nCbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6980
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
> From: Sebastian Wick <sebastian.wick@redhat.com>
> Sent: Friday, April 5, 2024 10:46 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> Murthy, Arun R <arun.r.murthy@intel.com>; Syrjala, Ville
> <ville.syrjala@intel.com>; Kumar, Naveen1 <naveen1.kumar@intel.com>
> Subject: Re: [3/7] drm/i915/dp: Fix Register bit naming
>=20
> On Thu, Apr 04, 2024 at 08:59:27AM +0530, Suraj Kandpal wrote:
> > Change INTEL_EDP_HDR_TCON_SDP_COLORIMETRY enable to
> > INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX as this bit is tells TCON to
> > ignore DPCD colorimetry values and take the one's sent through SDP.
>=20
> I actually like the original name because it tells the TCON to enable pro=
cessing
> of SDP Colorimetry. The new name is okay as well.

But what this bit actually tells the TCON is to ignore the values in set co=
ntent_luminance, edp_hdr_getset_params dpcd register which were set through=
 aux. Hence to keep in line what this bit actually tell us renamed it

Regards,
Suraj Kandpal

>=20
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index 94edf982eff8..3d9723714c96 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -74,7 +74,7 @@
> >  # define INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE
> BIT(4)
> >  # define INTEL_EDP_HDR_TCON_SRGB_TO_PANEL_GAMUT_ENABLE
> BIT(5)
> >  /* Bit 6 is reserved */
> > -# define INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_ENABLE
> BIT(7)
> > +# define INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX
> 	      BIT(7)
> >
> >  #define INTEL_EDP_HDR_CONTENT_LUMINANCE                               =
 0x346 /*
> Pre-TGL+ */
> >  #define INTEL_EDP_HDR_PANEL_LUMINANCE_OVERRIDE
> 0x34A

