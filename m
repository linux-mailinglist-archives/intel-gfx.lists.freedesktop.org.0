Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4209278609B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 21:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59E010E0CF;
	Wed, 23 Aug 2023 19:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8E2810E0CF;
 Wed, 23 Aug 2023 19:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692818891; x=1724354891;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=qPgXnIofQA8bHPtDQBVov8et2OYYcXaKByKl9DKU24U=;
 b=jd9yEw5jtXOYW1eFNSvY2HJXe7u+8zxu2w/b5vmlfXtJ522o9RlF2xZo
 MBKNZDTu9vUHVg+5UzswArT9ZbU4iRyfS3HabsrLRVmrRbB7VwNy9he03
 Ts1FJ21iAtM0sNM7gGEI9dcevmq0IDaWQAiQEnIJ0zXt52T77whb+fD0/
 03IWO+padKHfBxRfJYUvAixz4/gOovCtpyFe/dth+TkIgJylMe3keOLsp
 rCGNQF0KjyaJ9keaUCD09qbNJZOsSJNhdhfXj2+u1Um/6xO17ACAjxZ39
 Ygx3oV5Lwl9w4sJZHROBFDg1ZvRckC08X/RV0lK0vgDnfgmZletl1lB8d g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="376983146"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="376983146"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 12:28:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="766259216"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="766259216"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 23 Aug 2023 12:28:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:28:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:28:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 12:28:09 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 12:28:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PywxEKf2PCyEw7sjfk1HXG4AroMqgIgHnPIKTNyWE+JNBOx6aHLKESZtFPIxdlqF4m+LkSOuNgL/OPTlyTCFQnpV4dZE28HDR/pl3ieF81eWWQ+f1UCGCW9S8oi1mWAToXBYiDoXYka40Hi+9z5mmRIXGSHrd+r9z7Kip7fNP8fUv2Jom8eIvJeN/LLmjlDWVWZpC043mXrNpm39m/jmPdlpbe2j7FfFsuoiaq+L1L2PZ6cH9JrTHny2i6LjCN58efWMY9GMreaU5l0LuDHCG+5IC/Ud94b/ZCoCQ9bLBVwVTsJ6HFLfxYMtjnQeqw3oQzTtHuiu2TWv6GRzcbxrdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O89bj8sGcvC+whtMQxPfvsV+83blx8z4B4G1QJgnIjw=;
 b=OV3QSAeSn0AlXb2lkBmPX/ju4q6g4e6CC2uTGio4BdFIra6WbBdCz1vdKf6nQF8vwb/iqu4neKZ9pR3wjRsegqWsyuo0jtbQYDqE+HNY28PoUh0x07Qeqc/qVMSrgKGX1PRmdOd5qKQN7NRMeWpGgdKy4ElJZfF7rGIQOu6C9rGYPDoGFcrGhsMLxWq9DcOeoYW8xX6PcE65FpW+livjGO0OSbFkmywJq85SwAtzHHJOrDNEO+QtXb15cekPrkckBykeFavCUDYKfj/pDCMtRWO4bwlABUigwG/mhAMTxIBhs+IgWgvcKwwTAmWTvEkHmH5yN+p1K8QtbWCSvX/w3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA1PR11MB7365.namprd11.prod.outlook.com (2603:10b6:208:423::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Wed, 23 Aug
 2023 19:28:07 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 19:28:07 +0000
Date: Wed, 23 Aug 2023 12:28:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823192804.GC1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-21-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-21-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR05CA0095.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::36) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA1PR11MB7365:EE_
X-MS-Office365-Filtering-Correlation-Id: c839b576-4b42-4899-3be4-08dba40f140f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IS44Zc6Q6lhzlIuGf0K6mh7j/xTj68Ha/d3QN/sOt/fUp3ThkxEJg7imDmIm8mQSAWR6nx2o1kbCFp+DUxtSoT410FY11L+n1SyRFGY4dBKhoa/NKn2hY6I4BNMzmQwK7pTbCklsJugHvx87/ZSh6/KW7KSdoJMMWOXxp2kL+NyONceWAw5E2sqhL20I1sd+D+frv3H5nGAUTD7jLxM4p6ub2cJFT0HlQ592nQIfDhOwSEh/821AgTYwZt6Ro16+0ktfdAqK3QxyWjdee+NXuoJiBjwT07SxcCUScnVBCmi/c5FWryggSHe/oh6ZgP5e7Ev49mJsXHg985SBag8ccyQCI50wPK7Qy42H2lsGm/pIQCmuXe+NkfCSh4m4nR6saYKfmD2ToDRfzcZUu9wCNI4pG5vhoXKx2UHyUPfjp3DUUIpziiueIU8fc/OL+JG58zVwtEczS9/WQqAIa1JjM1FclhuuqXWKDj4cye7UNeww4D61gyWx6e4w03N/ElRat6rxmhB9pbN3w7mE9MJTem7KhQvh3rhPpExZ25VwAEDeCnlHxKmt24EF1rVVszZV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(136003)(39860400002)(376002)(396003)(451199024)(186009)(1800799009)(478600001)(33656002)(86362001)(6486002)(6506007)(66476007)(54906003)(66556008)(6636002)(316002)(66946007)(6666004)(41300700001)(6512007)(38100700002)(82960400001)(8676002)(450100002)(4326008)(8936002)(6862004)(5660300002)(107886003)(1076003)(26005)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XuuRV6UFYOVVvFcyOfWOS0SoZOUAGQfAU6NCje6dnfxaYu7H4JC9iX4Edoku?=
 =?us-ascii?Q?ylJ5SIvz1wI5+9jCmDnenGxGhQrOR26T6sY6/PuCAFXQDuvx4Bowb6d0gWPm?=
 =?us-ascii?Q?PIrwuy9JdhxjrC2EHao2DfyqUEgn/wqZytVtwEx0OQObJx27E9XWTCQu7EyM?=
 =?us-ascii?Q?qunYbcQE7Ep5cs7uhvCsp1i+cUieaCmNUGCZbku4YHfzhzATxiTXTg0HY7yK?=
 =?us-ascii?Q?TovHHS2+dhvGX1JtJwTcXbdZbnoIaUgyqPlmldtPxKjrfI2PEZn77nZzofyD?=
 =?us-ascii?Q?g8zbi80DHtPLCpdMsFsgmLj662UHW5iayZ2e1ISS7PUfy4aP6i2N2OueVRXa?=
 =?us-ascii?Q?ohlOebCiU6P8AfJyLz3GYnuDHGYYI6V8RsfK3Yk3aeEEWlhjZ1JXldmLixUX?=
 =?us-ascii?Q?lP7ypNNrhXVnykZS7NucuFd3EEesBsZujHwJwJrIyaInGWAeDofjf1zV2OGH?=
 =?us-ascii?Q?9Y8cU02VlP1LJ16pw/gl9ofAl3j+uY0M1j3cFpARPC00eHHDvOg6Dta5TGuB?=
 =?us-ascii?Q?1r2rOw5Mdjqpjrvz71HP2q5K5r5LF6k1MHyKlwNnDAgMJqIOkacU4gFr3FHK?=
 =?us-ascii?Q?i//FK/YRi3uHQvEdnbNh3h9TaXA5QhquAtRMi8jF2W0A7Rr1nEhhXsKvS4f2?=
 =?us-ascii?Q?hEI/te3U5QpceppqRmAHU2Hw6+crO/mzgsuZx5+gTkZiCr+rE/Wgd0/1nkGN?=
 =?us-ascii?Q?n1JTngg0CozcI+jHWBlxkyntIj11bX2+CsP87v0kzR/72SCAxgsovaqeKy+M?=
 =?us-ascii?Q?BJrmFzuAZDAlRH4szYvKvN74E5D47yx6WeqTvezrZzs46xriz+8uV8gRN1CE?=
 =?us-ascii?Q?JwcT88sg7wO5qW8UJUg99QlhJZzeJM8Ay9h88KaXMXZ0NKB8v+b1/x4gvUt8?=
 =?us-ascii?Q?P5dMTDjm/9uQ0VFyjVsskXcrShE+KER386UnLtS8ePq+HGLaJliZGSo7WCum?=
 =?us-ascii?Q?8quvy7I8zzrc4k8+a4NAWPmwI+mKHjm2HFycP6/FyaYIErXVCEb3Yoc+bhFw?=
 =?us-ascii?Q?Agh4jz87PNnNYy4GyajQma+jVwtid6bHJUXfrAQlUGo2EZBW1Q9TyC8zwlea?=
 =?us-ascii?Q?Yt2cTaGe5KtLHyoO+9tpy7UBcAxdijg1E+iZ9vEj4Ipa7LSrnBMX15Ek8NZw?=
 =?us-ascii?Q?uwRN4fsH0qHysyH88BAt2pLmF5B7idaSSFkQBpvj/ShBhGV+3fR3MZvbfN5n?=
 =?us-ascii?Q?0IRv8+sokussTJRl9IEgkrl7cq9t5vFHBqhKxNuk+oQnz+57D4szV52Vz8HC?=
 =?us-ascii?Q?BaO4H+ssNQLN+rKdvoxQBZMelrJ+kz++5t+dsy+YqpMjcqeIRZ6MkFxmMN5y?=
 =?us-ascii?Q?ADb27ZN9VowX6kTc7pkJ9ICINZZbhRCjJexkU8zFI8pQ74/XgiLIby3K1PcF?=
 =?us-ascii?Q?aQP66G5tpqF+BaPdi43GFCA6CVwZ89SjmKcI8pcZjt9vfPa1Y56sWr90kCHW?=
 =?us-ascii?Q?C4/QFa4VWNMr6PjsKAR3KITdTwGQnm2tTcVraV2BWoM7MA2pCdpSAO7UMlpZ?=
 =?us-ascii?Q?Htexs7WLzPMHtO5ugYJR7YDP4iqkmEpdbNMh4lpOwYqxY2PTrQ9Oh2r2RXv5?=
 =?us-ascii?Q?KJrRcDlztn3iINgSkii4twSO0JBPO/STmKJ7L41j7cAyqwsRWsMoy6nSoab6?=
 =?us-ascii?Q?VQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c839b576-4b42-4899-3be4-08dba40f140f
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 19:28:07.4533 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zqV3vfz36oGhomaqpLT0r4vuEvL3XQRffApNU2j39KeYIDxKcyRaX0mgwcy1bCb0Lci3clB18FM8lEk6yn+zzPaYS890pdpjIgEKiDHzmf4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7365
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 20/42] drm/i915/xe2lpd: Register
 DE_RRMR has been removed
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

On Wed, Aug 23, 2023 at 10:07:18AM -0700, Lucas De Marchi wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
> Do not read DE_RRMR register after display version 20. This register
> contains display state information during GFX state dumps.
> 
> Bspec: 69456
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 4749f99e6320..fe2fa6f966f2 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1755,7 +1755,7 @@ static void gt_record_display_regs(struct intel_gt_coredump *gt)
>  	struct intel_uncore *uncore = gt->_gt->uncore;
>  	struct drm_i915_private *i915 = uncore->i915;
>  
> -	if (GRAPHICS_VER(i915) >= 6)
> +	if (DISPLAY_VER(i915) >= 6 && DISPLAY_VER(i915) < 20)

We have IS_DISPLAY_VER() that's slightly simpler for ranges like this.

Aside from that,

        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

>  		gt->derrmr = intel_uncore_read(uncore, DERRMR);
>  
>  	if (GRAPHICS_VER(i915) >= 8)
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
