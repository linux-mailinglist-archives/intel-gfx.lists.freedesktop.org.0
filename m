Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0375163BA77
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 08:16:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D54D710E25B;
	Tue, 29 Nov 2022 07:16:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C31DD10E25B
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 07:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669706159; x=1701242159;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2q4csR1Afns67FaspvJPZ1s46S5U46vfNaN5T2xZ4Y4=;
 b=I1po6SHa3krR/vO1CK/ElK5tPVCbJxbL9AdtirUltyIlAT2NIJN+AdJ3
 vTTmhXxofFjsKXGLojILyzl70dwwCmn6oyh6/6aqTF8gead0o8qJB0XFw
 IBEoqRhlJhqNz+lps2fMBazWpKM8lMyQWzbEt6YfAY314IYqpofKy9Ee8
 5g/KsRCCifOKzJ6hO4YvY3Gft3BfvZ+UaNCl9fw7ngYdyfUFrmIBnuGJB
 ZK2p44Z2EywQaDXKrygQXzUNw1ZFegeWNFj6qKKe1c6Mb4RvppTHB9jBm
 H7YxjjxZf86w87KlTvNBYc9V99WMtZleoyVuYTsFnT6tlQNR3razJmi5n g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="379304012"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="379304012"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 23:15:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="972564355"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="972564355"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 28 Nov 2022 23:15:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 23:15:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 23:15:57 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 23:15:57 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 23:15:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V8IUZjP4H+/b1v5YsQQCvQHBTtpS4iZcgoZscH0NB+JynUC147tRyD66WBjqHrs1mOGfgUAAHiEZGCTxm+lWT2Tq0HR6fZILEf50W/ynFmyxZZ1vMAK4U3eC9l2We0Dct3+eOS1NmSu7UvT4UusFwGjHMKEl59fnJnVnevcOMJmPR8m9uHc4AAJochPftw8PMk1arWGkAfcerpg1IsheHLROQUw1rcJS/t2+r+kT/Jp1vDjUp/1L5iD1RdtKOOdzTn8W8VtoZPXSZgAxH2U6mg7wEUqfj5/UgQt3RDDveOSx/Sz1WEy01i2vuccsjZIcft2jugKoPyDq0h3q4ry8TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1syhqH5cyDh92ZJa9qFNYlKIqeSHSHXlNuLM73MXaiI=;
 b=Lc61G5ucYZIedjdq/DskLxV9Js16FKME6iOrjiy6xwqVSzw5huyZRSHW6+wExZbfQv99Bog6oaN/gSFiN3xcHKmx9Dgmo5sliUeQCUwiQYBkN46Px7/vpDYUeuF9c4EfH0g15ib9fd1ZMFc7xi3wJ9fN9sNGYgPc0Ac7+DNnJzCBvWutC7Flp7ou3tAsgP5Nu9YbULZN+/sppmTkRpftY39EXXUOrxobnQo7WVgZAC0dXU74JiGx4/GmEp1srmdufS45q6k4pGsSnO77slgfX5suEtSSUjMa7taMXm2qO/40JE18b7JeOlbHvYoBlfSw/7xsLiBNbl2dTXoNqTe6ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ2PR11MB7600.namprd11.prod.outlook.com (2603:10b6:a03:4cd::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 07:15:54 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5857.022; Tue, 29 Nov 2022
 07:15:54 +0000
Date: Mon, 28 Nov 2022 23:15:52 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Message-ID: <20221129071552.fwy4tuk7cyd7neve@ldmartin-desk2.lan>
References: <20221129012146.995006-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221129012146.995006-1-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: SJ0PR13CA0081.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::26) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ2PR11MB7600:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d82c544-3c8d-4b00-2ef3-08dad1d98db5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lpT/DW6ASasE0e0t3cH2Yupu96I80xoPecLJhzDdu2rW7R9HpR1EEeg840eLuVLzvNchvLaIBc9htVVvplafow93I0HNZN+9VtdrCctZ/V3mVH33ytzJfykHa1fVPjkAF9knnm+l5o12n45PvDGidL4dAMl9ezQByhDi/0MeJ9+Ib8MCD98iXsJ+ai1sgCsR1g82E9Fa4r/cf9iYwfrvnm0O0gGm9joUUANAOY13UNEnME5s8LRgXQtz12arZN6nGYI4tgxm5E2Syy/0cIQV7gms4Z2myon9yRubLAso+v2y+fd6GS7fX61j/5i93aBd9Z3G/Q9QDFZgdOki3iJlCDBrHcvoQCrdGQvkvqzEVP7pRmJF2Or7/drblrt6Gf77XwodxL4F6BI7DAVg1jJujPUv5WgSuPPFK5cIsq0/zqewYDXMB+LTa8XzYvp1UzvT2UpmNV56FFN2gcCq1ZjpsmxfRtPbw15b+DFf926+/uqpeFak9xmcYb+9yphpApRqSKHIXvFNcsyExABXLAdXgAtmOOQ2aULFZ/ws7RR2B3fEoe5NCydhfvx3+K9rjIM5YLfQZM3bAjV/slTubpwhzNw/qFi/51MUeWstblo08t2HhAWScsDrLmUH9CLmF/kGMVyjKzsgSUHQhq5OdUY+gQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(376002)(396003)(346002)(366004)(451199015)(83380400001)(4326008)(8676002)(5660300002)(41300700001)(6486002)(316002)(478600001)(6636002)(66946007)(66556008)(82960400001)(66476007)(6862004)(8936002)(26005)(2906002)(6512007)(86362001)(186003)(1076003)(38100700002)(6506007)(9686003)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xo3cGdhArRpJ53JmaYpRQytiDleKo3gaqYoPDdt/hYoVo2vooy0aFvbitLzM?=
 =?us-ascii?Q?+lnw3dS7Kj1Rn1oGPpx8ld1FCr2gWdlVotYLbNviK+H+EbHz+Gf7zI8AajCX?=
 =?us-ascii?Q?0q4JoQUAjnnfAoNyRPmx+YEP9gcJtvKjcaMRgyiRpG2T+UqGrLvA68ieaPrn?=
 =?us-ascii?Q?ir6o/qanTKKnF12XdGst/33lWPjzewUgl1gYVNqzpTLP0TL4/L6Np4y/PdJz?=
 =?us-ascii?Q?IzLGBQ9DmFr8ht1pcbE7UBgCTHuV6/LYtVpLylkY7C4xGdy/yrPBSuZa9rLp?=
 =?us-ascii?Q?ZWGFjNgfbJPsdnEZWSR1lzuq1adG+D5/zGzt8u3/CpJJvZoNhy6C11qjUfrK?=
 =?us-ascii?Q?BKSd90vqYYrRyvx+VWZb6SlrTUEbBbTV6mkp1GJoGqm5eWOgii4IodnsKq91?=
 =?us-ascii?Q?5pG8u4QoG2S0c/0Q+qnxWtaHBfvQYPrQtuatxCVaLaa3dHL+CHgL6HXHvMlx?=
 =?us-ascii?Q?DrnorstApHFQBZzNdsVlojc6GXqv6ZHOLBcM155khIskHXca70Xv/at2/7Ro?=
 =?us-ascii?Q?BoEbuJojF2XA3Tl7exuMYhZVYVIwFqDqN8JQmADLvuWo9IVOf0t7BYfknvNZ?=
 =?us-ascii?Q?3Z6alFO17SNEKRmP+VWOfPadv/Q+jqivjF2GKZcHC0ZTItrrlbnMli0H19hj?=
 =?us-ascii?Q?5nj/w7eFnoIhOyhR/Hyzu1qOTnJOQg2R9eajO3fJoNRKFgSpWc5v5J7t/JjD?=
 =?us-ascii?Q?zXET/e4viHdWLbvs3RMrUvJp6XmV6x6VYIGHK+29jm4b50y8hnp+wPADHGn5?=
 =?us-ascii?Q?SMfoWN5HjK8nNW5BlVTAAjNAAe0NWpsOwvstxRbdNWS4GjgQydFssRulxHbn?=
 =?us-ascii?Q?FNirbs4/L3b2HUYa+ySNMYQXsr7TyHLQA0ZZliJ0V5sXUmtqT9WikLFqFrTb?=
 =?us-ascii?Q?VdQkK+jdvCFBvtMMIike46KFQlKMZvZaG20usRNoVrcDK5fF95a8cgzDqU3r?=
 =?us-ascii?Q?YXQC2GKmgGXDg3ZpUEk3DrxphxE7VaWQJBa9BklxlRLRyIU02bv5obuhEMD2?=
 =?us-ascii?Q?vDqdy+qJiN5JdnrZZ8KmxBrV0m6bOSypEbWN5kOBqKMmzoVrdxJwH/d57iPk?=
 =?us-ascii?Q?7Z3C2nezq+jBramXneOzqx2QNf3S879swcogC8LSySYnn01XFk52ZCgUbi/c?=
 =?us-ascii?Q?oIWuP/yVHpuhZEib7ftNVL6eGXQ/IF+dDQqH318cL1ZPpEjqsLI0XVgf16eJ?=
 =?us-ascii?Q?hfRI4gLl+AWIUQ/yLF8ZQdF6HbGfJCkRw6kaQ6YMJLqQ5vBYQWXTkanlK5hZ?=
 =?us-ascii?Q?82Y7z4d1/asnSGjZK6xIjzgmOAuzx6RfzaEYtvzLK2rbiBySSKovrTVE8ajf?=
 =?us-ascii?Q?UsEKrGJwTq4qGNHxYmu2rt62jk73tz71ixjceGjBXe8NE4kt8SZ+PM9BqNVH?=
 =?us-ascii?Q?sLCRoG5jZ8CwmdNCQIcpTCwZi26J1ir0zlqdkUb1FcJvTBLrh8B50LaTOi9J?=
 =?us-ascii?Q?/nJr3nJt7s5aXPkcq4drOrcwVzPPxSrHr/94tPi6uKVjJZFJ5lLqeEUf3pQt?=
 =?us-ascii?Q?OVLYZ10djEajGok0dRw4on08HzT5Nzs9IoxzZWFutjCReKoGTf4IztwYOUuV?=
 =?us-ascii?Q?61hrm7Iy8CJIfuwOxpP+XjSZLFllg15F0B8I7OQIM49i3FJD/OJUpIz8uw5x?=
 =?us-ascii?Q?gg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d82c544-3c8d-4b00-2ef3-08dad1d98db5
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2022 07:15:54.4103 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4CHfkCKGErSg3w/J6AgTZGTF50oO6943+rKnjmU2PDRkDaOUrx67yXf+nKJLcgKZvkmr7CIyHOf3giZps4rc0zVAZNPd9UT7qxwQynAClwI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7600
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add support for 32 bit OAG
 formats in MTL
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

On Mon, Nov 28, 2022 at 05:21:46PM -0800, Umesh Nerlige Ramappa wrote:
>As part of OA support for MTL,
>
>- Enable 32 bit OAG formats for MTL.
>- 0x200c is repurposed on MTL. Use a separate mux table to verify oa
>  configs passed by user.
>- Similar to ACM, OA/CS timestamp is mismatched on MTL. Add MTL to the
>  WA.
>- On MTL, gt->scratch was using stolen lmem. An MI_SRM to stolen lmem is
>  hanging. Add a page in noa_wait BO to save/restore GPR registers for
>  the noa_wait logic.

why are all these changes squashed in a single patch?

>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_gt_types.h |  6 ---
> drivers/gpu/drm/i915/i915_perf.c         | 49 ++++++++++++++++++------
> 2 files changed, 38 insertions(+), 17 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>index c1d9cd255e06..13dffe0a3d20 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>@@ -296,12 +296,6 @@ enum intel_gt_scratch_field {
>
> 	/* 8 bytes */
> 	INTEL_GT_SCRATCH_FIELD_COHERENTL3_WA = 256,
>-
>-	/* 6 * 8 bytes */
>-	INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR = 2048,
>-
>-	/* 4 bytes */
>-	INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1 = 2096,
> };
>
> #endif /* __INTEL_GT_TYPES_H__ */
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index 00e09bb18b13..a735b9540113 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -1842,8 +1842,7 @@ static u32 *save_restore_register(struct i915_perf_stream *stream, u32 *cs,
> 	for (d = 0; d < dword_count; d++) {
> 		*cs++ = cmd;
> 		*cs++ = i915_mmio_reg_offset(reg) + 4 * d;
>-		*cs++ = intel_gt_scratch_offset(stream->engine->gt,
>-						offset) + 4 * d;
>+		*cs++ = i915_ggtt_offset(stream->noa_wait) + offset + 4 * d;
> 		*cs++ = 0;
> 	}
>
>@@ -1876,7 +1875,13 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
> 					  MI_PREDICATE_RESULT_2_ENGINE(base) :
> 					  MI_PREDICATE_RESULT_1(RENDER_RING_BASE);
>
>-	bo = i915_gem_object_create_internal(i915, 4096);
>+	/*
>+	 * gt->scratch was being used to save/restore the GPR registers, but on
>+	 * MTL the scratch uses stolen lmem. An MI_SRM to this memory region
>+	 * causes an engine hang. Instead allocate an additional page here to

humn.. is it because of the pte being wrong?  "stolen lmem" in mtl is
still system memory... do we know why we'd need this change?

Lucas De Marchi


>+	 * save/restore GPR registers
>+	 */
>+	bo = i915_gem_object_create_internal(i915, 8192);
> 	if (IS_ERR(bo)) {
> 		drm_err(&i915->drm,
> 			"Failed to allocate NOA wait batchbuffer\n");
>@@ -1910,14 +1915,19 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
> 		goto err_unpin;
> 	}
>
>+	stream->noa_wait = vma;
>+
>+#define GPR_SAVE_OFFSET 4096
>+#define PREDICATE_SAVE_OFFSET 4160
>+
> 	/* Save registers. */
> 	for (i = 0; i < N_CS_GPR; i++)
> 		cs = save_restore_register(
> 			stream, cs, true /* save */, CS_GPR(i),
>-			INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR + 8 * i, 2);
>+			GPR_SAVE_OFFSET + 8 * i, 2);
> 	cs = save_restore_register(
> 		stream, cs, true /* save */, mi_predicate_result,
>-		INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1, 1);
>+		PREDICATE_SAVE_OFFSET, 1);
>
> 	/* First timestamp snapshot location. */
> 	ts0 = cs;
>@@ -2033,10 +2043,10 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
> 	for (i = 0; i < N_CS_GPR; i++)
> 		cs = save_restore_register(
> 			stream, cs, false /* restore */, CS_GPR(i),
>-			INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR + 8 * i, 2);
>+			GPR_SAVE_OFFSET + 8 * i, 2);
> 	cs = save_restore_register(
> 		stream, cs, false /* restore */, mi_predicate_result,
>-		INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1, 1);
>+		PREDICATE_SAVE_OFFSET, 1);
>
> 	/* And return to the ring. */
> 	*cs++ = MI_BATCH_BUFFER_END;
>@@ -2046,7 +2056,6 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
> 	i915_gem_object_flush_map(bo);
> 	__i915_gem_object_release_map(bo);
>
>-	stream->noa_wait = vma;
> 	goto out_ww;
>
> err_unpin:
>@@ -3127,8 +3136,11 @@ get_sseu_config(struct intel_sseu *out_sseu,
>  */
> u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
> {
>-	/* Wa_18013179988:dg2 */
>-	if (IS_DG2(i915)) {
>+	/*
>+	 * Wa_18013179988:dg2
>+	 * Wa_14015846243:mtl
>+	 */
>+	if (IS_DG2(i915) || IS_METEORLAKE(i915)) {
> 		intel_wakeref_t wakeref;
> 		u32 reg, shift;
>
>@@ -4306,6 +4318,17 @@ static const struct i915_range gen12_oa_mux_regs[] = {
> 	{}
> };
>
>+/*
>+ * Ref: 14010536224:
>+ * 0x20cc is repurposed on MTL, so use a separate array for MTL.
>+ */
>+static const struct i915_range mtl_oa_mux_regs[] = {
>+	{ .start = 0x0d00, .end = 0x0d04 },	/* RPM_CONFIG[0-1] */
>+	{ .start = 0x0d0c, .end = 0x0d2c },	/* NOA_CONFIG[0-8] */
>+	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
>+	{ .start = 0x9884, .end = 0x9888 },	/* NOA_WRITE */
>+};
>+
> static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> {
> 	return reg_in_range_table(addr, gen7_oa_b_counters);
>@@ -4349,7 +4372,10 @@ static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>
> static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> {
>-	return reg_in_range_table(addr, gen12_oa_mux_regs);
>+	if (IS_METEORLAKE(perf->i915))
>+		return reg_in_range_table(addr, mtl_oa_mux_regs);
>+	else
>+		return reg_in_range_table(addr, gen12_oa_mux_regs);
> }
>
> static u32 mask_reg_value(u32 reg, u32 val)
>@@ -4746,6 +4772,7 @@ static void oa_init_supported_formats(struct i915_perf *perf)
> 		break;
>
> 	case INTEL_DG2:
>+	case INTEL_METEORLAKE:
> 		oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
> 		oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
> 		break;
>-- 
>2.36.1
>
