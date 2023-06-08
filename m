Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6474728ADB
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 00:05:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B28F310E0EA;
	Thu,  8 Jun 2023 22:05:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8403810E0EA
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 22:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686261923; x=1717797923;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=T3ddF+ux3fnHYuYb88hSSc0TOmWPePPzZimmSMzjqzg=;
 b=V1SiuJRmH7qAHQUXq+Hu/0utCB6eGoLCIQZYpZgqjy442ZIrm/ueLdcP
 ajwgDUniQt8qZk44ij9O/7LssD5IWavFmMz8OYd+sJ0J0x3es3S/f79tI
 7e3gwH+yoxjkdi7Ue81tS19OUiW48HgRGeAM/ujwX/Zy17SECmBdyV5lK
 jcD8/3NZU7yFQKTysxK8xfWY0DblX4mPP0ADRnuCoXTbXWINzRCBNBDmy
 +sP++IOQDdKiYJGePzYYBowdrTKziE/4qyYJCZN44HNJ4SLgfdmg0E7yX
 CsojhGbahap6SHAiOBVie+e5TYD2ty2t4u9E9+6qk/bp0xuQUjvsqSyLs A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="342118876"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="342118876"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 15:05:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="660546132"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="660546132"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 08 Jun 2023 15:05:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 15:04:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 15:04:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 15:04:58 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 15:04:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fPDp62QrRJIQFKF5kB5JGjwlDdw46uElvlbqxEwx09AZPUq7It4Wa0qyJUp+PJm1bPwm7m5jxoHbzXjDrfIezrpmD5/3g/RE97TUeQ331SFE9fB5/d46rbVZWJHVLjKrYZ8rzF2y/okV8FHYUHGV3pfNLrA1AMR2EjPQMYXGiXb3KnNG2hUOfjrnV+u2Ou+PMLgTT3lkWZgYu/ngftLQlntHAlxFXXcU+KVEoFNoWZjtjLK+KDwTaOJCI3APKM/2R23bd27reANQuzikK1A78wJL3NR/Sv2HTdslBJJ0R2kkviavIJ92ZCyjbMte52UM76bz9ix7x/hc0bGeVT9bmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rhAlmCxex2374aOt0Aq8k8hVUBhS6m9y7fCW60aEJok=;
 b=MkN+aWRlZNkebwuPVNzxXwIzXLTaDjt+TywkXduDnfxe8C9/rvEFPyLz30/KuPfIX0rftMHgmf1ep1t0goDVj/2zA6QbXbjY5uUOXEYLxXGujrlDPnCMSTO5Z4ggX5grmG3T2ClHl6HYilGte0SrXwKw1IvkEGbdyEVPa4osZnPxRf8aZw9TOsOWGyVx74raU/3hpGG1lvZTwGoZgdQWb4rkQb5MT4nbRY+RMDLg2IdR5Q9S9j3PGL/dECeYhWEObIrConFAfegBisUb8IjPoBdokyPHJ+nmYhMl2WzRgu7jSjzgi9XC7ZXp81H6k5VgKSQO9cQ+91EPLAQ5Jp21WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA1PR11MB5874.namprd11.prod.outlook.com (2603:10b6:806:229::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Thu, 8 Jun
 2023 22:04:58 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%6]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 22:04:58 +0000
Date: Thu, 8 Jun 2023 15:04:53 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20230608220453.GD6953@mdroper-desk1.amr.corp.intel.com>
References: <cover.1686236840.git.jani.nikula@intel.com>
 <ab7546a0adc8e7a2a2c3fbb9404f68f76b0f2a22.1686236840.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ab7546a0adc8e7a2a2c3fbb9404f68f76b0f2a22.1686236840.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0018.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::23) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA1PR11MB5874:EE_
X-MS-Office365-Filtering-Correlation-Id: b1c120d7-649c-4ca1-f194-08db686c65cc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2eQ4o2L4snA0gGaCWN0PTj32PZoW+aMDxWLH37udoG+q3BEur+nyKIocBaWqBDje1OdsEaHOvqMW1x/dobx/wrrr9oL/Y5dkbrepTG+qmuR/NBPHG9gp78d/BpUGDbdF2IATQ95UG/8Qc5QjM0ROTKFvUmJofmvmGGiu1ymOojOUBylL8zyocc5ezgwg7VG1yUz1P2CUB+VUHnJeejae62ygUng5NaqIDmBADZNJ8VlBLqesHSdjx20RJ6GAOMVmEk0a4ZZrm/m8l+nTMhBFWSaoseZczTKRdAnSdJo2xuVTxC8X/w0oySpjFiI1lR3RZY6YlhxZVUW2CawY8j/y33qhzDsuJwUosb2CX6NHuI0HGwALKVh+19N8Wr2D9NctsipCWprlGW+1OK5VC8+BOlakGuiY6VzLI4amFB+stBNE/Kg8MS2POUM3IIfPe71SG1TJlADkiXshL4unpitviFTMVozzaI34wTiSemphMJ5oEv661CF/Mz8ZaSNwy2wONJ7VTAoOu/sGrWMntBOFsJR62atDWDa3O1+g0vVdYqrsHl/1f3EfahPBW4NJoKFX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(39860400002)(136003)(366004)(346002)(451199021)(83380400001)(478600001)(82960400001)(8676002)(6636002)(8936002)(33656002)(66556008)(41300700001)(5660300002)(316002)(86362001)(66946007)(4326008)(38100700002)(66476007)(6666004)(6486002)(2906002)(6862004)(6506007)(26005)(6512007)(107886003)(1076003)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eyFEiRjwCHzeS1dQ8DzZYfsTPyejpxlsbqK9SJxaEGTpwqNb2GER+4FnhXlJ?=
 =?us-ascii?Q?aIvLznvsBfB1qDMjl7SCN0spYcdr1ufmnZhEOmkfV+im2lr6eQt1jUJfzD9e?=
 =?us-ascii?Q?0UnZFaGY1bEjYrSHpZhwZ2LiMh7kshK5It8vXtxaiHZWUHLrSkN/bfOO28fo?=
 =?us-ascii?Q?8k9wWu9bqI+Z1kOw7rsKhzH9pgKOPyraMLhjL024Dpzon9Gz8+nQdzlVnzs4?=
 =?us-ascii?Q?m8Jiv+LKgVbvZ5Vf+gJVG2QiE+kSWjWTWqHTryUw4czgD5MwsV2hEKVX4jxk?=
 =?us-ascii?Q?oXglJwEdPiT96kZ4ZH4ppWTXOaxndYSJZc4d+Zvh4oWSYbQNvzTZBngv98yf?=
 =?us-ascii?Q?xQA+qIt3f92SMK0M/GiHWKTzzoGgZY0lMkzgDJAT11hnvsFLqSXf1Bdtqav8?=
 =?us-ascii?Q?JScoB/Oukd3IsD5xE//Sbnx48+IPJfjhzSSGP2B+BEp7GPmvQEjD4GbuQaH3?=
 =?us-ascii?Q?8VLnh+T3End3C579Fl/TH+6Q7DUqmwmS+6NG1i/p+W6k8ObL6M8+tUnBeNQy?=
 =?us-ascii?Q?bEMfQlR01L+voMzD0eKn02PFYDJ3DULW9a919kkV56uys3MOHEVhefWGT298?=
 =?us-ascii?Q?ClRx5BDQwV2i2fAJN52jIs1UnSfj6xTHFAmCkk5sHQDfc2+SQkBCL91z9nhR?=
 =?us-ascii?Q?tQ3n7E8f3VucOozbUqsBQrYx1/NXhk5xZuy5yORfnhTtoGVj7fCaek0lSF7k?=
 =?us-ascii?Q?oN0hGE27HzeDIxxQIiFYoezYiEaU/AhcIfULURSn4U0xE2Woo4NXGHEsAXvQ?=
 =?us-ascii?Q?pujiMJX6hLGiGzNEMjUHDei7yoATLfppwALlX+/tojkqI2PEjfZ6qtkmTsjf?=
 =?us-ascii?Q?Z8RVXRnVyEuDD8NkNryGaHoTv+FT7Sq2LzhAb9uL67lKqq2XHQhHSB5eThsJ?=
 =?us-ascii?Q?a2RYR5pyOzHnYQx/jez2ts4WzXVWNlUTFdHVxJgaaFoCb8ONogw9PV00PsK6?=
 =?us-ascii?Q?IN2CK86LqqBSYi47IuJZo5aJO91XwT6NDHRrd7JWHJkGCR65TgKzcDk9UPJi?=
 =?us-ascii?Q?F2Ue+tFnYBxcaYkiWSuJoVcUAeR2ILZDumKihXkz0AJPAdlV8/KBT4OYc8jx?=
 =?us-ascii?Q?6SzstdLM63l0yHnTxZdVh5nV/ufKmPmP0gFAM05Om+iIq/0qT33H8sgIBf88?=
 =?us-ascii?Q?xfWwmbbxWck9aQucTDq1nMSOJr/Cx41FOwBC74ENch1GQuP0MNiUC7/ZVAYL?=
 =?us-ascii?Q?WeRc4R10LADBmnCj1lMuI9Jeku7dLZn1kMtRcOnX95q+UCphcZlhjPGzRfgf?=
 =?us-ascii?Q?LV9GO5s8M2cdSXa0tOpBEamwH2Cz3Rar/GARGYv+Gkjcn4rizeiT0I6qwkEN?=
 =?us-ascii?Q?hZ0SCSqdNN9o6NbvIrCFhlftKORznqJ0N1NCaTfaDalWWqVi/qMY8dLflXH9?=
 =?us-ascii?Q?5iKPVfoOJE6gamQXwMceETDApg3R0N6wj4Vp7AWFCHHizTlVJmWynY5eDFH/?=
 =?us-ascii?Q?g7ssqDxhwzUQjQ37qV7kBNRm6VGX8kPwiF862NC3G5fDiiEUwcRVx1yamJs4?=
 =?us-ascii?Q?s43WBC+/n9tXGLEl+lZyQqz4Q4yec34/7tmIidJfW1XOmWWNnnHh2Af2CVwk?=
 =?us-ascii?Q?uXjMziKvkHYBCDg9I6BpGPPkaajrb2Ms0Xrb+vWuBWT3+zPcB4aQNzJ7qatI?=
 =?us-ascii?Q?jw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1c120d7-649c-4ca1-f194-08db686c65cc
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2023 22:04:57.9537 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GUH/lzaxYmqhk94kdqM+tEMAmGx0tKD3BqpB+NX2bAedwfMYbUGhLV2O94kml02FwAO/la/Q2poiI63Aad1i92ng6gOIJLh1SoEjb26fTgk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5874
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: move display device and
 runtime info to struct intel_display
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

On Thu, Jun 08, 2023 at 06:09:04PM +0300, Jani Nikula wrote:
> Continue moving all things display further into display files and
> structures.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h | 9 +++++++++
>  drivers/gpu/drm/i915/i915_drv.h                   | 5 ++---
>  drivers/gpu/drm/i915/intel_device_info.c          | 7 +++----
>  drivers/gpu/drm/i915/intel_device_info.h          | 4 ----
>  4 files changed, 14 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 8d2243c71dd8..a65ed8a52ce4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -19,6 +19,7 @@
>  #include "intel_cdclk.h"
>  #include "intel_display_limits.h"
>  #include "intel_display_power.h"
> +#include "intel_display_device.h"

Minor nitpick:  the includes aren't sorted here.

Otherwise,

Acked-by: Matt Roper <matthew.d.roper@intel.com>


>  #include "intel_dpll_mgr.h"
>  #include "intel_fbc.h"
>  #include "intel_global_state.h"
> @@ -429,6 +430,14 @@ struct intel_display {
>  		u32 state;
>  	} hti;
>  
> +	struct {
> +		/* Access with DISPLAY_INFO() */
> +		const struct intel_display_device_info *__device_info;
> +
> +		/* Access with DISPLAY_RUNTIME_INFO() */
> +		struct intel_display_runtime_info __runtime_info;
> +	} info;
> +
>  	struct {
>  		bool false_color;
>  	} ips;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index b457a37e67c4..2d8331d435f1 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -205,7 +205,6 @@ struct drm_i915_private {
>  
>  	const struct intel_device_info __info; /* Use INTEL_INFO() to access. */
>  	struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. */
> -	struct intel_display_runtime_info __display_runtime; /* Access with DISPLAY_RUNTIME_INFO() */
>  	struct intel_driver_caps caps;
>  
>  	struct i915_dsm dsm;
> @@ -407,9 +406,9 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
>  	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
>  
>  #define INTEL_INFO(i915)	(&(i915)->__info)
> -#define DISPLAY_INFO(i915)	(INTEL_INFO(i915)->display)
>  #define RUNTIME_INFO(i915)	(&(i915)->__runtime)
> -#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->__display_runtime)
> +#define DISPLAY_INFO(i915)	((i915)->display.info.__device_info)
> +#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
>  #define DRIVER_CAPS(i915)	(&(i915)->caps)
>  
>  #define INTEL_DEVID(i915)	(RUNTIME_INFO(i915)->device_id)
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 53d316804071..d51bbdbe53ab 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -387,7 +387,6 @@ static const struct intel_display_device_info no_display = {};
>   */
>  void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_device_info *info = mkwrite_device_info(dev_priv);
>  	struct intel_runtime_info *runtime = RUNTIME_INFO(dev_priv);
>  
>  	if (HAS_DISPLAY(dev_priv))
> @@ -397,7 +396,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv)) {
>  		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
>  						   DRIVER_ATOMIC);
> -		info->display = &no_display;
> +		dev_priv->display.info.__device_info = &no_display;
>  	}
>  
>  	/* Disable nuclear pageflip by default on pre-g4x */
> @@ -440,8 +439,8 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>  	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
>  
>  	/* Probe display support */
> -	info->display = intel_display_device_probe(i915, info->has_gmd_id,
> -						   &ver, &rel, &step);
> +	i915->display.info.__device_info = intel_display_device_probe(i915, info->has_gmd_id,
> +								      &ver, &rel, &step);
>  	memcpy(DISPLAY_RUNTIME_INFO(i915),
>  	       &DISPLAY_INFO(i915)->__runtime_defaults,
>  	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 069291b3bd37..c8b4bee5e592 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -29,8 +29,6 @@
>  
>  #include "intel_step.h"
>  
> -#include "display/intel_display_device.h"
> -
>  #include "gt/intel_engine_types.h"
>  #include "gt/intel_context_types.h"
>  #include "gt/intel_sseu.h"
> @@ -241,8 +239,6 @@ struct intel_device_info {
>  	DEV_INFO_FOR_EACH_FLAG(DEFINE_FLAG);
>  #undef DEFINE_FLAG
>  
> -	const struct intel_display_device_info *display;
> -
>  	/*
>  	 * Initial runtime info. Do not access outside of i915_driver_create().
>  	 */
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
