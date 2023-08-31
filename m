Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E355A78F20E
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 19:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5429F10E192;
	Thu, 31 Aug 2023 17:41:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CFCD10E192
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 17:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693503659; x=1725039659;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=iLs3osxIf1//KAtbzBFZkDAH0V6LdGDoPhclClW7bvw=;
 b=YM9o7f8WY0ObIMFiXzWbt7BIEqZPVGBtQDmYK4RpZdFpQIa1ABPzH6Lc
 beUb1okNL/oCwUqe5fVs1S4IP2KsOc17odpWXudYu8dEsROKOdu77bf3t
 Eh1987DVx8vvUbEupnY73Lhv3+6TEPJGim/23WYevZOBwf/DwphCZ1b8P
 76jaF01mjeWqAEAaS7UIas1Kdqcjy8CMMTjYSWwVAJrV9le0W0TIBQXD8
 DVX5uiIRRyPgurloI6Hm9vqrTHGgNADLnS1TLpDCzb9dCVl+lUUMH7C0N
 p/IWSQ4eDhwc9Q5L4+WZxmtpwiY54t3JKcVSeuvLK2itefp8+X3Tmnaj8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="442412402"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="442412402"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 10:40:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="809729202"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="809729202"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Aug 2023 10:40:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 10:40:53 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 10:40:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 31 Aug 2023 10:40:52 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 31 Aug 2023 10:40:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V6W9PsadnfaNUfB5o8gaId2jrAPSIASC/gbFbKwT7H0MOA3FOhEG5Kzjti72weRRbW3NAnc70D5YPFz/u6nkwuevZy+1Pr6xvfBTmQqpvijtbxxoXIVrv7FxkWM3iq6h6LkEN9H2yzmq+HyZtWQd/r3fDWaSLdI/P83ieeQvvcZFsuEVZtpT38K8rIsQH+LyRFnuFE6l2gfAY3V/fEUFvUDJqK45AozlnnfXNIeJcFRLQX/qxCrnGh3BCbZQk/5kcXXWlz2ffYPot/+xKTEbm6mU5tbD7737x02BFFG7u/zOFjXDEjifKX20o5ha574LSIaJ7J3nM1/0SDCU4pIHYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2IiYNXG+Ctr6yU5TG0aGxjLRNGKIY0SYYE6SLv8mx04=;
 b=Pw+xnjVlr1gWYK8SCR84bSuif5fFG3T/VBjntf+lO2TIk4AnDWMGZxVIkG5X8hE7Sd6A8eimtVcL2ZL0cLexF7yk4GG5xU3LovKY9cq1FqQVCrJ7cgXdaYbzUmwAkeTCjIMcYrWFULhHpUbapzbbsIFfjq+9TW6FSGFICAfMVE8Ym5B39Gsi/9DGFwjpe3mN3Edi0KWSJ6KpvtX2i/SKGtVYqD0nqiqSieMcQkGXKRmbZODgVqfKpTKAmLKsXZP/lZuAs7BV6GHE4gcjBpxJ0RGQpgxIh/XJ6O3F1GdautvpIAspxv8dCg/VqOG1ko9z7SNcmLgJ/6hrEyNwKWXUrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA2PR11MB4971.namprd11.prod.outlook.com (2603:10b6:806:118::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Thu, 31 Aug
 2023 17:40:50 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.020; Thu, 31 Aug 2023
 17:40:50 +0000
Date: Thu, 31 Aug 2023 10:40:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <20230831174047.GT6080@mdroper-desk1.amr.corp.intel.com>
References: <20230831150955.36525-1-jonathan.cavitt@intel.com>
 <20230831150955.36525-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230831150955.36525-2-jonathan.cavitt@intel.com>
X-ClientProxiedBy: SJ0PR05CA0049.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::24) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA2PR11MB4971:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a691e21-aff4-421e-fda5-08dbaa496a73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vo409XtnRqM6DNwHvpa4rDZpJ3vAEgeCdJ+/G7YJL3k2UOcFiKrfNqw2xzkwYAQCUgcQlezGMPng56h80TpFN4wtPHBfwyvxNtEIad6Feb84dXS7p4o9blCovgABOecJA0UwfksAdXC7Q1drZopc3Uz36chzUawrkVMbRER00lN26/D/EFsY+a2Oh0gQ4T+SrYfM1V160dWSBNCkG9vx4NtOwhZZeY70k0ex0rtBALJH0g/bcnD5ERHl4uDbVJVhUP+D4n+ZyaKtZfhUqjS8BMRjawrKzdP62wZhqyZqJ4Csn2eQ/7PT9sykLkmmXO8XH6X1/zgStSTevr4aJmV5F7YPi753Za5bYJs8v0Qdxv18Mkd32jsT689g9HEOt2LeMCVKIp/ryBq3ZjhQ8u60JH6MKNnD7x8erSLhy08i49b9eyoWG7QlWfLdaHgvvdfSsaqleg1Cj03XxJNhVzjlFv2M9mXN4Fgnyz7StWTvHxAZqao8uHmUFdeGS3vwu+HPe2BUUU7f6TH+AQfhxHcW+E7/E65ox/7s19dYso/AKuLjTy3VR3hxgNA4cOhC21KN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(39860400002)(376002)(136003)(366004)(186009)(1800799009)(451199024)(6506007)(6486002)(6512007)(66556008)(6666004)(33656002)(86362001)(82960400001)(38100700002)(107886003)(8936002)(478600001)(1076003)(8676002)(30864003)(66946007)(26005)(6862004)(66476007)(4326008)(41300700001)(5660300002)(2906002)(316002)(83380400001)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+t2vHYDZeV2GhxZnzvo+XW0QQX6r+BB0B5NE3tMictezi7yLGLJhg5dPrl1P?=
 =?us-ascii?Q?Yqq4ZmtUAuYKXH6VZPhlYDHnIQf+c/Mvsqf5jSwI7wElV1wYOAWebJP/FbBr?=
 =?us-ascii?Q?E+JUN51q0VH/3BIcxARrCZ7lUzPjIoubQ7djpwdIBiyx9WZ59QojvYjwFm5H?=
 =?us-ascii?Q?glO9bAdQgv4YM70fuhP3UwtYBSVIL0tmCTkuRMTOAaN4Ge17bDW8Vsqofq6l?=
 =?us-ascii?Q?P/7QGs++zFOctM+XeKj6uDDnj1WqIJup2ibCEHeZqIFaE95Y4fPZiEUchthp?=
 =?us-ascii?Q?qnaJRxI+ERBAIbibEiVty0UuNF3IuWGQe9O9uMv20EWzD0BZq9yEn0d7Y6vp?=
 =?us-ascii?Q?fZsoNxtD7eqjQNSlB2QNsBiHSz5A9RFdcJF/6uG0Csx2UnpgoZp9Km6ayY5G?=
 =?us-ascii?Q?7BhuT1/CgpoN9i757L9SOOUPUE+fkHLLLr8HI/Wf4LXO0MKIeE9j1+Pqkk3F?=
 =?us-ascii?Q?MTp1Ew9Z/2kIzQqYTmhOshp9U56slYxxGZxKsePJO05rGbLL1QByytSX7tMT?=
 =?us-ascii?Q?KyzYNV/NBz8sWpsaCDF2Dvt3uFGzRlrgcxsb6oKxquHOBJ66/7J+WMg4/Xh5?=
 =?us-ascii?Q?c4Xw5aWKifPOM5AFzOTejxWEHJzwRZUhG3+j6P64Fgj/VLyZm55wYMNqvzcT?=
 =?us-ascii?Q?Cnt2SKhCWqi9XhJUlKu66P2k+CHpLsqeHZMqn1d1q3AlvLsNqwfBNmSzhBzu?=
 =?us-ascii?Q?m40EfVfjAX+Pgw4Z0kD/YGRfKnSLCANoja/VW1QlnmPu09IF9tYNru7P+njW?=
 =?us-ascii?Q?E2KEMinUDyBoLyDHdPb3Llij9B1qC7eLaHHpj2lkdFHengIztMYMXkIEsv3r?=
 =?us-ascii?Q?MAZK8TOOqN46oPi4/zGqVZhBxRpyx0ZzsuIaPvIyqeQMbLBe9OL9ae+EGSVA?=
 =?us-ascii?Q?++thkI4tiBzNKGMT4ii6aYb9g/q82N3B2ZVGQsmnZviDSVKG9/Z8aGyD/EIA?=
 =?us-ascii?Q?vBYgezwvEURr6p5rziIG7yAcx+nuctj3KHsbUVSbcZSR/jm+dMl3yrgeZMtZ?=
 =?us-ascii?Q?AuTz9BOEHvxOGn8U/V1cIdxqw5ktZ3lpdJn0be4JvsNxlVMoQ053EbHwNeMm?=
 =?us-ascii?Q?u2y+zP/9hxmueNDb4pXR5RAL85VwsaqXA8tpRJOyHH1WZlCnbOYU7wtAciN+?=
 =?us-ascii?Q?C3gY7dp48kummMlIGh+Qkz/1uZh2bQI0vY1AEZgGFLAakj3qY6EafPqvLsMd?=
 =?us-ascii?Q?TQwIQASoAuq9CMV2c5iYDkpsALpx0krvxjrE3w5Jii2LBmjjSP70CB4NDIUi?=
 =?us-ascii?Q?lc6zYXwcJQY/SFXyRvI3D6YkNQ7VsmbIWqLPfWtVZxqIPU4ZPqhZS8PjiGa5?=
 =?us-ascii?Q?WZcsV72a7KW05nVZ7Hq2LzGv3gL4UajgtokMNQv294P9czQf7k0tFJcxFBZr?=
 =?us-ascii?Q?OiVaIBn6vnYXpS9jjGPKJau6oYaj3GTZ/gvnfXI+FfYEC5jPfV+sj/Yl7RN5?=
 =?us-ascii?Q?Y4ImrTsd4n20oGQvnXM/ON9sBiZlhNRYNYHASbY+dR1UwDAxz80WedzP1j/v?=
 =?us-ascii?Q?eM5f1uM4ZeyH4GqCil/cG3VniPdzMkXoKEKfEoqek0+UmBXAg6RU4yLsIVCr?=
 =?us-ascii?Q?taaX73AxKmK5pC8XtyadOfNsNGA3413vzrakFxhRPo9ZVS0nj5y0IAlK61Cx?=
 =?us-ascii?Q?Ow=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a691e21-aff4-421e-fda5-08dbaa496a73
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2023 17:40:50.0280 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /e+b3OPaO3+JtFCdggNNfnMlsfxMrFvkxxDVP4ZBZb5gQVhzesvz2VWQMKC/47OB9j05gdC9gnZm024WMXJfXX1lHnJDGWjshKLRlUMpe80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4971
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915: Add WABB blit for
 Wa_16018031267 / Wa_16018063123
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
Cc: gregory.f.germano@intel.com, intel-gfx@lists.freedesktop.org,
 nirmoy.das@intel.com, tomasz.mistat@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 31, 2023 at 08:09:54AM -0700, Jonathan Cavitt wrote:
> From: Nirmoy Das <nirmoy.das@intel.com>
> 
> Apply WABB blit for Wa_16018031267 / Wa_16018063123.
> Additionally, update the lrc selftest to exercise the new
> WABB changes.
> 
> Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>

Drive-by comment:  since Nirmoy is already listed as the author of this
patch, we probably don't need a c-d-b here.  However we do need his
s-o-b line.


Matt

> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_regs.h |   3 +
>  drivers/gpu/drm/i915/gt/intel_gt.h          |   4 +
>  drivers/gpu/drm/i915/gt/intel_gt_types.h    |   2 +
>  drivers/gpu/drm/i915/gt/intel_lrc.c         | 107 +++++++++++++++++++-
>  drivers/gpu/drm/i915/gt/selftest_lrc.c      |  65 ++++++++----
>  5 files changed, 160 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> index 6b9d9f8376692..2e06bea73297a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> @@ -118,6 +118,9 @@
>  #define   CCID_EXTENDED_STATE_RESTORE		BIT(2)
>  #define   CCID_EXTENDED_STATE_SAVE		BIT(3)
>  #define RING_BB_PER_CTX_PTR(base)		_MMIO((base) + 0x1c0) /* gen8+ */
> +#define   PER_CTX_BB_FORCE			BIT(2)
> +#define   PER_CTX_BB_VALID			BIT(0)
> +
>  #define RING_INDIRECT_CTX(base)			_MMIO((base) + 0x1c4) /* gen8+ */
>  #define RING_INDIRECT_CTX_OFFSET(base)		_MMIO((base) + 0x1c8) /* gen8+ */
>  #define ECOSKPD(base)				_MMIO((base) + 0x1d0)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 239848bcb2a42..40cc0005dd735 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -83,6 +83,10 @@ struct drm_printer;
>  		  ##__VA_ARGS__);					\
>  } while (0)
>  
> +#define NEEDS_FASTCOLOR_BLT_WABB(engine) ( \
> +	IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 55), IP_VER(12, 71)) && \
> +	engine->class == COPY_ENGINE_CLASS)
> +
>  static inline bool gt_is_root(struct intel_gt *gt)
>  {
>  	return !gt->info.id;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index def7dd0eb6f19..4917633f299dd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -307,6 +307,8 @@ enum intel_gt_scratch_field {
>  
>  	/* 8 bytes */
>  	INTEL_GT_SCRATCH_FIELD_COHERENTL3_WA = 256,
> +
> +	INTEL_GT_SCRATCH_FIELD_DUMMY_BLIT = 384,
>  };
>  
>  #define intel_gt_support_legacy_fencing(gt) ((gt)->ggtt->num_fences > 0)
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 967fe4d77a874..1e0c1438f2cd1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -828,6 +828,18 @@ lrc_ring_indirect_offset_default(const struct intel_engine_cs *engine)
>  	return 0;
>  }
>  
> +static void
> +lrc_setup_bb_per_ctx(u32 *regs,
> +		     const struct intel_engine_cs *engine,
> +		     u32 ctx_bb_ggtt_addr)
> +{
> +	GEM_BUG_ON(lrc_ring_wa_bb_per_ctx(engine) == -1);
> +	regs[lrc_ring_wa_bb_per_ctx(engine) + 1] =
> +		ctx_bb_ggtt_addr |
> +		PER_CTX_BB_FORCE |
> +		PER_CTX_BB_VALID;
> +}
> +
>  static void
>  lrc_setup_indirect_ctx(u32 *regs,
>  		       const struct intel_engine_cs *engine,
> @@ -997,7 +1009,13 @@ static u32 context_wa_bb_offset(const struct intel_context *ce)
>  	return PAGE_SIZE * ce->wa_bb_page;
>  }
>  
> -static u32 *context_indirect_bb(const struct intel_context *ce)
> +/*
> + * per_ctx below determines which WABB section is used.
> + * When true, the function returns the location of the
> + * PER_CTX_BB.  When false, the function returns the
> + * location of the INDIRECT_CTX.
> + */
> +static u32 *context_wabb(const struct intel_context *ce, bool per_ctx)
>  {
>  	void *ptr;
>  
> @@ -1006,6 +1024,7 @@ static u32 *context_indirect_bb(const struct intel_context *ce)
>  	ptr = ce->lrc_reg_state;
>  	ptr -= LRC_STATE_OFFSET; /* back to start of context image */
>  	ptr += context_wa_bb_offset(ce);
> +	ptr += per_ctx ? PAGE_SIZE : 0;
>  
>  	return ptr;
>  }
> @@ -1082,7 +1101,8 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
>  
>  	if (GRAPHICS_VER(engine->i915) >= 12) {
>  		ce->wa_bb_page = context_size / PAGE_SIZE;
> -		context_size += PAGE_SIZE;
> +		/* INDIRECT_CTX and PER_CTX_BB need separate pages. */
> +		context_size += PAGE_SIZE * 2;
>  	}
>  
>  	if (intel_context_is_parent(ce) && intel_engine_uses_guc(engine)) {
> @@ -1370,12 +1390,92 @@ gen12_emit_indirect_ctx_xcs(const struct intel_context *ce, u32 *cs)
>  	return gen12_emit_aux_table_inv(ce->engine, cs);
>  }
>  
> +static u32 *xehp_emit_fastcolor_blt_wabb(const struct intel_context *ce, u32 *cs)
> +{
> +	struct intel_gt *gt = ce->engine->gt;
> +	int mocs = gt->mocs.uc_index << 1;
> +	u32 addr = intel_gt_scratch_offset(gt, INTEL_GT_SCRATCH_FIELD_DUMMY_BLIT);
> +
> +	/**
> +	 * Wa_16018031267 / Wa_16018063123 requires that SW forces the
> +	 * main copy engine arbitration into round robin mode.  We
> +	 * additionally need to submit the following WABB blt command
> +	 * to produce 4 subblits with each subblit generating 0 byte
> +	 * write requests as WABB:
> +	 *
> +	 * XY_FASTCOLOR_BLT
> +	 *  BG0    -> 5100000E
> +	 *  BG1    -> 0000003F (Dest pitch)
> +	 *  BG2    -> 00000000 (X1, Y1) = (0, 0)
> +	 *  BG3    -> 00040001 (X2, Y2) = (1, 4)
> +	 *  BG4    -> scratch
> +	 *  BG5    -> scratch
> +	 *  BG6-12 -> 00000000
> +	 *  BG13   -> 20004004 (Surf. Width= 2,Surf. Height = 5 )
> +	 *  BG14   -> 00000010 (Qpitch = 4)
> +	 *  BG15   -> 00000000
> +	 */
> +	*cs++ = XY_FAST_COLOR_BLT_CMD | (16 - 2);
> +	*cs++ = FIELD_PREP(XY_FAST_COLOR_BLT_MOCS_MASK, mocs) | 0x3f;
> +	*cs++ = 0;
> +	*cs++ = 4 << 16 | 1;
> +	*cs++ = addr;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0x20004004;
> +	*cs++ = 0x10;
> +	*cs++ = 0;
> +
> +	*cs++ = MI_BATCH_BUFFER_END;
> +
> +	return cs;
> +}
> +
> +static u32 *
> +xehp_emit_per_ctx_bb(const struct intel_context *ce, u32 *cs)
> +{
> +	/* Wa_16018031267, Wa_16018063123 */
> +	if (NEEDS_FASTCOLOR_BLT_WABB(ce->engine))
> +		cs = xehp_emit_fastcolor_blt_wabb(ce, cs);
> +
> +	return cs;
> +}
> +
> +static void
> +setup_per_ctx_bb(const struct intel_context *ce,
> +		 const struct intel_engine_cs *engine,
> +		 u32 *(*emit)(const struct intel_context *, u32 *))
> +{
> +	/* Place PER_CTX_BB on next page after INDIRECT_CTX */
> +	u32 * const start = context_wabb(ce, true);
> +	u32 *cs;
> +
> +	cs = emit(ce, start);
> +
> +	/* Skip PER_CTX_BB setup when not needed. */
> +	if (cs == start)
> +		return;
> +
> +	GEM_BUG_ON(cs - start > I915_GTT_PAGE_SIZE / sizeof(*cs));
> +	while ((unsigned long)cs % CACHELINE_BYTES)
> +		*cs++ = MI_NOOP;
> +
> +	lrc_setup_bb_per_ctx(ce->lrc_reg_state, engine,
> +			     lrc_indirect_bb(ce) + PAGE_SIZE);
> +}
> +
>  static void
>  setup_indirect_ctx_bb(const struct intel_context *ce,
>  		      const struct intel_engine_cs *engine,
>  		      u32 *(*emit)(const struct intel_context *, u32 *))
>  {
> -	u32 * const start = context_indirect_bb(ce);
> +	u32 * const start = context_wabb(ce, false);
>  	u32 *cs;
>  
>  	cs = emit(ce, start);
> @@ -1474,6 +1574,7 @@ u32 lrc_update_regs(const struct intel_context *ce,
>  		/* Mutually exclusive wrt to global indirect bb */
>  		GEM_BUG_ON(engine->wa_ctx.indirect_ctx.size);
>  		setup_indirect_ctx_bb(ce, engine, fn);
> +		setup_per_ctx_bb(ce, engine, xehp_emit_per_ctx_bb);
>  	}
>  
>  	return lrc_descriptor(ce) | CTX_DESC_FORCE_RESTORE;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 5f826b6dcf5d6..ba0d6293ddeac 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -1555,7 +1555,7 @@ static int live_lrc_isolation(void *arg)
>  	return err;
>  }
>  
> -static int indirect_ctx_submit_req(struct intel_context *ce)
> +static int wabb_ctx_submit_req(struct intel_context *ce)
>  {
>  	struct i915_request *rq;
>  	int err = 0;
> @@ -1579,7 +1579,8 @@ static int indirect_ctx_submit_req(struct intel_context *ce)
>  #define CTX_BB_CANARY_INDEX  (CTX_BB_CANARY_OFFSET / sizeof(u32))
>  
>  static u32 *
> -emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
> +emit_wabb_ctx_canary(const struct intel_context *ce,
> +		     u32 *cs, bool per_ctx)
>  {
>  	*cs++ = MI_STORE_REGISTER_MEM_GEN8 |
>  		MI_SRM_LRM_GLOBAL_GTT |
> @@ -1587,26 +1588,43 @@ emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
>  	*cs++ = i915_mmio_reg_offset(RING_START(0));
>  	*cs++ = i915_ggtt_offset(ce->state) +
>  		context_wa_bb_offset(ce) +
> -		CTX_BB_CANARY_OFFSET;
> +		CTX_BB_CANARY_OFFSET +
> +		(per_ctx ? PAGE_SIZE : 0);
>  	*cs++ = 0;
>  
>  	return cs;
>  }
>  
> +static u32 *
> +emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
> +{
> +	return emit_wabb_ctx_canary(ce, cs, false);
> +}
> +
> +static u32 *
> +emit_per_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
> +{
> +	return emit_wabb_ctx_canary(ce, cs, true);
> +}
> +
>  static void
> -indirect_ctx_bb_setup(struct intel_context *ce)
> +wabb_ctx_setup(struct intel_context *ce, bool per_ctx)
>  {
> -	u32 *cs = context_indirect_bb(ce);
> +	u32 *cs = context_wabb(ce, per_ctx);
>  
>  	cs[CTX_BB_CANARY_INDEX] = 0xdeadf00d;
>  
> -	setup_indirect_ctx_bb(ce, ce->engine, emit_indirect_ctx_bb_canary);
> +	if (per_ctx)
> +		setup_per_ctx_bb(ce, ce->engine, emit_per_ctx_bb_canary);
> +	else
> +		setup_indirect_ctx_bb(ce, ce->engine, emit_indirect_ctx_bb_canary);
>  }
>  
> -static bool check_ring_start(struct intel_context *ce)
> +static bool check_ring_start(struct intel_context *ce, bool per_ctx)
>  {
>  	const u32 * const ctx_bb = (void *)(ce->lrc_reg_state) -
> -		LRC_STATE_OFFSET + context_wa_bb_offset(ce);
> +		LRC_STATE_OFFSET + context_wa_bb_offset(ce) +
> +		(per_ctx ? PAGE_SIZE / sizeof(u32) : 0);
>  
>  	if (ctx_bb[CTX_BB_CANARY_INDEX] == ce->lrc_reg_state[CTX_RING_START])
>  		return true;
> @@ -1618,21 +1636,21 @@ static bool check_ring_start(struct intel_context *ce)
>  	return false;
>  }
>  
> -static int indirect_ctx_bb_check(struct intel_context *ce)
> +static int wabb_ctx_check(struct intel_context *ce, bool per_ctx)
>  {
>  	int err;
>  
> -	err = indirect_ctx_submit_req(ce);
> +	err = wabb_ctx_submit_req(ce);
>  	if (err)
>  		return err;
>  
> -	if (!check_ring_start(ce))
> +	if (!check_ring_start(ce, per_ctx))
>  		return -EINVAL;
>  
>  	return 0;
>  }
>  
> -static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
> +static int __lrc_wabb_ctx(struct intel_engine_cs *engine, bool per_ctx)
>  {
>  	struct intel_context *a, *b;
>  	int err;
> @@ -1667,14 +1685,14 @@ static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
>  	 * As ring start is restored apriori of starting the indirect ctx bb and
>  	 * as it will be different for each context, it fits to this purpose.
>  	 */
> -	indirect_ctx_bb_setup(a);
> -	indirect_ctx_bb_setup(b);
> +	wabb_ctx_setup(a, per_ctx);
> +	wabb_ctx_setup(b, per_ctx);
>  
> -	err = indirect_ctx_bb_check(a);
> +	err = wabb_ctx_check(a, per_ctx);
>  	if (err)
>  		goto unpin_b;
>  
> -	err = indirect_ctx_bb_check(b);
> +	err = wabb_ctx_check(b, per_ctx);
>  
>  unpin_b:
>  	intel_context_unpin(b);
> @@ -1688,7 +1706,7 @@ static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
>  	return err;
>  }
>  
> -static int live_lrc_indirect_ctx_bb(void *arg)
> +static int lrc_wabb_ctx(void *arg, bool per_ctx)
>  {
>  	struct intel_gt *gt = arg;
>  	struct intel_engine_cs *engine;
> @@ -1697,7 +1715,7 @@ static int live_lrc_indirect_ctx_bb(void *arg)
>  
>  	for_each_engine(engine, gt, id) {
>  		intel_engine_pm_get(engine);
> -		err = __live_lrc_indirect_ctx_bb(engine);
> +		err = __lrc_wabb_ctx(engine, per_ctx);
>  		intel_engine_pm_put(engine);
>  
>  		if (igt_flush_test(gt->i915))
> @@ -1710,6 +1728,16 @@ static int live_lrc_indirect_ctx_bb(void *arg)
>  	return err;
>  }
>  
> +static int live_lrc_indirect_ctx_bb(void *arg)
> +{
> +	return lrc_wabb_ctx(arg, false);
> +}
> +
> +static int live_lrc_per_ctx_bb(void *arg)
> +{
> +	return lrc_wabb_ctx(arg, true);
> +}
> +
>  static void garbage_reset(struct intel_engine_cs *engine,
>  			  struct i915_request *rq)
>  {
> @@ -1947,6 +1975,7 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(live_lrc_garbage),
>  		SUBTEST(live_pphwsp_runtime),
>  		SUBTEST(live_lrc_indirect_ctx_bb),
> +		SUBTEST(live_lrc_per_ctx_bb),
>  	};
>  
>  	if (!HAS_LOGICAL_RING_CONTEXTS(i915))
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
