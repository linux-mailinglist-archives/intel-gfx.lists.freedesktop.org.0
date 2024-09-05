Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B797196E0A1
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 18:59:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEDE010E918;
	Thu,  5 Sep 2024 16:59:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vwm5QS7u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0873810E917;
 Thu,  5 Sep 2024 16:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725555570; x=1757091570;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LZM5aTngcrJ/Z3GFLOTXBxNAVUnwkXmYEG3t68Y7dgE=;
 b=Vwm5QS7uhPJ+wF6PoWfChHbkd0kJeI8NlDJAqDMLSJ5vKtnKyLIhY58U
 V7LhJoChH5JxpEaBStOxysfBtb+LtNospwKSYHOYVorsiYW2fWkKee6+s
 HEu9lJ5JSRtz3PBKyHjHqrZJJz6vVinu1PmwA273FfqTNu5lngw/ISji8
 5ZN3+WUkXHUYyqoQJiwoSF3Acu/U5Jcm2RE/LjUn1SCdBHhgqB/EcC6mx
 Wus6tF2X0bhWGyLDw/aNR/q1IKVcVZngjxf7gWtdOgIw2PT/0vqsjCZZR
 NNm9NNdL+UJKsDy59Dg5dkLybgXLUkYhEvws9CBExaH7uA7ws+CQXPuSI w==;
X-CSE-ConnectionGUID: dgG+UkdGTSWyATJoYPFzxw==
X-CSE-MsgGUID: i1E3HIOASvGhAj34hiJvgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="24163136"
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="24163136"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 09:59:30 -0700
X-CSE-ConnectionGUID: tU19lFRfSKKHso8Ona2m5g==
X-CSE-MsgGUID: JpTX8pKfQQKx0borJcLj5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="65336483"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 09:59:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 09:59:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 09:59:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 09:59:29 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 09:59:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WuCzdL33TKBNvddRC3Gt77044zyDf93nzktrm+ZNQnFsYDQCphOQOy2YCqyW8c2l7+T9fRpdIPE7aF4tPlRNplZmGe0cBfNuPBrec2L1E6/fldXbHqVwr/tzkQ3IRhmxGrziIxXMfuOTqJ3A+uHEgXJRrkfBVibroXu5wcHhLSELB6vtaiG4O8BXSOG1wxFI5FiAeDI0Tw+UW4Eihq/rwq8IUYxVifDMhNlb+jc8TvG7SxBnudIy9vh6t9C6o2RFEXEY5ZXz8LAJfT6EPJGju/HJLz2g0RXMpDQYGcYqVDrWq2iJZMPFrPY278Usbda9RTDqU/u4SDJVmiCffxpwiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4RZiQx7JsCJyt8Da9BobGmERyQQHPX2lSxmq6CwUTCg=;
 b=e/YWKB0oSjfg4/ratnktMZ4v+KSEGcEn6O58AgxgFOe+PfTvlwgOnwxo7Lbp5pVxs4IUez6PyyfZ4WALoywEviZZ35OHUnxWEKuaZ2ii3ggJIsOrjeCGUblnGiK0o1Is0hjSrf0vWfNqGsmdMwhD1x59cslpFGnVKc52D86IMHasH/y1t+n1IxR8jN2AjHV8JEys/CnvT98PanQ5EWmRCJCEtg51hl+czolP3BVln+vIvmtVKCWLb48T2p+qVFIgg0f/yJ7gNsCuMagnaYo4dpU4dpuVN65SLaaGy0/IBTKEUArCNDbNiiqjAmJY/Az0uq/+RET8/bphpzG8IyyTWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB6995.namprd11.prod.outlook.com (2603:10b6:806:2ae::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Thu, 5 Sep
 2024 16:59:26 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 16:59:26 +0000
Date: Thu, 5 Sep 2024 12:59:22 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/4] drm/i915/display: move dmc snapshotting to new
 display snapshot
Message-ID: <ZtnjapJYQroUMa3m@intel.com>
References: <cover.1725372032.git.jani.nikula@intel.com>
 <e6bef9acfb4b146c8763c5b4e319285f96872710.1725372032.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e6bef9acfb4b146c8763c5b4e319285f96872710.1725372032.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0241.namprd04.prod.outlook.com
 (2603:10b6:303:88::6) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB6995:EE_
X-MS-Office365-Filtering-Correlation-Id: d6517394-b650-449b-1510-08dccdcc194f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?lhRpBGp+juvgwlRcoR/x3Vw/Qyb8YqOlCSmeKpKAWQkcNB51gJjfi4ZrHDD3?=
 =?us-ascii?Q?l0zLr3EQck2KVkMpgOba3swtg7PgBGPP7R4Mm0gjSIqj37Mjw7mv2fFaxokd?=
 =?us-ascii?Q?7k38VeAsYGDoobeHsU/z/TOP2AHa8gegdLodJrZGwiLl005R7j1KfvCCdqzY?=
 =?us-ascii?Q?CQSraVJlkEW9RXZUdHV8I3C8+OrVogbuJF9TlCas3zwfpxIye5Dw2YwF+EOJ?=
 =?us-ascii?Q?weahzyAxhszaUZZW3WbtWeUUQ/DkWkCz+3vLMZwrANAUWd38qVsZvcf5L6bZ?=
 =?us-ascii?Q?2Ygtj9/hKFtgEaDUwp9JkzPvdYhgRgdYR3txSBLOXxCi1YgmXSz44ZKbens3?=
 =?us-ascii?Q?rRJQF5eAULy6dwFRyez2AOunf3ZPZBSm/1LTf7CeJGaKEppLIkYpeFgKRKqx?=
 =?us-ascii?Q?tSiekTOX25rVNAkXWkWJEovHpiBpYpXfN4r0ErvJjg2bE78byEjQdRYOFxua?=
 =?us-ascii?Q?w5o1e+OK474kzBFruQXVTtcc5hFHVSLTvXnXLVfJsqEdX5goKM7uEgksfN2P?=
 =?us-ascii?Q?+hUeJ3K9uODmlZjxEM5TXeiFpVoMZr8UIF8h5VASHcO+hXO3qbD3kMpfJlQc?=
 =?us-ascii?Q?yq+FTrYHs62ZIMEt5MCleR9ahjWS4CRJ8k+AtaGpAJ0bi1oKH7FtgXIyxWUI?=
 =?us-ascii?Q?mCDYjVOHyJwuLNyQyT7GpdEkpBvn65dDVgOEAqln9+lR9D1mg+abVFvj5swq?=
 =?us-ascii?Q?j/73tR6BDXbRG1kD0KeK8eeGijWcmGzH4P4tX28py4V0eapwqkEJ3LcYzCW9?=
 =?us-ascii?Q?NUT2wp+h8NIFx/PRz1blaETOE1twXdElZq1asAF1rOKvb1Y/aN/O4wNepkxj?=
 =?us-ascii?Q?ZhTa45YEpY5+TMM+6+NhbEvkcXUlzD6m1+zuLgAxqR6txbprBLna+hOYF6aH?=
 =?us-ascii?Q?+5aj5qduV3BcGffUaa3Keep7YIqVhVLsgc818dIrHGH8XiuApAAmNx4NZHSN?=
 =?us-ascii?Q?CmYFmx6osMpJSy3ksaAJbciv1kaDSibv0vOeTEj3SSVpX2p1LfY7gAVwnvLB?=
 =?us-ascii?Q?tSI2T6uErX1jmh2//6X6sLwHD/Q111H82xHd0wlNpZypPF+q26pt3+Ej6VYd?=
 =?us-ascii?Q?BF6f7eJ6/UFbIM7UEM2UzuF3mwIbDWGZSjc24oJoWkogQBAxt3D31FKrvaYM?=
 =?us-ascii?Q?fATqYZvUk4CLD+pGcwEPRYO3fW+X2jlaHI8CzlIr2vzrbnZlY6WdsrZAaipz?=
 =?us-ascii?Q?D5fyA7a3XM41ef0E3xmDA4XDpIZ+bAx65f6as8Z/JDBDTHUlY2gn6tF22CjL?=
 =?us-ascii?Q?4+8+jhI67e+eQhMgyVPSFRcuKRqJX/HJ9JPikIhAmf5tsu+N5NI7XhHRaiSd?=
 =?us-ascii?Q?sN7czIgGvtP6QntDnhOPiSiTypdgJD3IZxvTBhp+f/6xLg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+K5s3/nHzwGe96FCRElca9XvKMhvq0l8Skzs+awtasli+uYFSnwHSmmdRrHP?=
 =?us-ascii?Q?c8IaQJIK0ZKICDh0bqrNjXOdnZDcuobN7XnQdG21gHp70dKzU+/0+TAE08hr?=
 =?us-ascii?Q?OmChg1ZLd+WCAJZEhCkIMHIiSZAJeWdABGUuiBQT5yFWa22UB9nht015Nn+w?=
 =?us-ascii?Q?pZS5U3c0yGVWlh1rln68JcrKZZJDM2DbQ+XjxGKdyeqJHqvIvN0zLP7h+OEW?=
 =?us-ascii?Q?FwQi2YLTrUWUw9L2dI0bSj3hvoRiVyCj+otHxOz5Uawe+sHy2wopXKxUauN4?=
 =?us-ascii?Q?gFSrIUVjgXMOj1e5eaybPi+Uzgqy/UmcQ8MU3W0X+BK7Q1z5sLX2Tq93gUO+?=
 =?us-ascii?Q?V1Nwt/BRHffz4Qx5KV+RZE54Y3vQ1eKNq8+1DfZx16/7cvrN7BUU9t2+RNbj?=
 =?us-ascii?Q?SKt48EFAY7yRI1tCrJzFNvHc/oYjHdLRxrPc5DhcVHTJNIbkF3+HtcrZ9+lc?=
 =?us-ascii?Q?XLHhQOLfuwf0iNsNifKoREeJsHpOJgpGOIKQXqnzxGrBJ45rve7RK+XpNfUW?=
 =?us-ascii?Q?byGSFlfdG2jLuRIQEmxDcSf9r4sU4g4G0Qp3ifp+9YdgFus22flEUriRQtYW?=
 =?us-ascii?Q?6pIfMkjCU6RxOnA/ZrHxjkO/o/VY8cKyA66uTBeu7f/PPO8WTNS6TLfK0fSy?=
 =?us-ascii?Q?MuynRf92wTaB4XFgzY6OkooBlIpTK09i2Hsew6KAP+dkW9bnBE1WuX72PJy8?=
 =?us-ascii?Q?9DiTBKKBc6loF9W66no1pIPBGv2cBNNHnqzXj62aDjUtVmYLBYB4V7l6DI6A?=
 =?us-ascii?Q?+RQVakjfHJqVOy80fcJgCP7H/SgsorBvdnZZqtUr/D58tjpDEeKedAPTKMlm?=
 =?us-ascii?Q?djrWIXSB1C7Hma3byiB3uX3x0lyTp/+WNCtTjfatKL6IQia5o7GwFyhj01TN?=
 =?us-ascii?Q?WNtUp339cUEojT4Dl5kfmfjxFb30Px3Bln6Fd9652C/0RIs8+GpMHgjXNGVh?=
 =?us-ascii?Q?HSAaGoID3ulNtPEW5B0VQkPnCwKi78qkfchsGuLc1376e3omszNhfPmrsjGJ?=
 =?us-ascii?Q?10I7ugATflkRox46ONgYeH/CnSXzHs6gMX9QkNib1ToT4v8ZGPL98VN5/tLx?=
 =?us-ascii?Q?hacwwBZXjINx9BsifT6H03ZPqSX+Iu2+7/NPnZipq7nHBC0Mb3eaLgxCuk7u?=
 =?us-ascii?Q?ElIxDlvGq3OPImCGg9F/UrjYMEw2V8N1eoqI44LWCS/s0DczbJeUy9tf/jcO?=
 =?us-ascii?Q?PWTFQoSuSVpf4XjMHdUwi0OeIp38c1U/UhJ0BFylWSX5LMeoOyRe5o5mjx3J?=
 =?us-ascii?Q?EeB9V/cndLVwTENt4NBOwCpYNvNpWpISwp3L6yc9n0ed2Su7TqOWi+PZyH4j?=
 =?us-ascii?Q?nEQ2/pfwJTN1JJW/TriU7w+D4BWcKy1ZFdbVUv/yLLYPsy+48+6WrowMC3Nh?=
 =?us-ascii?Q?1xncDzuvhGnc5PoW/GRgC/232jWe8pvcMTYOT/vwpfhSbPkevSc+Bs8BgJ7h?=
 =?us-ascii?Q?+aZxSFLS7g4vLI1clsszu5ewq1UsrzE99Lab+45lKnrLACP3j43/kMcGeOQD?=
 =?us-ascii?Q?fAGArbcBWXIxfdsS/8kuCvERMHEsXZlMryVbkqvbSjI+0Srv4vMobMnRaOxw?=
 =?us-ascii?Q?nixKt+/aRW8RPNw6OeJ8RnM7jhoMO8WVEdDN2+S8ExtgRS4Y/Noyix8+Sh32?=
 =?us-ascii?Q?jQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d6517394-b650-449b-1510-08dccdcc194f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 16:59:26.4896 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mh5RB6J/G3yMvpBJhjxXNJFuDdJn2VNZp+0QnLJVXf96LP2A/5sXGYYI7WqkeuG8hC+y3hUkGkpuek+HYCDRXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6995
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

On Tue, Sep 03, 2024 at 05:03:00PM +0300, Jani Nikula wrote:
> Convert dmc error state printing to new snapshot capture/print division.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_snapshot.c |  5 +++
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 39 +++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_dmc.h      |  7 +++-
>  drivers/gpu/drm/i915/i915_gpu_error.c         |  3 --
>  4 files changed, 41 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.c b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
> index a61ff0f81397..030c4f873da1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_snapshot.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
> @@ -7,6 +7,7 @@
>  #include "intel_display_device.h"
>  #include "intel_display_params.h"
>  #include "intel_display_snapshot.h"
> +#include "intel_dmc.h"
>  #include "intel_overlay.h"
>  
>  struct intel_display_snapshot {
> @@ -16,6 +17,7 @@ struct intel_display_snapshot {
>  	struct intel_display_runtime_info runtime_info;
>  	struct intel_display_params params;
>  	struct intel_overlay_snapshot *overlay;
> +	struct intel_dmc_snapshot *dmc;
>  };
>  
>  struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_display *display)
> @@ -35,6 +37,7 @@ struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_displ
>  	intel_display_params_copy(&snapshot->params);
>  
>  	snapshot->overlay = intel_overlay_snapshot_capture(display);
> +	snapshot->dmc = intel_dmc_snapshot_capture(display);
>  
>  	return snapshot;
>  }
> @@ -53,6 +56,7 @@ void intel_display_snapshot_print(const struct intel_display_snapshot *snapshot,
>  	intel_display_params_dump(&snapshot->params, display->drm->driver->name, p);
>  
>  	intel_overlay_snapshot_print(snapshot->overlay, p);
> +	intel_dmc_snapshot_print(snapshot->dmc, p);
>  }
>  
>  void intel_display_snapshot_free(struct intel_display_snapshot *snapshot)
> @@ -63,5 +67,6 @@ void intel_display_snapshot_free(struct intel_display_snapshot *snapshot)
>  	intel_display_params_free(&snapshot->params);
>  
>  	kfree(snapshot->overlay);
> +	kfree(snapshot->dmc);
>  	kfree(snapshot);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 7c756d5ba2a2..d2f9684c8b0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1184,21 +1184,44 @@ void intel_dmc_fini(struct drm_i915_private *i915)
>  	}
>  }
>  
> -void intel_dmc_print_error_state(struct drm_printer *p,
> -				 struct drm_i915_private *i915)
> +struct intel_dmc_snapshot {
> +	bool initialized;
> +	bool loaded;
> +	u32 version;
> +};
> +
> +struct intel_dmc_snapshot *intel_dmc_snapshot_capture(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_dmc *dmc = i915_to_dmc(i915);
> +	struct intel_dmc_snapshot *snapshot;
>  
>  	if (!HAS_DMC(i915))
> -		return;
> +		return NULL;
>  
> -	drm_printf(p, "DMC initialized: %s\n", str_yes_no(dmc));
> -	drm_printf(p, "DMC loaded: %s\n",
> -		   str_yes_no(intel_dmc_has_payload(i915)));
> +	snapshot = kzalloc(sizeof(*snapshot), GFP_ATOMIC);
> +	if (!snapshot)
> +		return NULL;
> +
> +	snapshot->initialized = dmc;
> +	snapshot->loaded = intel_dmc_has_payload(i915);
>  	if (dmc)
> +		snapshot->version = dmc->version;
> +
> +	return snapshot;
> +}
> +
> +void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct drm_printer *p)
> +{
> +	if (!snapshot)
> +		return;
> +
> +	drm_printf(p, "DMC initialized: %s\n", str_yes_no(snapshot->initialized));
> +	drm_printf(p, "DMC loaded: %s\n", str_yes_no(snapshot->loaded));
> +	if (snapshot->initialized)
>  		drm_printf(p, "DMC fw version: %d.%d\n",
> -			   DMC_VERSION_MAJOR(dmc->version),
> -			   DMC_VERSION_MINOR(dmc->version));
> +			   DMC_VERSION_MAJOR(snapshot->version),
> +			   DMC_VERSION_MINOR(snapshot->version));

I was wondering if we really need to stash the version, but since the
print can happen later and perhaps when it is gone, let's go with the safe.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  }
>  
>  static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 54cff6002e31..e2186c900505 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -11,6 +11,8 @@
>  enum pipe;
>  struct drm_i915_private;
>  struct drm_printer;
> +struct intel_display;
> +struct intel_dmc_snapshot;
>  
>  void intel_dmc_init(struct drm_i915_private *i915);
>  void intel_dmc_load_program(struct drm_i915_private *i915);
> @@ -22,8 +24,9 @@ void intel_dmc_suspend(struct drm_i915_private *i915);
>  void intel_dmc_resume(struct drm_i915_private *i915);
>  bool intel_dmc_has_payload(struct drm_i915_private *i915);
>  void intel_dmc_debugfs_register(struct drm_i915_private *i915);
> -void intel_dmc_print_error_state(struct drm_printer *p,
> -				 struct drm_i915_private *i915);
> +
> +struct intel_dmc_snapshot *intel_dmc_snapshot_capture(struct intel_display *display);
> +void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct drm_printer *p);
>  
>  void assert_dmc_loaded(struct drm_i915_private *i915);
>  
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 15d57206b281..135ded17334e 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -41,7 +41,6 @@
>  #include <drm/drm_print.h>
>  
>  #include "display/intel_display_snapshot.h"
> -#include "display/intel_dmc.h"
>  
>  #include "gem/i915_gem_context.h"
>  #include "gem/i915_gem_lmem.h"
> @@ -871,8 +870,6 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
>  
>  	err_printf(m, "IOMMU enabled?: %d\n", error->iommu);
>  
> -	intel_dmc_print_error_state(&p, m->i915);
> -
>  	err_printf(m, "RPM wakelock: %s\n", str_yes_no(error->wakelock));
>  	err_printf(m, "PM suspended: %s\n", str_yes_no(error->suspended));
>  
> -- 
> 2.39.2
> 
