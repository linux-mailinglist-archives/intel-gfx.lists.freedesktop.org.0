Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B552B7C5A2C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 19:26:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07F4310E169;
	Wed, 11 Oct 2023 17:26:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAD6410E161
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 17:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697045168; x=1728581168;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3T80sqBDnaMBL9zO+mUTnRM1Lwb2rc7zeye0vf3tGJA=;
 b=jp1P54oGWz/Sl7PHiX4zdN3zq6TUyw6/3GXZRZrQFWWREvDEDLACOMUm
 YoFN/9XZnpseeH0rFybkBldlAw8afXP7oxafoeJbqL+hAzlne1bZVmqTG
 hDP4kS4cVUd7rYzuCc/VWJjek2iaGftxdHD/lyUhhVbw3NP0EDKw3dw8W
 O1uuLMfoLP4abzHiQXZLMsNMD/w6LPLbfX8qJQfcylFX3RyPehwKUqL3s
 BBwpXIDDG2vrpOvB6xLcKuhz2yuJoMX4SCBGj4HHg8aswGkETTlEoY0Zy
 XHIjfYp+FvpbDYShpEINKmHab9Q1TJoTeMvPuyssBPEodUmAiEAHxnIhr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="387569412"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="387569412"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 10:25:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="757647277"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="757647277"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 10:25:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 10:25:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 10:25:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 10:25:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 10:25:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a5ESG4TaHY6D1LyTCRNfRGz0b0PNd3q5Red4sxsyjZLJNnUKSQdyLHpfMKUZgFc7DWNxaUi84XRwfnw/1eKzLOrA7mzl5VUz6h1L5iPWWdugnuFWwZB58v8DSJsaKt9rCrVugYisk74KiXOZqY1NgaNWpAnM7HhaqygpSbRL+AuICttwFGA4J5SG6uLAM+b4jIcKcNyg1g/UbM3eYfQ07vMCBxC8s6VwuFKrnKO8+yhs0bHWyqJbbLryOOZhLHErGIAgpD614oL6LYro+Z6efSG0+CS9QlX7k9abhK64MK7Ud90rHc3Itej2eZ2E4k39QESGxyjHqdhaxYABxDmmiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RlZiy/DA53vpnZ75pvEadb70//zC7EAn32W1IZUNpRw=;
 b=Crpl1S3BZTXCgmtnje6iWWZygG9hFhFpKqgdW//ys2NsJ71SpJYN9B3u/ELhw0hQ5twOtPjVBnLsIi4pOKXTa01EVVP5P7sWm1Bx4B12q2hfis2muOdmoskSllcc+btt/ZPqCxLA8OX0wUm31iD5RkkkLIMq+/W2YoqLyF8Yc/KwgavnTLgtxDssUfzsIFFs27BiPRL5Jr7oqkzpiJk4WxoQAvQAVUVseA62AiQ895TyNXr2bZitRvRoVPkYH21bUKvd5wjAqOhwrpn6emBnaarV9d3adj+Iu2oARnjqcqSts3e2pBdbgHUACnTBbuzYmVmnjvc8fzvqhjnGY45G+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SA2PR11MB5145.namprd11.prod.outlook.com (2603:10b6:806:113::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.44; Wed, 11 Oct
 2023 17:25:46 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 17:25:46 +0000
Message-ID: <37d6e578-f63e-4299-92af-6be1b1e66993@intel.com>
Date: Wed, 11 Oct 2023 10:25:44 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231011163830.1055517-1-jani.nikula@intel.com>
 <20231011163830.1055517-3-jani.nikula@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231011163830.1055517-3-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0010.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::15) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SA2PR11MB5145:EE_
X-MS-Office365-Filtering-Correlation-Id: 5acf40c9-347c-49a1-15f2-08dbca7f1b14
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GoW7UnnJd9zdRqrRZsds6OPR5b1DD3FFhwUCzKBlyWyc5v6EVjozWuAb3Rg/1qYvk8oZx6MdrNiVPi3O/6icmgqaLBKtsadAlbra+e6j29uzjrbjikCz6Q7hMCGM15891WYwgL9jvz5GpjHVW7DhlCBxPZOdtdFOw2vEcO7RwTlyovNYAOgfHxhPizt+uODwBOfe4oc4geilS7QOVZOcbraEQz8Pb0qZAl6CDgPehs+VkSx+qW8tAd8aP5lHWCj4MW504D/jKl86ab9bSEoaN3z/gXM9p3wS5wUvcYg/QKXM4YiuSO69v4Ii2/3e9xKamDU8jX6NVg2qkcPqmgzSg44zpr0fS+GwumkBuDoj9x8FKD2eyfM2ojdIMbme9NJum35Le+SAWx/+41gcqlBnwJ82cFbJcIM477FSJbaDNH7SR6sKwhxm64vr6YOBT4R7DD9YFEMq9EpsCnqIbo++W98rFsa4Xa+HbIvczFwKwQb1KLzUWkuhBwdJDkotsCUy+DyYPBYxSAI1wo9z6UCL/Mlf+JZbUxRH83OZvG/7PUTekaxdGuTjb5wY46rKidWMIYSve9eoQwuwKYsGlozwZc4NSFzcDsAG994tyJEM9hMlyEV+wyyrFrRm615f73322iOVmafeo1cnvKvuLF6fuw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(396003)(346002)(39860400002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(478600001)(38100700002)(5660300002)(6486002)(66946007)(66476007)(66556008)(41300700001)(36756003)(8936002)(8676002)(316002)(6512007)(26005)(31686004)(2906002)(83380400001)(82960400001)(2616005)(6506007)(53546011)(31696002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aXQrallxNWo0MzN1bmVvTkpxTHdxOVZ2VjZIYVNuUVVXcTAwNk1SZ0IwUmVY?=
 =?utf-8?B?dlFhWlFEb0JqekJHRkR6bndacldENE9JR0p1d2dGQlNnMVlKUnM5K1hGK0tI?=
 =?utf-8?B?b1d1VHEzNVAvME9UMzhsQ014dmhZR3JDUWF5R3gvR3puWXNMVjhpbWFKbTRh?=
 =?utf-8?B?dkhMNEt5dnJnZGV1VVVLeHpQWEFtVGR3VHF5ajJXWkdScURraHVNQm1wSDYv?=
 =?utf-8?B?Sm5oMWxERTB1UzRsRTVzVmNIL3pxYjF3OUtNcWh2aGlZTmxYOHlEV0JXUFJI?=
 =?utf-8?B?dFRPOXlWbEtsN1ZRcGViOCtwaVM5SkVFQmdOOXFDUDdnTWRlbEtSSkhxUDRy?=
 =?utf-8?B?WTVhT2dia2N6aEh3MGUwakJWQng1RjRwd1BqYzRtUmk1S1Y3Nk9iNWxIbnhx?=
 =?utf-8?B?RDBhd3BqSm0ybXIzb1pYd0trbXYxV3ovd2x4MVZ4N21mVzhvSnQyWWJ6djlm?=
 =?utf-8?B?Qk92S2dHR0dKaThSL1VkeGNFeDBjR082TGtjMnBPWkV1bG56UmdhNHNieVFM?=
 =?utf-8?B?a3QreWNPUXlQN0tDL2gvVzlSY3RpVlBiNEpKeUtNZ2xsQ0pqTXhFUzJmc2FJ?=
 =?utf-8?B?MjhJcURuTGlaZmdzWkdNTHdlVk5aU2Z2TGVEQUNRdm9EWjhaak1PeGVER2x6?=
 =?utf-8?B?WU1SZmRVdFlLcFRwTVVlSFZNMXVWa2lJUG41Um91QUg2MDJIS2R2Z0JXMVA3?=
 =?utf-8?B?MktyVzNqR2xROVBOZnhzaFF1MEt4YUR5Z01HYkF1Sk1BTm4rU3g1OGQ5cFlT?=
 =?utf-8?B?WHFiK3FNc1QxV3FQZWtSTFFzNmoyL1JGVzVQUEFwOFNUUnFjUnNPRDNlK3dC?=
 =?utf-8?B?c2RXU0d0ZDFNT2pTM0ZyU3EvaFZ0NTVyN1JNZThHZThRcXVtUm9NdkI5YlNP?=
 =?utf-8?B?eVFpVmhVVjZSblJwU2xienF6eWZiOFdnaGRSNGR2c1BKMlIxc1N0ejhZeUlJ?=
 =?utf-8?B?S05jWFZVMGZreldvd09FQkdUTmNvOFVUQ3pUNXpZVXR3d1kyUFFKTXJEWjFk?=
 =?utf-8?B?ZFJUSFo5Z2x1cFJ1a1hESFdGbkRuVUwzd0VuVTMwdkdnSzIxZU5paHRuVkI0?=
 =?utf-8?B?MlJIcXNTYkJTY2EzaHFDQ1JTUkFMWm95RVFINUhRRjNXS0ZndzlnNFBteTVw?=
 =?utf-8?B?ZjNlUS9Xbmd2dDRray9nTk81ZjE5VEg4dElSSzVDN1NUVU56NHA3OUFaQStJ?=
 =?utf-8?B?VjQ5TGpMZVZuVmJER3pDUm9OalFoeXd1SXB3WlV2RDUrb011KzlMKzhQSVpp?=
 =?utf-8?B?WmZqRHFVUXJROFpyMzhvakczTmpkNnFsOUVjZ2xPRGZYKy83NkdFYXFkWVRw?=
 =?utf-8?B?N0NVNmdraXkyTXI4UGZJdmVTbzBMQm10QkNEZms1Y2VsNXByNGZ1dXdzYS9k?=
 =?utf-8?B?cy8zY3dlU1QvUUdWekhvTFRWRk5EcEExMENqODQrYmlDT1VxL1VSTWtSRkVV?=
 =?utf-8?B?ZjRrNUNiQjR4VlMyZDJlRVNGYk85WnNyNGNWM2xIc1p5a0p1NnZXVVZmdkJG?=
 =?utf-8?B?cVU2V1lUYWRjUW9KK1RIVUNoQTJrdkZUQXYvcFEvOFh4MWJJcWRTUnNFTmo3?=
 =?utf-8?B?aFlFeGNSaUNJZG1iVFVhbjhPdmZXWTZOYWJ3SEpWdDRxZm1IVkNmS01ZWk15?=
 =?utf-8?B?N0FyUXhoU1NPNDFEa0dhT1FOVXBuaHo5ek54R3pXSk03WU0xNVM3bkJ6K0Ry?=
 =?utf-8?B?Zk8rM3AzZWFIenhaWFV5aWpiK1lWNU1uWUllWFNwSkpGS2VrdUpSSC92UXBx?=
 =?utf-8?B?RDRCSXBuRUdNb3NhUkIrTkk2dkkwY1d1ZElTYmtJMzc0cDBqT3RiSXYyMkhK?=
 =?utf-8?B?UXNYaFJXWmhOTFVoYVY3MHZpRUpIbWRtVERVQW9QbXV4R2F2aFA4SDl1cWdx?=
 =?utf-8?B?NitXd1JLYnppL3RyckVBWEhPOU5ETUsxamF2UFI0LzgzdEUzbWhHQTdHNFdK?=
 =?utf-8?B?L3lmb1hGeE45UHF1UHJzSnZpWjMyVk9jYksxMzZKU2dsTnpseWhqVHVMUXNY?=
 =?utf-8?B?TE9wYzZKVlV4d2xxc0dyV1BmNEVSNlNXaDQ1N0llbjZ3R3lFSE1yMW5may9m?=
 =?utf-8?B?Y1BjWmpyNHpRaXdONTVwbHNlY3d0N3c5dThLL0RVaEtST3ZMbXl1S01ZekxC?=
 =?utf-8?B?aDVCUm1EYkVvTGtVVGJsZzhsY0dIaC9xOHl5TGxIdWEvWXhkY09vT3ZhRG5D?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5acf40c9-347c-49a1-15f2-08dbca7f1b14
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 17:25:46.8377 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /dX8blNglxf1V3XlYfuErCS9iTuVw41tyiV3qY2Ppo2Rlert3oiYr6Aa/94ABSxkXJRpDYxP2ua+AIkMON+ULkT0S5FVrdgQYXDsiKDWRqo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5145
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: move gpu error sysfs to
 i915_gpu_error.c
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



On 10/11/2023 09:38, Jani Nikula wrote:
> Hide gpu error specifics in i915_gpu_error.c. This is also cleaner wrt
> conditional compilation, as i915_gpu_error.c is only built with
> DRM_I915_CAPTURE_ERROR=y.
>
> With this, we can also make i915_first_error_state() static.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_gpu_error.c | 75 ++++++++++++++++++++++++-
>   drivers/gpu/drm/i915/i915_gpu_error.h | 17 +++---
>   drivers/gpu/drm/i915/i915_sysfs.c     | 79 +--------------------------
>   3 files changed, 86 insertions(+), 85 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index b4c8459deb7b..f9e750217f18 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -57,6 +57,7 @@
>   #include "i915_memcpy.h"
>   #include "i915_reg.h"
>   #include "i915_scatterlist.h"
> +#include "i915_sysfs.h"
>   #include "i915_utils.h"
>   
>   #define ALLOW_FAIL (__GFP_KSWAPD_RECLAIM | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
> @@ -2208,7 +2209,7 @@ void i915_capture_error_state(struct intel_gt *gt,
>   	i915_gpu_coredump_put(error);
>   }
>   
> -struct i915_gpu_coredump *
> +static struct i915_gpu_coredump *
>   i915_first_error_state(struct drm_i915_private *i915)
>   {
>   	struct i915_gpu_coredump *error;
> @@ -2484,3 +2485,75 @@ void i915_gpu_error_debugfs_register(struct drm_i915_private *i915)
>   	debugfs_create_file("i915_gpu_info", 0644, minor->debugfs_root, i915,
>   			    &i915_gpu_info_fops);
>   }
> +
> +static ssize_t error_state_read(struct file *filp, struct kobject *kobj,
> +				struct bin_attribute *attr, char *buf,
> +				loff_t off, size_t count)
> +{
> +
> +	struct device *kdev = kobj_to_dev(kobj);
> +	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
> +	struct i915_gpu_coredump *gpu;
> +	ssize_t ret = 0;
> +
> +	/*
> +	 * FIXME: Concurrent clients triggering resets and reading + clearing
> +	 * dumps can cause inconsistent sysfs reads when a user calls in with a
> +	 * non-zero offset to complete a prior partial read but the
> +	 * gpu_coredump has been cleared or replaced.
> +	 */
> +
> +	gpu = i915_first_error_state(i915);
> +	if (IS_ERR(gpu)) {
> +		ret = PTR_ERR(gpu);
> +	} else if (gpu) {
> +		ret = i915_gpu_coredump_copy_to_buffer(gpu, buf, off, count);
> +		i915_gpu_coredump_put(gpu);
> +	} else {
> +		const char *str = "No error state collected\n";
> +		size_t len = strlen(str);
> +
> +		if (off < len) {
> +			ret = min_t(size_t, count, len - off);
> +			memcpy(buf, str + off, ret);
> +		}
> +	}
Can this and the debugfs equivalent not be common code? It seems like 
the implementations are conceptually the same even if the code currently 
looks quite different.

John.

> +
> +	return ret;
> +}
> +
> +static ssize_t error_state_write(struct file *file, struct kobject *kobj,
> +				 struct bin_attribute *attr, char *buf,
> +				 loff_t off, size_t count)
> +{
> +	struct device *kdev = kobj_to_dev(kobj);
> +	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
> +
> +	drm_dbg(&dev_priv->drm, "Resetting error state\n");
> +	i915_reset_error_state(dev_priv);
> +
> +	return count;
> +}
> +
> +static const struct bin_attribute error_state_attr = {
> +	.attr.name = "error",
> +	.attr.mode = S_IRUSR | S_IWUSR,
> +	.size = 0,
> +	.read = error_state_read,
> +	.write = error_state_write,
> +};
> +
> +void i915_gpu_error_sysfs_setup(struct drm_i915_private *i915)
> +{
> +	struct device *kdev = i915->drm.primary->kdev;
> +
> +	if (sysfs_create_bin_file(&kdev->kobj, &error_state_attr))
> +		drm_err(&i915->drm, "error_state sysfs setup failed\n");
> +}
> +
> +void i915_gpu_error_sysfs_teardown(struct drm_i915_private *i915)
> +{
> +	struct device *kdev = i915->drm.primary->kdev;
> +
> +	sysfs_remove_bin_file(&kdev->kobj, &error_state_attr);
> +}
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index a6f2a7518cf0..68c964d6720a 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -323,11 +323,12 @@ static inline void i915_gpu_coredump_put(struct i915_gpu_coredump *gpu)
>   		kref_put(&gpu->ref, __i915_gpu_coredump_free);
>   }
>   
> -struct i915_gpu_coredump *i915_first_error_state(struct drm_i915_private *i915);
>   void i915_reset_error_state(struct drm_i915_private *i915);
>   void i915_disable_error_state(struct drm_i915_private *i915, int err);
>   
>   void i915_gpu_error_debugfs_register(struct drm_i915_private *i915);
> +void i915_gpu_error_sysfs_setup(struct drm_i915_private *i915);
> +void i915_gpu_error_sysfs_teardown(struct drm_i915_private *i915);
>   
>   #else
>   
> @@ -396,12 +397,6 @@ static inline void i915_gpu_coredump_put(struct i915_gpu_coredump *gpu)
>   {
>   }
>   
> -static inline struct i915_gpu_coredump *
> -i915_first_error_state(struct drm_i915_private *i915)
> -{
> -	return ERR_PTR(-ENODEV);
> -}
> -
>   static inline void i915_reset_error_state(struct drm_i915_private *i915)
>   {
>   }
> @@ -415,6 +410,14 @@ static inline void i915_gpu_error_debugfs_register(struct drm_i915_private *i915
>   {
>   }
>   
> +static inline void i915_gpu_error_sysfs_setup(struct drm_i915_private *i915)
> +{
> +}
> +
> +static inline void i915_gpu_error_sysfs_teardown(struct drm_i915_private *i915)
> +{
> +}
> +
>   #endif /* IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) */
>   
>   #endif /* _I915_GPU_ERROR_H_ */
> diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
> index e88bb4f04305..613decd47760 100644
> --- a/drivers/gpu/drm/i915/i915_sysfs.c
> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> @@ -155,81 +155,6 @@ static const struct bin_attribute dpf_attrs_1 = {
>   	.private = (void *)1
>   };
>   
> -#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
> -
> -static ssize_t error_state_read(struct file *filp, struct kobject *kobj,
> -				struct bin_attribute *attr, char *buf,
> -				loff_t off, size_t count)
> -{
> -
> -	struct device *kdev = kobj_to_dev(kobj);
> -	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
> -	struct i915_gpu_coredump *gpu;
> -	ssize_t ret = 0;
> -
> -	/*
> -	 * FIXME: Concurrent clients triggering resets and reading + clearing
> -	 * dumps can cause inconsistent sysfs reads when a user calls in with a
> -	 * non-zero offset to complete a prior partial read but the
> -	 * gpu_coredump has been cleared or replaced.
> -	 */
> -
> -	gpu = i915_first_error_state(i915);
> -	if (IS_ERR(gpu)) {
> -		ret = PTR_ERR(gpu);
> -	} else if (gpu) {
> -		ret = i915_gpu_coredump_copy_to_buffer(gpu, buf, off, count);
> -		i915_gpu_coredump_put(gpu);
> -	} else {
> -		const char *str = "No error state collected\n";
> -		size_t len = strlen(str);
> -
> -		if (off < len) {
> -			ret = min_t(size_t, count, len - off);
> -			memcpy(buf, str + off, ret);
> -		}
> -	}
> -
> -	return ret;
> -}
> -
> -static ssize_t error_state_write(struct file *file, struct kobject *kobj,
> -				 struct bin_attribute *attr, char *buf,
> -				 loff_t off, size_t count)
> -{
> -	struct device *kdev = kobj_to_dev(kobj);
> -	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
> -
> -	drm_dbg(&dev_priv->drm, "Resetting error state\n");
> -	i915_reset_error_state(dev_priv);
> -
> -	return count;
> -}
> -
> -static const struct bin_attribute error_state_attr = {
> -	.attr.name = "error",
> -	.attr.mode = S_IRUSR | S_IWUSR,
> -	.size = 0,
> -	.read = error_state_read,
> -	.write = error_state_write,
> -};
> -
> -static void i915_setup_error_capture(struct device *kdev)
> -{
> -	if (sysfs_create_bin_file(&kdev->kobj, &error_state_attr))
> -		drm_err(&kdev_minor_to_i915(kdev)->drm,
> -			"error_state sysfs setup failed\n");
> -}
> -
> -static void i915_teardown_error_capture(struct device *kdev)
> -{
> -	sysfs_remove_bin_file(&kdev->kobj, &error_state_attr);
> -}
> -#else
> -static void i915_setup_error_capture(struct device *kdev) {}
> -static void i915_teardown_error_capture(struct device *kdev) {}
> -#endif
> -
>   void i915_setup_sysfs(struct drm_i915_private *dev_priv)
>   {
>   	struct device *kdev = dev_priv->drm.primary->kdev;
> @@ -255,7 +180,7 @@ void i915_setup_sysfs(struct drm_i915_private *dev_priv)
>   		drm_warn(&dev_priv->drm,
>   			 "failed to register GT sysfs directory\n");
>   
> -	i915_setup_error_capture(kdev);
> +	i915_gpu_error_sysfs_setup(dev_priv);
>   
>   	intel_engines_add_sysfs(dev_priv);
>   }
> @@ -264,7 +189,7 @@ void i915_teardown_sysfs(struct drm_i915_private *dev_priv)
>   {
>   	struct device *kdev = dev_priv->drm.primary->kdev;
>   
> -	i915_teardown_error_capture(kdev);
> +	i915_gpu_error_sysfs_teardown(dev_priv);
>   
>   	device_remove_bin_file(kdev,  &dpf_attrs_1);
>   	device_remove_bin_file(kdev,  &dpf_attrs);

