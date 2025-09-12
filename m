Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0EDB5489D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 12:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01BF410EBF3;
	Fri, 12 Sep 2025 10:03:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bY5qPE/x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76A7C10E199;
 Fri, 12 Sep 2025 10:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757671409; x=1789207409;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sYw3HedvvmgizTNxVI97WXPIvzEitIy+T6ddvjzF1Jw=;
 b=bY5qPE/x5K5O6e9aGjRQDSDKllI1eYsJ7pDe1IMSztTlcsgz+Y8Ub5H/
 qcUwN1EzrgyQ/VJt4/VVv0RhSCBtHGmZie1SggCmRvoxbf9Kj1kAattj3
 PtAeZosSG1iBd9bWYFRahD70k9Wf+T/waM7RSCfNXfAJpZ+l1SRBfYC7s
 ojBI0ISMEqVWeOSE4uyNhrRRNG8DrG7B5yPCZ9KwOfAXtKNkuhrckp0OT
 alkRGZThsWwk50Pp0WYNQLgR5N/UGD4wpPTOzD52LUj48dyYUotGBZJ81
 b/A3DvH91IvopeWFOWtY4g0WHRXTlfSLGJzRud+uazfv0loG5gk04jZh6 w==;
X-CSE-ConnectionGUID: CmaZ74DnSK6jTETZgrIERA==
X-CSE-MsgGUID: l5445QBTRL67cnVpgRkWXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11550"; a="70699421"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="70699421"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 03:03:28 -0700
X-CSE-ConnectionGUID: i+X5rVMbQniVaEr/BixRVg==
X-CSE-MsgGUID: Jqgpv1yrT56o32kszfAB+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173760343"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 03:03:27 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 03:03:26 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 12 Sep 2025 03:03:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.55)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 03:02:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J1tBgXfnXQ4nO2ZuCyvJhusRKl9cdaRKpSeWlYGIlUcMMUTM6UanuzY53yEYWrb2b5/pkEMprfWxiaT1mqRX0kg1T+PCq2sxRqYcaHRCTvvpsD64oa4pFN1TZ5Q+5+/B+zo3Iu3ASpHVofNsnjXXW16PSOFQ6fs9RtiA4zs9UO9WUxsY660XR1Ruuzj+4zSFzWW+THh/FhntdhFlAWoU/1j/KgFlSn6C0sl5pHhFHauDGRpfssUPK29Z9vAXJfnD1sBMSQkQkEASGTMVGZVmU+FcKkkTWt21hMjSdYuDRu4FZdzi9RqvSuMd2dGby8Ob5wubpM6+werj7iOnpGOkzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ShXWNkDNDZT8wliWV/+R4U+Lth6vEMMyRYRo7sUBRTU=;
 b=pb9QOnVD83UIdH8quiv38XHSX8coGoRt6HfGvmgWLD/fAxBQSEpH2gO2+LuEzFKGsOJOxhrfhuEqaJGNDi70UnmTOXvtYE4vA1GlNWFLEeqCazOXidK4zXb+117cFMqKcyGVCOwO1wkLAksELWJgjI8cpTit8KrFWulxdKZsb8UBARkFBueaK0+cn+XOviZA2IAwe4PgBUf8SJ5aa4uCofNb5u4ifhM0XGyC/2QV+Mh5XkPUlrOb/l3OgZ/6ZNjJbKN1YLPu7TZkkPwUIhTDW8tVfZbhbYZRprThOyUCEa7H4LKo3IWbtCVgloTqLicec4Z0jwenoVP5D/KLaHefyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by SA1PR11MB8425.namprd11.prod.outlook.com (2603:10b6:806:385::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Fri, 12 Sep
 2025 10:02:51 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720%6]) with mapi id 15.20.9094.021; Fri, 12 Sep 2025
 10:02:51 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/3] drm/i915/display: Add definition for wcl as
 subplatform
Thread-Topic: [PATCH 2/3] drm/i915/display: Add definition for wcl as
 subplatform
Thread-Index: AQHcI1/QFdZLIm+yC0qXTMtydYBd17SPNcGAgAAbUnA=
Date: Fri, 12 Sep 2025 10:02:51 +0000
Message-ID: <IA1PR11MB62667A2970D06467121C3D03E208A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250911210514.389014-1-dnyaneshwar.bhadane@intel.com>
 <20250911210514.389014-3-dnyaneshwar.bhadane@intel.com>
 <84fc10ec3b82b3436b521811589067ad0850eacd@intel.com>
In-Reply-To: <84fc10ec3b82b3436b521811589067ad0850eacd@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|SA1PR11MB8425:EE_
x-ms-office365-filtering-correlation-id: 485f52ea-d819-4846-4056-08ddf1e388df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?iNbfGBTacbJtCK/X4RlhX4YVTOSPRPW9deI7KH3aIrOH6aPwmAlyk8sP2N+3?=
 =?us-ascii?Q?KbS/1xc+CXK74ctWJ9BjZB7uUEC7/epqo1GVxl788nZ4Fk0B6j6Ktsm1fa/9?=
 =?us-ascii?Q?LPWK9OiLdoVEf5LzRBirmHCoN3wBEJdKoH+NYN6nS9MmOpMs6TTIpXvbBb0T?=
 =?us-ascii?Q?IVs8w8MLTmfEoFkneboir1I0Bvpe5mBQjCWKlOPvxT24U8kprHx7rtmRw/bL?=
 =?us-ascii?Q?z5wFVeYqwtovU7Kd3PKWpwKO4DePT3LkD1g6nUDYpjawmjNQXrs6yCIBKK3Z?=
 =?us-ascii?Q?FVb9TUdksEyW8BsIAJR4qckxzb9ZurAkPzY2Gk3MVwMDqWHsASQS9tl7uNvv?=
 =?us-ascii?Q?ofDNwc9ZwGknTdANgwxgp8Fllv40yVX8WNQ65tjC6dNUviNdf8fmJVhPMK0l?=
 =?us-ascii?Q?4oHrrbkDbfIA0bpjKJnZ65cjrnUNajAJ8pZUmHRovAw7LGe6WPD37qtQJ+dU?=
 =?us-ascii?Q?MxqnDj3hwIPgHuexlVlBiFgc654f8ok84wxY1Ts+XHXffAL19QwicPq96qV+?=
 =?us-ascii?Q?3tPUAOu//yBNTBGgtoq5JPchby4gpctlMZKZK3Q6eAKUDseSDRq4c6qLTO6y?=
 =?us-ascii?Q?F7PmgVvuWHCOmV0+yXY8YUqDj4z69/ldz9osx7cgN8bWxc8W1pvpkDQ9FcVO?=
 =?us-ascii?Q?oIYtGKJImfpmQMOi8C1/xi0j4MJrwrxODw4SRWaMWUp5D2ZTTKny+eKNyvLW?=
 =?us-ascii?Q?dO40NMpLE46AJWjYCUziY9UefI61OQyF3zDxHRwduEB0VdcBrUKBrVLsTULg?=
 =?us-ascii?Q?tojJO/rJ8iI1HRxq+r+cuoAHMx5RIYykiM0KtCUpRTWnYzzzGf4jlJasNQ7Q?=
 =?us-ascii?Q?2cfujEfUndXzpfdI4ov+kfx5SnDcrqtEwahh6hLN1sanyapRLrtW/Miq6wY/?=
 =?us-ascii?Q?d5uL2UqpuUVQfZmCa8mPfiuHOHLiVjLQdI8RB91VAybg1OQmAsxzuNhgl9G5?=
 =?us-ascii?Q?jhzW8e3TFMhTF7Y4j64TcaB3BWLNCrqzXVg0WinRaUxKpRNXRSWiqQ6F/5zA?=
 =?us-ascii?Q?f1pH6BrPneDxJhH6aZkX0QMFUiIFbERxhWfvPWENSfdhu8x41yhPjV/JoFgi?=
 =?us-ascii?Q?0h6FSPuznE0OR8SfrVuyKSaU2qJhwSfxtSf/1kT/OvEV09ypAPrEtTHluAlg?=
 =?us-ascii?Q?JavKhHkStLtyILLgV8tfZK05JAAEWi0x9O7YfXM9jr5yG7bbvNnO5LgeazYt?=
 =?us-ascii?Q?rRnLCC2lWsjvi/5dw89nGmXMWG81/t9vnKxRaS2+JZjTnBb86q3GaC6PyM1I?=
 =?us-ascii?Q?ZaIhvjeebHvrfe+U5qVumx58HT0pa6xpSzuY4vGwFmWque/L8bNrBriZGXOx?=
 =?us-ascii?Q?43NwpKc6sb43JKxburgRDEuTz0WBlNhMhrUdBhPVT78XUwO17Z/fToLTrGCW?=
 =?us-ascii?Q?jvhmPGfZVKMm2OciJ9kfj9a/NN5OGq5s7aP+Dz7alDJpMYaKAXq54EmGSv8P?=
 =?us-ascii?Q?/p8KE3o6g6ZQs0eVcuKHnUlyykl+yabpMC5APhOcQVZS8c2BqUiXq0UqEQ5d?=
 =?us-ascii?Q?VIMiGP5QHbwRZrI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uEIFGucf8cKprvHeNVw4dZl/098cImA/1AkeZe226dUe0J072I0gDDpMkL/m?=
 =?us-ascii?Q?YZW/vb8dWizHboTV/2eQ8zHt2WDTuh3Qq42XmYYbYYsvRFl1N3RUh5EEzRLL?=
 =?us-ascii?Q?fDQMfDRFJKMzEnQQTMHXTNMI+snmPlpRkGsCYDAKNTR9+Eg6juPG6rEV+fv8?=
 =?us-ascii?Q?6pEJq8OpzvLI2TRNq2o88aZPgS/DOnvd6E2qfhk+ty6JkJrtrKfBh70ZpgzD?=
 =?us-ascii?Q?XynvjIEi09e2X0MWt5d5qzMlNeBJQOhakRsy/KRh5xLjvDeCs3Y7hySgEaKK?=
 =?us-ascii?Q?eJAIMXiHYOewf61AEG1ElzHrjlrbSr6I26aG+3NuPNnAXD1IRrTKJbEJ88uc?=
 =?us-ascii?Q?YZ3CxlaGryLvu5WRdKRFMK0gIBxgetzuwHxi4Cp52IyYSi4R+gzRDSGNBFbY?=
 =?us-ascii?Q?0gQOvwS3tQFYyr0cXl2ngpoBY8NyP0lM1hpVIANFtJIBbHY4zmMsj6Kt+7N0?=
 =?us-ascii?Q?PEO3E8vEU5UyO7DjtzzIONchT0wemiWKONzD8bpTaZRM0P50Y7dao/+ZASV7?=
 =?us-ascii?Q?pIJXSONFgyPjqINSDjbMt1Pro2cBAKZDgCuS9DzPM4lIv+qfXjO5rykLVYKd?=
 =?us-ascii?Q?bksKIPkJu4v5pDLAPfhpfrLMBoEds/wFYWvALuq1L2YfdmaIA5fCMykBLGLh?=
 =?us-ascii?Q?+jZOr+4R3p8t36/DndKnUbj/MjXLakKiQOy/+3cfjW/HhCjDEFCHduo/zpPo?=
 =?us-ascii?Q?WZHk5H1ClTt17JevtUfFGmeIaL6ZEQ1BnBDRAerrXazfAd8m1/5rvU61cZGf?=
 =?us-ascii?Q?JDKtK/QfC8muajlryxHE66ua5w3D/PkDn9c9lJIC6v0VOP7Ua5jEm7uUVPn1?=
 =?us-ascii?Q?PnxplxrhPnMJ8C1vpixeNEsvtm3G52X4Frcl/hNuVen9EanmocQXQp3tnj4W?=
 =?us-ascii?Q?eQ5gcyOBnT2VcxTSM5//T37rwcwBbv6lL8Sczw+zS5PEtclLWCU69cPXazFO?=
 =?us-ascii?Q?c/XOe+mHIO293r10P9M/hoUPiVbH5mGxy3Z2rpPL4L6DHfEmcXhWweMKmho1?=
 =?us-ascii?Q?f7j2LggddVNvI4jsgr24CW6RAL2ggtirOSItt0KrfzmOA0vKIvlCOOvNi9/o?=
 =?us-ascii?Q?tWE978v/xv/u3uMhuknIibV0XpcMAjfmBRAU9sl/JP4tRjEg7QNZNsc2cleD?=
 =?us-ascii?Q?2b/peWu2MMz9yj0hVbwKc0YGr3Ar+e+n9cpo0mFtA5P88TOiqXKEjNG3v0GU?=
 =?us-ascii?Q?pQor57fRATZebeQZtRaL3fveIzcESaHDJNEPy1ctlqnfaXTD3bUMTu5nh0Ry?=
 =?us-ascii?Q?MxlXxxNgKOnlyibuXchB455oW6DAbsSql4oBMaOh5daCgt3UOo0vvxC1PK3E?=
 =?us-ascii?Q?pCtXxsUZGGdNDOr/yQdhCCAphjWS4gDFpN4/rznSy8hWbRkxZuvjdGoNrDDk?=
 =?us-ascii?Q?V8lGQhq6PCdY2URqW8niAooWD4W4LH3b+CcfTkyVumdAcxO4PGmIa6k78DRN?=
 =?us-ascii?Q?oyW8Kd7sgl1dJRYgM93Nb/4NKM09eYJ2GbEcPkmLUYzqiuFEs3OmwnNmFrRb?=
 =?us-ascii?Q?ZY7eIrFl2zPaKBSQzg/KbEcy9TVyaULAIBNP9war5wlnBY0axZe/pI3SQaff?=
 =?us-ascii?Q?HJ6CBgrB13zhKtbsWqTPmyOex51pJuTnnHZMWEPaMBIzCEdM+/nfr+ImZKcy?=
 =?us-ascii?Q?lw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 485f52ea-d819-4846-4056-08ddf1e388df
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2025 10:02:51.2356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FFeqwaHWS4aUUDNePEmCpp1N3HDKN8RNUAOHEtPfM9qARDFQKl6uayzy+Whjt3f3OMMn8spgwhsg09Xi7UCbEBKCDuERWeJe62Mycd7xJmc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8425
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
> Sent: Friday, September 12, 2025 1:52 PM
> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> xe@lists.freedesktop.org
> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Subject: Re: [PATCH 2/3] drm/i915/display: Add definition for wcl as
> subplatform
>=20
> On Fri, 12 Sep 2025, Dnyaneshwar Bhadane
> <dnyaneshwar.bhadane@intel.com> wrote:
> > Update the device definition structs for adding wildcat lake as
> > subplatfrom of pantherlake.
> >
> > Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_device.c | 13
> > +++++++++++++  drivers/gpu/drm/i915/display/intel_display_device.h |
> > 4 +++-
> >  2 files changed, 16 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c
> > b/drivers/gpu/drm/i915/display/intel_display_device.c
> > index 65f0efc35bb7..1b9c921290e1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> > @@ -1379,6 +1379,11 @@ static const u16 mtl_u_ids[] =3D {
> >  	0
> >  };
> >
> > +static const u16 wcl_ids[] =3D {
> > +	INTEL_WCL_IDS(ID),
> > +	0
> > +};
> > +
> >  /*
> >   * Do not initialize the .info member of the platform desc for GMD ID =
based
> >   * platforms. Their display will be probed automatically based on the
> > IP version @@ -1406,6 +1411,13 @@ static const struct platform_desc
> > bmg_desc =3D {
> >
> >  static const struct platform_desc ptl_desc =3D {
> >  	PLATFORM(pantherlake),
> > +	.subplatforms =3D (const struct subplatform_desc[]) {
> > +		{
> > +			SUBPLATFORM(pantherlake, wildcatlake),
> > +			.pciidlist =3D wcl_ids,
> > +		},
> > +		{},
> > +	}
> >  };
> >
> >  __diag_pop();
> > @@ -1482,6 +1494,7 @@ static const struct {
> >  	INTEL_LNL_IDS(INTEL_DISPLAY_DEVICE, &lnl_desc),
> >  	INTEL_BMG_IDS(INTEL_DISPLAY_DEVICE, &bmg_desc),
> >  	INTEL_PTL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
> > +	INTEL_WCL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
>=20
> Right, so this part belongs in the previous patch. Otherwise the series b=
reaks
> bisect.
Yes, Thank you, I will squash above line in previous patch.
>=20
> >  };
> >
> >  static const struct {
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> > b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index 6e87b763fe7c..dcc010caa423 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -101,7 +101,9 @@ struct pci_dev;
> >  	/* Display ver 14.1 (based on GMD ID) */ \
> >  	func(battlemage) \
> >  	/* Display ver 30 (based on GMD ID) */ \
> > -	func(pantherlake)
> > +	func(pantherlake) \
> > +	func(pantherlake_wildcatlake)
> > +
> >
> >  #define __MEMBER(name) unsigned long name:1;  #define __COUNT(x) 1 +
>=20
> --
> Jani Nikula, Intel
