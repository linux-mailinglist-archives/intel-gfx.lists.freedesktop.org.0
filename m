Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B398D1416
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 07:55:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7C9210FF72;
	Tue, 28 May 2024 05:55:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XuvwW5kP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE99810FF72
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 05:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716875746; x=1748411746;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dQYnQ0ARO7cj5TCOwBrUtgKOVESS/dDXMaXBNvsZOho=;
 b=XuvwW5kPJteXUsz3/O4U346U06GQR8rB6EWkr29dAFP6oQEA80Y0dEzT
 Vb01IxSctzyEFcmSDx4synHwMTgB3XBnNWXzuf7+nhemsL6dxM0kvImQX
 BdLmR0d39yab910zMiCB4K+LK7z/3hdmQYuAvN8+XxG1nDucn4V1JWL+b
 bHHtqndOMzy5K77fjmXOqcJxKclAR596agdZsBaM/E04dCxewaFLy0sgr
 MAn+/fUtmLArMfi8+I9XKMT0RoD+impCdqycqGuVBeln+nEqliv2ZySGW
 iL5j1in0r6ahSc5SusUfENPrMqOfRU8CXSzoxws1ai37KlNpf9uHTYIYv w==;
X-CSE-ConnectionGUID: PDUiJOLHQnSpwn3aw8p9ew==
X-CSE-MsgGUID: EU/V87haR3GV4yyOC7I42g==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="30723429"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="30723429"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 22:55:45 -0700
X-CSE-ConnectionGUID: 4VhwLhdVQRGo5W1VPK5/fw==
X-CSE-MsgGUID: uweykcXfSAm5WGLiNC8wRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="34933904"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 22:55:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 22:55:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 22:55:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 22:55:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HULFJ2njeF0LWlJDee7zPY7udBHObz0MnqQbU/J2RaA+tTKddmr4UrqW9rny6uYNTtbMjgv7L1L8ylcMCljiJBLnWXlZPZTwr5t7ijTdXVxbrN4rxZ3Mzq/8yJBKTbpHzsBGvg4L83Bv13V7ldQsu58fQV7IhKsFKLBl2ETsVvLVh3hQ+HerNj3EcXcIQK8HaJKvvchn7L5HaFXGqfNpeqkDPM1CIF7IkQTQmu/kyk6Utkv3QNAhGVDjcTMP/2Bw/pyPOX18437ygmOC3s/03QOlyNdQsuT0QHq9agpI/Wh2yJWjeHH2q8SDNeEutsOt3L+PPLIRkhv8cTcLo1wvDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tOs4aa/maZchC00gg8gQ1X28ZkTiWgwfzPWpE2GOs1I=;
 b=Iy2UETtZeXMDEJbK4TatWQOs3pli84f3aDv+8FTWxyTlyxJrXIILd84e0MbgfujR82tUwjP981zce+K+Nv0+AoCygM6iERHtN9SnG8VjM2Ac2MCAS0beHxiTJvYAYyxbBzb8jjyrcpBj0qitVY0e+M2cAOrvEmaBg48yqYZpZxXMQZVJVpTkd8hJACbrK+VXeB0tdM6EH5lUGWI9zU7UbBMewhGfDhMNKMsFzHXNxCv08m1yNUVQY/nAYoi4woxJfxCc6VoZoel7ZphQaW4ueEpVOSGKjJJ19RpRnDhhBrUw2cLuQmRPANp20EReH6O4PTsT8T+FSPVltwN0UpCF6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM4PR11MB6525.namprd11.prod.outlook.com (2603:10b6:8:8c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Tue, 28 May
 2024 05:55:40 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.7611.030; Tue, 28 May 2024
 05:55:40 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH 0/6] drm/i915/pps: pass dev_priv explicitly to PPS regs
Thread-Topic: [PATCH 0/6] drm/i915/pps: pass dev_priv explicitly to PPS regs
Thread-Index: AQHasCKTUWrLMvC+2UKsrwCxOnIDdbGsJu2A
Date: Tue, 28 May 2024 05:55:40 +0000
Message-ID: <SJ1PR11MB61298FEABCEB9B75B23BB659B9F12@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <cover.1716806471.git.jani.nikula@intel.com>
In-Reply-To: <cover.1716806471.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM4PR11MB6525:EE_
x-ms-office365-filtering-correlation-id: cd093580-f295-4811-fddf-08dc7edace14
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?9oCJk6xubYdDfo46VcxwTyZn7z82bKhPqGkrtWsfR6pwBWSDuEbKDw6osQ+Z?=
 =?us-ascii?Q?8dWt5dQLaBEXuuwM031mFkQo1Wj2FKJUvj6EL55v4uhj6evGdCxfl0ZHc53y?=
 =?us-ascii?Q?Zcgl0Sk4VRHznyQ+XcAQ0Qeyx5CABsFp6OmOHVI3SWS+4dxvmIm0hBHIiNyC?=
 =?us-ascii?Q?mKs1xEKRTMF9EW/P4bkyUEyr3RZrRrYdjGWhzFFUtn1/b2Zwt4zbHt0nk1Ua?=
 =?us-ascii?Q?GKYYovx35WbMq9/AZ7KeHI5yUQ1HIqECFYOPLQdLnEczpDiDhiAE9idLkYWe?=
 =?us-ascii?Q?b1yPLDk5o0w4H8p/4/sCAoExX/6O3zMj8XFKeHIQ2DPv6RiOkJCN6DJSAwx6?=
 =?us-ascii?Q?dL9wfF6Dq5odUyTp5j/6kFvsNAWjM7bZFI9xv0MN5WQfhkph0ihPrEtX/DER?=
 =?us-ascii?Q?zwrXRjNmbrb4mJAwgTtC+yLtW2w8JQvgBH1Fx990Qk+ww8BWr4CIRtxpKC5O?=
 =?us-ascii?Q?sE41q9s1H0cJDMjJeSLFrdNHelTBeQ0WJ3nLOvsVGrZc7MaeAiudt44YQH4s?=
 =?us-ascii?Q?y7QctDWBTh2cPPUiESfi4xwniV7jgQeA0+8vLJ44Y+MULFa9RRJK7HNDsiGd?=
 =?us-ascii?Q?4Lk1NwOMxvtulhE1iD+mlfXYS7GeteMDAJ48gaB4VjQB7Yn5KdcroeNaki6N?=
 =?us-ascii?Q?hjJIe8uiX9U+q+sTSBCfPbw26iGJ94qCWC5TzCgJwxUFLa8+Jb6WkhOmB/gn?=
 =?us-ascii?Q?I5BnL8jaL3cig10pVe9DqAg7b4MFYhjCggV8psHaKM+R5bxEJhpEmz0Rjr9B?=
 =?us-ascii?Q?hhdRM0+sHtlh+GGgK/wGhi1WMb7hntJ0lQ3x90zmknY/04/4kUXrjbN+Yf8A?=
 =?us-ascii?Q?WYbjf849d0TF434fyCVD5YimWCWP80Uy8Vi5EYkLWcVQBkf+KcRNLbsggnmC?=
 =?us-ascii?Q?tyoc8nGzuJOGHaVickK4OJtKvpe8XpCxlQNERoKoYFtXLa97/2nS7324UgpO?=
 =?us-ascii?Q?KIjD4gpzzZeNMetIo2cb6zmlfbN9rUb4YVcx2EXGH89VkAJ8K+KWDyEHok51?=
 =?us-ascii?Q?4htT5Z8Cs3ZpHT/TSEXPWSmMi2ldNzZ/Nejp7ZbmpEtG91EhMn9uKqG8qAJu?=
 =?us-ascii?Q?NdlD3xVfodBprcoOt5IxQpNeG9spYW5lbGWpQ0/b+kLl73r0GLilYH5d6jyt?=
 =?us-ascii?Q?QTE5YeUI2yML5cEXYbMGSJpRfKcZLt1ZriJva8hWTM6/idncqtu2USvAn1AF?=
 =?us-ascii?Q?gEcsJ3ooop4MKhjprHhB3+0GbaN7GnF1cIL5arsSua3b9rGFRnqi96qwfy6x?=
 =?us-ascii?Q?rLYjt5f6ZQyKoR7+9y3wP0DhLVZSngKjFVS2Eas2D9eElkUCdBwBYi5NCMOS?=
 =?us-ascii?Q?GXX0iplSLIMpe8ECdR0s7HtvO7CFO+G2PMcfdE0W9lspEw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TC5lWyu5QwddxGWnC5WvcFPbUKLfR2eEzmUpIIHeCNJlP7/2q7eL5tFViBnp?=
 =?us-ascii?Q?6O7SLuj92v8eTnpKPEUYm2cNjYfxWCdnZVe2mT/11diXukakHl1f86/mJNfL?=
 =?us-ascii?Q?lWX/EjAqx+nup1ZVVszTpIt9mg8//pEj0S6rIif2Z77IIUiwMZQHb5PeMlO8?=
 =?us-ascii?Q?LHmPrHN4doDofoCEkRwW9ApRXZ9L5fSw4B6yn69swhQ8qhnDYBmTDHucDA4a?=
 =?us-ascii?Q?/2QOtBA1kYvW3wMfFLXT8FHLhU/zRZOcc0/37+0bxqyUhGx2plnqp/DCbQ5J?=
 =?us-ascii?Q?5RtLYCXzcKyVNJ3yQnCxUy3t5z1VJP2b/JHfF2O60cEWxiDenX/ugPIOSIqx?=
 =?us-ascii?Q?DAXwhFieVl1QeNt+FkHKoor8bsCZg/SIFvK5bd9HoLUsYKhg+311omUpUL3q?=
 =?us-ascii?Q?B6Awi6okh0b+YGyEnAb70i6CKsztRImhQioZPD8GhUN8q91D0Gho5PEVSZ8J?=
 =?us-ascii?Q?JBJiLu8lpXkxXmM088zcmxm5gO2EU0QNI7kzm5tJodwDPcj947Oq/NYhJuT3?=
 =?us-ascii?Q?X7ZwkSG23usYiKTrzKrrEwLXT8BP+nDZaODD17dv+nlGzqGJdPYqgpiRNwz4?=
 =?us-ascii?Q?pjsA1DMCBk7unRzNN0QeNh5yn+xkWa3DWkbc8KXbQDybm3CcZ/A+KwCx9NVX?=
 =?us-ascii?Q?GBR500RGa0dl7HH4CA8DBh3WSVB0e61bAnYSfgAiPtm+o0IofWQmPBeNA3O0?=
 =?us-ascii?Q?Vs8dZ/xQJUe3+dQBUgxngKYOwQvBwrqnHJHSFpUR6ACP/t+pMOfKKBdhgT3k?=
 =?us-ascii?Q?CH+JV6UZ6R0ivq/Y1rUh2MZ9l5Upzt7/pL6cq45A6VwBDzqtVwZm4UyM2oRj?=
 =?us-ascii?Q?//1KQwKhWLlUBTkTrWHkWZ36PYl0z0zV5ut9HpMLH8Tu+jOezQNrvzy3yli6?=
 =?us-ascii?Q?yAYNBaU7x7oCoWuShPwbNypPvMst3Rb+kpdvG5uh+bqC87cj4xuEdqc2o9qi?=
 =?us-ascii?Q?LZNEOwc+1DdyRKYz/mnrAimh+5ZaFeQYerq345W0HCe7GXSIVNahq8qX2H5u?=
 =?us-ascii?Q?v2AuJxpWb7SzYFdyNpuJOV9yTwapBI9Jv9T1osT997RmBGYz7OguZTtIjhjF?=
 =?us-ascii?Q?yRFCRguF06uGLQbrCT0LI+RzJK8ahP+WBFKCAwPIP9+kvrVLMyYuFYczHACV?=
 =?us-ascii?Q?5WZPeNGkypAPZHec/mpE5AV/0Wdty+oXQfIrLAtiDSn8D3JpFdbBTWer8Cqu?=
 =?us-ascii?Q?ICHwvjHrVbaZyopPIIcURShyvzno5UqMr2sBrWf9AbeXUdo6M3vyXr7Dr+Pf?=
 =?us-ascii?Q?wIqumjuxVlwumjghozMquN2EkLNvOVcXkjU/T2mF7ImIHGmWxJu3gKvKGP2X?=
 =?us-ascii?Q?STMbMjnJsKep6ScI2N9ufn14gwRmXM6J0LX82MhyfK35rsgXG2BVZXBZXhxt?=
 =?us-ascii?Q?Vagi4/BD00jj2FC2sIs3AY57Ybgy4wCgHWE8bhAwkvGcVNxU2kWYjk+NWx7R?=
 =?us-ascii?Q?IoKmJcZ9tmKvC8EbsjaIt4Bc3FA88XbwBzYPef+s3zlfz0hYYCNgqFOFs0SZ?=
 =?us-ascii?Q?g1TBec+uljRiR9zWY9QoCDKSVGSFCOvcmmGW52QMM25370hE9e/8wU/2Xr7G?=
 =?us-ascii?Q?CE/HEFPcIHM1svkSOn4+oZih+rsbKsWvrOY87PKRWebPBgyW1dEsA0bp5YkW?=
 =?us-ascii?Q?UQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd093580-f295-4811-fddf-08dc7edace14
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 05:55:40.5056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wPrqiP8DW0lst3cxXrUTAC1vSuYHcOVWI2J0Yt7Lo4ZXbrE1qUaGzZN2L3r9Ai0UkGVh9Bn/uPKt5YMu5ulMhjJUa8/LDNXy9ROqBPmNGHg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6525
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
> Sent: Monday, May 27, 2024 4:12 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com
> Subject: [PATCH 0/6] drm/i915/pps: pass dev_priv explicitly to PPS regs
>=20
> Continue avoiding the implicit dev_priv local variable.
>=20

LGTM
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>



> Jani Nikula (6):
>   drm/i915: pass dev_priv explicitly to _MMIO_PPS
>   drm/i915: pass dev_priv explicitly to PP_STATUS
>   drm/i915: pass dev_priv explicitly to PP_CONTROL
>   drm/i915: pass dev_priv explicitly to PP_ON_DELAYS
>   drm/i915: pass dev_priv explicitly to PP_OFF_DELAYS
>   drm/i915: pass dev_priv explicitly to PP_DIVISOR
>=20
>  .../drm/i915/display/intel_display_power.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |  4 +--
>  drivers/gpu/drm/i915/display/intel_lvds.c     | 29 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_pps.c      | 30 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_pps_regs.h | 16 +++++-----
>  5 files changed, 41 insertions(+), 40 deletions(-)
>=20
> --
> 2.39.2

