Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F73A1BBDF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 19:06:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F25710E16D;
	Fri, 24 Jan 2025 18:06:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bRnWRrnP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8A8B10E16D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2025 18:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737741975; x=1769277975;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Y8C9c96Gjuoq1u9kxlaMOL52fzlS9dEISswLxONsvEc=;
 b=bRnWRrnPZCRWBCU1Zqo+91XdzUu+qK/+L91MMKmabvc3/QlOI6svsEh+
 83djOOKLUcR9qlvaLqZdeiOoboCGtMLq6sC6eP+/SZ4OaLsSoHl/At+85
 PrudQl/N0prdvgitmOV1MB5g6dW2wXyXHQHJrch+4yx4ykM7EgY6SybJx
 lpdq0xL8XX7Jt5usflr7n4HXI7vknKJmavIPyyWp3Mgs5WMixfZwG/QP1
 eB23sC0qstLDCRFMwzKkx2NIjbNQZZCHt0ggaxp+EjTuXY+jFri960blv
 F629AyFEa8u6IqtOZDjytwuMbuKfu1cc/V8SzEVRXSZ96E21Ogcwz+hqH g==;
X-CSE-ConnectionGUID: aQWal9SeT1edpDKWkjY/Qg==
X-CSE-MsgGUID: xOBJOwANTv2d2osL26l3JQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="60751248"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="60751248"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 10:06:15 -0800
X-CSE-ConnectionGUID: W5WC9FRQSbyN4jaoUISUow==
X-CSE-MsgGUID: lc/kbU3GS/2FIAd48k1JRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107620640"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 10:06:15 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 10:06:14 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 10:06:14 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 10:06:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i28d6McNLwaEmP4JQbB+nfGTBFpDH1u+WbuQaUPdx8I0yiiPtqQNsuSxmbpm3a7MhedlHYsgwt3NobOIBEw8cpuPXcfspmYkqYaKAGj3Y0ovII4RxzlX2JsvZv8PDs70YQtRjI0aMTczrwWbfxrEVU563BI1EUU4jv7oEWf+s9LjKzvHIaL+QYJ8A46EZnAR31rwuRiPB9ykSscgpIYhiOq687YTG2OOfbtsuWnC/kxPiTMkwQxy2hjor+7Nca+s8waFk4utU0vnh5foVWuv8hIMhC/zmaOllg55aYymfsartfIX8IvSpDmnOLtUKByW+Wq/j3g9CfWlPCtdI/XdMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QkZOj6EspBsCxCULiM1w2PP5Abd+CLK9kIyLZb/o9Hg=;
 b=KiU5ZhNW7EW5YL9pS492UA6ZQXO4lRN6QFyRG5bbjyxLikiTHuhMQUaau5+Fs0TqqKhXapJJIrBekmknbov2No1rI7Y9Ln6DJzFoGLof/1qDsG809iN74jaXzp8uezZxqwF6SsumHbOHDZL1tkDKkDbEHBs5xb6WHI88g8gpATl8QwnxDOhWXJ3CG4hwY6wqUqpx2dj0jBFsEx4U24/vtEBsKtff8abgL+1F6WfoYaLao0Ss8cYns/0AttXNHdlwKII9PY0uTCX+7+cSrnntY4x3lraOclf57vFUI56VdW9i1/ZVEMwurArpXwO6DuzSURPKyyI/rDv/tTyt6WJikQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by SA3PR11MB8117.namprd11.prod.outlook.com (2603:10b6:806:2f0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.16; Fri, 24 Jan
 2025 18:06:12 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 18:06:12 +0000
Date: Fri, 24 Jan 2025 13:06:08 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <John.C.Harrison@intel.com>
Subject: Re: [PATCH] drm/i915/pmu: Fix zero delta busyness issue
Message-ID: <Z5PWkFMgt7u0gjKw@intel.com>
References: <20250123193839.2394694-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250123193839.2394694-1-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: MW4P222CA0003.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::8) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|SA3PR11MB8117:EE_
X-MS-Office365-Filtering-Correlation-Id: ea7e3975-2d6a-4dc2-a3a7-08dd3ca1c91f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ncpXQYKkia72jwn+SYjycE4xfpfCQ4C+419JGvxAJTHCSSeG6FG6C9DXSkIT?=
 =?us-ascii?Q?oaCuz4rzi61bjT3/mR3s1/7wQxXQO0AGCJv/mCk67/7wIZI5joB2X/QZisiz?=
 =?us-ascii?Q?BEw2d/AKZm5oZAawQB4GluxLcr5NsrzY2Fi6997ECN6i5hPqYFdiXfyuqcC8?=
 =?us-ascii?Q?3P73IkbFSzv3Opk+FzWE3Vn2gLQEmXB+loNAuoYseAwc9Xa/Ps7aWFbONvzy?=
 =?us-ascii?Q?wdbYeIRri3z4xPtL+Cr27kuJPGX3hFtkwBDmBC1tQtpVCb/XrDYEEvwc3OFJ?=
 =?us-ascii?Q?85uC7Juk3FNJc5sWO3Mi5J0CooaocCTAoA6vx0yWyaPame8fM58Ric3Gu90a?=
 =?us-ascii?Q?B8bIEwJjg492cs/tWAGkyFHdJtwCk0B27gv8C1+ARtG8TV2f/pdhEXDPR7yu?=
 =?us-ascii?Q?NLhwTqfq2guYHNsYOiEijXj2ufKvhbkEcUxYHnG63NtTqp/7yCAQqE/AhZ7h?=
 =?us-ascii?Q?sXe9YJCH5EldHKImSMG8EAsWz7Evl29Fjy4qSD3aO1NroXq6PktduperQENY?=
 =?us-ascii?Q?ANaXkvyJjL9p4Jkx5Pfj5vSY+vty2u+7txPDMteq4vRuEo2jA7ZDUMcGYALM?=
 =?us-ascii?Q?f7T8JKmcXgLMEp17yvDRGP94iQuKpAPcAdLCEa3d6xYs8kXqcjV4/gpHwg/1?=
 =?us-ascii?Q?TrQeDm4RSXzrwQdmLNJxXeMfoECue1PbiUPE9aFbJS3No83Lm4m883T47q0j?=
 =?us-ascii?Q?sVHtNvjrhr/vh8wPUCNirB40qtegEdB85Qb9rut1JMekp9p/6u6y6AEPOrMr?=
 =?us-ascii?Q?KsSKkQMcC/aprL7890EfBa5NMkNYPanIwyg0kPWdBxeCpMXV2ORVhXFdzjfn?=
 =?us-ascii?Q?ddynWvVmKSp7KCJSLtY6ab4EcA55t9ndoiO2CWCj571swhjkTXtVx2F6texD?=
 =?us-ascii?Q?geXA2JNhGH1MYKL6C83Ot2C+U49k5X6mMDZipZ4Z9d7YQEexhjIawBqXE9JQ?=
 =?us-ascii?Q?+B9k0cm4HkCRnXPsSozl4kmMiRt7b2WaGFcLSfSUQTB5urXZfxuyggCjbiK7?=
 =?us-ascii?Q?iCbGXQDbaCMAwLITircInKSEl0O1lADbjuRnhHf713bvdgVEf0zLNzFCoLgj?=
 =?us-ascii?Q?p/5hOsbRF6rNgKVpGZBbF0Qi3tYMGMX88TRJ2zmWDdw98PlQg32OV4X09YZv?=
 =?us-ascii?Q?mpdoH10kjjyeSf2iETVA9JcK8B1xlt2hNJ6FECn4kQ5Z8pFK/chBFY0xfKwc?=
 =?us-ascii?Q?uWPb39n8rMPx+9QIxLcUXNzx2bRUyMAlOX53bVskTXI0FTj/0rdlYBkJzmPp?=
 =?us-ascii?Q?CxxIx5tVvBpeLul2CN5kgZyt1OF8CmDRf1BGFPMG42m3t3aNtJlRsSu7YG/Z?=
 =?us-ascii?Q?3t+dU8q6KwTV0MIC43/eOsTT6d51OZyBg02s3wz7MMKKTA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tQDYXOdZqMq0M9qF4XlF16Dwk11l+FeF1C6473FP4pDISKqq5PgffqIgk54V?=
 =?us-ascii?Q?zxB2mhWHi/U9t45T00kkCz/1rbGoXuAMngFsDFcVRDxGPKKzOxn2e1VcQUEO?=
 =?us-ascii?Q?0ELcp+xQeYAjoODm7Ri2jZ2wmu3b/BTiR1D415o0kzv1sIln6Kp7nU5ONoML?=
 =?us-ascii?Q?pui/VEKbUZQV7XKA6ecoSjQrDjSwVRTkpI6KIkOeEVTug5BRtE1yjrdvxXHG?=
 =?us-ascii?Q?qWYrKH92N8oJUm856k2cXT8VYpBTZ7YiGlM53k61/9Zjk4ASOnrer33KVEUi?=
 =?us-ascii?Q?0aenjtS7+6qzAL4Id393Kc+1MWGQqMlPJZnhu/86R4L/05qlnSWNZpvdaJVS?=
 =?us-ascii?Q?0RwOz/4Al1aNR3hQ96/Cn0InUykuvNXnvdFOalkBDzJbCxAg6dowVe77w5Pr?=
 =?us-ascii?Q?fhBE4b3U3dhKm7VH87gwNSSVzwL5eIJk7YT4Q840zcn3aDwbNfVQSyOSe32h?=
 =?us-ascii?Q?vA4ThZDdCzLyhWQ8DUFuYx6hEnpMV1iw6keHq/FZL74p5l0/p+IGhiw5iDhU?=
 =?us-ascii?Q?TkatpxY7sKtNSm0OQGL1lMZIiNv0LCRhAHSUgTqV6jSpjD4Dg3IqRzFFFnB3?=
 =?us-ascii?Q?MV5q6EOER/vCbcEmEHjKL58zuqLc2MijJ3VMcZf0N/Oa1skzH+ECQ55EaRaw?=
 =?us-ascii?Q?x63isuYcy1v/zgA5cVGRbO7C/uDAjeqpwv5BVOc2WjvP9T8EppJ3NabZ36yt?=
 =?us-ascii?Q?9xHQxTQKPh/HblFunAgIOswf/B+Wj7dMRnkoT7Dt2zOlw7muEYJ3qcErvJXy?=
 =?us-ascii?Q?NwlJmVY6VYWtBMNI6TxqvrAk7Dftpf9mbHcB0el0FvxG+V52DILe/t/IPPcv?=
 =?us-ascii?Q?xOVi3Bh6G+oL+jmgOEyqroZj36aExb3RxGgG/90mIggiQN1RkV7U/MKFudaI?=
 =?us-ascii?Q?LkYWI6MoYQjKSQUXwbpecmC9lSljWo9EgpoJrsw0CflN9peza2nBJQjwjFvt?=
 =?us-ascii?Q?OQW4q/DcfV3rEaM6gnast0xX4VUXFKq/A6GCDDF/PpcuUTdQpUkPMR7EqfoP?=
 =?us-ascii?Q?W0CWiMwVekkkFYjapa5TgHwby7ZUoG84Ga2pDL2VyG6w2AzxT+Js4YeoQyIE?=
 =?us-ascii?Q?Ot2V2AWeapGwdNkM3qGbrJE0KELPHDgeVT5R9EiJscWqUi0E6UPyC84jIVZH?=
 =?us-ascii?Q?9Her9YtNt5qzksJFAfZ5VvD1YDZa9eWCJQ5GJpnrjThljrYDiYMxC269MtBy?=
 =?us-ascii?Q?qQmvGw8ikXTWwCwo1z2ImTRiIckOzNh62FK4cIPjmtdSZKq4yI3PW0KeEoVS?=
 =?us-ascii?Q?z9Ama+AnHbycJQFhx+dMOXaABqF+xBCGqHvh4s8bxH9P312VopBZi9MSTj0N?=
 =?us-ascii?Q?E58lJMgGSiGxeHoILMK93TnxGyeQEIOhEsH7kpNhQ/GdMi5ergtRICM7pLo6?=
 =?us-ascii?Q?fciZeNbFm0kdgjZO/ETjnEGvMtBnQZmLcq3ESmLEzzZbNc/xwmtJjHBhbdLI?=
 =?us-ascii?Q?nd3je03769qGKYHvPaguVgRvHLyicm8UsZejY2wYn3akoMIqsl6bvowFl8wD?=
 =?us-ascii?Q?MkBq9CywpJBlwojcIE43x6fEuIfLXgaohVi9T1C9olZyemTZhGrU3RPLdFra?=
 =?us-ascii?Q?TfCL40qQdCWEOgTM1f4O8JXavbaxVmkDvywkvribNCCO4w8+94LZPQOPlj6A?=
 =?us-ascii?Q?aw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea7e3975-2d6a-4dc2-a3a7-08dd3ca1c91f
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 18:06:12.0802 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /pXf+u9ntdmWe/v3el2Q1pAoV7QQjpvtpouKx1Tb0BxgNNXcak5XUQop1Cn48IX/8Vu/xf99ooKFrywoaSzNeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8117
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

On Thu, Jan 23, 2025 at 11:38:39AM -0800, Umesh Nerlige Ramappa wrote:
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
> Fix the issue by resetting the running state of engines each time
> intel_guc_busyness_park() is called.
> 
> v2: (Rodrigo)
> - Use the correct tag in commit message
> - Drop the redundant wakeref check in guc_engine_busyness() and update
>   commit message

Thank you

> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13366
> Fixes: cf907f6d2942 ("i915/guc: Ensure busyness counter increases motonically")
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c    | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 3b1333a24a89..a33b67b83dc1 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1469,6 +1469,19 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
>  	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>  }
>  
> +static void __update_guc_busyness_running_state(struct intel_guc *guc)

I hate those '__', but I forgot to spot in the previous email and
I know I know... there's a lot of those in this file already :/

I was thinking of another name for this function as well since
it is only stopping the running state, but I'm bad with naming...

let's move on and close the real issue

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

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
>  	/*
>  	 * There is a race with suspend flow where the worker runs after suspend
>  	 * and causes an unclaimed register access warning. Cancel the worker
> -- 
> 2.38.1
> 
