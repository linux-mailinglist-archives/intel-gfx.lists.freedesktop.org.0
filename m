Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3835664706
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 18:07:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D16C10E0FB;
	Tue, 10 Jan 2023 17:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B86B10E0FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 17:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673370469; x=1704906469;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aA2NOD8yGFPbqF281TsNBhgrfpr9VgbWJLRw/+cPt/Y=;
 b=f90jTKBO4iqRpi4730IwPspOD8Vh1Il4PvTQowPKdcmyScfORZkCldgN
 kNgkx4Gt8D9/8IuUC8Tk3x5ElSlq/m5sTDgzXOwXYdAoTqwZ+VYqW5YWr
 yPTSTHNDsGhmGyrdiVo/vf+TDdemBMl/S8eh/D9h4gv8Q9Or9vcwMsk8g
 tTabV1i5A4+EXzuz5NrcyDzvCMgMvcZP0TiuAk3928jaC96/Enh3sVy5p
 3noBbI0ESz+wDq5nMASXUk6HvSgLNIrn2YR92RhHka7bkTDTtzLUK6ixs
 iIXoeoeuCxcjmq5Zv/TaHtdKRL98TGalLbqOhhqzoqELRxA17gMfE58iP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="303567198"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="303567198"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 09:04:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="687637387"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="687637387"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 10 Jan 2023 09:04:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 10 Jan 2023 09:04:45 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 10 Jan 2023 09:04:45 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 10 Jan 2023 09:04:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UyBv2yCkf2Pld8d8pqN/0BoLN3A9JxMmn/Y+s+0BRPxHtZcksDj9gZtulkaZ7xcuvT+ZYNC6XNrChhB/JTOLuy3k6+K17ZjtMO+1UZNKHFAi7vvt/47Ef0Gc2VmmjkoEKDlV5cvDxtSccJvzS8H3V6NgyMN8hgqZ4pGa3dziUCKpXJkvnVQRAJpwkBK75lCKjrDZ7opxf4CCkHbBeMr/FCqQhGAz6LPyct/FaFN/NUoXDoIZMLpDdGfzMDmzsMqUAmj1YxvgeQGkdIls0K64sk1YnCanVkkehtJ2fyOGpY/d9Sbn/bjitMB74VMkCddlOgP84+ZVQypF+KMhgJIQuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H2mzlYhc5WQhgA543SpsjAGcJWfeveroyejeSHr7Jjg=;
 b=hZzfeaUU5rU276yfmOTf5ZGJjvFItIvZl9i0pcRHgk/udAKuIId231D4wLMAUqIiVKHRbURST5koJvDyb2baLdbu1C7CJPstF8tUe66Xgn4ZwOE+KbT6k7pp1CcldlvBppasokJxd+ycYAU2RbZbfZj2dNVrNTzQrgbrOKCNPscHDZbzscfHlfqI9c/HazE3ZHRwCBcldL5YoJpX9luLD3iw0WZcUcza0OSYvaK4m3xbQveYPCgGYIgLgbdXxcD7tqG9E3An4pUNJWND2XEQbay4U4QmUBTXsctVE/dWL9MAuzldu2ppgZdIbr3qd38PxfiQoJPU0q0cK64AczuyHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 BL3PR11MB6385.namprd11.prod.outlook.com (2603:10b6:208:3b5::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 17:04:42 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.5986.018; Tue, 10 Jan 2023
 17:04:42 +0000
Date: Tue, 10 Jan 2023 09:04:39 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y72ap/Z/c0WTzKJk@mdroper-desk1.amr.corp.intel.com>
References: <20230105133701.19556-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230105133701.19556-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR13CA0078.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::23) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|BL3PR11MB6385:EE_
X-MS-Office365-Filtering-Correlation-Id: cbb42919-beb0-498f-5e6d-08daf32cc41b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /sjf6W0p82EauGEnTdyYU2lFZlQeQtZwiD6Xa3AR5jRCkTG4G4EPOO/V5SZyAKPi97gy9gBJgfPjl4w2ALAIXySBJRS6n0TuIZg5TgGSIxhiGw1WllGeTGJxbbxeCCFa12gc5V8uZ1M9no09cVmwaHc54jZYa75MHYn3G/3cR9kfun9H8vBMAocVLxsUEebMAnnGHOMjjT4KsTYY7Neq9XUplRVCW0PalyuKuCQ053i5dXvCRww4Z2sFSU/7h4hy4ljFzPH3m8+pNnb2lKK237+GSrqRM6dS1dBcG1+fqhPFgP526BI3YvSpIwHt809YLeRBZqS+1Z6Lw+CWqR4+Eb7QbCTacCkmfWmVBZPXwDSgDSzJsY5Cqu278KRS+pWJq6D4se/spWrHx/c4yr5s9DmRkPoQfImUMF165h4iIyprfFfGzoiRwTcdgwMr1Fndg54u1xgcZL5FSc5EzL3gS9BiAlo3sRJMV948kmmjstcJZpKo+dn1bvZBGWTOEUjyKRQvsjON87ieh+SniVZFGQX06jqemjaqiT23vvJVc5xsu4s7zBhjfFyHZQEvNmRn8XQ9xJyXKKf134jct0sj+pbDajdZQzOndST/6AvcG1DQZX2zUTDhDGz3fSKUEYeBgJsaQN0TIr9bBF/G0OBLsw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(39860400002)(366004)(136003)(346002)(451199015)(6506007)(26005)(478600001)(6486002)(186003)(6512007)(66476007)(8676002)(66946007)(6666004)(41300700001)(4326008)(6636002)(316002)(83380400001)(82960400001)(86362001)(38100700002)(66556008)(2906002)(6862004)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zLw7JSX/jGR1eTFtU7mwoJXbqX72TZrmjFTiE3VX0IP7IVrXwzuKHNJl4cSI?=
 =?us-ascii?Q?Jl3yE+z/V/nIdSG1V3UfW7aw8DAEO1L83Qp9HHXvEJbJqT1yY6cHNhXbhFXH?=
 =?us-ascii?Q?ejII1L7feVqyc3dlLYG2Rv8QKSDYTAk997n195KtLDCr0fEiJQpqb4QstkYe?=
 =?us-ascii?Q?HVONNj6HKM+ggwhIbYlZYCQVajxIJBdhpNP2eyhutdruN87xS/vzVaBy4yd5?=
 =?us-ascii?Q?Dafiaj0PE5MtQJoBZiw1bRSQq6gdMoM8gYAcZ5Sxmsr4IiCCln6jEr1ez+uh?=
 =?us-ascii?Q?gLsUQBYkCNT8ocoKhTaz9S7m/NtaO2f9au2Nga5J+VyQeb7PVlFJTTdQhOOU?=
 =?us-ascii?Q?tySEHGbrPZ3COXEQgLrsIUVIrpX/iu4sL3Dmhnbn1yF5UT1o2eIOPRjYUK5c?=
 =?us-ascii?Q?wV4vrYRdhnQFv/rSm1BU7/tDZlSVNs2fvRlXJRsHvugzKb6cD/tIunFrd+rG?=
 =?us-ascii?Q?GeZcuZsJXqZNQ8gMGaYYGA4PtXn3QIzz24Hpmth1yUDEhK49Nb56F2f1qlsg?=
 =?us-ascii?Q?V9fe2oUuuVTGDGbjJ2KD4nIga9CsqRV98e41PR7dXhg4uoHP2d0S2ZE5r8lN?=
 =?us-ascii?Q?ULmNM2eOSpV2yUkH71NiN74axlFj6HzouX553F5R+B1VaXFL8i3Dcsd1e0eb?=
 =?us-ascii?Q?0jmzERjQNrSUkjRb1c16S3Be/JYgvkNzufrSf4ycTt8PM7WK0Mig6Lt1VDo9?=
 =?us-ascii?Q?F2E2elhwn4lFO87Xek+0icZCrabr1amVaFkGOIUp49haQgYGulr+HS/FmLSm?=
 =?us-ascii?Q?ovFTuOGF1UXyHUjtmBE0cgG/9VQUFlHgMVYS9m3qmVubzdlEW/kiXJxxdnSY?=
 =?us-ascii?Q?gLgn46qNEiOIPoCcMTYCuJPUBMoOEvWsPPDGzRACdDhYcUDs4+W+N/ofc30N?=
 =?us-ascii?Q?jSmv+wAZANLOQ+lUCR3CG2kWDcTTMcV+XwxUDCg+R42JbN39N70k9DLuKi/r?=
 =?us-ascii?Q?5KcEB/12dDXWeOaGdSQfG2N3xk5XhKJVQ0zdZUwzmPsbvSpJyTwGjGBW1XAL?=
 =?us-ascii?Q?VMztAeC16OjUEO1vsRsyKEH0427bWYkCZ6xwTOBOhCw4BawPc5GV4sMo+I/L?=
 =?us-ascii?Q?nlAw+jgp2g61X9WM7bk5JxgmuuPpB2f3sKnhckIS25rXTbucLMZU5FLmUBhX?=
 =?us-ascii?Q?4OW7NqzImHJzdkFX9UsaBt6rjtdVxSD67IfN/MxzImVlIP3+ykDqfvjtTgHW?=
 =?us-ascii?Q?MoxuM+zavCYQ6jaVkLX1pJVvHBfyu5JhAmJ18F7UT2CuThbZOu25igWLlXM8?=
 =?us-ascii?Q?Kh6udewU09+vz5TyZbGaOMDW+LETfFfE8sHH3u0DrXogrFmSqE2H46RAABof?=
 =?us-ascii?Q?1jlc2ev7wTK43UJS9gWfZo2T7pmmXyRafnGqvvbXzsOBB1OlDTmwJuJWc26V?=
 =?us-ascii?Q?GzA67+Lxs2JaL6KzCEsxxlhCS0oVL85ovvv1vGH7VXlU0XOKkjl43q+wM2Yb?=
 =?us-ascii?Q?py4hpubnzwirLeWzgRYWyDyvIGgeMoPNFyF11kEVfVKFg7l+4OdeO8bQghCk?=
 =?us-ascii?Q?6DUy44IOZINK9CzXpctR6uivzIQDJu5hIseiFZ9loAmNZXAsUDGQMlgZWlXT?=
 =?us-ascii?Q?V4WJPFwGXAEFt1QMSC2dHdlKE1Op6u8Xd6F2RaIo08msghWfhegz94o6Fewg?=
 =?us-ascii?Q?3A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbb42919-beb0-498f-5e6d-08daf32cc41b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 17:04:42.2147 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FjMD+ApQXUX2v9iZM1EJAk2W8lhUJG5lyBinorLptU3uewV2CcJ4llakV3KLO8EDRl5e0CCvFpcrG3Cui2uRrDkQWGtEPQrzRsY/pgt47o0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6385
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Cover rest of SVG unit MCR
 registers
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

On Thu, Jan 05, 2023 at 10:37:01AM -0300, Gustavo Sousa wrote:
> CHICKEN_RASTER_{1,2} got overlooked with the move done in a9e69428b1b4
> ("drm/i915: Define MCR registers explicitly"). Registers from the SVG
> unit became multicast as of Xe_HP graphics.
> 
> BSpec: 66534
> Fixes: a9e69428b1b4 ("drm/i915: Define MCR registers explicitly").
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt


> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 4 ++--
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index f8eb807b56f9..570699548c77 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -407,10 +407,10 @@
>  #define GEN9_WM_CHICKEN3			_MMIO(0x5588)
>  #define   GEN9_FACTOR_IN_CLR_VAL_HIZ		(1 << 9)
>  
> -#define CHICKEN_RASTER_1			_MMIO(0x6204)
> +#define CHICKEN_RASTER_1			MCR_REG(0x6204)
>  #define   DIS_SF_ROUND_NEAREST_EVEN		REG_BIT(8)
>  
> -#define CHICKEN_RASTER_2			_MMIO(0x6208)
> +#define CHICKEN_RASTER_2			MCR_REG(0x6208)
>  #define   TBIMR_FAST_CLIP			REG_BIT(5)
>  
>  #define VFLSKPD					MCR_REG(0x62a8)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index bf84efb3f15f..9a40aa61e86e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -645,7 +645,7 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  static void dg2_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>  				   struct i915_wa_list *wal)
>  {
> -	wa_masked_en(wal, CHICKEN_RASTER_2, TBIMR_FAST_CLIP);
> +	wa_mcr_masked_en(wal, CHICKEN_RASTER_2, TBIMR_FAST_CLIP);
>  	wa_mcr_write_clr_set(wal, XEHP_L3SQCREG5, L3_PWM_TIMER_INIT_VAL_MASK,
>  			     REG_FIELD_PREP(L3_PWM_TIMER_INIT_VAL_MASK, 0x7f));
>  	wa_mcr_add(wal,
> @@ -780,7 +780,7 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
>  
>  	/* Wa_15010599737:dg2 */
> -	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
> +	wa_mcr_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
>  
>  	/* Wa_18019271663:dg2 */
>  	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> -- 
> 2.39.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
