Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79314797EA3
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 00:14:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19B4110E81E;
	Thu,  7 Sep 2023 22:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 032E610E81E;
 Thu,  7 Sep 2023 22:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694124844; x=1725660844;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aRQCPQAJw7G+T0pes+tlOwuL7XE848cAciP0HVQu0QQ=;
 b=IoO9Yvx8lr5NrHt9ArUjout1U68PoFWDRmF1+5aVqfvn9dt6P11vOO6S
 59ZtdqzbxdVO4rPCCy2cWMRqNYqaW8vQarhS3F9rgdNdWHnJyosdUFrsp
 POq3fRNOpBJ3iMjZqqLBlBc0QfX0TaqaZiRrw8Ja3jzfbs5dIIevhseb1
 4QzJLd7MB/8nNtD8IwW6t/T6lVote3aQFxqCgqy3Oq1aFsFc53Uys1E2Q
 IsSkCi1F3dPAVtt0AEJhIu3xoBvU5rOfTsf13iRxKof6QuD3kpw7+pQqX
 0wzvmaduL13xvlzdddqfA03CH5Iw4+jIdXbODzIfb38sNZkRgSpBFdUOn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="367753481"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="367753481"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 15:14:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="865815728"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="865815728"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 15:14:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 15:14:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 15:14:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 15:14:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 15:14:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ISNqbmH53Vo+fEF8DWwnPsWHxdBlxNrtMNM8alVR1sqJ13/X3X1EL5PxtAmJZD+YJfxM02EFDN/MRxaaUA1zxBOdhiLCZHVzOAvs1QjGU2DMOtzBQPJtVSrtNk/qimBj3J51RXBe7lNerkqmwrh81b7CbJn/SRvWVD5bHdOTJByqGubh/oIpk7auy8kWvG5FJpG3QkA+cDVubACJM9aEUPzL6KgIqQzLumz692Y3lxcL3ennsX8bxUYdq9g32FnzuUU1kuMDdGGwszmPlmP+ncgJNhvjeb7bwB/yXsWsAVga0kd3DKYJFqhSP4iqHjRrcwLV1a7PrOwIWlHFvHTNYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wv9NRtLmwTFTctND0kRkin7Tk6PzHfhm9FT0bxmVw64=;
 b=IWcgEKuRq74pmSWnuFJD6+v0p0W93kyf2PCeb5So2V01EK0xElbDSaaS7dks0/DXH9P09Pz53mPOnsjZisI5VZTJ8g0XVjTgxQpM4xtsGLLYydb0Wfl0+6raB11Keuu6YfGBlZa8kq8bInWHVrbm6fjgGI6GjfmnPfI38wkq8klm5pNehPeWPLrLZWzqFqH8roWnFm2uS/GWz0ogQLCfNh7fD/4QiXHmwYEMTnGvqxw+EmmlV6ssFiIQ8zpJioXlKE3jD8Oqjgg1cuUvyjOfDdHNgTancaNNAIKhfGrFvgG6t5FgKaVvzcCtMRQCT2x88hDiArisDCUOyttIYNhlVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ2PR11MB7620.namprd11.prod.outlook.com (2603:10b6:a03:4d1::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.34; Thu, 7 Sep 2023 22:14:00 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 22:14:00 +0000
Date: Thu, 7 Sep 2023 15:13:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230907221357.GQ2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-24-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230907153757.2249452-24-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR13CA0135.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::20) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ2PR11MB7620:EE_
X-MS-Office365-Filtering-Correlation-Id: 8da50521-b5b8-49e5-1961-08dbafefbcbd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jt1c6ZSb6jgqiI6g4CA+VTZ2784oCYjq93vDGVW7x8We6RmlQdjVU50/ZsnZ3jHNDKEZgzEYJxceMwEImhxccJI2lqt2PlEH4AiieuskbiijDXCfZr5Xg/I+xHv3r0uHNqZLSnlLecG765eHxemG7e7OnE/8yGmmGHNP1M20oH2a4rODcSjtDMU1HaL7ml8A760Uj5Hfad9b/v+HUkI909ua2SAEO01kqrU3Jyfn2ltBdQWBCgEgZydWCx9HDpRSqDFEH6v1R/0f1kfCYP92+KLMu6t6srCY5T8PxDW8LK+tklb2vzOlyg1UKGiDMprvmgl2JOkzGFxW9bTqrEzNunGId80OKpNSvJyGQDjZ/FUnsGsTDdhqkUPviOtzR7Pw71X9tf05oDVpQRTVPuhpZVCPA1/It4UX0q6esBJ4bTTroG156k5QPuKVfsaHZYGREnHCheMtkqfAMZXSNEff3DCif1zVxpewHoElmhrxbFhAy0TP0PzMIEbRQvW7elvGzS4JbEkEFEE7+pBzu/9qe33SxbaHr/o88PWCbuJVWGsdEaNm4L9tcdddgFTEwEP8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(136003)(39860400002)(376002)(1800799009)(451199024)(186009)(2906002)(66556008)(66476007)(5660300002)(4326008)(66946007)(6636002)(41300700001)(316002)(450100002)(33656002)(6862004)(8676002)(8936002)(86362001)(82960400001)(6666004)(6486002)(38100700002)(6506007)(6512007)(1076003)(26005)(478600001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ii3IOCyb3zfOiR+DQjWHcfRQLHePalXGspukigamyXFfk6jH0n3Y01yu01FE?=
 =?us-ascii?Q?8NCa2e6xv8oXsRYiJ16h2Xvex+2NputN1+Wj5nOZ3FwtnEio+F9Fv841cL5T?=
 =?us-ascii?Q?nDql7sXjdWtpXyV4z1qEvrMvn7eoRq/gVnf2sRBBIGJIJcV9F8OOKU4MWs8c?=
 =?us-ascii?Q?WIzl9OE/cxZqokNM07jUD94Oo69UXg1J99akeLoPxDGZgOI5OFAgWai6+U6N?=
 =?us-ascii?Q?u1FlTe9Zizu2V1HQHJbOB+rDn9ISG8cu8lXO0DcHihYFRLUF3JKQSE4RcK5G?=
 =?us-ascii?Q?6T98HhHBrOp0bZxwpdA0tFSt+uBKIZLk7z3v8aterzoF6ZTXsgA1byWB6vJ+?=
 =?us-ascii?Q?PgiWV19OiMHM//3var+z8nF8mJI6IYEa23P3GvNQdIZp6/qEifWgH0Ksg4HF?=
 =?us-ascii?Q?znPwW5uoV+rbWL73AKDSFvIvSiA+DV6cFDPi94oal5rUZ/WaSeyj/3enk2t3?=
 =?us-ascii?Q?hnML/nqk80lLgWZUin63dVp81xrEXRp68DwoMEpC4S6QTavkDGMZvazcP+z4?=
 =?us-ascii?Q?F29jvfvUop7b7UmO+S5o2BR2/bqE+dKFdBzwUWoqG/Icor20TIZBeAkSi7AA?=
 =?us-ascii?Q?bTOCsrhSXxnt5hmp+AM0KT8tl3gdq0+gsDLU9oV0hAyHfaDQPpDP0YnLUNf2?=
 =?us-ascii?Q?naNe1/+9pyWe7QY3vnIR0hDnorFnkWG8LJPF4kBnAs0+N+8gJqaZstJ2+SH9?=
 =?us-ascii?Q?NGbE5aw+p7pLEE8bhmbZIWHz9yrsfVDzxL9e1O6VE+s6Axm5quo72ouMb7DF?=
 =?us-ascii?Q?m5pwlSYPziNckrbNhqYw6mQZfiLkpBxnjS7NPvz3R3IuQNPGtuvVbTJJ9pH+?=
 =?us-ascii?Q?CM9HiDCN6Y/W31HXslsV5Fg67YVVdcVGXUHnCgIu81nncVTZoVomM1h++dAk?=
 =?us-ascii?Q?0/CPHd6TnEaOiresCWyP/4QlkMqYjfNePRhd9gjARPQOINdsyMrf0kzQQiGm?=
 =?us-ascii?Q?dt9zCLBG++y49X16S4Mn4nL7sUmIGqdQLJ7+DLT43Qof7t+7LulTv+IeqJRA?=
 =?us-ascii?Q?PFdXiSHlQ3ksw3Wxh6v4hPtMAWBMEv+EG+IQsrA+rOk2EGrpTst6lVNkLDQ/?=
 =?us-ascii?Q?skLIf5fWqv/tcejlDjndlNzCdgJyyX7NEpv6bD1I26xuIlPvEowtqvozinGI?=
 =?us-ascii?Q?V/RYPP26KsWVGev4DjH6GSxctdYkk69DP2yVnYKmNntCdZykm/HgvCQs710Z?=
 =?us-ascii?Q?uv5YLzFE9o9jICdJpvp799+DjKD/SHyLNzx6HksWzLBBhrfa9N7WOGcpM+va?=
 =?us-ascii?Q?jhFUHswlcJeMkILAPgJ6GGDcc0LDbysIcdYuLoFoZxAw/OTiev9HE9b4vDHx?=
 =?us-ascii?Q?Uo0ViLJlODfSFta5KgpNecz+siyTaiKyMuTPPNdvdvezs0kI3jlE1sDpdPnF?=
 =?us-ascii?Q?D2VLgGpOp3WybamQ+mBQR/m471Y+QRDWcnLOJOnmZ/h5lvwd82H4Ok+VkosQ?=
 =?us-ascii?Q?AOGPJL8tWKrUe+D9tEyPBRncUDQ8RVQe1loIX5Hqm17xIGw3CEOxl8RhG7U4?=
 =?us-ascii?Q?3337eJa3uEiJPFIWHmRfzixwOW5sqOihdcxUfoHyyX+zkeGaYvJ+aJjFOTNy?=
 =?us-ascii?Q?cpN4zZv84MC21KYcze4liZNZ7fYWegKBh0FDST6vbFlHdKnZ4fANjwXqk3U1?=
 =?us-ascii?Q?2Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8da50521-b5b8-49e5-1961-08dbafefbcbd
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 22:14:00.3105 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pt6oDO7VtocAhK4+AOaYe4g6yhzZcCLKfO05Q11fRWgEQ0x//K0EFTopmuyvxJNlPxBPuZa8FX3c0VQzlK0kKfdeIc/sOJ0eD9+d0+7hmpk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7620
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 23/27] drm/i915/lnl: Start using CDCLK
 through PLL
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 07, 2023 at 08:37:53AM -0700, Lucas De Marchi wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Introduce correspondent definitions and for choosing between CD2X CDCLK
> and PLL CDCLK as a source. All the entries in cdclk table for xe2lpd are
> defined with PLL CDCLK as source, so simply set it.

There should probably be some mention of removing the cdclk value field
as well since it's technically unrelated to the clock source stuff
described above.

With an extra sentence added,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> 
> v2:
>   - Remove unneeded comment and use REG_BIT() (Matt Roper)
>   - Rename CDCLK_SOURCE_SEL_CDCLK_PLL() to MDCLK_SOURCE_SEL_CDCLK_PLL
>     to match spec (Lucas)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 9 +++++++--
>  drivers/gpu/drm/i915/i915_reg.h            | 1 +
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 7307af2a4af5..abe845906c7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1906,8 +1906,7 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  		dg2_cdclk_squash_program(dev_priv, waveform);
>  
>  	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
> -		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
> -		skl_cdclk_decimal(cdclk);
> +		bxt_cdclk_cd2x_pipe(dev_priv, pipe);
>  
>  	/*
>  	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
> @@ -1916,6 +1915,12 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
>  	    cdclk >= 500000)
>  		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
> +
> +	if (DISPLAY_VER(dev_priv) >= 20)
> +		val |= MDCLK_SOURCE_SEL_CDCLK_PLL;
> +	else
> +		val |= skl_cdclk_decimal(cdclk);
> +
>  	intel_de_write(dev_priv, CDCLK_CTL, val);
>  
>  	if (pipe != INVALID_PIPE)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index efcf1461988f..c59eb411cf06 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5884,6 +5884,7 @@ enum skl_power_gate {
>  #define  CDCLK_FREQ_540		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 1)
>  #define  CDCLK_FREQ_337_308		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 2)
>  #define  CDCLK_FREQ_675_617		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 3)
> +#define  MDCLK_SOURCE_SEL_CDCLK_PLL	REG_BIT(25)
>  #define  BXT_CDCLK_CD2X_DIV_SEL_MASK	REG_GENMASK(23, 22)
>  #define  BXT_CDCLK_CD2X_DIV_SEL_1	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 0)
>  #define  BXT_CDCLK_CD2X_DIV_SEL_1_5	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 1)
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
