Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 410EC935065
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 18:05:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B87A10E9FE;
	Thu, 18 Jul 2024 16:05:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jy77CUtd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81A0F10E9FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 16:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721318709; x=1752854709;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VQdUJyESc4YsIkbS3TbSwC7EBqxYpJ+At+rQYi6waCk=;
 b=jy77CUtdMN20rlha5l7pmJNFsmAO6Itg8yZSGplSIHPkcj4StDSXFZdW
 vEAw4LK6PTrIpXztg0h4ONgmWopNOeYJMItub+eOKSFbdbNBOPUXWqTjz
 sShm/Ihlm+0qXYFXRxjzbnji+l0uc3UmGbV5kZWWSarFP3dMOA0TKbgTZ
 1Ptmu28F9pPnMMab583HRw9dUvYjpYrMwJEwVVPzfvSXHhEhuY0iKtAuz
 J61oKzm/ZjuQ2EW3fgE1158YfYYd5/caJl2T6j+zb8UCVFAAt7WNpCpLE
 6h5LV04/lHEaIEfnPv7k/qYjQTmTYk11o0h2xFaaN0pbGHhrDR7CG70AR w==;
X-CSE-ConnectionGUID: JuVcW2QyRRaOgaDQHrZqig==
X-CSE-MsgGUID: 3PPp0R08RdqJQmmVJq696Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11137"; a="30052915"
X-IronPort-AV: E=Sophos;i="6.09,218,1716274800"; d="scan'208";a="30052915"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 09:04:38 -0700
X-CSE-ConnectionGUID: nXUapq/cQzSiUlXQrTQrMg==
X-CSE-MsgGUID: 3WQGGVPxRoOA5MTDuHpCHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,218,1716274800"; d="scan'208";a="55668686"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jul 2024 09:04:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 18 Jul 2024 09:04:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 18 Jul 2024 09:04:37 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 18 Jul 2024 09:04:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tRQXxiuwxmJsP/HY+FosSaA1xntiJF63cNaBWS4yl0h7g+yyW0NtEo3t/P/2FUGuIphTix4q7wytId6Zgo/5BPLpKixisEx9zUsbYvxQBUJnUSiLOOiVqj4kCojpn7T08JPB9pSYn4V+nC/R7gsCUpmr2FMWsf4T//rYHAHNxH+7RUIFWz/djbzgthUjHaiud3ZAmBNcOUm1xfzAOiM+mtjOiOlfQ7fZ7rAD+aLHnd07NLtkAn4G6VKKqyKB1CKEgmOpKsXcQn1d1fadgNn+7E4ZOu4e1FQDzR+JeEY5TN3wR1XbWy0RiRNKNScrrmE5ayiUD4xPbTHjaWCwzyTZiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X5BrvHKgX/3QEs8X/lP10nQNMRVABSCLDaS1k9W0m7Q=;
 b=B/dxzqh55Hzc8z8UKRzHgQURHZHgAn+ARlVR9MuaOKvv694EZNPTjEzRaiIQr+2kvZeYnMIgb9rbWhXwWWiB51RER3CAQTUXlqozdoBPAhj+bPZ8FXcTu/JLraGmIExhDvpkwwGLSCiAMAf9o2He5lwiy6ki+7tGVa7LFrHl3TWoMfjH16E4IZNhJWEOuP82X2/mQjIecjOdGt3/WjmR0X2tb4/vOX1j5HeussqCNnXe9N7dm9LNNzGCHHnng0ZDdvWl1zdsf6h3gyCBsS3sd8A4kPq6mHgkT+13n+uHTVPl/K032bNbE5sq9XeQ/sZJ91nuxhlaXn2vS1asjca30g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MW4PR11MB8289.namprd11.prod.outlook.com (2603:10b6:303:1e8::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Thu, 18 Jul
 2024 16:04:34 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.7762.024; Thu, 18 Jul 2024
 16:04:34 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "B, Jeevan"
 <jeevan.b@intel.com>, "Naladala, Ramanaidu" <ramanaidu.naladala@intel.com>
Subject: RE: [PATCH] drm/i915/dpkgc: Add VRR condition for DPKGC Enablement
Thread-Topic: [PATCH] drm/i915/dpkgc: Add VRR condition for DPKGC Enablement
Thread-Index: AQHa004EfXjJYRAuS0Wtniqy6ItNHbH8re0Q
Date: Thu, 18 Jul 2024 16:04:34 +0000
Message-ID: <IA1PR11MB634802B01D2FDF366062BEC4B2AC2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20240711044905.3306882-1-suraj.kandpal@intel.com>
In-Reply-To: <20240711044905.3306882-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MW4PR11MB8289:EE_
x-ms-office365-filtering-correlation-id: 6789d28f-ddf5-4cd0-438d-08dca74350e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Vw2XILljZwV7kj0q45rjMsBI74xaWE5Dx+50nIj7z+d+iOr/fGtOLVAuOldu?=
 =?us-ascii?Q?Z2irR3l4t/gHjreVyVi1czQ4zXO1xtOGTU5nLGQ3qFMDm9uH8pHOoKIJgVD1?=
 =?us-ascii?Q?+0zhbet3Lvi39JqmZqnOV5244R2eq0r2JnXA2MBoK/0eZtOyn1uWcVpxuh8S?=
 =?us-ascii?Q?Mpxk37FixrondY71kR5pP1i9/hQ+v0n4WrKa3lUOCKKzESc6nVnog1/ok6cT?=
 =?us-ascii?Q?fQcT8q3Avf+W+/JS6DtkYWzacuA9FpUWJUqPP/otvZqfg4Z/J/sAVr6nCTWG?=
 =?us-ascii?Q?qT/fZlsdUzNQhEa3iT96K/qNgH3mCGTlYpVeld2vmdi1SuBehv2xiiZdByDU?=
 =?us-ascii?Q?Y/oJmQrVw62Z8XJcwO1fg3HkOne1Bhw+IQqf3J8joCwf1ik9LvtU3EL6HCOk?=
 =?us-ascii?Q?1iFM/HdEAkQzxss/Twgw/T0lIprgSGsDFT8gQOyljV6nuUsITybcVDd03TuC?=
 =?us-ascii?Q?F2BXgYdGZqEnEmQlxmrbQcjZNw/LQQyKGBdHy432kRwzbmT5ghBLhdF3X351?=
 =?us-ascii?Q?I4ZrwE5zFkyqUhF01jL9Xt4aCz3QDXU+hkauVFnIbg+Ir1KjTAlsqTOL6g9O?=
 =?us-ascii?Q?cu0hIuvW6yTn1BN6yUsFWd0x5jwzuVTa8nz+X5BebOpBZR3I73WWby1gaLY5?=
 =?us-ascii?Q?BTjYJqlVU4E0GJPBhoZw42WshjrOWtmr/xxi+z5XcngKDhyrO0NORTQQ2fze?=
 =?us-ascii?Q?afWPIO8wH1eY8vG0n02HG5Bqu1/DSifXdB4+BNdZCHyH7U1Ih8aOtIMp8Cvt?=
 =?us-ascii?Q?cHKNCP4kk3uL2DDNDrLxDUidrorf8O65WFAyMfPJ57uu5rps//MIORxUMUqM?=
 =?us-ascii?Q?GkckRyEYgEJbT0wuhsfaxdMJkqupvOG7aicaVek8JHXESUtUIpH7QTba8IM4?=
 =?us-ascii?Q?reuso1QyIyqJiMtwMvUlKkBbHwsSRGTmYzEtffKiu0BChvYJDXRPeJwGG9KE?=
 =?us-ascii?Q?S7B9wh7pLVFJcdmcW3bIuo3W5aKeqM6lbmfMkAcMf5BjgGnwM314SWvABxr4?=
 =?us-ascii?Q?8ypAMm+54A2UVeHJUTbO3e1vsub3LJ87YfGZz9nLGF1w9OMW4DcZqalFZtyD?=
 =?us-ascii?Q?XwQXCuv/SKAHuHlHWg61SY2yIVDg3QMsbzD/RiSdLHrDrx93KkCOrAJAw3Cf?=
 =?us-ascii?Q?MtrqDNEYduRZLBmOGI6kKF+bkc+1nfvvLiTNGDWYIU0PrGCGzz7Jm3K3y7j4?=
 =?us-ascii?Q?J9+tsB+CzsBVPaSOj2KW47Re5jsN2hDabyQ4Vb0dWXWb9icrq05YG/CuNysf?=
 =?us-ascii?Q?KCigidYIGQULcX0Rn5xR0wrGQArqm3jv7hBTkw7iIMuHhyliZnFdm138T9NH?=
 =?us-ascii?Q?3QiQpaXCPdXwu3a2ECDKdqgczyxAFVEVQrjL5RPY+A6zMlATwoMbtCkze/Ve?=
 =?us-ascii?Q?3Nbxkg0io2+yVjYuPc53IYYoGzoLWwB2E7MDvGM6acZC9C5k4A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?A2P+aNPbUs7zTzMc/QvTCc8D48EHzcOEKUcYNMQZYKEY8oRinAgTjGhCiZri?=
 =?us-ascii?Q?O1SpSsj4G9WZhDoTZGlmLQlsNFfuLp7UXlnBgm8zil72ogaIgP/W7cu1fAiH?=
 =?us-ascii?Q?CvMFCUTHPx7UwPRLtzrEweU+sW6tDEW3dw+FYGg7DmZDBFFs5nLSDP/oxekD?=
 =?us-ascii?Q?VS4lL/jgptc74wdt7AkUqOMWdjWT78qDF45P7YfvY2hURFGPU0Go1XeeTV+b?=
 =?us-ascii?Q?uXEKXzfko+Thrzy578+rYp3XdGWSidTnl4q6KCWpQ8lp/5CPEbm0DPvdWQkJ?=
 =?us-ascii?Q?GCsPsvhbPBhhvZqeNR/XtK175WTeBFyLT37CKtRkOwDrwT9QrV0/eXAiqyY0?=
 =?us-ascii?Q?ZZouvuNPqvIbNMiBMLwAHMyKkUZ4s6QoLgr850ne90M9Jcvq5xdfpSdxFJk7?=
 =?us-ascii?Q?PgFt96f6T71AHeIuUoBgdAuJP41YH/Skbk09IveUShnFAsa7nBHqW4lFLt4B?=
 =?us-ascii?Q?mJvdWwrxD/ekpdfLWcBIbdRv0czPluc4lUfAko7BvfIPNrH5Ix7oLOz0akZf?=
 =?us-ascii?Q?cDQQabM9cWX2nV2KFhK1C2b/QryMuMcWTiIGGlGthqNrCdui9+3YV3rHS8/W?=
 =?us-ascii?Q?H01jzTnmj+90BIX2pp2dg+UVMxZaOIN4j1ijBOPzqEW/qnmDpjPIsQO/3TN8?=
 =?us-ascii?Q?tEZFVO5EnoZaniwE+z3H4Ho8Q/lM1jygR+fEAt52VZsyOgL3WvZTp9cdNL/a?=
 =?us-ascii?Q?Ycolcox+CZXG5qiGq1wnagDmfAaRm23ubncBPlGO9enc6fcZbMmRoittQMGR?=
 =?us-ascii?Q?+ClenCLPmWuW2WT8H48vwgXenJRrHdbuW9kNMnOeJz4PadkJviKp/TswM7SQ?=
 =?us-ascii?Q?c0R6lmXGTPRHZ/RAIqINVpFM04CUczYNu8cVeHn8Jgwd/CYvKrYTkTLp+QgS?=
 =?us-ascii?Q?se7FeMou8G9YNBeOGv2OsTCr4PIXbJKFju8c42B7v0ggcu19qRV/bkAb/ZUZ?=
 =?us-ascii?Q?9PgDMLOp6EA7NzHx2gRcS+DqBZuRMscjGdY2Z3QLnPActX/+w3TPwR1iZv7t?=
 =?us-ascii?Q?MdqFqWWy1H9cJtnRyOF1i373QLhAuwTJUxkMoKKB1/YEn37dzRPWS2kqcr+j?=
 =?us-ascii?Q?s3uVnbP1W4tbtLsyEsOwDfLEfnHPcmEEYViOj8IcjQgAvpi5l3ZQnpXx1rfN?=
 =?us-ascii?Q?RzUmZ44LvdSnkq86WnN103rJ5Yb7fq9XOPbmJDduRyp3AEa1IigJ4UNV81Zk?=
 =?us-ascii?Q?fI6++UDZOrjJBH6dkbwFwJFenFjITYxVKKwObbj13YoGN2hPsQcyth+uvjgr?=
 =?us-ascii?Q?+TkDTbIP+XWzUh3D37FhCkUcceaXmrWQKs7wnyTnKlUF7npRRS1P9v3Fmf+7?=
 =?us-ascii?Q?A1IOfORNcgQY+06LV3nRVqCOsl8CFWx/FZNTBfCPwMZi4ZUiLpp5ew8hQaco?=
 =?us-ascii?Q?lGp48cyhvUyAH2g6dPmNLuxoMQ4tLR5llhUkRq9oRoqayrObXeH7djCid/KT?=
 =?us-ascii?Q?K/Ii9uQ/dCRhOIwGwQ3roG6uL9rhF/du9CpHPSuoXUKo40Zft9ggVNWmI+gP?=
 =?us-ascii?Q?4ciuCRiShhDB91sYbzltVbYXhPGFVIQN0Wk6i7Z5Z1lHpgmBQ9UqwS8GzzN6?=
 =?us-ascii?Q?hL2WAzqsVQvuSrMdbgN7CZkCE+2bH12GBVxo39o1N1wcna3RGJ4WaMPG4FMy?=
 =?us-ascii?Q?eKTS4F6tZvNRWvjxHX7IElA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6789d28f-ddf5-4cd0-438d-08dca74350e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2024 16:04:34.1157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GzwocCORP2n928X3m1hel3/pqIFQkE6jAR+s+V8tHhGTcqKA7wSqkrHlmbKLTn6GWuykvMQovSMLnhUUzScPwMlE+gqcNICGbHNS53YigQTFDbJXm0MQTSvgQAOjfeEK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8289
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, July 11, 2024 10:19 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; B, Jeevan
> <jeevan.b@intel.com>; Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>; Naladala, Ramanaidu
> <ramanaidu.naladala@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/dpkgc: Add VRR condition for DPKGC Enablement
>=20
> DPKGC can now be enabled with VRR enabled if Vmin =3D Vmax =3D Flipline i=
s met.
>=20
> Bspec: 68986
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 24 +++++++++++---------
>  1 file changed, 13 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index a2726364b34d..045c7cac166b 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2830,17 +2830,17 @@ static int skl_wm_add_affected_planes(struct
> intel_atomic_state *state,  }
>=20
>  /*
> - * If Fixed Refresh Rate:
> + * If Fixed Refresh Rate or For VRR case Vmin =3D Vmax =3D Flipline:
>   * Program DEEP PKG_C_LATENCY Pkg C with highest valid latency from
>   * watermark level1 and up and above. If watermark level 1 is
>   * invalid program it with all 1's.
>   * Program PKG_C_LATENCY Added Wake Time =3D DSB execution time
> - * If Variable Refresh Rate:
> + * If Variable Refresh Rate where Vmin !=3D Vmax !=3D Flipline:
>   * Program DEEP PKG_C_LATENCY Pkg C with all 1's.
>   * Program PKG_C_LATENCY Added Wake Time =3D 0
>   */
>  static void
> -skl_program_dpkgc_latency(struct drm_i915_private *i915, bool vrr_enable=
d)
> +skl_program_dpkgc_latency(struct drm_i915_private *i915, bool
> +enable_dpkgc)
>  {
>  	u32 max_latency =3D 0;
>  	u32 clear =3D 0, val =3D 0;
> @@ -2849,15 +2849,15 @@ skl_program_dpkgc_latency(struct
> drm_i915_private *i915, bool vrr_enabled)
>  	if (DISPLAY_VER(i915) < 20)
>  		return;
>=20
> -	if (vrr_enabled) {
> -		max_latency =3D LNL_PKG_C_LATENCY_MASK;
> -		added_wake_time =3D 0;
> -	} else {
> +	if (enable_dpkgc) {
>  		max_latency =3D skl_watermark_max_latency(i915, 1);
>  		if (max_latency =3D=3D 0)
>  			max_latency =3D LNL_PKG_C_LATENCY_MASK;
>  		added_wake_time =3D DSB_EXE_TIME +
>  			i915->display.sagv.block_time_us;
> +	} else {
> +		max_latency =3D LNL_PKG_C_LATENCY_MASK;
> +		added_wake_time =3D 0;
>  	}
>=20
>  	clear |=3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK; @@ -2873,7 +2873,7 @@
> skl_compute_wm(struct intel_atomic_state *state)
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state __maybe_unused *new_crtc_state;
>  	int ret, i;
> -	bool vrr_enabled =3D false;
> +	bool enable_dpkgc =3D false;
>=20
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>  		ret =3D skl_build_pipe_wm(state, crtc); @@ -2899,11 +2899,13
> @@ skl_compute_wm(struct intel_atomic_state *state)
>  		if (ret)
>  			return ret;
>=20
> -		if (new_crtc_state->vrr.enable)
> -			vrr_enabled =3D true;
> +		if ((new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.vmax &&
> +		     new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.flipline) ||

	In current implementation this target to CMRR it seems.

> +		    !new_crtc_state->vrr.enable)
	But in CMRR as well, vrr.enable is set along with vrr.enable. Any specific=
 case you are targeting to ?

> +			enable_dpkgc =3D true;
>  	}
>=20
> -	skl_program_dpkgc_latency(to_i915(state->base.dev), vrr_enabled);
> +	skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc);

>=20
>  	skl_print_wm_changes(state);
>=20
> --
> 2.43.2

