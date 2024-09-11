Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A42974996
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 07:15:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C9E010E72D;
	Wed, 11 Sep 2024 05:15:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UnrZ3IO2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28FD110E72D
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 05:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726031746; x=1757567746;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6MD+k9U4alYGwTuK+0b1XEcaKiLyqfHPEP1sXBBfYsY=;
 b=UnrZ3IO2tnvW5QXfnUIWHQykv2GhsHctWaiYTENd9+KBNer0LNCjXYH+
 Xxwmta6Ng0hkqGAZEif5DiZi65Qv0bcwnAs8LdneGuCACSHvXY8NSgeLx
 TfNhImk4U0OQkv2gTmHrMNPvohR1NfTR7Fv1Pl7Xk1++mL3iSrKEafO0r
 VgUPd+288vCJqy/eexw8YaTbzE0iczLNBfi7VOd5v2buOdC/TjCPnBQvA
 SBHcflEjziazJCapklL9YWvxPTSanCHgtO3ise5/9UisX49cb+sAYKIly
 vOW8B46AdHqV4A0fv3AqI2AEvkx+AmTanwgYJBwPcQtHFe6rJqtcHfrsT Q==;
X-CSE-ConnectionGUID: XaG/y3owR7e+1TQ6mFk4Zw==
X-CSE-MsgGUID: VaeyCQEaQfqKyLOMtoV7VQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24749190"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="24749190"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 22:15:45 -0700
X-CSE-ConnectionGUID: DsyeQ+YlTHGUIWLJxUTWDQ==
X-CSE-MsgGUID: pLbfakChSSWw3A07o1WooQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="97948652"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 22:15:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 22:15:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 22:15:44 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 22:15:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MPnoUYjWJR09Kz+pqFjLbUNGMePzGchnFiAvY2k+Q1gtIr1DUmchnVruD9LmkuKwi76UAsm5G54yi05QDKHs5Ol0Bd6f2ARDqHbCW21zq2GG2beO10wYQG21CqOfayhwWRdlKSdU9NufRhfsCKhqG56iBwSSQU4bgj1zNllqhAt32K5VjpHIq8WugS24+1aPpvPXtcqmlU6nftvp8J9WhQXc0S+6ymhqpWFj8ev9alymdV7RIMa8ClUMcLMvkFMtzT/uRAj4IPfhXBS05jOTEIchc2DB1anMp6sV2AQy0fGAR4ayZLOLUr3cCrIC3XPWR9Y7QnjW21Mt8fwNf4ILfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=utaNZzUBInrI1OLJLDG4Yl1AgLyeKnutbLM6UkkEU4c=;
 b=PWtI2Hbl1X5T2e3lr6OEj20yvKpFj2RrO6q5kno3fGYXmPZQIM1HqRlHjz/LUkVMU9wobkydbBxhln7tUv9bTIxPFtvR85E5aNsCLGHOkwCAgU/5OREzxDGEMHQ4Xbw6TEI1mz40oPcKO/e/SZtlOpqfVjq/joZhyepFKBNY8bnrGjybNMQgCMQxXBeTiNHGoze0NRiU5mpIEX01b3V9iQBnTyR3ujrncb2jK4QG8h1zKNnDWKjitCVOJTrvcWEO1/PTDJdJEehEhYvw1tUfHBv5JYJqUCoj6bzvUe5qrzCXVCWVaBHhpq59C2cQPpYWh9kCz0KsiupMF79z93EI9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by LV2PR11MB6024.namprd11.prod.outlook.com (2603:10b6:408:17a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Wed, 11 Sep
 2024 05:15:42 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7%5]) with mapi id 15.20.7918.024; Wed, 11 Sep 2024
 05:15:42 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 3/5] Add crtc properties for global histogram
Thread-Topic: [PATCH 3/5] Add crtc properties for global histogram
Thread-Index: AQHazsMAPgdxw2i3bUKRYoFbsJCGZrJSdAjA
Date: Wed, 11 Sep 2024 05:15:42 +0000
Message-ID: <SJ0PR11MB6789D70ACF2DBDDFD80EAD6D8D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
 <20240705095551.1244154-4-arun.r.murthy@intel.com>
In-Reply-To: <20240705095551.1244154-4-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|LV2PR11MB6024:EE_
x-ms-office365-filtering-correlation-id: 925260a1-75fd-42da-9609-08dcd220c850
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?+9YyCqjKuzg7FL05bHTY4trcl+JYk9CicF3o0WrGePc1ykkDHMbHYMjglrA2?=
 =?us-ascii?Q?Tov6IfoWovKEZFnLTzMAPW4MdzWRezWY9ccQ4P5X0yBLu84RrplPIJngz0WU?=
 =?us-ascii?Q?Z26W7YWjelc/6MfdRaCnxUtOrmeBbT8FGMTgdicM7i8JI7sE1V6Qklzzrufo?=
 =?us-ascii?Q?UywutkywcpH39G7HoruC8Yp8mywh7A1LGII8FTOPeFXAvCF0JpOxh85X0Xzb?=
 =?us-ascii?Q?Uzghgyj2mp18kwtce1YtnFR/x/zSsGwUfoU941/uA5zv+I/N6Gh2JvEmo1sI?=
 =?us-ascii?Q?rP3kUItzZhPI7cFz4jgvH24nqMeuh3CO5F1ThdLRx5DLnd/gEk8nUZs8xmYy?=
 =?us-ascii?Q?eQtjQNFcQ2xkX42vTGKcgtykAhv1iB2zkN6b0cEpnFuTlaXBhrq33Jdz+uWp?=
 =?us-ascii?Q?0Rjv2sxslyb2MQMouJ5FoE3uyetH/kesmAdvNX8q234iypAWu2IqTA4W6KYg?=
 =?us-ascii?Q?I+2xgCoOd18zll1zsWJt4UCCw3WedNmomnpNGyqiIPCwOr1CgIcGbNIown33?=
 =?us-ascii?Q?Jj+/w9OuavikR1/VpANdQvwpXGjneIaZv4mKuTs4x7hWDDPQ1iEU6UxnFjPt?=
 =?us-ascii?Q?YSzwl+YkQW6LXRLcxVL1vma7wz8Ms0R3T/MtfhUIM2nNVEUfujycy62HMEH+?=
 =?us-ascii?Q?iNm/cnMbZE+lVQt3k5DXT4anRpgZptMcK1Ie7D+52aQ1QRPmX4ZkCE3BX3pm?=
 =?us-ascii?Q?DUO4cmLu5o/SkcYVq+5gJfjlfvfvXduZQootvK4tU1OlPMX2RKoXSpvlpY0o?=
 =?us-ascii?Q?lUjOSHxtNNHKr2dNIe/AR/eejl2TwhCG9muL7Ybex36y2valUvN8qkgFjuG1?=
 =?us-ascii?Q?kyJ3luEeNMXXYRErEtUcX8/zDp5Kvd2b/vCL+Nq9h3l1yB/K8CPlpf9hIKEx?=
 =?us-ascii?Q?m1MuCggq4Q/nnr/2tum3p/xQc0aNKQAyjJAwTsa9nWhe1XYeaMq/5LSjFkQ3?=
 =?us-ascii?Q?bWLyu1TOVmo87qRFy+jtvkec9uklDORWlE5fZlOcoIqd5nIOsPiYN0E74wC7?=
 =?us-ascii?Q?Ng+CWB8Blsf82ruLgJPlNrD0rP7FHnFlCIDfpVEJwuUvPuBVG08gNNDB6yBv?=
 =?us-ascii?Q?wkXJ0sDmOPxqBrUdelmGJ060bQSVoOG6lEcic9NbaUE1i37bZHse9/qO26i2?=
 =?us-ascii?Q?1j67KgJNC3t36MTpGUi2zK+Nnw4qA7QGoYdyvXFt3WoHaEzJq30gNPZe7xO+?=
 =?us-ascii?Q?jtNY1DFQIm9m/FeL0ytnU86zS4aF4WyuSFM3hNCQj5UgFAjKpt4Sg4bmZ3OV?=
 =?us-ascii?Q?EeMxrfzBDd7/Pu9W0wpKS2Qw852C5gIK0GIlCrZ3VSP2U+mASln2j05sQirl?=
 =?us-ascii?Q?9lg8OUVjCxAd2N6MubtgcHYO0utWYKKt+LLT39m5iRsgpkJbmadopzXD5Njg?=
 =?us-ascii?Q?Vlg97ZTL5lms/o4YVfL4ypTr88ZR/jX7BIe2KdF+OWwrTXtFgw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+UPO8xSlM+VXkCEM/uxWFPobr1r10vRi1FCSNDypQ/yPuQav5hI3VdWaBS4L?=
 =?us-ascii?Q?GPw9fWu2KRbu1xrYqXz83mac4qmY7SmuZA3Az9ryNIBMNtM5FNL11Lte8GYn?=
 =?us-ascii?Q?be0ooomNDw5m7zgj93cD2LiW8wUNa7zeA0JyKq/rV0JiqjfgGKlMMhgvaU10?=
 =?us-ascii?Q?K4hqYqSLNKRPXz8UsNNS3FIr/fxANdKm+ZsEUSKGiwUkn7QzAppHOF1Z62Fa?=
 =?us-ascii?Q?JnHfSIVwmbgs2ZISi+gZ6GCZ8KLDDKcXXAjuJbrYjogS24eXNlMzysj7UdUu?=
 =?us-ascii?Q?OJxzLhILux3Bah9oCNfntFaChbj0YuzqVljoHnIdUoEgkOyY/6TF4xsVq6gV?=
 =?us-ascii?Q?PuKwShzUHJ55nwdhv9kLqaE6iYvA6SqHpvUFWwyXduF3Vv02MZLs3I54UrF7?=
 =?us-ascii?Q?BhpNLsFBjwBnM6ui28xjHl/EnCifvjOcUkaBmIZM3ZrpgT/eAdVu/UEhwYOb?=
 =?us-ascii?Q?D/noXitKdTSNag0Wsi36xgHr3KkX9HhGDpFYD3WNNObfnfe6exHR9EMD8MU2?=
 =?us-ascii?Q?WMQQJCr+bUeHrl+LlmVZVS9Kk77Oz1CH4qljqyFzNu2r3QQ3o1Fi0yzC0k66?=
 =?us-ascii?Q?BZd/8N7zDlbQt5mMS9oAd/zHsIjpf8sGBQ83DdgaT7MLBsOSnctrEudab0z5?=
 =?us-ascii?Q?xC2DZC3OinJZVOInyhknAlGk1uviQEQo/UA2sKU6aidLC0Qee8tV5SUPNvsJ?=
 =?us-ascii?Q?XCP9SezqJahkdxUJB2MaABQbuda6WCp3mwgjxjDbBFONN/x/DB0UzOF+XQx8?=
 =?us-ascii?Q?BN83ufDNEOvSsdACzoNLcB7PfvH8n7Js7rPYPpWOkdlrlXqmsreDE4ydVVvF?=
 =?us-ascii?Q?UvtA4dKlPx+oNkVQvkwEh6Pz3f4Icrr661iBzCt9Tlx2QUb8gBA15nyuG3zR?=
 =?us-ascii?Q?nAI9jo3+OZxseVXR4N0sR/lOM+kC/nCfXjj4F36wlaM6TDILG+PJPJ0tpIUv?=
 =?us-ascii?Q?X8Al5jS7XdsIkMM+BnB9S5eSLytyrOW/wrRmFcVdCeXrAa5UiIGYkmydfx23?=
 =?us-ascii?Q?uZ/9mtrVOKvTTF42lxabC9Q6YS3OVkRO8teDSTFN5m4Lvymxeb8U0UM8nfE+?=
 =?us-ascii?Q?2U++uKhS2n5RAZWwYvJPXr7KcnlF+5sOb+3xHWDPuxPmyTN7w0NinIS9cLDb?=
 =?us-ascii?Q?361L2RkmjISxQpmWLuBsdZs6CeY9yvG6tNTaY8fshw8oU9yL1TUnAnHxfFmH?=
 =?us-ascii?Q?uOAFhNXFGkztsJdflgBiVWGFzoX9I4+eH3qoPgvTbB3RFmYUs9Y6if/H758b?=
 =?us-ascii?Q?uWXTKgV7MAsz9fy2m64O1xtT8MqVNSzi0Ljn8IWNkWJo+xliQhdFeJ9Hb/EM?=
 =?us-ascii?Q?VNwcVVp+6d2d78LlH4KhWCd5I5W0FbP57xg4f23FmpKtT3alc3AyHy5dSLys?=
 =?us-ascii?Q?qT4w8m5jIYnreQzXlVAHPSIzDzTA9fcC3XM1t5R9ljxKDcFjBegcPt38ZgZx?=
 =?us-ascii?Q?NCVURxc5If3SL8lfMgUUO4EWilX/aZ+DiVjowwCxjWX8+5MmveFOzy+V3XBM?=
 =?us-ascii?Q?SB1ohNfySiJOfisiX9NjNdsEFHavLFCcMIEP3A7Xozbr4r8g9ocKNKyiscBw?=
 =?us-ascii?Q?/VxITPnsPfnLgD7CGOuFNsENx9QxbF19woka5EP4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 925260a1-75fd-42da-9609-08dcd220c850
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2024 05:15:42.1114 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jqY4xJcW7mJV0+k8b9/plfLRwiL3MgeavDTNIlEr7rY9q90SVGGFhPwTPjC6mUfJqV02/pvuvKLMEm0Jqcp2Onoa6W+0akSim9dlJY7Si+c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6024
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ar=
un
> R Murthy
> Sent: Friday, July 5, 2024 3:26 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCH 3/5] Add crtc properties for global histogram
>=20
> CRTC properties have been added for enable/disable histogram, reading the
> histogram data and writing the IET data.
> "HISTOGRAM_EN" is the crtc property to enable/disable the global histogra=
m
> and takes a value 0/1 accordingly.
> "Histogram" is a crtc property to read the binary histogram data.
> "Global IET" is a crtc property to write the IET binary LUT data.
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   |   5 +
>  drivers/gpu/drm/i915/display/intel_crtc.c     | 202 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_crtc.h     |   5 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  13 ++
>  .../drm/i915/display/intel_display_types.h    |  17 ++
>  .../gpu/drm/i915/display/intel_histogram.c    |   1 +
>  6 files changed, 242 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> b/drivers/gpu/drm/i915/display/intel_atomic.c
> index 76aa10b6f647..693a22089937 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -246,6 +246,8 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
>=20
>  	__drm_atomic_helper_crtc_duplicate_state(crtc, &crtc_state->uapi);
>=20
> +	if (crtc_state->global_iet)
> +		drm_property_blob_get(crtc_state->global_iet);
>  	/* copy color blobs */
>  	if (crtc_state->hw.degamma_lut)
>  		drm_property_blob_get(crtc_state->hw.degamma_lut);
> @@ -277,6 +279,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
>  	crtc_state->fb_bits =3D 0;
>  	crtc_state->update_planes =3D 0;
>  	crtc_state->dsb =3D NULL;
> +	crtc_state->histogram_en_changed =3D false;
>=20
>  	return &crtc_state->uapi;
>  }
> @@ -312,6 +315,8 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
>=20
>  	drm_WARN_ON(crtc->dev, crtc_state->dsb);
>=20
> +	if (crtc_state->global_iet)
> +		drm_property_blob_put(crtc_state->global_iet);
>  	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
>  	intel_crtc_free_hw_state(crtc_state);
>  	if (crtc_state->dp_tunnel_ref.tunnel)
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 1b578cad2813..24f160359422 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -10,6 +10,7 @@
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_plane.h>
>  #include <drm/drm_vblank_work.h>
> +#include <drm/drm_atomic_uapi.h>
>=20
>  #include "i915_vgpu.h"
>  #include "i9xx_plane.h"
> @@ -26,6 +27,7 @@
>  #include "intel_drrs.h"
>  #include "intel_dsi.h"
>  #include "intel_fifo_underrun.h"
> +#include "intel_histogram.h"
>  #include "intel_pipe_crc.h"
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
> @@ -201,6 +203,7 @@ static struct intel_crtc *intel_crtc_alloc(void)  sta=
tic
> void intel_crtc_free(struct intel_crtc *crtc)  {
>  	intel_crtc_destroy_state(&crtc->base, crtc->base.state);
> +	intel_histogram_deinit(crtc);
>  	kfree(crtc);
>  }
>=20
> @@ -220,6 +223,100 @@ static int intel_crtc_late_register(struct drm_crtc
> *crtc)
>  	return 0;
>  }
>=20
> +static int intel_crtc_get_property(struct drm_crtc *crtc,
> +				   const struct drm_crtc_state *state,
> +				   struct drm_property *property,
> +				   uint64_t *val)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> +	const struct intel_crtc_state *intel_crtc_state =3D
> +		to_intel_crtc_state(state);
> +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> +
> +	if (property =3D=3D intel_crtc->histogram_en_property) {
> +		*val =3D intel_crtc_state->histogram_en;
> +	} else if (property =3D=3D intel_crtc->global_iet_property) {
> +		*val =3D (intel_crtc_state->global_iet) ?
> +			intel_crtc_state->global_iet->base.id : 0;
> +	} else if (property =3D=3D intel_crtc->histogram_property) {
> +		*val =3D (intel_crtc_state->histogram) ?
> +			intel_crtc_state->histogram->base.id : 0;
> +	} else {
> +		drm_err(&i915->drm,
> +			"Unknown property [PROP:%d:%s]\n",
> +			property->base.id, property->name);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +intel_atomic_replace_property_blob_from_id(struct drm_device *dev,
> +					   struct drm_property_blob **blob,
> +					   u64 blob_id,
> +					   ssize_t expected_size,
> +					   ssize_t expected_elem_size,
> +					   bool *replaced)
> +{
> +	struct drm_property_blob *new_blob =3D NULL;
> +
> +	if (blob_id !=3D 0) {
> +		new_blob =3D drm_property_lookup_blob(dev, blob_id);
> +		if (!new_blob)
> +			return -EINVAL;
> +
> +		if (expected_size > 0 &&
> +		    new_blob->length !=3D expected_size) {
> +			drm_property_blob_put(new_blob);
> +			return -EINVAL;
> +		}
> +		if (expected_elem_size > 0 &&
> +		    new_blob->length % expected_elem_size !=3D 0) {
> +			drm_property_blob_put(new_blob);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	*replaced |=3D drm_property_replace_blob(blob, new_blob);
> +	drm_property_blob_put(new_blob);
> +
> +	return 0;
> +}
> +
> +static int intel_crtc_set_property(struct drm_crtc *crtc,
> +				   struct drm_crtc_state *state,
> +				   struct drm_property *property,
> +				   u64 val)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> +	struct intel_crtc_state *intel_crtc_state =3D
> +		to_intel_crtc_state(state);
> +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> +	bool replaced =3D false;
> +
> +	if (property =3D=3D intel_crtc->histogram_en_property) {
> +		intel_crtc_state->histogram_en =3D val;
> +		intel_crtc_state->histogram_en_changed =3D true;
> +		return 0;
> +	}
> +
> +	if (property =3D=3D intel_crtc->global_iet_property) {
> +		intel_atomic_replace_property_blob_from_id(crtc->dev,
> +							   &intel_crtc_state-
> >global_iet,
> +							   val,
> +							   sizeof(uint32_t) *
> HISTOGRAM_IET_LENGTH,
> +							   -1, &replaced);
> +		if (replaced)
> +			intel_crtc_state->global_iet_changed =3D true;
> +		return 0;
> +	}
> +
> +	drm_dbg_atomic(&i915->drm, "Unknown property
> [PROP:%d:%s]\n",
> +		       property->base.id, property->name);
> +	return -EINVAL;
> +}
> +
>  #define INTEL_CRTC_FUNCS \
>  	.set_config =3D drm_atomic_helper_set_config, \
>  	.destroy =3D intel_crtc_destroy, \
> @@ -229,7 +326,9 @@ static int intel_crtc_late_register(struct drm_crtc
> *crtc)
>  	.set_crc_source =3D intel_crtc_set_crc_source, \
>  	.verify_crc_source =3D intel_crtc_verify_crc_source, \
>  	.get_crc_sources =3D intel_crtc_get_crc_sources, \
> -	.late_register =3D intel_crtc_late_register
> +	.late_register =3D intel_crtc_late_register, \
> +	.atomic_set_property =3D intel_crtc_set_property, \
> +	.atomic_get_property =3D intel_crtc_get_property
>=20
>  static const struct drm_crtc_funcs bdw_crtc_funcs =3D {
>  	INTEL_CRTC_FUNCS,
> @@ -374,6 +473,10 @@ int intel_crtc_init(struct drm_i915_private
> *dev_priv, enum pipe pipe)
>  	intel_color_crtc_init(crtc);
>  	intel_drrs_crtc_init(crtc);
>  	intel_crtc_crc_init(crtc);
> +	intel_histogram_init(crtc);
> +
> +	/* Initialize crtc properties */
> +	intel_crtc_add_property(crtc);
>=20
>  	cpu_latency_qos_add_request(&crtc->vblank_pm_qos,
> PM_QOS_DEFAULT_VALUE);
>=20
> @@ -690,3 +793,100 @@ void intel_pipe_update_end(struct
> intel_atomic_state *state,
>  out:
>  	intel_psr_unlock(new_crtc_state);
>  }
> +
> +static const struct drm_prop_enum_list histogram_en_names[] =3D {
> +	{ INTEL_HISTOGRAM_DISABLE, "Disable" },
> +	{ INTEL_HISTOGRAM_ENABLE, "Enable" },
> +};
> +
> +/**
> + * intel_attach_histogram_en_property() - add property to
> +enable/disable histogram
> + * @intel_crtc: pointer to the struct intel_crtc on which the global his=
togram
> is to
> + *		be enabled/disabled
> + *
> + * "HISTOGRAM_EN" is the crtc propety to enable/disable global
> +histogram  */ void intel_attach_histogram_en_property(struct intel_crtc
> +*intel_crtc) {
> +	struct drm_crtc *crtc =3D &intel_crtc->base;
> +	struct drm_device *dev =3D crtc->dev;
> +	struct drm_property *prop;
> +
> +	prop =3D intel_crtc->histogram_en_property;
> +	if (!prop) {
> +		prop =3D drm_property_create_enum(dev, 0,
> +						"HISTOGRAM_EN",
> +						histogram_en_names,
> +
> 	ARRAY_SIZE(histogram_en_names));
> +		if (!prop)
> +			return;
> +
> +		intel_crtc->histogram_en_property =3D prop;
> +	}
> +
> +	drm_object_attach_property(&crtc->base, prop, 0); }
> +
> +/**
> + * intel_attach_global_iet_property() - add property to write Image
> +Enhancement data
> + * @intel_crtc: pointer to the struct intel_crtc on which global
> +histogram is enabled
> + *
> + * "Global IET" is the crtc property to write the Image Enhancement LUT
> +binary data  */ void intel_attach_global_iet_property(struct intel_crtc
> +*intel_crtc) {
> +	struct drm_crtc *crtc =3D &intel_crtc->base;
> +	struct drm_device *dev =3D crtc->dev;
> +	struct drm_property *prop;
> +
> +	prop =3D intel_crtc->global_iet_property;
> +	if (!prop) {
> +		prop =3D drm_property_create(dev, DRM_MODE_PROP_BLOB
> | DRM_MODE_PROP_ATOMIC,
> +					   "Global IET", 0);
> +		if (!prop)
> +			return;
> +
> +		intel_crtc->global_iet_property =3D prop;
> +	}
> +
> +	drm_object_attach_property(&crtc->base, prop, 0); }
> +
> +/**
> + * intel_attach_histogram_property() - crtc property to read the histogr=
am.
> + * @intel_crtc: pointer to the struct intel_crtc on which the global his=
togram
> + *		was enabled.
> + * "Global Histogram" is the crtc property to read the binary histogram =
data.
> + */
> +void intel_attach_histogram_property(struct intel_crtc *intel_crtc) {
> +	struct drm_crtc *crtc =3D &intel_crtc->base;
> +	struct drm_device *dev =3D crtc->dev;
> +	struct drm_property *prop;
> +	struct drm_property_blob *blob;
> +
> +	prop =3D intel_crtc->histogram_property;
> +	if (!prop) {
> +		prop =3D drm_property_create(dev, DRM_MODE_PROP_BLOB
> |
> +					   DRM_MODE_PROP_ATOMIC |
> +					   DRM_MODE_PROP_IMMUTABLE,
> +					   "Global Histogram", 0);
> +		if (!prop)
> +			return;
> +
> +		intel_crtc->histogram_property =3D prop;
> +	}
> +	blob =3D drm_property_create_blob(dev, sizeof(uint32_t) *
> HISTOGRAM_BIN_COUNT, NULL);
> +	intel_crtc->config->histogram =3D blob;
> +
> +	drm_object_attach_property(&crtc->base, prop, blob->base.id); }
> +
> +int intel_crtc_add_property(struct intel_crtc *intel_crtc) {
> +	intel_attach_histogram_en_property(intel_crtc);
> +	intel_attach_histogram_property(intel_crtc);
> +	intel_attach_global_iet_property(intel_crtc);
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h
> b/drivers/gpu/drm/i915/display/intel_crtc.h
> index b615b7ab5ccd..56c6b7c6037e 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> @@ -7,6 +7,7 @@
>  #define _INTEL_CRTC_H_
>=20
>  #include <linux/types.h>
> +#include <drm/drm_crtc.h>
>=20
>  enum i9xx_plane_id;
>  enum pipe;
> @@ -49,4 +50,8 @@ void intel_wait_for_vblank_if_active(struct
> drm_i915_private *i915,
>  				     enum pipe pipe);
>  void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
>=20
> +int intel_crtc_add_property(struct intel_crtc *intel_crtc); void
> +intel_attach_histogram_en_property(struct intel_crtc *intel_crtc); void
> +intel_attach_global_iet_property(struct intel_crtc *intel_crtc); void
> +intel_attach_histogram_property(struct intel_crtc *intel_crtc);
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index c2c388212e2e..94e9f7a71a90 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -93,6 +93,7 @@
>  #include "intel_fifo_underrun.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_hdmi.h"
> +#include "intel_histogram.h"
>  #include "intel_hotplug.h"
>  #include "intel_link_bw.h"
>  #include "intel_lvds.h"
> @@ -4324,6 +4325,10 @@ static int intel_crtc_atomic_check(struct
> intel_atomic_state *state,
>  	if (ret)
>  		return ret;
>=20
> +	/* HISTOGRAM changed */
> +	if (crtc_state->histogram_en_changed)
> +		return intel_histogram_can_enable(crtc);
> +
>  	return 0;
>  }
>=20
> @@ -7503,6 +7508,14 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  		 * FIXME get rid of this funny new->old swapping
>  		 */
>  		old_crtc_state->dsb =3D fetch_and_zero(&new_crtc_state-
> >dsb);
> +

Since there is a wait_for_vblank in this for older platforms only, what is =
the expected user space behaviour here for enabling histogram and updating =
the iets.
> +		/* Re-Visit: HISTOGRAM related stuff */
> +		if (new_crtc_state->histogram_en_changed)
> +			intel_histogram_update(crtc,
> +					       new_crtc_state->histogram_en);
Is there any particular reason that this code is not part of pre plane upda=
te?
> +		if (new_crtc_state->global_iet_changed)
> +			intel_histogram_set_iet_lut(crtc,
> +						    (u32 *)new_crtc_state-
> >global_iet->data);
>  	}
>=20
>  	/* Underruns don't always raise interrupts, so check manually */ diff
> --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e0a9c6d8c9b2..e7c33eb76a7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -99,6 +99,12 @@ enum intel_broadcast_rgb {
>  	INTEL_BROADCAST_RGB_LIMITED,
>  };
>=20
> +/* HISTOGRAM property */
> +enum intel_histogram_en_prop {
> +	INTEL_HISTOGRAM_PROP_DISABLE,
> +	INTEL_HISTOGRAM_PROP_ENABLE,
> +};
> +
>  struct intel_fb_view {
>  	/*
>  	 * The remap information used in the remapped and rotated views to
> @@ -1431,6 +1437,13 @@ struct intel_crtc_state {
>=20
>  	/* LOBF flag */
>  	bool has_lobf;
> +
> +	/* HISTOGRAM data */
> +	int histogram_en;
> +	struct drm_property_blob *global_iet;
> +	struct drm_property_blob *histogram;
> +	bool global_iet_changed;
> +	bool histogram_en_changed;
>  };
>=20
>  enum intel_pipe_crc_source {
> @@ -1539,6 +1552,10 @@ struct intel_crtc {
>=20
>  	/* histogram data */
>  	struct intel_histogram *histogram;
> +	/* HISTOGRAM properties */
> +	struct drm_property *histogram_en_property;
> +	struct drm_property *global_iet_property;
> +	struct drm_property *histogram_property;
>=20
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> b/drivers/gpu/drm/i915/display/intel_histogram.c
> index 8fa3bc74e52b..740019fdf0df 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -183,6 +183,7 @@ static void intel_histogram_disable(struct intel_crtc
> *intel_crtc)
>=20
>  	cancel_delayed_work(&histogram->handle_histogram_int_work);
>  	histogram->enable =3D false;
> +	intel_crtc->config->histogram_en =3D false;
>  }
>=20
>  int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable)
> --
> 2.25.1

