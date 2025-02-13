Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CD0A33A3F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 09:48:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A2C310EA28;
	Thu, 13 Feb 2025 08:48:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bo6A/GKc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5EA10E06E;
 Thu, 13 Feb 2025 08:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739436523; x=1770972523;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E5qTv2mfOh3bFq2oHscXvCnNVFbtc3lPOt3mjUQOYEo=;
 b=bo6A/GKcuNJrwODskdDtnfQGj/fdHGDAikQqUQ3akeM5zMasDrqMt/r1
 kDVZRydxqdjMEc9sPpnQxHhG5o/3IGj3Bh77E1eiS8V55aXRJAyVjvbeP
 Cv+PfwW+7w2nYzkMr0Vf9oxSU6E6SIF1OcnCs2Dje/34WPaVzw74TT1l0
 r7uT8BOex6vFANwSKasRP0aUddBdTJp6kl0r1baa6zUp3U6H5PvXe9b4c
 AV3UiFrGEHscfem/BLlaJTxKgCAIo+3b9qWvTjXA3UY1USD7j5L0uKWrf
 J1pTdksR6n2hS+PYhJYywviYTk3QvmWao3CgTcKTtY3uRoDZ95JM90gmv Q==;
X-CSE-ConnectionGUID: DngxrpYxTiqwHMyfj306XA==
X-CSE-MsgGUID: krNR+4NUTh21jZOJ7JDa+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="39992883"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="39992883"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 00:48:43 -0800
X-CSE-ConnectionGUID: jOVesm9PR8W1kJuGtdC8rA==
X-CSE-MsgGUID: 2daDq7UkSZOQ0g2GVmwD+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113739601"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 00:48:42 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 00:48:41 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 13 Feb 2025 00:48:41 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 00:48:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WIgSdGUjSY9rwrPTVa+2GZmgpRu5iTIBEVOfBqMEkLsbMneFJVChzdWkmXqli9T9vKO+hzmN9b/OlYMCl/zAQwhz1dxtpdWFzmx77FX8dEvsb4gHbw/w6Lc+3VxIbf1n88QLV+6tE6rIPr7BSgAKoBFc7uZDNQGs1Kp314Gw2GT4bJsvAY9LooNZSoyTs5nAVB1V/U7YGaDGq4AOBNHDFUamYyxwo1fGGd5j++mAInmijTK+gcnyFYgBaz35sW8qyrpreEPLZEOTGa5lxR4C7IYVcKlIjeitCwBQH9j8T50Ex5SpMkIwhUZ10lj7aULf5RX2LnbHJdLhRAQYXQjp1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VqYpuAgvCsOHrIpKD4lCJC7eh3YSkbfmKe2R3zAkAZI=;
 b=UXFodzqJo8v9VX68yog6KpyReybgu8EdKjXA/5DktRJ4QifamOrEbpNaC++genVHfA+Ly1dhNu7FOr++Dk/sEASo4UdHnRMTmBJVqNO38+KrdeJxYyULZ3KeyQ9+Du7GNOt3akedm9lX81QLSL5Nz4bXPJNlOSp7Q3tuHIxTtvj0qXx5KleF3BA+iNjdnP1JZbmczKH4803J3VbfHV2Ij+2lKdvTdV9BPV6ASpftp50WQxink/Ci6ba1x1BKaT447pojx8HUl6Pl86sBiJ+SYiUZNQ9504wdNmFwIsumWjAhylU3mJ0w/z2LNXFsWcK+pYD8sSwPMdSGq8xKHNOnbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB7677.namprd11.prod.outlook.com (2603:10b6:208:3fd::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Thu, 13 Feb
 2025 08:48:38 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 08:48:38 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 01/14] drm/i915/dp: convert g4x_dp.[ch] to struct intel
 display
Thread-Topic: [PATCH 01/14] drm/i915/dp: convert g4x_dp.[ch] to struct intel
 display
Thread-Index: AQHbfWxtie8ioUH1E0CawdY6cwuuF7NE7K3Q
Date: Thu, 13 Feb 2025 08:48:38 +0000
Message-ID: <SN7PR11MB6750A68DB16BDBA1B78D44BFE3FF2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
 <89ce4f7e6aa31f3db6316537f54c5bc7df852322.1739378095.git.jani.nikula@intel.com>
In-Reply-To: <89ce4f7e6aa31f3db6316537f54c5bc7df852322.1739378095.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB7677:EE_
x-ms-office365-filtering-correlation-id: b16cf8e5-7feb-421a-5ad6-08dd4c0b35b9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?57QCwFUt76Bl8C392aFebEz3uWQesJYonHbNhaTneOd3xSvR/LF3764ZBCYN?=
 =?us-ascii?Q?r7/WZBkOGUO062J/uAcQmCiavohVP6y0Ojp2qGm2OiLZp0Ipr8hmrWi+n+zv?=
 =?us-ascii?Q?nfaecm5RPoIEN3PZb0NfFbKS/QOHVKlbe4991r8rrIN9Bav49VnYuAHtFdDV?=
 =?us-ascii?Q?mCQ6AYr6k8a07Oa6uUGYHtwCSpz7WLXi8j4OGpVD/YkgWfg3vhhX96HstBBC?=
 =?us-ascii?Q?gMlknsxID6SMpeL4fY5WktODvqxnegCgTZxVCAzvPkTB+A6o1rnrjC6SGTDw?=
 =?us-ascii?Q?jWACjdIGvONm0/Ky8UJLxv4oKKsn9nBZ9ZhvW5gR97fhDw1sRAfAelI35pZI?=
 =?us-ascii?Q?Na+3hCbxvaKOXVoCQ3O6RzEjFazXEsWPuo8Nnpx9fCILjnLn8OUFH6LerNoJ?=
 =?us-ascii?Q?4Yzn3fjPKhfKRBJnTvGjs6ZSGfm515EELbGXkfXV5zqsemgU+AfOkZzvsD9t?=
 =?us-ascii?Q?Bh+gxYIZw/4EVKlbXEOSwZqiJMEGpfj4AnsCqRR3hz9mHn03m6KjPXURv5Pj?=
 =?us-ascii?Q?fOKKamO99FiQgNHkBEhM+hebh5qLcoaFa0cimjHmKLeSb/DhSwB8O+ze7WNH?=
 =?us-ascii?Q?fHT7gcYdD9QCTyvsscOq3loZC7jfXQZKIlgtLmc7P7U0U/H9u+1z43VCdZy8?=
 =?us-ascii?Q?yGJn+UHXStbPPj/7jDjSYvQ0CdY7joFdlohZ2sPLvhuFYF39HVfPuu+nArh6?=
 =?us-ascii?Q?7k+oKvUYik/a0CrFEFWs3ElaozbCx89hXHsIdkMNJXd+w6qjI3qo9DvxPFiu?=
 =?us-ascii?Q?H/k0ohSHY4FmzrA6fSKv2WmTL5FWuUvcMwdcTg8ihmUGDwQtmu2nk8q16Fod?=
 =?us-ascii?Q?K6/7ZeH05RooT9uaMpQ+xGFh1kT8/wESZLNqDQ3/w3+MU5T7CDJFd/0fPg50?=
 =?us-ascii?Q?TCeZkBYLHKbRxyJquKj1SNE8o0u0umeUia5lKzenhXHmVe5O/miFrFDVgm6r?=
 =?us-ascii?Q?SyCL4h88atmnAsYITS17GYUQqzl9QN1/j6KIQ/HqkEuDiDpgc7PDDYfVXsEp?=
 =?us-ascii?Q?IvDpxAq3l3vSbh2+invu01JhqCowNTkt0yfYASONGl/IBWOv9ySFp5DdO0gT?=
 =?us-ascii?Q?CcRYUyNUVdM/kRO6ufpTm3XngG7DIfsCVgOHjLdsUceALb7RmmTeh2F0S//r?=
 =?us-ascii?Q?wxkZ4NaMSBFwAVxmad8H9L00CzUsD7wtJl5sE/K0gB9gbUpfg0Po755LzImZ?=
 =?us-ascii?Q?V+vYANPTVgJlmyCewn9J8FpbC947V3/k3maT4eKChniC3tVa1USCm3QIQrhM?=
 =?us-ascii?Q?RQqGD9u/9TkO4i3/wRhQDuSfe4P5VV88XfLNr5PcR8bHNrpPNIEvxKbORMgt?=
 =?us-ascii?Q?ITKSVePYgvFU3YzUTDpJLqi3FEUWx+3eTe+yzWEMiTwwfdMSoqwL08BiWwbM?=
 =?us-ascii?Q?8gXa0E5doQFe/3CLg2cSkvv5VowSlH++LyzSVeTQiaiHBAi70L35Rpz8yRIl?=
 =?us-ascii?Q?i6JkYH4GUqIGcgSXwmjoFnwT5YdDMdZ0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KzbBIQFcy68azUgarxtP/oF01r/QUgso2OOYUlxQ8IBomcA5Uakx1+4lEan3?=
 =?us-ascii?Q?k0exyyPTCLe1S4H9pcaYh2LDtCszWVWHEBqP46GYShEPsQwmDsNXnVaKumWT?=
 =?us-ascii?Q?PqQaJSChI8UR0PXieKySV9iu/ajHAhMq/mj/lUU5YgX3Ips7sa4l13boOAjN?=
 =?us-ascii?Q?6crFutKa5GET7g2L2Do/ksYr54oO5JQNW05Zjnw9QFGQwCLZClv/00AM5PRh?=
 =?us-ascii?Q?O1GbPHu9P8Miq+XmbNdIJEDUatnyj6vXhgqIYgWhcXDzNq4paWnyN5K1xgnB?=
 =?us-ascii?Q?QFGceqVEMV8dcfPrftiHJB/noZAWDr46hDa9ky9MRKoohPbNlGRDI5bIAAea?=
 =?us-ascii?Q?1aTxxfYrgsNw47j5/fSdc2dmAk7k2pKBKND/f7dhU3M9ousKGHI1DVkGnYXF?=
 =?us-ascii?Q?gn8eri1OHLQbBKhzyKOfWq+kU775ePH+L6jPxBdre3lyUgDW/mTYg0u2Wass?=
 =?us-ascii?Q?y8RcS31XTxz6elVZGsGScylsyUkiaUt+QFngSQFDMCOpULtW4BaqGkbP1fCv?=
 =?us-ascii?Q?hPN9an6yhJ69nRagVtacec2aeun+vwhkaku7sRDovAkl01Y8iWxFGHMh68pn?=
 =?us-ascii?Q?+rSV+W5VjFkYcym7Yj5i2P11S92mv9asNXUeIF3V9KmHITNP7lesA025Aph/?=
 =?us-ascii?Q?P6Z8WOOD7yGitvKa2ha1YxWpVfbe+2cXfxWAKrTakrVqwTRiwuzZCQPBQji0?=
 =?us-ascii?Q?axw9GApcry2bAPtx1VzRpjNEKFKKt4c9Izew0sobJ58BqXncxCepcD1cixa4?=
 =?us-ascii?Q?3U+TpjdMu+mgw9etKDVUcQPKwQbrwDyhm/1XNAW2m8cLv9vl2w11QtxylAn1?=
 =?us-ascii?Q?XICzIxa5uVT4BR1+FvJL9YsAvfQ2E3LrNa1fgy8NK0QJclCyAbmmP24qWVD5?=
 =?us-ascii?Q?6oej23JLE5Tt4ze/i7npqO3wHApnhGDfMtJ73+jWq+9I3amNWihhx1utGTTq?=
 =?us-ascii?Q?PTTfSY9LFajJYAaHmuLTbIivgBYh8YDDxJu76yzv7Xl+8fmhtbnoc4ED2GeH?=
 =?us-ascii?Q?1IYiiTeb1ocUqXrk4hGRxs/0+7RRPuV0UzyCyrGZN0AOsf1r0/bRz6iQBMWf?=
 =?us-ascii?Q?aPL2Pdh+knAb4Y63XfCz8R2QqhlY5s2pScmrAlDSyLg8582kpMBPw5L6FYxH?=
 =?us-ascii?Q?OKhND29kD2XBGh7jzAfXubR5gS2mFlvdqpgNzISVrgSN0DaqWjw4pcOOznPJ?=
 =?us-ascii?Q?9hu3AcCrMYbeHKKZEnbkn0xVUzThqn8lr49w4ziSA0M56Q+oKhbbmnjCo4XR?=
 =?us-ascii?Q?08yCdLyJZSN1o9ao9nCtO4O/ryQZBhnqmG/m2kKAuaVAYFmoPSaZ6CtrUp4r?=
 =?us-ascii?Q?6axWJm6rZWWA4NTSZqgeUHHJq/7LL5MtkQYQEIU/Bo/L6uqiSgW/5Si5hGzd?=
 =?us-ascii?Q?vHJD+sFIzNJccIwaKhQGO6kqiUgtii9nkec5dZpQkFDiYZT9c8W4znIX5H0K?=
 =?us-ascii?Q?Q9WYP2x9CdKUz49QZqRAoRkoSBwqXaxhxdPFcga60dpuDKkyJYVrHxtJXUWm?=
 =?us-ascii?Q?gaQTU0mfXmTV6quxaabIzCFbyB4kR0phy7YQxjSaEI+Ks9BJFcy1nD2GW4qE?=
 =?us-ascii?Q?DVugljS4YJvL8xlvRTFOUn1gyQzVbmlD3otKPD2F?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b16cf8e5-7feb-421a-5ad6-08dd4c0b35b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 08:48:38.5946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EnQFktXGHqrMH2gjC7d7m6d6x1r6tZD0wKhIAAgEQx0nxLHZWJt/FDKe8eXCPCwsv3FE7471/mhnLoTG8x/+ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7677
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Wednesday, February 12, 2025 10:07 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 01/14] drm/i915/dp: convert g4x_dp.[ch] to struct intel
> display
>=20
> Going forward, struct intel_display is the main display device data point=
er.
> Convert as much as possible of g4x_dp.[ch] to struct intel_display.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c         | 80 +++++++++----------
>  drivers/gpu/drm/i915/display/g4x_dp.h         | 14 ++--
>  drivers/gpu/drm/i915/display/intel_display.c  | 20 ++---
> .../gpu/drm/i915/display/intel_pch_display.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_pps.c      | 11 ++-
>  5 files changed, 61 insertions(+), 66 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c
> b/drivers/gpu/drm/i915/display/g4x_dp.c
> index d3b5ead188ba..cfc796607a78 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -51,28 +51,29 @@ static const struct dpll chv_dpll[] =3D {
>  	{ .dot =3D 270000, .p1 =3D 4, .p2 =3D 1, .n =3D 1, .m1 =3D 2, .m2 =3D 0=
x6c00000 /*
> 27.0 */ },  };
>=20
> -const struct dpll *vlv_get_dpll(struct drm_i915_private *i915)
> +const struct dpll *vlv_get_dpll(struct intel_display *display)
>  {
> -	return IS_CHERRYVIEW(i915) ? &chv_dpll[0] : &vlv_dpll[0];
> +	return display->platform.cherryview ? &chv_dpll[0] : &vlv_dpll[0];
>  }
>=20
>  static void g4x_dp_set_clock(struct intel_encoder *encoder,
>  			     struct intel_crtc_state *pipe_config)  {
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	const struct dpll *divisor =3D NULL;
>  	int i, count =3D 0;
>=20
> -	if (IS_G4X(dev_priv)) {
> +	if (display->platform.g4x) {
>  		divisor =3D g4x_dpll;
>  		count =3D ARRAY_SIZE(g4x_dpll);
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		divisor =3D pch_dpll;
>  		count =3D ARRAY_SIZE(pch_dpll);
> -	} else if (IS_CHERRYVIEW(dev_priv)) {
> +	} else if (display->platform.cherryview) {
>  		divisor =3D chv_dpll;
>  		count =3D ARRAY_SIZE(chv_dpll);
> -	} else if (IS_VALLEYVIEW(dev_priv)) {
> +	} else if (display->platform.valleyview) {
>  		divisor =3D vlv_dpll;
>  		count =3D ARRAY_SIZE(vlv_dpll);
>  	}
> @@ -129,7 +130,7 @@ static void intel_dp_prepare(struct intel_encoder
> *encoder,
>=20
>  	/* Split out the IBX/CPU vs CPT settings */
>=20
> -	if (IS_IVYBRIDGE(dev_priv) && port =3D=3D PORT_A) {
> +	if (display->platform.ivybridge && port =3D=3D PORT_A) {
>  		if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
>  			intel_dp->DP |=3D DP_SYNC_HS_HIGH;
>  		if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC) @@
> -148,7 +149,7 @@ static void intel_dp_prepare(struct intel_encoder
> *encoder,
>  			     pipe_config->enhanced_framing ?
>  			     TRANS_DP_ENH_FRAMING : 0);
>  	} else {
> -		if (IS_G4X(dev_priv) && pipe_config->limited_color_range)
> +		if (display->platform.g4x && pipe_config-
> >limited_color_range)
>  			intel_dp->DP |=3D DP_COLOR_RANGE_16_235;
>=20
>  		if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC) @@
> -160,7 +161,7 @@ static void intel_dp_prepare(struct intel_encoder
> *encoder,
>  		if (pipe_config->enhanced_framing)
>  			intel_dp->DP |=3D DP_ENHANCED_FRAMING;
>=20
> -		if (IS_CHERRYVIEW(dev_priv))
> +		if (display->platform.cherryview)
>  			intel_dp->DP |=3D DP_PIPE_SEL_CHV(crtc->pipe);
>  		else
>  			intel_dp->DP |=3D DP_PIPE_SEL(crtc->pipe); @@ -180,9
> +181,8 @@ static void assert_dp_port(struct intel_dp *intel_dp, bool stat=
e)
> }  #define assert_dp_port_disabled(d) assert_dp_port((d), false)
>=20
> -static void assert_edp_pll(struct drm_i915_private *dev_priv, bool state=
)
> +static void assert_edp_pll(struct intel_display *display, bool state)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	bool cur_state =3D intel_de_read(display, DP_A) & DP_PLL_ENABLE;
>=20
>  	INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state, @@ -201,7
> +201,7 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
>=20
>  	assert_transcoder_disabled(dev_priv, pipe_config->cpu_transcoder);
>  	assert_dp_port_disabled(intel_dp);
> -	assert_edp_pll_disabled(dev_priv);
> +	assert_edp_pll_disabled(display);
>=20
>  	drm_dbg_kms(display->drm, "enabling eDP PLL for clock %d\n",
>  		    pipe_config->port_clock);
> @@ -223,7 +223,7 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
>  	 * 1. Wait for the start of vertical blank on the enabled pipe going to
> FDI
>  	 * 2. Program DP PLL enable
>  	 */
> -	if (IS_IRONLAKE(dev_priv))
> +	if (display->platform.ironlake)
>  		intel_wait_for_vblank_if_active(display, !crtc->pipe);
>=20
>  	intel_dp->DP |=3D DP_PLL_ENABLE;
> @@ -242,7 +242,7 @@ static void ilk_edp_pll_off(struct intel_dp *intel_dp=
,
>=20
>  	assert_transcoder_disabled(dev_priv, old_crtc_state-
> >cpu_transcoder);
>  	assert_dp_port_disabled(intel_dp);
> -	assert_edp_pll_enabled(dev_priv);
> +	assert_edp_pll_enabled(display);
>=20
>  	drm_dbg_kms(display->drm, "disabling eDP PLL\n");
>=20
> @@ -253,10 +253,9 @@ static void ilk_edp_pll_off(struct intel_dp *intel_d=
p,
>  	udelay(200);
>  }
>=20
> -static bool cpt_dp_port_selected(struct drm_i915_private *dev_priv,
> +static bool cpt_dp_port_selected(struct intel_display *display,
>  				 enum port port, enum pipe *pipe)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	enum pipe p;
>=20
>  	for_each_pipe(display, p) {
> @@ -277,11 +276,11 @@ static bool cpt_dp_port_selected(struct
> drm_i915_private *dev_priv,
>  	return false;
>  }
>=20
> -bool g4x_dp_port_enabled(struct drm_i915_private *dev_priv,
> +bool g4x_dp_port_enabled(struct intel_display *display,
>  			 i915_reg_t dp_reg, enum port port,
>  			 enum pipe *pipe)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	bool ret;
>  	u32 val;
>=20
> @@ -290,11 +289,11 @@ bool g4x_dp_port_enabled(struct
> drm_i915_private *dev_priv,
>  	ret =3D val & DP_PORT_EN;
>=20
>  	/* asserts want to know the pipe even if the port is disabled */
> -	if (IS_IVYBRIDGE(dev_priv) && port =3D=3D PORT_A)
> +	if (display->platform.ivybridge && port =3D=3D PORT_A)
>  		*pipe =3D (val & DP_PIPE_SEL_MASK_IVB) >>
> DP_PIPE_SEL_SHIFT_IVB;
>  	else if (HAS_PCH_CPT(dev_priv) && port !=3D PORT_A)
> -		ret &=3D cpt_dp_port_selected(dev_priv, port, pipe);
> -	else if (IS_CHERRYVIEW(dev_priv))
> +		ret &=3D cpt_dp_port_selected(display, port, pipe);
> +	else if (display->platform.cherryview)
>  		*pipe =3D (val & DP_PIPE_SEL_MASK_CHV) >>
> DP_PIPE_SEL_SHIFT_CHV;
>  	else
>  		*pipe =3D (val & DP_PIPE_SEL_MASK) >> DP_PIPE_SEL_SHIFT;
> @@ -306,7 +305,6 @@ static bool intel_dp_get_hw_state(struct
> intel_encoder *encoder,
>  				  enum pipe *pipe)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	intel_wakeref_t wakeref;
>  	bool ret;
> @@ -316,7 +314,7 @@ static bool intel_dp_get_hw_state(struct
> intel_encoder *encoder,
>  	if (!wakeref)
>  		return false;
>=20
> -	ret =3D g4x_dp_port_enabled(dev_priv, intel_dp->output_reg,
> +	ret =3D g4x_dp_port_enabled(display, intel_dp->output_reg,
>  				  encoder->port, pipe);
>=20
>  	intel_display_power_put(display, encoder->power_domain,
> wakeref); @@ -391,7 +389,7 @@ static void intel_dp_get_config(struct
> intel_encoder *encoder,
>=20
>  	pipe_config->hw.adjusted_mode.flags |=3D flags;
>=20
> -	if (IS_G4X(dev_priv) && tmp & DP_COLOR_RANGE_16_235)
> +	if (display->platform.g4x && tmp & DP_COLOR_RANGE_16_235)
>  		pipe_config->limited_color_range =3D true;
>=20
>  	pipe_config->lane_count =3D
> @@ -433,7 +431,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
>=20
>  	drm_dbg_kms(display->drm, "\n");
>=20
> -	if ((IS_IVYBRIDGE(dev_priv) && port =3D=3D PORT_A) ||
> +	if ((display->platform.ivybridge && port =3D=3D PORT_A) ||
>  	    (HAS_PCH_CPT(dev_priv) && port !=3D PORT_A)) {
>  		intel_dp->DP &=3D ~DP_LINK_TRAIN_MASK_CPT;
>  		intel_dp->DP |=3D DP_LINK_TRAIN_PAT_IDLE_CPT; @@ -479,7
> +477,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
>=20
>  	msleep(intel_dp->pps.panel_power_down_delay);
>=20
> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> +	if (display->platform.valleyview || display->platform.cherryview)
>  		vlv_pps_port_disable(encoder, old_crtc_state);  }
>=20
> @@ -682,7 +680,6 @@ static void intel_enable_dp(struct intel_atomic_state
> *state,
>  			    const struct drm_connector_state *conn_state)  {
>  	struct intel_display *display =3D to_intel_display(state);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	u32 dp_reg =3D intel_de_read(display, intel_dp->output_reg);
>  	intel_wakeref_t wakeref;
> @@ -691,7 +688,7 @@ static void intel_enable_dp(struct intel_atomic_state
> *state,
>  		return;
>=20
>  	with_intel_pps_lock(intel_dp, wakeref) {
> -		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> +		if (display->platform.valleyview || display-
> >platform.cherryview)
>  			vlv_pps_port_enable_unlocked(encoder,
> pipe_config);
>=20
>  		intel_dp_enable_port(intel_dp, pipe_config); @@ -701,10
> +698,10 @@ static void intel_enable_dp(struct intel_atomic_state *state,
>  		intel_pps_vdd_off_unlocked(intel_dp, true);
>  	}
>=20
> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> +	if (display->platform.valleyview || display->platform.cherryview) {
>  		unsigned int lane_mask =3D 0x0;
>=20
> -		if (IS_CHERRYVIEW(dev_priv))
> +		if (display->platform.cherryview)
>  			lane_mask =3D
> intel_dp_unused_lane_mask(pipe_config->lane_count);
>=20
>  		vlv_wait_port_ready(display, dp_to_dig_port(intel_dp),
> lane_mask); @@ -1264,7 +1261,6 @@ static void
> intel_dp_encoder_destroy(struct drm_encoder *encoder)  static void
> intel_dp_encoder_reset(struct drm_encoder *encoder)  {
>  	struct intel_display *display =3D to_intel_display(encoder->dev);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->dev);

I know this hasn't changed in this patch and is already there merged in cod=
e but a good chance to
Do to_intel_display(encoder) instead of encoder->dev
Otherwise
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>  	struct intel_dp *intel_dp =3D
> enc_to_intel_dp(to_intel_encoder(encoder));
>=20
>  	intel_dp->DP =3D intel_de_read(display, intel_dp->output_reg); @@ -
> 1272,7 +1268,7 @@ static void intel_dp_encoder_reset(struct drm_encoder
> *encoder)
>  	intel_dp->reset_link_params =3D true;
>  	intel_dp_invalidate_source_oui(intel_dp);
>=20
> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> +	if (display->platform.valleyview || display->platform.cherryview)
>  		vlv_pps_pipe_reset(intel_dp);
>=20
>  	intel_pps_encoder_reset(intel_dp);
> @@ -1283,10 +1279,10 @@ static const struct drm_encoder_funcs
> intel_dp_enc_funcs =3D {
>  	.destroy =3D intel_dp_encoder_destroy,
>  };
>=20
> -bool g4x_dp_init(struct drm_i915_private *dev_priv,
> +bool g4x_dp_init(struct intel_display *display,
>  		 i915_reg_t output_reg, enum port port)  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	const struct intel_bios_encoder_data *devdata;
>  	struct intel_digital_port *dig_port;
>  	struct intel_encoder *intel_encoder;
> @@ -1337,14 +1333,14 @@ bool g4x_dp_init(struct drm_i915_private
> *dev_priv,
>  	intel_encoder->suspend =3D intel_dp_encoder_suspend;
>  	intel_encoder->suspend_complete =3D g4x_dp_suspend_complete;
>  	intel_encoder->shutdown =3D intel_dp_encoder_shutdown;
> -	if (IS_CHERRYVIEW(dev_priv)) {
> +	if (display->platform.cherryview) {
>  		intel_encoder->pre_pll_enable =3D chv_dp_pre_pll_enable;
>  		intel_encoder->pre_enable =3D chv_pre_enable_dp;
>  		intel_encoder->enable =3D vlv_enable_dp;
>  		intel_encoder->disable =3D vlv_disable_dp;
>  		intel_encoder->post_disable =3D chv_post_disable_dp;
>  		intel_encoder->post_pll_disable =3D chv_dp_post_pll_disable;
> -	} else if (IS_VALLEYVIEW(dev_priv)) {
> +	} else if (display->platform.valleyview) {
>  		intel_encoder->pre_pll_enable =3D vlv_dp_pre_pll_enable;
>  		intel_encoder->pre_enable =3D vlv_pre_enable_dp;
>  		intel_encoder->enable =3D vlv_enable_dp; @@ -1359,24
> +1355,24 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
>  	intel_encoder->audio_enable =3D g4x_dp_audio_enable;
>  	intel_encoder->audio_disable =3D g4x_dp_audio_disable;
>=20
> -	if ((IS_IVYBRIDGE(dev_priv) && port =3D=3D PORT_A) ||
> +	if ((display->platform.ivybridge && port =3D=3D PORT_A) ||
>  	    (HAS_PCH_CPT(dev_priv) && port !=3D PORT_A))
>  		dig_port->dp.set_link_train =3D cpt_set_link_train;
>  	else
>  		dig_port->dp.set_link_train =3D g4x_set_link_train;
>=20
> -	if (IS_CHERRYVIEW(dev_priv))
> +	if (display->platform.cherryview)
>  		intel_encoder->set_signal_levels =3D chv_set_signal_levels;
> -	else if (IS_VALLEYVIEW(dev_priv))
> +	else if (display->platform.valleyview)
>  		intel_encoder->set_signal_levels =3D vlv_set_signal_levels;
> -	else if (IS_IVYBRIDGE(dev_priv) && port =3D=3D PORT_A)
> +	else if (display->platform.ivybridge && port =3D=3D PORT_A)
>  		intel_encoder->set_signal_levels =3D
> ivb_cpu_edp_set_signal_levels;
> -	else if (IS_SANDYBRIDGE(dev_priv) && port =3D=3D PORT_A)
> +	else if (display->platform.sandybridge && port =3D=3D PORT_A)
>  		intel_encoder->set_signal_levels =3D
> snb_cpu_edp_set_signal_levels;
>  	else
>  		intel_encoder->set_signal_levels =3D g4x_set_signal_levels;
>=20
> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv) ||
> +	if (display->platform.valleyview || display->platform.cherryview ||
>  	    (HAS_PCH_SPLIT(dev_priv) && port !=3D PORT_A)) {
>  		dig_port->dp.preemph_max =3D intel_dp_preemph_max_3;
>  		dig_port->dp.voltage_max =3D intel_dp_voltage_max_3; @@ -
> 1390,7 +1386,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
>=20
>  	intel_encoder->type =3D INTEL_OUTPUT_DP;
>  	intel_encoder->power_domain =3D
> intel_display_power_ddi_lanes_domain(display, port);
> -	if (IS_CHERRYVIEW(dev_priv)) {
> +	if (display->platform.cherryview) {
>  		if (port =3D=3D PORT_D)
>  			intel_encoder->pipe_mask =3D BIT(PIPE_C);
>  		else
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.h
> b/drivers/gpu/drm/i915/display/g4x_dp.h
> index 839a251dc069..0b28951b8365 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.h
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.h
> @@ -12,30 +12,30 @@
>=20
>  enum pipe;
>  enum port;
> -struct drm_i915_private;
>  struct intel_crtc_state;
> +struct intel_display;
>  struct intel_dp;
>  struct intel_encoder;
>=20
>  #ifdef I915
> -const struct dpll *vlv_get_dpll(struct drm_i915_private *i915); -bool
> g4x_dp_port_enabled(struct drm_i915_private *dev_priv,
> +const struct dpll *vlv_get_dpll(struct intel_display *display); bool
> +g4x_dp_port_enabled(struct intel_display *display,
>  			 i915_reg_t dp_reg, enum port port,
>  			 enum pipe *pipe);
> -bool g4x_dp_init(struct drm_i915_private *dev_priv,
> +bool g4x_dp_init(struct intel_display *display,
>  		 i915_reg_t output_reg, enum port port);  #else -static inline
> const struct dpll *vlv_get_dpll(struct drm_i915_private *i915)
> +static inline const struct dpll *vlv_get_dpll(struct intel_display
> +*display)
>  {
>  	return NULL;
>  }
> -static inline bool g4x_dp_port_enabled(struct drm_i915_private *dev_priv=
,
> +static inline bool g4x_dp_port_enabled(struct intel_display *display,
>  				       i915_reg_t dp_reg, int port,
>  				       enum pipe *pipe)
>  {
>  	return false;
>  }
> -static inline bool g4x_dp_init(struct drm_i915_private *dev_priv,
> +static inline bool g4x_dp_init(struct intel_display *display,
>  			       i915_reg_t output_reg, int port)  {
>  	return false;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 6c1e7441313e..e5ceedf56335 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8229,7 +8229,7 @@ void intel_setup_outputs(struct drm_i915_private
> *dev_priv)
>  		dpd_is_edp =3D intel_dp_is_port_edp(display, PORT_D);
>=20
>  		if (ilk_has_edp_a(dev_priv))
> -			g4x_dp_init(dev_priv, DP_A, PORT_A);
> +			g4x_dp_init(display, DP_A, PORT_A);
>=20
>  		if (intel_de_read(dev_priv, PCH_HDMIB) & SDVO_DETECTED)
> {
>  			/* PCH SDVOB multiplex with HDMIB */ @@ -8237,7
> +8237,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  			if (!found)
>  				g4x_hdmi_init(dev_priv, PCH_HDMIB,
> PORT_B);
>  			if (!found && (intel_de_read(dev_priv, PCH_DP_B) &
> DP_DETECTED))
> -				g4x_dp_init(dev_priv, PCH_DP_B, PORT_B);
> +				g4x_dp_init(display, PCH_DP_B, PORT_B);
>  		}
>=20
>  		if (intel_de_read(dev_priv, PCH_HDMIC) & SDVO_DETECTED)
> @@ -8247,10 +8247,10 @@ void intel_setup_outputs(struct
> drm_i915_private *dev_priv)
>  			g4x_hdmi_init(dev_priv, PCH_HDMID, PORT_D);
>=20
>  		if (intel_de_read(dev_priv, PCH_DP_C) & DP_DETECTED)
> -			g4x_dp_init(dev_priv, PCH_DP_C, PORT_C);
> +			g4x_dp_init(display, PCH_DP_C, PORT_C);
>=20
>  		if (intel_de_read(dev_priv, PCH_DP_D) & DP_DETECTED)
> -			g4x_dp_init(dev_priv, PCH_DP_D, PORT_D);
> +			g4x_dp_init(display, PCH_DP_D, PORT_D);
>  	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
>  		bool has_edp, has_port;
>=20
> @@ -8275,14 +8275,14 @@ void intel_setup_outputs(struct
> drm_i915_private *dev_priv)
>  		has_edp =3D intel_dp_is_port_edp(display, PORT_B);
>  		has_port =3D intel_bios_is_port_present(display, PORT_B);
>  		if (intel_de_read(dev_priv, VLV_DP_B) & DP_DETECTED ||
> has_port)
> -			has_edp &=3D g4x_dp_init(dev_priv, VLV_DP_B,
> PORT_B);
> +			has_edp &=3D g4x_dp_init(display, VLV_DP_B,
> PORT_B);
>  		if ((intel_de_read(dev_priv, VLV_HDMIB) & SDVO_DETECTED
> || has_port) && !has_edp)
>  			g4x_hdmi_init(dev_priv, VLV_HDMIB, PORT_B);
>=20
>  		has_edp =3D intel_dp_is_port_edp(display, PORT_C);
>  		has_port =3D intel_bios_is_port_present(display, PORT_C);
>  		if (intel_de_read(dev_priv, VLV_DP_C) & DP_DETECTED ||
> has_port)
> -			has_edp &=3D g4x_dp_init(dev_priv, VLV_DP_C,
> PORT_C);
> +			has_edp &=3D g4x_dp_init(display, VLV_DP_C,
> PORT_C);
>  		if ((intel_de_read(dev_priv, VLV_HDMIC) & SDVO_DETECTED
> || has_port) && !has_edp)
>  			g4x_hdmi_init(dev_priv, VLV_HDMIC, PORT_C);
>=20
> @@ -8293,7 +8293,7 @@ void intel_setup_outputs(struct drm_i915_private
> *dev_priv)
>  			 */
>  			has_port =3D intel_bios_is_port_present(display,
> PORT_D);
>  			if (intel_de_read(dev_priv, CHV_DP_D) &
> DP_DETECTED || has_port)
> -				g4x_dp_init(dev_priv, CHV_DP_D, PORT_D);
> +				g4x_dp_init(display, CHV_DP_D, PORT_D);
>  			if (intel_de_read(dev_priv, CHV_HDMID) &
> SDVO_DETECTED || has_port)
>  				g4x_hdmi_init(dev_priv, CHV_HDMID,
> PORT_D);
>  		}
> @@ -8320,7 +8320,7 @@ void intel_setup_outputs(struct drm_i915_private
> *dev_priv)
>  			}
>=20
>  			if (!found && IS_G4X(dev_priv))
> -				g4x_dp_init(dev_priv, DP_B, PORT_B);
> +				g4x_dp_init(display, DP_B, PORT_B);
>  		}
>=20
>  		/* Before G4X SDVOC doesn't have its own detect register */
> @@ -8338,11 +8338,11 @@ void intel_setup_outputs(struct
> drm_i915_private *dev_priv)
>  				g4x_hdmi_init(dev_priv, GEN4_HDMIC,
> PORT_C);
>  			}
>  			if (IS_G4X(dev_priv))
> -				g4x_dp_init(dev_priv, DP_C, PORT_C);
> +				g4x_dp_init(display, DP_C, PORT_C);
>  		}
>=20
>  		if (IS_G4X(dev_priv) && (intel_de_read(dev_priv, DP_D) &
> DP_DETECTED))
> -			g4x_dp_init(dev_priv, DP_D, PORT_D);
> +			g4x_dp_init(display, DP_D, PORT_D);
>=20
>  		if (SUPPORTS_TV(dev_priv))
>  			intel_tv_init(display);
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c
> b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index 75ff5592312f..98a6b57ac956 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -45,7 +45,7 @@ static void assert_pch_dp_disabled(struct
> drm_i915_private *dev_priv,
>  	enum pipe port_pipe;
>  	bool state;
>=20
> -	state =3D g4x_dp_port_enabled(dev_priv, dp_reg, port, &port_pipe);
> +	state =3D g4x_dp_port_enabled(display, dp_reg, port, &port_pipe);
>=20
>  	INTEL_DISPLAY_STATE_WARN(display, state && port_pipe =3D=3D pipe,
>  				 "PCH DP %c enabled on transcoder %c,
> should be disabled\n", diff --git a/drivers/gpu/drm/i915/display/intel_pp=
s.c
> b/drivers/gpu/drm/i915/display/intel_pps.c
> index ef6effaf82e0..617ce4993172 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -134,7 +134,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
>  		release_cl_override =3D display->platform.cherryview &&
>  			!chv_phy_powergate_ch(display, phy, ch, true);
>=20
> -		if (vlv_force_pll_on(dev_priv, pipe, vlv_get_dpll(dev_priv))) {
> +		if (vlv_force_pll_on(dev_priv, pipe, vlv_get_dpll(display))) {
>  			drm_err(display->drm,
>  				"Failed to force on PLL for pipe %c!\n",
>  				pipe_name(pipe));
> @@ -1225,11 +1225,10 @@ static void vlv_steal_power_sequencer(struct
> intel_display *display,  static enum pipe vlv_active_pipe(struct intel_dp
> *intel_dp)  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	enum pipe pipe;
>=20
> -	if (g4x_dp_port_enabled(dev_priv, intel_dp->output_reg,
> +	if (g4x_dp_port_enabled(display, intel_dp->output_reg,
>  				encoder->port, &pipe))
>  		return pipe;
>=20
> @@ -1859,13 +1858,13 @@ void assert_pps_unlocked(struct intel_display
> *display, enum pipe pipe)
>  			intel_lvds_port_enabled(dev_priv, PCH_LVDS,
> &panel_pipe);
>  			break;
>  		case PANEL_PORT_SELECT_DPA:
> -			g4x_dp_port_enabled(dev_priv, DP_A, PORT_A,
> &panel_pipe);
> +			g4x_dp_port_enabled(display, DP_A, PORT_A,
> &panel_pipe);
>  			break;
>  		case PANEL_PORT_SELECT_DPC:
> -			g4x_dp_port_enabled(dev_priv, PCH_DP_C, PORT_C,
> &panel_pipe);
> +			g4x_dp_port_enabled(display, PCH_DP_C, PORT_C,
> &panel_pipe);
>  			break;
>  		case PANEL_PORT_SELECT_DPD:
> -			g4x_dp_port_enabled(dev_priv, PCH_DP_D, PORT_D,
> &panel_pipe);
> +			g4x_dp_port_enabled(display, PCH_DP_D, PORT_D,
> &panel_pipe);
>  			break;
>  		default:
>  			MISSING_CASE(port_sel);
> --
> 2.39.5

