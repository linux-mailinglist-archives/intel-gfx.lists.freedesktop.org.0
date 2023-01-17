Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D213966E597
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 19:06:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3AA10E1A8;
	Tue, 17 Jan 2023 18:06:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A09D10E59E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 18:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673978788; x=1705514788;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rSUtEY4rlgMCAEpCCQCoEys0qOqUcRpubgG1odLfRMM=;
 b=B1JCo4RLCXZc/mX9Dm6kFEuKSzH0T4/VCydnAS6YkQqfAoEmcbSm5Ult
 EFlKRhpdOR+s+viaFrHd0drcjRyS/h/gDsaGszdWIzgo5069h1NTi6+7c
 Ofy4t3qUPWeMoaMC5h/MUIHhWn98KW7WEOce775kBBX3tLrt+gsPuOViD
 /mzeDPP1ZcA8y8u3eSQPk4DDWP16fCZV9beUbyEW4+JpvF1+6+oymnk2j
 jHqS9GemiyGIIxAJ2swVauzPburY8cOyv+fIoXj10QyAR3kIoHoLYMmdv
 ByCjA2ZKz4EyUK1npkDfiETIdCnSwXSwzraSMwudulZKZgCtywHhNSV2Z Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="308335832"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="308335832"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 10:06:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="904745891"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="904745891"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jan 2023 10:06:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 17 Jan 2023 10:06:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 17 Jan 2023 10:06:25 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 17 Jan 2023 10:06:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V054o6sHJodYcVz+GHQh+FHEgZoQvBR6wHJ6XjnobaPHfENHEiS8i7hmg/FrBPnawawxh76aIX7jBoLiu1S08P5QU212T3cWxbBioGK7LekdSTlmkOU/D7zYjz1Z9mSsE/NO3CV/idpXyuCLEOfjCoW/BZy8F+y1PqE2f6M0xtvSiT3/fzda3gZegUrylZMgV62WAwTmbAroXJ5zDG4zQ+pXdfwtyIQ7Oi8Vl/Poz2fSt+yhJMfi9YID4JzIdyuDs9tEVLtfahoqFxKOj3RCVp8lacldKYRFx5u3uYzCWmZ0lJvxx68y9aZxGOWKNfv7UyLD7QoKi7nhDRen7orB5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+rJSUv+9IkS0sHWcI/J1/Q71Kpv8O9mIxN1qJ7JawOk=;
 b=FmXh0/aVX2aS3FpvcltW65+oaJ1WEcPqqh4pwBAEMUQM3JjAlizU5+fdnSMUC2+zj7Se8PpdXgyZFDdGYwI91zx+QGmnVub0HJT0zxTrttPDQ4ATC2A5G8NV2O3aH5UsNw+cIsfDTnh4s/idGTrsvEVp94fdsrvVH1amoqk046EgmWxLkc1apiH1y8N6o8kA+Wt5yfLDMW1axSMCWAxkfdKY/A2hX/U77NrHcxQ7jGH0Fl7F+wGIbKejOeuGB0CbPMER0fR2gRBLNpHISPmraDmP9ruYh9QjSlpmoFjKQTQ5L1WLIzZzubOtLkHAlSbulgoXxgm68jvA91mT8iYnsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA1PR11MB7344.namprd11.prod.outlook.com (2603:10b6:208:423::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Tue, 17 Jan
 2023 18:06:21 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.5986.018; Tue, 17 Jan 2023
 18:06:21 +0000
Date: Tue, 17 Jan 2023 13:06:17 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y8bjmTlRuEqtVH3p@intel.com>
References: <20230113011947.9631-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230113011947.9631-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: BY5PR03CA0009.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::19) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA1PR11MB7344:EE_
X-MS-Office365-Filtering-Correlation-Id: 36a84999-b8ab-485f-f922-08daf8b589b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: You+S60tfSdwU4VXFgcuD8n0rvaOA5fhLd38ETKzhq2P7Z7gUT8Tb6X/BNYYajqD0znNweukr3qm4G95XbyEtjn8Du5qk3OONzxAzg50tvF1Cu7yznDyQx8360Inrmnr002kIJKEFKWGquGh9/e4p+u5OlQKP0oTG5JKTb1f9HaPeCMFe4rQWd7gDNn8EfQJ1IM0IE9lSLvtONt+sIsEg+5CNFoPk7G/sNBmx6aMDNfc4b+0lRYpkxylsgy1MPv/FNebB71MugpdziokE/OOcRmWFXu9oJYKX3M0RuSweSg4XVp0/kl0Oyt6t2K0P6ghejl1e4GZAkoJX9m1aRrzWdudPGzCVpVQ7AlbwrZWpgXPtOyJepaW32fMEzi3KXMCJ0qxwA+C8OedkEUx9ggnzk5BWsGbFuixDq24CIvKuq8vYT3xV0eKYguR2iWyxGHvVdmlORL6NAEoN3jf/jWsjIZqZApxHjQhJ9/JCVCFtbrUjpZYG9kKHTB1OigA7ophZe5Ffg2wFLZCZu6ZmrXuBXfwOhHa33Ny+lYSdPny+3rkKYZzJDqqjlTWr7mFXl6GLqKeFibSxYrFz1+1kmE8CagywL0StfGrrbz+LVUDGGYxzPEz2zCqsJl82IMerj6OniToesn0ValVuDvF7/ldHg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199015)(36756003)(41300700001)(66556008)(66946007)(8676002)(66476007)(4326008)(37006003)(316002)(2616005)(6636002)(86362001)(38100700002)(82960400001)(5660300002)(6862004)(8936002)(83380400001)(44832011)(6666004)(6512007)(26005)(478600001)(186003)(2906002)(6486002)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1VWiM/tVfpuN2qfpwouDA2w9+WTFJvosDTv0fWlyh/PCRs0NJV3EfKfTb3WJ?=
 =?us-ascii?Q?MSf7r29nxM08PHA6oY6//EuxshsS4Y0LTmCJL7J2WbJ97gaW27t1ggmX1FSF?=
 =?us-ascii?Q?23bfgnoc0Fb8P+Bchv78kYH5qI8Sr5fbeamZwxj4T+MZWviOe8DviapvWlpq?=
 =?us-ascii?Q?B/nNuYplaWBqdGPqYXuVFWHrD+vusQE/T5pH4fwckDOYHJ+pUXQvbV9ZZgdJ?=
 =?us-ascii?Q?b9+5XxIPUgSjKE8zcjJ5oBY6HIoSzCblALPRnbwrsbNXD5PGITj2JQUmHqMh?=
 =?us-ascii?Q?n42Lj6+VfBQjTateTm7CYHaUzRvFl4Ka+0PzxsYcSDxDntHQ6+5ZbdC2+DnP?=
 =?us-ascii?Q?pU+6SiSQLs4zquLU5HwhVDX+xotnLHDSRTw7yc2mApeJHk1m660TLtd5wTMA?=
 =?us-ascii?Q?fT4GJ5sjeix1xF5GCND3e/voTOs9hVnjLhCECmxFiJDG7LUmvoyPZBPCTzTb?=
 =?us-ascii?Q?Zd46KO+3M6dIgctInrvEEjam3GhVvNQu72acCQi3/2cgpd3+zdAFsrvKWoYa?=
 =?us-ascii?Q?Xn7qE5zl3ths6cuWA0aC8sQw/jrIROROz/TeS+sg4pbuR1v24BytZQSJLFYJ?=
 =?us-ascii?Q?7Cz5uSha8rDo4rl29dl7dnPbounDyehF4bMf1WmRr0mx9gG2dZYDH7d99l0X?=
 =?us-ascii?Q?Pl0gzWtVjBzL1t0pV6xbrSTE3xIakGlMuNLnQ5h6qexjsupznW38geOH12m0?=
 =?us-ascii?Q?ULQifz5eqMqo9YLcvQg+gbeIfPZvPK/g8hGUNcT8F0cOk1znOU5w8irWWcSD?=
 =?us-ascii?Q?0+mXHSrvNVibZAIUKjve2AvHWFyxfRGT5V7Wt1bo2ZN8BmtogkRcz16SKdTT?=
 =?us-ascii?Q?g8tIUsZOuK1gM+PUkdUSMv39OTedy1nzyNSYjf1URW6BOEJTnXy30NxkH4GR?=
 =?us-ascii?Q?/GBzSv6UcBmfxZ9Qg0Xh4pXDbAdxmvHm66cCudj4jkjYJcSDzZBR58sa9yr5?=
 =?us-ascii?Q?NpYReCU66c2i3lema2uHFvdvep4lBn1WnlxQitTTR1Lab54REPRXh4EbiHHW?=
 =?us-ascii?Q?9k+TthGb4/eStf+Uw05NlczUQO3YUPuHgkU9fJhzan6rKrqYvVrGlrqG2z+O?=
 =?us-ascii?Q?kGqDylr05loRmFdVF1A5g+hiJD0cdGdJkLsi2gPF63qgMPT4XQ+eoSLdcpR2?=
 =?us-ascii?Q?VZQ9pT4DYJTv4Fp0/cyKOoYdpiM96DNWTzyfGVCnZTepiGAfeidyHiNUFeuR?=
 =?us-ascii?Q?TAOXMBYE6r7rmjcrcabFQ9vxQx8bp44esUD09b+ig70f1AnEuJCM98YupqIu?=
 =?us-ascii?Q?wVpL5fSQMSnS3rCFwib6wnWvr02Gd9EfrPlLWVYprTHHdXuY9JCVVcqui/Xn?=
 =?us-ascii?Q?h6B76e3ZzlGFFC+a8NNDPFjHDzMCJ9OwPH/3XErrFcr5auOY7oNDfixl/th3?=
 =?us-ascii?Q?ks+pGUrYhSpDSdk+P4nFYxNbjJp3ZvvWD5QwFjfWgUQLeUUFe54PDfeyF+CU?=
 =?us-ascii?Q?fS4vPG/9M2p2XhVBdGia5GvEfN0UiDxyewgrPEQXJ1B0v+z12CLFCpGmm8Ue?=
 =?us-ascii?Q?6getA3DXYgX3Kv71j2fMDuq2b039NX3MxjMNwjbv1TIeDlRP7wqicQOdf0bf?=
 =?us-ascii?Q?H5a3Qo+OMYMfB3ARtiZedQ4eb4KYJx0SwWSa/sToMdzwtKiCjmPwwyLUuJLO?=
 =?us-ascii?Q?zw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36a84999-b8ab-485f-f922-08daf8b589b4
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 18:06:21.4934 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: diJh/OHKLaN9eOI5YG4zAeOawuU62FLvV8P6SDgW/PnmHJOtuASrEWhrsh91SNEsR5jyaXSGO1r42xyij+3NsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7344
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Move LSC_CHICKEN_BIT*
 workarounds to correct function
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

On Thu, Jan 12, 2023 at 10:19:47PM -0300, Gustavo Sousa wrote:
> That register doesn't belong to a specific engine, so the proper
> placement for workarounds programming it should be
> general_render_compute_wa_init().


Looking to the surrounds it seems like we have more registers
that are not per engine specific being touched there.

So, a few questions came to my mind:
- do we need to a bigger clean up and move other cases as well?
- do we need to review one by one and see if the bug is really
for all the engines or affect one specific engine hence the
function was initially placed here?
- do we have any clean documentation on how to split things
around and when or where to place things here or there?

> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 65 ++++++++++++---------
>  1 file changed, 36 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 6dacd0dc5c2c..bd40b8c93d24 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2325,10 +2325,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		/* Wa_1509727124 */
>  		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
>  				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
> -
> -		/* Wa_22013037850 */
> -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> -				DISABLE_128B_EVICTION_COMMAND_UDW);
>  	}
>  
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> @@ -2357,21 +2353,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  				 GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX);
>  	}
>  
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
> -	    IS_DG2_G11(i915)) {
> -		/*
> -		 * Wa_22012826095:dg2
> -		 * Wa_22013059131:dg2
> -		 */
> -		wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
> -				     MAXREQS_PER_BANK,
> -				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
> -
> -		/* Wa_22013059131:dg2 */
> -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> -				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
> -	}
> -
>  	/* Wa_1308578152:dg2_g10 when first gslice is fused off */
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) &&
>  	    needs_wa_1308578152(engine)) {
> @@ -2396,16 +2377,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		 */
>  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
>  				 MDQ_ARBITRATION_MODE | UGM_BACKUP_MODE);
> -
> -		/*
> -		 * Wa_14010918519:dg2_g10
> -		 *
> -		 * LSC_CHICKEN_BIT_0 always reads back as 0 is this stepping,
> -		 * so ignoring verification.
> -		 */
> -		wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
> -			   FORCE_SLM_FENCE_SCOPE_TO_TILE | FORCE_UGM_FENCE_SCOPE_TO_TILE,
> -			   0, false);
>  	}
>  
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
> @@ -2990,6 +2961,15 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  
>  	add_render_compute_tuning_settings(i915, wal);
>  
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> +	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> +		/* Wa_22013037850 */
> +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> +				DISABLE_128B_EVICTION_COMMAND_UDW);
> +	}
> +
>  	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>  	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>  	    IS_PONTEVECCHIO(i915) ||
> @@ -3011,6 +2991,33 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
>  	}
>  
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
> +	    IS_DG2_G11(i915)) {
> +		/*
> +		 * Wa_22012826095:dg2
> +		 * Wa_22013059131:dg2
> +		 */
> +		wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
> +				     MAXREQS_PER_BANK,
> +				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
> +
> +		/* Wa_22013059131:dg2 */
> +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> +				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
> +	}
> +
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
> +		/*
> +		 * Wa_14010918519:dg2_g10
> +		 *
> +		 * LSC_CHICKEN_BIT_0 always reads back as 0 is this stepping,
> +		 * so ignoring verification.
> +		 */
> +		wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
> +			   FORCE_SLM_FENCE_SCOPE_TO_TILE | FORCE_UGM_FENCE_SCOPE_TO_TILE,
> +			   0, false);
> +	}
> +
>  	if (IS_PONTEVECCHIO(i915)) {
>  		/* Wa_16016694945 */
>  		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
> -- 
> 2.39.0
> 
