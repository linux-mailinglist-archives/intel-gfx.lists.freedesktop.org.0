Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F717A3027A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 05:11:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DF0910E2D7;
	Tue, 11 Feb 2025 04:11:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h9p0oPLI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F152810E2D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 04:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739247076; x=1770783076;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tY8xLnKt76YxkNCtB58kOB5dSyYb7BylFVEhRK9VCw8=;
 b=h9p0oPLIpDl9hUz0mPM0XJFe4ccyBS4QVyLmOGpA4Qkmui5vrAoEN1Uu
 j9iyIxztkZ9e+k9Y2aiMlNccCpvohxFwAb9YXSjTS1z6pa/CO2MsnJ1uX
 LvKaqgVhTYSLg8UXDag9Dh+PDZ0Rtsz+UI9E1ySsqEo4BCuZCTBO4Lf+m
 h69giEiz4Qos7ZvC8I1ELVF7pIG+fc89a/1oxMB+P295Y3RO1i3pvLscO
 Xve/BXaaOaxVyGnHwPMRojdDFXk9hg9R3PsgOs87bAtbjB9YP/8ylL6PP
 rFYL41m/VPYsH99QRAAGfBrWM/ugWmG+0vaaefQXnjDqi4jpzzJboC8ez w==;
X-CSE-ConnectionGUID: YOCDbOBbQy2QE8CvDsXo/g==
X-CSE-MsgGUID: QgXtXGZ2QZGVkAADX1xAKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39996940"
X-IronPort-AV: E=Sophos;i="6.13,276,1732608000"; d="scan'208";a="39996940"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 20:11:16 -0800
X-CSE-ConnectionGUID: HffeNtg8Rf2LPFDQlxtfpg==
X-CSE-MsgGUID: MxljhYd0Tt+ykC3KxngaHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="149573291"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 20:11:15 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 20:11:14 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 20:11:14 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 20:11:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dj57s8GvJHG68sjqD0OJ4aQLwcbSyMFIbuizHGyzGFT8xaf8VCfOaStWhMEXA1HcNjM3JrpnMBGaDGK/DLZPdm9BTN7H9WqNBnC7kra5XR7mNKsSGzEvNXXpnvwiAQjTBF4f1gWmpA/u4az8yirgcB8hOLvzeve00R0wbOK7JeUOqzcVvzAufTFlD512ZK/cP21CCHcKjs9rSHApsveHNRAuind7REmHCLw/0ZeNjd/lmyGYSMVNoAqHiouoXXnHrYpUsAb3iBGGsA+JbiapycHchqHiLT4voZsCSFq0GIhREMz2FRrLYM8yuAjcG1XhQAxinbaXUFu41o0Gca93kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6h0sh6UWxNAVB+AqfVB1G+dZldmXOFcT9lsKwBqCsfo=;
 b=dMm0mu43nxcusDE58mJTq1f7gSpe26lm1Sa1e5bdpXHyd3oa1lwwpHUSLZSnEWWBT/1qMeHDiW4uIae7g50I46KQbD5JaCSTk96KExi2RyoUnHa0LCKKGS1iXRROymiM6bmueJZRnPv96rEG4M+DpnqL66BLS197SKAVJQQQ0sJ5nc7Ul2izQAeU9NXPPJuu9TWn7lhYq4Xdp/R2vYEmd/sJ/LzqPlUqfOSbuS1GU8KEwfH1SYPaS8iqZWD8EfloozlpYOvexgfn5sRnCkerosF+JLdaukbsSZ5Wa9Z8DT893wWCzStkHz13FyECGC2DvVFtTI/BqaFk2JrYbCLrRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by SJ2PR11MB8497.namprd11.prod.outlook.com (2603:10b6:a03:57b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.16; Tue, 11 Feb
 2025 04:11:12 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%3]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 04:11:12 +0000
Date: Mon, 10 Feb 2025 20:12:11 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <saurabhg.gupta@intel.com>,
 <alex.zuo@intel.com>, <niranjana.vishwanathapura@intel.com>,
 <ayaz.siddiqui@intel.com>, <tomasz.mistat@intel.com>
Subject: Re: [PATCH] drm/xe: Add per-engine pagefault and reset counts
Message-ID: <Z6rOG/Q9UYScbD4t@lstrano-desk.jf.intel.com>
References: <20250210193545.96003-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250210193545.96003-1-jonathan.cavitt@intel.com>
X-ClientProxiedBy: BYAPR03CA0008.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::21) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|SJ2PR11MB8497:EE_
X-MS-Office365-Filtering-Correlation-Id: c45d357e-a5a6-4b13-c270-08dd4a521e9b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8wo0KFw5RfCcQCtG7MxJBAAussUvqGguM3jY2QVwHjuY6cPbPBVZLnbdfVXV?=
 =?us-ascii?Q?gWhNLREiZfIboSMRgy7go1reNT2O9swALA9+6PUN99uNUn371ayVIdrbCM1Y?=
 =?us-ascii?Q?lTPgm3HHiQtgmU5mQ+EmzIrl3hDrg68fw7e8u0sCO9hyRn0T9QbquqNCTzcP?=
 =?us-ascii?Q?39z1SwFP1MI2FUeljuPVV05i0kurVH3E/+9MsH/W7wv+5IpNNyNRIoMCQwuR?=
 =?us-ascii?Q?chWvxq+upeGrqhNPJOR1+K69UZS3VPSLh4Hq0pdz7yLEIvhM2nlS3U1+AoO9?=
 =?us-ascii?Q?M97U/jfeu/Z3zExeHzc4jOaaJGIVH5BkpeDGX7ckvRFS7X6WZt7RJtiBmYC9?=
 =?us-ascii?Q?emr9jqQx/IKQL6IQjdwxneVkU2dtLC+Fo5CGOWCEg19U1g8xO/xdi/xrQC+E?=
 =?us-ascii?Q?F0iB8JMSq4Dp5MDlY37mYmFf0tErkzEggVUIZdeDT3zGtZyZt5usOi7kzbHs?=
 =?us-ascii?Q?UgHr/Z/veUCWiIaFEcXjIuo30qEpQFTf/oPt6ER51Q3/64h4A0XZEYkiREzq?=
 =?us-ascii?Q?PaF8y2LvVXdGvhCWvmGgj3prtHStBy77VPK8hKtC6HiIZOw1dhEBu9nwtLfA?=
 =?us-ascii?Q?fic/v33n3AWAkNGIpf6zGqZ3UyV2wIh99dfUoDuP7CpVUbvJad+LVc4hSvhA?=
 =?us-ascii?Q?8deK6qMiDtMaRgZd646Qhk+cs4BdlqixC5Rrg81v8vEG9HlzAJjAf9Xc1XIv?=
 =?us-ascii?Q?iaTVcY6YEvGFE1cT+GJT1c/7AASVo0dZweiGYAF5z3onavs1SMNfQFJ76wy4?=
 =?us-ascii?Q?dnkQRhXcoO2PROsU1MOF/OM2TTGNsETaBcKecvwkvnKcFi94AIoMMoGVnlw7?=
 =?us-ascii?Q?RWSWz5baF2ikyn0b4yt0mwjSkqNhbpkPffFR8/NcPojjBo+mm9n0I6ca8A8k?=
 =?us-ascii?Q?Hb1obRd6eLlkqN/04JdrF+kGPawrqiVpDtFuUxy4+24dV0YLrKlZwFb8jzXH?=
 =?us-ascii?Q?vpluAKh70k9RJT2gWyXNd02FTior2MYXIQeu3Kkfe4DEtI/tln0Wv0L353xG?=
 =?us-ascii?Q?m3VOlH0p8RYfCzENw654S115qVJ8SQCf9bp6pEvEbeUXbuYQpHXQTv0ZCptd?=
 =?us-ascii?Q?1zO1zPHctyQqWew+XLgf8x0v+bHR2rQS7Si9T2raSAQIyPVQ/RZJ5UECFwzT?=
 =?us-ascii?Q?cryomqzuef0BSLzP2t17TxgAhcKH+DIvp+C55KS4D6/p8zE+sT2k2PwJJo1i?=
 =?us-ascii?Q?KqY2FhzEBuq4nMF/QuR0/a4YJ6oZ3Dhhayi8KHjTTKFKKQ2sK+FaWSSL3czj?=
 =?us-ascii?Q?47oLYHGiuQBiFR8pRv96Dj114/3/wiJ5rSzmjlnyi1bNLSekRyF0HjlqusIG?=
 =?us-ascii?Q?l+Dqyu0aovhAJC5sk2knuf495I7hy0ycgvvSe2XtUHZX6rDbWn6j/ueGbGZx?=
 =?us-ascii?Q?56IrubsG0XD0i0JyC5WJzwdFewgK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6m1Bn2cxLuWFi/sLx2/rswM63g7nxCVTj3vcSY0gw9LUEiF6PvMTphk+G73v?=
 =?us-ascii?Q?D0TdO5IHClzfM5YlfExQokj4gqjhQEzBvtj2wIBSJSZ910s8mxTd29KtOcVG?=
 =?us-ascii?Q?3KTnc1A3Q95MAliCyehr0/5MgXcJQOR84RcRTu1PChNIkVeWwPsjc4NN9Ckc?=
 =?us-ascii?Q?Ufl50c1qbx8qYMzZg7EgFTHUq6hptaFDufY0BYp8Z9lihl7JSgC9xVNzcM/9?=
 =?us-ascii?Q?8cCzNxRXzf5RbPXGt1KoJ6JVQwGzhVv59O6QONkcZJHwwoRY3/X5RkaJstdK?=
 =?us-ascii?Q?FOD6QePMahxPrfsYi2U3z2QMqYQ39nLSy/wM8XUDA5MPHINrNUcEjDU0CdxZ?=
 =?us-ascii?Q?GY6vOuFJYV9iEsCClthZObn5Xwr7RTm3qG9e5Q5ylY0dQ8pE9DYhPCDh26B8?=
 =?us-ascii?Q?vnhJBKq8ABqOoKtLLCatX5+qOQw+n/HXMfqlCKIX/V/pTjpT03mTMYrQ6JHH?=
 =?us-ascii?Q?3Or9ENHOEXwuv2i+KhjF1CRx+HuhUq3MGwwotfgZaNIcsirlVaDjlSO/oQmB?=
 =?us-ascii?Q?303oOl2BBqx34YijhlttOJR8GcrOXCVZ2um+GSSEin/JJcShSbriTzw9cDe9?=
 =?us-ascii?Q?PVMSyMlZO38Vqrr0wsgC6Zh0lwPVh37Hfogt9fmjZUW4cLbJTn8EhjSw4B1j?=
 =?us-ascii?Q?jabPOeWGBubLFueNmuN3bEp/pS/s9QFLcNsd+8zaHpWGb76zoteFjTtkXmo7?=
 =?us-ascii?Q?QiCLRWAsglvNBG2yaCOQFoqD4yBh0hDrCp49IWlA8ocLLxAyNVBXhVQ1r8mE?=
 =?us-ascii?Q?RDmfr+xTBD0NEhq2bAZ8U4rsd2jqInw85z2Rg2vMhnpT9p5gextgIJ0zRt02?=
 =?us-ascii?Q?6Xth4knSQLAOnAMr9TCdw2E2iG9Pm8mm//aM7M06Dd7RUCLg01ueY56w+UeN?=
 =?us-ascii?Q?a1YvsrbVHOTOtNbjCLQkR/my3KWqt/MLKhv0G3KG0GS3sSBaaZ981jY5yD6U?=
 =?us-ascii?Q?zt0s0sMQHdl7PGt8BWpBXXsxNFpgMlhQ1TuSmh2DxSXs5VKiaFzo0CW8zQy2?=
 =?us-ascii?Q?UlslxaPjJ/u7pjqk9nEN1U+OL6iesnUH5SfSCMToLtlJpGOblwFleuGUBt0Y?=
 =?us-ascii?Q?k6DXptw8jRUSZVuLNkR42+MMcxF4a8u6Krd5fIQmo11+F8Ulk7IB1IW8uhVw?=
 =?us-ascii?Q?znFRbK6unsbrwWLKcjwudGNoRNuFKVgD69bojq6tFwZQossx5oS/SHPaRxvD?=
 =?us-ascii?Q?9XH93Tz9YgIZ1qjDGmkw1sYp7mSTuswuQs503URV8mcLC+4QogcWb4nm/9Pg?=
 =?us-ascii?Q?Cl0MI8ReXZHgo6yLIyZAzAYo1c20Fy4xpvhf48//QujCyS0QDqDkgiFdzp5g?=
 =?us-ascii?Q?jeQXmEt7IlYSmiofrrl3Mz+DJSz5Vkpo2lMBGf4frxFnJyfdGG6eWSs5LiA2?=
 =?us-ascii?Q?aLK0IHPZk1YZCP+FOlu4uTkZptlnKP1fnFeTUw7NGWq8Xt2unSfgPRbszUNR?=
 =?us-ascii?Q?c6HJ6ZcjZA4KLGKFJkf4k1y+GFDWn/MRaW6jlRLkR1tdxAQWP3oef8N6i5Mf?=
 =?us-ascii?Q?6RMQBwb4+BkufxEBQHnhXxgUk5dfTsC7gl0/QFscA8iqFRwCcZJsDkTwbyhC?=
 =?us-ascii?Q?MDNp9+4yofuIOQfWBEmAMLcxY3WYqA400LDlv/qM8o5R3PwmzeLX7g15t2u6?=
 =?us-ascii?Q?Bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c45d357e-a5a6-4b13-c270-08dd4a521e9b
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 04:11:11.9405 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cq8pkI3JEW2evdRnaNDsUipiCikn57hmhEQGzk4kyHb0po2vqZtNZ/Lmud8e/gvxgmevydI+tWY/YesgytNmdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8497
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

On Mon, Feb 10, 2025 at 07:35:44PM +0000, Jonathan Cavitt wrote:
> Add counters to all engines that count the number of pagefaults and
> engine resets that have been triggered on them.  Report these values
> during an engine reset.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: Tomasz Mistat <tomasz.mistat@intel.com>
> CC: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> CC: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_gt_pagefault.c    | 6 ++++++
>  drivers/gpu/drm/xe/xe_guc_submit.c      | 9 +++++++--
>  drivers/gpu/drm/xe/xe_hw_engine.c       | 3 +++
>  drivers/gpu/drm/xe/xe_hw_engine_types.h | 4 ++++
>  4 files changed, 20 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_gt_pagefault.c b/drivers/gpu/drm/xe/xe_gt_pagefault.c
> index 46701ca11ce0..04e973b20019 100644
> --- a/drivers/gpu/drm/xe/xe_gt_pagefault.c
> +++ b/drivers/gpu/drm/xe/xe_gt_pagefault.c
> @@ -130,6 +130,7 @@ static int handle_vma_pagefault(struct xe_gt *gt, struct pagefault *pf,
>  {
>  	struct xe_vm *vm = xe_vma_vm(vma);
>  	struct xe_tile *tile = gt_to_tile(gt);
> +	struct xe_hw_engine *hwe = NULL;
>  	struct drm_exec exec;
>  	struct dma_fence *fence;
>  	ktime_t end = 0;
> @@ -140,6 +141,11 @@ static int handle_vma_pagefault(struct xe_gt *gt, struct pagefault *pf,
>  	xe_gt_stats_incr(gt, XE_GT_STATS_ID_VMA_PAGEFAULT_BYTES, xe_vma_size(vma));
>  
>  	trace_xe_vma_pagefault(vma);
> +
> +	hwe = xe_gt_hw_engine(gt, pf->engine_class, pf->engine_instance, false);
> +	if (hwe)
> +		atomic_inc(&hwe->pagefault_count);
> +
>  	atomic = access_is_atomic(pf->access_type);
>  
>  	/* Check if VMA is valid */
> diff --git a/drivers/gpu/drm/xe/xe_guc_submit.c b/drivers/gpu/drm/xe/xe_guc_submit.c
> index 913c74d6e2ae..6f5d74340319 100644
> --- a/drivers/gpu/drm/xe/xe_guc_submit.c
> +++ b/drivers/gpu/drm/xe/xe_guc_submit.c
> @@ -1972,6 +1972,7 @@ int xe_guc_exec_queue_reset_handler(struct xe_guc *guc, u32 *msg, u32 len)
>  {
>  	struct xe_gt *gt = guc_to_gt(guc);
>  	struct xe_exec_queue *q;
> +	struct xe_hw_engine *hwe;
>  	u32 guc_id;
>  
>  	if (unlikely(len < 1))
> @@ -1983,8 +1984,12 @@ int xe_guc_exec_queue_reset_handler(struct xe_guc *guc, u32 *msg, u32 len)
>  	if (unlikely(!q))
>  		return -EPROTO;
>  
> -	xe_gt_info(gt, "Engine reset: engine_class=%s, logical_mask: 0x%x, guc_id=%d",
> -		   xe_hw_engine_class_to_str(q->class), q->logical_mask, guc_id);
> +	hwe = q->hwe;
> +	atomic_inc(&hwe->reset_count);
> +
> +	xe_gt_info(gt, "Engine reset: engine_class=%s, logical_mask: 0x%x, guc_id=%d, pagefault_count=%u, reset_count=%u",
> +		   xe_hw_engine_class_to_str(q->class), q->logical_mask, guc_id,
> +		   atomic_read(&hwe->pagefault_count), atomic_read(&hwe->reset_count));
>  
>  	trace_xe_exec_queue_reset(q);
>  
> diff --git a/drivers/gpu/drm/xe/xe_hw_engine.c b/drivers/gpu/drm/xe/xe_hw_engine.c
> index fc447751fe78..0be6c38fe2a4 100644
> --- a/drivers/gpu/drm/xe/xe_hw_engine.c
> +++ b/drivers/gpu/drm/xe/xe_hw_engine.c
> @@ -516,6 +516,9 @@ static void hw_engine_init_early(struct xe_gt *gt, struct xe_hw_engine *hwe,
>  	hwe->fence_irq = &gt->fence_irq[info->class];
>  	hwe->engine_id = id;
>  
> +	atomic_set(&hwe->pagefault_count, 0);
> +	atomic_set(&hwe->reset_count, 0);

Missed this my previous reply, we zalloc basically everything in Xe,
certainly heavy weight things like enigines, so no need explictly set as
zero during init.

Matt  

> +
>  	hwe->eclass = &gt->eclass[hwe->class];
>  	if (!hwe->eclass->sched_props.job_timeout_ms) {
>  		hwe->eclass->sched_props.job_timeout_ms = 5 * 1000;
> diff --git a/drivers/gpu/drm/xe/xe_hw_engine_types.h b/drivers/gpu/drm/xe/xe_hw_engine_types.h
> index e4191a7a2c31..635dc3da6523 100644
> --- a/drivers/gpu/drm/xe/xe_hw_engine_types.h
> +++ b/drivers/gpu/drm/xe/xe_hw_engine_types.h
> @@ -150,6 +150,10 @@ struct xe_hw_engine {
>  	struct xe_oa_unit *oa_unit;
>  	/** @hw_engine_group: the group of hw engines this one belongs to */
>  	struct xe_hw_engine_group *hw_engine_group;
> +	/** @pagefault_count: number of pagefaults associated with this engine */
> +	atomic_t pagefault_count;
> +	/** @reset_count: number of engine resets associated with this engine */
> +	atomic_t reset_count;
>  };
>  
>  enum xe_hw_engine_snapshot_source_id {
> -- 
> 2.43.0
> 
