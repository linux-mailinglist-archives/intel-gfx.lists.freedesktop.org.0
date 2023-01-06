Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1066600EB
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jan 2023 14:04:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00AD310E14C;
	Fri,  6 Jan 2023 13:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFA2F10E14C
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Jan 2023 13:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673010266; x=1704546266;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=J64IUKRKEynRBF5p5mn6jl4aQji5Jg+dnpseHHFeJcI=;
 b=gv8nErGwucRReJeY4ED8DCnLJOk1Q1Mhh1LMNOPaXORBVQuK3h9UfhVK
 DVDbZYZi4Vh6sw0cjh4zm26tlyGTkGg+TrXuUXggpcIBJfZvxOsZD3kPL
 OUNJsT39wtmM1jOMNWYyUtufoF4iea1npcHb8UrTaFlKLpThzp7LxvsJA
 n+woe1Wi+GcLEX8YpSKxxHNb5O+ZK8oi9uNILPvHmw5+YrcfSHI6pjy7U
 y+V6qxQZAfzWJExJP1Xma9N+0CiZ2xzgA3fizuIGsBdGvevjeD2dVNdVy
 /5cQ8FfiM9ojL1ry9EL1/WemiNkICclSdVbONf7RE8b4qyyK6i4nvNcMd w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="320176803"
X-IronPort-AV: E=Sophos;i="5.96,305,1665471600"; d="scan'208";a="320176803"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2023 05:04:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="798274619"
X-IronPort-AV: E=Sophos;i="5.96,305,1665471600"; d="scan'208";a="798274619"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 06 Jan 2023 05:04:26 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 6 Jan 2023 05:04:25 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 6 Jan 2023 05:04:25 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 6 Jan 2023 05:04:25 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 6 Jan 2023 05:04:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ngcD5wjfqbCvSUh6+r31aQ77zY4lEei1dWzipVrOiQlFDviZS55oY8EETIYbhqn2KuNc2mpfQmEMEBbpxDC938dX+4XArZFqIkgq/PF5oADm+HzVWV40UIpyrNGQh4GHRXFI5lHS5HWjWSI6+VZGKkdVfrgLjO6qLSXxVlEwkF9YRoDfAYD/xTCsFgQgQ4gX9whR1imn/yQruzAM6jMZlW86WCPLO/yhgujust3uF3ugZoINGd2i3V1BHFuQ83FptSBK1yBnIrdl3lJcMkvILeq8vhHZ62Kl2vDlIuIektF0A4H/tfP60VPcPTPC+porbVeciK8tniy+hXPda3bLGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SoXRSiaoghEWVRetzxMd1bx2XNm9vHoPahWVbSvDV+c=;
 b=TQVZvB98zQgt1GZApJqMAaipaSfXS80cJuVQYaZkwuAD/hwXoRfP5WuNitdc7OV1/gNNSix2tm+eRjz6snJM7ETW4Au59yqgM4XuuKoCexzSQUOz/pB2tTxRjPxNvcQ2My5XAAqkonciefuNjtnYIA0Y+0308+zeUcmlBvSEWKfC1n262pBKLMMF+R7wXAtDHMRT/jDVzcTmd9qPK221NuOU/s7X3PcNa3a5t8ujE58efZ40Y03ySLFFVD/wRosymvZurD0i160neKFvynOLFINsU0omX0kkTcuzKG0uIC7Dg6tTVZ0tJB10/cwyfTDXvQs8HpQ0lkF1ZzZhA7RrKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB7544.namprd11.prod.outlook.com (2603:10b6:510:28d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 13:04:23 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 13:04:23 +0000
Date: Fri, 6 Jan 2023 08:04:18 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <Y7gcUuYD3zzThPQi@intel.com>
References: <20230105234408.277750-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230105234408.277750-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BY3PR05CA0059.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::34) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB7544:EE_
X-MS-Office365-Filtering-Correlation-Id: 658d32b4-dec4-442f-9b73-08daefe687e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X+wbDKaW/11dUAA6/Cqn1aZ6U6XDqKGnoZvBtMKsBzneNfSy6/kueuOOt319SJjgS4CaDE14c9fa269jrKfNBI/zv7TWoDqod7lctwx8LrsZQHTHaCGrYVZUuk3YVo3p9zhPbZTO/59B/vewV3M4+FWa5ApTqgNb1FaDYYQYACnMM0t3nS8guL2Aft3qONaezxwZEw7u3joxSUNToR3c4BEvIlnYlpnvSKFD+2AYpK5iZQo8X+Ic9ghHGUjNqQK+Aip/iWJJagwwiEZROqPtD7171E0oBq4+9qiwqj3t3esY0yRhu42EAMblqtV1gt2AarPs1osGvwHbmKIRDneQy4bqln9O7E+3hsVYABzrQwhkjqI47v2M2gvup/dSm3t3eqQ/eWVXNMlMP7agjm7OdJX2gT62Iz7ixUuokjLQ2D7SjIEr5JKXiKFpQgc9PvVE2g+H2gtuh5N4Sx+Lhv07szoLIWVQSgf+gsWCPIlErpBeFpHK4AcKtgz28Pf7LSgfdl5ka3m673F1rY9B6P5KyfsWW55k5rt1x8KJqUQDpWxcfyBjcqoWyj1Jy3e/uBB1FbiXBZaoQNeLiOf9mxhszcR+iPFjM2ZlXQOMmEGdyMjWEu9qzn1ObN123ba69Kl6UTo9Xe0giXdq8mBtvuPghw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(376002)(346002)(366004)(39860400002)(451199015)(38100700002)(82960400001)(6636002)(4326008)(41300700001)(66946007)(8676002)(66556008)(66476007)(86362001)(316002)(37006003)(2906002)(30864003)(2616005)(5660300002)(44832011)(6512007)(8936002)(6862004)(83380400001)(6666004)(6486002)(6506007)(26005)(107886003)(478600001)(186003)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sGDVOds4e4wPu1fPZ1M831p6jAjDT6DtX2YbWz1SU44d8Dddr4JD6mZdImdI?=
 =?us-ascii?Q?n7gyIpD0IzEbUO0Ia/4o81LVCRRYj0Wv07Td19wT5QJ8Bjp0qM4tcp5drx6v?=
 =?us-ascii?Q?xjIxBLy9rQqdHKDlWS4WEMFlz8yGZBjza5D4Z2Bg3kCrtDVV0ty9cwlgWy6S?=
 =?us-ascii?Q?p2HfK45mqHJH8M9w2gcN6dBl/kKUr7loy8bdgykuA2GykvpyDRjX6URsjn21?=
 =?us-ascii?Q?z+QbrIDdisFeA8jW58Ha+GrtCBf0hdP9T3OFLdpySdm4w4wO1ccu2aAy23uv?=
 =?us-ascii?Q?/MYVtqbmbygxPRpxFm+OTFrX+3bIUo7xgDfGmK4zEickYQeNOxcAOpX/jnj3?=
 =?us-ascii?Q?fp11XxErUOuwW5A4rPVGvguEGLko3wjpFbuAukvkpj9h+V8PHLKaFvjLw4Ex?=
 =?us-ascii?Q?PNewWDB+li6RHV1uy2eD8VZVH7I/OoqHybmvGMDoUI2LCujp4z/+9zAGq48g?=
 =?us-ascii?Q?e2ldL1ELO4ZrmmyZ+yDtl1u4Z0F/N+5PV8Qn5fupCEGRR4ipiu89AZFFAB8i?=
 =?us-ascii?Q?azpeDKbvyPNjVq12oC3WAyXEYlvS/hY+7a56g0h37Dq5cTPPWZWsQoy3X+3x?=
 =?us-ascii?Q?UuiY3fDvitqFYby3bpPh3mwNJdQN5qidOeIYlCMUc+xTR3kwvLEMZ7B6OtQp?=
 =?us-ascii?Q?Gn0OOJrifgsgjvv7PjGuoNm6ZP4X42dF4imw+TKIctFWniWbNoaKhf4x05Vq?=
 =?us-ascii?Q?+vHztJn0nUsFFODqvxGdoH3DU99Ol6awFEi4TCZrAeA6/CiYjzLX/oCpTg5j?=
 =?us-ascii?Q?IDz9ovbII2ktJzw+6D5nj29f0N69mVLsWxlyQk2AZaMf+q41uaNRcxW4L7nW?=
 =?us-ascii?Q?v6xMMqy8HbkYzD9iHRWoV47DdyZ2uAGhs68dniqkW6XbyMPrBjATC2b7OoaU?=
 =?us-ascii?Q?JQf4Y/3Kp1AhTu1RsF6xp3cTZKf0r7MnJDZLlGGd8c+gWBmGB8cGgzQMZxos?=
 =?us-ascii?Q?nPqtyhWvpw2ax/i6IOk5xWWmSkmVx9+/zOkILJk6bS/qi2M89Qg3pwu1MqDv?=
 =?us-ascii?Q?yrbnByawyn7fwS29FL/G1Htv4I+G+3193U4AKv33C/N8/Ui0iM7GCiiXhTI6?=
 =?us-ascii?Q?j2YMEihTiqrnz9YuDWswQGBZbWogYv4/t871aV2+tny7S8jUFlGm+I3b4wWx?=
 =?us-ascii?Q?gIw3UEaa46sX9AcKEcRd/uBZ/Scwz24S+/txNZN+Wy6a9240e7gUEHcaWdIP?=
 =?us-ascii?Q?de7J2qHXjo/Wm7HbMrDCxorIFpPFMRgYDLJ5hG+UVVETk7COYq1BaOuamCKt?=
 =?us-ascii?Q?fDjLG7Ej9ehCufu69mc2ps5Fcrr1rO/GmJOOXJ4z2udLbPB3xaK0KjE+EJhy?=
 =?us-ascii?Q?02ZrlmgAJyz0DLA5vD7hjX6ldN0HebNGixmJPm9HYT/dnL6hZAf6vHWhhHy1?=
 =?us-ascii?Q?sqieTTnMyGIagWcFSJEjeWbCoFYllj/rofeoXhjGsOWZfeUtfvXa6jmhLQ/a?=
 =?us-ascii?Q?GY6naZPIYueTZl0y+8FC3Q3HokOA9p6GbZxF5xhYsALl+Vtnmc1aXIOWkm/U?=
 =?us-ascii?Q?J8YghkBeRngIaaASlBLW8lWM3cLaeoME2zy4JrEaXXqmMhoxDdkXHfm15QKG?=
 =?us-ascii?Q?Qn5EuRyRqXPiAlF+71dG9ZpbepeUz9RMUvHs88ol?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 658d32b4-dec4-442f-9b73-08daefe687e3
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2023 13:04:23.1140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4iqHPCF2gI9Qo7DdB2ex7VG7DHxrwVeWQAn481UTPkFKLAc70qXfWn2hTYG7Ze9C+OOdNZ52/YT9wHsP/DoXfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7544
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/mtl: Add initial gt workarounds
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 05, 2023 at 03:44:08PM -0800, Matt Atwood wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> This patch introduces initial gt workarounds for the MTL platform.
> 
> v2: drop redundant/stale comments specifying wa platforms affected
> (Lucas).
> v3: drop additional redundant stale comments (MattR)
> 
> Bspec: 66622
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   6 +-
>  .../drm/i915/gt/intel_execlists_submission.c  |   6 +-
>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  11 +-
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   5 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 115 +++++++++++++-----
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   9 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   8 +-
>  drivers/gpu/drm/i915/i915_drv.h               |   4 +
>  drivers/gpu/drm/i915/intel_device_info.c      |   6 +
>  9 files changed, 128 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 99c4b866addd..e3f30bdf7e61 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1494,10 +1494,12 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
>  	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
>  
>  	/*
> -	 * Wa_22011802037 : gen11, gen12, Prior to doing a reset, ensure CS is
> +	 * Wa_22011802037 : Prior to doing a reset, ensure CS is

                         ^ you could've had also removed the extra space

>  	 * stopped, set ring stop bit and prefetch disable bit to halt CS
>  	 */
> -	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
> +	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +	    (GRAPHICS_VER(engine->i915) >= 11 &&
> +	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))

this is getting hard to read, but yeap, this is the only way...

>  		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
>  				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 2daffa7c7dfd..18ffe55282e5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2989,10 +2989,12 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
>  	intel_engine_stop_cs(engine);
>  
>  	/*
> -	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
> +	 * Wa_22011802037: In addition to stopping the cs, we need
>  	 * to wait for any pending mi force wakeups
>  	 */
> -	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
> +	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +	    (GRAPHICS_VER(engine->i915) >= 11 &&
> +	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>  		intel_engine_wait_for_pending_mi_fw(engine);
>  
>  	engine->execlists.reset_ccid = active_ccid(engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> index 41a237509dcf..4127830c33ca 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> @@ -164,8 +164,15 @@ void intel_gt_mcr_init(struct intel_gt *gt)
>  	if (MEDIA_VER(i915) >= 13 && gt->type == GT_MEDIA) {
>  		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
>  	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
> -		fuse = REG_FIELD_GET(GT_L3_EXC_MASK,
> -				     intel_uncore_read(gt->uncore, XEHP_FUSE4));
> +		/* Wa_14016747170 */
> +		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
> +					     intel_uncore_read(gt->uncore,
> +							       MTL_GT_ACTIVITY_FACTOR));
> +		else
> +			fuse = REG_FIELD_GET(GT_L3_EXC_MASK,
> +					     intel_uncore_read(gt->uncore, XEHP_FUSE4));
>  
>  		/*
>  		 * Despite the register field being named "exclude mask" the
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index f8eb807b56f9..8ad084bd35d5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -414,6 +414,7 @@
>  #define   TBIMR_FAST_CLIP			REG_BIT(5)
>  
>  #define VFLSKPD					MCR_REG(0x62a8)
> +#define   VF_PREFETCH_TLB_DIS			REG_BIT(5)
>  #define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
>  #define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
>  
> @@ -1535,6 +1536,10 @@
>  
>  #define MTL_MEDIA_MC6				_MMIO(0x138048)
>  
> +/* Wa_14016747170 */

no need for the wa identifier in here.

> +#define MTL_GT_ACTIVITY_FACTOR			_MMIO(0x138010)
> +#define   MTL_GT_L3_EXC_MASK			REG_GENMASK(5, 3)
> +
>  #define GEN6_GT_THREAD_STATUS_REG		_MMIO(0x13805c)
>  #define   GEN6_GT_THREAD_STATUS_CORE_MASK	0x7
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index bf84efb3f15f..002ba7c2b1ed 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -786,6 +786,32 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
>  }
>  
> +static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
> +				     struct i915_wa_list *wal)
> +{
> +	struct drm_i915_private *i915 = engine->i915;
> +
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> +		/* Wa_14014947963 */
> +		wa_masked_field_set(wal, VF_PREEMPTION,
> +				    PREEMPTION_VERTEX_COUNT, 0x4000);
> +
> +		/* Wa_16013271637 */
> +		wa_mcr_masked_en(wal, XEHP_SLICE_COMMON_ECO_CHICKEN1,
> +				 MSC_MSAA_REODER_BUF_BYPASS_DISABLE);
> +
> +		/* Wa_18019627453 */
> +		wa_mcr_masked_en(wal, VFLSKPD, VF_PREFETCH_TLB_DIS);
> +
> +		/* Wa_18018764978 */
> +		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> +	}
> +
> +	/* Wa_18019271663 */
> +	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> +}
> +
>  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
>  					 struct i915_wa_list *wal)
>  {
> @@ -872,7 +898,9 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
>  	if (engine->class != RENDER_CLASS)
>  		goto done;
>  
> -	if (IS_PONTEVECCHIO(i915))
> +	if (IS_METEORLAKE(i915))
> +		mtl_ctx_workarounds_init(engine, wal);
> +	else if (IS_PONTEVECCHIO(i915))
>  		; /* noop; none at this time */
>  	else if (IS_DG2(i915))
>  		dg2_ctx_workarounds_init(engine, wal);
> @@ -1628,7 +1656,10 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  static void
>  xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
> -	/* FIXME: Actual workarounds will be added in future patch(es) */
> +	/* Wa_14014830051 */
> +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0))
> +		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>  
>  	/*
>  	 * Unlike older platforms, we no longer setup implicit steering here;
> @@ -2168,7 +2199,9 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
>  
>  	wa_init_start(w, engine->gt, "whitelist", engine->name);
>  
> -	if (IS_PONTEVECCHIO(i915))
> +	if (IS_METEORLAKE(i915))
> +		; /* noop; none at this time */
> +	else if (IS_PONTEVECCHIO(i915))
>  		pvc_whitelist_build(engine);
>  	else if (IS_DG2(i915))
>  		dg2_whitelist_build(engine);
> @@ -2278,6 +2311,34 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  {
>  	struct drm_i915_private *i915 = engine->i915;
>  
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> +		/* Wa_22014600077 */
> +		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> +				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
> +	}
> +
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> +	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> +		/* Wa_1509727124 */
> +		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> +				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
> +
> +		/* Wa_22013037850 */
> +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> +				DISABLE_128B_EVICTION_COMMAND_UDW);
> +	}
> +
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> +	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> +		/* Wa_22012856258 */
> +		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> +				 GEN12_DISABLE_READ_SUPPRESSION);
> +	}
> +
>  	if (IS_DG2(i915)) {
>  		/* Wa_1509235366:dg2 */
>  		wa_write_or(wal, GEN12_GAMCNTRL_CTRL, INVALIDATION_BROADCAST_MODE_DIS |
> @@ -2289,13 +2350,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
>  	}
>  
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> -	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> -		/* Wa_1509727124:dg2 */
> -		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> -				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
> -	}
> -
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
>  	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
>  		/* Wa_14012419201:dg2 */
> @@ -2327,14 +2381,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> -		/* Wa_22013037850:dg2 */
> -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> -				DISABLE_128B_EVICTION_COMMAND_UDW);
> -
> -		/* Wa_22012856258:dg2 */
> -		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> -				 GEN12_DISABLE_READ_SUPPRESSION);
> -
>  		/*
>  		 * Wa_22010960976:dg2
>  		 * Wa_14013347512:dg2
> @@ -2944,6 +2990,27 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  
>  	add_render_compute_tuning_settings(i915, wal);
>  
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	    IS_PONTEVECCHIO(i915) ||
> +	    IS_DG2(i915)) {
> +		/* Wa_18018781329 */
> +		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> +		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> +		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> +		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
> +
> +		/* Wa_22014226127 */
> +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
> +	}
> +
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	    IS_DG2(i915)) {
> +		/* Wa_18017747507 */
> +		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
> +	}
> +
>  	if (IS_PONTEVECCHIO(i915)) {
>  		/* Wa_16016694945 */
>  		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
> @@ -2985,17 +3052,8 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		/* Wa_14015227452:dg2,pvc */
>  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
>  
> -		/* Wa_22014226127:dg2,pvc */
> -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
> -
>  		/* Wa_16015675438:dg2,pvc */
>  		wa_masked_en(wal, FF_SLICE_CS_CHICKEN2, GEN12_PERF_FIX_BALANCING_CFE_DISABLE);
> -
> -		/* Wa_18018781329:dg2,pvc */
> -		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> -		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> -		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> -		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
>  	}
>  
>  	if (IS_DG2(i915)) {
> @@ -3004,9 +3062,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		 * Wa_22015475538:dg2
>  		 */
>  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
> -
> -		/* Wa_18017747507:dg2 */
> -		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
>  	}
>  
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_C0) || IS_DG2_G11(i915))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index c0b5aa6fde26..1bccc175f9e6 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -274,8 +274,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>  	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
>  		flags |= GUC_WA_GAM_CREDITS;
>  
> -	/* Wa_14014475959:dg2 */
> -	if (IS_DG2(gt->i915))
> +	/* Wa_14014475959 */
> +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> +	    IS_DG2(gt->i915))
>  		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
>  
>  	/*
> @@ -289,7 +290,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>  		flags |= GUC_WA_DUAL_QUEUE;
>  
>  	/* Wa_22011802037: graphics version 11/12 */
> -	if (IS_GRAPHICS_VER(gt->i915, 11, 12))
> +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> +	    (GRAPHICS_VER(gt->i915) >= 11 &&
> +	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
>  		flags |= GUC_WA_PRE_PARSER;
>  
>  	/* Wa_16011777198:dg2 */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index fe06c93cf6e3..b436dd7f12e4 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1621,7 +1621,7 @@ static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
>  	intel_engine_stop_cs(engine);
>  
>  	/*
> -	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
> +	 * Wa_22011802037: In addition to stopping the cs, we need
>  	 * to wait for any pending mi force wakeups
>  	 */
>  	intel_engine_wait_for_pending_mi_fw(engine);
> @@ -4203,8 +4203,10 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
>  	engine->flags |= I915_ENGINE_HAS_TIMESLICES;
>  
>  	/* Wa_14014475959:dg2 */
> -	if (IS_DG2(engine->i915) && engine->class == COMPUTE_CLASS)
> -		engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> +	if (engine->class == COMPUTE_CLASS)
> +		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +		    IS_DG2(engine->i915))
> +			engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
>  
>  	/*
>  	 * TODO: GuC supports timeslicing and semaphores as well, but they're
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 48fd82722f12..f742328c4d95 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -735,6 +735,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_METEORLAKE(__i915) && \
>  	 IS_DISPLAY_STEP(__i915, since, until))
>  
> +#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> +	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> +	 IS_GRAPHICS_STEP(__i915, since, until))
> +
>  /*
>   * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
>   * create three variants (G10, G11, and G12) which each have distinct
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 849baf6c3b3c..05e90d09b208 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -343,6 +343,12 @@ static void intel_ipver_early_init(struct drm_i915_private *i915)
>  
>  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_GRAPHICS),
>  		    &runtime->graphics.ip);
> +	/* Wa_22012778468 */
> +	if (runtime->graphics.ip.ver == 0x0 &&
> +	    INTEL_INFO(i915)->platform == INTEL_METEORLAKE) {
> +		RUNTIME_INFO(i915)->graphics.ip.ver = 12;
> +		RUNTIME_INFO(i915)->graphics.ip.rel = 70;
> +	}
>  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_DISPLAY),
>  		    &runtime->display.ip);
>  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_MEDIA),
> -- 
> 2.38.1
> 

with the extra space and the comments removed:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
