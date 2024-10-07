Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A74EC993837
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 22:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8962910E064;
	Mon,  7 Oct 2024 20:28:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f+6h1kn8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 749FB10E064;
 Mon,  7 Oct 2024 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728332913; x=1759868913;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3+sQXwXCWaHeQ+ebXW1iRJeqWYjVwD6nj2bdj+MRQAk=;
 b=f+6h1kn8SXGoBSbHqI6rVFm5yiot/q3wIYq/U5EdW6NShMhJWkR5bQSM
 yLCD5MOMwd22Rte27imHfry631NmHdQGY42Xr1v1wS1KaX7gjNhc6YkoB
 ULw5Mr6zXULXS7nwu2KtNzC9j+RxRX7bKDccq3ZPPqXHTzreYUCkiywmU
 FRFmGat7CxT6QkI0xIR1vfJrOuXWXUtN7oiEtgUbozftQHqFp/sbuzHtL
 DnVcbxEfYIl4Pj0oWNHzR48BpyCofnsgRMdbbguUqlGURu5NMBIZc8DCD
 TfWpn6r3cEzbFa8xh6XAc0QTr4URKYIT6tiD9QU0zPnYijzJG0Ils787X g==;
X-CSE-ConnectionGUID: M+m8eYRtQkGl40E4PMDAHQ==
X-CSE-MsgGUID: Yr/hj9udS5+Z8QO35DbL+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27625051"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="27625051"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 13:28:33 -0700
X-CSE-ConnectionGUID: 6/ppoEySQsmiR7JYX3URrA==
X-CSE-MsgGUID: HXVVM5haQLKIXmbqJnppjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="80209903"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 13:28:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 13:28:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 13:28:32 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 13:28:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JOBzB1b2AgqplqUCunnpZv6KU02hKYCiLwFezf7CZAf12Y5QisWtZHkqEqwRPAVmWxYtNndlxxY2QD+TQGbnuqLwwC5e3yEYkwzNPFSNc8v6YonV1X/qJ+ZlX2C4wz8ZK15xH7NYj09QjnR5MYF3CFPDKWP0R5gye1tvN2GO76YQ4sHcODGqbkxR9ZvMIVf6BDhvq+CvRxPu816IKsD6al3ZsQtoOMccS7iUjejwjbyYp/khttvmYFo2ODo5h/3wP3VgX3pJbQ+mn1IIBbppFdQVT05Gl1BZR+yRf0mPKtC/78N5k3m5MWPBGC1v3KxlxOq8HIQqm3KsqtjF2bfLUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=umWXqQe7XzK2jvEUMFUykGTEWHT39V0sGxGu899JLaY=;
 b=miuayX+QjCwSiNBKnabUaXmaAzMqs34pmbezyW/OuOsZM1JOGbLHEnOdrWmSys2UMtgNSLuGM9VzmatiZCXaGIVrI9PXerGWeFlZIOh7k3m28dSOfIoiaZhiIxRwfnEy4SlxOp7RPeXz7xNeJGShg5WD6H9PnlyGLV92f2um/hHtCfep3m73dtclrFnxq4KowfnbJ44Ke9YbIV6/xD/DJ42kerTCJqkfBTh/taixhRdZB2rD1c0blYW7t4CTyVZ1JnGZmlCJKU5zfgs5OXgFAUgBX93QYOUcyQwl6+Ebjepg+lTEGg5UMCWymFeYCuav8daEeJaLMt3NqD/2958qqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by PH0PR11MB4983.namprd11.prod.outlook.com (2603:10b6:510:40::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Mon, 7 Oct
 2024 20:28:30 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 20:28:29 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 08/31] drm/i915/display: Move suspend sequences to
 intel_display_driver
Thread-Topic: [PATCH 08/31] drm/i915/display: Move suspend sequences to
 intel_display_driver
Thread-Index: AQHbDsJwQXgnL1AUmk6X8JQlUz186bJ7xgZw
Date: Mon, 7 Oct 2024 20:28:29 +0000
Message-ID: <BL1PR11MB544579B904C49C9C93CE7A70E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-9-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-9-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|PH0PR11MB4983:EE_
x-ms-office365-filtering-correlation-id: f36ba2d1-7182-425c-e415-08dce70e9b2e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?t1x60SEMoS5t+/opgKQYVlUvfdDwBHr8HpLY4TFIptZORJrj6qZ3OGWlogas?=
 =?us-ascii?Q?Js2ZbIK0oUukVA/20D3ERl+8st1F90Ut6j5zY73chXyOkdR+On0x1sEjkySO?=
 =?us-ascii?Q?DE7Rx2EWvveos7Llf2B+Oml1xjCiPDACCyArzAh18SWQL+4dJLQ6jfxAuM0A?=
 =?us-ascii?Q?AszNqUCOjCxxadHEiGONNBjLPKLrBK+mReRk9M+VvOkBelqrM/SeHPu0wbd0?=
 =?us-ascii?Q?e2m/YAZD1PSn2/XKmNCCfb3KZsyejqg5w6vd645OYDhIdugduyill7JTjixt?=
 =?us-ascii?Q?4y6PdYs49ij6d1/gtC4D8vOzsaQUHcCqaxqhshT5qVIz803CR7vZ38YNaSYb?=
 =?us-ascii?Q?SNPiv8y+YRNkVFf5hBosjA2CEMGaCuGAM/9TYBUrMmR2T8WhWc5z2plDacUk?=
 =?us-ascii?Q?HRvWf754lyoBl6PdCscZ6m1X99/qTnlUros4zatWM+fcoO5uoN1h1Zz/O1UC?=
 =?us-ascii?Q?meMIGL5MF8Cig0ajkoHlWYnY6IaTcCeySBIzj5nE3mVpfpaK9w4noU85A6Mq?=
 =?us-ascii?Q?1CZmt64gLrnw5DOhSKHFZpLiskQ4qeu8QsEgBPq/8NaBKCsI2FOx8gtZOW3C?=
 =?us-ascii?Q?MZSIRLApd+6FHlZXAyTXeGOZRCDiIFQ/e/lC9SSqzXvrEhFOKH8nA2X8mh48?=
 =?us-ascii?Q?/R4Uz4UL8T81BBVUG8z7ptZefuKySmED2Wult75Aphv1xPFCcoaGQwr90/fW?=
 =?us-ascii?Q?xHyFVsKRmCbvBo1DdcLwZCZL78OSZc/S4z/OauUtR7zBy8u9X0V4eyj2YhVz?=
 =?us-ascii?Q?q9+/0H4vUInmWt291M9K8GE1+bBBaEd9UHVDtgSQL7eEJ9QoWgGdE81/ReXa?=
 =?us-ascii?Q?96Y+VX5G+Sk3qRNJVZhBiAE5dHP5/caCg3LDh6oP7JfORKLEd4iqYXYVDU+8?=
 =?us-ascii?Q?qmXWCGAJ8PmjMaeo7wHSpwI6MMFMCAWtpcKE9fhVra+JeNnrrXuN/xpOYqV/?=
 =?us-ascii?Q?ooO4BQOX9gDMd+837Cdq/0Ur+9q6zALGIsoCMGMcYyg1T5wP++xluxjCWVaN?=
 =?us-ascii?Q?h8ks+afKFPC4ad7Uq0JAcUMOUGstJSQchfETSRLRj+KcAabnrv/k6kBISzZC?=
 =?us-ascii?Q?maLTXUkId2JsQC+m6nG7P4o1DaGKbuVGiagn2IYevamF2mBOeygWDpIg9lIc?=
 =?us-ascii?Q?XWMN/TPp0gJL6ZPoOQn5M4xAaKgT7+WHqKzJcRv0JWUzs9eZk7JpFX5uEZEI?=
 =?us-ascii?Q?+2gvRfbzBDKhlsgCxbZi9d0PH/0RSZgUvVmNGGTaXC3DhSinHpQ3dk1qGtST?=
 =?us-ascii?Q?OgQAIxVWwlKgk9OQVDNINSvwyMAjXAPSgEbIOi8g3mr5jdgqc2jlwDgbW30c?=
 =?us-ascii?Q?fx6u0vaZ4icxLx1m7u14xwUYO1pGvQdigdH0LY9fNkl92g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p/ZzZGZ+NsOolE882ipzxSliHcXVvuWdN91Upeahp6lnGBlPQIBuBoaZ1nD7?=
 =?us-ascii?Q?LesNAa3cnj8tfipXzlSi2WPj2a34zBs881In6UWAvJHvNE4cz3lDx+6swKDM?=
 =?us-ascii?Q?FmkdgJ4R3GUUGgS7x6faFJNWcuDAOwXfn5UQ1bxI8xFHjbRGEyEwsm2HhtR5?=
 =?us-ascii?Q?bV4zooqjigC14sMDgTyocTOassbMA3fgHTkC8gjEzkvTRSGk1SX1NfI+qYrh?=
 =?us-ascii?Q?Ao/kA/wApOd2zy6t7UUEw3MC3xM1CQZYwMIuT9mcQ2wJl2XJMa9MRcLbXhBm?=
 =?us-ascii?Q?XUwsdv8NHw3LGhigN2rDRR7Sa3C9CJ7WPWwEW5wd4WXNja13iFuEt98zfspn?=
 =?us-ascii?Q?MPR3a1z8Pl+E8lfMVKlQYHqGcIzVks3X0ST2PTTaSWUZzE+mfV/nJzzwwbil?=
 =?us-ascii?Q?CJH1THbj7yowpAHPnvX+50/CI5uorcNoRkMHt9Z17zsL+Q+A8XFZo/pgzdZ2?=
 =?us-ascii?Q?psMunWM+bGOUtzzzMZrRU2PtF/cAtX/cRcYqaMe6rvnuw4yN5ZzB/2BqGmJD?=
 =?us-ascii?Q?Wtbux4Uxtfltx26q6M78URmPo20NjNc6RzGlDwEpIVRJpqmLNqeIzuGakX8g?=
 =?us-ascii?Q?0wWtbokCUUn8Z6yG9lHfNj/eIIHvBb/J7rBxdwwqzWC4TzTjoY6KfPZ2H0s2?=
 =?us-ascii?Q?Jmr23/ArYmXAe4D6wTvCxq8wLvBfNocSZWawoPB9f3kN7Ix0utPbcbTGWJa2?=
 =?us-ascii?Q?RBcmpPBvkFKFOI49SfrXVNBsWx87Jd4xeL4BFjfEGMIETRhiCSXFp2iwSgv2?=
 =?us-ascii?Q?aSzLGDMbCbbHXoHrfOb0idaqRhxfl+64yv0vKrE5gnrT4brPvo3Pg8sjh3me?=
 =?us-ascii?Q?L/4VOoJbdxPHbHYVzT1XPtb+v7ILuFoqg3xzZG2qcMmC5eaLfvMMnvjMHH4F?=
 =?us-ascii?Q?eYlb24LTCM+1NOcD3RgWN8tp5hzxuBuS03xCOQn7MizlLYGVgcERfltRQcrm?=
 =?us-ascii?Q?pWegkra7k3xIJLS+1kCGb/r4e9Xq4jZDeCaqteyTFcy5YIYgrEAcjwiFD7Pv?=
 =?us-ascii?Q?hW7fDL6W71H9JfxosPAu3c5U/bPE/WM9Him9/yIAxidiASrxqhSfIUkHLHmv?=
 =?us-ascii?Q?DLccV80iDlAjHNPFq4QmamuCpwCWV+z8jPmcFWKAKKM8RAR3suzldGS7bm8P?=
 =?us-ascii?Q?bbgYX01jDwGl1Zp+34yBffbskn3OgmmgH6lxNJAojHqgtHpCHrDF++eqxxb+?=
 =?us-ascii?Q?QpJK2l1Y9YL/0oQ6Il8UdZwFJqWp+HXdOjStQkCReoE7bDRM8HVhhrYeLu49?=
 =?us-ascii?Q?w3oTsanwcA0bZV1RIa1pMREVO88RAnmmEjhq3FhKlCfGhDdhQ5RI5GY3eFtb?=
 =?us-ascii?Q?9zF4qww0CWcWJEtfRL3aCqKiBMOp/jMnT5zljBDlQXQDUxmGjpqNz7zBANVW?=
 =?us-ascii?Q?Gfv3ZCgzzq/mPWZFz5SqFPpMVuW3vIpiUTjdEuA/8+jkIvRQCEiehVMlBqtb?=
 =?us-ascii?Q?KIgy3J4arkbbsVRk8xHxOtN/LnzgvXWhjjQn4QVfM2jaAkT/IdkTjIjzfrx1?=
 =?us-ascii?Q?1L2S3JBmGvKQBlST6tjxooPJReFKdHaMKKjuEkr39ODhzFL+fHCwRqtmB4Og?=
 =?us-ascii?Q?gExR1wR1SYX2MSwOXFcFW07S0L9snRT6IYFIyikFCKBY/h1bg59DofizboFm?=
 =?us-ascii?Q?1w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f36ba2d1-7182-425c-e415-08dce70e9b2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 20:28:29.8367 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZigGvhldBVlkT9pMuzDlQEoerBYsdXGili++BlAvYPHVAl3xJ/qfqQcqJwGNla59I44jTjP02HC++9pxGmWb6UQ//yfLcO5sRzap1cKooLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4983
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Tuesday, September 24, 2024 1:35 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 08/31] drm/i915/display: Move suspend sequences to intel_di=
splay_driver
>=20
> The goal is to reconcile the Xe and i915 PM functions.
> Start by moving the display sequences from i915_drv towards
> intel_display_driver.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  .../drm/i915/display/intel_display_driver.c   | 20 +++++++++++++++++++
>  .../drm/i915/display/intel_display_driver.h   |  3 +++
>  drivers/gpu/drm/i915/i915_driver.c            | 14 ++-----------
>  drivers/gpu/drm/xe/display/xe_fb_pin.c        |  4 ++++
>  4 files changed, 29 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index 51fc1c148283..42624bf80f91 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -36,6 +36,7 @@
>  #include "intel_dkl_phy.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
> +#include "intel_dpt.h"
>  #include "intel_dp_tunnel.h"
>  #include "intel_dpll.h"
>  #include "intel_dpll_mgr.h"
> @@ -682,6 +683,25 @@ int intel_display_driver_suspend(struct drm_i915_pri=
vate *i915)
>  	return ret;
>  }
> =20
> +void intel_display_driver_suspend_noirq(struct drm_i915_private *i915)
> +{
> +	intel_hpd_cancel_work(i915);
> +
> +	if (HAS_DISPLAY(i915))
> +		intel_display_driver_suspend_access(i915);
> +
> +	intel_encoder_suspend_all(&i915->display);
> +
> +	/* Must be called before GGTT is suspended. */
> +	intel_dpt_suspend(i915);
> +}
> +
> +void intel_display_driver_suspend_noggtt(struct intel_display *display, =
bool s2idle)
> +{
> +	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
> +	intel_dmc_suspend(display);
> +}
> +
>  int
>  __intel_display_driver_resume(struct drm_i915_private *i915,
>  			      struct drm_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index 1ee37fb58d38..179fbb86923a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -12,6 +12,7 @@ struct drm_atomic_state;
>  struct drm_i915_private;
>  struct drm_modeset_acquire_ctx;
>  struct pci_dev;
> +struct intel_display;
> =20
>  bool intel_display_driver_probe_defer(struct pci_dev *pdev);
>  void intel_display_driver_init_hw(struct drm_i915_private *i915);
> @@ -25,6 +26,8 @@ void intel_display_driver_remove_noirq(struct drm_i915_=
private *i915);
>  void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
>  void intel_display_driver_unregister(struct drm_i915_private *i915);
>  int intel_display_driver_suspend(struct drm_i915_private *i915);
> +void intel_display_driver_suspend_noirq(struct drm_i915_private *i915);
> +void intel_display_driver_suspend_noggtt(struct intel_display *display, =
bool s2idle);
>  void intel_display_driver_resume(struct drm_i915_private *i915);
>  void intel_display_driver_shutdown(struct drm_i915_private *i915);
>  void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index d166a8164b42..ac8bf00458b5 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -996,7 +996,6 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct intel_display *display =3D &dev_priv->display;
>  	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> -	pci_power_t opregion_target_state;
> =20
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> =20
> @@ -1014,26 +1013,17 @@ static int i915_drm_suspend(struct drm_device *de=
v)
>  	intel_display_driver_suspend(dev_priv);
> =20
>  	intel_irq_suspend(dev_priv);
> -	intel_hpd_cancel_work(dev_priv);
> =20
> -	if (HAS_DISPLAY(dev_priv))
> -		intel_display_driver_suspend_access(dev_priv);
> -
> -	intel_encoder_suspend_all(&dev_priv->display);
> +	intel_display_driver_suspend_noirq(dev_priv);
> =20
> -	/* Must be called before GGTT is suspended. */
> -	intel_dpt_suspend(dev_priv);
>  	i915_ggtt_suspend(to_gt(dev_priv)->ggtt);
> =20
>  	i9xx_display_sr_save(dev_priv);
> =20
> -	opregion_target_state =3D suspend_to_idle(dev_priv) ? PCI_D1 : PCI_D3co=
ld;
> -	intel_opregion_suspend(display, opregion_target_state);
> +	intel_display_driver_suspend_noggtt(display, suspend_to_idle(dev_priv))=
;
> =20
>  	dev_priv->suspend_count++;
> =20
> -	intel_dmc_suspend(display);
> -
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> =20
>  	i915_gem_drain_freed_objects(dev_priv);
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index 79dbbbe03c7f..49dc91bdbcb0 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -408,3 +408,7 @@ u64 intel_dpt_offset(struct i915_vma *dpt_vma)
>  {
>  	return 0;
>  }
> +
> +void intel_dpt_suspend(struct xe_device *xe)
> +{
> +}

I can't really tell why this is being disabled here.  Maybe this can be bro=
ken
into a separate patch with an explanation for why this is being done?

Something similar is done in patch 14 with intel_dpt_resume, so perhaps
both changes can be collected together in the same patch?

I won't block on it, but I am curious.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> --=20
> 2.46.0
>=20
>=20
