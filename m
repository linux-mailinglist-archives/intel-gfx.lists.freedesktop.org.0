Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E696CF50D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 23:12:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B28E110E1A1;
	Wed, 29 Mar 2023 21:12:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C615810E1A1
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 21:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680124333; x=1711660333;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HdSYYMp0XMd8yFxeUDId/wT/R17rrKtqjTdPc4PTtLU=;
 b=WY1sEQouUo662sMkwPcqAJ4Kc23NAvoncO1Yqr993uZL/Zbz3J643t9s
 Y/O+mVvyb7AYCWWECzdUQOuELFnNN33ckTihpcPz7p1a89hHtKquWXnys
 0bxJIElLkv18dQhK6LL4BzxCXjWSXj6+I1d+2gWodUTganD4qiP96m4yt
 /qaO9MOuGI4rdQwQDJzgDZ9D2rka0qR/MbbGZIm6VGMFRd+cyrKIQnRMM
 Bar8wO5iQ2Mn1LhqhWOkvjAaKd6p4sZXuoOxpJMTIJQFYTf5U1zngZgXA
 encT3dxDoyGhBtB/3M2XADYyv5d7WHM3Zh5SsctljYEqj09l6F/z0T/GL w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="341018607"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="341018607"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 14:12:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="808380361"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="808380361"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 29 Mar 2023 14:12:13 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 29 Mar 2023 14:12:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 29 Mar 2023 14:12:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 29 Mar 2023 14:12:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VUH75m0W9DP/BVjxNRiqhOoZPakd8fKxoe52E4epm9AcjnPybf3f1uQWFs2yc1brnJYi2X3SdKcCbAyKimS+kZnbVgq6bvoC1vRlqfjjlqC2XChfelnghNOddgIlw4DfMlJdHa9w8XC1nitGHMziboQ4wk7I9YjgU+HTTYRyA13Z1Rnv0JfzLxXRGEVKr4r1i9/w67NuPJ0JtvNWtK8Whcl9DYe05vjCyBTIUhLQKv5lau7HOCbrGfRlM06xjNJ0m/KyT1PAmhVTnBA/xlqZj12KQctUvCDImguZyXxh3IVgeapmueK0tGk+iYQE1+as0nCsq1HNjLHEgYVTTWNi5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Es/T9LnAnQMliqgVFhI5kJjOYCjuO4iDyfDMQOCzogI=;
 b=aUuCVs6JBfNw6l1QflrL/PrYFxVty7pmQtrEImjxOkQi1UT5iIpNCcxNyrsu876CaK69rE9xTV3ZH2p7Q6bLRxTTI2UaShh3YCd6258XKCHklyA7ki2WEceJGVjTlIxnzVrRznfS65zvNf8iQxmgHKBygXLarxg3C436Z9+ip/1VgJTcJj0XGZgTX2QsQYu4QDPrgvS6VtdCGu4wBP/x6eaQWPpNTBoWK0KB1cUGA9lPipLF2prj+r2F4Q2rw5eI0rB+oGb14YXBi/pOrvaJXqvo6tGpcelW7/mnqs6pzmJ9zEutoi4rt/1hT7BzxyscscQlEsHcMrRat3Pw2yaXNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MW5PR11MB5881.namprd11.prod.outlook.com (2603:10b6:303:19d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.35; Wed, 29 Mar
 2023 21:12:09 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0%7]) with mapi id 15.20.6222.033; Wed, 29 Mar 2023
 21:12:09 +0000
Date: Wed, 29 Mar 2023 14:12:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20230329211207.GR1175070@mdroper-desk1.amr.corp.intel.com>
References: <20230329202451.98364-1-gustavo.sousa@intel.com>
 <20230329202451.98364-3-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230329202451.98364-3-gustavo.sousa@intel.com>
X-ClientProxiedBy: BYAPR04CA0023.namprd04.prod.outlook.com
 (2603:10b6:a03:40::36) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MW5PR11MB5881:EE_
X-MS-Office365-Filtering-Correlation-Id: faa054fa-6543-4b57-c3ac-08db309a4224
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oAojNzjIMVtbhWpqut/D/vIDF+nbsJDs1OEgD6TJo7G4SMwFfxMkax5Ys8evLomTzH6S5TIanRdse8ozivJOaUKb7eFYrCg1iRcKKSyEdeXDKtE3bYMnUeKaD/cH/bClk9f0Vo3BS6HbgksweT/T5pia5bveGViPvfo5Qb3Q7obIodTVE/B9ZpxboifCMbSSOqDkMp04WBFMTesz1yEz9hNEDPOnceAIPmlgyIBgQSBUewC0z8SXVGOB55gAMhakYx1RTsYThedNcIJhh2EL3rylmDkDB27ZBcz+3Ub9FYMBEkuberhZR4ndvjggeGS1acNaKwd36KxXzqlMI/++dhU6RHeydDaxn8aRoAAXw+hmG/5DdcAla9ESzF42siLGHWdNUmdiCRdjffZxxTnMJr/ITD5d3i1FnGZ4o535NUcww7I0/n4lo7im+SyeyzO4ndEhrPwW+wBfNnpdSQI51AQQnz0MF3Ax4dJFm7oy00sov1C4vPts2Y9caQeiRPrr4tu0lacC5HW+FBU1osjwYBEO5IrHiKsYOLXQSVI4F4kIM+c2qAsppfFgNuM4S95h
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(39860400002)(376002)(366004)(396003)(451199021)(2906002)(41300700001)(316002)(66556008)(8936002)(6862004)(6486002)(8676002)(4326008)(66476007)(6636002)(478600001)(33656002)(66946007)(86362001)(186003)(5660300002)(82960400001)(6512007)(6506007)(26005)(1076003)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZlIXX/Vy7cdbi0+H+sgD8b9jq6g+boffgF3m3h4VwBUvEu0jwHYOMq86uCzP?=
 =?us-ascii?Q?wDYG/epTcXStoDjPsdu4DfnSqzFAf7D0xjSoF55mmAW4iIlQrXGruAd6oxa6?=
 =?us-ascii?Q?1PEKXnC8fQslpwkxKQkhl5Un5dwnGTW2rhGz4BNI8YPztp83bg21FxP15fcQ?=
 =?us-ascii?Q?ro+ixZXzIw/YUJ7nkhnPMPOt/Oba2IpJei7cjf5zIrpAILBvWTfk+MTv5zcw?=
 =?us-ascii?Q?CCItjFr7vuCBo157Cw6520oxGu/1g2tgnMc6RZ8zoeMGJF/lnM6/QJWlCX23?=
 =?us-ascii?Q?TqkzQM4DzuUqnNyQYFWMdHBj2gNxGnM1Ch0COWRVcJrc4LV9Y7+BgCEH3i/D?=
 =?us-ascii?Q?+IXyB8RE5uOw4aXyYXneu5C34eq49f/cgoNbR7oucXMwIOVV9cwiY2VziHSG?=
 =?us-ascii?Q?YyChHCy8bLrURef3DiyWXyY272HPdLUxZ6qN0qAId/f2rHddQtUakS8hWCws?=
 =?us-ascii?Q?Zy5WT4FBKHshkIylgKobDlDDoatJEdW0LER7kX32RR1UVJMHxBE2hhNi0i+Z?=
 =?us-ascii?Q?RhNn2kp772tMIFH4DkbyTO9+5hp5h0F7mlrRXTK5z9LVI7CsOnGCKGpWK+05?=
 =?us-ascii?Q?2/CYjXBMagPaAam9AJYYiXDOmhGdLfPJKsMkGkd8wEMIQKuWojCRe+Ok+ALt?=
 =?us-ascii?Q?N/ssbT3KQ2hknIK76/JBMExje1LytwTti/OfrgjitFOl3ZcIdR5Zi0+rDcEV?=
 =?us-ascii?Q?guufpI/i/prBjMyYsjNOxm5sAVJsI91vC5ETNKKy+47WDxpeEzuRitbvutGn?=
 =?us-ascii?Q?Xk3rDjSSzO2+MtIhuG/GKHIIVRaWPPimC7oKCBLpiK0u4r3UfPA3E6MNDAP7?=
 =?us-ascii?Q?PdZUzidIo4bAIqOgeQmO6m2sK7vTJpYL/X8ia0ZXyc4tfXaDZ36czQnfK9dV?=
 =?us-ascii?Q?+sypSZBRjYLfVCsYMeMxCjZZJoRNYIiVVP5M3QVEk2QeSdf9q1FIG9mV0boQ?=
 =?us-ascii?Q?qu/Nrl9nAhJbRd5Yz7oB5cw2mjk9+rKv74h1XMqtdgksPDEWHOW/No8UcYsS?=
 =?us-ascii?Q?YjX7TY//YZHEpGZyngssB8HZ5U2XCRrFeNuy67ZAtb/+PSv2txpdrkVcjLit?=
 =?us-ascii?Q?0Jn6tr4VyaCBv4ztMIHGUVawP4NT1JAbesD2Ij1Do/8XQk1oQljp08vI8yjK?=
 =?us-ascii?Q?9aD0x/OtFpg+dMz9bTxv1VttugXkEoXV3lvQkGrK0UgduzrBxceq7SgKoSb/?=
 =?us-ascii?Q?KAV7SpiTM1RdpvQPO16w/bG8PyNfrPOP0ts1hhFjx0Iv5TMPhBI8nplAFxJC?=
 =?us-ascii?Q?u8+2rEnJsFtqEIr4cFIKi13r3L16QkI7FyS1Ocd5Us5TUH/TMwDVrpZM9nLb?=
 =?us-ascii?Q?b31N8WhWN/DApTrRk8ZGKt6HxQeLJxaKDmvjfmxlkKQ10HMCw9u+iEttcGbZ?=
 =?us-ascii?Q?Q51me4xNvh5V9jGxzpZw9WjTjrEnPZ4k5LHiOlWZzm2LOxAo54ouHKEWDGFB?=
 =?us-ascii?Q?vb/CfZCn26ooTOhLxQ1RxY9BoBWKISwu7+5xqfCNYmluf8uIHYisy6VTH0RR?=
 =?us-ascii?Q?Z88vLaXMA0Cb+b9hX9hI9+hEcshVrNiPqmLhtG659Tu8vsqSAanQj6JXFr/9?=
 =?us-ascii?Q?Hs9BxbXRAwhEZFyy+qDZTGvz5Q20ItGdkQNPyPfM0yfHYtvLHozhLPoRe36c?=
 =?us-ascii?Q?5w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: faa054fa-6543-4b57-c3ac-08db309a4224
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2023 21:12:09.7283 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t7JC7WX/1w1jk5PWHYPj06qTsp0WUKBFIteQzUWGajFfHNOj8TlCgijWXsUG0kp6RIpQWHo3KnesFPw+olN1V306ske+oV+UwuAHnolIYSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5881
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add Wa_22015279794
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

On Wed, Mar 29, 2023 at 05:24:51PM -0300, Gustavo Sousa wrote:
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> Wa_22015279794 applies to MTL P from stepping A0 to B0 (exclusive).
> 
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 6 ++++++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>  2 files changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 1ec855813632..35a4cfac2d20 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1156,7 +1156,13 @@
>  #define   ENABLE_EU_COUNT_FOR_TDL_FLUSH		REG_BIT(10)
>  #define   DISABLE_ECC				REG_BIT(5)
>  #define   FLOAT_BLEND_OPTIMIZATION_ENABLE	REG_BIT(4)
> +/*
> + * We have both ENABLE and DISABLE defines below using the same bit because the
> + * meaning depends on the target platform. There are no platform prefix for them
> + * because different steppings of DG2 pick one or the other semantics.
> + */
>  #define   ENABLE_PREFETCH_INTO_IC		REG_BIT(3)
> +#define   DISABLE_PREFETCH_INTO_IC		REG_BIT(3)
>  
>  #define EU_PERF_CNTL0				PERF_REG(0xe458)
>  #define EU_PERF_CNTL4				PERF_REG(0xe45c)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index cafdf66d9562..29d09ddfc8a9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2979,6 +2979,11 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
>  				 MTL_DISABLE_SAMPLER_SC_OOO);
>  
> +	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +		/* Wa_22015279794 */
> +		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> +				 DISABLE_PREFETCH_INTO_IC);
> +
>  	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>  	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>  	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> -- 
> 2.40.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
