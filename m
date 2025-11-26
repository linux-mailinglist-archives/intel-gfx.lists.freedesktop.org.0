Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D478DC87C2A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 03:02:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB7A410E08B;
	Wed, 26 Nov 2025 02:02:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ghrsd9U+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6732010E08B
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 02:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764122525; x=1795658525;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=cGDN5dgE71y7qK+qKSwLnlT3FXR12VI2EUPjofsOf6I=;
 b=Ghrsd9U+S995Z9QEHG4mo6A4WotVbOnqocYPU1eu+BVFr19aei3zphfO
 I33kGwt2otciMfvxNJEKPLH/FuCzxFBNc7Yxl48mlYdQFCaauO80UCuhX
 /XwnUSRxZfAHYsxRHyEqYyrdbF6PuIjzA+pExWhxCUpDgxlG+eygecVk8
 o/jZiY9O7iF2kQRnVLTutscKUHQrE104YZ6SNfojG/lHtkUUfB7VTgbei
 yDF46OMHrkPgrJvyiFcipi+nt6YmU4pfuqbi0trPmuqcdPjvmE8iGB9R9
 UTSeU91Jobm7CmP+WfBoT1uGx63bJd4u8dsFNx8HhI5SOr1pRRsEHhfLO Q==;
X-CSE-ConnectionGUID: rfPDMQzIT3ea91N4+ad7hg==
X-CSE-MsgGUID: BkMcUwddTmynGE1+zm2cRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66036215"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="66036215"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 18:02:04 -0800
X-CSE-ConnectionGUID: rRTnxxsSTyyhRjH/qMfg0A==
X-CSE-MsgGUID: AwKBFPU8QbK9z/qDvKMY4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="192822982"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 18:02:03 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 18:02:02 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 18:02:02 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.9) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 18:02:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v72TsIHF9gUu/NMdBhv6Hq+KrcT59fa2uOrRshIXpIPW4hW0FDewzVBFXpYVNDrHo9sBN6y3KgddnvoEpbL5mx0d6ftH68JeXOZL4FNdEc8WWCAd32qQJVhMC0tkLHaFwZR6ix7IXQaWiVn0SnRv/7O64Z/cBL66pagE7LdzYzLSCccMb/h7MJyQvKdceclZyyU2oNwWCqy93zUxzaPXGZvJk+AcmnhMAS722K2WJpkQVRkV0wMNG4lWcQTvk3kqwiqsUNYZ+FMloFUKqMZ6rqETPK15l64RTVVwU2VFRLoh8FSTMOXG9Si/anv5hWMUpoBjWpRu+zwuK6uiPc/IgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oky/EB2XQazLg9//J/aH7AglP5vicZgZPrdr2Yjnl4g=;
 b=ptIToYdGJYdv+gkYJKLRBDXpxGMn7pEWqgHtzrN7kcUi8UDJC1w3cgfKp12tM6qwwbMv/aTScrjlavOM9Z/F/ufYSYPZswjjJazsP9P6k4IPvEx/JZC1WCMhT0Y2/Wjf4BnqaOk4xiST6xueMeuAvVZ+KeJ3M9iEehG/dHf1Czm5kWXa1+By7pzBUVi6jqk9B48bDIXk79DpxqrRslX/p1or00s0jg0etulLNsfBeyCRHo0pzWTsgQySg1Jx1T4BlECnTrO3EfjoQ6OIozn+/egS/FtuRX7mx42jE3vXWrZC32iXq7xCXPhYWDBtCCmU2q/dX7AkuLLMLskpU+3vAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by CY5PR11MB6413.namprd11.prod.outlook.com (2603:10b6:930:37::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Wed, 26 Nov
 2025 02:02:00 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%7]) with mapi id 15.20.9343.016; Wed, 26 Nov 2025
 02:02:00 +0000
Date: Tue, 25 Nov 2025 18:01:57 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] fixeup! drm/xe/xe_pagefault: Fix potential uninitialized
 fence usage in xe_pagefault_handle_vma
Message-ID: <aSZflcvbWFwFUYuI@lstrano-desk.jf.intel.com>
References: <20251125101841.2325554-2-naresh.kumar.g@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251125101841.2325554-2-naresh.kumar.g@intel.com>
X-ClientProxiedBy: MW4PR04CA0065.namprd04.prod.outlook.com
 (2603:10b6:303:6b::10) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|CY5PR11MB6413:EE_
X-MS-Office365-Filtering-Correlation-Id: fff75765-01a2-4ea7-bdc5-08de2c8fc934
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2mgYm6thqr+Eiz8+MhMFKyoI1l1rDwpOR717tczCT2lVE9bIgE8bVvldKFjO?=
 =?us-ascii?Q?Mk5lPVqgDLL39iKCBN7yHeRsw9tz/Zbc41fJWVcCECtTO3XC9p2R+cGIoCZT?=
 =?us-ascii?Q?y1Bu5T7jMFOUpw5uheCAFENQiJwnq+WKCHD96vXWBbtVndpvbWa9MPRzNFpg?=
 =?us-ascii?Q?RsDnqNjdXRHVySOl5Zdf+H895kZQKEVxbDD5XRBltuGcOt+Not35PDjzIPx9?=
 =?us-ascii?Q?NZSJdnUfENpKWk6TEQZ0DWe6eyRWG5VFNaT9bqxb3s59r84UTJeOYGVgj6A5?=
 =?us-ascii?Q?dq+7guPzE5VWDyIKsdPSiALcQaC5gRdyCS8IQVyPw5DMomyizn2wMC89EXk0?=
 =?us-ascii?Q?28pmJ8VB7+HUNkwXAcODKP9ZZz+uwljoQhNX0UXhA2oqSPw924l7VCANLz3O?=
 =?us-ascii?Q?wdezC+zupNJuLSE149MVBN5FdWU8R5xpNC5k4imT2cH+5JkM4h4QtCWLPY8S?=
 =?us-ascii?Q?1VqzlybG+HmchbVcdUNop/jKcE/GRTa8a5dFQhXB1hn9VVD2kTw1poqVRTK8?=
 =?us-ascii?Q?DRr6AD8QFMuazqFwINMWAW63ni8jC3Kwu1hLvfra6g333wltdIG7ihp1imYU?=
 =?us-ascii?Q?1kQgj7jEbVMIsRtVIMPqRZCNAl7bIlCcMfZXTTwTlGbvqPmBpcV28H+A1im1?=
 =?us-ascii?Q?MciHo5OAfmtiK+KbDMcMWeXXh/WXhe9jgq/udEKBwDHVTIh/cFEZQUwQWkIY?=
 =?us-ascii?Q?6y3f58WJsY1+oPg4jbHGh9k0NS4Op/D250zokksOG1hcSag9UGFQHm3rlZdf?=
 =?us-ascii?Q?moio/0kr1RfVIrhxAxTzpLcWtnP4xL6PvJDNTHBOMRkHc40LRCiEwk++4WV4?=
 =?us-ascii?Q?XRosYOuk9ew3Q0UD3a9P5F2tDyydgFRwKwj23yjTPg4k6KUKkM2/FdoWJQ25?=
 =?us-ascii?Q?6Ja/BfeXihtNOJANGX2yV/uJvWi0XYlEEbmWgqzkhCoRRzf2rjh02lnyWpxy?=
 =?us-ascii?Q?MODeLY0BnfKVzof0X7and6I8qWHaTDRP9h2lClMwWW6RqP9TwkMmg5FjfktO?=
 =?us-ascii?Q?Mx0swlmjbL4iY1l96gcNk22Hdq41KP5yaWJ7IzvIx4QA/GtsFzqvMCj98Ut7?=
 =?us-ascii?Q?uVHPbRJ6AuAR3mDAADBkFKUAXbM9n4WW+8WvVnIxJx3gxkQPTlP8BAx6VUpH?=
 =?us-ascii?Q?aMNoFxla2nksdzbQ2Glk/Ln4GuQNEfqju5/kgQrXFEV0BCcf4kWpANJt8EkL?=
 =?us-ascii?Q?dp/kTYJGD3WF2KfUYZufSQuIN5ZvVF4W3dVqHRAPmR3ZUWu/Xhd/9y1Fyext?=
 =?us-ascii?Q?BdmbI3Jn1OkXpOXWVm2XJ+cfjA/o4OBUbtnx9fTB8uOMMWXLyaumH+GklPfl?=
 =?us-ascii?Q?cZ1kOYLI9tu2IJht/MmAvC60VIuMF1R0SpRGz4oCzJEK9trwrhMP+5h5QL5+?=
 =?us-ascii?Q?9cGarjZe95rFAsk+OU6AU/M+HTsceas5lmdYSeQyFyo+xn00UEH0J57OOlib?=
 =?us-ascii?Q?b9tcmLQLOjxUDjV33moftPTLzpZeyulX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?t2s0sGrlVDua3fX0Te41atl5N6SFZ/lzwfsqckAUIG8cUH2SSlDmBQOqQgA0?=
 =?us-ascii?Q?HiqKI0PCul1Q9XlUvLsEI6DkoAo5dz92NC4SXTsNkDprDWee/kBpv9V2fFNb?=
 =?us-ascii?Q?Y0Wfwn23CWFBKrPnY7YlqQSZdJocAt71Zy4qdqmP3pQ/WNgMbtLNFaZPVeTT?=
 =?us-ascii?Q?IzENk+KDrdjNHmWTM9RIc2eLbRsOyD10NWndyUCVCroZSYpJs0hdbFl3z1JV?=
 =?us-ascii?Q?9kG0G4gnBNHSmqXfih7aTNb/a72ghoQDg3GFPOA1FF3f2NhCTxDNQ3bXM5Us?=
 =?us-ascii?Q?Cu5VDFusWgtcRoXBycFhjQGj/LN/aRHY2GS6fk9IlJxW2YxkIWX3CKM1NBsB?=
 =?us-ascii?Q?75NXWWv6JGe797bDukJNMO05tGFWNTEdNJN7GSSjy3HaEGRXUHOBc+S7JREf?=
 =?us-ascii?Q?+6wVNlzP420vBeqjeA5neT1YBRkOW0B3+/Ppw0YeH3M9wj/eUPie8VDBJxqJ?=
 =?us-ascii?Q?1qxAXfYhyV2spV/OEiTJOVlT3iKczjRdxUB2N8r84BIIm3u3gXtekPZO8jRn?=
 =?us-ascii?Q?5OHgIgxZysoj06cYpYKtTImZPG1qgdPAvekmzp5PZGjETwigCQ+H8uQqaolB?=
 =?us-ascii?Q?oiyK6v84ksEFYi7VWEXUoLD9fBztQ5ktAaXsz6c1/+rH2YJzQzZjTK3q1T2w?=
 =?us-ascii?Q?0jqUWby+YYVtHRMYbAGeEOG/Bf4CY0h7GdqWAkvWbi/PiR+Jk9ynhb2Vf7xl?=
 =?us-ascii?Q?Sfj1ofyDeYAeOHUMBN9AJRZwpHuk/+6CqwcVSWhnSx6G8JS7klsxR3fl2R0K?=
 =?us-ascii?Q?nraTFUwSiIf9sZwN836FtcBh5A8sEaEm0zS38bf2sVeCBozEkWQ1Y0BzVnnt?=
 =?us-ascii?Q?vgNS9jTa/w/RAXMRfVxRwsdRgsZod86wjYOHXHXKoCF/TJQaSK7MwAT2Jnv1?=
 =?us-ascii?Q?v0RkqUyt4gC4fX34Q7O6GAhIbQ1CG2I7cisN6wvftltRxbSguOqmB6KAOgXI?=
 =?us-ascii?Q?VNWBO8IyuKc1JVawIZ3q+jE6ld8dO7oGARrxAuNwpMJBYgOsP9+fUNGNDE9A?=
 =?us-ascii?Q?iwJ8uuF6MMLuvJLmVLwVkq5Zj5lAeyMntqzHs9p6aZk3t0awQRdoqh7bGIVd?=
 =?us-ascii?Q?8j4sSILOLtzZs+jUgsCBNr9VOdBFm2KHf6uK/mg/hLJB/TEBh5xlVwfro4SA?=
 =?us-ascii?Q?BWhT9BV0gkC69MrucYWEj9t/hId7jgGeWXW96a82guMn64S5Qamo4DZtxGea?=
 =?us-ascii?Q?HQ7KXDP6edsIT+SnvUbzAnm77O0l1b4GVBakUwAhN7y+UNNkCDr5LouaLojo?=
 =?us-ascii?Q?vm5hJDyQYNRBn1WnSPY9XT0mIxpyBRLd0DlDdmTFMKc/GWc57+aG6HxZA2u5?=
 =?us-ascii?Q?tyCfcc6zyi6ySq0mP7RQgqPmhV1GSQEfrXB+mzpZ/RL2R5B/fStH/DSstS2L?=
 =?us-ascii?Q?1075FFoek5jqbveuHAb29PnfpjTVRSIZmAVpEsxBaCCFUSvW1ccLCzp0GwR7?=
 =?us-ascii?Q?eDjZdwXon+UPE1Wb34yeMzUlGolh2032kdnZjHfz6j7rjeBasmhoPM5M3VNe?=
 =?us-ascii?Q?aFMdmvbNtBRnhqoaH3STUF7N0wGxDgm63v5tV8xVIPFShj/qhTx3cYXDSxsV?=
 =?us-ascii?Q?7rMEhxib/hko9D3j8XuNAPI4FVc4qHoSpgTyiPpKY1/DZI6K19A0CGvoX0xp?=
 =?us-ascii?Q?4A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fff75765-01a2-4ea7-bdc5-08de2c8fc934
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 02:02:00.2065 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: poAgtTYahM+lqEgGI5ssRkD2eblpIiE4KwnKY2+49jiHDry8xzqJfmtf94I0rHhpPXGjQH3XU7PwobXklP7qpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6413
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

On Tue, Nov 25, 2025 at 03:48:42PM +0530, Nareshkumar Gollakoti wrote:
> The variable "fence" should be initialized to NULL,
> and any usage of fence should be guarded
> by a check to ensure it is not NULL
> 
> Signed-off-by: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_pagefault.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_pagefault.c b/drivers/gpu/drm/xe/xe_pagefault.c
> index afb06598b6e1..401f1835939b 100644
> --- a/drivers/gpu/drm/xe/xe_pagefault.c
> +++ b/drivers/gpu/drm/xe/xe_pagefault.c
> @@ -70,7 +70,7 @@ static int xe_pagefault_handle_vma(struct xe_gt *gt, struct xe_vma *vma,
>  	struct xe_tile *tile = gt_to_tile(gt);
>  	struct xe_validation_ctx ctx;
>  	struct drm_exec exec;
> -	struct dma_fence *fence;
> +	struct dma_fence *fence = NULL;
>  	int err, needs_vram;
>  
>  	lockdep_assert_held_write(&vm->lock);
> @@ -122,8 +122,10 @@ static int xe_pagefault_handle_vma(struct xe_gt *gt, struct xe_vma *vma,
>  		}
>  	}
>  
> -	dma_fence_wait(fence, false);
> -	dma_fence_put(fence);
> +	if (fence) {
> +		dma_fence_wait(fence, false);
> +		dma_fence_put(fence);
> +	}

Maybe I'm blind, but I don't see the problem in the existing code. How
did this get reported as an issue which you are trying to fix here?

Also I think Rodrigo mentioned this fixup! are not convention in DRM,
rather 'Fixes' tags.

Matt

>  
>  unlock_dma_resv:
>  	xe_validation_ctx_fini(&ctx);
> -- 
> 2.43.0
> 
