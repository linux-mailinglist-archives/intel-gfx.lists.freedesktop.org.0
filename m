Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2279B3A038
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 16:10:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 404BB10E075;
	Thu, 28 Aug 2025 14:10:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T4+tpeKM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64BE510E075
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Aug 2025 14:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756390247; x=1787926247;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=SIew6yF5f6uUXXccxZ8AWcTHotMCDB/+R5JPCOdHSKY=;
 b=T4+tpeKMKy8A0vlO1nq2pFTi7xS2OIPr3mSxYjLVBV2lbsjT5e3Uhxqw
 ElnsAwGGQrmg2NRb8plurS5BenSXU78sEOpAlQn82nuBEKMdeI8LaBPGy
 3I7ya/B7Kw7ww9Lc+8kb5QzCcPdJKV7BGLyYT1AJYeYxe2r7VPjpUgVuA
 MjKyyRiuBegMt1H28da4aDBpG8aHkKUxTwJDu7CAf4IkEjAvi3TyAUvi0
 56fFx/cFETUv6qvULUJq+t0XhWpoNbHHS8kXohTrAlwRFcRS6cQEnzSRi
 GKLGcoMtPlZPoX0JXLUJyt8p8yLgxi+YQ9HkYVqX0GOiEbVMOq8dYS7Q9 g==;
X-CSE-ConnectionGUID: EmFlaPB/RiaNFupqmfThiQ==
X-CSE-MsgGUID: cCgNVsqBRvKE6vO88EqnQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="58722663"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="58722663"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 07:10:41 -0700
X-CSE-ConnectionGUID: TE3zttj9QwqHoZz7gYl0wg==
X-CSE-MsgGUID: gH+u0IiRT62zUmKRcOeisg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169707637"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 07:10:41 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 07:10:39 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 07:10:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.46) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 07:10:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f9SUpIgqXtO5ANjSxZi1yUFrUklnRf/9SbhuI0vwkMfTFumHoa/UTvGkK77MFQ5zqGxD+eG3mK7Y8z/roegJJ7cVoEQiq2ijmDWrezlw1EJs6/eBAC4/DXuplv6nLxagYAf5Mdiuwzbzz4aIuwLMJVVHJEFla1HpP1iHzMzzZaI+9cQqBdXz+L5ybMvGe2JrmYZShJVWEHRnJochUD7WbHFpArXLNKvyFx/2deHC28U8KFufd9icqRTyRjmUTuCDLeMutOESa85OVbXCL54lttyR3OBkSTnhC65sYTCe2FoNiUjNwPQ6byAS0g8eomG5H5vw8SC+aGrxfA8OOUa5VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=renMMi82n9Uh1NPTzGXdPimkZWG/Wb+TvL9ClzAPH/4=;
 b=yUl4ojb2c0+VhB1zymtJKQnfDjudkuUG0cbJklBlgbxg5CTYfwAr2WvDYwdJD3+Cr8E7JtcLH3L5EhAnv7cyuaRnaUxiAoJxKxzM0nD65BoixogDua0p6ZqKzChd30N9O5B7N64zZoQFCEG0a6nzeVaA09lvLRnl0RAim3Rz09q5Bh+fU8UQ1vu3Si8LqG88a32UFOYFV+TnY0+uY5G/vCu+qro8tmCh0pRWPqxfrLGdIInC9nmRYLdFbFb/tNN1eARHC2d3b4/K6X/tSuBTRAv9U2jVO802vDtVwBqZ9X1yTQZtJQd+CnGhGM283cBrwGZ1PA/RBteVcdIpY2vS1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM3PPF529E923C8.namprd11.prod.outlook.com (2603:10b6:f:fc00::f22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Thu, 28 Aug
 2025 14:10:31 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9052.023; Thu, 28 Aug 2025
 14:10:30 +0000
Date: Thu, 28 Aug 2025 17:10:26 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Shankar Uma <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Vidya Srinivas
 <vidya.srinivas@intel.com>
Subject: Re: [PATCH 2/2] drm/i915: compute pipe bpp from link bandwidth
 management
Message-ID: <aLBjUjfBr6P3AwNn@ideak-desk>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
 <20250828080649.186452-1-shawn.c.lee@intel.com>
 <20250828080649.186452-2-shawn.c.lee@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250828080649.186452-2-shawn.c.lee@intel.com>
X-ClientProxiedBy: DU2P251CA0013.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:230::17) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM3PPF529E923C8:EE_
X-MS-Office365-Filtering-Correlation-Id: dd0e6a9a-e80d-401e-5af0-08dde63ca59b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hisGAF8o2z3uhHa+gUNpVm+S7WGI+xL2u/AL71yhxQYAYJgzXuDZReeG/sRY?=
 =?us-ascii?Q?S4ACeDAbvpIAmzB0AE0o3sD+MY0oOvoK16WmBqhx7kMuK5qGtx35l4DV5GbL?=
 =?us-ascii?Q?Xgt9AFNUKpkVJDvDqdkEwKFpsi/ZnDR/IOfbgQ9Puzs9ci7bA64sBpKVee6v?=
 =?us-ascii?Q?kvI0rgqMib3GbHUv/lAIB07i93fMXluOvmWckYCb2Ws1Kk0uJ+1kVlwuqrIe?=
 =?us-ascii?Q?04OzP2orLv/a8BB7ERrZzAW+wcN2MeIwo28jEYk+w0UJAbbqmFwcBQd4NsMv?=
 =?us-ascii?Q?5BP+eTCk4D7pzBmghzb2nPZCyDaOG6e+topyYOwggYdrLDEgojCR/8Fm452d?=
 =?us-ascii?Q?Lk4vH5CcaaOKqhoLazJOrdgfKPVAWNGXq3eFG4FTrmR6mcKdOb6EiAgQTUj8?=
 =?us-ascii?Q?GQ0wysBdUi5RV9Kr1jqLaXqKZCUamTWlQrFNY47QTNg9jtyaAXk00TGK+bpa?=
 =?us-ascii?Q?/vv2aunN5js+yAYZzD7FHIyiOxjGifmvqZKMlgGuCzJTvKTDHsMm8DaMys/3?=
 =?us-ascii?Q?LdSiiDLtJtcC9HUH88wurkONIWvjPhg6gMR1Vxx54+QANjyzP5UHKODuFJ6+?=
 =?us-ascii?Q?AMk7+l2aBVvN+rvJSKtKYctyiKtAC63SQr6s8D6g/MiO8teYX2LRQYjhVZjj?=
 =?us-ascii?Q?diNbr41P1LFsUVCP34gwBh0AbpKhchDdxewqA2NDwJfohqGk4kROdNzyblav?=
 =?us-ascii?Q?IKd0QxU2nq/78+VrZkzaWsTc/8LV370emXNist3icQbxHEP1ZSOIha5eFHFB?=
 =?us-ascii?Q?kwkvn469/NBFX2QKtRqY+9KkPLX0fX/HiPfsuWbOKf5IjHq9u0EXk7648a6s?=
 =?us-ascii?Q?yhkdRJWyXRfDUlI41fQv4orIlyfSaMIvGJ4wNZ5QAbOOshUsNvwcGtU5p5Nv?=
 =?us-ascii?Q?1xJvAyek7jMD9b+VEGwIwzFUsA9Sk7ID8mwufK2mb1sSai8CyXRJq7e7mzxw?=
 =?us-ascii?Q?OH24BMtC8wQpMZwz5+My8XkDPEnYoQtt1UQlQ9LWrUZQq8KGXezcKFQ+aOPr?=
 =?us-ascii?Q?csz5Y/5swTsTndbHVAipa1jv3Y5VYEnwrp6THz1AmPe3uOBSMLhatWu7wT/A?=
 =?us-ascii?Q?y8LXWuB/mS6i72YuUvcRL4q5yEUVA8dOOV9uiwn/jajMPHm54w9DNHuexR5o?=
 =?us-ascii?Q?1lJkvTMx5vRjWJwVTLweLZaatX9RuPdN2ESb1hqxaoxpOWUEQq7m644q23Lh?=
 =?us-ascii?Q?PE/DcCEP8C2L/tHb4DEhk9GxLaMSdKaIBe5oPAYrzfPdUxy1GDvwuwAEo1SC?=
 =?us-ascii?Q?EtMbgdZ55WD8i/8EeIYBAzk9G13mgJn2XwZehpZbybMlk3j3sTe+OBOMBYGS?=
 =?us-ascii?Q?Ww3S81BzlzXhUVGmaFsO6EyQ3twvi2YkDFfhwSIrPxirIY6BNUyqwlfF2ID1?=
 =?us-ascii?Q?FdwVrPETUfRK+Ot6WFmR8Mh8YgJbLLbCtqq1Y8yuRnonJBlwVHeMMAExFWoz?=
 =?us-ascii?Q?I+ygngJpn0Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?M8bK9Dqok/O/T5Qq6DYqFFkrDukcb2TiubCETfKmYNqQgLxNLBN7l7hPZfF2?=
 =?us-ascii?Q?44V+i7fE/0fAl81vHlY0PmE041wa2pODVpHu3xhtxmpm5rQ4jhzBdizhXnzj?=
 =?us-ascii?Q?qlCiYi6BgvFM9MJZzPwPjPiS8KJ6bgFLp86eiJdAwnufE5zfU6m/AXV70yRs?=
 =?us-ascii?Q?sS1hJuQoRBIoKZtK5QF/m7f8FjyEaLC5rA3A2qJg644HwrkWXOO8tHR93Mto?=
 =?us-ascii?Q?JZEkS9hAAxiXtm5OMMxfskB6ueinG/Ry9PFb30ul7j5rDl8Qd7bH3bCdoxwx?=
 =?us-ascii?Q?qwfXMmNH/sCJ3o8+YFjaPMlLYSPCwOpbzEpZFPmCthPbusKQH7ihesjQDkDn?=
 =?us-ascii?Q?5+k8xgdh/mfI2ko4ch4eSKOs6/B9BplRevQcnucmQR8KhKqqm3RUWtNV/rof?=
 =?us-ascii?Q?ZQPPOhL3rZPBI+UNV7tkuaXYZM/Nxk+CBGOAMF0/wFU7khmlphCdmurCvsmZ?=
 =?us-ascii?Q?npPLAlC4EjVE1zdaHFiyM5mcSKMk0YMe7czususkRzeE5ElTlmA+kaSe8t58?=
 =?us-ascii?Q?s3j6zo+QcGTKvS9Ei41MUzWofgmA0sdJtC42DlDzJ/w47YUzVwcdcncaodv8?=
 =?us-ascii?Q?alXBkFk9ZnQd8Zb27WN+UF724A920cHrQenMIgyj8nDQP+5fTrecQ50QSqzB?=
 =?us-ascii?Q?o1sCAzgtpODKVUzXZ0+W42VXHoJAbsSNgJxmRTG9K2nIIA6zTGx5U1QbO7Yj?=
 =?us-ascii?Q?shkMcOqEEICxrCQJ48fyFZuMT7w0w4q1cz9ZjYz2WM3yBK7QmkuognKTAg91?=
 =?us-ascii?Q?hGXioaNAKuHR+FbgmBc2k2pNTmC35UBbeab+/imu/qrut18GooSKAggI0/U0?=
 =?us-ascii?Q?IbSgvDiolyF0/ut8kxqrZLkXBa/7OHghiX2MfYrikICjicSZJeTYQlIDZzlf?=
 =?us-ascii?Q?o9WsdOBescNrwBVNz9J6Pn6BfS2JxGMZtQK7vaSa9gTe0XEtMcQ2ahS2FZ4F?=
 =?us-ascii?Q?76ejWo5AFtoNvSzK0I3sUqJ7qtAt4dMuXFDKXeVs2Cn/K9skFzscAhtymXWJ?=
 =?us-ascii?Q?U8STlCMj6cIgKYynKKLU34DRrRx2cZ1ZK1Z9LeaFyiJF1a3Ls64D+fY0gUOA?=
 =?us-ascii?Q?X3+xx2LofWMumuXgymcu/aPuJxA755iBbw8ttBJ49Ady5fQj5q2lBDs5oRYS?=
 =?us-ascii?Q?0Oww45bTl8ZY36Q+qXPlzcfLisaZeWCszNU9VPyetRgfkt7n3GWUMuaeiO57?=
 =?us-ascii?Q?x7fh1QKXlNNnjk7HzX0wm4L6VlTNZfbqi3WoeIkv+7MlGa2p5dVtm7KoXYUr?=
 =?us-ascii?Q?FTFqVkLwSxIwmH/RLZ/Ny79yKosZ2g/zNZZY+/sFeYpkAgcv9C3SM46u1lZR?=
 =?us-ascii?Q?Cimkud6naF7kl3NVxrST9U3dhQnJ3BsvKQ/hx/tIP5yZFlZO5FMGAo41M2PW?=
 =?us-ascii?Q?QdmGjHLdYzzcpxd1Hk2FqIUROfWGzX/TPfNxUqDaOaChYbgSChD+IFxSgKyg?=
 =?us-ascii?Q?FYaswBXw8ZVULyEIK/7ZWSY6NtYOlXsitC/rt5iHVEeCaswMyq6WFmYKqxjz?=
 =?us-ascii?Q?LoBwx5Vsi0zM5tqRlzeyl7l34aZYn+l9xNhQEN+B31ymHTk3Z3dNsslU2AS0?=
 =?us-ascii?Q?+3SGBIGfLvb8ZhJtJeD74LA2MlP19HMxVg64KAPsI17V/YrhsdpA3StI5XQu?=
 =?us-ascii?Q?ewPXvWmj7Y4dncj61xpfQvRFGEwEqPceMPRo5VNZl1qY?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dd0e6a9a-e80d-401e-5af0-08dde63ca59b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2025 14:10:30.8981 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x3ZJ9N0WhkuONZliOTsSaYzNmLpO5/jtMgvp98G59jL/5plVWsCAnPB0Xaohi7gspNXq94w+TskuKraoQ1ofSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF529E923C8
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 28, 2025 at 08:06:49AM +0000, Lee Shawn C wrote:
> Since intel_fdi_compute_pipe_bpp() is no longer FDI-specific and
> now applies to all connectors. Move it to intel_link_bw.c,
> and rename to intel_link_bw_compute_pipe_bpp().
> 
> Cc: Shankar Uma <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Vidya Srinivas <vidya.srinivas@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c     |  5 ++--
>  drivers/gpu/drm/i915/display/intel_fdi.c     | 28 --------------------
>  drivers/gpu/drm/i915/display/intel_fdi.h     |  1 -
>  drivers/gpu/drm/i915/display/intel_hdmi.c    |  3 ++-
>  drivers/gpu/drm/i915/display/intel_link_bw.c | 28 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_link_bw.h |  1 +
>  drivers/gpu/drm/i915/display/intel_lvds.c    |  3 ++-
>  drivers/gpu/drm/i915/display/intel_sdvo.c    |  3 ++-
>  8 files changed, 38 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 898c5d9e8f7a..31e68047f217 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -50,6 +50,7 @@
>  #include "intel_gmbus.h"
>  #include "intel_hotplug.h"
>  #include "intel_hotplug_irq.h"
> +#include "intel_link_bw.h"
>  #include "intel_load_detect.h"
>  #include "intel_pch_display.h"
>  #include "intel_pch_refclk.h"
> @@ -421,7 +422,7 @@ static int pch_crt_compute_config(struct intel_encoder *encoder,
>  		return -EINVAL;
>  
>  	crtc_state->has_pch_encoder = true;
> -	if (!intel_fdi_compute_pipe_bpp(crtc_state))
> +	if (!intel_link_bw_compute_pipe_bpp(crtc_state))
>  		return -EINVAL;
>  
>  	crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
> @@ -446,7 +447,7 @@ static int hsw_crt_compute_config(struct intel_encoder *encoder,
>  		return -EINVAL;
>  
>  	crtc_state->has_pch_encoder = true;
> -	if (!intel_fdi_compute_pipe_bpp(crtc_state))
> +	if (!intel_link_bw_compute_pipe_bpp(crtc_state))
>  		return -EINVAL;
>  
>  	crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index 8039a84671cc..59a36b3a22c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -292,34 +292,6 @@ int intel_fdi_link_freq(struct intel_display *display,
>  		return display->fdi.pll_freq;
>  }
>  
> -/**
> - * intel_fdi_compute_pipe_bpp - compute pipe bpp limited by max link bpp
> - * @crtc_state: the crtc state
> - *
> - * Compute the pipe bpp limited by the CRTC's maximum link bpp. Encoders can
> - * call this function during state computation in the simple case where the
> - * link bpp will always match the pipe bpp. This is the case for all non-DP
> - * encoders, while DP encoders will use a link bpp lower than pipe bpp in case
> - * of DSC compression.
> - *
> - * Returns %true in case of success, %false if pipe bpp would need to be
> - * reduced below its valid range.
> - */
> -bool intel_fdi_compute_pipe_bpp(struct intel_crtc_state *crtc_state)
> -{
> -	int pipe_bpp = min(crtc_state->pipe_bpp,
> -			   fxp_q4_to_int(crtc_state->max_link_bpp_x16));
> -
> -	pipe_bpp = rounddown(pipe_bpp, 2 * 3);
> -
> -	if (pipe_bpp < 6 * 3)
> -		return false;
> -
> -	crtc_state->pipe_bpp = pipe_bpp;
> -
> -	return true;
> -}
> -
>  int ilk_fdi_compute_config(struct intel_crtc *crtc,
>  			   struct intel_crtc_state *pipe_config)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
> index ad5e103c38a8..1cd08df9b0c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.h
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.h
> @@ -20,7 +20,6 @@ struct intel_link_bw_limits;
>  int intel_fdi_add_affected_crtcs(struct intel_atomic_state *state);
>  int intel_fdi_link_freq(struct intel_display *display,
>  			const struct intel_crtc_state *pipe_config);
> -bool intel_fdi_compute_pipe_bpp(struct intel_crtc_state *crtc_state);
>  int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
>  			   struct intel_crtc_state *pipe_config);
>  int intel_fdi_atomic_check_link(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 027e8ed0cea8..4650181932d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -61,6 +61,7 @@
>  #include "intel_hdcp_regs.h"
>  #include "intel_hdcp_shim.h"
>  #include "intel_hdmi.h"
> +#include "intel_link_bw.h"
>  #include "intel_lspcon.h"
>  #include "intel_panel.h"
>  #include "intel_pfit.h"
> @@ -2346,7 +2347,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
>  		pipe_config->pixel_multiplier = 2;
>  
> -	if (!intel_fdi_compute_pipe_bpp(pipe_config))
> +	if (!intel_link_bw_compute_pipe_bpp(pipe_config))
>  		return -EINVAL;
>  
>  	pipe_config->has_audio =
> diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
> index d194a366ff10..f52dee0ea412 100644
> --- a/drivers/gpu/drm/i915/display/intel_link_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
> @@ -164,6 +164,34 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
>  	return ret;
>  }
>  
> +/**
> + * intel_link_bw_compute_pipe_bpp - compute pipe bpp limited by max link bpp
> + * @crtc_state: the crtc state
> + *
> + * Compute the pipe bpp limited by the CRTC's maximum link bpp. Encoders can
> + * call this function during state computation in the simple case where the
> + * link bpp will always match the pipe bpp. This is the case for all non-DP
> + * encoders, while DP encoders will use a link bpp lower than pipe bpp in case
> + * of DSC compression.
> + *
> + * Returns %true in case of success, %false if pipe bpp would need to be
> + * reduced below its valid range.
> + */
> +bool intel_link_bw_compute_pipe_bpp(struct intel_crtc_state *crtc_state)
> +{
> +	int pipe_bpp = min(crtc_state->pipe_bpp,
> +			   fxp_q4_to_int(crtc_state->max_link_bpp_x16));
> +
> +	pipe_bpp = rounddown(pipe_bpp, 2 * 3);
> +
> +	if (pipe_bpp < 6 * 3)
> +		return false;
> +
> +	crtc_state->pipe_bpp = pipe_bpp;
> +
> +	return true;
> +}
> +
>  /**
>   * intel_link_bw_set_bpp_limit_for_pipe - set link bpp limit for a pipe to its minimum
>   * @state: atomic state
> diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.h b/drivers/gpu/drm/i915/display/intel_link_bw.h
> index b499042e62b1..a458c8edacf6 100644
> --- a/drivers/gpu/drm/i915/display/intel_link_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_link_bw.h
> @@ -34,5 +34,6 @@ bool intel_link_bw_set_bpp_limit_for_pipe(struct intel_atomic_state *state,
>  int intel_link_bw_atomic_check(struct intel_atomic_state *state,
>  			       struct intel_link_bw_limits *new_limits);
>  void intel_link_bw_connector_debugfs_add(struct intel_connector *connector);
> +bool intel_link_bw_compute_pipe_bpp(struct intel_crtc_state *crtc_state);

This should keep the order of the function definitions in
intel_link_bw.c, moving this line before
intel_link_bw_set_bpp_limit_for_pipe().

>  
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index 7e48a235c99f..48f4d8ed4f15 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -48,6 +48,7 @@
>  #include "intel_dpll.h"
>  #include "intel_fdi.h"
>  #include "intel_gmbus.h"
> +#include "intel_link_bw.h"
>  #include "intel_lvds.h"
>  #include "intel_lvds_regs.h"
>  #include "intel_panel.h"
> @@ -433,7 +434,7 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
>  
>  	if (HAS_PCH_SPLIT(display)) {
>  		crtc_state->has_pch_encoder = true;
> -		if (!intel_fdi_compute_pipe_bpp(crtc_state))
> +		if (!intel_link_bw_compute_pipe_bpp(crtc_state))
>  			return -EINVAL;
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 87aff2754f69..eae07d3909cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -52,6 +52,7 @@
>  #include "intel_gmbus.h"
>  #include "intel_hdmi.h"
>  #include "intel_hotplug.h"
> +#include "intel_link_bw.h"
>  #include "intel_panel.h"
>  #include "intel_sdvo.h"
>  #include "intel_sdvo_regs.h"
> @@ -1367,7 +1368,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
>  
>  	if (HAS_PCH_SPLIT(display)) {
>  		pipe_config->has_pch_encoder = true;
> -		if (!intel_fdi_compute_pipe_bpp(pipe_config))
> +		if (!intel_link_bw_compute_pipe_bpp(pipe_config))

intel_sdvo.c doesn't need to include intel_fdi.h after this change.

With the above two issues fixed, the patch looks ok to me:

Reviewed-by: Imre Deak <imre.deak@intel.com>

>  			return -EINVAL;
>  	}
>  
> -- 
> 2.34.1
> 
