Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE1CA1882B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 00:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6058310E640;
	Tue, 21 Jan 2025 23:10:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IadTHY9+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B02BE10E640
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 23:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737501042; x=1769037042;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WRim7Kph+yPbexUEwmwCjutKFrKpRwjnJyUq7uOGpN0=;
 b=IadTHY9+4mULtK/pM24rjBQrplIJSDH36fjtK5shcK6NZ5rIInfSd3va
 yQdkTqU/S0MizkWmhgZhVAeeXXoiLmnQmYCfKbJgfkxRKZiMpWTeotHB7
 LBTa2aj5vUtJT/4NxERfMbmg5E3cFRwEqx6/ZC8NJG4Aa8sEhC6a0Fo8z
 nQq63/JDnjYIGORXCbkMNJNZ/ZGIxSAN1mrFcwgEakbRV75yPPTfxV47i
 d8szWm2qeoxMOqKS/CSXOYI8H+dHtCHIPaZ2XSxHqI23Y1BR8dMzff6UK
 Ae5dc7sZqyAa3o6YjBviNum+D86+G22s+hJt2ylE+DF1C2wOxqltiCVsF Q==;
X-CSE-ConnectionGUID: xXkhqwRoRButj/RVMkz/sg==
X-CSE-MsgGUID: v+qt3bnYR3ex+4kbl5vWrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="37849892"
X-IronPort-AV: E=Sophos;i="6.13,223,1732608000"; d="scan'208";a="37849892"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 15:10:41 -0800
X-CSE-ConnectionGUID: Wul4DB1qRPCBVzhKSFi2sg==
X-CSE-MsgGUID: E8Pr8D9xRNGoeMAvzW+HTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,223,1732608000"; d="scan'208";a="106982358"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jan 2025 15:10:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 21 Jan 2025 15:10:40 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 21 Jan 2025 15:10:40 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 21 Jan 2025 15:10:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w4EOB+NAB70r8eHmo5wLV4VpXs+5lenaLzXyCvjcxsVNRQuQ9S9Zw2gO+V8/Lfs78yEEgEhDX0pAi4lfsmWdZk/votEOX0Ggla44F7b53irX7u6uk6RT0UqTZcp5s1zRefOdb7h1RRI1Z+uOXs2GLtbJV7RIUKm0umX/GiyaONz+JclVCtqK0HGOaCKkXaks/vHfcf/Ji+P6BP/jSFmDae9pCCN7X/UqouGBi3bs+Y1ErB+5tss2p3hRFzD2FYQNIxX0ZOLVGYMQSbFmDd5XXYQZ1E71zxgVOKt44uf1RSg4Febk8UYgo0jnZVujScU9PESjM3CPYlRaZ1gm15RSIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nEfx0bhzZ3Hkueevw6DR4TFhHfzNq0xsseODYECbDrk=;
 b=Q95vrl3ckENnpf401S039djLyIY/YELYS7Bukr4ZFlAOvK/Vw5fXJumPu0wU4ABqMIFGZmAOVxEdmDo16xJGo2MdRjRjGFIOZPaihvXtzS34D948qAG1S4mvasjLFZVGY4vQeZMTWvNjte22WWm+9IcNd6i0meTThTgOM5SH/y8R7VscOCTBGvymnrdsD/lU8q0Vi9LwaWGmfC2viBxa5fvtEpOMR61ruHwzE+Ft2DfZIgE5mODXyCNadTeGxc3GwKrzM55nIvwOddnTGlaGKIeETrlP2/X6NhKWgQiVIM+swp345l/lO09Wd2CVp9J5jLrU7Wbxc/xJxg03ffROJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by SN7PR11MB7113.namprd11.prod.outlook.com (2603:10b6:806:298::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Tue, 21 Jan
 2025 23:10:37 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%6]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 23:10:37 +0000
Date: Tue, 21 Jan 2025 18:10:34 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <John.C.Harrison@intel.com>
Subject: Re: [PATCH] i915/pmu: Fix zero delta busyness issue
Message-ID: <Z5ApalwXOr3qOYpr@intel.com>
References: <20250121222557.721355-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250121222557.721355-1-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: MW4PR04CA0247.namprd04.prod.outlook.com
 (2603:10b6:303:88::12) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|SN7PR11MB7113:EE_
X-MS-Office365-Filtering-Correlation-Id: 41804dac-877a-49ca-4a9e-08dd3a70d115
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1/mrJM3MHdKGWbVl1+fex7fY1C/TUJiLOSz7eG8mO0d25HQYqmfPAghypUth?=
 =?us-ascii?Q?7hucvIRFc2LCtNPMawt/xQV6xyD0BXS9Um60xzN5IMEH3jPkLQ78OjrN+K1A?=
 =?us-ascii?Q?SyB8b7vo9m1rTU0dgifSj565ylTP8ktJGN8gSiA7hu54BAkQvl/Hn2ZOgjvz?=
 =?us-ascii?Q?RzdNdlCfAlTFB1xWeyeJfTgDjiZ/NVmMSR23Zrj0PfkaIWrI+xXQ8k63m8A8?=
 =?us-ascii?Q?m2eGGlTYGXVQh8xWjy3Mk/LYRHZZigypoCKeBoSc70Qpf0yW2ARYV9EwL89e?=
 =?us-ascii?Q?orHWdytqr3gf/DzYYgEYXoXeFcVN4q+UlYRyCgjBU/jh/PNav6wL88FdB776?=
 =?us-ascii?Q?cz0SaDKUcPxFe/KUg1N9v9A+tQY0aVWOCEE6CaBTFh/kq0tZdYo2yA93WhWo?=
 =?us-ascii?Q?2DWQSbX+EyEbL7bZsFuhbQXnmgsQrjUbYXU2Lw++rkGwTwuEIh/iRq5Kv/aG?=
 =?us-ascii?Q?/djJxPnvn5OLKtvYH+eTdABY6yt3SQZP2ypaWIPzzyPaFahSVzsBRzwfwpwv?=
 =?us-ascii?Q?ZgAdUg/QdGYWgUGNb+y3rvNxGhMELd+gCCscyaeBhrzuBTbDogjbYuwEDoNr?=
 =?us-ascii?Q?ko+1kvgdIGmMuJMgl4HeyxZuSnxmMY/pIxLIq6ReAB3JWZBdy/QfriILZBqo?=
 =?us-ascii?Q?dEiJJ7/9bXJIyhnKs23jnNF2dM3BJZAF8/0nz4ZW2Pb3H7wj+l3FKYWeSCgL?=
 =?us-ascii?Q?PkjVHZzyhQbBvWN/xASLImmYKoTucgj7Xxpg2U240FsI9BT9ELwP+ygw6dJv?=
 =?us-ascii?Q?sNDiEIsDTXXuovDtpUWlOdZA7C8fIHxKivh1RUmrPVhqQj6E0JtvO3QUS3KL?=
 =?us-ascii?Q?jiEEfwzN1fAfK4zfyK854NJrt/bYgbcss78ljAHHW6empzYAcanydWovnUBM?=
 =?us-ascii?Q?i6v72gFEg7dJhU6WrncfVxKsf5R+ogteyI8KoOEPfE/gXGTAGhEPc+zkqv2z?=
 =?us-ascii?Q?EZAXSTM/TxslFREZ2IjqviYo5H/8OZlrstzSo5aq6K3Hye6j53CW3ZSqEZ+F?=
 =?us-ascii?Q?54Jdo1l18wcTnjqN+rBWbNzaU/f1EsXPAJ1CFCvXuIlaN1ETeo5EA1fZRZ3r?=
 =?us-ascii?Q?ZyMgFCTxKChuFLCdMjbdzc8dhiN4cC4qToDW0Dbku/NduNyUzN+EnnGVhqt6?=
 =?us-ascii?Q?ifmjVxj260NDiDMFjEliFWkB8nmltJukYUnwv8OCrD1mZsCNX44JoBECWRM+?=
 =?us-ascii?Q?dQyiUMJbDk774TLed5/dUA5jiib9PBBmQHN+Y8CRTdpZktcD/srYbzqWkhnQ?=
 =?us-ascii?Q?bYnbXvBcNfJ1sLCbMO+5NDhDf+tRZB/7mQ7W5IDsRbklOjiUf142KDcPLR/C?=
 =?us-ascii?Q?5VO94a2DquZcKi1bvRhppNjaMV/0A+/LBJ9QqCWE1JUzQQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ougXGZFjxbthZHwXyS/bb7RiwknaSI7zPGiZRs3XutjOQmkG6GEBd5MOFmBj?=
 =?us-ascii?Q?vkDqucEX1Pof+mnExEORlW4xGEZspXcaR8DzPclOsJUJTgiq3KJGOj+/DXyM?=
 =?us-ascii?Q?he9Qf3t9bf2uH4ntBlq3CAEpzad7T1KSLb/cRXL2A2IEIACBGPU+v4XQRjTx?=
 =?us-ascii?Q?4GDYJWeirLEnxIqGiKvPdz2p3um/+kD+MgtHsX5CMfrc0QIA1migpUzMD6xq?=
 =?us-ascii?Q?baSxJvDCqJLlPcI5dseTZnsQ2a7dco1D0DVqsbQETD+FDWAYu8VsReS/lKgp?=
 =?us-ascii?Q?nlqZbv8xnl6SdcLl5N0EgqvoHEXCjYK7HqNA3rRHIVe57lsw4DB9ufaghaXX?=
 =?us-ascii?Q?IC5A7XtZvqV2VB4XQJUlF9gZPI0HeTXaTtK1IDqw1VjFwpffQlR1GQSwKJXS?=
 =?us-ascii?Q?wz12b+Z+xCYIHR6MxmcCAKcbDV9JHfgTC3Il40gNmQUamln/9CgrAgKT7HST?=
 =?us-ascii?Q?j3mtTcRiqmogupLprUmA8r3yU/PPuxBqBeoppX3KrBtaeeCVRA8+d6dNnuHX?=
 =?us-ascii?Q?M16fE/IdmjAQcejnV/I8Jn2kXQnP5oSkVEt6XCM8Eot04A3TkTSHZ11mLviY?=
 =?us-ascii?Q?FyIgtwZPcj+AOE9ZcklmSeJspiLuRwJ1lL61RtG5NaMPuAouVVaLOr86EXrj?=
 =?us-ascii?Q?Oryqzx0yjYZXgZEeYfjedLBlOegQJpaGZkLl22jOXu2SKBSBdKlhX6a4EgbR?=
 =?us-ascii?Q?rhVgL4TQYSyGlBvU1GTnQn9wSk9IrNn33vYIkF2acSfg9QGa83j5hbzGsAla?=
 =?us-ascii?Q?Pigg6ZdsLyIyM5UYE6N+cBcTvzYLsvxOpQoEJ3omlhEPn9onFmGHt5HkvaNg?=
 =?us-ascii?Q?eiG+LmGC8LIzimLZTLa1XEqlW1c4Lzcu2bhziK1JRf1ksIh1dOq6NDBsMILf?=
 =?us-ascii?Q?hHnFIsnWjd6AzB/lB35RQpiYNnW7O8p0TselbNHeBLmO8V0k/4o/kxZ6thId?=
 =?us-ascii?Q?2o3OnWTlRPZtZ95y/4Oy3cD8MMEymqZWMsnot5FBdDazqzi8nCFxDUvP2dfO?=
 =?us-ascii?Q?DT8Xt5kHy5iOYY3oVqkk2ryv7ODNARemNeX4ttXWYW5smYM/htfMzp1wID1P?=
 =?us-ascii?Q?KqA6XoESwCkRZKt9HbbXQyh1Cp0w6bPC4BG12nP/SCjRnRG9AW1BoyAG0/i8?=
 =?us-ascii?Q?daH3+BRV5Wr7Y4kHz6xuABLKmOnUS51E5oHJwzFBFcj7iiWgLHG/tQcw1EG8?=
 =?us-ascii?Q?q/A5AHzb68DGi/YTBdEeZ/2MQnKxx41IfyNWINW5ukIjd6tbI0tHJITxSWUQ?=
 =?us-ascii?Q?UeCF+r0FF1gyRdBUwlkBI7FLNkA9JfBqhNfYH2c6Mu9Wvc6Pr8PZXE+yk77o?=
 =?us-ascii?Q?btUDamEMpY1Kg9A9yLW9E8Ugg5w9KaSb0PljKPSUFzJCsSNKOuB1nGxN14d8?=
 =?us-ascii?Q?3JxSRcM3z3Hy1ki4TbDZw+7EcLi7fSvHi8iEqmIQTHaKbcJVrPJuYfmaZMx4?=
 =?us-ascii?Q?D4TX6Rx9wyqQTQWibmxZCNi6fm9WRo/tEKnD4YLmI0u9kQEIGQPxDx/QSsqp?=
 =?us-ascii?Q?rwLVxuOgGLEYRl21UMNmW2qG8l6kYgKJdEW9nD0HARmeedIHdNAKoMS/jV75?=
 =?us-ascii?Q?/f3fNu2aoowj2vQjEDdjeTnbKSEMR90Hdtj8h/u/ri8yUYOffMZdRql63HGg?=
 =?us-ascii?Q?jQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 41804dac-877a-49ca-4a9e-08dd3a70d115
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2025 23:10:37.7057 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FGciJibsu3VW0f0NGe5Vlp3ONSRfZdj7ud3iHzY7mRuyuHje8AXFkweAcWR41VWe+lJLYLV7ljj4gOKPxqxRiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7113
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

On Tue, Jan 21, 2025 at 02:25:57PM -0800, Umesh Nerlige Ramappa wrote:

drm/i915/pmu as tag please...

> When running igt@gem_exec_balancer@individual for multiple iterations,
> it is seen that the delta busyness returned by PMU is 0. The issue stems
> from a combination of 2 implementation specific details:
> 
> 1) gt_park is throttling __update_guc_busyness_stats() so that it does
> not hog PCI bandwidth for some use cases. (Ref: 59bcdb564b3ba)
> 
> 2) busyness implementation always returns monotonically increasing
> counters. (Ref: cf907f6d29421)
> 
> If an application queried an engine while it was active,
> engine->stats.guc.running is set to true. Following that, if all PM
> wakeref's are released, then gt is parked. At this time the throttling
> of __update_guc_busyness_stats() may result in a missed update to the
> running state of the engine (due to (1) above). This means subsequent
> calls to guc_engine_busyness() will think that the engine is still
> running and they will keep updating the cached counter (stats->total).
> This results in an inflated cached counter.
> 
> Later when the application runs a workload and queries for busyness, we
> return the cached value since it is larger than the actual value (due to
> (2) above)
> 
> All subsequent queries will return the same large (inflated) value, so
> the application sees a delta busyness of zero.
> 
> In order to fix the issue,
> - reset the running state of engines in busyness_park outside of the
>   throttling code.
> - when busyness is queried and PM wakeref is not active, do not
>   calculate active engine time since we do not expect engines to be
>   active without a wakeref.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13366
> Fixes: cf907f6d2942 ("i915/guc: Ensure busyness counter increases motonically")
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c  | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 12f1ba7ca9c1..b7a831e1fc85 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1372,7 +1372,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>  	}
>  
>  	total = intel_gt_clock_interval_to_ns(gt, stats->total_gt_clks);
> -	if (stats->running) {
> +	if (wakeref && stats->running) {

do you really need to check this wakeref if you are now setting running to
false earlier?

And if we do, what about moving this entire block to inside the
existing if (wakeref) ?!

>  		u64 clk = guc->timestamp.gt_stamp - stats->start_gt_clk;
>  
>  		total += intel_gt_clock_interval_to_ns(gt, clk);
> @@ -1469,6 +1469,19 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
>  	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>  }
>  
> +static void __update_guc_busyness_running_state(struct intel_guc *guc)
> +{
> +	struct intel_gt *gt = guc_to_gt(guc);
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&guc->timestamp.lock, flags);
> +	for_each_engine(engine, gt, id)
> +		engine->stats.guc.running = false;
> +	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
> +}
> +
>  static void __update_guc_busyness_stats(struct intel_guc *guc)
>  {
>  	struct intel_gt *gt = guc_to_gt(guc);
> @@ -1619,6 +1632,9 @@ void intel_guc_busyness_park(struct intel_gt *gt)
>  	if (!guc_submission_initialized(guc))
>  		return;
>  
> +	/* Assume no engines are running and set running state to false */
> +	__update_guc_busyness_running_state(guc);
> +

Why not to move the entire __reset_guc_busyness_stats earlier then?

>  	/*
>  	 * There is a race with suspend flow where the worker runs after suspend
>  	 * and causes an unclaimed register access warning. Cancel the worker
> -- 
> 2.34.1
> 
