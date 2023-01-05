Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2211565F786
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jan 2023 00:18:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06AD010E144;
	Thu,  5 Jan 2023 23:18:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C68510E144
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 23:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672960711; x=1704496711;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0iLYGUjnUXWQfuj4nlgzgOAzscGxS8PHlFt5RiSu+os=;
 b=jDFNgfovJizJ9uuN4ZnIWXY/8I8BYla0/CDk2uLgPu1EXo5Pz28vpyOZ
 7e5vGzjzxocZbSYhyne5R3122i6611dfay0HacPRzaMfivs5om6uOYFIO
 ksxgF7nbJDBXHo2/+kZR6rCoqnP+hPzWqx/ivK5ABaT9FQPLGtAGBpm83
 TX5cMu65rCi1yMS+A6N/ICKO8yPT3i6NP4pFz1BbcQZlQWRfJJQBciMzK
 tC8hhN9gNauO9pz3pbMW9cxi6zoYglCni/ltcKGUDHrxAybsl8BBbxw6B
 CqXb71WWJ4RjEyQV7D9Q9YMwRK9q7k3iNujG13xki4yGwRv2tZKiTpdqC w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="302717282"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="302717282"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 15:18:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="718996080"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="718996080"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 05 Jan 2023 15:18:31 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 15:18:30 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 15:18:30 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 15:18:30 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 15:18:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NwvOcFnKb8csJg+pmoIQlTHAZJqTZnBZucqs/gOBURM1cEjpjQJzGAoIOCvtUGTolqDS0Xkiqvns1fxUSOUiTdyBUkrfuD4+Le+gM0lE9MLCnq4FFRpKG1II9u0CWaNd5r9Cfp0lbyfhm0G9zJhAAKg+H8mC/tRrmB001zgwEy4xXTuPubPlndPxrPSPzZxgZcThoQb4rcPimR4fxUzvLErdfv+KfKpMcQoyffkhZCvGlbg9l5i6KvLNkoxSWqIXUao/CRfljeWCOuHlSY5SNAK+yMTFEgKQ8e4TdXutl3/Z0luDtzyTs9mMwIaaEMW0IcmBcQYXq/38LP8UO3RF9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t9+8LdLyTKU7kmWcF2f+GjPmP7ugHe3JCHwlUcrzF1o=;
 b=jOK3LCP79dLm0rDg9zzW27KfcZTk8+54YWxNbqWKSoIvEflGdj3GovuLc2ST7iVbbRSSKVdPE6t3tqWGLW3J9HfNlULFOPrHGRa+504E+H7vYwnvtiR4YJeEYuxEPQTRLA4FtLlbpy/jqB7gKArYWt/FX3MSg+6tmyQCCf8d8xdVn5S3wgKKUmt3XeOH1stMifIRW8IQ2+C9snqnAwdU+rX8o0cPgXI2DOKR/Hlr5SeBIXvI7+DJ0pZoTbD0Jo6CieNj2RaoL6qqcg3MU5xTWDcOOhAFihXtZcDWh267aKw+YLSv/ZmoaHQG9oMaSxQ4RQoSC5ZKl2RcbCAXMSqdug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH0PR11MB4968.namprd11.prod.outlook.com (2603:10b6:510:39::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.19; Thu, 5 Jan 2023 23:18:25 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%8]) with mapi id 15.20.5944.019; Thu, 5 Jan 2023
 23:18:25 +0000
Date: Thu, 5 Jan 2023 15:18:22 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y7davizdmpluuu77@mdroper-desk1.amr.corp.intel.com>
References: <20230105133701.19556-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230105133701.19556-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR05CA0202.namprd05.prod.outlook.com
 (2603:10b6:a03:330::27) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH0PR11MB4968:EE_
X-MS-Office365-Filtering-Correlation-Id: 31784939-b11c-48fe-998b-08daef732563
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N9k8/9Q6IRVXLynB6Vf0N+H8PuNgwUGHbUwliSqzK1S6QNXDE28kz1VIjIwI+VE+9oRfhYPgtft8vQcN4uQNsrv7jXBWl0pEHrF/5MA5UnRrTGLBHquXWsty7u93U7dxhDBkNUps6LYO+L6SdGAkKmdtS6t3a461GvGKBvdKmia9grqCPFLs1v1oTDsvfRbDzoCK3q8gZ3+xisg5XNXC8lc5r2t0OQ12wpIxww8ha85rX9gDmdIsqsy9CnLbJq+CsW8V+VuZ2m+NwRgo0HnuoTSIGYQ1HzAJKEoIfM1ONymz2E/NhqYQcM+dFhphzmQLO1V2gKJsPnotD0gmZtOAjnQaCJ+Rcsab6YBuLndI+v8LePTCO4AyGHIxOCwllkTJI5RlTZ6EDoylmPo4JaDhuaDdWorMSemnK3ZM/wF3Wd3TRJIHmRySJflrOcGtvwfHusy+cTOmP4FD+/9vq4ZFTldR/NDUZSQRNW+4zx3E+tlqyAP2qL3XI63NYiCVkYi/o/HH7hoJ3kD8fvlvuL3xEHKgLlG2cysEJ3Lj6GksopjE4hGODvNLMrnYtm8mMolsZwfo2c8oBDRkO5Hbe5uAsIQufh+peC0gmMNe+5DwWyzmgVOPL/srO3F6B2HIGJNPJbvY9sSmcTQyhXlNeyXeZg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(376002)(39860400002)(396003)(366004)(451199015)(83380400001)(38100700002)(82960400001)(66556008)(86362001)(8676002)(5660300002)(4326008)(2906002)(66476007)(66946007)(41300700001)(186003)(26005)(6666004)(8936002)(6506007)(6486002)(6636002)(316002)(6862004)(478600001)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K4dxlpOSrmYBtoVdmEs3g2a+KzuEdxY+vWMeu9rUY9YeAo6j5FF+3VreCWN0?=
 =?us-ascii?Q?MAgzZcboiWi3TZAde9qVE7suenH8x2ie8WJmlN6jLZ4W0p58EQ20FIRirGKy?=
 =?us-ascii?Q?B9fw5ASJchj7kIUu/p63kYQPYY45ceQyQFL7Zxp+fY+4rgsP8iCp05WunK7c?=
 =?us-ascii?Q?MGsNsqYBAjmQwsC3yRvezW9NpDBqLlJsVDE0Q+hvasnQ/8HtunC5tfoerEJR?=
 =?us-ascii?Q?9H+XMpKrtpDEG4tZqgc4jVY+rGDTBZx8e8+eGoMUsZ0OQSO5vS/Nrz0Em5iO?=
 =?us-ascii?Q?49NnvPhDbshVWXnM4jwJOJbrf64RHU7keydzLHjHOUhcUHto/AUjvt3i99k4?=
 =?us-ascii?Q?aiwu+mETEHa9F2VPiKFlXtYPfC28ffizLMLh74bA3P3lAOQYvERCke70xdBw?=
 =?us-ascii?Q?lH9i8RY1t265QkX2WUiU2Uji9+v0Cx2G0mTreAycjhdg3pFnXtYQgDZ7U2Ri?=
 =?us-ascii?Q?4331B8wriWoat84yJZUXh5mnRtz14O+WaaSERVsjqgAjGmT/8Xdi5Ja/L1mJ?=
 =?us-ascii?Q?2SZBeh5Q5LjAWQEQSv8L8vWczAtrzlhH2ebulgL/5anM87pQvefzIeFCC/Bz?=
 =?us-ascii?Q?FGb4WL739s7bGCvJNYSS3BFLMhCArCgFSeTwyAf7JYUT7Z5kd3dgLaNCjSUv?=
 =?us-ascii?Q?KxQJMi+Fj3Ic6HZHq/fK1Yp2a52HHoYJavnxTb+YoCtxrCARVfrTIz+ZZ4wa?=
 =?us-ascii?Q?VY0kCrROjL8zp05ICLCOTeUeuvdtjUb+GRgfckQ7/AaFI9PqJDoOTdE6Cifv?=
 =?us-ascii?Q?ms9z76OcgVZFqo8NWaBSgtHD2vu0ei9AfjHN2poRV9xGCWGPqojskvJmwJKT?=
 =?us-ascii?Q?vfJmW1LJZWR3rfF6vxZQ8kY0WsCn8P+5VKZuvOExhBlxppXuBSQC7z+7LTTG?=
 =?us-ascii?Q?iEqcXpc3jYpn/8WlkuVRrk2zaO2gGjuj1mZtQkeYVtWVEc8rTKItx5yk5F7+?=
 =?us-ascii?Q?F2dtxrTAfo0R4YXjw8RfSkI5iXBv6yQzmydw1fery5ED5oVA4qfTeCj+gnjb?=
 =?us-ascii?Q?3mKy9554nSP7q7zpjrL0POgA06w3wCuEqB/bg1K/sPB5SBjyEiKnI82ecRqL?=
 =?us-ascii?Q?6uDc2kB+KP4Xcxyy1CoUisH6uchLFbGdnkycM+/VPIS2GGg5B+68ZLpLOdER?=
 =?us-ascii?Q?0IDOuKEB5pGfNDR5Bck6GWIsL61PFP9dojwiKfIx3cCE6k6Cf1UeJ2J+AGv0?=
 =?us-ascii?Q?/u5BfxHtSyah3jNlp1sBCH7iBr5WoYi1chFk0ZA4fAHGNEBhYEufjShtxZAy?=
 =?us-ascii?Q?lWCX64Ab7QS5zyJepf+7HuTeqwViirKj422v279atdLJPArkM/seZlc3CnDT?=
 =?us-ascii?Q?FZaWaX4+d99WpHHHSOXnTMwhoVfPSwFSwd3s22P0nbwPeDDe+C4IdbBJuyDG?=
 =?us-ascii?Q?24pFFt0gVtd4QOfQX4tG2H3MzZYwvL3bwBCzuEF2Uty9UHpUEylzF0vjLEAC?=
 =?us-ascii?Q?T3QfoWXo5kEbUlMchBWnd0q8AI+49/e34DL0q/4g+/XKqjVLB/RVCQxTzw8r?=
 =?us-ascii?Q?VObDBAGNk2CixX0Aop6ZkEnFy5vXPxdkAwDd8tL8k86SxUpqnZzOiTQqjrmK?=
 =?us-ascii?Q?4XzxTeq7GwZdVJfXw4+TC2WLtThdQN+ZoPE/splkSe/mVxXJP2n+LmDrk++S?=
 =?us-ascii?Q?JQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 31784939-b11c-48fe-998b-08daef732563
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2023 23:18:25.5158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G2nNoLPtOEB5y7laLAhHDk09f5JaGGljn+1sPaqPGG4+mj8LcybUVgRErzS5yt2kFWuX9VDf0BMtkFtx91Rpd+zACYOBddmraLOpPDMgCu8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4968
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

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

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
