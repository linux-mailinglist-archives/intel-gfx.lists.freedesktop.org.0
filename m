Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6652F9749D4
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 07:30:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EB8A10E8ED;
	Wed, 11 Sep 2024 05:30:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hoEPl2yY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3A9F10E8ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 05:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726032602; x=1757568602;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VXcVs8a02f8Y+6+ACeifdHL18TSGP7zBWOpnQrAhZFE=;
 b=hoEPl2yYCwTccVX7ur2FJmx5bj1Su/yFU6hsxwmJBzzSVGBTjiGMh9iC
 HrC3E+eU59X1IJLFBp8Q4gjL2gBu8J9JPpXS+bxMfib3/BOn6T10pKpD8
 Db3v+G8efpOY+AVmEZMyBXvPk2ZePY31Q7E6GUBhdWnnIRn6TbkGLHVsZ
 qgynePmfICBi02B+UxihC6dYNz98n+xa+EZgWNmoL4ko66Y0breEP0f+e
 G14PECpJLqpPvCSugh2IQxSiKK6m9w+XQabAtcBlCOFNsWDEPBWriPl4I
 llLdW2D/+svS+OKdkG+pU3NEO+i6lVPn1GLUUGgN3v6BqsqPHc2luNMoR A==;
X-CSE-ConnectionGUID: hhE51f5iRWSe9HwA+GvVKA==
X-CSE-MsgGUID: RyTW7+pkTqKfIQbll7vREA==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36191371"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="36191371"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 22:30:02 -0700
X-CSE-ConnectionGUID: OK5kX94ASY6/+W+7Ss004Q==
X-CSE-MsgGUID: 1lxeW5XwRIq36OoGiZLmww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="71391505"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 22:30:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 22:30:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 22:30:01 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 22:30:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RQZ/mXSOHV9XGM3hv+r9cIjGr8q0f5zVPviUuRW5431EKc/xbRfnhqVyZYD8Kjv7A9NKm/miki0b55Q+M+/utZyLHiLCFxG38ZUhUslHTUq944iugvVWNh2u9Ut1cgrAflOLx1z6UBoukS2AoXjzyjImDI/Arws3dr+rHXLXbd33YtbXOGAisWZGRQGDJ5ohGADUEsbdKM6NvSsQ061onWMa5RZHP2xgeuFssbG2c0o1kfn8Bm3D7OnkLB0oahHyWR/JqRCK+UH+9HjofySY1EK7lbH9xgIbOhK6ePWE1Tv8qp8tc1mDPCwS+/quEH1oGAVFi3npxX5od/m/SBNaRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gWHN8Fu3diIBV/1w0L7ve66UVq72U1Sox+JFPMCRJLM=;
 b=SAKV+JB4a9zUTugEn1pIyBTT5+u3H9nIOVgUl65L2Dxljduujpjg/RCpzapeSlet35CtNX1vV2D3J1DG00d/c4UZfi7kizsCb39bVRO/IJeCDbmxLbOtBBfIQUteY+ar4GZJIJ9T3e5faLxZHGODLaZ7SxSOIifvKt5axfRBrhqHv86UgRVfZJCkZbEVmxgyK7NGUknHLMI8NdXTnFUNm+ueXraxr2FICtwPiTda0WPfcROqj10vH8S+ps2nZdOLwz/bEGDr4hfrEWrNDu2UkIOk+rsGHhR0nYCKtvZR6Lr2C2x90/ks/FnVmSuoNLo8CutR6k3KVtN01oBUFhgzcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by CH0PR11MB8141.namprd11.prod.outlook.com (2603:10b6:610:18a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Wed, 11 Sep
 2024 05:29:53 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7%5]) with mapi id 15.20.7918.024; Wed, 11 Sep 2024
 05:29:53 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
Thread-Topic: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
Thread-Index: AQHa87WhLLMpY/JzvUGImuqjbNzwfbJSLvSw
Date: Wed, 11 Sep 2024 05:29:53 +0000
Message-ID: <SJ0PR11MB67897B7473D541F9D73965DD8D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-3-arun.r.murthy@intel.com>
In-Reply-To: <20240821102349.3961986-3-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|CH0PR11MB8141:EE_
x-ms-office365-filtering-correlation-id: f38d9abf-8202-47b5-dd76-08dcd222c389
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?FOtX8h6iOAZpgN5/O2yloDCF3wO9iK8AEfBUMcchcW8sjLSDBLciW4DxbYUz?=
 =?us-ascii?Q?At8Q6D6p9rUo+CRSLjobpm40MLMwufCf9dn9u3Ml2xRqBdiUQcSZc/QnJ2i3?=
 =?us-ascii?Q?89jyng6/v+nOLVWi+hVZncltO49PEfr+sV5de6YOeyJ5Rs1Fj9433UF4JYMR?=
 =?us-ascii?Q?Q4fojk9tRrpJFwZcRPuE60UGGlhrO84opcnWurc+oBO1nIUbh+3gJldjsLIJ?=
 =?us-ascii?Q?33qVpGNS0mAGw52b0x+E6k7q0g9Npo77SkeaREEe6bSCzSCd98SWL13eQWx+?=
 =?us-ascii?Q?ihaUZ9CbPiZ7a5h3yGTSbms/T/+6ugoaN1AQjqTov/xEHUo54PNL+MTta98w?=
 =?us-ascii?Q?4zqNy1C/qkmgjxI+tFMRqxKQB2xBxMGSHJPbtu/nAqGKbxRvra7MjQqrXWYP?=
 =?us-ascii?Q?sC/kqgj34yKp8g5RgbOVT7ndxbuDVOsyt3hwaQJxywC0hzFOediC60Xglc0n?=
 =?us-ascii?Q?BcXcmAGpeQBmktluQ1QMSfTVLQNQkrKqDbbDzQXkPaePTcmqeWnxz0OH2er5?=
 =?us-ascii?Q?BjyuZZcg1dooegT5EW/zBbIrSdQSdIdou07948hdOcjqfXonRU7cgCTRdjCG?=
 =?us-ascii?Q?1qYx/l2B9OBgldObxv6tZKF5JOuBIwhRIAdJY06YNEvh4apivEjJDYLSjFkO?=
 =?us-ascii?Q?eN9F8GY8YSd9QG5pmwXfdMlr36TuF80lACK2Tbfslu5sh5kUawhGqMFnT4Qx?=
 =?us-ascii?Q?DkwaHCGW/05UnNZR9kXqnwSjJcWq8N73kbMVbwlKiclA1YeSQzpucugEqk8m?=
 =?us-ascii?Q?J1uGPzDihNuTtDypyvRy0gB4wkDgp2XY32cJ01mV9rvVqcTmeaXt+Npi0gDg?=
 =?us-ascii?Q?VocJF5iaYi8egeFtaDuV0uZZCTir/exFKBOy6jzAKL7x9VMxroitljR7JrRD?=
 =?us-ascii?Q?psvX3F75NtDaQPwOquc9SG37/6tiMEZfc5DgrL/gu8Rm/avj++EM0qV9OUfJ?=
 =?us-ascii?Q?Yw1y5G/pZtR0eq7YmXJ4ZxbpVwuqXsoOgGxqDKnqHSRZ6dWhId+fYu69h2kt?=
 =?us-ascii?Q?tAILpBJf2hUbMOoKXzrhjwUafWVAhMwhR6K+a+4fESsB7DoMKCfFhESYRObA?=
 =?us-ascii?Q?t+UunZAHNRHcLeI3zHvXuaQgpyi8dUJsbSqhg7piEkB/OwtzTFzyqluXAv5N?=
 =?us-ascii?Q?IQ6N16+V//MMm7AeDo1ePfraa6ZLSfqoFOV/oyZpTOzlkMa5AZZBqimc9zYJ?=
 =?us-ascii?Q?VPEJGyKY6dYg3LxgTabzEdIwot2xJ4tEECLel9hzHQyAKJ36ltwxYEj0Pl82?=
 =?us-ascii?Q?3Xm4A41/Lo/PyyYFyCnzETa+KhscvqOgqZPJWCqyLCT2qbw8O5Xrxgut/ddX?=
 =?us-ascii?Q?5Bh0luVVEn5pXXl9xom45Nkx+e3oynQWc4hOWvsG5uzwYd+qwpS9RMAh5pfG?=
 =?us-ascii?Q?LArpkwd3KuPy702cVlBS1OvbVE234x2e9NmKTWFyYu6KYWfQug=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3g7SjnUzzUlb3ii4pNupzC2y+gxxaGM+ycdkPeubrCfioQEKgJSYAB2kD0IJ?=
 =?us-ascii?Q?KYFTryueewmG/wI3XqAQLU8tazv1wNBPvY7uebU9+IMX8JcmjSG3gwWCl0+U?=
 =?us-ascii?Q?qAFVBO1+X+n52AdNohLyeZxYg4jbIeZ1MohYbR3r/EvePzu8j/u0HUsZw+82?=
 =?us-ascii?Q?Lt3/BQZpmqyogYo3KThAjdDM3zur9RhKfBTpeX/+mhiUSlYQUgWXStU2/Jt6?=
 =?us-ascii?Q?RX7N41lkWnIuWB2t3cIseKz5dlT/gfPSKZ7vie3QSF04Ip97lU2VYU60Bd3v?=
 =?us-ascii?Q?OFv5RVFSWBO0JR08SyoTpieYSZyCkQITUTcQYQTyAgqgz4afLwISD++wnSuw?=
 =?us-ascii?Q?NAbVE2UFzprmRB4KhWKAhKq4p4On3055VvSm843s+aQgbRxZ5h9RRuxJGR+3?=
 =?us-ascii?Q?Wo6gdypratfbebD9pasC5yMa/IgzavKbLQw7kxBh1XM8CwFn4+PAb2Akv0EJ?=
 =?us-ascii?Q?6ifNhcHEtCbhNUJAVNmyd3/Ao8B1/geMaKTFqzI/VYWrEbCAhI42MKKLS/dE?=
 =?us-ascii?Q?SqhmMRW+MguubsUasz3DtvzJ7bNOMy2ly22LBGJbe1isrTC4J6G3K1eJAa+x?=
 =?us-ascii?Q?L136uQ9w2dhsQH0/9l663p0lLm+cq2Ukz+1f3FMcl9NWR8YYEwttUsM5+eeV?=
 =?us-ascii?Q?z2sS56O+brgA/SuF6GjUkRuFAZ8fyCwvYl/RObeCgiL8cIJuoKn9qVPb9WWO?=
 =?us-ascii?Q?snaEtlu0ibt+TcBY49AEoJj6tMCjx4x/pm/gZaeltECC3HQ1O8bU5UNz+XL4?=
 =?us-ascii?Q?doCENNpJHzsxSReYeHEmckGVEQbyehuIEREa9mfEdj0ZTxHexnhNWRjmm2Xo?=
 =?us-ascii?Q?mNCt8oeSXo5RLbhCZWCcYUe2o/8hZtGZvcHQATbfLWjTm4ETuzk1B8u3LHA6?=
 =?us-ascii?Q?8U2cYpXerK2UcSQXj2KhTgNMfahFSSLVSPZNvdxHKN1IxQ2FDYjPiQmNvsXT?=
 =?us-ascii?Q?YnrOrWDNSeN4Yd9ZJQ9qM//0nVUn99nihrhBQY6ajohnfPCQdqYrzOFhPJwe?=
 =?us-ascii?Q?Y4iIgVeVyuY/ZKuPYNivMhqRJTW64s6gArbYyX4OSl5fC6PyNmz9tNTM14x8?=
 =?us-ascii?Q?+Dpk8M9WH+8c51ztRZdFxqLHbPWfYfU4kVsRTu8VnUyUV6I1lwSb1QilGmE5?=
 =?us-ascii?Q?pCPn9XTwnT4dZWYyGl1FTbMgNk0n9KcE5JjnEd2Iyqd1HiKyXTx6j93G1pH7?=
 =?us-ascii?Q?641Wheh0sfk7wG66laEYBN6xug36BVt+bvOR6ghbw+p5XHeJO+Q8JWCSllFy?=
 =?us-ascii?Q?HuhU34mHnqJCcZ/fqscEsHfknT6EHAIcS7nzam54C9obI6R7ONIH3vcp2zaS?=
 =?us-ascii?Q?OJVg19uX0hDoJT+pPdV8AjzGQyA70yAOwUt7wWBcfFy9Q4nNdwT9UCfUrKmg?=
 =?us-ascii?Q?MFTamko/OGrKabvYuMXV/8Cy4elaJjrq+unWakLsJ0Gjoi5p+gpGC6T2vuLT?=
 =?us-ascii?Q?Qf9VkilU1y9HGJok1hS49UUhGK81jioFam1FQyKZHVMHxU1WToYWaqWPOvrp?=
 =?us-ascii?Q?Ucwxo5ckfCE8e/KHtjEQz3jDsub5RpLDLOIYRXya0aBAv8Dz6RRgTk+OnyOa?=
 =?us-ascii?Q?vJyT/0UJ9o2rOl1MA9X3LeUO2NJdL80+TcoZ77HS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f38d9abf-8202-47b5-dd76-08dcd222c389
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2024 05:29:53.0982 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a8+LEUjQ1q+4cBuSdm3023FHppFcooGZzwmR+vXcOiZw89V2Tzv6kowaeb+Mh4gses1CZDq5OFi5RHpmbww7fS2uBnHs6N/WAIyMCbTrCkw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8141
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
> Sent: Wednesday, August 21, 2024 3:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
>=20
> Upon enabling histogram an interrupt is trigerred after the generation of=
 the
> statistics. This patch registers the histogram interrupt and handles the
> interrupt.
>=20
> v2: Added intel_crtc backpointer to intel_histogram struct (Jani)
>     Removed histogram_wq and instead use dev_priv->unodered_eq (Jani)
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  |  6 +-
>  .../gpu/drm/i915/display/intel_histogram.c    | 80 ++++++++++++++++++-
>  .../gpu/drm/i915/display/intel_histogram.h    |  3 +
>  drivers/gpu/drm/i915/i915_reg.h               |  5 +-
>  4 files changed, 89 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index afcd2af82942..0178595102bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -17,6 +17,7 @@
>  #include "intel_fdi_regs.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_gmbus.h"
> +#include "intel_histogram.h"
>  #include "intel_hotplug_irq.h"
>  #include "intel_pipe_crc_regs.h"
>  #include "intel_pmdemand.h"
> @@ -1170,6 +1171,9 @@ void gen8_de_irq_handler(struct
> drm_i915_private *dev_priv, u32 master_ctl)
>  		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
>  			intel_cpu_fifo_underrun_irq_handler(dev_priv,
> pipe);
>=20
> +		if (iir & GEN9_PIPE_HISTOGRAM_EVENT)
> +			intel_histogram_irq_handler(dev_priv, pipe);
> +
>  		fault_errors =3D iir & gen8_de_pipe_fault_mask(dev_priv);
>  		if (fault_errors)
>  			drm_err_ratelimited(&dev_priv->drm,
> @@ -1701,7 +1705,7 @@ void gen8_de_irq_postinstall(struct
> drm_i915_private *dev_priv)
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>=20
>  	u32 de_pipe_masked =3D gen8_de_pipe_fault_mask(dev_priv) |
> -		GEN8_PIPE_CDCLK_CRC_DONE;
> +		GEN8_PIPE_CDCLK_CRC_DONE |
> GEN9_PIPE_HISTOGRAM_EVENT;
>  	u32 de_pipe_enables;
>  	u32 de_port_masked =3D gen8_de_port_aux_mask(dev_priv);
>  	u32 de_port_enables;
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> b/drivers/gpu/drm/i915/display/intel_histogram.c
> index 45e968e00af6..83ba826a7a89 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -19,12 +19,83 @@
>=20
>  struct intel_histogram {
>  	struct drm_i915_private *i915;
> +	struct intel_crtc *crtc;
> +	struct delayed_work handle_histogram_int_work;
>  	bool enable;
>  	bool can_enable;
> -	enum pipe pipe;
>  	u32 bindata[HISTOGRAM_BIN_COUNT];
>  };
>=20
> +static void intel_histogram_handle_int_work(struct work_struct *work) {
> +	struct intel_histogram *histogram =3D container_of(work,
> +		struct intel_histogram, handle_histogram_int_work.work);
> +	struct drm_i915_private *i915 =3D histogram->i915;
> +	struct intel_crtc *intel_crtc =3D histogram->crtc;
> +	char *histogram_event[] =3D {"HISTOGRAM=3D1", NULL};
> +	u32 dpstbin;
> +	int i, try =3D 0;
> +
If we have PSR enabled looks like this code might straight away break, and =
PSR being enabled is a common scenario
Can we have some checks on enabling this feature if no PSR until we handle =
this scenario?
> +	/*
> +	 * TODO: PSR to be exited while reading the Histogram data
> +	 * Set DPST_CTL Bin Reg function select to TC
> +	 * Set DPST_CTL Bin Register Index to 0
> +	 */
> +retry:
> +	intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> +		     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_BIN_REG_MASK, 0);
> +	for (i =3D 0; i < HISTOGRAM_BIN_COUNT; i++) {
> +		dpstbin =3D intel_de_read(i915, DPST_BIN(intel_crtc->pipe));
> +		if (dpstbin & DPST_BIN_BUSY) {
> +			/*
> +			 * If DPST_BIN busy bit is set, then set the
> +			 * DPST_CTL bin reg index to 0 and proceed
> +			 * from beginning.
> +			 */
> +			if (try++ >=3D 5) {
> +				drm_err(&i915->drm,
> +					"Histogram block is busy, failed to
> read\n");
> +				intel_de_rmw(i915, DPST_GUARD(intel_crtc-
> >pipe),
> +
> DPST_GUARD_HIST_EVENT_STATUS, 1);
> +				return;
> +			}
> +			goto retry;
> +		}
> +		histogram->bindata[i] =3D dpstbin & DPST_BIN_DATA_MASK;
> +		drm_dbg_atomic(&i915->drm, "Histogram[%d]=3D%x\n",
> +			       i, histogram->bindata[i]);
> +	}
> +
> +	/* Notify user for Histogram rediness */
> +	if (kobject_uevent_env(&i915->drm.primary->kdev->kobj,
> KOBJ_CHANGE,
> +			       histogram_event))
> +		drm_err(&i915->drm, "sending HISTOGRAM event failed\n");
> +
> +	/* Enable histogram interrupt */
> +	intel_de_rmw(i915, DPST_GUARD(intel_crtc->pipe),
> DPST_GUARD_HIST_INT_EN,
> +		     DPST_GUARD_HIST_INT_EN);
> +
> +	/* Clear histogram interrupt by setting histogram interrupt status
> bit*/
> +	intel_de_rmw(i915, DPST_GUARD(intel_crtc->pipe),
> +		     DPST_GUARD_HIST_EVENT_STATUS, 1); }
> +
> +void intel_histogram_irq_handler(struct drm_i915_private *i915, enum
> +pipe pipe) {
> +	struct intel_crtc *intel_crtc =3D
> +		to_intel_crtc(drm_crtc_from_index(&i915->drm, pipe));
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +
> +	if (!histogram->enable) {
> +		drm_err(&i915->drm,
> +			"spurious interrupt, histogram not enabled\n");
> +		return;
> +	}
> +
> +	queue_delayed_work(i915->unordered_wq,
> +			   &histogram->handle_histogram_int_work, 0); }
> +
>  int intel_histogram_atomic_check(struct intel_crtc *intel_crtc)  {
>  	struct intel_histogram *histogram =3D intel_crtc->histogram; @@ -
> 120,6 +191,7 @@ static void intel_histogram_disable(struct intel_crtc
> *intel_crtc)
>  	intel_de_rmw(i915, DPST_CTL(pipe),
>  		     DPST_CTL_IE_HIST_EN, 0);
>=20
> +	cancel_delayed_work(&histogram->handle_histogram_int_work);
>  	histogram->enable =3D false;
>  }
>=20
> @@ -181,6 +253,7 @@ void intel_histogram_deinit(struct intel_crtc
> *intel_crtc)  {
>  	struct intel_histogram *histogram =3D intel_crtc->histogram;
>=20
> +	cancel_delayed_work_sync(&histogram-
> >handle_histogram_int_work);
>  	kfree(histogram);
>  }
>=20
> @@ -196,9 +269,12 @@ int intel_histogram_init(struct intel_crtc *intel_cr=
tc)
>  	}
>=20
>  	intel_crtc->histogram =3D histogram;
> -	histogram->pipe =3D intel_crtc->pipe;
> +	histogram->crtc =3D intel_crtc;
>  	histogram->can_enable =3D false;
>=20
> +	INIT_DEFERRABLE_WORK(&histogram->handle_histogram_int_work,
> +			     intel_histogram_handle_int_work);
> +
>  	histogram->i915 =3D i915;
>=20
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h
> b/drivers/gpu/drm/i915/display/intel_histogram.h
> index b25091732274..f35ea76719d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.h
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> @@ -9,6 +9,8 @@
>  #include <linux/types.h>
>=20
>  struct intel_crtc;
> +struct drm_i915_private;
> +enum pipe;
>=20
>  /* GLOBAL_HIST related registers */
>  #define _DPST_CTL_A					0x490C0
> @@ -70,6 +72,7 @@ enum intel_global_hist_lut {  };
>=20
>  int intel_histogram_atomic_check(struct intel_crtc *intel_crtc);
> +void intel_histogram_irq_handler(struct drm_i915_private *i915, enum
> +pipe pipe);
>  int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable); =
 int
> intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data);  i=
nt
> intel_histogram_init(struct intel_crtc *intel_crtc); diff --git
> a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 569b461022c5..f7b974691381 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1655,7 +1655,7 @@
>  #define   PIPE_HOTPLUG_INTERRUPT_ENABLE		(1UL << 26)
>  #define   PIPE_VSYNC_INTERRUPT_ENABLE		(1UL << 25)
>  #define   PIPE_DISPLAY_LINE_COMPARE_ENABLE	(1UL << 24)
> -#define   PIPE_DPST_EVENT_ENABLE		(1UL << 23)
> +#define   PIPE_HISTOGRAM_EVENT_ENABLE		(1UL << 23)
>  #define   SPRITE0_FLIP_DONE_INT_EN_VLV		(1UL << 22)
>  #define   PIPE_LEGACY_BLC_EVENT_ENABLE		(1UL << 22)
>  #define   PIPE_ODD_FIELD_INTERRUPT_ENABLE	(1UL << 21)
> @@ -1678,7 +1678,7 @@
>  #define   PIPE_HOTPLUG_INTERRUPT_STATUS		(1UL << 10)
>  #define   PIPE_VSYNC_INTERRUPT_STATUS		(1UL << 9)
>  #define   PIPE_DISPLAY_LINE_COMPARE_STATUS	(1UL << 8)
> -#define   PIPE_DPST_EVENT_STATUS		(1UL << 7)
> +#define   PIPE_HISTOGRAM_EVENT_STATUS		(1UL << 7)
>  #define   PIPE_A_PSR_STATUS_VLV			(1UL << 6)
>  #define   PIPE_LEGACY_BLC_EVENT_STATUS		(1UL << 6)
>  #define   PIPE_ODD_FIELD_INTERRUPT_STATUS	(1UL << 5)
> @@ -2516,6 +2516,7 @@
>  #define  GEN11_PIPE_PLANE7_FLIP_DONE	REG_BIT(18) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE6_FLIP_DONE	REG_BIT(17) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE5_FLIP_DONE	REG_BIT(16) /* icl+ */
> +#define  GEN9_PIPE_HISTOGRAM_EVENT	REG_BIT(12) /* skl+ */
>  #define  GEN9_PIPE_CURSOR_FAULT		REG_BIT(11) /* skl+ */
>  #define  GEN9_PIPE_PLANE4_FAULT		REG_BIT(10) /* skl+ */
>  #define  GEN8_PIPE_CURSOR_FAULT		REG_BIT(10) /* bdw */
> --
> 2.25.1

