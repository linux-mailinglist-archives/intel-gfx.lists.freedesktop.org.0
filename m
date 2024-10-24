Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71ED39ADA02
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 04:43:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 522F510E25B;
	Thu, 24 Oct 2024 02:43:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n0oQfhzn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8855710E25B;
 Thu, 24 Oct 2024 02:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729737779; x=1761273779;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+YtZ8YpK+rIvoTy4fF8FtvPPurU3USiQkhkkARBZsRc=;
 b=n0oQfhzn5sJo5MsIR5SdyQs949iWftf5+jgSOf27t4y0LHFOTDc1d6Ri
 0d+T9WY3LXmpt1GZGW/3arKUIRXv3gd78Fi6/gBx3Iwl2HXGQf9OmGLKf
 JvE3jW+6Gi/yHa5R+ZsCezDg9mu91oRoidz5TZzYURP/F7NTASM02r2YJ
 f3tGs7sdQRUBVOTS2ePvx+lN7spq8bRx83k3MHxrd5w2M1Xsm17Lw+KYN
 Rkag2sojDJrPxvFIWEgUPy3E6dh2OWhz2zMSb099ir3k0cD/ZgVHPFub+
 YVU+L2azX5WPPTfh5KFIG9fZZUpr8mDebQajvfbxV7Z18spYkLfOuh4P0 w==;
X-CSE-ConnectionGUID: G/5om/I0TQerkInLmF+4iQ==
X-CSE-MsgGUID: Fp10zgwhQLCysXUPe9E0gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="28793992"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="28793992"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 19:42:59 -0700
X-CSE-ConnectionGUID: VEjlndZbQf2rFX+JPTFkYA==
X-CSE-MsgGUID: yEllQSAgRoqSfbQKC5eCzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="80116371"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 19:42:59 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 19:42:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 19:42:58 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 19:42:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qWd2ILL1yrjDyK2jw8k0h3qpm8Aq3M7tyhFDuzb+6MiVXgApEw/SxFkxgWaAsPmwGkIZvXsL5LYc9zAhKwIOw08P0w5Q3X+08na8n+d9k8Y2hYx+td2rfJvC5kxSXrOWO0sLa1JA1ATCs69DZE73dRQaNgV4jE8MorsbXubOY1um+FAuFLB6RCdhtJ6nypYtiP994X67HVwa8J9MKFQn9UnnbvMKJtIeXjA8lX3Oww/f0wixz7Eh+iYuIYkENfrjfpzF3Fy9QCQN89LwwQ+myTE86N4Q/ELUmO1b+BVyUj7+EtuVanrzunprdyOWbF9fPenLy9D9nfyUamdq/e/LMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=il40tqW7V02dIlN9CC0lnEAfxNcb5zH9J10DPt1+ndA=;
 b=jy87Den+bJy4Vo19dwq9jK/o3gVveUuMJoOiut6LpcYL3l/z9pMCEdQ2+fr6E/Wy6MJzHg3Jh8sDSkhsZtWb84HP85lNMyr2mGkA7t6R2uehnP4mWxhR4xC6i2wNCTIG1rRURsSyK+05kTkW31N3IN6GlIWjJywNxKwGXk1dMDmiyKwNsP9AkqNxjCh2NV2QCclfVszkfRIy2vEnyQGNaC7HG0dl/J7U8i0q2qCNyAfTy1/lrOeTa3yj2h0pn4/L+TlRsKu0yzQojak8PLsBh/LzbUiqI6hTOtKnRYC3++Y+SaCfb9CbSoNn/mBBQxd9hsqzGVe4/xK/rnDXC/VhSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB7550.namprd11.prod.outlook.com (2603:10b6:510:27d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Thu, 24 Oct
 2024 02:42:56 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8069.027; Thu, 24 Oct 2024
 02:42:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Ghimiray, Himal Prasad"
 <himal.prasad.ghimiray@intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>
Subject: RE: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
Thread-Topic: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
Thread-Index: AQHbJFQvmh2mxVQK0EuLUzPaQgNlSLKUv4YAgAB0QwA=
Date: Thu, 24 Oct 2024 02:42:56 +0000
Message-ID: <SN7PR11MB67501F232E80435A140E4718E34E2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
 <20241022072920.102033-1-suraj.kandpal@intel.com>
 <20241023194520.GH5725@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241023194520.GH5725@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB7550:EE_
x-ms-office365-filtering-correlation-id: e368b0de-0882-40c1-3937-08dcf3d590cd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?bmnPyA3Pmg/KD9IVL7Dncgl7ZKZj9qbmHiXhuNWcL/ErC7eeUAthhArp1ehn?=
 =?us-ascii?Q?ygdmY4Aj4qB2AHxamIkZMVZAlO+9l9OAGMk/wEXyAodfU9DFBMVBHu2TxTLA?=
 =?us-ascii?Q?d1uTEAhqeZAbyTNgXZHm0D15ovRIlRhnXmZMGC+Xh9DAWQgj7LSgP5AygkIP?=
 =?us-ascii?Q?c/xr/LWVWdiFmDytkVIUJhH+PelQD8Xxkgh8ZACK9t6n4SgtG3lXbOfGHbVp?=
 =?us-ascii?Q?c56QBR2kiaIzX7l4qcPtfRorBPxsKkjGyIaNni5VPzPhzZ9sSrIMFPFfev1H?=
 =?us-ascii?Q?bV/uW3QQ76lR67Q/rvWfyxJj6YqeBF99S98wk7oAnSfrKyjL0p0wm7bblxtG?=
 =?us-ascii?Q?RgnrqFOEj1d6O+NcWla86A2XkMYE2XE/RKR+XY3pShiaMO+lUSbiZGOE+bdC?=
 =?us-ascii?Q?tHas750ZgFsCYNRrbjMVmsdX00bEYwyrgJXYzA1hyTnbtIqqrVmrAu3FuOcY?=
 =?us-ascii?Q?lpA+bdc2CiCZiiEF3iFOC6m5NSJWPUsJbB1/OXiQDZRiZ5UPGWNs8RNOXtmo?=
 =?us-ascii?Q?pqPLeApZeGE26UTEyoB6IjvU+krMskk/NK0ZPu4I/P/cqkImwMtjxiwljGlE?=
 =?us-ascii?Q?3bxTycmltM0Tlpg5ztYrPYNAOVqSJvtCBBC3PxfYZRPSSl/SpNcJW2maqQBQ?=
 =?us-ascii?Q?qGzxl/Ew1cFA23+1wiWJzNrOvSGPWxLZx7vpTatiQgpEgIyi/jh13M7UDGX4?=
 =?us-ascii?Q?rNSmd8dfzIo14U03YogiFGUVa6lmj2QsRFLAtN46/2QTWK8F56JR4pGgAOrG?=
 =?us-ascii?Q?0GL1cdHEzCr+BYQFJvStiqxqZyBB8R5A/g3fRWMbTynxaKxzBHI2nB3WFpJd?=
 =?us-ascii?Q?0V5pIQmW4cUXSK/oSg/xqBNekxEGBKrbCfw7K039wkiKTLZkerThdH8+sjvm?=
 =?us-ascii?Q?xhC0GkF3ES85IuFEuOMjxpZaaZENnkdfkE4mAHUcArzYsG0WA5Ru/jyDjwk5?=
 =?us-ascii?Q?1MYuY5t0E+E6KNjOqGxu1J5KvUcpW8Vvj71k1T9+lVVCtnOSyrCpIYVEWyqq?=
 =?us-ascii?Q?Mkzbv03ZZdntgN/L2AWgi2wqqoQmgS5SDq1jYrSt7YfQhFPqXYO3AkDCp8tq?=
 =?us-ascii?Q?1X0Fc6tLtUgjDsmVvYpmI73Ur5tAl2oe8sXJSvq3fsX5WViNnyBF2eWcmRh5?=
 =?us-ascii?Q?v0xqOfD9uIEfle8fxmnnnnbdcD70mxcMwEvRsijCdkMktWHSvBf5Te0bkqnR?=
 =?us-ascii?Q?F2vDOcPgfVNfZ1jL9P+U02RyTXstp2MDjEGAJ9Ko+NwzYk4tlmpJMSDlOTDl?=
 =?us-ascii?Q?jp+b9ShCsf6B1ReDB0HGl+nOly4bUHli2goSkQkTouYYIuUoOZlEpEWvs7SR?=
 =?us-ascii?Q?30Bx/odHRk8f8zXs1vGMYQr9TRzbtj0i7BueSw7u3Zz3yooZG3/s1gGPO+0+?=
 =?us-ascii?Q?K5wcVHo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IWR7Q/GBmDmZSqLdJvszY92pJ9CwqunohuYcnplJUEyZbFMehtAZYwBaht3J?=
 =?us-ascii?Q?NTvMJ4lYUjqNxB/ineOjeNJa4cIgDFCO9ZmHYfZkjFSsZGwAzNV5KUbzhIiD?=
 =?us-ascii?Q?alEEh7Lc+pyRl2cirx4a3TEEuPopA7xBMZt4w0Fa875Gqe1MchNhHUda9LUw?=
 =?us-ascii?Q?1AexjhdQ2ltyB0wz8Ge9eyWOQjpDShJGY580tsD60u7lBEb/s31fLvQ7Ze2Q?=
 =?us-ascii?Q?oaKTxifdYGSIuC0zeLGKzCOl2b+Y+d50ATWoEQVAtLXvMvhok4JYzK20vNnS?=
 =?us-ascii?Q?nBwDPqp/qmglikXj8WyOckhsedlVuW9byhBVwWa8WvgTGnHNi0EPGDfbfoPy?=
 =?us-ascii?Q?3JVCQ9UuH2tladXAhcHVenRF7km0u1mwZdxZ6jH9AVt5Uu8EkkKY+qwu+PA4?=
 =?us-ascii?Q?U/FQeYiU/H9U4jdEzDR0kQSI6BJ3RcrjeoseQMGYEWvK7vqAYnQP8AjEkfKE?=
 =?us-ascii?Q?rSq6S4TgHsVMjv5jcJ9ofDwd3lvuucQVZxF4dfZt2tYXFvcEMLQLcrhmNBuR?=
 =?us-ascii?Q?dma9SHe7drVT/MDA/UoEMwa59Cvu+f28VA4M7EnYyuWxj8Vy3tP9VdWd6HJ6?=
 =?us-ascii?Q?N4I5i4ApMDQ9uWpws5GjY5dKABT6c7RPZg/QMc3Y4hdfCuyYyl40gAwW3/x9?=
 =?us-ascii?Q?VCJ3qKKPG6amjsWAYRbLzug+DrgaVP1Qp8ZyBHwAbEL9Vpi5Zumkv79ZgRbi?=
 =?us-ascii?Q?GTvRBJf4jTZ3SfWaAMxPsMt2G7bn/pJ4W9g+j84xWNphzBYmEa3hYH021HNT?=
 =?us-ascii?Q?J6h5tXFRSmncu60uKdvJKoj7XssGNDfDYda7HWgjx6imnyiWkcHBwodGZLmW?=
 =?us-ascii?Q?qIY/pkSGOWYXUmcHnAhvx6u8/Sss/SEj0aTax6FH1l/AE+8czk9dcv/dBc/4?=
 =?us-ascii?Q?edngn6KDSfXaaPXKt2192WpBj5aBj/cdAp1nFNyHE2vHeX7l5+ingAviP24K?=
 =?us-ascii?Q?df3Yl1qoCp1C+3N7GGI3sT4D8eWh9SZboPydobckWA7A31O5MP1NF3aGCZJl?=
 =?us-ascii?Q?NH+1CDAMjVE0QC3R5s5Pi6KfxBychi8pyh75L1vz0LaFRnJ+ReeLaq9u5hVr?=
 =?us-ascii?Q?uXw8hcOnWgr4eMyrmBS2nBMMF7I09f0/IQMdsDNVkcBBmKQOuPHL2fgK3aat?=
 =?us-ascii?Q?W4lEE0ftJ4tzHxAocaT9J7PirjnacAcG975nF1UD6+1aw9GNSXT7etmHxBct?=
 =?us-ascii?Q?hJGXNjb0wvE7NsZ1w2Ngi70vvSiWzaCi+MAKminpLYJy09qV/GzM/WGMC+6b?=
 =?us-ascii?Q?ox+Cal6oer8TpRUW+CyMvzVuSRv7lLKYs+Fl7XQSZyDMm1pVZ02j9CbyPnbd?=
 =?us-ascii?Q?4dSjzcWuYXQHWTSIVjyIf27HyDtOHTo0nSdI8TTijM6lsfHOrwkL650iWFfu?=
 =?us-ascii?Q?ZR2YtKwib0bzutxLR2qE3+OGgo4tMqzUuuXmnJ00HCBCY7VpPST/rQSSMEkF?=
 =?us-ascii?Q?ODAfKc8GgQEPJGCmI+AFx7mxq1dLiwBIx5v4AhtXkhjylqd0Mw6Cyq8ADN5E?=
 =?us-ascii?Q?c2d55H7fq6QVdQe7B7bZz+oLYudoQoXv44yScVKLvfXtBoLFqh9Kn5dSZ5X0?=
 =?us-ascii?Q?E/ZODNYMUUI3wsrE2Yz7pNwS85s63WJ47A3FjVFC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e368b0de-0882-40c1-3937-08dcf3d590cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 02:42:56.2113 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fe6d3W6LX+YE3GFliWrKywVmhYuV8pDkAezm/Se7PHtXItDTs1XH4fSUnAhboUNwTtwnCN1NR7D6WFne8JD7eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7550
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, October 24, 2024 1:15 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Naut=
iyal,
> Ankit K <ankit.k.nautiyal@intel.com>; Ghimiray, Himal Prasad
> <himal.prasad.ghimiray@intel.com>
> Subject: Re: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
>=20
> On Tue, Oct 22, 2024 at 12:59:20PM +0530, Suraj Kandpal wrote:
> > Add check to remove HDCP2 compatibility from BMG as it does not have
> > GSC which ends up causing warning when we try to get reference of GSC
> > FW.
>=20
> Why do you say BMG doesn't have GSC?  I don't see anything in the bspec
> indicating it wouldn't have it.
>=20
> If you're missing the GSC firmware, then we'll disable the engine, but th=
at's
> true on any platform.
>=20

We are missing the GSC firmware here since the decision was taken not to co=
de in GSC for this
Platform
Daniele can provide more information here

Regards,
Suraj Kandpal

>=20
> Matt
>=20
> >
> > Fixes: 89d030804831 ("drm/xe/hdcp: Fix condition for hdcp gsc cs
> > requirement")
> > Fixes: 883631771038 ("drm/i915/mtl: Add HDCP GSC interface")
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Reviewed-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 3 ++-
> >  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 4 +++-
> >  2 files changed, 5 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > index 55965844d829..2c1d0ee8cec2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > @@ -21,7 +21,8 @@ struct intel_hdcp_gsc_message {
> >
> >  bool intel_hdcp_gsc_cs_required(struct intel_display *display)  {
> > -	return DISPLAY_VER(display) >=3D 14;
> > +	return DISPLAY_VER(display) >=3D 14 &&
> > +		DISPLAY_VER_FULL(display) !=3D IP_VER(14, 1);
> >  }
> >
> >  bool intel_hdcp_gsc_check_status(struct intel_display *display) diff
> > --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> > b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> > index 231677129a35..efa3441c249c 100644
> > --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> > +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> > @@ -8,6 +8,7 @@
> >  #include <linux/delay.h>
> >
> >  #include "abi/gsc_command_header_abi.h"
> > +#include "i915_drv.h"
> >  #include "intel_hdcp_gsc.h"
> >  #include "intel_hdcp_gsc_message.h"
> >  #include "xe_bo.h"
> > @@ -32,7 +33,8 @@ struct intel_hdcp_gsc_message {
> >
> >  bool intel_hdcp_gsc_cs_required(struct intel_display *display)  {
> > -	return DISPLAY_VER(display) >=3D 14;
> > +	return DISPLAY_VER(display) >=3D 14 &&
> > +		DISPLAY_VER_FULL(display) !=3D IP_VER(14, 1);
> >  }
> >
> >  bool intel_hdcp_gsc_check_status(struct intel_display *display)
> > --
> > 2.34.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
