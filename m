Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC2D824AD9
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 23:26:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D637710E50E;
	Thu,  4 Jan 2024 22:26:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3D1910E50E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 22:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704407189; x=1735943189;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KLE7YIV1y1qLRWyTrF/iz3boLvcTikDUqO1gBBPwmW4=;
 b=L9EOrnhG7r0T1pYM9Y1ljoZoY3Bpou01rZmosc87Gu6qaTutuXTtiOSW
 5DN8QerwZe897oUMUfRP9aWkaV0q3V7o6e8+NASUhEAj6U183AmaC4qo9
 SpuQtCqALsJwOFN5rcwrreAUMEEyMwrY95v57zvLei8BPRDajyyNyWXqF
 b2CE6Ev38/hwAKdIMrE5TbVZg5vlYO6M+Z0UPFZ5K5egOu2j4b34Zh7XN
 Q16Loh/q9gdDHFoUERul6xj21x/dD6Xb18Tm0xJHE+djO38HSNTPPPD62
 I1PUVHiLvzXWaYO/4/1AYaWRfy83AtXIfJ+zsLQk5PHYbvG4z2qSCI6PV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4148601"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; 
   d="scan'208";a="4148601"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 14:26:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="953761708"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="953761708"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 14:26:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 14:26:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 14:26:27 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 14:26:27 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 14:26:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oXm+jiFwsulMM5dbtY4rWTesQNYwhz6cScYWO+PkCF6lJTFIn1YPGN9B9XesFGhpFCllF/4m5Wyp6RkgPvfdlRidqAQZvFsMPvsRD/zcuedSYUgh3lebO4dY5RgMkIjo8NF3RrAgmeh1FYhYbJhteYDbs59IkW9jzt1/+zK/nZSTe58JEEU/UjwjvZ+NtA9hXVFUOKakfyhCtrKs/h86HtQsEaLlXYT6abhc6sGscCXP6GUPp1XauQHk8/Pe59hl8JMXxnkGqfz3btqWPc3WEz5huB0C+V564sjcfAVTh6/WhffC4Bt44yNDDXkPYvcYaKeIXOHYeRm10diG78muyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NG5l8zkJqeqs0OqbDNz59JcPJZpxnZ35zOaNZEzvt+E=;
 b=MA80s4/+hdYYpEyKaMextQK99XoSq4RmXWqNCNjSKfvUq2at4Ny1SLqMBsglSANGeIjXbk9I769HfZefC2c8kO36N0e1LPfdxg3tEdZPjsRFt070SNxLhrEEmO99vH7XIHqN2o6lvFJ6ky3SJaqAarUI8L82Xr1whhoOEl/fkUTB0q8etT3EqOBxyTqemBLogkIp4ZuEThP1ClSkpXDMs9SsRMbYLUzlZatR5K3PNiN6/TdLEUK1a0eSzi32EXWa2d9b9VWcyjNU9rlK5qzXHF5H4OldFeSbBLjrf4Rg2FP/JMBCRYST/nzsMIhK2b8j5LHIA2nk0QxZgZHbH27cww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.16; Thu, 4 Jan
 2024 22:26:23 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3%4]) with mapi id 15.20.7135.023; Thu, 4 Jan 2024
 22:26:23 +0000
Date: Thu, 4 Jan 2024 14:26:21 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 1/5] drm/i915/irq: use DISPLAY_VER instead of GRAPHICS_VER
Message-ID: <20240104222621.GF3529480@mdroper-desk1.amr.corp.intel.com>
References: <20240104174350.823605-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240104174350.823605-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR03CA0007.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::20) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB7408:EE_
X-MS-Office365-Filtering-Correlation-Id: ef39f3b8-6c7d-4f06-0e71-08dc0d742ebd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZA4UXtOgfCxOFEBFq1LxD9PHAJzYWDuSq1SB82WBaafkuY982cVXE6bS1vMyLHk1Hwv/q0AilzFiauGkdnZ8NRX2+En46bltZJtZaTYzfhBT66h9KWrbOZyqMlpUMaLxOCXjnEdW/ZOjWIEVuehvvCOWyIK9hMDr+OeV7gXGDNx2ICXkwZWnW3Et15f85h+NYObxvt4folGphofTjRg2cY1VLM1gx9aBMYbtedYBXFnS0Jlu/uhkw9wtTgEy+DqIBKgNO4y8m9k74wcJHRSmKT3zZbwJFKN9ozmKMUjRYGRktDiqQfRpVPXz1Qzxk6pjDcvDMGb00p5IHKpLiu13kSvX7oewIaDGv1BXq1NmOwlzW/sd+XGVLrp3BVzrRiQewnRAn8zxUd9FysNkEzLnSvPpLOqABoblXrMtqKpvP8GDA8sxgt81+lq40jwoWDQYab2VPMrEiuE2B2aURCpNR/Mn656pSq4NO83RZob5KsuoSlCSwBz/q4tZYqpL415lZrK8DIGiYZGDrIzu6rTxzNW16MgU6nQNNaEIa9eJ+vP+npSysqqZ5bNQeNPcO76E
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(136003)(376002)(396003)(366004)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(38100700002)(82960400001)(86362001)(26005)(1076003)(6512007)(316002)(6506007)(66556008)(66946007)(66476007)(6486002)(8936002)(6636002)(478600001)(4326008)(6862004)(83380400001)(8676002)(33656002)(41300700001)(5660300002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Fuf2mET8mgkZrKsJ2BEEe6CMqoTXbC3Mb7OPQwXrdjq5ejGv329DFkHfoBhC?=
 =?us-ascii?Q?61RCrksNoqlJ2AoalaVEKo8+wv1BzJhDaPDyznbU2CP+ng+eia54IABCR4ne?=
 =?us-ascii?Q?T/KnYVZDjg/r0Qe6sfNruB0WIPY2EjeYvyPLbAou6wEr3lB7iGNJBTSEhE2A?=
 =?us-ascii?Q?HsvlAuef7ffECBnG/s3dYUNWQc7bcnmPrVYcWjNu9+zL5Je49VXZqIdbchdc?=
 =?us-ascii?Q?UGWJAyZgAimUDBpGFExXL+K0Qoh4Z4V1kowBVrxkaMelH+Q3IbAWJbEEuFrp?=
 =?us-ascii?Q?puDLNF/vNjwN4W8QCO3ZM/2dSsVEPk96V5H6/A/FV0cB7+QPkNCy3uSoqDdK?=
 =?us-ascii?Q?hFdfPGm0s8SNCJ7URNQW6X1yKfOWZx9NDfPQbIhDfptw+sZ85fREbl5XSHmp?=
 =?us-ascii?Q?pxmweEJjESTqNVYwSxOC1PgX0rcbUs8/fez7GDglNASWjrSAMqKy7+zf23vd?=
 =?us-ascii?Q?WkAXHOggUhEgf/U6DYdZ5csfOQM+tdyQ1mohetROhzzu1GhzOov3fea/z/tq?=
 =?us-ascii?Q?Df5uW+SnYzo6BstBTZ2qSZ4e770wXfv0yyNVexgvSjPbKpVHVB8J82LOIMbt?=
 =?us-ascii?Q?bm4dJi5zXXmt+1/a/pTbhUDR0IPHWbH6zk1sccr27+GpjFB8yUe193rYAVCm?=
 =?us-ascii?Q?Yihx/qzbIkjEqRmugpSzGApawibp3WIO/yVyE0+aZPIgpkEMUAeXNTSUN7UV?=
 =?us-ascii?Q?tT0DTr7pp0GsQGA6/ostUnnQC5lB9NpSUTlYrbu7Icf5DCIguGZcOlocQoJ1?=
 =?us-ascii?Q?cKZFL/ZVAgoAj+IWyui9CZ9iiQ0+/hugEH4l4Vna2i7n6vcy3zFMZFeurQgF?=
 =?us-ascii?Q?CO+b8SzFl+IewMiqNqyE0AO/t3b/3j6kpTUIZc6bxNOuacM7LX7NpBfjkZ6G?=
 =?us-ascii?Q?MUv/zVxomjJbkJ+dCg8WkSxBqJqHJWcuR7WUJPW4xyEV+yNxXGT3gu2cYh6R?=
 =?us-ascii?Q?Qi/6UOtot66Fh9+b1tmkWRSVFI5ST29r0AGRXfuGT4klad3kCN1/WCDV8OLt?=
 =?us-ascii?Q?MIhTCQmuAlr86YRyhKa9IriLVuPvggW9y+m2QRrrL0IBjVHef4DUYbDciwi9?=
 =?us-ascii?Q?i0Tizqi3eDV7DC5TtYow7CSRPK9DTZxzG42PEmtMuEikDqZ7JIsYyZz8WgKU?=
 =?us-ascii?Q?VEvj45AqZ0cyTIB/rNyaRkRBiy0b5uTXo5+mL7MsPvcNkSSzAe9tuy8hCQ0m?=
 =?us-ascii?Q?QxE9QnVy7Fk9Ao00mip7Vix6cl8I+4+T40pwig1d/BXu0L3CO5OEecRkkmzN?=
 =?us-ascii?Q?N5LHz2OtyZN3zegINaCvmmLgGaJiemGTcnrC55gOwkj2jWOjj38nKKTA05X8?=
 =?us-ascii?Q?PFejc3u8XMs7fe8bJ1tqyvO7YOB6yy9Tek8jjS7H895LvfSKtWx/wm9VOAeJ?=
 =?us-ascii?Q?X0cMwua7rZymGxXfer/WP/qWztryzPjm4tlrjW4t159SSIvcOyUgUX0TObnC?=
 =?us-ascii?Q?mSQfqEWGv2b9P73YCXkc40v2I9hYYXpxZ3AykZvrrNh0t1xjjiFqI/pWRGKW?=
 =?us-ascii?Q?/w9YiVVGZhvhMmILS2VWtQ1nEOo5i9pURp2T30PmGRdR6D1geHNnrIjF/abn?=
 =?us-ascii?Q?cf+eTK7BXOim4iUg9x4VFjXp4MWzoR0cPl1VqjDKFd1xuALPGajS56Tir2T/?=
 =?us-ascii?Q?fw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef39f3b8-6c7d-4f06-0e71-08dc0d742ebd
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2024 22:26:23.3086 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aH1Mbmx1ZTN/fsmzMipkwrwuvFqzE+dK/+PZft8pc1ZEzZMGnmfRCNa0aS2sGN4k1Uf5tWFQVB7sw6im5I5A4Jk8QYo80aYMupVyXKh3UyU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7408
X-OriginatorOrg: intel.com
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

On Thu, Jan 04, 2024 at 07:43:46PM +0200, Jani Nikula wrote:
> Display code should not care about graphics version.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

For the series:

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 6964f4b95865..99843883cef7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1587,7 +1587,7 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
>  	struct intel_uncore *uncore = &i915->uncore;
>  	u32 display_mask, extra_mask;
>  
> -	if (GRAPHICS_VER(i915) >= 7) {
> +	if (DISPLAY_VER(i915) >= 7) {
>  		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE_IVB |
>  				DE_PCH_EVENT_IVB | DE_AUX_CHANNEL_A_IVB);
>  		extra_mask = (DE_PIPEC_VBLANK_IVB | DE_PIPEB_VBLANK_IVB |
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
