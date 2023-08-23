Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 514C3785F22
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 20:04:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BA7310E0A1;
	Wed, 23 Aug 2023 18:04:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13C9810E0A1;
 Wed, 23 Aug 2023 18:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692813842; x=1724349842;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=buDKeLzOPkHoX+xByPnBgw8hKHUei267rrRxjiZ1XgE=;
 b=dtgxaO4pMnaKAI8z0Sfp4ucbh0wq50vPQJ6saqGx3Y92W2U317DNJH3E
 QX/9XVD2nDf+72j4FrMLhdFRI15ElLKVuTKDi9OiBkgqeTqO46VGYSkdZ
 PN1X1VfM8Z9P2BX0UT4HOSvjbC+kmh9EpAa8xiHBFnSAlhKk8f5+Z024v
 TzsHnikebNGQTaFc6L6Ts0jH25C1uE4r1hc+7ZwRdTKGqOfD8uMRWb5ve
 tkJL1Bl53qKKR0J6KEMRO6mpyJkCf2UjVNisIdBUE8JpDouF56JfNhRa2
 MvNfCaPTKBdHRYE55BZPk4kUKmqvxUpELxbVJkkk7udUCVwXdQQHgJ4fA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438160073"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438160073"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 11:03:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="686550933"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="686550933"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 23 Aug 2023 11:03:56 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 11:03:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 11:03:54 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 11:03:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NBHxzq1sWhdd5qwFFI2k2D6N7GNQiVhzK0Dp83YuBuayfzQcO7AeI56Hc4OH4Y0aCfzOJdRzMMy3Mh+fw2geU+frwfZ2PjT4wlqy/pdOymeVBkzwDKMS7WzlZ8sSOyGQOab0KDikMKDilminoyE3S2bJuL6pstFw8UiSd8Yd83CcDbLEezy9bDoLUyyScmiA7C3F+woybI6AU54e1X9+w8jb/788kNPz8Q1leen7qhfgin7waG+/dt/Jz2Cner7VOhHkryhXQfB2/+LTT3gwVMAHl3KW2JO5rCpPyb3CDG5XM1Ao9eFLrllM3ymMtUTlQUzqFz1sSOxsgxvVdRCBKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JEXxMGgGoAvcHcU5hj/IHqUkXyqpqXT88lGQS5hCA34=;
 b=TELMz/BHw1AVGII6pkr+ZUcutmB4ODanVHsXW30F063tbyX25dJ2TOGgJQi+ajExVVa1tBiDibuM8/nmANHJ6kOKQBnK4dxLCpVYpycd/fgJmxr26pjLFeviRL4Kx//0S6LOOUsdqdPOrSNCAK/MEs8OyIq8IdIu9AjWH1ddTXgGcwnpD3fnJzwXX5oJA+vgcCQ/42s28jXVMRhYhpZokTdoPF6MNKQw8JwVVGQ07EIC+1Jh8Muj0znjKD+l3j076V97Skt1zT/D9aEe7EqqKBNjiFzAOvqvGnEzK8y81oj9f7mmu84s5RJ/FxN/gOaqiTI7ljbBXhAERkztT7cwGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7340.namprd11.prod.outlook.com (2603:10b6:930:84::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.26; Wed, 23 Aug 2023 18:03:46 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 18:03:46 +0000
Date: Wed, 23 Aug 2023 11:03:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823180342.GG6080@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-13-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-13-lucas.demarchi@intel.com>
X-ClientProxiedBy: BY3PR05CA0032.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::7) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7340:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cd55071-fb5d-4661-7866-08dba4034b94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZCMCnVgewWzZ0gOvx6q199b40CbdrTAp9+rTwmi2hWckZ1b9e7oIcJD/6jxzHXAJsIXGDRismopSfOxLLBSIRmUoQ0FCpQ7JkbKYg12cGogWWH1W+aZBCw7C3y44u+dpJpEbUxfpRg/FYRG45OqYlOqDmwqPhyK93uqUHEQhutkR0AgV4/rgoMq/O43FHXwZIcHp37+RIpE6Z2/p15PhkGZuYO1t4jlW73vWleSF30WyBvN3bf5viWFlULA0pVsiaP8ml2YGZchTvK9wesYVGeHJnl6RW2H8gSnS2SZ9EE42hc6nV68HNn9JX+A8CzcGwQxUpjV4p+Y5gZ2OLFSCgstw2H/9v1P/zilYLCSgKRs02AeN57ig2qUIAoz/fRU77HT/dO/lJ1128mYaCab29fhYZludH/C9xO90oBjkXhqqzmt7wxGNZztxA0Zhx7g7B81ey6+gcz8ovO+HHly7I10GjSx+ydAihfGlUA8WlZ+vukPJm7qalI+XzP3eHEMhUTHPcH4acJ1vnWsWogch2T7UUHrVOOsNHuT6b3UR+AYCHSoWqf77WpEiG8f2lzgO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(396003)(346002)(39860400002)(451199024)(1800799009)(186009)(66946007)(66556008)(66476007)(5660300002)(41300700001)(6636002)(316002)(2906002)(478600001)(86362001)(450100002)(8936002)(4326008)(8676002)(6862004)(38100700002)(6666004)(6512007)(6506007)(6486002)(82960400001)(33656002)(1076003)(83380400001)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+p5CHMArXZ01cVVcwtyL8kC8UgWDdQJkuQcojC6/TT96AUo03cmD46wnMd4C?=
 =?us-ascii?Q?houp0q6lkG79ueGHMmezDgBjbomV/VdCAnigJWweROQjctoL4tajmn0dgLL/?=
 =?us-ascii?Q?TpyM/aFuY3pIWtdlw2R2HYq6gMQhC4CvXZXeSFwkyFJCFVFtTQ/sGW70Tzyd?=
 =?us-ascii?Q?1NWgq2mtsXwYVUBJbh6WJqkk26a4qVNJDqzcAVC2GhMhjhthYZpZ+SOzGTKt?=
 =?us-ascii?Q?/EaT9aGBf0O46p7EhoLrKaaacsOSJuwiKJbSepA0TPG/3Bylt7wUwpypPX2G?=
 =?us-ascii?Q?B7/ARv/VPJFZ+a6z5PYQANQIIsS0lXqj5Yu0DaklBTjokrkO6WPjcDGDmqN8?=
 =?us-ascii?Q?UBc9GXEvMBF8NtI3I3F7ZXoL/ZmJQr2kntwPKCLmtAcMyKKA+rWHBSX+ypkp?=
 =?us-ascii?Q?Retgkg2tukrOXrnaxOhGLQH9FJM6mE6+UvRlAP+fq2U6GlGyIHMmYriEuoc6?=
 =?us-ascii?Q?6+JeZWLc7FwQw3hMT8c/fKrS5eoBk1Ym2eTcgxSsdHXQ4yJROTLRxxeAh+Lt?=
 =?us-ascii?Q?g1LSkSHcb1zI8oTfSDHEjpwx0YBgGKTdtkEkEHN9re6//fAkzoXND9CVmdbd?=
 =?us-ascii?Q?01N9xGrdRJtr9VYUqCqpLwl66c0F7iJMDobPu+UZ3UisvHDa6d76gPHM0C4E?=
 =?us-ascii?Q?YdOgZ3DdD5kf0qqLlyi737kvLF9Xw/ORgtnUTlNaRj6BixGpaiR8tB00v+E0?=
 =?us-ascii?Q?zCueAnb8VaNUBKytDjzmnvt305vxxV9Y+jzi5RjxmlOldb8hA9HabWjF2pXo?=
 =?us-ascii?Q?3zOx8KotVl9Pu4M48/pTGrNwSafxJ6JJjHguSiz1WyOOQtwwRQFBNH1/r98o?=
 =?us-ascii?Q?HA1hpxlLO/MxkG9CIwVyLcn+quwlRP/Frqrag0ypMvCji5frlD7GuwNuQynz?=
 =?us-ascii?Q?DrCxG0HyvnkWcgowPmInde1Z0uImlUBIdWx5TWG+u+EWeqEXlfzHJ2zwZdTM?=
 =?us-ascii?Q?lnJKb8HVJ1LDrLrBPwxVBRyrQBZSBLU7D1qiRzI+2xAp4zuHiXk0U5kEl83A?=
 =?us-ascii?Q?dkBMGNLxufYXLUkCES9t72kLu8h9Dj9+R2OlCw3+9Z05eS7TryASj+Tf4OdG?=
 =?us-ascii?Q?WlQdNHal/XjJf+tgksMeHqa8tWspclcTCVvUYMYq7SSNv4LjrnjL2RiGHRQH?=
 =?us-ascii?Q?8PZ8jrCTOTQd2f0nnxWZsHNvhSt5Arm5UPZ0DFEtdSOnkwUYAL+F3FhwbsmZ?=
 =?us-ascii?Q?r65GCyHpqi8Uh2SQy72zrmA760rkvmgZP6zwGvISQhKWGAgwMGvqXQgRVQhl?=
 =?us-ascii?Q?RKSFodfLxYikPNBMgYWNDwtfp2XEl3DJd4KCPjuPfn1hZk9eH0gVAKLB2OyI?=
 =?us-ascii?Q?ofrd5olG60jTvHrnhgVWoaDLCAgAHzck61ZcDOa8G5Pp5/ptooHjPDf2XaHm?=
 =?us-ascii?Q?I3sFZ7VWrX0bi5foOo4gUEegzuRihT6nqbm7flQ9wYBdkPzSkuiaPiIjzWAs?=
 =?us-ascii?Q?e8hfPdjtep+QrTClXv3xxs/ZbQ8MBHOR6REwbiSvC9czLIz/BtEkNo7FUOZo?=
 =?us-ascii?Q?G6pa9EwNnrjriXbDzyOugYOr7z9EvOHW1BRRmyGgp2LPmOdtSnbFwWvO4ZwW?=
 =?us-ascii?Q?fSFIUr2QbDWoxQzIEL0UQT836dIqAU6KV0bjMYogDQJOMY5TegZpFT7xL7ro?=
 =?us-ascii?Q?0g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cd55071-fb5d-4661-7866-08dba4034b94
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 18:03:46.4502 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t3rb1KqVaf1MDhyY7Ov+9MKzeiX5EuCiEwJ+HO2chKDlfR6ZJqGyDP4ygIMueEo+5mteHnAhP89D0/fZWESSDiL5Fv+kMvlbKq6UOM1tOhk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7340
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 12/42] drm/i915/lnl: Add display
 definitions
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

On Wed, Aug 23, 2023 at 10:07:10AM -0700, Lucas De Marchi wrote:
> From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> 
> Add Lunar Lake platform definitions for i915 display. The support for
> LNL will be added to the xe driver, with i915 only driving the display
> side. Therefore define IS_LUNARLAKE to 0 to disable it when building the
> i915 module.
> 
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_device.c   | 15 +++++++++++++++
>  drivers/gpu/drm/i915/i915_drv.h                   |  1 +
>  2 files changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index f87470da25d0..b853cd0c704a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -727,6 +727,20 @@ static const struct intel_display_device_info xe_lpdp_display = {
>  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>  };
>  
> +static const struct intel_display_device_info xe2_lpd_display = {
> +	XE_LPD_FEATURES,
> +	.has_cdclk_crawl = 1,
> +	.has_cdclk_squash = 1,

XE_LPD_FEATURES, crawl, squash, transcoder mask, and port mask are all
common between Xe_LPD+ and Xe2_LPD.  Maybe we should add an
XE_LPDP_FEATURES macro first, and then re-use it here so that the deltas
are smaller and it's more obvious what the key changes are with this new
IP?

> +
> +	.__runtime_defaults.ip.ver = 20,
> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),

With Xe2, FBC is supported on all pipes now (bspec 68881, 68904).

> +	.__runtime_defaults.cpu_transcoder_mask =
> +		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> +	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
> +		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
> +};
> +
>  __diag_pop();
>  
>  #undef INTEL_VGA_DEVICE
> @@ -795,6 +809,7 @@ static const struct {
>  	const struct intel_display_device_info *display;
>  } gmdid_display_map[] = {
>  	{ 14,  0, &xe_lpdp_display },
> +	{ 20,  0, &xe2_lpd_display },
>  };
>  
>  static const struct intel_display_device_info *
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 07f79b1028e1..96ac9a9cc155 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -574,6 +574,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
>  #define IS_PONTEVECCHIO(i915) IS_PLATFORM(i915, INTEL_PONTEVECCHIO)
>  #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
> +#define IS_LUNARLAKE(dev_priv)  0

As noted on the previous patch, we might be able to drop this completely
if we update the fake PCH and gmbus code to match on display IP.  Given
that PCH isn't even involved in south display handling anymore, that
seems like it might be reasonable?  If anything, we're more likely to
need to match on PICA ID (which has its own GMD_ID register) than base
platform at some point in the future.


Matt

>  
>  #define IS_METEORLAKE_M(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_M)
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
