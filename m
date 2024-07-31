Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E1094350D
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 19:32:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B87610E229;
	Wed, 31 Jul 2024 17:32:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NEgqzbCg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E40110E229
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 17:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722447154; x=1753983154;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UyJy56qGXBQC0+Kq+JIrjv2WTpb8lO7m+aOvC9UtTks=;
 b=NEgqzbCgUR3yfHrQOtSngVe9YmpyLE2yk1xP5QL97v2VJTLKp6rS3N0f
 Nphb3yfm9PE6PxB4lgykWGk8JVR11TjnZirCSkCrnfA23MDim9fEegtyq
 gZE8IdDCs5fOMQmNqQafrmYyjitjtW+tnq+oR73lrwL4mvQDcWgQ2xYWg
 Ns+IjNS2dRvjaV2O7qGmAgPnooFCh3uiLUVJODqoaH9Ta7fGC2rVmMVWi
 bZB14omFAFHW5tSFXPNDKL/boTJ2BPHM/qieFbvUNNxyn0gcSfxksQJl8
 CQWADU+v8euzikcmG4FLPoGQ+dgihCtjCRV/szpToqDZtq6qvdQS9ZCnD g==;
X-CSE-ConnectionGUID: PEduinygQMCPDPrmpaENag==
X-CSE-MsgGUID: nBwR1vaESISzQcH69l+C4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="20036473"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="20036473"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 10:32:31 -0700
X-CSE-ConnectionGUID: nWoSSOxTQ1+FVgoHtkVQfg==
X-CSE-MsgGUID: AC0raNenSDCTg+25k4hcUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="54441320"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 10:32:31 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 10:32:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 10:32:30 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 10:32:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EueVjtq9AI2jS+rmbWNdjTQJ/mSJ4asX6UzO36S1UDCw8/tQ1dLu6JGCnXjyFi2IBZT7WKaOQGLQ8Bgx4rSFxfH1ioYogw6/5EJ2XOp/Obw+XVhpH2gHwQvdU2F5aNZmwK+RSE2dw4HCuHF9Bqt8XVNWzsXy90Ux/PwUCKIVHWdj02nwRFf7cxSreovYXKBzmqfIGBULzSN8/q4aWhL65NMfER9wLNgXMrHvP4n+uT5ELuPx11S9mRe4jcIFaErZ6jouayzj8mLjueRAsat+YbAr1+l6qwA4AaOFxaGcKuvfG885swUi0zYHMeLk9lH5T13BrVQBQ6LmH/SnN0rS/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aKjNfdyKZYSI28sqt7z1hMoMP1MjPywLQM+4MwCJAJ8=;
 b=Al/HAoo7uEi/wIkzdt17nuF1wx0jFZZb7B9+dgz6axyxDxbU90BH4xAGcYhDEfNqXSPs6k6mZqQzni4F3JljPhNEXbiNXAMvX8EhnGcJ3RVJa+zAcv/KlCb3h1+CJzAElOUtlQ26FmoB0yGDXcL6ZggqSPmhU5cCWDD1hFdu5mSvnlLlVS/TCNd7VLgOxtir2mCZFTRAK3K0Jao6e+X3nxqKpP9psDlTPwjgAnJk2Wuvo4qtI4lXfIhPGlwl880k7sJwonNwXrgisNbrhpX/YCIn+RWrpwIYhsX+OaMKZz/scu+npaA+emi0a03plrQbun+lrmyRebryUfD50NW8og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by IA0PR11MB7401.namprd11.prod.outlook.com (2603:10b6:208:433::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Wed, 31 Jul
 2024 17:32:27 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762%4]) with mapi id 15.20.7828.016; Wed, 31 Jul 2024
 17:32:27 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: "Gote, Nitin R" <nitin.r.gote@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
CC: "Shyti, Andi" <andi.shyti@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>
Subject: RE: [PATCH v4] drm/i915: Add Wa_14019789679
Thread-Topic: [PATCH v4] drm/i915: Add Wa_14019789679
Thread-Index: AQHa41/FVot/jUACe0+LQEamX20kB7IRF9VQ
Date: Wed, 31 Jul 2024 17:32:27 +0000
Message-ID: <SJ1PR11MB6204728E9E2B6C277BBD906281B12@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20240731155614.3460645-1-nitin.r.gote@intel.com>
In-Reply-To: <20240731155614.3460645-1-nitin.r.gote@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|IA0PR11MB7401:EE_
x-ms-office365-filtering-correlation-id: 5f869a6f-28ba-4206-f995-08dcb186bf79
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?y3fpvk/fGe4k2tOGMvrObNpZ7YHjg88fFbSOJ54QG4zlH2MfHFlplPnnPKX2?=
 =?us-ascii?Q?zYDKQvp9BoXwzSV1ypL34Omj/Tofx1eaBgsFVQEl+L4PBbGiubzav2ChThSW?=
 =?us-ascii?Q?9zpih+6a2yb+e6jwj7+kcyioF7d2hRXx57JDgbSAMm4IgkitKEaNOFcsmiI0?=
 =?us-ascii?Q?/zhiTS5kcsYas1S+jtyX8frRoUYC3qlhp3/zJT5FhuJDKzQ3kRWu/ROCw27T?=
 =?us-ascii?Q?/2ZGiW7vc0I7ErQPG58NK9YjZaoCvGoDDrgo4XUT19bZ8hEiZazGDAuzk1f3?=
 =?us-ascii?Q?j8bVnzhqBIVP5N1fiL+kVJ3dnaAoJjzRHoKGCbV+TNjmwDef1wCoQ1n4DIJq?=
 =?us-ascii?Q?ElzNn+VnsNiSfM1gIcGvaIM1W3egfCDB6eEhMCAqyR5lk/N9dvQ2LCmJcIFs?=
 =?us-ascii?Q?p1d9FouZbVp/u+ZVzehPtkVr4caq7AlixXO4xoaqcCOutVakPXneDm+hcslw?=
 =?us-ascii?Q?KAv567J13MZHqeXXyzcOra+bWvLzbiikx3XN8IqmpZYxRN8k8ottKzZRY0rq?=
 =?us-ascii?Q?+TsRvYJEMIJ7zkHlWfv3f7Y80LSbgyTv6uCIYtbADGHIrufhKocBgtmK3Ttf?=
 =?us-ascii?Q?MHUBcGP7taDGdYCJs1DC3ie7u/l5Ipj9iP4DqgnWkmyiKHX3IZT5MroGMVaM?=
 =?us-ascii?Q?m21DEIEtqJY5hs9jOFysSvYBC4ln3tALdlrlG/okD+2C4HBdJt2DXEVD7irK?=
 =?us-ascii?Q?KQ7NuRywOWv2aNpJv3qSVJNAeTV2cWSEHisulFWYyGW/jP36auXfHZqDCSRZ?=
 =?us-ascii?Q?GnFRHeFWaG7JBhoUOnlogJcufciSjpDV3Idjk9J3m9ys2XA27l3+P4Z3sSmB?=
 =?us-ascii?Q?AmjwqvVySsb/OAmejG4hRGpO3cHNIsjnAFsG5KuYL72X0C04ueQJYHphkjBi?=
 =?us-ascii?Q?JPhqA3XhmmWiIESgCNcnAy9wyEUHw5VsL+MTZRRxdn2KwP6HzfRxUDL+9sRA?=
 =?us-ascii?Q?rmW6rXM+XG5jl2BX3HxWgUuf0MOkdipTDEWl25zYzdfOcM1BFqlw2yGIMuoU?=
 =?us-ascii?Q?Bksz+lWsrOEzMMPlLGPP8frOaPlpoQj2eSc3rIbB7jDiXjsGbrDUKWr9urJx?=
 =?us-ascii?Q?e+nIsosgjb3wjKcNMDSxeFCPwgDxFooOg9+wEeqg42swmUoOJfuBnaQnoN54?=
 =?us-ascii?Q?Cv7q/PlAP5Be+K19Hz8CpR65+IHDmyxer45H70bAY5foCGpNzHFHMN9u8WIN?=
 =?us-ascii?Q?U5GWubArRgWI+9nG1HWoEzkXH7fNjZa5kK8xGVtFk3TyyqPAKzM9xfEx3zaP?=
 =?us-ascii?Q?L7W33pM9oRXfoozlUH1sA2Q/ouOxeIVem1ovrTWNtCuV+KoZnUQdD667P9FS?=
 =?us-ascii?Q?eYClLTcPAH8sekNb5cX9kyztzbB44U/sOtSJz3tc88cysXRJs+AIBhHoq2TB?=
 =?us-ascii?Q?N5SJsxobdqSwBw0mj1AwmfR/NWDz2f+z0MWSv0eJzVTJY88ifg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t1q/D0HeqP+TlF2bF+CiiehZR9NnGy6hOaAaFHx6LNBTP7qJANh3IiS7oHZ0?=
 =?us-ascii?Q?GYopfNUAJvOc1ADYjhV2+NA7BMX+1S8qeErAx4UXoq3k2UeZcuSZ1orpmLiI?=
 =?us-ascii?Q?FHz4gjtx+e+Wk0ZStCEQ1pyJAQq2NDVhevz9FlNINRomVP270jh7OH8gPUF0?=
 =?us-ascii?Q?2KvijhX2pQOOTGCOIGTUX52O7dQUK8U9A+oFXjs5/vuZ7cB9D8gLVmamgDGR?=
 =?us-ascii?Q?+oLaZY+2tkqF7NwpIPM9ibCW23eL5z0gnBYE/Ba10/EhwD7j5fNkID6tFRa9?=
 =?us-ascii?Q?d/eLV37xoi0M0ASKBwLcw4DENxu//q35Xdl5dTB9m2IGRIQBJoyRZdXJp5Y3?=
 =?us-ascii?Q?w8uT7QwPG43As5B1kPUrqoK8SsfkFgnpjnkRcGASS583U7LqKn0d1jnvMfy1?=
 =?us-ascii?Q?Rb6GmQ5zcwuCRpnXRLhXVKkyH5wdDMlps3DXBMcuNBqY2aDxlwKVTPh1pVMI?=
 =?us-ascii?Q?N0JOhFg7l9A1wAsKMnEdrv9MFYhAMcHv21GmpbTR5sKx3o/SGG0Y4JCxV1js?=
 =?us-ascii?Q?FlfW3NV9fGCduW2oMdvgZz6rf40TcgLpHHHUUUscJs1X3mZfZ4tD8cJFZyRn?=
 =?us-ascii?Q?Sqy7sZ8zFu9iL3YFR7csZTjZg7BHmp+oEil4wGc6Rji7JJ90rNYAsYY1tzB6?=
 =?us-ascii?Q?Y+S0CY3xtiU6iiB4l11Pdlit6nq/HPJz4l4+lsb73Xm2/OKbjQpHKel2DYhd?=
 =?us-ascii?Q?OFca+CXGZ9h9yJ+Ll6nlIBLLLwAUdxaLLe0posTluysmuX0/6WsfFsh8woD8?=
 =?us-ascii?Q?WZKZVIW73H9h/9iFAVDtDagEeoMQ4cgKfAaB0ASuncH6PPn+PN/4BFTQNXeP?=
 =?us-ascii?Q?kgJ8ZTKPX/ohmV0lEiybSwLXOwBxRPoBzcV/L7iCRLyHOcPM+MMJymgFsx8Z?=
 =?us-ascii?Q?slOrHfp+wzQiYQQVab8rczwSXIS2WBEP6EUUCX0dmx6hVO2MDKbpXujoX0R1?=
 =?us-ascii?Q?vgBadcQdRjOn8o+SUrxQzV1PxZ+xl0ih+gkQsypHxkOK/932UNoYjN/h0xNP?=
 =?us-ascii?Q?iHUu1CBpLLcDP85szSgkRAo892HPtnS5zr3IOKFz7lzH+jg12vG8f5w1LGsp?=
 =?us-ascii?Q?s63FzNp08Srz1578unH2Y0UUmSZ/JKENUc8MMF9Rbmom6Ra2Yxg8fuq10FtM?=
 =?us-ascii?Q?BfVaTgyxVrD6D9mJ+2w1a2bVgdtzFnFe9e4SwF4qimMOYqgDkYgnBeNLket5?=
 =?us-ascii?Q?eb08BJuPhddQ90a7srBjHuXtnUOGH0IXSIaxB1lr62ukc0Cwe/SuRmHFLbzw?=
 =?us-ascii?Q?0lM2jDGCAPhGIHXr7CxJ6elhqY0YDiTU5o0h2BqM4gNCzeevjQLdv7kEIHtV?=
 =?us-ascii?Q?FTbbI9ZK63pARnBSaD4BSHamsiJoUygiuVpaQf3/JECoDuPO1fb4TQzxjQJm?=
 =?us-ascii?Q?IuAfdjKoYauUZxxBdH2TRK7wlR0XcParD6ROBC5jYoYN804+tzZtjXmV99ka?=
 =?us-ascii?Q?LQLTlzp93MaTO5ed0OmCZxXlYSqDzviTdCxSJ5d6ak6P/eoLHFNTT2hPlV6A?=
 =?us-ascii?Q?I7O6ecjdUFiemvbTU3SKw6Ad3G18jlSwfNjuNXAd5sTgXqeMEcxcKQaZH4nv?=
 =?us-ascii?Q?SeF5Qmk+MT+F0W/Y8ZTTno6/GzCQU11bvy7/aObf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f869a6f-28ba-4206-f995-08dcb186bf79
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 17:32:27.5323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cunEb9EMecX1yVC5qgY0wi4KuIbAzXMD5njAaZvCUT4kjtxw0c/0KHK/GgVbaxjPxckhr7YtUfG0C6c8GCkv2R/ahDkUeEUgTvB/3ZM3Yyg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7401
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
> From: Gote, Nitin R <nitin.r.gote@intel.com>
> Sent: Wednesday, July 31, 2024 9:26 PM
> To: intel-gfx@lists.freedesktop.org; Upadhyay, Tejas
> <tejas.upadhyay@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Cc: Shyti, Andi <andi.shyti@intel.com>; Wilson, Chris P
> <chris.p.wilson@intel.com>; Gote, Nitin R <nitin.r.gote@intel.com>
> Subject: [PATCH v4] drm/i915: Add Wa_14019789679
>=20
> Wa_14019789679 implementation for MTL, ARL and DG2.
>=20
> v2: Corrected condition
>=20
> v3:
>    - Fix indentation (Jani Nikula)
>    - dword size should be 0x1 and
>      initialize dword to 0 instead of MI_NOOP (Tejas)
>    - Use IS_GFX_GT_IP_RANGE() (Tejas)
>=20
> v4:
>    - 3DSTATE_MESH_CONTROL instruction is 3 dwords long
>      Align with dword size. (Roper, Matthew D)
>    - Add RCS engine check. (Tejas)
>=20
> Bspec: 47083
>=20
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
> drivers/gpu/drm/i915/gt/intel_workarounds.c  | 16 +++++++++++++++-
>  2 files changed, 16 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index 2bd8d98d2110..5394bc7d4daf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -220,6 +220,7 @@
>  #define GFX_OP_DESTBUFFER_INFO
> ((0x3<<29)|(0x1d<<24)|(0x8e<<16)|1)
>  #define GFX_OP_DRAWRECT_INFO
> ((0x3<<29)|(0x1d<<24)|(0x80<<16)|(0x3))
>  #define GFX_OP_DRAWRECT_INFO_I965  ((0x7900<<16)|0x2)
> +#define CMD_3DSTATE_MESH_CONTROL ((0x3 << 29) | (0x3 << 27) | (0x0 <<
> +24) | (0x77 << 16) | (0x3))
>=20
>  #define XY_CTRL_SURF_INSTR_SIZE		5
>  #define MI_FLUSH_DW_SIZE		3
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 09a287c1aedd..bfe6d8fc820f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -974,7 +974,12 @@ int intel_engine_emit_ctx_wa(struct i915_request
> *rq)
>  	if (ret)
>  		return ret;
>=20
> -	cs =3D intel_ring_begin(rq, (wal->count * 2 + 2));
> +	if ((IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12,
> 74)) ||
> +	     IS_DG2(rq->i915)) && rq->engine->class =3D=3D RENDER_CLASS)
> +		cs =3D intel_ring_begin(rq, (wal->count * 2 + 6));
> +	else
> +		cs =3D intel_ring_begin(rq, (wal->count * 2 + 2));
> +
>  	if (IS_ERR(cs))
>  		return PTR_ERR(cs);
>=20
> @@ -1004,6 +1009,15 @@ int intel_engine_emit_ctx_wa(struct i915_request
> *rq)
>  	}
>  	*cs++ =3D MI_NOOP;
>=20
> +	/* Wa_14019789679 */
> +	if ((IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12,
> 74)) ||
> +	     IS_DG2(rq->i915)) && rq->engine->class =3D=3D RENDER_CLASS) {
> +		*cs++ =3D CMD_3DSTATE_MESH_CONTROL;
> +		*cs++ =3D 0;
> +		*cs++ =3D 0;
> +		*cs++ =3D MI_NOOP;
> +	}
> +

Please check pre-merge results, to me does not look related except that arl=
h platform failure, even that does not look much informative. May be hit re=
test. Otherwise LGTM,

Reviewed-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Tejas
>  	intel_uncore_forcewake_put__locked(uncore, fw);
>  	spin_unlock(&uncore->lock);
>  	intel_gt_mcr_unlock(wal->gt, flags);
> --
> 2.25.1

