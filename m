Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 085B5799055
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 21:39:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20ACB10E941;
	Fri,  8 Sep 2023 19:39:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730C310E941
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 19:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694201968; x=1725737968;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TzhORrFdfJbLjh1GXAl9/aM12UJgu1rGvSROniPJ7RI=;
 b=iT/zJ57LfUPnz85MU1kOS88Fz4OGajIa47G5aRin9CbqXMhro4JTUPAk
 bbNx4pZYQCe5B+ephx2hX3GCKlG1Tt8zcYHRI6ebMQEL1ZcIReD1mG8HM
 zSqp2AHK4DnLTTAkHxAhoJVZpWbsuK4vhszZIcgPJ2CsFQ2pwm5s7OlUN
 u+bRtwddKPvX0Pa1Xit1RXHotAu0kpMswoQzW8vrrLdBzxPExuIxJr60F
 0WAN5693IDmIHhJVdfWfW2sp39j5298qj/E/p3viIFJqGmTXgm7tqkqag
 npBgRH5jdY4pRTVvMDAPAjpyPOT8+x1ZMZKxml6lpG8HQq12wgDUtIvWn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="362785763"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="362785763"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 12:39:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="771866754"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="771866754"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 12:39:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 12:39:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 12:39:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 8 Sep 2023 12:39:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gv2M52UJG+4cbrNCm0LE6fmrfWsnqD/hrCpKtSGHF6qNaUirlECIe8f9L5Ylb9sS/ZzUQng9opbgQa/xB1MpxuHVD7+MlVnCFgQiuMf/P2QqrlTjtBLwpEbhJoGhxjqYGDQuS5GRrpIYAcY0Lkv8nyvuesNbBtgJd3nAY8Jl/qX7O9YU4f/UGxtGMj/Sswdvta1evdphI5cOeEp+Oqj7MQRcO3O2cTM2aNt16MfkMiVi9AHOXimpZP2RlcJfHDTejbWc6YhRS8k5a5AXxxoitKHZNS6+wvgh/6Wih7c2IYf/bF1c8H4+FBydDMYdiC+tkFWIhMFVYemQVqG++GAyBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vvy4fcfZ1RuwbJNhM+nu7PVrERoLVl8uMKG3nW3yBN4=;
 b=MZP258ixovWdcbvoKKxOCTxI1tPcLxIwd1OBl5Q5QqvBmdq9ukvTu9KA+a/pUxM7bgaLd8zgUfzrys0hhtvpQPIE8fmLnhfxZx3zCqktApej35fVIaAQMfrfZFa0rZGl7vVqsV0kHb3iab3Tseel2GzTbjxfi+1el87i0GtuR9w3munvn5GYZj877oxKaWC7SWtzmbhE+2AsvZRljBnmsiJkBBPrmx4fv4AVZRylvL3wCLku1OQ/5ZZNBYr/wGe4TgHf+cltiWFnsyf3Y3ESzbEhyGc4QEQOwurAW9FX8ShT8hnBsLx5WSDGbrrULNdvJWxLD9T1Vgxk07s2+X1i9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA0PR11MB7260.namprd11.prod.outlook.com (2603:10b6:208:43b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.36; Fri, 8 Sep
 2023 19:39:18 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Fri, 8 Sep 2023
 19:39:18 +0000
Date: Fri, 8 Sep 2023 12:39:15 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Message-ID: <20230908193915.GZ6080@mdroper-desk1.amr.corp.intel.com>
References: <20230908094142.4119379-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230908094142.4119379-1-dnyaneshwar.bhadane@intel.com>
X-ClientProxiedBy: SJ0PR03CA0080.namprd03.prod.outlook.com
 (2603:10b6:a03:331::25) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA0PR11MB7260:EE_
X-MS-Office365-Filtering-Correlation-Id: 520de574-9aa1-48aa-30f3-08dbb0a34ac5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xwytfTSGwp99FkFMohq2M+vabcvV7+zSe55RlTV66w3i8cTERBYCXILwixHG2Hk5xAb7gkdD9zXqB9Hfa3xLNzKDjexkYa/5XpYBcdcoD2+gQqUOmUY8O/NI+vD7FMa54F0e4xyokmslgg/1kgf+oXBAI5Tbr4Wne+dDQOFYjexO7JaB95Ox21W9zQMexqWOL5PaR9kwjFgo/HTq7XkGr6yJP55zFzVNK+nlllzbM7T8LZCqCZPmjJ46s9Q63wRbCVmCjjcS4V3FZ1GcSEIaTViyHygeBzEnObPEZ/9V3drJxcYuwkxziX5ngliy/zg3GoJ8UzHzK/HcvHGVg5fT+zGSfjJ+bjvkTSD0booEBlv5nsaLV5i0wFzB61N+LW0LRtwzC86+7xOV+jP934QH7OsYtOtBMvU3VDFgixq2Jmz/J+6xj91JRqNZdam6Q5xHM0rJrzi2hcV9xA/2o58acQCn/k9aaUCQARL1/kx519TwqHZ0OIxgw1W+MiB9rWRCRodJDO3a5/EX271RSwWjl7IVnB8BQ9ADAtD9K1EtN/1AG4kwyd1ZmdWW5IYKToH+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(346002)(396003)(39860400002)(136003)(186009)(1800799009)(451199024)(66946007)(66556008)(5660300002)(4326008)(6486002)(8936002)(6862004)(8676002)(6506007)(41300700001)(66476007)(316002)(6636002)(2906002)(478600001)(6666004)(6512007)(1076003)(26005)(83380400001)(38100700002)(82960400001)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+3ZW0LDGnqJOzA/Cwy4DG7vjpVzCw5qk6p+Ve+pqNMhWbKAKR561nbP59mMi?=
 =?us-ascii?Q?ljUCYntLKfqlMOJrSKCrFMMwPn2srgpwBOLoarkJ97omxNPRQLCpxwblvW/e?=
 =?us-ascii?Q?/cMIUXI14pdjbnxbv/SVilqnn5Zr0VkT3E/1sMmECBH7QtIFpoT5TkJyd5aM?=
 =?us-ascii?Q?xrEgcTGSv+OLVYH3/JxvXZkNQdgeNozMpYuDEfhD20bfmvz01cYxY3X554Ty?=
 =?us-ascii?Q?nkcWiitIHT/9f9pveyLpDoD8zHHG6uN4e/3fTp6cdYyHM24Dpm5xbP13giUf?=
 =?us-ascii?Q?Z4NXRrZbtSQc/niyjeXGncrah4dYEzMZ1vmSbQsKgZ1SFk/6D2o7vyVKi3fo?=
 =?us-ascii?Q?AK9Lp9NHvEoarkNrCIruMmBBSOK+0ObJAyGIxMKrNag2s5C4rPEl/BNDndx6?=
 =?us-ascii?Q?bnJCvEMwb/xioILCRTrQArXs+lgP0g240iAlCXGxRtAFFtIrQls7K1JWA3Gn?=
 =?us-ascii?Q?FRvf/5eqeusTpS1UEpLHKb11afotlks9qfO/1SHZDXkZL1P5B+YTapaf1WgL?=
 =?us-ascii?Q?yD5Lj+OsAdUocqNapKzDl7rurzy4HodQwcyD91u8EJSmGiJ9IHOkViLPqu+A?=
 =?us-ascii?Q?BCrF6fCyPVx6MlqDRzlapEhIHDhAHyx0wWf5OWenkZza8TFXiGbPbVz1vzFT?=
 =?us-ascii?Q?H12lc4Ks/91Saw9ZjqNsiIm6ao8JbvLqWjanb6y8JaSroU4Gqxve12oU6IT0?=
 =?us-ascii?Q?SUQXKJSr/nQwUOesDD1iezMnyBmYjX0PClmAhBm5j5ThzTt/pxAP4vZjFysZ?=
 =?us-ascii?Q?75ZeiqS7yVp1Tr1hrl1Szd+KT93mNKUBDsUrq84s3UNSN0fXjYFgrr9VqHvj?=
 =?us-ascii?Q?tzd2UpMz00oglHW5UPzLU6B+I85vH3zC3LCBr8BS7a9rzF7LMPg/hBstZ4aY?=
 =?us-ascii?Q?ce+ZpyJ+gg6Y28nBWyRp/wcPLdGrEv/ANKIvwOBlvpqv1Rt+R9mNe2y+vJkI?=
 =?us-ascii?Q?VyWWjkMEnTP7hLlAAuA1ij6PG83Ppdv5cyhkCV4gh+gM5ObkMVAhx4Amw/x4?=
 =?us-ascii?Q?fvaocf4wLG501Iw+lpz3q1uZo8yzwywG6GemhtV74ERgTh1Itff/tmy2isRn?=
 =?us-ascii?Q?tYiDoCBKb3LxXxD+HnBQHjqKkDRb9O/6C1g36kplMxFcSVzN5tTK0Eo4qa8o?=
 =?us-ascii?Q?4m2WXQOsAQVndR6sd2HSzPZpaAowyx89AzjRIAqONS5DL4+2XzXNqgnl8ass?=
 =?us-ascii?Q?63T7bpIVG0YagDx2URrRZI42EZW7nm3FU2qk1nsKcrMnPDTHUxoLFJWr9A8x?=
 =?us-ascii?Q?wVzNqDrqqF9yhe7oAPwRUfUh8z5wJ5HX0DBTHkIsdAvUS6gQ7G9RM8/dgelv?=
 =?us-ascii?Q?WFMQGUkXQV2ps3SVfpQKwcfSj1FqisppJfNpQGhPaq+xPDE/aVi2tnANIkyJ?=
 =?us-ascii?Q?DnhKwGaOOn7RzfHHl0qfAbBKXL2cUjOzctVCZAME2ycuOgDY9BeeZv0dTo+B?=
 =?us-ascii?Q?/qZxnOl952oC3S3wrrU3pM1Eb/Zv+l3O08wEFSHkcVyYO7bKACMLoMCU7hcT?=
 =?us-ascii?Q?qgqTlZXRTmjIOIPfDBhTrKOWppKe4UWQKEd0g5qM2L1wEGV7fMHLkXUykeCO?=
 =?us-ascii?Q?n7LfTfXyWDGD3j+qcl4fQvNLmcSX6d9ddPKNywWAWvR1ONy/1lDrWL3+mw4i?=
 =?us-ascii?Q?Sw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 520de574-9aa1-48aa-30f3-08dbb0a34ac5
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 19:39:18.5703 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xwyZ933lu2PCsEf6wJiriNTEwBB58GILgy5Q9Cs/S6rCgs7JPn86KMVWdffvHDFhjWOTWanea1XWhvVQ9XFwCkR/e17nJHlyX/Tcxi9FYso=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7260
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Added Wa_18022495364
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
Cc: intel-gfx@lists.freedesktop.org, Garg@mdroper-desk1.amr.corp.intel.com,
 lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 08, 2023 at 03:11:42PM +0530, Dnyaneshwar Bhadane wrote:
> This workaround has two different implementations,
> one for gen 12 to DG2 and another for DG2 and later.
> BSpec: 11354, 56551

Side note:  it's generally not worth adding bspec references for simple
register pages these days.  Anyone who has internal bspec access can
look up the page just as easily using the register offset or name as
they can using this number, so this doesn't help anyone.  And in this
case it looks like the page numbers you gave are wrong for the platforms
this workaround is supposed to apply to:  11354 is for the pre-gen12
version of the register and 56551 is for the Xe2 version of the
instruction.

Bspec references are still good when there are narrative pages
describing general software flows, because those can often be difficult
to locate in the large table of contents.

> 
> v2:
> - Removed extra parentheses from the condition (Lucas)
> - Fixed spacing and new line (Lucas)
> 
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Reviewed-by: Garg, Nemesa <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c    | 5 +++++
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
>  3 files changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 0143445dba83..e260defdfc23 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -271,6 +271,11 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>  		if (GRAPHICS_VER_FULL(rq->i915) >= IP_VER(12, 70))
>  			bit_group_0 |= PIPE_CONTROL_CCS_FLUSH;
>  
> +		/* Wa_18022495364 */
> +		if (GRAPHICS_VER_FULL(rq->i915) >= IP_VER(12, 70) ||
> +		    IS_DG2(rq->i915))

This is going to apply the workaround not only to DG2, but also to *all*
platforms MTL and later forever.  Generally we should never have
workarounds marked this way...the expectation is that any hardware
workaround is going to go away eventually, and workaround conditions in
the code should only match the specific platforms listed as being
applicable in the workaround database.

Also, when I look in the workaround database, it doesn't appear that
this workaround is listed as applying to DG2, MTL (Xe_LPG), or LNL
(Xe2_LPG).  Is there some other workaround that requires the same
programming (but has a different workaround lineage #)?  If not, then
this part of the patch should just go away and only the gen12lp change
below should remain..


Matt

> +			bit_group_1 |= PIPE_CONTROL_CONST_CACHE_INVALIDATE;
> +
>  		bit_group_1 |= PIPE_CONTROL_TILE_CACHE_FLUSH;
>  		bit_group_1 |= PIPE_CONTROL_FLUSH_L3;
>  		bit_group_1 |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 0e4c638fcbbf..4c0cb3a3d0aa 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -164,6 +164,8 @@
>  #define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
>  #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
>  #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
> +#define GEN12_CS_DEBUG_MODE2			_MMIO(0x20d8)
> +#define   GEN12_GLOBAL_DEBUG_ENABLE			BIT(6)
>  
>  #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
>  #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 864d41bcf6bb..efdb4bbf8083 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -712,6 +712,10 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
>  			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
>  			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
>  
> +	/* Wa_18022495364 */
> +	wa_masked_en(wal, GEN12_CS_DEBUG_MODE2,
> +		     GEN12_GLOBAL_DEBUG_ENABLE);
> +
>  	/*
>  	 * Wa_16011163337 - GS_TIMER
>  	 *
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
