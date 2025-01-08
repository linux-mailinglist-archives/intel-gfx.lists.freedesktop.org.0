Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B44A0672A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 22:24:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A66CF10E94D;
	Wed,  8 Jan 2025 21:24:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="egMAUKmZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 534DF10E1DF
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 21:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736371489; x=1767907489;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oLrjOyWFXo9++Gkf4nSTdd8Z3qG8Ip28W1oKZfS983E=;
 b=egMAUKmZ19hd9YKygh63d0HobtzFrtPzmDhOrrg9Fg/EhXMbSFnom9F5
 VfHfsJ3n2b/b/CpL4ZAh3e+SgSYue+VWqmVTb8O6JB+i++AkfLqs951sh
 V6KeRy7lkPfW/0Oe/nPKs0paZoKFy8Si3hViKTMAcWUjdd/5YXAkqT/bU
 a6TNFSho/wpj33oF0cRxr7EWp1Vv6Og56hPWEcaRkvskfMkciqZQMjqFY
 Uidd88altUKaHpLeoz1+sXz3p+HaVq1MEI8ejPc3YdYAG7x/IUgWzre0s
 yOKONOeEAGO3obeLSEeL3E0NWBBX9f7mz8nwGSe9qSK+N+n4xzhayNJV8 A==;
X-CSE-ConnectionGUID: u3NMfgIOQXuNDrdn1ET8Aw==
X-CSE-MsgGUID: pZQT3YVzR6OTAd+tjuesPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="40295363"
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="40295363"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 13:24:49 -0800
X-CSE-ConnectionGUID: zIhtrJtoRkq9ipOaJ22h9Q==
X-CSE-MsgGUID: maC2tP35QyyzkmE2zRKOkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108325000"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 13:24:50 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 13:24:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 13:24:48 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 13:24:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F2Yp2nTOVsmJHEV25kWhECe7C4FMgkr8HRGQs/UcwktvCmV/fmRp7vl1kwy4HJCV3GHQ2K6ZIcCuYEtSX+HX6o1xyw3VXVi0asrVip3B6J3KMQ0Ym46sagfP4j3qKdRmIB702EriGCa5ETOt58MmA4jiroBSvT27wwpHY/SsaK/DWgrminkuaqB/cuhBFG2Zi1yaOPDKgjLJ/+9f4u+F5+/iEprHeiS7v9P1t+tNxLmrjcRSO9bOeYiMtQeZM+O0Q1A4MNYHQ0+gy/z6RC67nBmrQLkPX+OYhfDH3HW3+sKtHH6b6QRj8vrqHNouee6Sa3Z7BZsBj8nNbt/6Zvo6UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EkoFyraN6mwdAJ1SlkCPxpiGYwputu5vHNlh+yoTXPo=;
 b=hnxfpeEzG004s5ygh8Ss/YNAlxvxk6RLB2Cfhf/SylOhuQZk5sanMSiokIXvWbnipFYKIx2pca2Z76zMpfp9Fc421vUlb0rv1PIWlsdZbnytyY9EOT+veee+DCI2uYjrMz6D1lttcVtuP3pvwsPrafa6gGWTHFl/O9Y9qo9FwJzJ1VqTkdxcD26mI1tM+SFr3H5ji6Ap5hgCrRWnt1wSOci3VoxPl6W027dfZOr2CpV6Xr+dTakq9n/JJUm9hwGL3Cw8jwi1j3FzvvMRRC1l2P616jsPmzc3EU3hIUmgUW0QacC4vndzyoJ6Sbm+2LGb3A5vni5kl/GYexNVribyQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA1PR11MB6323.namprd11.prod.outlook.com (2603:10b6:208:389::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.13; Wed, 8 Jan
 2025 21:24:31 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8335.011; Wed, 8 Jan 2025
 21:24:31 +0000
Date: Wed, 8 Jan 2025 13:24:28 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 5/6] drm/i915: move gpu_reset_clobbers_display flag to
 display info
Message-ID: <20250108212428.GK3224633@mdroper-desk1.amr.corp.intel.com>
References: <cover.1736332802.git.jani.nikula@intel.com>
 <80abf659262f193829e840db3c4d172731f08e33.1736332802.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <80abf659262f193829e840db3c4d172731f08e33.1736332802.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR05CA0016.namprd05.prod.outlook.com
 (2603:10b6:a03:254::21) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA1PR11MB6323:EE_
X-MS-Office365-Filtering-Correlation-Id: c3f4569c-a15a-40ac-116d-08dd302ad709
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rTZH9hn6TPirvj7Y0rnQsBmaDg1eYTn4Z65cFLAu/Gs8amJB8PPxEyqUOIT7?=
 =?us-ascii?Q?cwlVJsAQVkTFAH34Fpem9uk/p3HxABGxS2nWNjABH/6I75/aEZkUZPpuOwQG?=
 =?us-ascii?Q?n7YDgz1MxukSEj168sPBqnYgwpcZqLP7GiXel8w6jXm1wiolxcuzfHlVNanK?=
 =?us-ascii?Q?P9dfTlJHNdSdC8rNZ3u8XEzBTaXorsgTTnpjBYEoPMYWmfzGUip0eTkg6Vg0?=
 =?us-ascii?Q?bhXTzsphSYoqa4/d30F2jepCJAEQDNz/qaCgnYnZtRC8e6lJJw0KvTt/4eRp?=
 =?us-ascii?Q?1Tbe/azUVlmlLLtSabMqukP18eS4JOVZKTpax9clb9TB3t8it51TBUYBBEAi?=
 =?us-ascii?Q?DK83JxZ51ZckBBrYuE5/KwJlYiitMMJJtLL6ywrzOJv7bZii8SprXI3mHLEZ?=
 =?us-ascii?Q?zjeR+LDec4U1YRPv4DABpE3+OihC+AqA7SJRI+7wF4BrYOopzmtclZZiTUp7?=
 =?us-ascii?Q?Ys00N9Z91oXzg/S9EebtqrVmn6jfdjUf34oSgyqdgfRZkkKLMBFBBd2VV4Uz?=
 =?us-ascii?Q?iHc3MyJc4hjK4tpOJhcs/5FTn8XKAmqLoNFQbR/DXhTIx69YjWxW/NiNqeT3?=
 =?us-ascii?Q?ovVavoBmwKL+VZRCRaOMvV/omMOLCcjaHW00ZLBLKNnUpk98OMZ+LJmxVtTG?=
 =?us-ascii?Q?2giqYDCGQbdl82SJMMF/IlSbbCnfqPP1o3vIj2fX1dVy/aGTz0oAh71FmM/a?=
 =?us-ascii?Q?IkLq2jQUs/DVzxl8FMFhE91QEv371aLPK8VJTvsH4e8z2hapumqMbJH9lBxc?=
 =?us-ascii?Q?Kt7fCWUdPp4uar5ZLTRcodErTAw37UPYtvPPyhFx+3NYRu6ljNH+iheMDPKW?=
 =?us-ascii?Q?WmrhXrxjckKCT91SERUIUsax0ZEipevTjxJ3Z/V9o/LjdsOJBxACFqJPSYLu?=
 =?us-ascii?Q?rOadHN+7Q5rz8D3+CO+sibOA61Ksa+4NON95NsHmGKgBC6+WIs2McvD/u/f4?=
 =?us-ascii?Q?6sc+NPOHiWWBWJI7DyZhSWiwgbv9XlPc41z+d82vCosCtQV2E6Pl6j83/hAr?=
 =?us-ascii?Q?mlDkPtICzqKayjn6IbUy+Fbo2qD0PBn4EKTU1JQLcibU6EG28sQBRoTJjU4R?=
 =?us-ascii?Q?iJxtTNR9cuZHD8OiNdQHpzIHKX71LIpuUYaIPijxmuNo7mK0fpq5WnnTABlu?=
 =?us-ascii?Q?0LLCtUSaMGgfHwTJYWQAC6JKnHTEtUtNbTl4OhymrXT3AH0ydgww4ToJxC4M?=
 =?us-ascii?Q?2VRzfvtolTXp/NQV92UyCMnmZu6Qr9/o5qJUNliNxKeqaPaahWI9H9+dRM7S?=
 =?us-ascii?Q?chh9AEraizKgDDE5dA1WYSdQrQqTasDkcyRGKFybQZJFH3bEy+4BCk+ZmjIC?=
 =?us-ascii?Q?ToxEBuhW0D5V6cq6+LCUAsPLvJDp4rUItwXyXn9VHHzr/MirYdjkxrMYniz/?=
 =?us-ascii?Q?lU1DyHmDwVD2GrTxnKvZUHhGFUKy?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cXA0er6KPl/Pje+Q4xkJ/EXPCaD5i+L96fRsYmGmCp2qVi4ZxUUCXsIppyoV?=
 =?us-ascii?Q?xy34ox1BRXEpelCXDT8ZKHIhpHFOCcs8vO4L48I/Ur+qFRNEhtpB1QHQTNPa?=
 =?us-ascii?Q?9Xa6BHwMw8NC6dgTwfahsFbN7cJATzfjF8WmTa8M+hPV4shQhdqzLd0/veaQ?=
 =?us-ascii?Q?X2FBeE1HWTJBDru0NM+3O1vBGScuXVvD/rpn/iWgx7wGdMtoQPNdQ0p3vmBT?=
 =?us-ascii?Q?pGRdLwMueOwqm4lTONEx0DVnSg4TyJhGCBxj84B3Dfxu75yuXdwxncsqohsw?=
 =?us-ascii?Q?gk8sdabK/0j2zDciVbpaz9IeME8i2Cn6Jk82IGMLToL2mgJzmoD5C/U/OzkN?=
 =?us-ascii?Q?5S07ywbmyxxaFScFbFLM0WUGYQMcVS86yS39NyNOaporDKcU0mfsK7QG1Pzz?=
 =?us-ascii?Q?AwhkqJKmlrUCKbFwwsy4FN0XximBb01eteNCtsIWugunMWaqL3jDLH0YqtdC?=
 =?us-ascii?Q?XXAGFBIG3P8+wheq5pv/cheVT455beyyAegDE9Cd2QHLIWuFkJKHhsIdzAqZ?=
 =?us-ascii?Q?1uvdk2kSoH4lrWnO47epuLHs6Rrb5My23HY/n+dRos8lVIJ4UK5WRGEHdubk?=
 =?us-ascii?Q?IO8WGXzg8se5Geju3SHxB5AKgGE5imTgfbLYFUABd+rTa7NHk6AOF7FWBip3?=
 =?us-ascii?Q?EQUzWnmYFwKbptk1fzGKWMFxl6+54arCqgtZ2X6xN3nSPolyDJNzN9bGam3X?=
 =?us-ascii?Q?A5M7feOFBvv3SxVGkmr84tcl92e8oH6bEKubO4Cga5l3f1RqlDzbrmb7gb0R?=
 =?us-ascii?Q?5DmvbHC+qdL9C3ig4u/mSrQpqhMoFAfB5m3a/8Ggsx+YWBcxYX367XpFnueo?=
 =?us-ascii?Q?1zJDAlIVy8zqY+UuOQs4+8b3AlRGZ3EQTa1E4qtElepxUb1Ai9MMAb0AJCQg?=
 =?us-ascii?Q?0j92QRBDzxrDMHgHLRq2NQ3pkDU1TsV0xg4Sw5KELGazKDOUacygnFuUxcq9?=
 =?us-ascii?Q?M7r5iLDgYX1z3qbKqLcKdhuQXi/mCKASt98R58MEDlpS8tpcJ6DJDYEv+y56?=
 =?us-ascii?Q?S7H1AMY8NX2IpiQWvzbcZjYGquZJxZZED/H+zxdy1xkAgp3GS5CwpBN2NA/N?=
 =?us-ascii?Q?UwsZtS2RkeDRoRwgUfd2oc2LCKKgVDE+nrCsducXurAl/lp9MiuldJU0Fhm8?=
 =?us-ascii?Q?w5UbN95w9Q/fezHcJoEfQWSGz86YDgYR4vLzrA1fOuNIJy8CAEt+KmwQH7UX?=
 =?us-ascii?Q?3UOacjGYLe/6h2piQAEAiHdeQ8WhvwE3iRK2KlKWRMs5csYFlFioQCyCobS1?=
 =?us-ascii?Q?BPNlUSvkW0gSMqvJB25aUl8EY8VaiTzVFofO6R27hsQ4kuP7sA5PrC4uFWtH?=
 =?us-ascii?Q?p6WraKx7KObA8crZC5rJBlutz76DPAo8wP5XNAl2WinIwQJyKt4CQTBqBoG2?=
 =?us-ascii?Q?k7sGsawHMqndJLzeMeU83WwaKFxjp9SYPjWqh6wVOD9twa9434b7WBkPprbQ?=
 =?us-ascii?Q?EBoLAeBaeCTSlJ9UIwOw6bKTsqLxgBa/8B6YFMP0e8C535Vx66HljEszGpUs?=
 =?us-ascii?Q?4MO5+2vnjHRzA/WLd4WBT3ZyOkzqhEgM5S9EyTamZP8RAAzm8Pw9Xz4bcDyF?=
 =?us-ascii?Q?RN0oWVq5Juxan4MC5wcwi6qQE1C+PHstlfS8Sx9D35ED2tyoyGug9shvE/i5?=
 =?us-ascii?Q?KA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c3f4569c-a15a-40ac-116d-08dd302ad709
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 21:24:31.2568 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bo1KKbd8sIb+6MuOT5rCOysyUdEHljLTUrvkO8F9MSKHIFHp85ucUXRv+OBP17vcMCV98uOn0/8Sc4L5PZ65BIVm5byadV0t6nQWfAQnmeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6323
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

On Wed, Jan 08, 2025 at 12:41:20PM +0200, Jani Nikula wrote:
> Arguably it's a display property whether it's impacted by GPU reset. And
> we don't have to look at i915 device info from display.

I think everything was so mixed together back on those early platforms
that it's hard to really separate GT vs display in certain cases like
this.  As I mentioned on the first patch, I considered it more of a GT
trait (which we might be able to remove awareness of from the display
code completely), but this approach is fine too.

If we're moving this flag, I wonder if we should also rename the field
from "gpu" to "gt" to help distinguish that we're truly talking about
resets initiated through the GT's GDRST register rather than other types
of resets like FLR?


Matt

> 
> Reverse the flag usage for gen 4. Only set it for the affected
> platforms, instead of all gen 4 and disabling for the unaffected.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  drivers/gpu/drm/i915/display/intel_display_reset.c  | 4 +---
>  drivers/gpu/drm/i915/i915_pci.c                     | 6 ------
>  drivers/gpu/drm/i915/intel_device_info.h            | 1 -
>  5 files changed, 7 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 68cb7f9b9ef3..365120f3c7e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -226,6 +226,7 @@ static const struct intel_display_device_info no_display = {};
>  	}
>  
>  #define I830_DISPLAY \
> +	.gpu_reset_clobbers_display = 1, \
>  	.has_overlay = 1, \
>  	.cursor_needs_physical = 1, \
>  	.overlay_needs_physical = 1, \
> @@ -240,6 +241,7 @@ static const struct intel_display_device_info no_display = {};
>  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
>  
>  #define I845_DISPLAY \
> +	.gpu_reset_clobbers_display = 1, \
>  	.has_overlay = 1, \
>  	.overlay_needs_physical = 1, \
>  	.has_gmch = 1, \
> @@ -292,6 +294,7 @@ static const struct platform_desc i865g_desc = {
>  };
>  
>  #define GEN3_DISPLAY   \
> +	.gpu_reset_clobbers_display = 1, \
>  	.has_gmch = 1, \
>  	.has_overlay = 1, \
>  	I9XX_PIPE_OFFSETS, \
> @@ -395,6 +398,7 @@ static const struct platform_desc i965g_desc = {
>  	PLATFORM(i965g),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN4_DISPLAY,
> +		.gpu_reset_clobbers_display = 1,
>  		.has_overlay = 1,
>  
>  		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
> @@ -406,6 +410,7 @@ static const struct platform_desc i965gm_desc = {
>  	PLATFORM_GROUP(mobile),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN4_DISPLAY,
> +		.gpu_reset_clobbers_display = 1,
>  		.has_overlay = 1,
>  		.supports_tv = 1,
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 9a333d9e6601..3876ca39b7dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -124,6 +124,7 @@ struct intel_display_platforms {
>  #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
>  	/* Keep in alphabetical order */ \
>  	func(cursor_needs_physical); \
> +	func(gpu_reset_clobbers_display); \
>  	func(has_cdclk_crawl); \
>  	func(has_cdclk_squash); \
>  	func(has_ddi); \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index 93399ace7761..e5c1650346fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -15,9 +15,7 @@
>  
>  bool intel_display_gpu_reset_clobbers_display(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
> -	return INTEL_INFO(i915)->gpu_reset_clobbers_display;
> +	return DISPLAY_INFO(display)->gpu_reset_clobbers_display;
>  }
>  
>  static bool gpu_reset_clobbers_display(struct intel_display *display)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 21006c7f615c..85b325bafafe 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -80,7 +80,6 @@ __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for d
>  #define I830_FEATURES \
>  	GEN(2), \
>  	.is_mobile = 1, \
> -	.gpu_reset_clobbers_display = true, \
>  	.has_3d_pipeline = 1, \
>  	.hws_needs_physical = 1, \
>  	.unfenced_needs_alignment = 1, \
> @@ -96,7 +95,6 @@ __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for d
>  #define I845_FEATURES \
>  	GEN(2), \
>  	.has_3d_pipeline = 1, \
> -	.gpu_reset_clobbers_display = true, \
>  	.hws_needs_physical = 1, \
>  	.unfenced_needs_alignment = 1, \
>  	.platform_engine_mask = BIT(RCS0), \
> @@ -130,7 +128,6 @@ static const struct intel_device_info i865g_info = {
>  
>  #define GEN3_FEATURES \
>  	GEN(3), \
> -	.gpu_reset_clobbers_display = true, \
>  	.platform_engine_mask = BIT(RCS0), \
>  	.has_3d_pipeline = 1, \
>  	.has_snoop = true, \
> @@ -193,7 +190,6 @@ static const struct intel_device_info pnv_m_info = {
>  
>  #define GEN4_FEATURES \
>  	GEN(4), \
> -	.gpu_reset_clobbers_display = true, \
>  	.platform_engine_mask = BIT(RCS0), \
>  	.has_3d_pipeline = 1, \
>  	.has_snoop = true, \
> @@ -223,7 +219,6 @@ static const struct intel_device_info g45_info = {
>  	GEN4_FEATURES,
>  	PLATFORM(INTEL_G45),
>  	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
> -	.gpu_reset_clobbers_display = false,
>  };
>  
>  static const struct intel_device_info gm45_info = {
> @@ -231,7 +226,6 @@ static const struct intel_device_info gm45_info = {
>  	PLATFORM(INTEL_GM45),
>  	.is_mobile = 1,
>  	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
> -	.gpu_reset_clobbers_display = false,
>  };
>  
>  #define GEN5_FEATURES \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 9387385cb418..7296e7dcf828 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -148,7 +148,6 @@ enum intel_ppgtt_type {
>  	/* Keep has_* in alphabetical order */ \
>  	func(has_64bit_reloc); \
>  	func(has_64k_pages); \
> -	func(gpu_reset_clobbers_display); \
>  	func(has_reset_engine); \
>  	func(has_3d_pipeline); \
>  	func(has_flat_ccs); \
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
