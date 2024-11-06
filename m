Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC78D9BF37B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 17:43:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55DB110E732;
	Wed,  6 Nov 2024 16:43:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Adc+xDYF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7A8310E72D;
 Wed,  6 Nov 2024 16:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730911398; x=1762447398;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ePSDB3xvmwOA9zVO6RdIpld6iUcK5n+RNUtdB81Hnrs=;
 b=Adc+xDYFF614ZexLvyIyom1ptpraaLmfovxY3t5Tb5s27lgqC8uiHokH
 y6SbCK3xiEpfUd2jlQ880lWxCVx0VA2WQoW5rF7HfyuX+cdaFEFOJhyDA
 2QDGYHu9noXPBGBKVgJZshP1d3SA+UMQoDT6yvqAE+F98DK1DBzllKXF9
 gL8I9w+u4iV0JD80y6vLYvIUls4S9nnUkxTuizV9Le0wupiZOI/DJK21d
 9uNKnW6Xfx0QTyVzbgYc/OzBvDRb0bNP/bQUzlDT7jDkOcNaz90cQj4vo
 fFmuKr3a/Gt1FZ7YVibJM8bFGTu6TGmtaaXl/3xWE35Gel1oFJIptgtFc Q==;
X-CSE-ConnectionGUID: lGDMb3DzQMGh02Qx+qLr7A==
X-CSE-MsgGUID: toanyVO8S6iOixrqMtmlPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="41341135"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="41341135"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 08:43:17 -0800
X-CSE-ConnectionGUID: d33rL5c0TQG54/Oz8MhGCQ==
X-CSE-MsgGUID: ip9ZwvpPRBCXpg8VzOogHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="89498337"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 08:43:17 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 08:43:16 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 08:43:16 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 08:43:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kh9+HH+eFF5KnjPiAGScF3h30m4oMxbAxWAgCK9s3+wghLVwBrPU9rwjygyvYtRAg3xTcjN9nCtYWKdGT97slfFwUD25anfa5NM9FUUl2ChBT2aHjSvte62sLEKPHsdjlb/eMxWgCxsIPs3Hvwq+rtfg/7BoTokb9YoI8pAloSLdeO/wmp6nSSE1nN1xfKGZsMjz6h/38e8klKzL+S8fiN5g0g4Da2pSfnjNkdz4HW8uWFfy4x0sQsauX6zXUyqjCz6lYrGIbESk4neDkL3aXAsmqwEUIRgiU0JmvNU/QGzEngkAyy4BMW6OJwkdt9W+941OHVLpK4psuTktbUr33w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HLeTBvtDye/iH27jwMAAef8TPBSJl4p9/qMyzDa6uPI=;
 b=KDpJUVg1YD09n/yzaHKnZDibmP+D/WDzp3UxbOQBJ/HFnzTLnXpTcCgP2sDIWFcydsN4N7F3Wve0N7x95uu4/f3dKoWAbG5rapP5xwdPK9cRnWNXjf7URyrE1agpwPIQeKy2/kvrK4TUW8NPoNyh2XsAWJvL61Xnzg7v9rgC1wsFpAId6c1qqAseN1vepuqrhKdcfPfauS3BQw72UNoxAfUVP6ctl0eY1OuodWpQ034eCQB9mlq5uYlna4U9ZMoCcSQ41xyObHLu3w47200VrXZNZ6VGEnN83dnpFYXyXs1JdRDig7z2nzZQMB0letn4gBxkpUPQ2RQtE5SO/zjDTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM4PR11MB8225.namprd11.prod.outlook.com (2603:10b6:8:188::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Wed, 6 Nov
 2024 16:43:13 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 6 Nov 2024
 16:43:13 +0000
Date: Wed, 6 Nov 2024 11:43:10 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 01/15] drm/i915/display: identify discrete graphics
Message-ID: <ZyucnsTEuMxrQeCg@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <833bffea68615ca823bb412e9e2edd6abbcfafcf.1730740629.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <833bffea68615ca823bb412e9e2edd6abbcfafcf.1730740629.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0146.namprd03.prod.outlook.com
 (2603:10b6:303:8c::31) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM4PR11MB8225:EE_
X-MS-Office365-Filtering-Correlation-Id: 1df9ff72-b6d0-4403-cb6c-08dcfe821ad5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?l81TaS6R+x8tnHH1VlWpL6wXdf7cbPGwJBTof45fOKVeEXlEzz4JqaJn60y7?=
 =?us-ascii?Q?9vwTKUbd9g1rnVngu4OQcV4txneKP9ht6nI/m40AG20/SDvtF7DvzlKUJBYY?=
 =?us-ascii?Q?6PgMIllbLiuv2RbGZC9C40Dors/eTtNYNQsf6o5tWB3l1vRU5JEVyysRDR9I?=
 =?us-ascii?Q?yOrohKfHbpHG90fmjP2U/30HZzyURMVGfyo4GPfgolZstpGCLR2RBSa1zJLw?=
 =?us-ascii?Q?V4MbQJ/Q4ZVgOSkNUt5T67JhtjM2IgxxAg3dwBrwOPMueei64HgxmbEmUMEc?=
 =?us-ascii?Q?MqHOdmmCkQLNwu5PYQaf/qa8hgqzdrQjJQeNOgeU4AYEbVmS8MtaAnjmNtHS?=
 =?us-ascii?Q?lQIw+KpDfqFDgR2tr9M6gyXQSYOKfyKPa4ixbq1rbdRUfv3wtKYbPL2GL6lQ?=
 =?us-ascii?Q?m4JN0hWJ5Hfn7bvnTUGGnIsMnFZBPYBCLmOErzigaBWGTGAiOBmN6ZtkrtJo?=
 =?us-ascii?Q?VvnnGO+zPL2A9YX3THIJiXPpNUMWYkzB6QBEPVmhyzct+Ztp0MaIDXaPPjqa?=
 =?us-ascii?Q?wLBvqDTxKKY5iXdJE8h/mY1BFbzqIN+kUvV7ZId+NUgWEmHRHBvmLVkJ5rSI?=
 =?us-ascii?Q?9kZoZdQEshGA3yR0v+EJmHfWfWJbm8800dy3TOv3o350DijHXJqfJR1iY6RV?=
 =?us-ascii?Q?aQyMiQDeQOpGrrEaXeFfZhn1MlQSBCAyQF/IfDKFecNyh5N2YHv45kmJ85sf?=
 =?us-ascii?Q?h2Mv5GbMnMvDWCUgJoib6CAjbAgfbyebArL5iTJODWW+iq0Bshezrx0SNqSk?=
 =?us-ascii?Q?OY5GLrVFx4IVnJG3hAiSV5IX10VWRYOSAS45UFtbgKPnnSitKUxlvPOpq+ci?=
 =?us-ascii?Q?nEbey8obPkrerphE62P//2IxjXEDkpYMdk6XVEvKuk7iOmQZwfs3BvrBouMq?=
 =?us-ascii?Q?NtFFOvFoeTvSo2PkODOLa989h1EVpIbYfBTVLX+QWwz7xiOIpqGUvCNEZqJo?=
 =?us-ascii?Q?niXgJjIo7JS/8wb6kP2Fma7GV52jPQsw2YKgDQQsyl8cgZ/81Oz5+Qk5RL8H?=
 =?us-ascii?Q?5iyhoV/H8iTttQivzDlN70pTZhlSxYrgaVFVLshxCl3I0XN5pu9ts+jr5YQK?=
 =?us-ascii?Q?SfWS8Shh++G9ClFtE16yctYnjXD3KQrx9dftj5rY4WJcIBv+U2c1QWJU5sqr?=
 =?us-ascii?Q?lK6yrI2oov0PNVhQNhBA492pcd8pYOXtKot3hzcae2neecoCDAf+OKEtFeww?=
 =?us-ascii?Q?E7PqYJ6C7ACYkmZE1J/dWGiDQVfaGGw7jlnZOFqzK5QrgD+1QTxEFuTZywQO?=
 =?us-ascii?Q?xHEYpNP5Vu5NjzPD5ZC3pFxq1ei/gckAcUeyRODrfvkkCaFJAomMETHv2IWM?=
 =?us-ascii?Q?FzKrni0ogvIm8kFPjQ6wV+A3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ylAVNYEPbLx0eqXElovYJcRwYM8dfo5G+cCZcvYcfJ5iyXnXDq2FfH81VpAK?=
 =?us-ascii?Q?wcePg4I3sFJTGQJvuxf4PMNmvjDdTgp1p1euPGYxG/EznFI1TT5nH6a4AHJU?=
 =?us-ascii?Q?FaXB2aNUPs+TFKbWdrxdKNz15UVW7DrWETnNVincJEOko4ametGfVDqnH0JA?=
 =?us-ascii?Q?1SlAovT0EVcOUfPY1Qgj2Nd+tDFiaQpWfoxFqtjwSDmASsZDMcnQEPaZ5R9m?=
 =?us-ascii?Q?zwZ3Xf45zv44sHWpwEb6zpqHSXbsqxZnVRH1AkKXlubuO3yx19ZY0/PxvjAk?=
 =?us-ascii?Q?+GCeS0HTr6UyTtf5wOQBUOZEeOBaib8mqhCT5GsawVDpQJsdZ1WKHn8CUNtD?=
 =?us-ascii?Q?MjoStO8XnkO8x2t1jYV5MICg/K6+jcq5e6EcQ4QZI2d05A6F1fAjmBjBAkX1?=
 =?us-ascii?Q?0XRBbL/qkcSnCitJ9+ccOhQiwyEh4s6KCvX/D53Hg7++6VXl4Fupa7ffsNNp?=
 =?us-ascii?Q?fhBJSv9fy2dl1h2K2y38XTlTe5BoOEQd+jVmGVGabeoy+2psecU5NsrIbZ8S?=
 =?us-ascii?Q?hEOhbH5WKbq+WyRaDqsJaIFyMXPiM7EZ5yGmq0vt4EUa7FNLwh41KK+2mP/M?=
 =?us-ascii?Q?i0glo2VrX/PgTk/DEfPB2tELEagjFv9ix2bDEGpggzq8XwSR54gEfXgJP7LH?=
 =?us-ascii?Q?eNyjVzW/XeCU1s1EvrKdnRKtZOeo7jeZRn17PsiKI1oBoYpBh37z+bSlvUhr?=
 =?us-ascii?Q?cwQBwBx4pj2ZkbAWW+8xrPkUelAUuwt/DWiiq2k+FboYzDVk40ovyRhD80/G?=
 =?us-ascii?Q?RTVkHtyvqpbxLRmni9mEWRPl5zbhwEgp9wnI1/XnHFQ887x6mh/IJNMpQ764?=
 =?us-ascii?Q?SPtHdAOYbBLq7XZNKW2iESG9JhVUV/a9VMOoJgbA42ByYzKJi+zHJczrkLaV?=
 =?us-ascii?Q?AaJlbqTKIYE+7rRF72EIn2AWk01/Td/8jv/gO3OMmsv+RQrX0w/UCNHcPkhO?=
 =?us-ascii?Q?A/cniZcLlLqrhM7EnAS+FBiER/y//gFUpT4dpA3mUVFJa4BiqSM6zHQaFKHk?=
 =?us-ascii?Q?0yJGdGh46ugtdwcSD5ySZrc8kRk8vGLXP8yem+35O7uvhR8moXMzTwN/4cNF?=
 =?us-ascii?Q?THfKLpoi+vms1iO7vYW0LMcfq1A1nAWogZp1rk8fP1MNxQVoFqAjXSwmIPL+?=
 =?us-ascii?Q?+OrUL4IzfTVBkyqVBd0AaG0qVaepGdfBzNvhks8P3XxLiAbPdj/qvddkJ2Fi?=
 =?us-ascii?Q?/mbQAtNqlJdN+0o7XaNTx0KYok0W+AoVmgGYvc4xomTIaQqvLgN5sicQEqc8?=
 =?us-ascii?Q?gf6hAOSbPthxUoqbiyM3b4Ks1noxz9h83U1QKDMqHSOk/9lwzy4VaXUrLTt9?=
 =?us-ascii?Q?NYSaWbdz4MKkkkIvIRbjZSHuH7F5q9o6fam0CU2mUBVSa9V4JT9pcj7u2KRT?=
 =?us-ascii?Q?VxN2LX96ORDD/SF7YaYfjAlw0Kap1pHnU2z4kwahRkpJvmTFUg6bkvodNPtC?=
 =?us-ascii?Q?RWsW64nzBvb/NrjzQaPpex4kmg7TEr1wG73AqbtUiqokGGfZbHxhxxFI72ul?=
 =?us-ascii?Q?UdqH2N/PYrl2yaXjs/3h9xy36vuYqiGWfgYTuEUToFkobTXHF9sA487mdoWS?=
 =?us-ascii?Q?iVjsSiRYBasOqg8MfCtzQhlGXTtLboLi4B1ncbRROMuBfR3FcBpK2CDrdA9r?=
 =?us-ascii?Q?6w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1df9ff72-b6d0-4403-cb6c-08dcfe821ad5
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 16:43:13.1915 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9+iR2NIzg+3r+vgy7dGYO2VPARxA5KpZteIuffGDtyN6oMMwlR79f+wed+EOzy6jWHPl63IzMrxP0kI+j47VNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8225
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 04, 2024 at 07:19:15PM +0200, Jani Nikula wrote:
> Identify discrete graphics separately in display, using the platform
> group mechanism. This enables dropping the dependency on i915_drv.h
> IS_DGFX() from display code.
> 
> Start grouping platform groups separately in INTEL_DISPLAY_PLATFORMS()
> in anticipation of more groups to come.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 8 ++++++--
>  drivers/gpu/drm/i915/display/intel_display_device.h | 4 +++-
>  2 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 5f98e1b2a401..47957384d56d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1011,6 +1011,7 @@ static const enum intel_step dg1_steppings[] = {
>  
>  static const struct platform_desc dg1_desc = {
>  	PLATFORM(dg1),
> +	PLATFORM_GROUP(dgfx),
>  	.info = &(const struct intel_display_device_info) {
>  		XE_D_DISPLAY,
>  
> @@ -1238,6 +1239,7 @@ static const enum intel_step dg2_g12_steppings[] = {
>  
>  static const struct platform_desc dg2_desc = {
>  	PLATFORM(dg2),
> +	PLATFORM_GROUP(dgfx),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
>  			SUBPLATFORM(dg2, g10),
> @@ -1338,6 +1340,7 @@ static const struct platform_desc lnl_desc = {
>  
>  static const struct platform_desc bmg_desc = {
>  	PLATFORM(battlemage),
> +	PLATFORM_GROUP(dgfx),
>  };
>  
>  static const struct platform_desc ptl_desc = {
> @@ -1636,9 +1639,10 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  
>  	DISPLAY_RUNTIME_INFO(i915)->step = step;
>  
> -	drm_info(&i915->drm, "Found %s%s%s (device ID %04x) display version %u.%02u stepping %s\n",
> +	drm_info(&i915->drm, "Found %s%s%s (device ID %04x) %s display version %u.%02u stepping %s\n",
>  		 desc->name, subdesc ? "/" : "", subdesc ? subdesc->name : "",
> -		 pdev->device, DISPLAY_RUNTIME_INFO(i915)->ip.ver,
> +		 pdev->device, display->platform.dgfx ? "discrete" : "integrated",
> +		 DISPLAY_RUNTIME_INFO(i915)->ip.ver,
>  		 DISPLAY_RUNTIME_INFO(i915)->ip.rel,
>  		 step != STEP_NONE ? intel_step_name(step) : "N/A");
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 43144a037f9f..392fbe29e974 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -21,6 +21,9 @@ struct drm_printer;
>   * platform.
>   */
>  #define INTEL_DISPLAY_PLATFORMS(func) \

INTEL_DISPLAY_PLATFORMS sudently doesn't sound a good name anymore...
but no better suggestion or other thoughts and I like this group thing

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> +	/* Platform group aliases */ \
> +	func(g4x) /* g45 and gm45 */ \
> +	func(dgfx) /* discrete graphics */ \
>  	/* Display ver 2 */ \
>  	func(i830) \
>  	func(i845g) \
> @@ -38,7 +41,6 @@ struct drm_printer;
>  	func(i965gm) \
>  	func(g45) \
>  	func(gm45) \
> -	func(g4x) /* group alias for g45 and gm45 */ \
>  	/* Display ver 5 */ \
>  	func(ironlake) \
>  	/* Display ver 6 */ \
> -- 
> 2.39.5
> 
