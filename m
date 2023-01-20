Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B13BD6752BC
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 11:47:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E03FC10E0EA;
	Fri, 20 Jan 2023 10:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E7EB10E0EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 10:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674211651; x=1705747651;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zDzo6qt8BT4y8TKorYiKJtyztqUS8FdAasNKjrIp18U=;
 b=a9wlXe4faP1Ep+QW0n1RtLsN22aNqdnL7ZPjVcC0DJbWjifs/LfMIKVY
 tE9GbbCjntcWGjO2VEkK/bwf/3F2lcS9lZoz7/1idf5OGo7GpeTRa14dH
 WGnp5AO2rjzP0k42kgJDWGty3JgYkxtbkFtNQqDY8+O001pGCuLeNM9D4
 chFqqI8EQ2NL+jCU7z7dxLYRIxAOCYU8vtgTZKJl4gPc7Me2cqTZHgKu2
 JN5yCBSJO7qELiE9yW7fcgBJ78RYiO7euoD/kcK9I0GyemQEL+4MJ9AVJ
 +Jy2BBwfKg3VQupagwvDK/V+mZwd0MhRJXKe1EqqlDLDO0CyMWLmoqpK8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="352806817"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="352806817"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 02:47:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="834378102"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="834378102"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 20 Jan 2023 02:47:30 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 02:47:30 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 02:47:30 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 02:47:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kn45yUjTOI3znb9CBrkP+E+X8qf+ILcAg5PEt5wXm21Um513TX0l+HjBEWaPs7VgY3Wj3nVdk0+Qdn04o7kJSOG6BblyRFnKCzP7dPcDPIrp3mnT0QkoF2A9dc03xsKiLdhnehQUWuxBkz1IawrCoK+vI0f6Rl+tfMndTkg24M+13o6DjdTrCZPzltlrJDD9ssAF2CvZOU9LXLG5iOVrijxwtuybyCbgXaWiwm6hYaXbS+gNP9rkX3ZN06yOYiRYP4zJTYmArHt1E5wlrPRVyRCTc8HStUabO9Q1RX6YM1PODYRaMBB9BXREo44/f+lLzGODBngRnqDDE3GmyDp6rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LcL4p5F9m3Ax8pZ9YUbB8oqR5a2lc9OfihTFO8jXpVM=;
 b=RyW0GW6kVeSRmYEd1GrLjOVVxQ8lWWinHatbJUTUA/if2ub4Zc6BvLf/cCzvISfL0dkps2xJ6xKeTkDkTjqbOhIN3AyApS5V3EXkQiCpyaX5y7odb4bFXBbqVTZF4xp6kWHdAPwAaEf7q5McL4uQ5rAd+hxYxrwK2Jew/d5q87nKO1D9hGEbXPfKejX4VWRt7r0gthLrDlBoyQV4blB6of0tRNqWMgsW/OCDQPQ05hQFI2RSeHNZwjJT+IJpIZ48RDNPBurFvvmc6AKoFomRVfdLweXAatFgyQDZP5IIBWIYr88ABvzaLeVYc2Q1sJ5iq1+IQoDnjjbYtnJv6JtpdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CO1PR11MB5108.namprd11.prod.outlook.com (2603:10b6:303:92::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27; Fri, 20 Jan
 2023 10:47:28 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.025; Fri, 20 Jan 2023
 10:47:28 +0000
Date: Fri, 20 Jan 2023 05:47:22 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y8pxOlXj3gk0I2Nz@intel.com>
References: <20230120010639.3691331-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230120010639.3691331-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BY3PR05CA0011.namprd05.prod.outlook.com
 (2603:10b6:a03:254::16) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CO1PR11MB5108:EE_
X-MS-Office365-Filtering-Correlation-Id: b195e9f8-a604-4b6d-7091-08dafad3b8e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m74uYZ/yzAXrUmvJ21MuS2ruudPEcuNJnYVLqluk+Ep++fUFMsVg4QFmnPe2a85XzgA4cCEr3/d6wRg9S7h0TB71tZ+OR5AW2tQZP1jPOScAE20zDA+vHTQJtiaJaq8uL4DWvYxXwQsnAouClxiEsz+HumvAODjMf/Ht4xR/yQLhjlUiQjaX+GoDK2wZ7VTsn+VhUe3LY7w7a8zb8zo7KfzyToSs/dJ2CLYYtzHACz6hqDFoWDvRiJnAI5zCByVPhRl/KeX2UTm7PxvCTCuE4tbhq36B8BgHtBzFKwqVM/IaME8dHi9s1fbbkXKKXUjS57MlKJdnRmVzlraTgdmCJ1i2dFdn6/9nMS3IfsDRf6Sffr3n60LQnQFeWTGKhqVjMCk1zXelX8fCeN+ivn2HvRMfXwBC5kD6M8Tcbsg/PdPGnVvF2Ec5MHW4jwsdocqSjfRWgBgyVqus0vXQfdBhqvE0aY4vr10D23aTHQCI4v7SDWd4PhLXag2mnuJ8o0vEfcV/+5cdPOeB+zU9CPm7lLqaFjps42rppiGlwvjjwfmxgH92RoBmLv1CID6ShkTIiWtqX0yzXzO/bXPX59H9b7BmW/XjozjNBMNN8p/AbX4YQExn/QZ3qNTgKlMpuBkJBvHq05FtwmuTeJTr0Lw/4g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(376002)(366004)(39860400002)(136003)(451199015)(186003)(2906002)(6512007)(26005)(6506007)(6636002)(37006003)(316002)(2616005)(6486002)(478600001)(36756003)(6666004)(38100700002)(82960400001)(86362001)(41300700001)(4326008)(6862004)(44832011)(5660300002)(8936002)(66556008)(66946007)(66476007)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EeOkNYbDxk+xqrbEHs54NksLCZ94k1XzqwnHpHp9bQB3vE3QA/MwiAbs9uvK?=
 =?us-ascii?Q?xQh2dopOZaMN41iVjjPH35ahKTZ/SLJXMd/DKpaUhr4XN/F8//cSiMrA6Z8N?=
 =?us-ascii?Q?bAdID9AWaIx+RekseJpAWxkBd5JT8NXHxhBfyZp4D3hwIhqY779yFViG3cOK?=
 =?us-ascii?Q?asF/UKwapKpNX/zOoZ8X6Bu6Sfs6U5taxNEs7DK6nkPysAsLNmUlGhPxPjYf?=
 =?us-ascii?Q?6wEjpQQR7Exh5wJ6ZWiWGHxm1KCb2l1EENiy3bjQS5qLfFFW3mL2B/0rTXxK?=
 =?us-ascii?Q?KOT22WA+UrkBgAAzSbrv9wnlLoi2WJCyHCzm5ops2pIdC2tneq6MZGrsM33O?=
 =?us-ascii?Q?fGBGspmQNdS5tGb5Qbh51+k7fXZvZtP6lk4B6iHVFpjeagrkiUuTLshfiegy?=
 =?us-ascii?Q?nAichq65kuitWlHXbK/HcpXMYOtC2Ci0yhh7xH8cyNubceoQVgYg/oI3Kde5?=
 =?us-ascii?Q?ppREsk2xwDS6aCgsw8/e39lTZS6WenKLSnXwZQt7KwK8jArIn39JO8gH1ArZ?=
 =?us-ascii?Q?wkqupeq+41hj9I5CTXs33/kDdXLS0ZQiEyuS/Pmd0tdiQufLmMp29x+cocej?=
 =?us-ascii?Q?62mF4ixiesyzQKPSbekmJsR82jy7QDkaBoXHV08BxJ5s6uz3S2D18gR8B6dt?=
 =?us-ascii?Q?M50kWM1mEfKImcD5L49F5fs1ymmIOyDAclWVHPpYTDGTUqYlOdxBFNzEpahg?=
 =?us-ascii?Q?x1VfJSFGgx0T0EFl18duCL5PxXLxHo98dkcZSMyohK3owq4BB/+R6bxy5k8O?=
 =?us-ascii?Q?4iMGzmAUzWfCAluy5GQS7hHijXqgZu1V0u7wzc29TyGpm0o0AlI67B9Y1RWJ?=
 =?us-ascii?Q?UQBuxvsyzxn5hDOME3emHt862bWPeIP6Te3ymGQIotnUhcII5AmltVcO5Fpr?=
 =?us-ascii?Q?cZohY+KTcS6KweMMoQHiF/9Lq2WGZ5cPWbJpSj4bzciXu+BWvfS9k35Y/NWX?=
 =?us-ascii?Q?2B8GolutnZYjsCWVEvSxCCx7rqCMElSWJA6mK9ye5yau8iS9x/oCVxk+72Ft?=
 =?us-ascii?Q?ANhkMXA7QhX8GbeiiFqXdOwJq84znuGT1tdf1qDZ6ZB5GPo2WKkyNjUhs746?=
 =?us-ascii?Q?XrGycpNG3t3FNRsVO7Ew14H43rz08TSByvisKcWw9jb6pPb523Ow/CRenSl0?=
 =?us-ascii?Q?6nfGfEZCJnSsbx9whR0xnbXIPgPuokFxjeSQV9SnUvaiABTV69dyYG8oXXlW?=
 =?us-ascii?Q?xVV7oqL1iAxDFiTVQJS8Ev3t+Vk989j1M5ft8xHjU4zMZqLVQkO7454JgQP9?=
 =?us-ascii?Q?3FBShgWZeITlppYAjgGgVEg+/BeNgdtX1+gewd4zu6yhHepI+9GXTpm0GnOn?=
 =?us-ascii?Q?WhIrM/ZQvNAo9kBkB+5ZoNeqlIUvGhrIVL0nDIICBoxT5puAnKq7PmOEQsRy?=
 =?us-ascii?Q?7MSDXXYa8WIPd+vq82bMHO89JnpzeiTfCqN/EdwtLbOG57ZwGPLYE+9FO0iX?=
 =?us-ascii?Q?1r3wdKBGyTmPQ5b2jKrw/TGWbGW+sG7xldyFAHwz2ZWKtIKE+HEC7HlNdBlL?=
 =?us-ascii?Q?ywXBHge9FXCpRbk7tjNHCR1rwH6KHEviQ5Y1R2zjXdlQShYtockS+dvRquRt?=
 =?us-ascii?Q?wBjIoYpOBklum0WgBGIMITAHiyqQOgnhrpHINdWld8f2cJVw0aSHFOdHRhdm?=
 =?us-ascii?Q?3A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b195e9f8-a604-4b6d-7091-08dafad3b8e8
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 10:47:28.1121 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9AbJuvT2BTD4ThJsklfNcesTkpaAu6+979ak+zz3Z07k9kSQpVTSCpNPRILTcHdi1xKlBOp4a1L7DDrX5nMzzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5108
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Add workarounds
 Wa_14017066071, Wa_14017654203
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 19, 2023 at 05:06:38PM -0800, Radhakrishna Sripada wrote:
> This patch add the workaround to disable Sampler-OOO to avoid hang
> during a benchmark.
> 
> Original Author: Madhumitha Tolakanhalli Pradeep

This is not how we handle this. We keep her original authorship email
and signed-off.

> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 4a4bab261e66..27b06ff380a9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1145,6 +1145,7 @@
>  #define   ENABLE_SMALLPL			REG_BIT(15)
>  #define   SC_DISABLE_POWER_OPTIMIZATION_EBB	REG_BIT(9)
>  #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
> +#define   MTL_DISABLE_SAMPLER_SC_OOO		REG_BIT(3)
>  
>  #define GEN9_HALF_SLICE_CHICKEN7		MCR_REG(0xe194)
>  #define   DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA	REG_BIT(15)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 918a271447e2..c52c5f9ad9ce 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2332,6 +2332,13 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		/* Wa_22014600077 */
>  		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>  				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
> +
> +		/*
> +		 * Wa_14017066071: mtl-p/m[a0]
> +		 * Wa_14017654203: mtl-p/m[a0]
> +		 */
> +		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> +				 MTL_DISABLE_SAMPLER_SC_OOO);
>  	}
>  
>  	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -- 
> 2.34.1
> 
