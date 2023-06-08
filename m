Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C24F728AEA
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 00:09:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C9C10E61A;
	Thu,  8 Jun 2023 22:09:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A880510E0EA
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 22:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686262175; x=1717798175;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aSDQuGQ1OlN5/s2PH8kmlLol0S7BPGnvGdptlrp/MZ0=;
 b=NJuufYUxXiBEU3ebgE4Dn9blluptxHSZwTS11KD1tW8k6mSd5o/y1XQJ
 JbQb3HrNCPiGvxARtPZJyGWKjlts5c5lw/xQ10qgQ1vTO4WEhwDAV9k0n
 M2NXUVd6P56rpfKZw0sR++dbPR1vurKkcdEDGiauQRK3P99D5hOFAzJg3
 22yjb0Qf5aSDXKuGVOS9xMQnD81iAgzMt0r7C6k8TKwnsm1LwrmqlzssG
 djBPtbTtB9l5PnKVRWAIQbrr9m6jtHcQ2maWEUUCLVgFFr9DDRorZ6iEq
 9z4Fy5B14n9ohr5RBBNi+003v8XGDZO2pzWEG0dSteAG8WHWCQj40dAMQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="337803074"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="337803074"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 15:09:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="780059880"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="780059880"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 08 Jun 2023 15:09:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 15:09:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 15:09:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 15:09:33 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 15:09:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=arGL3jWjjMm+1GE8+d7cjFeYV1UHFvyvx4OMLt7NlaEdU4vXioPbwilUuGHhj6Pu4MSW4AJibJd9Bj0gq0N8O3bzluKVbjv2CQiJum7/yjsePhoRsZ0mTUCPxpDdk2Dy1pxUOQuhoc0mSh6UuTl3TJQGEEMIFlq/UvLBDNhnXwDK6Pn7cG5iEfMahTKEZJxYOZkyoIbGoPyISpObwd5lsTaRAUqWRdKozU+er6SXZHOPF95E1JgmkrASKfsc4r10dsnSR7x3Y24Sc6C+D9WL1rXfhWgULZs0idRsgUUqDoa4hunR07HR5r8BK0rP3uOEuJR4ORS9APwKoBpaeWTf+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fA5oFbVmI8dx66JNQA0lvmqc3g64iZA94Mpv1aFduic=;
 b=YTYpCwTlM/jTYuvwBvCdbyGvlTroGvugzfIgqerto1h+Dz4jeDjvkcasbXNh4sEsdnLJ4UeBAfYHStbaOWnXVmgoB70sWIweVPvMUPGLRfLFnSI0XPr0ajSj925fOGwI/tgjH+VQpV00M6+L79Y2fAqnlfB3M9LK30OmuMLBGY8I5JOQG6Y/kriwe2FpaiHV0PKV/PiwFbsqCrUdQr+yfb0euWs3FtKyGB0PAUbW+LU975oQ0Ba3EJZTlID9bYPRJQpgZlFdgFF2Lo9btxeSOASJMSowgorAzGs2PQJa48i+m3urCdPOkQSd9A64OfoAEnWnFgDbvjeMdK3nTdx2dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH7PR11MB5863.namprd11.prod.outlook.com (2603:10b6:510:135::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Thu, 8 Jun
 2023 22:09:33 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%6]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 22:09:33 +0000
Date: Thu, 8 Jun 2023 15:09:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20230608220928.GE6953@mdroper-desk1.amr.corp.intel.com>
References: <cover.1686236840.git.jani.nikula@intel.com>
 <0badc36ce6dd6b030507bdfd8a42ab984fb38d12.1686236840.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0badc36ce6dd6b030507bdfd8a42ab984fb38d12.1686236840.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0117.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::32) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH7PR11MB5863:EE_
X-MS-Office365-Filtering-Correlation-Id: 767d4e0b-67a4-4a88-07e5-08db686d0990
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oqPxQEKCY5Xstg2aMyQFByrtQi+8CB8lU+x5vbn43zKgVbG9uK/Zgjk/QEbp3doCooIH004cb9hCWQBWi/E98mdwCWiOnhkQzG9lmNtDotT610h0/l3o2tpz8yVnhNsuSRTojWpFuaXRAHCHKP8kT0TMATA0BpKK0k4RV0tG3w8dMXvrsUH9rvY0m5vn3YC4rLU6R3RhSiIAALOo33hkLAvbefjwSSh/7HD+uxKlDsAayLy42M4bWKJTG6ZzgCrhfvuU9qkhah0IiKtVuG0oStAFmBgbHaZnKah2JOVwrn1g/aWWOsHVf5ylapnxrc8aa9Xa94F95pDybdKojaMHJoq9tLTLCYKpKh8+axiLBN/UBQQPv+TBfZOebmuurOoPVy4PwKv7+K2Z6gV5ECzebJOJrSXHjaB0D1fppkOYUUJVqBnDIZuZPmF7nTnGTQtcXcbHCadkRsqkd3+gpmELvKs2gL7yC3bFgkpf8kK39dxze0mUrcL8rrLTLvgXz4ueojaOB5GHu6dD0HMSRNnS2Q9QmlMSBWD+KvqhuZUHIF0E6UOTIKwIW5fx5EwBLLFR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(396003)(376002)(136003)(39860400002)(451199021)(186003)(83380400001)(478600001)(6666004)(6512007)(6506007)(1076003)(26005)(8936002)(107886003)(86362001)(66556008)(316002)(6636002)(5660300002)(82960400001)(6486002)(66946007)(2906002)(66476007)(4326008)(33656002)(41300700001)(8676002)(38100700002)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ru76+MA7SGLrCLtPl20vdvZ2y7Rg0gDLy+tDxYBwDe2ERs1fYMKUl/pE5QFq?=
 =?us-ascii?Q?meBH6/Ow8eB5l5pn/hVapknVCeQwarpwtMoiy73tK/OnWO/2YmTe8+L6QavQ?=
 =?us-ascii?Q?P+cc2txATf2mmbp/r3J1LT/Y9CQMywfJZSiq+bOITK3AO6oYWfPiVhiSxDNo?=
 =?us-ascii?Q?GKD+wdtZVGXmtlp9wu4PXS+1E2BycUlWh1N+sYEukokZPWoODdQanOE6Q/nS?=
 =?us-ascii?Q?USXvAPSjwiKcNHBstJWRSyPASbdTmda/F/9n4zkwCZ0YJFmVipRLxVQN0Ud6?=
 =?us-ascii?Q?44zE8XXIHs6HjVPxMCC88ZCszr0YbbGWgZO3j8FFNd2lYmVgvlDtgCC0D7KF?=
 =?us-ascii?Q?xWKo4xvE/OMjuGtTmAPStCQIakxUBjXbVqFhvgO1AZXvOBCSf+EmoHvAgMwN?=
 =?us-ascii?Q?LL2t41Jw4hJbIiFTuYZ85JTwXXRZMq10h2Eil3nW+U3MvZJ3F9Ec9MJLkhCW?=
 =?us-ascii?Q?XfBUsXCVN8XIUkpC492H2fWsv9JbJH6gEeAVEP3oYnTghan4MbTkW8VVMOH1?=
 =?us-ascii?Q?9+fUwHVba2TzdIOq5Aq24pbI+Wl5ZE/wbTgKoTaZ36384u6kxAXnkv+r/OBb?=
 =?us-ascii?Q?S+/f/H7IAxe2a9H5dXQ7N+nGyF92/d+vISOhG8kH7G9QONXKi80euSslMa10?=
 =?us-ascii?Q?GSlY7EoqoPrrI1eygpN19QqaKEZqZ8Wx/TN/AozsHc9hToTGuTeQlt1e03eK?=
 =?us-ascii?Q?iZ5TKrXy+ho1OHCmUxG90WEud8MD4bMRoR+V9spIIZeQj1elN6QOe7WS6kj1?=
 =?us-ascii?Q?/ag+M2XcL4pJ1dbMF9XuVZzL9JK7dgYeCvyCjhse52snle3OYJLsLpricpsT?=
 =?us-ascii?Q?O4gcJd8EbBSDcRvhUo6kHwUskxtNYcFlxxN3cx4VZpfKSlsXFrgy3YtR2f53?=
 =?us-ascii?Q?D8KsRczm+UbDWpPVt+CQodPBO73+Xeh8Kvl3Sh+OHOmhaWDtaP5id6lT9OI1?=
 =?us-ascii?Q?eTxl2MIHhqb+e42Dn8XwzVURvZYjwlQghXnWVhwXeIs24ADOHruop1j9Iid9?=
 =?us-ascii?Q?s+f57g80T9bk+BIP1hDtWY+21+yeOK0rh4u0+xTvtiBKB/GZjoWtsKLDJzfr?=
 =?us-ascii?Q?CDmW6Q+cZTWtIcG1/N067hx9wFxsGhkVLK0ZZfGh0LpGmgJ3e4VnAgqFp/1u?=
 =?us-ascii?Q?MM6Hap8fWOOTKzMZ/OAghMICS1xaENRX6bT9D4gLKAOFisOgLrVZ8HlFRps7?=
 =?us-ascii?Q?I/fCdlga/NyYWryp7Dxfm41B5i7/FgfpqOAs97CrQJ7BLBzj9Q4BL6mESS/s?=
 =?us-ascii?Q?9R1GR5cNN9XY9RudwGxrYCiiwqYicfI2e1NVEE1EnDQjcDxA/e/nTu0fPYI5?=
 =?us-ascii?Q?ml9LuqrG2pyGA18JxUPSJWlLPhCE5dr4RykZhY8PNo/BD/8equ4eTdflS99f?=
 =?us-ascii?Q?zgvEfS/KQlCsYU+5njRNrIxU1asUUt02eP3cKCFk3arejP8plXc21tLdxUPu?=
 =?us-ascii?Q?zXYzeXS2igoa1O8+b/YFh4uBMJRx2aXsN04uXzSwvK+DaVLThR5cDm5mAxmT?=
 =?us-ascii?Q?4NnWEc9p8oSaxeM4tk4OcZ4xaXaOSeZz0luzZNEjT8SRPw0JP/yHz7EikGyh?=
 =?us-ascii?Q?WYHvARFGPq123U1/Jj+N4p5cohsjjVPS48eir5WM+cMcgiODBEgRW495+qeF?=
 =?us-ascii?Q?0w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 767d4e0b-67a4-4a88-07e5-08db686d0990
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2023 22:09:32.7349 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zk7M7+LskrJuxO+wFTcHJYaR+kVQ1GWztAxfXYzrj0EWBWLbCXzOE5qP5qACiZFctazDlo+etDtdDafNez5vA9q8A+hiutmACOBVNeKGTa4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5863
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: make device info a const
 pointer to rodata
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

On Thu, Jun 08, 2023 at 06:09:05PM +0300, Jani Nikula wrote:
> Finally we can get rid of the pseudo-const write-once device info, and
> convert it into a const pointer to device info in rodata.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h          |  4 ++--
>  drivers/gpu/drm/i915/intel_device_info.c | 17 ++++-------------
>  2 files changed, 6 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 2d8331d435f1..788438b19e65 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -203,7 +203,7 @@ struct drm_i915_private {
>  	/* i915 device parameters */
>  	struct i915_params params;
>  
> -	const struct intel_device_info __info; /* Use INTEL_INFO() to access. */
> +	const struct intel_device_info *__info; /* Use INTEL_INFO() to access. */
>  	struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. */
>  	struct intel_driver_caps caps;
>  
> @@ -405,7 +405,7 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
>  	     (engine__) && (engine__)->uabi_class == (class__); \
>  	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
>  
> -#define INTEL_INFO(i915)	(&(i915)->__info)
> +#define INTEL_INFO(i915)	((i915)->__info)
>  #define RUNTIME_INFO(i915)	(&(i915)->__runtime)
>  #define DISPLAY_INFO(i915)	((i915)->display.info.__device_info)
>  #define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index d51bbdbe53ab..0ef001d22ab2 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -360,13 +360,6 @@ void intel_device_info_runtime_init_early(struct drm_i915_private *i915)
>  	intel_device_info_subplatform_init(i915);
>  }
>  
> -/* FIXME: Remove this, and make device info a const pointer to rodata. */
> -static struct intel_device_info *
> -mkwrite_device_info(struct drm_i915_private *i915)
> -{
> -	return (struct intel_device_info *)INTEL_INFO(i915);
> -}
> -
>  static const struct intel_display_device_info no_display = {};
>  
>  /**
> @@ -426,26 +419,24 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>  				     u16 device_id,
>  				     const struct intel_device_info *match_info)
>  {
> -	struct intel_device_info *info;
>  	struct intel_runtime_info *runtime;
>  	u16 ver, rel, step;
>  
> -	/* Setup the write-once "constant" device info */
> -	info = mkwrite_device_info(i915);
> -	memcpy(info, match_info, sizeof(*info));
> +	/* Setup INTEL_INFO() */
> +	i915->__info = match_info;
>  
>  	/* Initialize initial runtime info from static const data and pdev. */
>  	runtime = RUNTIME_INFO(i915);
>  	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
>  
>  	/* Probe display support */
> -	i915->display.info.__device_info = intel_display_device_probe(i915, info->has_gmd_id,
> +	i915->display.info.__device_info = intel_display_device_probe(i915, HAS_GMD_ID(i915),
>  								      &ver, &rel, &step);
>  	memcpy(DISPLAY_RUNTIME_INFO(i915),
>  	       &DISPLAY_INFO(i915)->__runtime_defaults,
>  	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
>  
> -	if (info->has_gmd_id) {
> +	if (HAS_GMD_ID(i915)) {
>  		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
>  		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
>  		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
