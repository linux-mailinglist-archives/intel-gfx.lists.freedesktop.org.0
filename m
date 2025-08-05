Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F7AB1BC7A
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 00:20:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 749D010E3A2;
	Tue,  5 Aug 2025 22:20:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="btwXy0vs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAA2110E3A2;
 Tue,  5 Aug 2025 22:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754432433; x=1785968433;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5gVm3j7kEmwUr9iiaM8ap6EYy1KqsijgBNqINzKLl4k=;
 b=btwXy0vs/s/LZGt7PyIeK5yoF0+Nohq4cKyfMNL+ZpmyVMlutRFHem3g
 9rS4C2a77fSxOFpp93KG2Q+7Be/yq7F2bV4ZH36IRaN4sVleVIHeOQihE
 YAXYYdhE8UftM+HugoD4NGhvudJR2qNRVIEouKAKucQaXvBll1Hg0qXOQ
 1Yuks/zPZfgwnAgMolbwQbleB9I9o6cnnlRtb87ag7+v9E+NIzRJOX//I
 ahUlENisbsCuybyNivdoos8rgvwwzyMded0qDiYdZGx6HkjLLkaI/i2VY
 13D1bhcF0mh25Zde02EhFb5vbSsMD9+XyafXbR9ohGVQiVa1UFt/VLREM g==;
X-CSE-ConnectionGUID: xTI29C8YQkaoP6WIsgEBTw==
X-CSE-MsgGUID: wgtMvhb8RKetSYxle0SRxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="60572682"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60572682"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 15:20:29 -0700
X-CSE-ConnectionGUID: c0kruF/GTHWubVSDW0WlHQ==
X-CSE-MsgGUID: CtVMPpVtQuiuAp+xn1o1Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="169877215"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 15:20:27 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 15:20:26 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 15:20:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.83)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 15:20:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b7J62lfGltJ/7yF/EmznMVt440npgdIB6Tb4IDykyTZ70kmcb7WP/Y0SdrF1xF9HZxSBxUXjUt7dMzbrfeWXwcDlrJb44ZDTYaE41ni6UdzN7FqwOFSUXME5lgb6LfN9AhbTZwkXRZQAMIZYvtwRppn9TwVCobE11KVM/X0kIM8d1uByqa0arx7f3ujxyC7mrx5hgXuFqlaC0xoi3AYsbixlegtfsYxQ+mUZHOksfY0OZuWXEEgok+d5pB8GAvN8fCb1UiDQIaMm1bpprG4CGuIaBRa7aR97d8pWa7xsgHrPtwjHSi8RYqKSHn+4hoq7geFmAZU6G+Gj8OQJnBqfZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uvz4gLTnu7HT7QHCVkrrL6zFBFqOvsO+qNjBLrDnBdQ=;
 b=lQRUCslNMR7g9gCIlZXeEgqU+R0gfsSBO8vk+gCktmdF3eINtKEUPhCJLKr7zMbIcw3O8bcLpjQ2OD75sLyU3pdEHb8Pgfe9epgSSz4UIYL31nExhiraR3Pjm4clLv0shUhMrYAbbPtBD3oN1j6Z4s2Y81gR/Rv7yFPlH0iNEoWeTDv7SwLyLzdclokNHPfN7yfLp+4yEEewFBoNWMLwiTLrTGnqNJPdfKghtv5dXvs5cKtsmqtIPMzr5iw4DPE8Khum/9jFVr7tYgp5av66aehgg2AobJhgIUkTkDYUw/Baw4Pti7IiqgMHnY1Ci2QEMXvDkBVL5k+lboyUNmBTZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MW4PR11MB6810.namprd11.prod.outlook.com (2603:10b6:303:207::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.21; Tue, 5 Aug
 2025 22:20:24 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Tue, 5 Aug 2025
 22:20:24 +0000
Date: Tue, 5 Aug 2025 18:20:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/5] drm/i915/rps: use intel_fsb_freq() and
 intel_mem_freq()
Message-ID: <aJKDpAgs-c_iUUf5@intel.com>
References: <cover.1753971617.git.jani.nikula@intel.com>
 <c97769ae07cf42dfc8358b7177ab889c048fee89.1753971617.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c97769ae07cf42dfc8358b7177ab889c048fee89.1753971617.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0042.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::17) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MW4PR11MB6810:EE_
X-MS-Office365-Filtering-Correlation-Id: 70ea3af6-6576-4cd5-bdec-08ddd46e45c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ZOvvjjWuqaSKsOo/n/iYObxyuS2anYxBdCFlr2kciuz9xYae4UOlFy0+vxFJ?=
 =?us-ascii?Q?BzZqlRVsnfbJy+/bwcTtrMk3lsC6ojqtaaZWDMk5xfe5NI6d8aB0NLrmevrd?=
 =?us-ascii?Q?4XzAHiE8mhaN0leSO8h4CBhinUHjq3LTJe/DVpFOzakX9XOS89xd2pjHUu1n?=
 =?us-ascii?Q?7jylMXgGS4+snJs+mkH1fiHmMGt7ymkq+XsvoYcUuJmn4/W79SBr/an3jFWm?=
 =?us-ascii?Q?+v5to3U7gcrE7NILPEyOyL6Osjl0qnvQjla1hqYSomP2BPj6Z3wWPkfO85eJ?=
 =?us-ascii?Q?XsOsGP7l/7RjfG7mFioLXKExopyT3exf6I440Df3ekzDci7NlvPqzx32KP9V?=
 =?us-ascii?Q?3rspth+ENwVj3QiOwD/s3+cmJFQBo3HSY7xN7/8WBCQcaFnknMtk1GsEv2Ze?=
 =?us-ascii?Q?IFvtggbxkIRd07muIfOWvVFm1rXPSzfQ36pW3PFQSdF7KmTWMx+litsn0uc4?=
 =?us-ascii?Q?io5TlZd1LTvz5egFnbGs1UDan+xxqnyx320Ew1hj9Jul3RihJ0uOFoOuqD1F?=
 =?us-ascii?Q?2ImqtkE5eG6v1E1nralc5GStuLX+NBUy0DdHf31Inn/XyQA0kI8N/o0kRS23?=
 =?us-ascii?Q?7ib9pZEPLjrZ3diHXxcoR9m8lnxcAi9+xYvZHZOm5XGkWaeMeVRjLzXiXsT9?=
 =?us-ascii?Q?9LFwesuKuYAYR4FsNynl9hJLd86m7ugCVrOP+CfECWPmazjQFLXPFRIIErf6?=
 =?us-ascii?Q?slLRVwa+0ls0ZMNB4ah+eQs9jpzaQXfYWxinGgio7f0q4jjMZ2tlJDEyK+li?=
 =?us-ascii?Q?9gSq0n+VOguMJ8QFD1ObS5sDCs5HEYtMCvTN1tfzal5J9HWrGth2J+87bj1L?=
 =?us-ascii?Q?g6LKcoZlQj0VFJmtjRZpKGtU2pZ4uuLfTV8q0gr+JpCzzMzilAKKDMLq/Giz?=
 =?us-ascii?Q?m8IN5MQQdMZuisJX9pNMP0gI3NmuhutxJf4Lq8ba95Te2iv+ws9Cfsz+X6Nn?=
 =?us-ascii?Q?uAI7Yqv7z57U74x9zYSjI8dWEr68HFHc23MRr0M7Vb1ETyaFZ4vXaHSV7W7X?=
 =?us-ascii?Q?RrRLEjzDrL/cT8eh5kkIcB308rABJ2k96/oxqU9RkI4RD4FYlf70SynjATa6?=
 =?us-ascii?Q?2Hp/IAoIWnpYTaWMRUgN/Z1w4g0GUoo4ZyW44qu4KQttPVrhe4qmfu1ytFak?=
 =?us-ascii?Q?G90x/aZa6f8wPcTqD+WKyQH/9AACYL380e8CVgfrsQHgi2PJQTyTLOTCaPtA?=
 =?us-ascii?Q?bXCzCkTScV4hBX1aKCNLBeXtiI3jlUSykeUivjwm0oUAnmwQkdEHERtDBbpL?=
 =?us-ascii?Q?UcbEkYqazfQzp+bPAqrAzLnN/c8Y2KNxZKhZT/LzvHiRnJGgizDFc9Tf8jfg?=
 =?us-ascii?Q?ykDgl0IMkfB088OH7DkPCzUi9Lqm11v8qogRRDqwoaocvSbeLJh6A8HMnIlD?=
 =?us-ascii?Q?wxah9jtGoFNRs8W9wBgSQiJdFp0U17FGXJY8dFHBH4HNgWZiuz5ETI38XkkY?=
 =?us-ascii?Q?wuuLwzZZE8w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ClXPd1tYN9xmIGdu7IWy0fREAZuR5+6+dQDYJDFzI9evHYLEDSwhQl5gtfkp?=
 =?us-ascii?Q?3EnGZV47Qp9cmVd/A/Xfd72ZqXOBEpqB3mULvQcMBo80I/Dnhh8Qq42OQ0gJ?=
 =?us-ascii?Q?LSrr0Mlrn/wBxBdP3GYzCeorQRmIUi9c0aZX753NPQuvQht51BGt9GVI7L72?=
 =?us-ascii?Q?PzA39GpeRqcD/K2y/WLlg6qz6/+c8iXDhjteeqPYtmy4uYtMFmqTZOjuhgJc?=
 =?us-ascii?Q?GZi5tey/S3W4hkbiCRj+XvZyWdJPE31Wvq9uL7wrP6Dc/8xnP4R+rIEQPvsU?=
 =?us-ascii?Q?E7LN8Q9c3CXH1SrJxHRoZ52pxaKuh/4Wf+9ys8t04Ri3I8DMP/UiOaVEnyks?=
 =?us-ascii?Q?6aFubR6ZhUJ1Gc8lO1gj5//4SWjkYHyPMS8qHy3NydZ6Wess2cuPQRhTaKD5?=
 =?us-ascii?Q?H/MZmztvC8p8Xn95f6m/y4v1dn2ycOJyejGfWduPNMV785olzvpfhBAHhlol?=
 =?us-ascii?Q?Lp/hFV8GbkQ6bvxs4XbSfwbxFzPtN+kALJIHhJbmdcOMqqPpdPch+NBWlrGp?=
 =?us-ascii?Q?MWfRfqhO5k7oPthPTwpR9yQFw/AiAxCu8XOceKN9xqZQvmjMjeudABKDyGdd?=
 =?us-ascii?Q?vVRg/XCN65TxqgG2sbVPgZxA+VEBm5U4m0neTd5zpTY5IAJoQSmGgUKSfhk3?=
 =?us-ascii?Q?6cr93I027/NnoZNw1I3h5gspCYNua4ouuqXKZUWyk27TtNII5ca4msPt9pKb?=
 =?us-ascii?Q?BxiXF2mU20mI/NSg0NkBKh+8UHyE0M/IRAIJpvYHCjTrl+gpfBpTZ3N4t6tX?=
 =?us-ascii?Q?pf17piYc0FDBvQaEovD7lzBuLZBLNcLwWAP/qJFab0/hT0vQjJt9Gq2kAx8I?=
 =?us-ascii?Q?7KQaJlK/WicxotV5TXOE7Nr0LVL/RckSOHDb9pnLGuQWkiLRF9E4XpIjHVX3?=
 =?us-ascii?Q?FEzsVgmcuQBwYf71bcWUHpXLmUGV9pgXxf3bf+PlOE3q+v+Z57kIrJVHIeGX?=
 =?us-ascii?Q?DckVrPz/5lEaPaFFimAM5bEVcI5RQvftrMvBh2Z5c3KJXgjKIYB2giZy/XjR?=
 =?us-ascii?Q?2KvssLIzR9TKix4hlY8O3PYo4oHPCcexnRJZzkcybONOQxhDdEXYUj3VJmkM?=
 =?us-ascii?Q?TdDvp1Klk0p2i8T48lwERFXVxKNoehnOP0FO6Z3/0M21qffal3WK+UtWA3Bb?=
 =?us-ascii?Q?rsqGcNTo9PzjkXjQe/W8as+xR5B4xoDUOuNamb/LqJlQDYV5+nv8sq5BIzwf?=
 =?us-ascii?Q?gCcqIIJv6/FzEALNH9o6acangQX1W6Dh2iwQyYFLjgUYtqbT/C137YBkVtad?=
 =?us-ascii?Q?C8/LQCdSTrE+WgjuakkikyISV4KL6S1vyjpgfdJfnlu8jJIYrzcTNfYngjXQ?=
 =?us-ascii?Q?lM/XIHOUjCafdQ8+KbPCNG/MgZg1XGJPLyXIexkHt2PIIthsD8iFtV2bkwZB?=
 =?us-ascii?Q?JtSvOnZq5LgprnfBudoszZ/cq5TObtBWS7KnpXKjfnD/ATGhUjr68We2emAn?=
 =?us-ascii?Q?PiVfPkYfu7M/ZZdCd0uvF7QmPiHfNuEDXg3dA7CT5zgN8t6N3uwAdtbPAZzd?=
 =?us-ascii?Q?GZvoAfrs2tb+oMBGhDcxPBcPh0LbFMoVyKm2iw4w/VcBBwGNmHUmnHaKmIGL?=
 =?us-ascii?Q?MTryyMaTSVpzTZZkFVhVPpq+YlvnFagifhQUzmrcW8kzeaYkqmWMwmmRrgKf?=
 =?us-ascii?Q?6w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70ea3af6-6576-4cd5-bdec-08ddd46e45c4
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 22:20:24.0778 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Yl7AYaV6eVLfNWHrIgnKwqEUmFotTtl4WiFvdvFi6YIjYgBUM7tyQJLMdZiP4Uv+JWwp++9lZGRj1noBCTmdww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6810
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

On Thu, Jul 31, 2025 at 05:21:23PM +0300, Jani Nikula wrote:
> The rps init only happens once, so it's not important to use the cached
> versions, and we can drop the dependency on them.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 0b35fdd461d4..006042e0b229 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -9,6 +9,7 @@
>  
>  #include "display/intel_display.h"
>  #include "display/intel_display_rps.h"
> +#include "soc/intel_dram.h"
>  #include "i915_drv.h"
>  #include "i915_irq.h"
>  #include "i915_reg.h"
> @@ -276,20 +277,24 @@ static void gen5_rps_init(struct intel_rps *rps)
>  {
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
>  	struct intel_uncore *uncore = rps_to_uncore(rps);
> +	unsigned int fsb_freq, mem_freq;
>  	u8 fmax, fmin, fstart;
>  	u32 rgvmodectl;
>  	int c_m, i;
>  
> -	if (i915->fsb_freq <= 3200000)
> +	fsb_freq = intel_fsb_freq(i915);
> +	mem_freq = intel_mem_freq(i915);
> +
> +	if (fsb_freq <= 3200000)
>  		c_m = 0;
> -	else if (i915->fsb_freq <= 4800000)
> +	else if (fsb_freq <= 4800000)
>  		c_m = 1;
>  	else
>  		c_m = 2;
>  
>  	for (i = 0; i < ARRAY_SIZE(cparams); i++) {
>  		if (cparams[i].i == c_m &&
> -		    cparams[i].t == DIV_ROUND_CLOSEST(i915->mem_freq, 1000)) {
> +		    cparams[i].t == DIV_ROUND_CLOSEST(mem_freq, 1000)) {
>  			rps->ips.m = cparams[i].m;
>  			rps->ips.c = cparams[i].c;
>  			break;
> -- 
> 2.39.5
> 
