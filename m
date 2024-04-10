Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C40589E947
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 06:56:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36B0211312F;
	Wed, 10 Apr 2024 04:56:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CPc7z8q2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F14A911312F
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 04:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712725008; x=1744261008;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ceumquPaLZcMJyN9iIf5SUIKn9JIeo8meT8eHPNE6zc=;
 b=CPc7z8q27cy4fEWOEWxU8WDps5e1pbO73vXufof90AdzO7ijeOBj27qF
 KlagOeytEVJ74VDhd2CEFgNBIsnA0b0XeEqGgYD1RFo85FtPvwF/rrXWg
 aIrvfyN87+x0aXEn3b0xGqUhuIsw8lg1qWA4aW9vZMFOf5KKey2N71N53
 aepcWoVeURdE96SeWrh+Q0YgKZg4Lien/GN9wfDjN9aPqJ1ZyDy3nJxTR
 u7Cg3U7PP6V/p3+hVCAjPgr17xGBzfTiyqNNqYRLLag2M9F0dnIt/Nued
 Xekly+anaES9s/DE+NrSQpfU1uaa3AGPyQDpNf6xYutT8ttFONi7vMv45 Q==;
X-CSE-ConnectionGUID: Qq9IqmYKQDCdOQE+e0CnfA==
X-CSE-MsgGUID: vUWPHAn8SuCNS58a1GjbtA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="18781254"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="18781254"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 21:56:46 -0700
X-CSE-ConnectionGUID: 8w/IdJfITFSS3R5P5AHUuA==
X-CSE-MsgGUID: mGBfgy2pQGGmrdO4iO23rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="51649807"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Apr 2024 21:56:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Apr 2024 21:56:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 9 Apr 2024 21:56:45 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 9 Apr 2024 21:56:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RfWw5F+N6w0J9GI7PLy8IEh9SCAKu6taQVM474EWo8QygeDq0ktrsN8smy1zeYGXwCOydq3GNYtCBWGro1ZxGIh4XDe8UH9Qg5stNnVxed/KXnjOpuDD7o/oEJSrCO2x8ZeEk6lQviWWFybtKnLSpdc1nerEhBRsHq8eNAJpYP/wMZHZfp7FJa4Sq1QfcQPgwBQOQT0yZeSSkI/p1VbZxSQ3RJ8MFb47D9b3WbpZtInKfx4W1iwsFlv+4LnKz6ms0MuqCn0hiHH/1dOw0QzhE7etsWrOA0Hdh71bYudUEb+q/14p4RWKmK1htaCSfjBfZ1XUIzp4wncOOjaAezhwgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WGn1aFS2Qlxn3Dx02fsSOHS2rakB5HcvRlUC42ar/Kg=;
 b=G5m97e531kB3EQnRCTO2uQ0PLweSoIv+2D0Dp6/fdK2OWG5nrZvGb4zCNZ2xcbcszjRrCf1fB2Q1rlIlfAk/5iPlxTdsPk+gf3CGL+lR7AYf8XlWPQ8kRB5VA2rK68sLH+FVexS7jaB8orvdKIehwHdEz4DuMApCrWdVk4xeLv4Z4HceMhFmyaK2Yg808j+gbSJqne859o8Lbk+JmBBkPMZNv3XXPyGPL1d0PShvoSJmwC8WYZaG74I9NEO1I5DwLvFLXBm/fhLefrh+YPIKdzDeI+KGVBlb1s6dFlRnCx5XnKM8DN9nAWk66BRoxG9TtzXeYieN3OIKH3j83NqtnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 10 Apr
 2024 04:56:39 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::eb80:5333:fa3e:cb6c]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::eb80:5333:fa3e:cb6c%4]) with mapi id 15.20.7452.019; Wed, 10 Apr 2024
 04:56:39 +0000
Message-ID: <66a4c6db-459f-4442-ae74-4f142d610c12@intel.com>
Date: Wed, 10 Apr 2024 10:26:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Don't enable hwmon for selftests
To: Ashutosh Dixit <ashutosh.dixit@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240410042855.130262-1-ashutosh.dixit@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20240410042855.130262-1-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0062.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::11) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|PH0PR11MB4886:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mG/grOzT8s4HQk2fo0OIfp1wKCxqYCMeJ0P0pI05F3HcqoCqWUNBqMNDpvxu2FIULnuSRostgMb1qpIW38XBB1biVyaahHjZgRDJUGBzVLlHrgbal18wkJqY2oQNcWfU5HqBA0bmpYldSbIYiqtqwTOyzIwPgRoSFdfl6OR0KNAfshysULlgEbUihzL8vtcTCk/rVjnSSQJ4aGKab+1QBpOd8OouaJeiCM30bb+yQ3XyfvwduUcpF/rXPXjY/s/Heek2BKC1QiIO2SzpHLq0Ozq4abnr8Do5u7gDPGtZx6tqyT7eZ3FAatM6c0ZAatkggTGP29HpZGEXrxSI6MPOxiODB0PeVaQsz14Vxk4U4X96QldUMmovibzWtHLBRfeGN7IXwvlenTGiOZ0XbT8gKRPk8YI3Do+KAy1ydtHjrdV7jCdOOR+03VsdufK5V2jMFG9DMM5DtF3nQt9Ahj2V0uOpajxa9NogkZRWpOYpT9xeoAggzNOJLLqEWHiYbE3I3lv6rHldfPtsu7IRRUpnJ/V7FSQvZ3zFfd1b/aTnA9qjxj9AkEBvMyBIocXDXdhI/hTpEzq8FtxWWoBJY9mXCJFZv7XOEVGgmN0V6RJHVTE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SExrYVo5MGMrYVpZZnk0ZGhuU1dXajlQcCs3RFVkbVh6cXY0T3BqWEtXbmhW?=
 =?utf-8?B?bTVpVVN4d2JtOUNsNkFCK0w0V013YXV0bDhETWk5MVUvY3VMOERvZVBodkhQ?=
 =?utf-8?B?OUZzdzh5YTIzelRwRkExNXBCUk9kd2c4VWFyNTRLdDF0WmRuL0xvNHBzeUoz?=
 =?utf-8?B?cEZlcmpCYzgwbG1WM1k1eUR1N0w2N1F3WWt2RDZ6aW5HUGltMGIwR243MC9r?=
 =?utf-8?B?VEs5T1R5aXZVclZZbk11UkQwZUdManBacmRUQTQvQ1NITmVDZldFemVLekZS?=
 =?utf-8?B?YitQeGVMamxNdWxyQkpGaDVNaUlUMXlwUVRVWGNGd1ZQYVVmUlpuSStEQjE5?=
 =?utf-8?B?MytWZEt1S0huNENwSW5tQTh5bjhkZ0pPVGRieUlJOXpvL2NabDFjWGIyRVVN?=
 =?utf-8?B?c2pJY0MxVmFaZUwxRzdjQ1BXd1hNclB2YmdPMVhhVVpFeVF1OU9sTGxMUTEr?=
 =?utf-8?B?ZzNCODk4SFd3bjA2bUpkYitnUU52Z2ErMXhKNVZoTm5nR20wdGVua0RBNmJ6?=
 =?utf-8?B?YlRRWU82RGJ0ekl5VUhQdEo5RkwzanlOVlMwY1ducnlpVWF4dzFJM0M0Tm5m?=
 =?utf-8?B?V21JbUxrcndNUUlrT1Uxc0ZqVkJOQU1MUEhFY1E1MmxZMk80dTBPNGppN0h2?=
 =?utf-8?B?Mm8ydkdXNnJQZk1MM2ZuVE9QTTJhNndIeDc2bTlZNS9TQVFWaEtkenJpeHhU?=
 =?utf-8?B?dlpxakh2Z0xiN3VySy9lRTVvWUZGZjVqRXFiZ3ZoaVVCWmpRclBBYlZNTE03?=
 =?utf-8?B?bW0zUVBoSm85andpNENTbXJsdHlTcWUxTmRaVXNXMk4rNFAyU2IvL2J4ZU50?=
 =?utf-8?B?Wkx3VVdhS3huNU5UM0lyWnhpcGNBdmh2WkxnODZlaVpWKzBuM2tFN0owY2No?=
 =?utf-8?B?K21zcm1Ja1lUd1VOZGtFcU1mMUlTU3oyZjJzd08yQVVCYXNCVlNGNWZiMGpR?=
 =?utf-8?B?WGVkcUoyalBHbHl1NU91ZFVqR3o4SndJTWUvamhUdUlwU2pSRmw0NjZYOElJ?=
 =?utf-8?B?SW12VU9GbUFyaUVrT0JvVmRydFVkU2FCNXhJWEFZanBjN2Y4eWZGMVB6aDNY?=
 =?utf-8?B?eXI2K0M5SE5aenJFKzFNbGpKQjBuNlBUUG40Rk80Q1ZtRWZLWmtJSWJXUzd4?=
 =?utf-8?B?WE1UYmlUdlVyb3diOXBlaWJWKzBZU0hCSVBLY25abXlPeDU0L1VMQ3JXa0V6?=
 =?utf-8?B?RUZHL282U1VnWmIxVjFuUkxhMGpBU21sVEN4S255K1BTVXhPeEpIN2tWVFVE?=
 =?utf-8?B?THF5NS9aQWRQbCtZZTJTd25ibjVIQW5ObjdIR1M5VFBqWmMrdUlJU3VQeXIy?=
 =?utf-8?B?cUdxY0J3TytibGQ1QzJtaW5ZQWYxNkVBNG9rQk82MWVjMGRMYitaYkE4R1pX?=
 =?utf-8?B?US9MV0RHclI1Rnl3dkcxSjFhcEgwaEFFaWcyaE9Bc3J5VS9ka2ZKOXp0YThs?=
 =?utf-8?B?UEtMZno1eG9vb2JJZ0lwdlM3Y0FYOFhuaTVtaDJ2QldwdUY2dUFnTitSMWsy?=
 =?utf-8?B?RkJKcjVkVWNTNGF2empQenRUdWthb01vRWFDMTd0aldMVDFESkJIekFCUjg5?=
 =?utf-8?B?VmpNL3Faa2RaWXM0ZjZrWWdFU0J4UHlsQUtHQWYxeTk5Yi9UbmFqSlB3bHVJ?=
 =?utf-8?B?TFZ6UkNjaDA1M0wzVG1mZWx2TEhybk1lMk9hUXJEUkJVY3JCNzBia1NRY0Vt?=
 =?utf-8?B?Q1hCT0RDUkFZMjRHZUxuUkJ3YVB6bkxmdndOcVJHUUVRQUN5aUVsbDE3TkJV?=
 =?utf-8?B?Y1htSlpyenY4MEk4T04rM0swTFhIS1VvTndTR1B5WVZFWGJ0OFdNVEtVRkNw?=
 =?utf-8?B?a1lEd0I5VGsvMzRPSXBJSG0vZTNyZnczdnA3bEt2cWNOMmdxZWpYbVJIR1Ru?=
 =?utf-8?B?bzRBU3ErS2t1V1FQZGhRblpxK29rVkc4Q2syWkMyTDlrNkZraDhOQUF3UHhW?=
 =?utf-8?B?S3p6NVhxOUJhbjVKVCtyRmYvWnVDNDg2a3F2QVNobU1kSEg0NjY0MDZ3Vytm?=
 =?utf-8?B?N0tIUnh0ZktwWk9sMmphbnIzSjB3YTFMSStjMkNLaEtQektYRCsxcWNHaSt5?=
 =?utf-8?B?dmRIdFNlbUg5WFhMdXFFTFZSQmdwRFdiNURrS21yU1dGUUNkSTRseDJQdnRw?=
 =?utf-8?B?alNFV09RMWtUNWxGenlDdzNCK0xRTjZDaGdjc1ZkL1YvUzRza3lxZzJiWktV?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64d022ff-73f7-4991-a9e8-08dc591a9b3e
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 04:56:39.1304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Mc3LTVymhgFth4x4s1V7efh9RT/pNJXaqtiucz4SLsA20QCybzO/TcohzjzuGxnaES1CrEwatHXx3i3BLEQxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4886
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



On 10-04-2024 09:58, Ashutosh Dixit wrote:
> There are no hwmon selftests so there is no need to enable hwmon for
> selftests. So enable hwmon only for real driver load.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10366
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
LGTM.
Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_driver.c | 16 ++++++++++++++--
>   1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 9ee902d5b72c..6fa6d2c8109f 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -94,6 +94,7 @@
>   #include "i915_memcpy.h"
>   #include "i915_perf.h"
>   #include "i915_query.h"
> +#include "i915_selftest.h"
>   #include "i915_suspend.h"
>   #include "i915_switcheroo.h"
>   #include "i915_sysfs.h"
> @@ -589,6 +590,15 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
>   		pci_disable_msi(pdev);
>   }
>   
> +static bool is_selftest(void)
> +{
> +#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> +	return i915_selftest.live || i915_selftest.perf || i915_selftest.mock;
> +#else
> +	return false;
> +#endif
> +}
> +
>   /**
>    * i915_driver_register - register the driver with the rest of the system
>    * @dev_priv: device private
> @@ -624,7 +634,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
>   
>   	intel_pxp_debugfs_register(dev_priv->pxp);
>   
> -	i915_hwmon_register(dev_priv);
> +	if (!is_selftest())
> +		i915_hwmon_register(dev_priv);
>   
>   	intel_display_driver_register(dev_priv);
>   
> @@ -660,7 +671,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
>   	for_each_gt(gt, dev_priv, i)
>   		intel_gt_driver_unregister(gt);
>   
> -	i915_hwmon_unregister(dev_priv);
> +	if (!is_selftest())
> +		i915_hwmon_unregister(dev_priv);
>   
>   	i915_perf_unregister(dev_priv);
>   	i915_pmu_unregister(dev_priv);
