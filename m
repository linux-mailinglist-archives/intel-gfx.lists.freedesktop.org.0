Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E984C98870
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 18:32:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76ED510E43A;
	Mon,  1 Dec 2025 17:32:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KIOXMV7f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7BF310E437;
 Mon,  1 Dec 2025 17:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764610320; x=1796146320;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=fOI0tz4YdyzJoOJvQpAvGBp7lwCax+EKlJtlKglNEVk=;
 b=KIOXMV7f+E66J9b3V++i9z8n+1R96ioSH6lxuusm9P1GejDu+5DTDUDC
 VDQhZuoMW54MrlEy3N8UOD60DwG+Fs4cU9u30rEXKI5tVImyVLeaaieH3
 fEfyM5SHeD2o8TzbwXmw6sxxHvuVWLwXmtL2dJxLtcsT2E3QOCu68NEhI
 P4f08G3cZ6LNBjzAHsfJe6BEw/bbrdhZ0w/GXuOD7fYGz/zJhwGxNanqV
 KupsdV+MQwHa2TGcOoQ6Ispv1fEjc6RUieTYUluAZtvTViaCY4X1eqfPr
 LF7fqJbP2fsO316XKCeqpDVQynHAaftHxV3Pfb0LrftA7ICvykTKhPNrf A==;
X-CSE-ConnectionGUID: U+TnMqRpTNawwb7WOG9/Rw==
X-CSE-MsgGUID: sKTQXrpORfyW4qS3M7xOpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="65562761"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="65562761"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 09:31:59 -0800
X-CSE-ConnectionGUID: rOPpNM30TKuVpQUh2WBo3w==
X-CSE-MsgGUID: E9iq4SFcSu+2jwIqe87nBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="193397188"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 09:31:59 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 09:31:58 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 09:31:58 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.21) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 09:31:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g+DUXyQIIckqYpLWu+YmQ8xAYThbjpEw3cRwpbvCCIG1pEuiYgvyz7xDCJBxOPlKonzR0cgqYtxrg49NcxUnKSwjR+KPBlBJ64ibLFCvobYkOAdGIC0+VdiEfqh7oJj7jbm8X20H5zZb/cBuNfH8qzLCYQTju37mhUVrRUFq6Dw0F0lxmWrTO+6rofSHIQrsrRHE98fh3HzQHFZPY9mjL74ILPOKLRBQ4LqkIie2T32C1d0tsuxu5o5Z2Lx5j/7nTWrNvvN1soQFUm1Zacf5vdGHab2dz/DvStmQ0MEfeZseTaOIOL1RJt3a5AfNgldYS5QRllDlJqOmJC5e6i1HZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YBTlDc0z+wT5Us7YEGJ4TOb4/lofJ0Pqt7y429V9yGU=;
 b=Wv5OAHMFy9EQVbu+w+BCAtFLrbJyjlJ7nTEXlYmtXXUw1iaGFY9ZlGs/npoPVr7+bVF4ZtjyF6Cne7yPPR6RQRPdJMKer5rdqABmkBZl9y7nJSTPzZ1YJIp1VcY+0kzYeBxjZOMh6llD/paIkrssuBDlQ53eU2eYYdSItExUZnOGszWcaylQMU3Rs+UXxNZ35AxIL9upI+gkJxMG8Hb+fhGSJ9NE4/G2H48QTCWgJX/QcoJSpvuWdOr1CQiKPQx/vOpSXnE1Rc9guL/5tDVzcnvGKJpCp4DMGVrWDSKRdK8MEeI81olaruTykL7w6FgnA2XX1tk/iZN71U5ADWSEbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by IA0PR11MB8419.namprd11.prod.outlook.com (2603:10b6:208:48b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 17:31:56 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 17:31:56 +0000
Date: Mon, 1 Dec 2025 12:31:52 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/xe/compat: remove unused i915_active.h and
 i915_active_types.h
Message-ID: <aS3RCI6ctO2ytM5E@intel.com>
References: <20251201171050.2145833-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251201171050.2145833-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0049.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::24) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|IA0PR11MB8419:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c8e8a91-0a78-4ad9-8d8d-08de30ff8679
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?QO86thJ3ROeSvUstsJdQdZ6N8xqgdyfVM9VaoLCVIwExKjmNc+7PfUo4wW?=
 =?iso-8859-1?Q?p/u8ZS/Lp+/9AaENOans0j9ZNznSSO6+8mlEF9CdQp9Lii6zsb+3XUyrby?=
 =?iso-8859-1?Q?ZO5VvdzDFB6ZCvBfjSQKwxOzlHgrVgPZg6szSq0rGqYCoH/W9ixA8iKRlQ?=
 =?iso-8859-1?Q?AkRGWhUYmQ/N4EBbFTPRI/JXl3ezkaqa8fEoYxFECasjDCU1suBL3AyK6R?=
 =?iso-8859-1?Q?kADMhDIjLbxxRS+BNeINB3I5TmCPJn8IzZDAfp5VXA7ci3Pwl8BVLstMIQ?=
 =?iso-8859-1?Q?O4jCMUcGcpwpwWR7rXFAHgoayfqt78Z//IcgS8BtvqB2hWs3RQNvSown9y?=
 =?iso-8859-1?Q?yoP3mq3xbezhCKvrkPCPYMd4A4HSydO6AwKAGbWLxlqTznzJ5LPFSqdHuz?=
 =?iso-8859-1?Q?nk+9A7yGGlnre0E1qLXRN898YQcebaMYAgxCnThEdfLjPooXtzQoZNbB+L?=
 =?iso-8859-1?Q?0I+8/9yTizmDYWTkN/SIlMR9eAixwVI5rINYdHEVe6CL52wn9UHQ1+032e?=
 =?iso-8859-1?Q?X9ffWuAugb/qDRJBVD1rqpVzZTaU6TC2e2D+IaXUpN2gjeJ5XX2GVN64ov?=
 =?iso-8859-1?Q?rUI4IgxWd2Hhqhv99kEXSPCEmrolMdUwgekmbmcZ5suOYFnzkILRKsdf2f?=
 =?iso-8859-1?Q?YtUVH2IzS0hOt0aqU+oV4MVEqMlfZvPiSwbp7y5qFKrrQBYva66Omiiuem?=
 =?iso-8859-1?Q?ScvjjGfyaLJjy7A1PmoxbQqE+BthU9waacrebDMs9lzylC5x+Gt55K6gut?=
 =?iso-8859-1?Q?W1B7588FhCJYg8RMy3OpqpS2MbnEItfKceiDAN/s3ounxAk+ylgBh1MihY?=
 =?iso-8859-1?Q?NIzta9piXqInJrVnfgRYvBjcEEu2+RV9zU0art9c9FKUk3jweSJ6CjWn7D?=
 =?iso-8859-1?Q?jqGPDPdKX9nRgU7SvG5W0lJvLAYyjP71K502bxpoLO1UxmLjJYpMEU6gv7?=
 =?iso-8859-1?Q?PhDmvLeNKnBKk3mEHRzYQxfoKhJQ30QrKzNKAIsF1RuzOu2h5MbdcSTteG?=
 =?iso-8859-1?Q?U+Ylk8WN2WK/HMf7xRKQ8DPH4MpCehq70Z2gcC2UZm8EcyG1gR2t0wfctY?=
 =?iso-8859-1?Q?kHP0lVLbCn+c9ABbUUhLCCICfc3trdmw689TQlcDXypdRN2ob+qXZQR0IX?=
 =?iso-8859-1?Q?fHXkzmF1QKhveMaxXPr6HJIsAmrHKK0ReSBcrbpJMenwfI3qckvl9Fy1t9?=
 =?iso-8859-1?Q?/PNGM07wJtAo/NXmjrO8pvqjvEQh7Oj4PBnuXJRo5MyGaujdO28vkB2vyi?=
 =?iso-8859-1?Q?KmlzvW5XPUa3MyCbqYRZofy9pVb26SKRvDfLf7z51gKd22Bn7EEG1B4nyP?=
 =?iso-8859-1?Q?peP4eDQUaVYG+qUA01mg7UEm+AWDY9h5Q5FbxWv4495eslcafjV+IPEmJI?=
 =?iso-8859-1?Q?vV3za4fngRmtxoMUmHQZODiFguW8sb8hTodLrehJFzCGCYGHYOgpwZzwFG?=
 =?iso-8859-1?Q?/XA8JYzaacGb63EuG7jIJayDkWsjJEvevWu1tt+YP6TszlDTNYRhycU2mt?=
 =?iso-8859-1?Q?0j1KkBwjU22T7XohFp3ElN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?u7pYqqQSMnHWC9KEl2mTnqEmEVZQM2+iwxkk4qbWBRd0dcVGXoy6sK+ha9?=
 =?iso-8859-1?Q?YCNnLcdOi0T5ZGI5+7NiT/BzTaLB3CHZv2e0i2Db1UVS+5vbk8UTANcdkA?=
 =?iso-8859-1?Q?dqLE0F0t3MRaV3QL0YpOM2dMTfuR4H2fn7QOXkGoeuAfHHDNTqbjoDqxQ6?=
 =?iso-8859-1?Q?c1qKKhcqvlx5GPFxumE1XSxpWYL+7JhXiWi5Cqc0u3vspSlI8EzErJT01v?=
 =?iso-8859-1?Q?psrvz5NdovgW7Y7sNA4UxavCC7RkKX3g0rJL1+h8CFCUtZ2t1IUP5MGCQq?=
 =?iso-8859-1?Q?JQy/deVFBre8vwyZzfbVSwD4iGIukkEfhwceGhZ7pR3LzNOzgdIcY61+4P?=
 =?iso-8859-1?Q?r/c0qydLsCJyE2/lvBZcpYNsd6KJVQ7qpI1r5wExAM2IcWYErv5WDRBj5V?=
 =?iso-8859-1?Q?UAw3OSuyyod6rh61gFYvntq2VwgEGwjiTfF7UjNgT+PwtFLsxDMg4pDeBY?=
 =?iso-8859-1?Q?hhZ5ZbZPh7bHtxxt19a0NECzcZNLL5LBdgYAn75gnPJx82hr1rLKpBsM90?=
 =?iso-8859-1?Q?kbBJuDbU8nDRBSNZIWctqv/NRuQsPlZAwl6Kq1dY9CYWvKBdn76H0CL4gH?=
 =?iso-8859-1?Q?UMXjMDjOy3uJKnEAVe+6Rr9WzZPhoBxvc5FANMGpV78+znGFQ/CoWq38Vm?=
 =?iso-8859-1?Q?MKmEZepPS0Z1d5fHbeVHMBuOmWapbv2b+R7OGE3XSU++kzD5Q2vr5gaVRT?=
 =?iso-8859-1?Q?oiRJ16LbYYCoKSPuPeQeBSjtM2KTqmH+9Ghi6qLm+8Cd6wd+We407ncGbX?=
 =?iso-8859-1?Q?3fN5P0UJ4lHX8brbZuDt+EIgsEgy4Iz2QaSqK8ii7fAFBCbvjdzbIz9EXA?=
 =?iso-8859-1?Q?/iSh1xCUQPekoEgZHYcUQzWgraaElZzHY/q7zpFLJlWE/SE8+RaAVPY62G?=
 =?iso-8859-1?Q?DkGPC44l7E6ixnSnBsYjOhUYgTvE7TCYHz+vAf+GuOiy+nclFOlHMRrDeo?=
 =?iso-8859-1?Q?xWrQBnPFaR+C/6tXOhcUXEyXSRInbCKwbx6bo9M9hqYcpnz2mlKt1KhvZt?=
 =?iso-8859-1?Q?9ApSfLk3gy8t86ZIR3PWBHNuyBGalIGKWn4jIkvzprY6QsC0sKWFFXsWwk?=
 =?iso-8859-1?Q?ne8+fdMJJ9FqgespemAKM6myFr+goJ1YqpU16pUOLnW4I5mWHNWIDMmP1v?=
 =?iso-8859-1?Q?fM1uh+is4Q0txbLxaTdzdfWIGYvxUFaypp85qZnpRNXpctGGq5pfDkUr5e?=
 =?iso-8859-1?Q?iGDPUJ/qx23lPZk9R8wQ+pUdL0DrS7kHu/CvICKs6vpaH+jij30mbZ1V2L?=
 =?iso-8859-1?Q?mCr/NvQdAfLfr+yxnXmQoV1lTj7ecCQqGXCbbWdy/VY6fcxrA2zhz5GCQw?=
 =?iso-8859-1?Q?VPTdbrhdMlNLoby2ZgqoNFsxfWayF59qFBVIJSGmE6Qph+gIRnI01tg9m2?=
 =?iso-8859-1?Q?irC+Tv7HF2VA9lB+2t+9Ndi24RprBDYuCLESYZJJGFRJTcgDDU+CgoS1IM?=
 =?iso-8859-1?Q?YU/5ZJdSSdsiB8tN2W4bYnLa2TWKoXGGW9M19dKovEooRs5P8SE7t7bZij?=
 =?iso-8859-1?Q?ySLLGkcxv5PgeW6G9yxJddk/W/eVeABqsk/INoKNEPpIDCUJ3Mlp6t/GJW?=
 =?iso-8859-1?Q?y+3mQgbm3N/UxvxP/6pFAVVK+aR75sQQodl+4jEHmus0GIGLURhXjq+nxn?=
 =?iso-8859-1?Q?HCOAGnx3o2cW/ynjd78S3sdv2mh7texFJl?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c8e8a91-0a78-4ad9-8d8d-08de30ff8679
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 17:31:56.6598 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TSKcC2Ght/y4kvONZlAmWAxyOWqs+S2k3acT26X6fEdA6ZpX7OTOD7endIBnQdqss3Stf3sCDqZJBTZ9uuBWxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8419
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

On Mon, Dec 01, 2025 at 07:10:50PM +0200, Jani Nikula wrote:
> Commit 965930962a41 ("drm/i915/frontbuffer: Fix intel_frontbuffer
> lifetime handling") dropped the last xe display users of the
> headers. They're still used in intel_overlay.c, but it's not built as
> part of xe.

indeed, this patch moved the used ones to inside i915/gem...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/xe/compat-i915-headers/i915_active.h  | 22 -------------------
>  .../compat-i915-headers/i915_active_types.h   | 13 -----------
>  2 files changed, 35 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_active.h
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_active_types.h
> 
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_active.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_active.h
> deleted file mode 100644
> index 6f0ab3753563..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_active.h
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright © 2022 Intel Corporation
> - */
> -
> -#ifndef _I915_ACTIVE_H_
> -#define _I915_ACTIVE_H_
> -
> -#include "i915_active_types.h"
> -
> -static inline void i915_active_init(struct i915_active *ref,
> -				    int (*active)(struct i915_active *ref),
> -				    void (*retire)(struct i915_active *ref),
> -				    unsigned long flags)
> -{
> -	(void) active;
> -	(void) retire;
> -}
> -
> -#define i915_active_fini(active) do { } while (0)
> -
> -#endif
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_active_types.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_active_types.h
> deleted file mode 100644
> index 8c31f9a8b168..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_active_types.h
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -/*
> - * SPDX-License-Identifier: MIT
> - *
> - * Copyright © 2019 Intel Corporation
> - */
> -
> -#ifndef _I915_ACTIVE_TYPES_H_
> -#define _I915_ACTIVE_TYPES_H_
> -
> -struct i915_active {};
> -#define I915_ACTIVE_RETIRE_SLEEPS 0
> -
> -#endif /* _I915_ACTIVE_TYPES_H_ */
> -- 
> 2.47.3
> 
