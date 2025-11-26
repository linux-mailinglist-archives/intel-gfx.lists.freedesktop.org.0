Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B726C87C57
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 03:07:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3E8D10E4F1;
	Wed, 26 Nov 2025 02:07:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a3/+K9ka";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A8AD10E4F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 02:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764122842; x=1795658842;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5EMg5kJIvgzXAcgzDfjVIaUK167MvbbPUFpaHxFrs8A=;
 b=a3/+K9kapL05l1ZMlp4Cxvrbl/SpTHxJrneskq5PS18x6NALhB9mZY9v
 aXnOZ7uXF8VL8yR+3qSQHG+Bz66JtGPfjpDy36a3oxdLtBa9wJKGZ4cj5
 pw1nx+wm46EskWqVv3CYCGiDl9RNqsiLKTSDElXXTbK00zVh/zSe9O1S8
 ACGgpzt538JB7jD/uQevb9n5BDpZnAoSxa8WQD07Nc+EqaIh3auL7x9sK
 St/q9zpu0IbSblVoRLrI+Yf4ANW/wscXWeq+KhPhdsa5TLUIaI6Bxr/89
 gvkwTFMiYTS64zD2Yc9fnJHtSEhJR2iq2VWT+YTjZlyuxaa2R4F+raMkf A==;
X-CSE-ConnectionGUID: 2bbme5hrSqCeS/jNbm4V7w==
X-CSE-MsgGUID: qp0+Cda2SZWOeehNA4D5yA==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="76834394"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="76834394"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 18:07:22 -0800
X-CSE-ConnectionGUID: uIW0BtBSS9GAmPemPETvRQ==
X-CSE-MsgGUID: zlrJuj0zTeuGL+wNN7J6FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="230064031"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 18:07:22 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 18:07:21 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 18:07:21 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.15) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 18:07:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UVBaYIX0+M09337VBSxwA3idRFCpoe57nNBBaiE+/cwgD7CIYgQjlw4wPHZO2V50Bu5OX9aDpBjkE5P0mlipSPfWsgpp9Fpm/pKnweqxmSAQ5TRPMhojvilFFOKMzmcNRAGs1Crsiql80lb2407jTRqtVC2kE6lg4W3SzJm5jgKDiA/cwxYkkzcVBi1gYHsQVx94pubWgDJVNaWePOMNZb6vI+dvyyiF+JsnJUFGjZlaKTg30Zg4y0HkhxymdByOy1j2/BDebkT0l4RApZyHcGsJXPkNO+V70SRYTULC4cZguuLFH6tjSNGf4WQNFs0p920qIA7TGCLf5QzxWMSx+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WDsjjE8LI9TjC8UfZ8Pyik6J6s9M8TSvu+8Br+bVIsY=;
 b=UwTK6ZP6iIOvwKpGMVSVZw3lVUNaxfcVQmAjDHD1QTY5f2lwHc7BFv9AqqI3KoHDmJq+g4QoSJkXUStsdXi2dBu5Zgqjv/zD4DYxu7z5AjcS/6cs9FJgT5vQCk8QCyWGtfvZk/bpY7E1H6dThOjNUZi6rAkv84dTyCzCNSlnQQGSS9fZ2CYsJISPBqH2pD4Tnqm+PY+/+AcbA6TzNvo4JSSjsefFK0mhHTCNwnjwQion1BstmaDAtGe8V2Ci/9kvnwXrZdw3Fea7o27+oEPCYEn8KNi2U05dVXx59CDZR5waI5uvqLc6k5Pv9Xrl9jf4ZhW2kK6hNnfp6CfggXCVSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by DM3PPF58BF5162C.namprd11.prod.outlook.com (2603:10b6:f:fc00::f23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 02:07:18 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%7]) with mapi id 15.20.9343.016; Wed, 26 Nov 2025
 02:07:17 +0000
Date: Tue, 25 Nov 2025 18:07:15 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] fixeup! drm/xe/xe_pagefault: Fix potential uninitialized
 fence usage in xe_pagefault_handle_vma
Message-ID: <aSZg0+/3HaV3L26e@lstrano-desk.jf.intel.com>
References: <20251125101841.2325554-2-naresh.kumar.g@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251125101841.2325554-2-naresh.kumar.g@intel.com>
X-ClientProxiedBy: MW4PR03CA0088.namprd03.prod.outlook.com
 (2603:10b6:303:b6::33) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|DM3PPF58BF5162C:EE_
X-MS-Office365-Filtering-Correlation-Id: b3fd3034-11bb-4451-febe-08de2c908690
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?GtaaRGE7BBxrO8araaBqZEh/CiGhNNGUmRRNVqPCBJ6lY9hlxVkyiY6CJnEp?=
 =?us-ascii?Q?3QfdmH+4GJJLZ7T0Tq/tU5aEVBBPnGvZUI3fqhJHDDnbd8vc4nrR26XJEN05?=
 =?us-ascii?Q?MUijJ69+JOml17M5qrPLJG8gK6OI7PSxtL+MUMS3kHx7fOPEc47wtSwVkPrg?=
 =?us-ascii?Q?IqkxGngRhZTz19PMSDbbIrMjv0ecxSGy1lP7eDTD+g06MTdkkPQQNynrUTOF?=
 =?us-ascii?Q?dObMbqWaUZOTd4Z9e4ncKbA7CQurLXci9r5gw4DPeBUgAJUty78GDvxjDJDo?=
 =?us-ascii?Q?vggfoi2x+ylxu1a/eSjLpphnft9TDCK5ccZV3FNQjkKzmygSWxe6NbesMnpW?=
 =?us-ascii?Q?1HpfJrCkNiVh+9Ctd1rrOyoMJi6vUVzunW6FwGk0paKCjazsFKAX1CA6b4l4?=
 =?us-ascii?Q?JeGlvpwF8mDzbQTaoFY9QBW58AFZmNVbapRyL0FTUT78xnfZU71J3dLpdl6y?=
 =?us-ascii?Q?KYnDu59H+eBLrdZcc0I0THYDYb9xwV8muGBcE1lnJGcdmGTF1sfG7uRQkOOB?=
 =?us-ascii?Q?yjvSFuSXsRU+kCZHESoQ50QZa+sn8vWuWMgzDLcXqF4uayOyt/UyIAxhlZtT?=
 =?us-ascii?Q?839N9DhdGCLDb3ehsgzF+dbnKoXgnIABSbXsDyajqfON5dZrUb/NY4yN/WKk?=
 =?us-ascii?Q?3gNXNK7wh1tMR/RESYxOISOKpKbC6tUp91A/AfqgjxvzDXK+ahKxVf0TJ6uN?=
 =?us-ascii?Q?dGzLy5sAfopBtXUBnsm42CQV1ji8reNgHzETIj/5cCdNunWfg6QgpW8REex4?=
 =?us-ascii?Q?BrpEDDSRjDK+bo3NrFU79AbAzlK/lQQAN2aeFePGfSsM2gEECDsWn6hB+13s?=
 =?us-ascii?Q?2iQM0brp5X52E90OkbOBUsbtsOJDXdLsDz9KXBh00OG95xU5IDG0jOyagpOS?=
 =?us-ascii?Q?qDB3VZFL9L4Q9yKst9uZtGjxRvaoB7O4BWAAlh2EYI82uiYjiAkJKiWJAxTT?=
 =?us-ascii?Q?uAPIeMtFRBJWzb/acot+WquuEseJLI1EUo28J/sdoNNMxs4KlkD/EyvOptD0?=
 =?us-ascii?Q?kLpQcwVg9AOpog8L5FriN9Pqu8H5r0IP5Tf2VYacX6GuQ6tWNOwcEFqP0wx+?=
 =?us-ascii?Q?7PYXV2MnCJNydxDbkfB4o/fcFKMXsWcWPvRaSj+kCesCF7AcSuhZzbJy+6Cp?=
 =?us-ascii?Q?9PPUzu12ngZO4+yj3PwpQY1mIqk1OTiqHVZHvhu6OfXKsk9on5uij+swQwCF?=
 =?us-ascii?Q?2LN5UCJBQuapHC0z7SOkjyDK1/l4AUtMqFiqS7IJcnIEDQvyqmjILrp/6b+4?=
 =?us-ascii?Q?vYHsvvT12fif6Ff8KwDVG5I4Uw2z3oACpzEqWQ4wtCD3nPoDx4kDAoDwdzV0?=
 =?us-ascii?Q?aesE8HyZRIpUdYW6Vem4kA+JM4frnzrNKZC8J6I4bX/WpyK6YWaJh3CdQbBi?=
 =?us-ascii?Q?mxcZzQzD8uX+8xCqG1O3sVmcM6oxxngpCB2HrEM89c/PnA+gzzGYlCwiUEoD?=
 =?us-ascii?Q?yxL/NB5sfS17Yg68WXd67lpp7bB2rAXg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?T05Jo3Y0Wd4P2LmX/p+1O272YuQAuXIID88ipnSyzapmZxgwKsjYRgaTn//f?=
 =?us-ascii?Q?/ceEnLj6+o0IpgWNsdQuTeTnnWk6CrIdEXjoYzasIzk6sLdP57t6ejSPoXAJ?=
 =?us-ascii?Q?BTlGVwCR3WERWhRrJ6oh5LV9nyY204K5hvpfu1kUsyiHWT7Mgui+OWtpF0FE?=
 =?us-ascii?Q?xIpl6fK1HEgvKWNUSg/+Nw5FuoRq8QNdsEFnSFFKtxbzfZT6KusfxFxm3OWi?=
 =?us-ascii?Q?lrzFcsd+UdyC22z4JVC8juOpfomjJU6LxinO05Z4qrHKbLh2egX4zYdnS0UJ?=
 =?us-ascii?Q?4OtMMCA3v8taMkhR37Yg3r3jP9kORJO9jch2GmBA/4so/YmrVD48Pw14mBIr?=
 =?us-ascii?Q?XxjNboU7PUQT6pXe8FMD3mzIXnM0OG5/JvGV7Oo3glvtIcw7DI4Mc5mHYjtq?=
 =?us-ascii?Q?hVBPcGlGHRgWClQsXks8nGcfafd8SKSDyH0IyrLbaj1Y7BWSEf7tq6Ia/nut?=
 =?us-ascii?Q?wHCu7iqbz2He7ZQ+ZeE5QYAaas+QfRYZEvXjBq9ZUfuhGSROvHdKMyxRUFm9?=
 =?us-ascii?Q?QWc09AxWFupQMGaEa5t6igLrjoyewt/Pftha6JLwgronRAbOdum2LzwTJ+Nv?=
 =?us-ascii?Q?wdalG0FYS6ltw8Qu+hnUY+D0bMPUkPyqAz0fZJMZyqHPrtXIy0i6Ldkre2YE?=
 =?us-ascii?Q?q32CB5MS/QPKHXMqygAtupHeTQ7+S5eS5yCUS2n6EiiEFNB8cOXjkqUgBR/F?=
 =?us-ascii?Q?hOhYN2XnKatkHjBTUkAJ39vgTyETa2jUA5A9MRm3qOBSlyPkQU27P196pLaL?=
 =?us-ascii?Q?5UAsIqokg0vruJq5IseMlObHSlAB2GtLmaw9PYjujJIxpdtG/5BMdLjOJ1GC?=
 =?us-ascii?Q?+2LVX8XbX7xsO0Cn9sg9mBqE5D0oGTnIOGipbO4IjhlSdRRuW7KxaZhHfnAm?=
 =?us-ascii?Q?4MQZxbkUBvB40VKKlboHaroEe/kTHOdjQZEB9laC3+ulSzn03g2XlUf8ztP/?=
 =?us-ascii?Q?MhSu2136voHCgguy0njRomRFAHR4BU15D+1+ITG1vqoGdDvSfTQLsr3Cemy4?=
 =?us-ascii?Q?QS4O/EeZMKbwoEiMwOEYawoE6dotrVOH21oGnBRELJ6e3ozoiDWIvq2yG8gN?=
 =?us-ascii?Q?yvxmYIeJ/iJgm0wFyxUiBEchfBHahSbeDtTRlIEzjKLUvW1cnKg2e7d8YL3C?=
 =?us-ascii?Q?iSR6ZoW6uqPr5dFOX3HFZii2xk4E1rNRidIsT5NwGdgAh1r3Re7FeeTNK7DH?=
 =?us-ascii?Q?7avMkjw1ApUZvDwlNckhfNyd53MJvuWiNco5oQfYIbW98YvmLILi5kYMIUhq?=
 =?us-ascii?Q?NowysWmgvrMTwZ+xJEvlMS99UPghDFi2cp8NKa7Ek4OYalL5lIV0/7OO5Vuj?=
 =?us-ascii?Q?PNT13eUvvcGr/RiFxAwZ4wpvyF0UvpJtIKYOIyBtwA2YlyIhK/rS4XtTQblx?=
 =?us-ascii?Q?i8czgzHPDAyWxRFDwJoPmjM1aeUjjq+1KNI6XR39f4dnW5wceo3ObgolEiVk?=
 =?us-ascii?Q?DRtBTMtvJM6FfjYUzesmyNWa6vNkEvHUouTUeCHyPJffHXXDle9fn7HuMNwF?=
 =?us-ascii?Q?93vH36r9FUu9yAwMZ1wprh0CYgN/EOaLxFUSY15mQLKEiW9v7ymgSd8MDvKD?=
 =?us-ascii?Q?A1zuYUOlG8pmK82Y4PLeCJgbHDtnPyHkJXSndEGx2mnUNY039yUCY1jH84Uf?=
 =?us-ascii?Q?ww=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3fd3034-11bb-4451-febe-08de2c908690
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 02:07:17.8861 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eLp/7xilqZhJUNjcccPZ9Y+MBzSUEhOnexyonLibx8FXfl0zYzvC2GM4HbLwJDtltfGdwwqC4w2tHpI5fN8olw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF58BF5162C
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

I sent some replies to wrong list, see those but from Rodrigo:

'fixup in the commit subject is absolutely no no! This is a git
indication that the patch should be squashed to the one introducing the
error, but we are in a non-rebasing branch. So you need to provide a fix
as a new patch and using the proper tags indicating which patch it is
fixing and Cc'ing author and reviewer of the original patch.'

You kinda ignored this feedback on the resend too...

Matt

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
>  
>  unlock_dma_resv:
>  	xe_validation_ctx_fini(&ctx);
> -- 
> 2.43.0
> 
