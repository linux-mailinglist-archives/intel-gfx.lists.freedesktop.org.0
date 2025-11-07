Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4D7C3E7A4
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 05:59:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DBE510E0CF;
	Fri,  7 Nov 2025 04:59:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lCJkn9Tr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D39310E0CF
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Nov 2025 04:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762491550; x=1794027550;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DMjZE7WYw9CP1yWkZWt6EY/nHAcfprI5dcWksIO/14E=;
 b=lCJkn9TrC1WlxdpNTVss9o07X68F9HfYYDahfaiG0u1Nu/Eaj7gnbqfB
 /8vBVpXJyQcsG1Iwerlc5gdomnwskl2mPUImrLVZwe1XAglf6aqrZVIyr
 06uO3q2TUb8xmZmD8RXjzAqBYLrMfpuJiFspucay5p7jKiCdasgm6k8aF
 PBV66uxjxFwBI+RcKYbrrb5vnLudwSXYKwimMJCSRmySFE32PuXc0kcqh
 9pRrgqM7T65FFdsJjI5eclmBbxtGiSoUjJBL9cToTWLygej25SbuHFH1L
 2+2xV81l9rOkvj3Sunqo2tWc1BSog871ZRHHLccemcI0FMJnFJaORMSeH g==;
X-CSE-ConnectionGUID: 3SPbSiqeTV2+woRefjyzUQ==
X-CSE-MsgGUID: 1IMQtPmVQgKqN9A+0dBJeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="67250870"
X-IronPort-AV: E=Sophos;i="6.19,285,1754982000"; d="scan'208";a="67250870"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 20:59:10 -0800
X-CSE-ConnectionGUID: yMmLDSWsQTWA14tI8U+eLw==
X-CSE-MsgGUID: tWMNMbfOR5OhyhaylePVaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,285,1754982000"; d="scan'208";a="187606656"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 20:59:10 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 20:59:09 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 20:59:09 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.45) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 20:59:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RJfSa8SNHRnti+H+fXkLISwgLrl81WDpPZ/716v63XuglSi9ibdKgsIsj0ZTdroQ0+Ha0umfMr4i0U0LnS29uKS0wtnmk/IqaaLjqEwPmn9N7qcFOMte7A24S/2FUX5CAYaxh5FEX6439OWk5hR/GIhJn2JNdtAeL8EfMcnBGOeveQOFa7OwgVhqZEMyCumwwmUrCVXJQPLYSkal6X3orvDtnvhd5v1M93qDNodvi9FPF1QEfgx/kjVYyCXiYY8MD1k7ilSRps0eUkhCEgaYVFWuTUASYvO+Lfd4Q83pztEsbTrDE5ZVGpDoQcFMxvXdn8pLmfHwPvcwVgcR7GqROA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JtExIZKdvtu7nAjdLVTo0h5ry7BJ2/4uCJbwXOwlpgo=;
 b=ZkHQrOJOM3ZA+pU3bW6NhY6Rzqg6i+vK0Vwo1w8AR6DI9YtmOGJDTjsbF8vfWDdGLzxDFkmForpNOPymmzfXWM7dogyPoWsYE+P/aBZjFjK0OeQOA08JmF3X32aDROpv7vIa5D+3I1/yKzV0sogRqf6UuLg4uewaainA7wb3LY5SgBay3fesOr/QFLAVLLMBO4kyd4N6viINBrKOC8iPR0EK2eFWpphYVZZaTHH6+N+JsHWmyiO1qb8tzcYWqfj/G8WCvUVv4E1MSHcrbpSMxuyd8mG9UPlaGFRjZC4Awqo8/x7w5kr84flm9/QDo1HkglwkGQBJxY2WrHsUzz3JHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CH3PR11MB8495.namprd11.prod.outlook.com (2603:10b6:610:1bd::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Fri, 7 Nov
 2025 04:59:07 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%3]) with mapi id 15.20.9298.007; Fri, 7 Nov 2025
 04:59:07 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Initialize the ret variable for default
 case
Thread-Topic: [PATCH] drm/i915/display: Initialize the ret variable for
 default case
Thread-Index: AQHcTv60qtkQSn8Nn0yj/IwIQdtEobTld4YAgAEwrAA=
Date: Fri, 7 Nov 2025 04:59:07 +0000
Message-ID: <DS0PR11MB8049D754969A27B3E701EC73F9C3A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20251106085354.1237867-1-animesh.manna@intel.com>
 <993d3120688c81dfb80a2e4e42504b01f81d1791@intel.com>
In-Reply-To: <993d3120688c81dfb80a2e4e42504b01f81d1791@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CH3PR11MB8495:EE_
x-ms-office365-filtering-correlation-id: ed859ec6-5592-4ad9-6ac2-08de1dba61e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?dczj3m6csFnTUkmfMr4KJeD4icFFRbmE6kT+tNngLlkXusI5O73gXA9T7HFZ?=
 =?us-ascii?Q?MU3XrKciNoO1CW5vAXtLUtOD/FsLHQwLuXttv2TjMc5jYZRt9aylSsfVfLZH?=
 =?us-ascii?Q?OhKHP2scObCvvhP0EOyKoG3TftYXM2C6CaysG9jxeaYCD5GbszRGuMfcdrJC?=
 =?us-ascii?Q?IsJNXVtpObB+zdcOtVNhtWl5iFCKyCP5ncDfzlM6EHI35YMwKSD3mAQSzB6l?=
 =?us-ascii?Q?jy+BSAEMoVDSukoNYwZuFbQJVgaSMGeNEB4T9J/SMOeTsVpIcrCQprThDF8f?=
 =?us-ascii?Q?uD1g0EPGupcLYKUwpddIl03OaOpeVKjejQYny3cnMIIRAqxnhYusvro5bf2l?=
 =?us-ascii?Q?ZqAXwQoPBPlT0963xLlsIFuFQYCIbPWlhzehlhjBUbOhYueSN0CR7vUgxs+6?=
 =?us-ascii?Q?2w8Ofcvb/Z9MqUM7L43cfkkgQhu4kTXbd1sK6pdEuJD2vXaQLD7UACQBCJoL?=
 =?us-ascii?Q?7qmqpZ08L/UPgpJto+eb9w1IPw+WEUNrpLbL6arESjIoBJTRC/xvJqzy5bNo?=
 =?us-ascii?Q?4HnL/9UJ9Hmlt9LldMRwlfa2kDocmt2MkFIHzcUC9Hlt1tWBDxGGnqUzsiCB?=
 =?us-ascii?Q?FOYqgLbjArWUxaE3dLHOtpvt3Z+ituP4M2WUFGFRfggfOZyMhqu3H7obmz8a?=
 =?us-ascii?Q?KcZ/kyzlV0aE8e+yKH5R9+7HNrxK1Mp5MfSph11Wg3qDd9iHO8W5BXA2nXjr?=
 =?us-ascii?Q?VljUu7TEspZIRLOIlYBMJLxoVm6elLYYvBL0yMpzg3zCJU+wOCnEFQN4OIGf?=
 =?us-ascii?Q?xISGc+CpIiHcLe/ex6n87hZfisdGyxX/t9TYHzQx3pXiHIj5AtQ1+ReguIKz?=
 =?us-ascii?Q?8eduLpYDPoLNuwlOWOWZ1SleM9auwbZls+xcLSrZ8xuR7Zbl24nnfMBl3Mt6?=
 =?us-ascii?Q?KRraWCCEiVpk53rZ1IB+zffdki12y9S4QuEIN3jf053ZmMgbSKv0wUJDFplV?=
 =?us-ascii?Q?cBuiWF2fClHaf/VwdBVFsStGFb40DdMPTBGnICJzRDVHGad1tnJ2WgkiUIjd?=
 =?us-ascii?Q?S3lBdB8ZJFvIf6Z1swEl4r28FAAe5ytiqQLu0H+KNTYGG+ElrzGB35EbY0//?=
 =?us-ascii?Q?BdKbUq1U0wS3czN8mqvNnxyI3eNEWYfpRWpcoZ/R3i1xI6zDEjrmAo8ykmVs?=
 =?us-ascii?Q?P1kZa++WYdN5U8UHZT5XrgrQNL+c8knAEUSG58ZvIeIi0SRvpVaOqbVOYOPm?=
 =?us-ascii?Q?XQrT0n0RejDWbX8GTjF8m86m53aNYJ5aCBAxHTJ8z1HBl4xMn/DFNtm6cFj+?=
 =?us-ascii?Q?GgbpRMzyEsMwNmHl4tv6jJVoIMupQg2javblNemek/QlFAKlb8PRMPstoJ2s?=
 =?us-ascii?Q?xC1WCCLm2/mTccuTguLcrsub4YUmuHENwPE4oYwrlyKWR4oPS3Jxcp5AP29K?=
 =?us-ascii?Q?zaxp/ssUaaVnNZ3utzKY3O6ga/hak/ZL9YcqVgAdnNzohtQWCy0IcDWofvje?=
 =?us-ascii?Q?zs3ARQDh8GMAQiVsYOvYPE7HD3M1e50ukuwJ8TkdAb5UKoXCkAJDWEJwYgSt?=
 =?us-ascii?Q?tJDWmhioUSXpJyd8g74CmmpUMMraJqdHjuSK?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ABj+nNVsvYj3M+r8ZEaTZsouecjHSt4Q+fYPyhzc+Mg6S12ghtkK+ryqjVOm?=
 =?us-ascii?Q?ehpv8gCE9ykQTn0T8WkXHbvCZEvdl2FGgA7Fo91KguSp1HbvewYACCl6vjk2?=
 =?us-ascii?Q?BL3fHnJe3y3XLdUuDaierRTzn9b1ovL3yD5zuvP/+DyJqzuVb7jOrotVvpPT?=
 =?us-ascii?Q?o8Mg4I7mUqVkRxm+7BE4OlIUhpKCfHSjjvQJSnUCpVi7nLKA+XhI5fwe0/b9?=
 =?us-ascii?Q?BvDj+SpErRcxbduaN2vcY3KqwctMDEOWJEStc57Tyz3J1lYz/5kRAMLGq9eA?=
 =?us-ascii?Q?H+x0GlXDD0hh7KNXaGeD7rigpoq7Jtxmrg6ZMgZrkcE2igBdaob1AeGU/Gcj?=
 =?us-ascii?Q?qomv2HGFOCsh44I7f7/dgszDooxbzMfqcDV6aGhE014ZQI5bXKfbtbHCOXTL?=
 =?us-ascii?Q?mipOZ/1H7C+lV1weXYa9yPeQk0z+OX69Kzpium9GHTsOPaNGWPVUEiy+/sEa?=
 =?us-ascii?Q?W9GOah32Fy7k1Sx/9eQzBd5+c8injCHodL6dmdisJZm8yZXhKJ5dsYYy5JE9?=
 =?us-ascii?Q?hvXK4opex+RYSY/a5u3nyDx7Qrq71p2/pclVK1/Mhe5Zeu8pw+YdE4jYI5ht?=
 =?us-ascii?Q?A9knFkOtn+guof2KMvkvVHIHsPqLTkijirpV6MqA2ErUyDyYvUEXrlqHQ4rk?=
 =?us-ascii?Q?/L0R/HHyfEJcB9KXW/zxJL1SovoMJXX1fwFwMx942DeuUIYblj1lK98IkvHf?=
 =?us-ascii?Q?ecKkPDgWYj7X3bGrCqKw0rrrtlh2tjVj/6k4cF5io16hKfTtmNB0bd030U1Y?=
 =?us-ascii?Q?LyDWBpmxB1Nif2vmJPTUqCiVnV/ilIOe0TWeljWq/p0PHhEdTzimqZPnrnjV?=
 =?us-ascii?Q?bzwHZHOZWoCJrbqzh0xSQ50r8qWoOglqOv/ROzWqTkB3RQXPON9wmEBWDz9b?=
 =?us-ascii?Q?sLmUXyq2GiGPM8wBquaLPfIMBuWNi7q/C7BhkCQGmKY/V01QM2cERRUdvX0f?=
 =?us-ascii?Q?zot2ikzpBy7g/N48wXjpacmXvsP7GwJqL5M+qnf6v+HUjo0yX4XqJZkYSVh5?=
 =?us-ascii?Q?UM/W3R2/x/Fb/bxw9DNDaZ3UA9lU90SWr2cS4A6zFwrkTxdT9iWbXu91B1Pv?=
 =?us-ascii?Q?w6KQOY4VI3rsc7z8AWJQ2mGXBvjByvVCLLSG0RJHwtG+CeeMNj2TLq8dwcTN?=
 =?us-ascii?Q?86UnnAWskmOKDI0YyyV03UNN3/jPZUvRsOEuCvxmm1LcD51rH4jxSgovnB2p?=
 =?us-ascii?Q?xklIf0rpUW4kStShNDx6JoYiY8JWQAGHpo4/8u0n+6N8uRF4pq1k8LJHYWAQ?=
 =?us-ascii?Q?QIVbNZLRyVqRJzCWltrNOVeacw3GLPMiYQRJyIrD1LDThn9BelU9Dw3v0Sq4?=
 =?us-ascii?Q?QcMBEAJK7I6r2D8sRIYyJpCzM0FwpbGcSCf2tOOX7kzy4nhJCG4rp9glqH8a?=
 =?us-ascii?Q?iJblhK5HJqeg8jWPwGzrXPAZ/ScN6idNpcZrSSdOZz+j1GfgygTCjSafLUtx?=
 =?us-ascii?Q?sMXODZErpmy619mwCStEpJ2uGgS+ji8aKnKwZvPnHsbf2ViBsDbE2qS2bf6v?=
 =?us-ascii?Q?1MyWZK21BqtNVc9oqNDWauA1z2lcOis0fLjSUs1E4Y3kapJdUlPWrHdAw3F6?=
 =?us-ascii?Q?gmfvGbsTkBscBz9zWKnsTtSVHvkAQsf7BPhjE2J/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed859ec6-5592-4ad9-6ac2-08de1dba61e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2025 04:59:07.6034 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EOeC2gyquulp/U5p4TiicESBO+w03ko7ZG3jdrvtUFtSUXnlP71xfSlrDb2S20foShdaz0/grHGHyDYqN820MQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8495
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
> Sent: Thursday, November 6, 2025 4:18 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Initialize the ret variable for de=
fault
> case
>=20
> On Thu, 06 Nov 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> > To make the coverity tool happy initialize the variable.
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>=20
> See https://lore.kernel.org/r/20251104164150.16795-2-
> jonathan.cavitt@intel.com

Ok, np. I think its not merged yet.

Regards,
Animesh
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> > index 31edf57a296f..fb9689acf814 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> > @@ -171,6 +171,9 @@ static const u8 *mipi_exec_send_packet(struct
> intel_dsi *intel_dsi,
> >  	case MIPI_DSI_DCS_LONG_WRITE:
> >  		ret =3D mipi_dsi_dcs_write_buffer(dsi_device, data, len);
> >  		break;
> > +	default:
> > +		ret =3D 0;
> > +		break;
> >  	}
> >
> >  	if (ret < 0)
>=20
> --
> Jani Nikula, Intel
