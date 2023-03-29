Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 242066CF4F9
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 23:03:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82EBF10EC72;
	Wed, 29 Mar 2023 21:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA70010EC72
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 21:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680123805; x=1711659805;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RI4SBKSpYbuwrAENzp4FzC+PlWa0HYs9gpSQgpukOfU=;
 b=WxOrw0ug4sLBfOE/DDCXNgO7zKCLLDzqtjPV4s9Q8RkOzODtI3ZExdLH
 DvLa2EeP8DEKfAQ5BpOpDwykevE6BFOvH8K8n/y9PASobrFGmABeF0PGz
 Jckl7UNvAncWCYCqbFyZ6KKUJecOpdNf1Bg9FjOELMWQh+Wwm85Iijyns
 Yz8HX/CzZrjOZvBKMvynP7ppAPe1RO4+0R4Vy+BGf2cxmXHvZJ4I/hsou
 bd2vkbTkt7CT6GIVutAJ/XmGiVU/is2ZhJ7teM0ncf1n9BgKvzUtPsCCR
 qlKylpLFXBI21MsKvprBjj9jCzHccv37hQvAGLXdYHFiQ9WYT2QhuKlpI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="427273466"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="427273466"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 14:03:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="1014181643"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="1014181643"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 29 Mar 2023 14:03:16 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 29 Mar 2023 14:03:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 29 Mar 2023 14:03:16 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 29 Mar 2023 14:03:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mFa5Ynm1g6n/0nM8gJ0pvaQDfVOFFx5ytnX05x2V4CihcFkXTFcu6kY8jFx56XeLS75cm9ONvu7f+XhNjXVGdy8PGBzFgMdqFDhkS3akzYsKqqL7Zn52F+hM2jsjCHASkCBY3fxmxHnpoovGQ2uynoZb/Zdl36RO5STiHlk9cit7dA32W8JWpSqFJmChKJuSMtkeL90mbu8/ugGtB1+nX59d/Sc+gJWBBZb8fxYwMLY0pk8mWh59dD7q/J9u/qRIDoB2x1ZQ7ifXsmOOtVcKRe+ktajB7TMiBSO1Hq0WWfYcqcF1RWAIZFG3F+r2uuORNa1FwTE6NPtIVm1qAvzo0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jnYvzJQMLGaLqbIhQvELvwnHchaR9v8RR4KYHYXc+EQ=;
 b=f53X9sshQjT8U01799LxzaZTyavZstaC7q0VEx29sZGEHA0keY2/J4KZ4tiMB36GR6gSUJXO9D7zlyeXgdx74okJ+lcRTco0krRiSUt6wCJVljttI0t7n2WrNUXlBEYu0VN/n84xZ6adlFRYGPjqUzycDhZDWCU3LJd4Q9zLgqDEt4PgaU0z+lPUxs7Vg8cD6QgK5qzw4tgLoibsBRe2E5lAeWr4qas5TJW4jc8cwoLTjXUIFcg2JDRiIDOuOnwuWml1A9AfZSIF3ZyQ0uRTqXVNXC14pjYFyW1mvi2QIrtEMPYreHTFfvMn0jPXoXewnbwGK7M/9dWz0VNJ0SbYlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ0PR11MB5039.namprd11.prod.outlook.com (2603:10b6:a03:2da::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.33; Wed, 29 Mar
 2023 21:03:13 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0%7]) with mapi id 15.20.6222.033; Wed, 29 Mar 2023
 21:03:13 +0000
Date: Wed, 29 Mar 2023 14:03:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20230329210310.GQ1175070@mdroper-desk1.amr.corp.intel.com>
References: <20230329202451.98364-1-gustavo.sousa@intel.com>
 <20230329202451.98364-2-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230329202451.98364-2-gustavo.sousa@intel.com>
X-ClientProxiedBy: BY5PR03CA0014.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::24) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ0PR11MB5039:EE_
X-MS-Office365-Filtering-Correlation-Id: 3511600c-f8e9-4429-5d37-08db30990270
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0RXlAS+m64uYulSUmeyzg5x0XtFAXBPiJivr9/sVcpM9p8w5NMFlUbX+JvS2YmWJFMlr6enmlovlDoHQGIXcCHG5+07A3S0pXCDAl60Es/J9AZPHgi+6/hFygq4rABzLFqAS/tjYt8XfKQHdw0GnZR3fYkB6brPA1BDrbv0XKmC7V6El6Nk3477RkNbLzc+GxKemCYcvj3uOuLFS/psZZbwqD2+dOrYyFRXAQIYymTGbLdb+LTW7qElWWnSC0LAYhIMvuN+yPggE6UaFFCvjb+LOnXR4dVA7ovofwi5Bg40gHwH4cmiFjsMr3FNhcT2kCd8BeaSzrJiyCHlJAfSDg6YiDuCojIv6pB7HwH+7K/CjfWc7p0D5JhI5v3G8mFOWMBKDizERkBrSuNay+ztAbjytp3Bp37S6ZGA55tJe46KenH9oo7wwXrRm3voClVmJZuEM8g1fkAaWEJTTUYH6no4WmIUEYL/H7kj/1yLgiO7DXXFCwQnvOGliirvmvUqEzG6LSgfpou4jeR+IOvVatHvC+CVqm/xnlkKvsWYIi9UCIexVLIRrhA6e9Mpb/giU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(39860400002)(346002)(376002)(136003)(451199021)(6506007)(82960400001)(26005)(6512007)(1076003)(478600001)(6486002)(86362001)(4326008)(66476007)(316002)(8676002)(41300700001)(66556008)(66946007)(6636002)(83380400001)(38100700002)(186003)(8936002)(2906002)(6862004)(5660300002)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Abe5GLe+8haLRnFMztEoPPPH4I4YU0N48inOgeZmXKIuIvMbqA3Ejp6rpulg?=
 =?us-ascii?Q?Tdk+KHMGlRMeY9hIyyxtpwsb/94MLBU/utGS0AWUwVRH8I/YIDE75Kly2pUk?=
 =?us-ascii?Q?kdr4VB+LGuc80G8YWadHR5Q9u6sdgmMAPiYpT8qgNUXs319ET79GDrQwYghO?=
 =?us-ascii?Q?T6i7gJGfL2B1hcos71idzKj/IwC9/IZK38QzJj37fT0Z1AudMqktJsfH+dmx?=
 =?us-ascii?Q?5tmxYGAJrrjk7mj1f7EIWHSOkA4Zk6lqnxaEcfkPEeirKbBoyWPIJdXFcFqr?=
 =?us-ascii?Q?DJagZOf2WTiz++1oU63HZSbjunDKWdxfGPwq0YKFz0BwQcpV5sIk0xDfehLW?=
 =?us-ascii?Q?3ppq7VGCszbn/368qPMme1uLzdTKYw7MqdjPf1OoEelvGT2jMFL4PytKVpWI?=
 =?us-ascii?Q?G5FcMyBcNBM/GOCCAVUgJUjzpAU6F4ZuIao4M9+ffOWJ615TjSdvIaschdpZ?=
 =?us-ascii?Q?ulKtEG3Du70wBIuukCoIYPTa+QVNXds7og9ANCTu9839Pt72YDvXy5BDqm5Y?=
 =?us-ascii?Q?nS+MyDw3/k8n3PK2sGnChIZgtASb45XPRkwd9dQFoZi6mwDpGtEIZnK28Kjc?=
 =?us-ascii?Q?Ib+YOuiRGgXASSS9ys4QZtPJRpHKZvI8Im0X7IB6ncvTc56OCOAs+qqUZCoy?=
 =?us-ascii?Q?+l3ZVZnMzwVURPu1TVGETmjEOEEe78xGlyJQsfoSMeygqOmaIQ/TKYa4Vqpr?=
 =?us-ascii?Q?N8aJ5NRXqZnI4ACfOiS3tH0TjENQDMLukYv1KdbnLzRayOhii6aGYMhR7WBk?=
 =?us-ascii?Q?8RRpjCWwDD4hxj0QMbci6DwNNmnnNlfHU1Cisfq70aDyI2Fy0O9Nm4WNZ6iJ?=
 =?us-ascii?Q?S3d5da+aWU1Oue0rEFlItqcVNnpXt0CAB9xVI1HgtP3zhMuVWPL8dsAJjbm6?=
 =?us-ascii?Q?7CvjSDkIw8gjI7ynkLSmJbErXSFLympyym8uiJBj34V11ILeA6mKxFq3mMDw?=
 =?us-ascii?Q?ajUdvvDv0LQ16L8MxuH+0Vg2R/BcNPi18bAyKUyTuOx9odfKL1jHoG9GQt+E?=
 =?us-ascii?Q?v9pGhH3ift808EavEi5rir+jH2IIPPs8MRYbAm8aia6oL6HJKU1O2OF4Osxi?=
 =?us-ascii?Q?bTexHb6qplUcr3Lac8oY+RnkgkFwgtg4TZUnUzHpB6MzOOH/wt/BSoZ0lHRP?=
 =?us-ascii?Q?detFQpT9iOjrbSegoy/M44/SU9BbNev214PLmujle+aIOOnXyCRaVCGIGhxM?=
 =?us-ascii?Q?dYK9CdizCWf4GbaNoJnvhAoud/gGgv30ocy4ijT3mtfxyZudZWj4inxjruxS?=
 =?us-ascii?Q?231Qbw+D29ZdWL90JD2e1Qd0IsDpqZOxNZwzbZ1iQaz6+Pgkovmrj8tA1nKd?=
 =?us-ascii?Q?jBmcDPUY/busQiDx4e1FkR3m58WSy+Yr7qmglAzEPyqZoUWT6IWZB9bXGSLq?=
 =?us-ascii?Q?jRhZQouUbCAHJ4LhCahdK9wKB9c6/szNJ+WztAXkdjdgCDf42LUCPUapyM4H?=
 =?us-ascii?Q?V0SmxEqwdHO8F6TGhGPDU2rwjqB4zjdtUVWJf9FV9S+HQPOMvNp8sEpkmI7k?=
 =?us-ascii?Q?PAFru3y6M2pweBJ3sOyyhLNg7TUUAZfib2AU/D1p/pKjruHFfFJjMzzUhszG?=
 =?us-ascii?Q?r6dxmkRTzi2KJ19tO4OifuTwuYvshofW0OA5kbsailKMGLF9gHTiUP0Kgqxt?=
 =?us-ascii?Q?tg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3511600c-f8e9-4429-5d37-08db30990270
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2023 21:03:13.4130 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uK83tY8jUdwydTEU0YXYGw3PZc3mwksM6dKdxSB3Xjg61ozt7yd+eLHXtvfSwpy4vc/2rmUHneg0cNvsBkzT97XVFEadH0CcoOgTPjOYmyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5039
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Add workarounds
 Wa_14017066071 and Wa_14017654203
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

On Wed, Mar 29, 2023 at 05:24:50PM -0300, Gustavo Sousa wrote:
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> Both workarounds require the same implementation and apply to MTL P and
> M from stepping A0 to B0 (exclusive).
> 
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 ++++++++++--
>  2 files changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 4aecb5a7b631..1ec855813632 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1144,6 +1144,7 @@
>  #define   ENABLE_SMALLPL			REG_BIT(15)
>  #define   SC_DISABLE_POWER_OPTIMIZATION_EBB	REG_BIT(9)
>  #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
> +#define   MTL_DISABLE_SAMPLER_SC_OOO		REG_BIT(3)
>  
>  #define GEN9_HALF_SLICE_CHICKEN7		MCR_REG(0xe194)
>  #define   DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA	REG_BIT(15)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index e7ee24bcad89..cafdf66d9562 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2388,11 +2388,10 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  	struct drm_i915_private *i915 = engine->i915;
>  
>  	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>  		/* Wa_22014600077 */
>  		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>  				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
> -	}

The brace removal here doesn't seem to be related to this patch.

Aside from that, the actual workaround addition below is

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  
>  	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>  	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> @@ -2971,6 +2970,15 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  
>  	add_render_compute_tuning_settings(i915, wal);
>  
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +		/*
> +		 * Wa_14017066071
> +		 * Wa_14017654203
> +		 */
> +		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> +				 MTL_DISABLE_SAMPLER_SC_OOO);
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
