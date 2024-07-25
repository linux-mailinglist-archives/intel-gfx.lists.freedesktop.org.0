Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C0993BC09
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 07:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 696E810E44B;
	Thu, 25 Jul 2024 05:26:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vx2nygJR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5956A10E44B
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 05:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721885203; x=1753421203;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oU6AS29tEdMl1mPRosggdwtvADfio0CqxJPsI57cKP8=;
 b=Vx2nygJR4IkrOSBx1UktulqxOf6WRQXKEf85y+FGf485JbKHYD7SQUbL
 7/ibZK9fI//3lFwW4EVn06/i/Ov1wK9OLX9TeI9JWKF3eDpx+LCLabIv3
 CTbvDEJ9jrcHXyJ2vMa2fR6/oxXhrrS8pWRT3jXP4+3zeRWi2RIq5RkdS
 +JZ0b2Vmcn/OuGpNj01pwJvYZfmXwyLLx23ZsjIJrV47gBdC5dDdO8oAG
 ixYO/RKipLymEcxLXtCg9Um8lKagG3v4My/r8n1NJGpKfqlKDDHMHVGKb
 mU4BzrWfOpP4yJsV0oP3yspPp5Jt3FHUZuebQmJJ4J9xqEev8LXxA8vxs w==;
X-CSE-ConnectionGUID: s97pv5jUTh2e5mw1edzyBg==
X-CSE-MsgGUID: 0vkIbMF6RSK6QKxctfuZqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="37053283"
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="37053283"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 22:26:42 -0700
X-CSE-ConnectionGUID: gE8xhc6jQweANBdFhpehyw==
X-CSE-MsgGUID: 25Xg8SfhQuWu2AWZEWl6qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="57106012"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 22:26:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 22:26:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 22:26:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 22:26:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HuHdSn1RusvD9jcGokkhIK0rGDp5IiI4dC6b3vdU815ETct4+1HYbo0/IhF2Sh2Xb4yNtkrbZsUJMI4KB26zguSSIkJjknqXXvQIsTlH9fytyC/U9wMCcfoOzPB2ewUgacGmdZHcO2v2RHpy4YTTjusrHaax4xaLoiProWDnPCroKqPwfl7dEVd8jotJNW7Rn3KEP/V6NxWdGVrmtwaVUyvkwQVAJ9hGFv5plxWPDZb0CfxpixPP6ojlSRnuZMOF33jkwr6BFAezav5Th0QbeIzDIEDOV6Eq2r0XXR0EA2Gg0ri31iQ9hm/qthbA7/2hVk+2rNUhIOGeMrErDUNSuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ub3XSeDwOee1oCGkkaa9rdo0B2hw4ElL0OgCuyRpW/A=;
 b=lHfyMzMEs1jQURZIlMeFRWuJbIgyTB4WOlRSSPUe8XSn2fYpAzeykfRkEE0WuPEeDCX4sC4wAyPGjCaVlrKlN2tvfo3+jeyRaYa42oEDhIVh7w1rdtc/EshGuFRttvk6nF53lB5hbsHh9uVvr/RCUIMcepgIGuEwgPDL0+mifA6p12CYKNMvKA15uS7lTN4Ge40BYY4FYJkn/G4xLLhrHPJETIgw1Hk1uhktsHKaHcgyggOCyKk7JXx3HFcnoUzf/A9ntihwXCli23jFcifRlkx4QS9bH9OSrDrehnQWJ3o+VCVgWEf8xvwbIBeXFoR0LLXavgV90awFHGV4L/4ZQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB7269.namprd11.prod.outlook.com (2603:10b6:208:42b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Thu, 25 Jul
 2024 05:26:39 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Thu, 25 Jul 2024
 05:26:38 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 13/14] drm/i915/dp_mst: Ensure link parameters are
 up-to-date for a disabled link
Thread-Topic: [PATCH 13/14] drm/i915/dp_mst: Ensure link parameters are
 up-to-date for a disabled link
Thread-Index: AQHa3FgCTlJVG3GsFEmEPmvyjGydr7IG7RfQ
Date: Thu, 25 Jul 2024 05:26:38 +0000
Message-ID: <SN7PR11MB6750F74D3657EDBD34FA6F57E3AB2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-14-imre.deak@intel.com>
In-Reply-To: <20240722165503.2084999-14-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB7269:EE_
x-ms-office365-filtering-correlation-id: 6420e0d2-76c5-45d6-faf0-08dcac6a5bf5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?uGkgCbk5EAQnWO/TaCXkdkvPxPROElhsFn7um0mFhQOb9yJrr0F4klZtWdgP?=
 =?us-ascii?Q?N/vM3VeA5GZpgKXnWbSW4dwmKtOqCsOr2/h6JI9I6RTxVbvkyNQic1lzynWQ?=
 =?us-ascii?Q?ayYGSDFW4+Nb1IKzSIyeHwO6YfRntrrEUZPf5DH7OM0Q/5ZD92WIwUbNtAO1?=
 =?us-ascii?Q?MX8Gh/QkTwdF7n53+bKi6Eyo2ObWn2uR3g+//nf8Gj6ZUC1L8nYaeltOU7is?=
 =?us-ascii?Q?XNyVUHIo1inlSiljsN3bBItQOOWCJ9Cfn0wdwUED+wKTqcYnA1D8CFOy3QpH?=
 =?us-ascii?Q?MeZcmvfJTF88b4/b8xfSV+2Yjn4iXMQ+dTL2HlmJ/cd60xgufeAVhumgUhsl?=
 =?us-ascii?Q?1EVB+1dbKnujiermgRr1pc8WdzWophUGPuUrpNqMtG256Rsq8y+KUVwDKYwM?=
 =?us-ascii?Q?SrFC+I4UyGmijKwj0+Jvqfk/Qp/Mqf7EsvCI2VCwfWIokulED6tnyRIvLnM3?=
 =?us-ascii?Q?T18LQcX28jbQBo7hQTwTtbvcdeQ9Wa27rCBIaxxSl6vZ85x8URqoAGiRz5VG?=
 =?us-ascii?Q?4QtpXQCJaixcKXqZaXdbSrsMfq1AbyPozDQReDZ+wTnEPFcH7tPfG1sqodtf?=
 =?us-ascii?Q?iswuCHIZsVsxUDkzsNQAglAwllXQS6A+dlVguyB3/UTs0jNlRVM1Jgy4RLUF?=
 =?us-ascii?Q?lWiWKPexds71LD+bmlxDHVj/iBBba9veNVbCZ2nA5MJ7nP0hO876Nau8l4Wb?=
 =?us-ascii?Q?DdDOlG+HTQNPYeI8FaIoXD5a5oaPXaNX4LFfQ5CXtXAoVnVTmdm7GHRp1JEm?=
 =?us-ascii?Q?Oec5aYgl5vRGMai2nvStgJDYbYvxTpxGl3ukw1vj5fPTg94RJTxFyTcpXOf9?=
 =?us-ascii?Q?VrWEUtN1IMzXKNcOOFLI5U5QiaxD6RDUnT/UcitexlPLiA6Sn02XwoIBI9Sb?=
 =?us-ascii?Q?+LOlk+Hk+l98apFKzvJaDhUrUXDfBvTuwiggz/cuYBxO6EI3eDFV/IRo/0y4?=
 =?us-ascii?Q?MKAHBIWLAHajf7Q3r252TLZvsvuxiwHO1CoZ70uJ5mmPlyWO3OBj4qzWiz67?=
 =?us-ascii?Q?dMQUt0QWAGpiCY3Uz0DphwNV6cF3+jDSkAU96erjLd375CcnqYdSlsFh3U0R?=
 =?us-ascii?Q?1FaCPv9pMbkOz9OjIvFw9G46+Bkls2eUiox6YLEYLfckT4AhSR7DfptW8K1H?=
 =?us-ascii?Q?O1e+48hoRnoRc/xeyqx8MtIR+3bJ6rvLmSKSR9p6nksz4wEf0LsvQLU0l5kr?=
 =?us-ascii?Q?h6uPvFFrMQ7F+kXal6lgpragQ6XBynJSfFpvB4xyUbD8HMW0f3tGZeOvcfAp?=
 =?us-ascii?Q?eiKksPj21Hch+9Yycfcfzk8knfRS/F8ByPbhxgEY2xP/6cq56z6wCkKX19kh?=
 =?us-ascii?Q?Ygj5h28PNtvQ/CoBMmh1U91D7F+DvkYuY+lc/r6qulJA+rgORS/cDVePPYNv?=
 =?us-ascii?Q?byGocesCVZlUUy+4cZzCaXGneTesXzd6kYBf7/0V8ZOVFcxnXg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qaudit2REV6ccwzkd8ksk5evOd/VHZP+XYk4B0kwZhggprOS4PgDHarP1bbK?=
 =?us-ascii?Q?akfHfOmy2jYGAH5CYDDxWWBwyMnqc/DpGDo1tWq6myyeEhDPIS903vH8VQWX?=
 =?us-ascii?Q?XUm0tPjv6uEt7o1Gs1CA/NmDk+ma1tsq4h+flhgqCrvruS7ZnbAjLIn3f41+?=
 =?us-ascii?Q?egrHqTZ71k2bzDZ+fYbQUudFYhfgO1mRrmrRA8HgL5FXH61OaapUFcctgXGw?=
 =?us-ascii?Q?ONjdhyJ2bw9b3ZUL0Vzl6/ZRQfj1gQUYJ8Y3wO2XouP3ocLDxdgUMV3M865K?=
 =?us-ascii?Q?goc4QniLx3J4r8oDxdjnsvDKPmPu51+CdywiWn23VWiKR4rqq2+9F3GrnCmz?=
 =?us-ascii?Q?aiUX05t9QDMlbogfB6oOI/bAFdsc4gkshWKdYVV9Zq94nUn44gHMGFSZFKSm?=
 =?us-ascii?Q?cLzsUYIR4bk9O9WOEhRdQMXwjAQV4sX/rYQ3izQDqg5XvaAjnuJCy/19RsDX?=
 =?us-ascii?Q?DLtzpSDLt3tpqnjiXapaqp3zDXOctQ+QWAjms9/aveKJ5ge9ASYzi26E0f2u?=
 =?us-ascii?Q?ofipoUwo1ex83vLvmO0jbp3bOi7u9MxPAJF12ajTCORvz4PgyCROdIHEISMO?=
 =?us-ascii?Q?YAf2yPE0iFNjgt40qvJUAcZYeZjSfqTr3Y9hQsELqiGZO4iBovqM2C1llMIS?=
 =?us-ascii?Q?/abVq5vvu+cImbn8IJaCAhYWiEj/AN3A9utBs8OEHYZ/nfP1cSkeSjjJ1w3Q?=
 =?us-ascii?Q?2qWRMJng3pqPkPRc9PTXUxQzdOTAibwpjPIxa4YjjCUQEp1QepCSI5vlACny?=
 =?us-ascii?Q?HETI4uIQDg24N6P98i0Oy7PborDHot5/+cgCsUAq+HS63qwkl1A6vzPVXVLK?=
 =?us-ascii?Q?lq/DmURal/rvqEsN8dzwVgtJjSC5xB6nHZjVR7PPHqSBaSM5BiGQN6F8t13C?=
 =?us-ascii?Q?G6TMPPac4S2s6xN8hY2kYP54JowiuYmiS8bAUuqchwhN2yFUVBbQ4X33EHAE?=
 =?us-ascii?Q?LiGDTjWGLVFVx+So+F3bGUlJ9T3dOvjL3pFrK0KHdSGMhJ2Grg+sHlM7pWkP?=
 =?us-ascii?Q?402YVNB5znwR+FQ4dCrySbmrEaQ1U5vUw+4pFZzbn8eW+8d4SUUPUC6c7Wil?=
 =?us-ascii?Q?DxQahhO3sC+u7GPQEq985irmSREJheFeevhUkSLJRztDTvCPjfS5l+9Zbe4x?=
 =?us-ascii?Q?BCgpmbuTJqLxud0QZqsLGt8y0M5Jr6lmb8yw3ndfo7BpeAjsXQyVzTz9MW8l?=
 =?us-ascii?Q?7VIws1bsd9zFXuotFDLEcZW3VzjhveuI5LwL3q4np/AJCLLpLbQdTI6eLYf2?=
 =?us-ascii?Q?uZ2pB7laYBbSrEG3i2+NzdKOiF5gKPYGClWmaGdpUbSvAEN2R62jdUOMgTNi?=
 =?us-ascii?Q?rMooT+sTjbozhrsT7iGexDY+jJJ8DBYEOoio/ejQJTrOuEhLyIyaVzHFddsF?=
 =?us-ascii?Q?V1pefNkivYmGnuYIQyb+glnVuyS0p/Z+QXlkL/KhrMJ4cI+uHqIJYKvjmJUh?=
 =?us-ascii?Q?qMJA6vioKYqSVzaaVg0/NYvvhWo1vBGI7CXP25i3vJaWNeEQ7Ctm4xlk31Tk?=
 =?us-ascii?Q?bI8bD2W2KZwnxiCIVLByFTA7xdkAH5WaIaisY+fgsZq6WG5o/NXp8NtXMpAS?=
 =?us-ascii?Q?dsEvoC+nSWWdFwGqCpRzCyVhqGsh0nrXF6dvVjrz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6420e0d2-76c5-45d6-faf0-08dcac6a5bf5
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2024 05:26:38.9028 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +6LNCWYBI6yo4ZXgj0C4J4tlPQs4v2XsMrBcSEiX4a+5Jm8hfb3nSaD2hyaZWzora0SxXWWNeKcwdwyJLXLAgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7269
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Monday, July 22, 2024 10:25 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH 13/14] drm/i915/dp_mst: Ensure link parameters are up-to-
> date for a disabled link
>=20
> As explained in the previous patch, the MST link BW reported by branch
> devices during topology probing/path resources enumeration depends on
> the link parameters programmed to DPCD to be up-to-date. After a sink is

I think you maybe missed a couple of words here maybe fix that
Rest LGTM
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> plugged this is not ensured, as those DPCD values start out zeroed. The
> target link parameters (for a subsequent modeset) are the maximum that is
> supported, so make sure these maximum values are programmed before
> the topology probing.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  3 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 31 +++++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_dp_mst.h |  1 +
>  3 files changed, 35 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0771e4c6357ba..41f5d82ca75d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4262,6 +4262,9 @@ intel_dp_mst_configure(struct intel_dp *intel_dp)
>=20
>  	intel_dp->is_mst =3D intel_dp->mst_detect !=3D DRM_DP_SST;
>=20
> +	if (intel_dp->is_mst)
> +		intel_dp_mst_prepare_probe(intel_dp);
> +
>  	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr, intel_dp-
> >is_mst);
>=20
>  	/* Avoid stale info on the next detect cycle. */ diff --git
> a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 19c8b6878b030..faee7af0a8a48 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -43,6 +43,7 @@
>  #include "intel_dp_hdcp.h"
>  #include "intel_dp_mst.h"
>  #include "intel_dp_tunnel.h"
> +#include "intel_dp_link_training.h"
>  #include "intel_dpio_phy.h"
>  #include "intel_hdcp.h"
>  #include "intel_hotplug.h"
> @@ -2031,3 +2032,33 @@ bool intel_dp_mst_crtc_needs_modeset(struct
> intel_atomic_state *state,
>=20
>  	return false;
>  }
> +
> +/**
> + * intel_dp_mst_prepare_probe - Prepare an MST link for topology
> +probing
> + * @intel_dp: DP port object
> + *
> + * Prepare an MST link for topology probing, programming the target
> + * link parameters to DPCD. This step is a requirement of the
> +enumaration
> + * of path resources during probing.
> + */
> +void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp) {
> +	int link_rate =3D intel_dp_max_link_rate(intel_dp);
> +	int lane_count =3D intel_dp_max_lane_count(intel_dp);
> +	u8 rate_select;
> +	u8 link_bw;
> +
> +	if (intel_dp->link_trained)
> +		return;
> +
> +	if (intel_mst_probed_link_params_valid(intel_dp, link_rate,
> lane_count))
> +		return;
> +
> +	intel_dp_compute_rate(intel_dp, link_rate, &link_bw, &rate_select);
> +
> +	intel_dp_link_training_set_mode(intel_dp, link_rate, false);
> +	intel_dp_link_training_set_bw(intel_dp, link_bw, rate_select,
> lane_count,
> +				      drm_dp_enhanced_frame_cap(intel_dp-
> >dpcd));
> +
> +	intel_mst_set_probed_link_params(intel_dp, link_rate, lane_count);
> }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> index 8ca1d599091c6..fba76454fa67f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> @@ -27,5 +27,6 @@ int intel_dp_mst_atomic_check_link(struct
> intel_atomic_state *state,
>  				   struct intel_link_bw_limits *limits);  bool
> intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
>  				     struct intel_crtc *crtc);
> +void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp);
>=20
>  #endif /* __INTEL_DP_MST_H__ */
> --
> 2.44.2

