Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A3C79AB2C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 22:23:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 803C810E1B8;
	Mon, 11 Sep 2023 20:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44FFB10E0FA
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 20:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694463831; x=1725999831;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Jqvz1IOdsuyoRK4MvRchrZYgiO3z/kkCYvN9Q63UDrI=;
 b=XRnN1ckUY3MLCfQidESIGLhl+GLcFmw72iJ3xj7Rl3vzDDPRtskP5UuV
 SqUCK+62e9HWer0PIuWIjkLEC21DbTxx6+RZRxwoRVnLIn3R1F41jOvU1
 502j2BLmVotyfZH+owFWegKKI2e6DA9su8IxwFyDsPMs9fboIEZ+743SF
 hKloU2i+VwkJTHMQ+dyryivqnU45bQVQXbbQodJBRRomxQC4PiLpYQP9l
 KlO30y50QXZsE4cvFWSR+1uZOzYzMsMjj8F7g8ryN3DblS4LKzLv1EG1i
 iYKo+x7FuDOuT8tiEa7kClAqeoUCAis83FMmXbFZNFSL6zRfYUKAaRQ7k g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="363227788"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="363227788"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 13:23:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="813524071"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="813524071"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 13:23:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 13:23:49 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 13:23:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 13:23:49 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 13:23:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jx/qtC7e6/i4bci2w2XCyGx5HNe19rOTRPlpKoVh2bTOWzTW0vIRAVRglmDMGq1X8vr2n+SqW5BSObF9v+Ypv1bkwnVCNDvbS+Wk0jaxlehE6xaZhrEAETl9SjBgq3/ZyqeyrKcvTJCQpkEBmre4k/+E/TBPm0d8JPADVzi7YacP23rBUL3qV6Egvjuv7c2HWzIaKh80HlqOGPEou1fSufZxOFUpeQUekhoje3Jb5j0xVZFgEkXznSzdRy34Bwl1ntFjBy81VRoMO9ASgT00K5/+rYQeh+f160FP4YYoZ6Jg+ZF+V36QFAa+0ymL6czFYQgq8rgerPskWSWOxeKxhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9XeMbfVAP9zHW+s+rxxp/5iKrgDmw545dmiqfjrF8AI=;
 b=Pghi3WZ3B65qM4qUjGLli7Hh86pYvPwiZg59hQX6NbBWjyD+a9meHB71a1bsojD5oN7R+uvkmZ3NLXO11lIdwgAGN73IB4WUwZZSfH62PtVTnkcFjyhXFruUNwyrpQ91DSxvn5gaGqjhAY+F5ND5TCmAXwjj58vN4dQ+rRWFvDRynkdF4y6HhZ4nFJX8ZvSAw+50tYqs2Gqsh+xECKtP2XjTZ7Sc/iq0wh4h0TEm2DsAorEA2CT6JGX+qqMESLxawSiS73d3ZHOqzPAB1+gZ5GzVEO7wIr+XtyVpHLGYVtuxpRQ8TdeNmnsTIM4Nkr8HNL7tEBaLVoM14LNgC/ik5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH7PR11MB6700.namprd11.prod.outlook.com (2603:10b6:510:1ae::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35; Mon, 11 Sep
 2023 20:23:42 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 20:23:42 +0000
Date: Mon, 11 Sep 2023 13:23:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Message-ID: <20230911202339.GC2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230911114933.149353-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230911114933.149353-1-dnyaneshwar.bhadane@intel.com>
X-ClientProxiedBy: BYAPR01CA0061.prod.exchangelabs.com (2603:10b6:a03:94::38)
 To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH7PR11MB6700:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b173bcb-8739-438d-8f57-08dbb304fd6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +keYMx0i/Yv5dvoERDIIpJnspaIy1zLovkvsxNCiFSRJPgoDJmTJ892efcqweUleCzyBZtq5yf9AG75K9u5jYCKG+mjg3EsSnFiiehQ8H4zWyzCGQrDu0ZFbHTq+tyZFr3YEq8UiGTwho8XzPPVC+IPe71JRu/i1J7IzDD2d/3yBkOgkks2d4jNooySmtsIM18fK0gefxstZsHSPhRtIM4/WC1iSYMk29j2wqAszJfY60ugENeLc+3vAWBqWhdNyw4dXSgk2B8wnhOzBJ6sLCGAaZWTyHP28lSmLN1/mRJFhmGncDiHT3tBr3rTnnAGP70tuQHFh1QI4PTvnUEEEP26kXxbExuQvufFdSsa37D7MIjDFsq8kk0Y+KFajOlMV8OwuKTMjvZQ6F6xY1uWMUWLzcbhd/Vjtr9RGYM3wGJUFZNsxQenfSF9qpRoLYfNI3/xkPukG6vdhxXFotWqA6qn5T1kkYhziRle/h+OoJ0x+RX+2gQ+nopbx+LxQH3aWJgs2es1ZGjXrWB9z4dzrAKQ2O3UH8RupkKAP6ApEn7sZ4baql9sNPqseLv88tJ7e
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(376002)(346002)(396003)(186009)(1800799009)(451199024)(2906002)(66899024)(26005)(86362001)(1076003)(107886003)(33656002)(6666004)(6486002)(6506007)(6512007)(82960400001)(38100700002)(83380400001)(478600001)(6636002)(316002)(4326008)(54906003)(5660300002)(8936002)(66476007)(66946007)(66556008)(41300700001)(8676002)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0JCaAU6Z4IfDkQ8kzUxH04JxPYvROcRPglG/4SifAr+rwuN0gHOY5aJMeh/w?=
 =?us-ascii?Q?jl8zEInvM9fDiU12riTajZfEqLNilQ8e3r4Y6Eoqlc+df4gn9bFSB0kSkPt9?=
 =?us-ascii?Q?ZwgXycaKhO6tlBG8uyOdG0MXUEJilrI3GUYtkUyDvst0hncVOwB4rda0GM1k?=
 =?us-ascii?Q?wkEsTFew1Q7/yjw8ybrStvbUixJQ4sPVTuhauYjjdq0JH6nLZYIMifQqnTFn?=
 =?us-ascii?Q?tCJgJwX+1tv7j38VPSgW+OR2PTY0UhAwoS1TyPOyr0Zhy51ck+ovA6V6P5YB?=
 =?us-ascii?Q?0iSXtGZxpkd+EjzM1gmQ/mWq700iTAwQlBmkSU5tgZnSEHaGvDHXgLFdr29F?=
 =?us-ascii?Q?PXB1Iw1OG0fNs2ba80eLLYhb1DOY1umwqHmwj7bOCFEUggVdbkhvUeN+7ts5?=
 =?us-ascii?Q?WtcDvXxfffdG35YnQTycNsDu/r9/SqbvyvD0b7ZrVXwen3uCVpytIR1hLhan?=
 =?us-ascii?Q?yGB5lyphV8BLmnQZ+7V1Mvk6/gaId/ew+pTVZ8iempsjX0DdTXd4gV1u9+Vf?=
 =?us-ascii?Q?IwedHZifdNp2qaEwGS9Kfg960SA0uVfL1HeBp2p02txO7NbaAxlfCzY/kF/7?=
 =?us-ascii?Q?tNeHQvVxOJLvTe2Y9KYnSfnHjaN0qJxQ1YgmnTW6hN6EnIOsdZJYb8nYdSAi?=
 =?us-ascii?Q?flGFPXBNsX+miW6Vv0NtGL97AN5Na3OKjqYWVb3jKwHEDc8ijf/Jb+ouStTN?=
 =?us-ascii?Q?igu20O9gwHJuTClc/T6Uy+trF7UselXYLGrovNoe0lowAWi/KZ986wPZ6JR4?=
 =?us-ascii?Q?ib9Cq9/ddHdXYg/qb8Jq8mthJxy9arIPzx92fphaSSMjreEfscn+Z/uBrj8L?=
 =?us-ascii?Q?0nR81ApB8RN1cX0qfwErACD09cWDUhhe4ZUS6cRpIlzmUBGTfFlBd92KW9Om?=
 =?us-ascii?Q?8PA3N2a+D5GPrHlcEiZ8uBSxlq0C/PJw9abwF9leWBoLpXqJ41sPKZt+Fu8R?=
 =?us-ascii?Q?YJICrs317BIBQYHqKtXC6ZaCvHxCOWNozxN9lTpk0Y8QQJH1jHMjDNanH7U3?=
 =?us-ascii?Q?1YMO10mYxq6zLMHAb8d7cZOO6bocnAW+4j/Numn1mr4jXu1YsrrCubSsGIW3?=
 =?us-ascii?Q?YmYvU4x+K141YWFAZplRss1uZcg8qiMDi4NIH6w5DWoMRhajNp9SZ0wRKp9V?=
 =?us-ascii?Q?Gj4vk5Tx/VBILIAtZCIeL/KqdgOoLcDVCOJ4svXIobfzN3Na2qgk65VOafeo?=
 =?us-ascii?Q?bLEkqpslqkWpozpLgi0yBuKEPt2vtXHQUX3g1vOuuMNIxR6IdKp3gfLC8Jbw?=
 =?us-ascii?Q?tbumH5gEa3mh0lJL05+SQy4+GC2iyWHGotYrkaTuu731sT91dPEbWQVqWhWz?=
 =?us-ascii?Q?OfAay6s1SjjUplwIPyGfHN1LFNg9a0YXslQrtxrRMSTkyX9/kD1LRQ45jfdU?=
 =?us-ascii?Q?RRHIblqOkL/vaHv/1RGHg3Rp3AGmYS2bX+zJfPtinakLyn1UFDrmKoXv0ebb?=
 =?us-ascii?Q?Zu42cgXqNtOuWmk0ulPhBF7eD36sIIjILHI9BoICaVorjgziCSqABfcQHlMm?=
 =?us-ascii?Q?jzQkx92bDJ42hiEA97YD+ib7idVdJX4hj54sg8ijh6gVd0wHwPYEhhpOVf9k?=
 =?us-ascii?Q?h2YIQ61V1AZ154l1OuL1zOjoX6SPieYQMijfLT3djL7RBXn3M2oBK1lEe6o7?=
 =?us-ascii?Q?+g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b173bcb-8739-438d-8f57-08dbb304fd6a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2023 20:23:41.8362 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xSUU6W/4PBAt9BptcMf5uK+ptAGEc+VXFdcLI/l+cDVBq6Us6ygZugj98qb5Xyoi/1ejyTbNNY6D/UkjndU/Rs7dVsllov6XJvNhYCDb2gI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6700
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915: Added Wa_18022495364
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 11, 2023 at 05:19:33PM +0530, Dnyaneshwar Bhadane wrote:
> This workaround has two different implementations,
> one for gen 12 to DG2 and another for DG2 and later.

Since this workaround is no longer relevant to any platforms DG2 or
later, I think we can drop the mention of those.

> In this patch only GEN12 changes are implemented.
> BSpec: 11354
> 
> v2:
> - Removed extra parentheses from the condition (Lucas)
> - Fixed spacing and new line (Lucas)
> 
> v3:
> - Fixed commit message.
> 
> v4:
> - Only GEN12 changes are kept(Matt Ropper)
> - Renamed the register bit in define
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 0e4c638fcbbf..38f02ef8ed01 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -164,6 +164,8 @@
>  #define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
>  #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
>  #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
> +#define GEN12_CS_DEBUG_MODE2			_MMIO(0x20d8)
> +#define   INSTRUCTION_STATE_CACHE_INVALIDATE	REG_BIT(6)
>  
>  #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
>  #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 864d41bcf6bb..30aca8d03f6b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -712,6 +712,10 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
>  			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
>  			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
>  
> +	/* Wa_18022495364 */
> +	wa_masked_en(wal, GEN12_CS_DEBUG_MODE2,
> +		     INSTRUCTION_STATE_CACHE_INVALIDATE);

The formal text for this workaround seemed a bit vague/ambiguous so I
had to go back and read some of the background in the workaround
database to figure out whether this is actually what they were asking us
to do or not.  Unfortunately it doesn't sound like this is what they had
in mind; what you have here how we'd generally apply a register setting
as part of the initial "golden context" at initialization.  The golden
context would be copied to create the starting context for each new GPU
client, and this value would then be properly saved/restored as part of
the context image on each context switch thereafter.

However this workaround is a bit unusual since this isn't just a
register setting that they want initialized a certain way and preserved
thereafter.  Instead, this specific register bit has an immediate side
effect (invalidating a GPU cache) at the specific point it is written.
The goal of this workaround is to actually perform an explicit
invalidation of that cache (by re-writing the register) during every GPU
context switch, which is accomplished via a "workaround batchbuffer"
that's attached to the context via INDIRECT_CTX.

We already have general setup/handling for INDIRECT_CTX-based
workarounds in the driver, although it's a bit different from the
"usual" workarounds that we deal with 99% of the time.  In this case you
want to add a GPU instruction (MI_LOAD_REGISTER_IMM) to the batchbuffer
that's being generated inside gen12_emit_indirect_ctx_rcs() of
drivers/gpu/drm/i915/gt/intel_lrc.c (you should probably make a new
function in that file and call it from gen12_emit_indirect_ctx_rcs).
What you need to do would be very similar to what we're already doing in
dg2_emit_draw_watermark_setting, just with a different register/value.


Matt

> +
>  	/*
>  	 * Wa_16011163337 - GS_TIMER
>  	 *
> -- 
> 2.34.1

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
