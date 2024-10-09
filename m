Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A31499667D
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 12:07:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0816B10E6BA;
	Wed,  9 Oct 2024 10:07:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GZjtRdrL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1463610E6BA
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 10:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728468471; x=1760004471;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fZnWJ8WZzYADNg48KUG/4yzMoy8kJ4eEWRGrSbv9B10=;
 b=GZjtRdrLOtzwL7mnBFgYskYXcZem348ZhqpYXmkLq8d8ydzWJnmnwNAQ
 eoVohQBfwN542TodhC5+zJgJflgfDxXSt5RlPGdSJhdosdzzckXzJUgbV
 hcjIRer7IRa9qJWwU2ruZ3ZCUSIu5AC3wZEZ5glZx0UlQ0iL5J0fafJxz
 VK0scNybveWtsWyG14vdUndFCh5VRkcM43GEAHy3aErlWNBNSs7kmGLCE
 39zyitpcdcy7VOR/qToAgDJUAABdL9CK7T2cvLfV3qZSUF5HFwS9UkGXE
 6GKccQtpOu9i2gXpdwi38ri2vab+e3QcS9USCdRCjM0t+uVJQPNzQmI7B A==;
X-CSE-ConnectionGUID: Ykkp3uaKRUGvc2D4d1+wIQ==
X-CSE-MsgGUID: XJLJMhg8SdKCBtKU2IxDDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="39149110"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="39149110"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 03:07:47 -0700
X-CSE-ConnectionGUID: qhI3U0KWRuiEdFOXruq0kA==
X-CSE-MsgGUID: 8Xdu2uxUQMiTtTSnnhHCYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76425387"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 03:07:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 03:07:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 03:07:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 03:07:45 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 03:07:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vtWUzFt6esspxuY6CN57IGUoIxjbgn3sQ5B7onjy1CUfIWD4FbLLSbiXmt4aOpP4TLUlRV6CsnXaP5ptZe9psusxvg6jo6ThQc7ySCdmvnUHNl0OM490psjwFS9OmN+qSMCmsz89cFra9hnzNxAsYtLyxd87m+6GEXiJkH91eIGuzeaYu7oG8ZcJy8/DbJmuxfVblW5pSRCj7+xNL6TMjkaQSIkFU4/gYt9Zmm7KkXD/yeabt2je4GPWCkwOjRhRcKi1c/YDs0/fiN+gklG/N1UpYeZ7IasohMc7p3XVqoPdoxdqlQj9xfKFAJeqJ5uVUN0Ez83EBUETUg4en8fYYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OgBjG6mZUmeE4PwhFpUkEH9au7uzqwiTAWfZrvRJTzY=;
 b=xKZ70ZUrEvRJuuwDkVTvn/VvLS4IBYkVtbhBr3QIGHKL8G2I7/K8qXr5JWmGF7zQjT84AOdCqg8D2xCI4+xB9rJUrsV10WnH0HKM7i0VsOCyLu2Qcn3vT3Dmo6hnZ+v6y2Kn9R/+PoOUvVb4K5cgvyKAz6Vk17Z2J87cT5uu8fEXF+yjN7YWSOw+gZ2d0U4PLTOsEgx99dpst4By4sfQYigXdHXWDpAq/R/mSBtMo4jlpy06hYelksmxkZrCOop3hvcL+wz/8mxrbOg1+4DV5YJ+OeDfoMKx7ZBql+k9e6L06hlEdKc6SuY3mwy0mF6Tlj/+1QnRpu4HUXxFBJb1Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by SJ0PR11MB5151.namprd11.prod.outlook.com (2603:10b6:a03:2ac::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 10:07:42 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762%4]) with mapi id 15.20.8026.020; Wed, 9 Oct 2024
 10:07:41 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/xe/mmap: Add mmap support for PCI memory barrier
Thread-Topic: [PATCH] drm/xe/mmap: Add mmap support for PCI memory barrier
Thread-Index: AQHbGjKdTqwDqQffP0ypZdJ8QcY/pLJ+MZ3Q
Date: Wed, 9 Oct 2024 10:07:41 +0000
Message-ID: <SJ1PR11MB6204809E882A9DE880FB3587817F2@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20241009100725.664150-1-tejas.upadhyay@intel.com>
In-Reply-To: <20241009100725.664150-1-tejas.upadhyay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|SJ0PR11MB5151:EE_
x-ms-office365-filtering-correlation-id: c142d6fc-7115-4ea1-d25e-08dce84a3610
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Zd0UHc9PnXdhPOdAN9AyRn46DtWQuQmRpssX2xP1ekx3QPqJv0su7dwKVoAI?=
 =?us-ascii?Q?2uTVf95c+2Tu6G1/yFQmd8V/q5wFxCrzLIKfLv0iIcvfxrsltsyMODkfEs1q?=
 =?us-ascii?Q?J4MzOsPFBFGJ+1edMUrjtELKSZQ3ohHILosL1xIyMgJmrctUlc6jnk0+Fl/p?=
 =?us-ascii?Q?T1ht+HDkWS3jInhLRopypPIWYhnF8F5OsfAkoyxWSPmwLNFhb/h3CRft/1qg?=
 =?us-ascii?Q?JgcYh0c6QrcNwjWVi4Y03qMAd15Yi5thDT6tWV0K90q5RXa1x5OvoNhyNhcl?=
 =?us-ascii?Q?6HobfN1pCZh2Qrj3o8KGs4uIreGSGb0+67Fo+P/E5RYeGxejAGk4q5uzN5AS?=
 =?us-ascii?Q?67XG625mHn63FQBVMG2BqpBh1PCOPRajBXxSvb9pI2OGwnlhQMo74dNj9d90?=
 =?us-ascii?Q?ZXk5Yksey8jWGBs5T0rmwo+6c9lq45hEGH7ns09joGrKatpyFpkuNpsCIKUy?=
 =?us-ascii?Q?dBIghVsBoss5Hw3fUHpYDV6cuB0oc0SytrXT0HNcBgrFOxAQt34Qf5YMh3W/?=
 =?us-ascii?Q?Y0xG8ferSIBLpv4U4X3hFbEdF2iOzIaf6hSRdz/hiyMVwnUzV0ilqvA+SGub?=
 =?us-ascii?Q?o/0cG0foPULfdrQQJbscBLB8Zf2KlBElce8A7UaVevxjCTi47UZ508hlz9fv?=
 =?us-ascii?Q?c+cQNXgiQs6feE2/+A3Sfngfswoo09ZUv/D7S8DlOH1Tef8Zc3BPqfAm+AtR?=
 =?us-ascii?Q?feNHprXb9/CpRWNQXakzG/Yrli78lw5y84WuSpTw9cIqgIhJOzKIDXdNgsWq?=
 =?us-ascii?Q?0MYxBk9OntKm0DI+6MaYM3BKWesBCa0YikIpzaXzUAf4S4Io4paTH4HGdiLd?=
 =?us-ascii?Q?zjd+3LASJvPZvdM/3LB7BebEPYZ7ymeOMSLgQZ2rviyz7xQv2/eJI55yeHk0?=
 =?us-ascii?Q?+SQ9lxcjZVQ40DqNkdKr5ebbx3YrFdFdC/tkOCjHF6KcYfSGNguHPYYUC4RH?=
 =?us-ascii?Q?EzhKM+YxFNQjeoXUNFXs1r1rM+2yQ5HiGTgk2I7kRrZl1E0Z3EDux+4gr5gu?=
 =?us-ascii?Q?ywShr54yD1fLy0R6y8HjFzsVojxCZzjsr/pq0rZBmK25DL5Oo0Pe2kIAsRMq?=
 =?us-ascii?Q?J/brHcT6vFNwmkooZv6BmrNLwIUgHxm1QJUE9nHIcKic8LS34QWKW5fRG604?=
 =?us-ascii?Q?kgSH+S/iYogF/Hx0F9ApaH/M4wR281SkalVor+UOTrA3PWFCpWGVIMCryD+a?=
 =?us-ascii?Q?ntOwoNGVSH2MdZiuf/JtU16CgafFB8V7l48ZnOAHq2tT1i1NVTl4ULImDojU?=
 =?us-ascii?Q?AhhwW5XBRF13pbYFUng6XDnYx0Y0NMhivLlAHqMJnw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MtsqDZ558P3f5PniXk+50hlTEoK3+jlcWohVu/DiQj45L+vUaMKnrFb1WwVW?=
 =?us-ascii?Q?6B04vKnMdDYB+4notsqXeJzP0rNGq+tDy87cospZOMQoUsIKsT8sik1dIRag?=
 =?us-ascii?Q?mY6ueNBVtGFTQjHjI7monSqvCnqbzR6sT/JRF4Ta0dckKGEl+4RyKiP3JaOn?=
 =?us-ascii?Q?nbOJ4HQ704FUL3OiPWbwAIv/aqD5R0Mcw8XeX1E7MRBWUOgDPY7do+AYqQ1j?=
 =?us-ascii?Q?aBZRqVWvv2X7fw7tRuenw530Cz/AwsRIaOKtCahWynhkHYj/CHLA+V225Sen?=
 =?us-ascii?Q?PamFxfSTZMZGf1/bfDpyVKuJnx2nW+4BfvLH7tNj/s2RW1cpne9oKRpv8btK?=
 =?us-ascii?Q?SCa+JaQekP/f/I50MMiMkeulFU+/Owi/zIKo4f8+vwgTda+y0VNBFF+Z0Rfw?=
 =?us-ascii?Q?/2e5YGGCQ27H0QZJJ6O//iNKBoi/eIBZhENUY4r9Gqp7XQvsHOGt43sYsFd3?=
 =?us-ascii?Q?OeWaw9koZdIKhMmnX8kNqKaGgmnlsRSGdaNgwkYiiKRFTdyQwfy2mtr0Yupm?=
 =?us-ascii?Q?EPHHP7vOMRhCwTvJZ7p2ObjIbbjergX/ewShkIG+v85GB87y4aE+osF3aDJo?=
 =?us-ascii?Q?y0Kwiv7HCr8y8vaeziu3W7ejk1jJn9oVrVEg9wpGf35ks3yqzULyW5i6AVbC?=
 =?us-ascii?Q?hIic7lkTEQfqfev7WlF58QkM9WvUU56iEI1YMHuVUHDYYXHPqomlPzqxGKaG?=
 =?us-ascii?Q?BDS68Id6LWJtqW7xVT4chNhbZcFJWGq9hwGa2JnpKEIfzyUbhDibUQXnkXHZ?=
 =?us-ascii?Q?MqEn03uVK1E/1mmn9K9qRQFZq/EemuvQzhj0/RDEcxI6LcKPk+4pauj9HIUd?=
 =?us-ascii?Q?/NcwWLagnpxD6hhjFV1MLSZZ0ZM2hfv41s6bhTXt0ZUT7/nT2xPUe+Hi2GcX?=
 =?us-ascii?Q?QOZ9Qh0U3gRrNRP64THpR1IghWwDk8WGoE0/GW7cXnTX3ltrODm9lanN8QOQ?=
 =?us-ascii?Q?HVPQF2WxJ+7Bx789jLrLytcjn6fcJl9OP3BLKpqeCjPzrGawqzLBbtwAj+0V?=
 =?us-ascii?Q?3RKdXh7b7tI+UZtvS7AokRlCoXsx3ZP1OEhfyEKmBNorbTK/fzkRx/Rdvllp?=
 =?us-ascii?Q?DT/+0YkAz+nYGCUuLKYRob5bu+UO2uous4rNardSydg3tq+BnvHubR7nN9jk?=
 =?us-ascii?Q?Gbd5fvz34ho95e1ePOewQUGtIKVb2kBgyXCIQODjEWXmARX23dOvfs7KZEBT?=
 =?us-ascii?Q?fafmocvo9Hp/qdG8Vv0u7YtMIlLvlDjbKIi5J2KXpc3YDFKl/umNWdiss+54?=
 =?us-ascii?Q?fdwXIAXr23P3pM+a93KB3E9mw1ep2TbZVdVQ0jAeqm2St/5NpgmmF8C2eTQu?=
 =?us-ascii?Q?b1DdiF1Pp08n/fJoSZjVtQ0egFfO04SsZPwGzh+hsEBEZUhdP3x/FhjD5GMB?=
 =?us-ascii?Q?10BySbkOex/UzcPiTBqXSsQ68WWnR+PEgKeNNa5EleaCmfZiNGkwcq2hUY0f?=
 =?us-ascii?Q?ur66bFIw8nMgnxQXqqHwD5HNEA2shZfbqsxk/AkGfBHuZZvl8lyfKRo682ue?=
 =?us-ascii?Q?dImqzjDXHWHmtGhAZkMhotw2lnJEZ2/ufHQ+1b8F2U8GYpQwjLmQ7sdJRwNg?=
 =?us-ascii?Q?Eh6MljcCh8KOSRx8Q6QQYJJccg9QKUdXxjqKECJB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c142d6fc-7115-4ea1-d25e-08dce84a3610
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 10:07:41.1670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +EqXR/+ZV3iB4t5J31UR2gOUVeQ14pIaqvsCv4w/2BeLWbSCoOfveCVoPuwtnfjX9GYnOcFdXu2krWMnJKcpT7IU/a/aDfZex9o45FaqgLA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5151
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

Please ignore this patch, sent by mistake to wrong mailing list.

Thanks,
Tejas

> -----Original Message-----
> From: Upadhyay, Tejas <tejas.upadhyay@intel.com>
> Sent: Wednesday, October 9, 2024 3:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Upadhyay, Tejas <tejas.upadhyay@intel.com>
> Subject: [PATCH] drm/xe/mmap: Add mmap support for PCI memory barrier
>=20
> In order to avoid having userspace to use MI_MEM_FENCE, we are adding a
> mechanism for userspace to generate a PCI memory barrier with low
> overhead (avoiding IOCTL call).
>=20
> This is implemented by memory-mapping a page as uncached that is backed
> by MMIO on the dGPU and thus allowing userspace to do memory write to
> the page without invoking an IOCTL.
> We are selecting the MMIO so that it is not accessible from the PCI bus s=
o that
> the MMIO writes themselves are ignored, but the PCI memory barrier will s=
till
> take action as the MMIO filtering will happen after the memory barrier ef=
fect.
>=20
> When we detect special defined offset in mmap(), We are mapping 4K page
> which contains the last of page of doorbell MMIO range to userspace for
> same purpose.
>=20
> Note: Test coverage for this is added by IGT
>       https://patchwork.freedesktop.org/patch/618931/  here.
>=20
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_device.c | 68
> +++++++++++++++++++++++++++++++++-
>  1 file changed, 67 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_devic=
e.c
> index cd241a8e1838..c97a4d1f0a98 100644
> --- a/drivers/gpu/drm/xe/xe_device.c
> +++ b/drivers/gpu/drm/xe/xe_device.c
> @@ -239,12 +239,78 @@ static long xe_drm_compat_ioctl(struct file *file,
> unsigned int cmd, unsigned lo  #define xe_drm_compat_ioctl NULL  #endif
>=20
> +static void barrier_open(struct vm_area_struct *vma) {
> +	drm_dev_get(vma->vm_private_data);
> +}
> +
> +static void barrier_close(struct vm_area_struct *vma) {
> +	drm_dev_put(vma->vm_private_data);
> +}
> +
> +static const struct vm_operations_struct vm_ops_barrier =3D {
> +	.open =3D barrier_open,
> +	.close =3D barrier_close,
> +};
> +
> +static int xe_pci_barrier_mmap(struct file *filp,
> +			       struct vm_area_struct *vma)
> +{
> +	struct drm_file *priv =3D filp->private_data;
> +	struct drm_device *dev =3D priv->minor->dev;
> +	unsigned long pfn;
> +	pgprot_t prot;
> +
> +	if (vma->vm_end - vma->vm_start > PAGE_SIZE)
> +		return -EINVAL;
> +
> +	if (is_cow_mapping(vma->vm_flags))
> +		return -EINVAL;
> +
> +	if (vma->vm_flags & (VM_READ | VM_EXEC))
> +		return -EINVAL;
> +
> +	vm_flags_clear(vma, VM_MAYREAD | VM_MAYEXEC);
> +	vm_flags_set(vma, VM_PFNMAP | VM_DONTEXPAND |
> VM_DONTDUMP | VM_IO);
> +
> +	prot =3D vm_get_page_prot(vma->vm_flags); #define
> LAST_DB_PAGE_OFFSET
> +0x7ff001
> +	pfn =3D PHYS_PFN(pci_resource_start(to_pci_dev(dev->dev), 0) +
> +			LAST_DB_PAGE_OFFSET);
> +	if (vmf_insert_pfn_prot(vma, vma->vm_start, pfn,
> +				pgprot_noncached(prot)) !=3D
> VM_FAULT_NOPAGE)
> +		return -EFAULT;
> +
> +	vma->vm_ops =3D &vm_ops_barrier;
> +	vma->vm_private_data =3D dev;
> +	drm_dev_get(vma->vm_private_data);
> +	return 0;
> +}
> +
> +static int xe_mmap(struct file *filp, struct vm_area_struct *vma) {
> +	struct drm_file *priv =3D filp->private_data;
> +	struct drm_device *dev =3D priv->minor->dev;
> +
> +	if (drm_dev_is_unplugged(dev))
> +		return -ENODEV;
> +
> +#define XE_PCI_BARRIER_MMAP_OFFSET (0x50 << PAGE_SHIFT)
> +	switch (vma->vm_pgoff) {
> +	case XE_PCI_BARRIER_MMAP_OFFSET >> PAGE_SHIFT:
> +		return xe_pci_barrier_mmap(filp, vma);
> +	}
> +
> +	return drm_gem_mmap(filp, vma);
> +}
> +
>  static const struct file_operations xe_driver_fops =3D {
>  	.owner =3D THIS_MODULE,
>  	.open =3D drm_open,
>  	.release =3D drm_release_noglobal,
>  	.unlocked_ioctl =3D xe_drm_ioctl,
> -	.mmap =3D drm_gem_mmap,
> +	.mmap =3D xe_mmap,
>  	.poll =3D drm_poll,
>  	.read =3D drm_read,
>  	.compat_ioctl =3D xe_drm_compat_ioctl,
> --
> 2.34.1

