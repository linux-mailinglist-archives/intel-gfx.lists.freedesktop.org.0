Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 415DB674608
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 23:31:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F2F910E289;
	Thu, 19 Jan 2023 22:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6960310E27D
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jan 2023 22:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674167468; x=1705703468;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=efw9UP6KURrscG35fSgOQ+w9IIoHw+b5Jm6N3pMk4cU=;
 b=ewhu7Y1S0qcMsgoBRrxw94M4/RIbk/Ze0iZk1vgvmzvUhcGNPhiUmVJp
 m6zzgTZxnRw5UPWqzvaC/JSuK0Ljk03jSCYicXeL8BQU1W/4bzUyoXfpc
 LdtlCG4fzfZAEyI149V5PLqApPyaJCLRClbNWmB0eWSbcYFOmMtO7a6TE
 XaqOVv9qGxdQZP0f5GZ+nFZhwCEB8mwmzjRbHmnRkEb3z0OXuPelkxO6M
 Uqg8dk82VKCSKTrbdPPkdxCOTKPMNN+C8TR62H/HRjgc0zvyQDNEK5ftU
 ICkR5htY22OrBf94LcNx0uy0ghBJQFVOwz/sUquRILXNYVuKdg5I+l9nx w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="326724958"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="326724958"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 14:24:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="610228545"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="610228545"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 19 Jan 2023 14:24:43 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 14:24:43 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 14:24:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 14:24:42 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 14:24:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RZqJLUMvb4mTIL/w6LV5JzT90JDNASIijTcpajfDAjpPzHLORQ/hHN0AeRJBFWL7d1APe16Z1vGpaFmtCfCS3PxGGGqGm5d4v6pRxM49Cs7G6vnBKuiIEwZYAge1P7lds8Nk4wF4yrNoLrziWizow9NKeOE3HezS2xt8XMRREJubAM0Edv6Sb5gx9wijb/9iiDUOa2GBS2iE7i4nN9Ge1D69pFMildxLIMma/wB0JPyRm73vka6fn4DMVUa/1fEiw9xpo9bnkENl4im1IBR9sd1il/asiAhBg01JQVQhLyIwSwokvDCjhRwRcFzAjX+/xpmdMaooaaJX66duzgmgIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vofjPKm+TKgVg33SfR+0TZL15KmCiXe+VlCRhuIi3Es=;
 b=Q7YpZC1a3QZ5jD4FBSbcLdyVqodRURviLc4BOIgBx+syb+uxjqsStMakGhNd0GQW+NhrpZgkdyGfeL+dzjSKjRmWXn2IgJxyhxP4VbzeginwLUT99xv78nTAi7UtV/Hi08kDquYgD+3A06CUNZtUgOMD89lyDGz1SXrJAhLl3IvVztxIZIDCL6KOor8t4AuIl626sRYXYmfii5SbON5CBoLdT2MwS4g+RZDWM/EKg6zc4RZHx7cv98pLJTJtR6Z4aQQfaXDo4McBfzw/a7WND3CyFiu4NECpGBVFzZjW0d1qK5JzZw+HMU5gsfxPbl7Mf/KJ6gKf6ytHjpCB7ZDiXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH8PR11MB7093.namprd11.prod.outlook.com (2603:10b6:510:217::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Thu, 19 Jan
 2023 22:24:36 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.6002.013; Thu, 19 Jan 2023
 22:24:36 +0000
Date: Thu, 19 Jan 2023 19:24:29 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20230119222429.exavqg6mjmj5aeqt@gjsousa-mobl2>
References: <20230118155249.41551-1-gustavo.sousa@intel.com>
 <20230118155249.41551-3-gustavo.sousa@intel.com>
 <Y8m8tYS9Oma09+7i@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y8m8tYS9Oma09+7i@intel.com>
X-ClientProxiedBy: SJ0PR03CA0221.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::16) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH8PR11MB7093:EE_
X-MS-Office365-Filtering-Correlation-Id: f7c0be27-c71a-466c-d17d-08dafa6bf229
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EUVQ7/FN8i75lIo7X8E1Cg3NDd0Owj9/sGM81kUoaaLKspnCO7GX/BVG04yFslvitBMAXRLuvzH7iJirupJTiFXqIqV1BKMwI8Vt49Vgg81BCrjnxyzvGUl7pg/tDueuZLKzBIzW5/Fu9OJZ4CLGJqglQA+BI7KCiHhW8tu2+a6HsUPNM0AibEAMPHZluWHcyHgNLDqafAFAoND2mGDVwOTbWqeQwBB8y4Fzu8595H0lEiTGyv1wl6dvt59q1fmQw2C7H7XwbVbkmscFF5vTl2jWAxrP+5xWfw9flpxGEfhNxlmzby8BGUm8BmWdVsekBAxyo2BQoQAISgU0lto4+MnOSYtyJcNFRCWO6OKYEU5hx7vlqmOQquUqwWL17GQQOuB0cKz1g1qZUlt3Ghpzyggxx9FRT+WbcansU864Qfl1CbM8NGPBLCLjdunJ/rpbCtMo/xtcxOE1Ug9UiDrdd0/af/drbxMZApXokcwOG1O7we27IVVAG3Iephip1yg0JPOD0GvvFyGDAseQusgPhgTG8YpYutlvHn16jP7qEEeAvHDzDngrch7XjVxNUfYMrYv0CaaiWlueVa3wq/XUN+xJhTKF56bQGGtI80OA5f/CdNcOkvtJ/eTkGxnMOzp5Y9AIiSRFIiz3U7BDl8YRww==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(396003)(39860400002)(136003)(346002)(366004)(451199015)(6666004)(107886003)(66946007)(186003)(6506007)(66476007)(66556008)(478600001)(6512007)(9686003)(26005)(6486002)(41300700001)(4326008)(44832011)(6862004)(5660300002)(8936002)(2906002)(82960400001)(8676002)(83380400001)(38100700002)(33716001)(1076003)(86362001)(54906003)(6636002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tHq01iJRIy40E5iV6UQhZzVuzDA0s92RxGtOpiuyDHqBa+0LVq9gXF7bezvI?=
 =?us-ascii?Q?dygfTyn7seVlm02XRJS/KyjFRB1xxEj2ae1/IMOGnnzaeuExKqYG9ZMbonAR?=
 =?us-ascii?Q?ql0RzjIAY4wOzVOQn43NSsDruh0KgB6vsmLaATWJ3h73NlrrBj4pFmWcYwpf?=
 =?us-ascii?Q?R6er4pW9VD7egeBLjGLGY7QhT/Fu8YZeIUtxYu3Nla/8DexJymwZn9pX/Ydn?=
 =?us-ascii?Q?ujajIXVck3ye0hV5YpP3jVhmUAa5wE7uBwKREwiHGx/MIWnM+FzyZZc6lXU3?=
 =?us-ascii?Q?RKMUz5Io7U6rw+7cBVfvfj9G3kxJyLPQP6Y2Jl5jcubEKcjLxUZuSN7HDnPj?=
 =?us-ascii?Q?Sz0Y1gwaVlAEhNZ8XPh2trEvbpNVf2VxWmsjlQ5L8O9ZdADMSE870O0yGTfq?=
 =?us-ascii?Q?u03v3ERmEHexT8eii2MLwUmQ4R8D6Gzl6ptqtCRZ9MnLzq1wqJABPu1smswq?=
 =?us-ascii?Q?RshlvyprvDcUpw6ef2UVHDMcFnlNNenT5m+DymYM9BPwNmoySvusxi75VXy5?=
 =?us-ascii?Q?Bpho61D7//Nf8l9hjC6sMb0lK+dwBf+UG74/DW/LdpzVS+NxUPIGynlbFTAj?=
 =?us-ascii?Q?TuusNHkv3Lp776qhFTGOo8hxEZzK4vrI2ksDpe/u5qhDdsBw2F4zd2n7XYJt?=
 =?us-ascii?Q?lNoy9ANcTDBBAH7BrQtUWqcSklBuM1aPs1L+AI8RySOHJf/wwLSFkz0B3xfe?=
 =?us-ascii?Q?Pb8iPkVqI96/lfYAeNUdyQcxkQhacxkZsLMQ7S1mRoqfj5YSUCjq8M4eG3Fi?=
 =?us-ascii?Q?DwfMOG6GPG+WM3FljQ1j5SdyDQm5qoWD3EmjA/UVkn9VqRdMo1RQJh+537KD?=
 =?us-ascii?Q?yFwUIHqoloo6bcUaqtjSrlAbK3liIZ1L3NLkL4EEf/iPS5+OCvv1/Pjwpb6R?=
 =?us-ascii?Q?Z9Ci4b7PSisVGF6Yg5zvtsZziz5JrZ7Ir4AiANV7zA5hTLUxT5C2xss94lKf?=
 =?us-ascii?Q?UxfbgggqP7H+7gzPtytVb0kdb4jrHUbfxdtsjhnZ7ADnXeFL5C5jceaElUEO?=
 =?us-ascii?Q?yXA8FO0bxBsMSehM0sXwkm4xaRUPLa6926ScsXvr8SnGEoqJ7OFYlDcyrHcO?=
 =?us-ascii?Q?cP+Zlws4XCrZR4cshr+mCBZUp7ShX9VgwsGPZiPEKodcL2iwqUZpzXsOIO+i?=
 =?us-ascii?Q?G/t/9yP6UEjuhv9Q3xMBNLU9yPWvPh5cUfcEeVbuAnuLF8PmBUAwcBJ31zpj?=
 =?us-ascii?Q?pYGekrL2aTsI9BxfnzNS7t3Th/wfra94LSnQ9lufjp2bzuAHeklta5ndDwvy?=
 =?us-ascii?Q?01LrR/EHiIdWCURPNlf38mqUr1oTdeqDjwoCz6DPJdvRgMxZtEV3NcsNxwTd?=
 =?us-ascii?Q?pyqxmTPMMaKGvz/6YkTPYm0UyI6xr3/IWy11yY5Npf9mTR8fubBaNpANfzR4?=
 =?us-ascii?Q?OhpHFLqjEGPlRboh+DUET7+AmdBrtkjxb+QqiicFuxcgSyTKfqvwPXSMdeVC?=
 =?us-ascii?Q?KtRcxbVPyrp3g7r2EQ6nte4pazBf9FupUUZW7hSKaY64xRjf7jN4AmsvY5+a?=
 =?us-ascii?Q?HoDF99OO/cNRXl0eaY+5hyxSUfINEWdX3rlknZOUJViIapNInMhYn/tEiqCI?=
 =?us-ascii?Q?uPDrOVsOzGaCd5AU9pt55+jb7QKnbddlrzJ2shpp/quZt/tCtLsKNY/nGoEz?=
 =?us-ascii?Q?7g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f7c0be27-c71a-466c-d17d-08dafa6bf229
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2023 22:24:36.1055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: snODAkUVDLM5vW8yK7Mn9YsSBjiQ4Mo6xs1Yc3/sLfQrgx0Itr9me+aNnXPno8kYuFnHopQsQBWBxn+BmuIenw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7093
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/gt: Move LSC_CHICKEN_BIT*
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 19, 2023 at 04:57:09PM -0500, Rodrigo Vivi wrote:
> On Wed, Jan 18, 2023 at 12:52:49PM -0300, Gustavo Sousa wrote:
> > That register doesn't belong to a specific engine, so the proper
> > placement for workarounds programming it should be
> > general_render_compute_wa_init().
> > 
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for the review, Rodrigo!

Last time I talked with the team, Lucas suspected there could be a reason why
the workarounds were in their current places. I'll include him and Matt Roper
here, since they had assigned themselves to check this.

I think we should wait for their input before applying this patch.

> 
> > ---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 65 ++++++++++++---------
> >  1 file changed, 36 insertions(+), 29 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index ef6065ce8267..918a271447e2 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -2341,10 +2341,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  		/* Wa_1509727124 */
> >  		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> >  				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
> > -
> > -		/* Wa_22013037850 */
> > -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> > -				DISABLE_128B_EVICTION_COMMAND_UDW);
> >  	}
> >  
> >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > @@ -2373,21 +2369,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  				 GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX);
> >  	}
> >  
> > -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
> > -	    IS_DG2_G11(i915)) {
> > -		/*
> > -		 * Wa_22012826095:dg2
> > -		 * Wa_22013059131:dg2
> > -		 */
> > -		wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
> > -				     MAXREQS_PER_BANK,
> > -				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
> > -
> > -		/* Wa_22013059131:dg2 */
> > -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> > -				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
> > -	}
> > -
> >  	/* Wa_1308578152:dg2_g10 when first gslice is fused off */
> >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) &&
> >  	    needs_wa_1308578152(engine)) {
> > @@ -2412,16 +2393,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  		 */
> >  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
> >  				 MDQ_ARBITRATION_MODE | UGM_BACKUP_MODE);
> > -
> > -		/*
> > -		 * Wa_14010918519:dg2_g10
> > -		 *
> > -		 * LSC_CHICKEN_BIT_0 always reads back as 0 is this stepping,
> > -		 * so ignoring verification.
> > -		 */
> > -		wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
> > -			   FORCE_SLM_FENCE_SCOPE_TO_TILE | FORCE_UGM_FENCE_SCOPE_TO_TILE,
> > -			   0, false);
> >  	}
> >  
> >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
> > @@ -3006,6 +2977,15 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >  
> >  	add_render_compute_tuning_settings(i915, wal);
> >  
> > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > +	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> > +		/* Wa_22013037850 */
> > +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> > +				DISABLE_128B_EVICTION_COMMAND_UDW);
> > +	}
> > +
> >  	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> >  	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> >  	    IS_PONTEVECCHIO(i915) ||
> > @@ -3027,6 +3007,33 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >  		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
> >  	}
> >  
> > +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
> > +	    IS_DG2_G11(i915)) {
> > +		/*
> > +		 * Wa_22012826095:dg2
> > +		 * Wa_22013059131:dg2
> > +		 */
> > +		wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
> > +				     MAXREQS_PER_BANK,
> > +				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
> > +
> > +		/* Wa_22013059131:dg2 */
> > +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> > +				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
> > +	}
> > +
> > +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
> > +		/*
> > +		 * Wa_14010918519:dg2_g10
> > +		 *
> > +		 * LSC_CHICKEN_BIT_0 always reads back as 0 is this stepping,
> > +		 * so ignoring verification.
> > +		 */
> > +		wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
> > +			   FORCE_SLM_FENCE_SCOPE_TO_TILE | FORCE_UGM_FENCE_SCOPE_TO_TILE,
> > +			   0, false);
> > +	}
> > +
> >  	if (IS_PONTEVECCHIO(i915)) {
> >  		/* Wa_16016694945 */
> >  		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
> > -- 
> > 2.39.0
> > 
