Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB88677EC1C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 23:44:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DA2610E10E;
	Wed, 16 Aug 2023 21:44:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33F7E10E10E
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 21:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692222273; x=1723758273;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rgQSUvDNppm/4FEwI//rhpiYF8FMy4F1PTGCZiRqHNE=;
 b=SZ1Q3vQrctuq9FJhusKgG/MUe5qY9csPhNKk5InSG4uZU4kT+wVBN5f1
 MR7650V0K2gbvkU3yOKSpt/1E2rOXhXXHAzBymr8mwya49rXWChf/RzA7
 xtCZgfIH6KXzIybXkl1+TMK0ZalLV1WBqb0cpRD9epdQkarjVBfJ4ZzrF
 bZbHnlK0apAbT3lJ786KdfvTFt+c4cs6BkGknIUhhgPtL1xx+s79P6nIY
 /Ttl6j3D1w8JPOhfjtSNprgyvZD0Hch4octlE6giWnDxsn5GFY7pJMD3h
 +JGwJPHRZE6VmbQXn6UH1shHBxvFrbPa/JjlyfHcFDuUyLNk2pcnYKIdu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="459000777"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="459000777"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 14:44:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="763776295"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="763776295"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 16 Aug 2023 14:44:32 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 14:44:32 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 14:44:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 14:44:31 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 14:44:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CC00DYHatLFKst60Xj7gSx7RqBxRcUfwM0PTg88V24YOhUFyADXZ0pXCyJo4AZWJb/7XTFqS8eIEJZU8egEzVIQreOWMQrCLSaP80jjdKlkW6fPebz7M3lVv7uAMzfMhRy3kYmvbwQnHcCaQYReuA4QWFJ6XxdgXq0sGbSJSBKakNMUfL74J5r+IiEV7J6cQT5kE6pQ1jCILbwFUY68Izx9yAG84u7AedfsO252xnvMbGqJmRDyL763MMHgIbcil6kP0b21JLauRX1oByq6MgxkPxdvcVIQF4O0cniMvJ0RPWocRN++zKegIMEfNGdanw925+wSFf7eq6pcpDEzseg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w/iImQX2eHhdwIBeel+HM/oCeOURlN7+mlwCcCbvLP8=;
 b=RSzfKuIDuQrP/3d+Q5413j5gYSZ0LdFGj7gjT6PMfUzEpQfApLTVHw8KuMcNh1t7JL5+JVigNvmq7DHbfWPmxg5V957QApqeXEs6NyCS9omliMivHFwfTmTlNcIEU0/EREbJHeALHa1y1A7EweI6/iWfzmCLx7Y9Fq+8Awg/cq8CRZBSFGVlADMg1lj0U0Xht9hT/sp+stgew8d9ao+eGjDym2FtN69IEBLMDa05BC51outvvYw+gHJKED4C3ZesEL+SzSArJ/464wxT7/AfsfWg56simF1j3uztU1xEsn7qeXHxO24vdUx+mQ19EBa/ADbUYjkYgYgugmos6F3e/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MN6PR11MB8217.namprd11.prod.outlook.com (2603:10b6:208:47d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 21:44:25 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 21:44:24 +0000
Date: Wed, 16 Aug 2023 14:44:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230816214421.GU3375865@mdroper-desk1.amr.corp.intel.com>
References: <20230816214201.534095-7-matthew.d.roper@intel.com>
 <20230816214201.534095-12-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230816214201.534095-12-matthew.d.roper@intel.com>
X-ClientProxiedBy: SJ0PR13CA0078.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::23) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MN6PR11MB8217:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d7156d2-d71e-4cca-2564-08db9ea1f518
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j5uk5oMtiC9YBXiHRh16fxCOUmBa8hs5rrqGtcnG9kswn9r/tNesmLsYQIZONxElQO2OJ8i1wAbLxElgUa/xzxR7jo1P5GbpYgoqs6L6+fhMdn96MEXuvU06cAmq04j8g5zPa3FDBAhvEUhoVE/EoU/ElQVsu4kSoA/sbvFAX5b8PQtm3FhpusHvHT1/3hgssfe5ztjQtOslBxEnzoiFInU0eWH+HjnInkbbPmpe05ygT91lrbwpEPlKUbznd8Xe31UySvyfnNrXv5QUbI3r9nGcihxZTVXpQTockorxSGe0OoAgjzOPONQ/jRdrMSwI+wXtO8K8hoVSvwehVHHumn4Ts3isZHlkYHyWd+vK+mYajuwaOya+mkyFG5c33tjzaX5ypqyPP6alghWl6jykaTfUDSO3+iYK+M/7nNS0D23z4BWBijtHujcsOjRMYN32TgbeE8aM+x9KNsp96wvapThdIurbjmkcns5ibrpX9wlYVOGCdAN8wPVAKWJxr8rBw9jmRcGwyBgHBvN2FzV2zQt9xacRkgegUNn/L8HgsPrL61n9nUnugtqNWozep4Nj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(136003)(396003)(376002)(39860400002)(1800799009)(451199024)(186009)(2906002)(83380400001)(86362001)(478600001)(6506007)(107886003)(6486002)(6666004)(1076003)(33656002)(6512007)(26005)(5660300002)(41300700001)(54906003)(316002)(66946007)(66556008)(66476007)(6916009)(8676002)(8936002)(4326008)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4ZXSoU44S1xprf2U8Ms0ro9W+HwGBr7BUZIuchPaBhUijpVrXWGJobTJVvxJ?=
 =?us-ascii?Q?6WuU9XgOOPlbGid94sEJAgMVgBZnLnvG7JOBWGqdzRbZYcQBitCQLUudkO0U?=
 =?us-ascii?Q?dxOts71la7+SSF0nIS4ZE8Y/3fLG+dQ33+rOEM7L1PJ7WqvK6faBEPHtSREk?=
 =?us-ascii?Q?giU905rNEQniA1QZLEDEiVpKiX3ZN/KO/oTHu5sbK/2djJQXt9edfQkVzpQe?=
 =?us-ascii?Q?c4DUBt0gGgAYjO2sc3xdrJek8f1b2zDjpJgSQTgQ4P1500VxChKP7qcmtPDc?=
 =?us-ascii?Q?o0SVeLwAzkhVy6vamsE5Ng0ZU9bjdPKvACG4zn0xKlTQfoIts8hy3+SVr1kV?=
 =?us-ascii?Q?vnB/BylR2XgyvkQs9D4eEK11brt05JMOmt3qLYS0ozlWXTdsoZQoSIZqmu5/?=
 =?us-ascii?Q?zjj0S7n+nunlJGSCVzm6FqPoXpZIH6x023lqQFV2//Xn4up4HZwd9RmxXdGD?=
 =?us-ascii?Q?WFJKIrRqqlP6mWZql4asp+a28C3pvZofQC7BkoVAq7hhpYm4l6Ff2Z4w6WcC?=
 =?us-ascii?Q?mRgPdIS2yG5IHRMt4NO7mrXej2i3UB4vr1D+SOmNeA+nJmfZOe1h5U7p+8/3?=
 =?us-ascii?Q?+jgVoT/yIyFeTFHG+tK/TNnf/TK8LUebQCn/sJcDQc7qGE5rsdASAzyBu8dQ?=
 =?us-ascii?Q?3aUfhZi8Jz/Eqa7Fp5bLPk/bsKLycjOR4Ns6mDhV3j42rIoElqJhu5fVN2rb?=
 =?us-ascii?Q?LITwJQvKaNQgpnWGuQIfJlV6u8ccf8psjCp06CfGS+kzEkr5i9VoBYFf+cQm?=
 =?us-ascii?Q?gv+eEbBavNywpeAE0rEw7nWTt9NxfNmCpXXzPxQJnO9CzbZytl2hUNJ2K0CA?=
 =?us-ascii?Q?mZwb4YS6wqAV6Wd0+3hzfi7ConitpAD7cZwumF3p3s1qPdp63OY4IPzYpu0w?=
 =?us-ascii?Q?aidhHEoeaZdZiuR707ONTtw7UorKLl8ztm5TA3TgCcedi7evqEp8/MsLO0EN?=
 =?us-ascii?Q?Xk3h+jRld4S1DsekPjUKUN+fNCx8UVjAbh4YXblaqfu6X6bBX0a+kRQawFGJ?=
 =?us-ascii?Q?ki/aeripPs+6FHjYcSeDC1BhXi/KMqNp2jV6tZQT02mI3WeVJnzlHG3MPoN7?=
 =?us-ascii?Q?FHjnnSq3dFifJzAztp07E0P4Mo89cgtnA51BF4LcxUI+dTCBmnSY7QJ4IM8V?=
 =?us-ascii?Q?+TJ3Q/eYuhHqfZn41HVGI/rm71yVPRm6pSP6ESIc8ySaAgyhxJPjr04eWaOU?=
 =?us-ascii?Q?E5j65kaFVErOYdwA5EwxNdxac8t/IJW3I/eP7xxsGwK8NPuacFyh37iB8h0l?=
 =?us-ascii?Q?rU30hJzoAtoZg9GuQwv6dCCnBAiq2by9QqpFKClsKPhIU0LuILPkvsBWWK//?=
 =?us-ascii?Q?xb7UrFeFShwOpQbTiFBYYeIdUDBNmrtOAfH5u0PqrR96iOZ823Aam4OjJvft?=
 =?us-ascii?Q?oDm23MZqH1W6+CzAsNuF9rplQRMOdM98/xXOaUz+PdFiA3JeVJRkya/AlBue?=
 =?us-ascii?Q?YXI4TyQ2+L0d6vHGy9gSAzQaHwT+KJaUU4kRZlUYUG7pRxNoE2ejXsovDLVk?=
 =?us-ascii?Q?cJrqzW+/FLtsKqp5TTgyKdpSTgLAY+BxXJ6ITzyMo1s8hnoAK+Jlbc7Z5YsG?=
 =?us-ascii?Q?4BiePaZdWm5FJeZgsLTcCxzjqiKOVszV3CWiEMB+NZZ9lIwPl7/UTdkBDKYZ?=
 =?us-ascii?Q?gQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d7156d2-d71e-4cca-2564-08db9ea1f518
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 21:44:24.3862 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2Nb4ZEuUVBx8s+7THb18DxDuHFvG/xr7xaomKIoHj8m23kONvNvameXOOZTM/s51zjJ+KJS0qQZiI6W+sf1rzi4nqUEFMnM1qKUn/0YVSk8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8217
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 5/5] drm/i915/dg2: Drop Wa_16011777198
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 16, 2023 at 02:42:07PM -0700, Matt Roper wrote:
> Wa_16011777198 only applies to pre-production steppings of DG2, which
> we're no longer supporting.  Remove the workaround and override_gucrc
> handling, which is no longer needed.  Since this was the final use of

Woops, forgot to actually commit some of the removals here; let me send
a v3 with this really removed...


Matt

> IS_DG2_GRAPHICS_STEP, that macro can also be removed now.
> 
> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h        | 19 ---------------
>  drivers/gpu/drm/i915/i915_perf.c       | 32 --------------------------
>  drivers/gpu/drm/i915/i915_perf_types.h |  6 -----
>  3 files changed, 57 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 7f8fa0eb9dc6..d4568e31b777 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -670,25 +670,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_METEORLAKE(__i915) && \
>  	 IS_MEDIA_STEP(__i915, since, until))
>  
> -/*
> - * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
> - * create three variants (G10, G11, and G12) which each have distinct
> - * workaround sets.  The G11 and G12 forks of the DG2 design reset the GT
> - * stepping back to "A0" for their first iterations, even though they're more
> - * similar to a G10 B0 stepping and G10 C0 stepping respectively in terms of
> - * functionality and workarounds.  However the display stepping does not reset
> - * in the same manner --- a specific stepping like "B0" has a consistent
> - * meaning regardless of whether it belongs to a G10, G11, or G12 DG2.
> - *
> - * TLDR:  All GT workarounds and stepping-specific logic must be applied in
> - * relation to a specific subplatform (G10/G11/G12), whereas display workarounds
> - * and stepping-specific logic will be applied with a general DG2-wide stepping
> - * number.
> - */
> -#define IS_DG2_GRAPHICS_STEP(__i915, variant, since, until) \
> -	(IS_SUBPLATFORM(__i915, INTEL_DG2, INTEL_SUBPLATFORM_##variant) && \
> -	 IS_GRAPHICS_STEP(__i915, since, until))
> -
>  #define IS_PVC_BD_STEP(__i915, since, until) \
>  	(IS_PONTEVECCHIO(__i915) && \
>  	 IS_BASEDIE_STEP(__i915, since, until))
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 04bc1f4a1115..dfe7eff7d1a1 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1675,13 +1675,6 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>  
>  	free_oa_buffer(stream);
>  
> -	/*
> -	 * Wa_16011777198:dg2: Unset the override of GUCRC mode to enable rc6.
> -	 */
> -	if (stream->override_gucrc)
> -		drm_WARN_ON(&gt->i915->drm,
> -			    intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc));
> -
>  	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
>  	intel_engine_pm_put(stream->engine);
>  
> @@ -3272,7 +3265,6 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>  	struct drm_i915_private *i915 = stream->perf->i915;
>  	struct i915_perf *perf = stream->perf;
>  	struct i915_perf_group *g;
> -	struct intel_gt *gt;
>  	int ret;
>  
>  	if (!props->engine) {
> @@ -3280,7 +3272,6 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>  			"OA engine not specified\n");
>  		return -EINVAL;
>  	}
> -	gt = props->engine->gt;
>  	g = props->engine->oa_group;
>  
>  	/*
> @@ -3381,25 +3372,6 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>  	intel_engine_pm_get(stream->engine);
>  	intel_uncore_forcewake_get(stream->uncore, FORCEWAKE_ALL);
>  
> -	/*
> -	 * Wa_16011777198:dg2: GuC resets render as part of the Wa. This causes
> -	 * OA to lose the configuration state. Prevent this by overriding GUCRC
> -	 * mode.
> -	 */
> -	if (intel_uc_uses_guc_rc(&gt->uc) &&
> -	    (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
> -	     IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))) {
> -		ret = intel_guc_slpc_override_gucrc_mode(&gt->uc.guc.slpc,
> -							 SLPC_GUCRC_MODE_GUCRC_NO_RC6);
> -		if (ret) {
> -			drm_dbg(&stream->perf->i915->drm,
> -				"Unable to override gucrc mode\n");
> -			goto err_gucrc;
> -		}
> -
> -		stream->override_gucrc = true;
> -	}
> -
>  	ret = alloc_oa_buffer(stream);
>  	if (ret)
>  		goto err_oa_buf_alloc;
> @@ -3436,10 +3408,6 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>  	free_oa_buffer(stream);
>  
>  err_oa_buf_alloc:
> -	if (stream->override_gucrc)
> -		intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc);
> -
> -err_gucrc:
>  	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
>  	intel_engine_pm_put(stream->engine);
>  
> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
> index fe3a5dae8c22..13b1ae9b96c7 100644
> --- a/drivers/gpu/drm/i915/i915_perf_types.h
> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
> @@ -338,12 +338,6 @@ struct i915_perf_stream {
>  	 * buffer should be checked for available data.
>  	 */
>  	u64 poll_oa_period;
> -
> -	/**
> -	 * @override_gucrc: GuC RC has been overridden for the perf stream,
> -	 * and we need to restore the default configuration on release.
> -	 */
> -	bool override_gucrc;
>  };
>  
>  /**
> -- 
> 2.41.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
