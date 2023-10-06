Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4556A7BB047
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 04:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1EAC10E1D3;
	Fri,  6 Oct 2023 02:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD32E10E1D3
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 02:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696559086; x=1728095086;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0f4cUKTs4aY3Oi/qYS0QpRqDzmfb0AXCCVZNEJGDGc4=;
 b=CZqDYr5of46m8ltrabxO2Yps0wYQLrS4ZZgsB4IX3rxcDIDAKWvFgztp
 i/amUSNxXQcWcpb2S2qKhdhnmc7CarwRs8Gq6k/yU0F7mgxWHYDXUzQNW
 D3u+TwWz0SfTiGfnWJkxvgxFfXyKROf1QK4bMJEDR46MJNxkjALBvE0SE
 BDrwMVYaxeJ6YvCqk6v0Y+264pJXUlC3eYAXK1p33RuLYzPZgu/2OI8z6
 zr0627P/u4avYbBpKkbXehadZOOhnqE/kO0gFW8b2BWAPtNjHnAikGL2q
 /yYSJUECJFWG+AtwAQT1AYDTUod+A3TVpFd/PGDt8ZUjVQX+C/RpNZkxh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="382539847"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="382539847"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 19:24:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="999169627"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="999169627"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 19:24:44 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 19:24:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 19:24:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 19:24:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 19:24:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hGv6JTZcPxpiaaugmkgE4aVK4Zv+6Df5avJq91YjsX/qZ2e9t1YlmJJe0q5836/x1i8rCWaa67K1AVFUBqohJsmZ85mh0QfTKzO+EELp5avP6d2nSsrfgw1EQW68eCXag7TE68PiYaCCnYjVCZ1Zl7JaM4lH/cNZYvi1wiKpm0S12G6b+HdAEpRDTSkBogJNT3mHJjtYe9Z6fKbaUY4MIq2FGhltAcmlTFFvDC6mjjewJbU+9zmuAWtXWHCqavTlyyCJ+inG6e/TUaZCOMkC7yy1hs7Kp9V3K3y0eHwgcn5jjC9aNkKPqhFy+L2BKXiWk/jvhY6wpJ6CmDEzuOVRow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C9dwPvLZaPswjtMIpZlQKKMtwdSK5NXEis22MSgDwIk=;
 b=hwsAM6qWzhkXIHqAUXbmO+qB3tSpDA7SH5qM2QZXrKIMrQD+g33xEaJG6vs7ajeB5BsLg2wjW0WOjjq2c8B5pIdzpVAL2mUFFQER8QD+2tRsnpOtZhZDywFNYW8zj0EBet2wJV3/2coAOjZyhTjKMsXJxPR04mogJZHHJf39PUTjQhgiUGdbbdtkw4p+xinoJQJW0w9PYEDUwrqG+oVd1KZYWRHBIE53n+NUid7foyJVJIET6/xZlPoxsFEOH2E+kKyxWrDA7+/+lKjjFWgT41CvPM5E1S0Ur7wKtGX1i0qopdIuquff0il/e/WKqspTKiBUVdlsR63ZqY9uLYcV7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SJ0PR11MB7153.namprd11.prod.outlook.com (2603:10b6:a03:48d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.37; Fri, 6 Oct
 2023 02:24:37 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 02:24:37 +0000
Message-ID: <eee75f49-6823-406b-4080-9a12a1fa3b1f@intel.com>
Date: Thu, 5 Oct 2023 19:24:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
 <20231005193536.1463159-3-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231005193536.1463159-3-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0018.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::23) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SJ0PR11MB7153:EE_
X-MS-Office365-Filtering-Correlation-Id: e552490a-39e2-41bb-8299-08dbc61362bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /IhsJVIT+K9MKk2xtcs24DI9n2zywSZC2nKHyzeUAyxgfrA/InoQindJInJGnoIRhHHYjSU672cmKilYxO6G4BOenoyBk/Ol40kQJ/wmDR1ABo42/HpHqltPrqJmhwloImpHCgfod1m3saAutVoG3pU03QZochrj/g00yNUHRjBWGTd/rHJ02IXbUZnzKdCUxc4L+toGiHxw2CEKyJsRr4VJF4UIR3xzAneORCpdhhmJ2/L00jknEeRxd0zzlwetMNKrvZo/i9X/jKUUdt3HdAwP4axi3Z2hidwBOA75hmmMJ1pI1rMFFLPSuvGmrMZXpzHMMuccstUqW32ZzaudBoh9wAjmcLZqJzLjKrc+7nngkiobfChLUp+EJax1DKOQnhM/es+ZvNl/Aj/wwMZKFYZdBo7SLzTJttfUiIkl5kjKe7swr87e/XPOrUcKgwZkHD+AfzUH9KJmKKNY087W4FAsXq8cFkNSbP8PfizEwLa0JSWuEkMHAJy2Br4IWCxT7ml6SgSBPxz0nS/BTaeTCFgBcbdUKIVQSQtpB4FgE4YdBRBxl5QEv6Oi+8pvc4LwR44gyEqztaNQ0gX/5jDJ7+rRm1Od8OgWgSro4jFvh8ZqWn/AbdPI64sAzG+NgQNQIAWPuUreGre96ebufH9TuA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(346002)(366004)(136003)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(31686004)(2906002)(8936002)(8676002)(5660300002)(4326008)(66946007)(41300700001)(316002)(2616005)(66556008)(66476007)(36756003)(6666004)(6506007)(6512007)(26005)(53546011)(82960400001)(83380400001)(31696002)(86362001)(38100700002)(6486002)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RERHbHBSN1hJL2dmT29YZUo5ZXQxemFGVTJuVHFud1dQVzl3ZVVteGp0MlZL?=
 =?utf-8?B?VFJpenZ0MDk2eURzZnppRlBubUhqanZ5SSt5M1c5U0JKOUU4R3Yrd1Vvb040?=
 =?utf-8?B?MkE3ZUpNWkVncENsMWJzZ0VZbERpZzBXSWRBRVBseTZwZFJpOUFKQzZ3SEhP?=
 =?utf-8?B?RzNGUW9nWGtqV1VrQnBIYlU3bFdqQlJSQlZuaFd1dmRsU2h0MTQ1czVWcnNt?=
 =?utf-8?B?VjBLaHdtRTNWMkVFWklqZERIdlJUTzd1VHhUcVZQUUlHSytCeFlmME9NQTVT?=
 =?utf-8?B?OEU2ZTVia0g3MTZ0OEpiY1dhR21yMC9LaW9ubnFOWnNRZW82WEtYdXNPZVVE?=
 =?utf-8?B?R2hXWmRZeWt6NVdGb1dleERNd2dVOFpleFZXb3ZtLzBmQ085UVBrM0Z1S1VY?=
 =?utf-8?B?QVl2NlJBTUFFOFVQZmdEY200cExlS2xqa21URUZscUhlT01HQ0UvaTZCdzNB?=
 =?utf-8?B?SkhRb0MzTFdubkVZRC9HOFlJcERqSTJFUWZKcXZQNHVza2hWOXpEMk9QeUtF?=
 =?utf-8?B?L3c3UXFvSFpBVE9MZHY2NDczbFNmYVY2eGdIaUxFVnJUZUxxMkkrWnlVRzAy?=
 =?utf-8?B?NkJUMFd1Q2tsaTYxeFQ0eWkxS2pOR2NLbTlOSExucE5SOHkyd0ZPSU01S3JY?=
 =?utf-8?B?c0M2cHprREJ4UjRWR0MxeVIrbU80TzVoUE1XNFoxbk5ZL0xaUFBrbHJIaUtP?=
 =?utf-8?B?Sm5FM2hSV0xTMlZhdjdLRVBnM05vNXl2UzdUZUZHbjJQZ0s0OFp4VEYxVnpQ?=
 =?utf-8?B?cVZpMUF6Wi9KdG9nSUZKWTVDSkF6Ui92eTA1UjRuWTNIRzd3UFYvSU80ZU9t?=
 =?utf-8?B?a3d4TVp1blVVQ1hCM2d2aUtYRGdqTGdLaVk2d294Z01hRVNKU3k2c0xoMmEw?=
 =?utf-8?B?L2tJcy9zZm5QY2dMaDRCQS9DTThXcjErNFFUY1FDN2Zzb1FpY0l2YTRXRG4z?=
 =?utf-8?B?NFJPRjdGU3cvT0hPS1V5aUk4cjBOcU9SdlZWN3BOaWZOZTh2ZEhncnRTWlNB?=
 =?utf-8?B?cXhva09YM0Nxa2FhbThKekx6b3BIa3BQYTJUZzAraFZXOCtySUEvR0hNWkJS?=
 =?utf-8?B?eEN6WE1CM204SmVRUHhyYXFLZXpjL0QxblNsMnVZQWpLdGY0NTVudkJFUFJj?=
 =?utf-8?B?dC9TQkY4MjljMjVrQW5Gc3hFTTlhNWl3M2xlRFEzKzVSWnhOdHdXQVRvRmZz?=
 =?utf-8?B?K3FsaTY5Q3orWmo4TjdUaG5VaTd4UXdDN2FlRVpuR3lDUDZ4dFprZVJ5bEFx?=
 =?utf-8?B?OUJHQ2tUZGZOcEllV2g1REUrSk9EaWhYVXB2QllZbzBzbVdUN0piNVc3OTJO?=
 =?utf-8?B?UzAvUGdMRUJSdWw3eUFGRk1HK1lHRFF0aGVYZ0NDNTFQbFU5SktVR3NJWDNo?=
 =?utf-8?B?VEtISFhNenZTenRSQWc0VFRVKzJyVE9jejNScHMvSGdEMTg4a0tZZ0ZyWVlk?=
 =?utf-8?B?VW5iZmVQbEFYeEV0bTltdW1FRUpPclhMVi9JR3dxblYwY2Z4d3JEZWJRWUtv?=
 =?utf-8?B?YW4vQm04KzFLekJhRVI5NG1FcTQwRjJCYko3R0lHT3BYNFZjc1RFWFVPaWgw?=
 =?utf-8?B?UjZyQlNUaEh4dUVPMG1PQkFPM2g4eWNoY2lPaG1jWlU1SmUwZlhpUngwSit1?=
 =?utf-8?B?RXVmUXByU0NpNjlUc2FuS0M5LzcrVHZEWFJwODB1MmtpakllUmtZc3NCRXZi?=
 =?utf-8?B?aEdyUCtHMldpNlhWNEtGTmN6K01NczY2NUp4WGh6OUNZaHY3YitYRzgzZ3FP?=
 =?utf-8?B?TnI3ZG5sQ2xRZytucVdxbmJicXFJaiswTGlBTkZwTm5oanRGNlRYazhPeVdK?=
 =?utf-8?B?ZVAwbld6VHBsVHZadHRjZW9pbmhCMHIvb3hTKzI0YmJTL3pjNUZFQytCS3ZT?=
 =?utf-8?B?L2lTQjc0Uk82SFg5V01wZWNRYWtUSnJPdFI1NUR5V1J3NU9iQytuRFEza3dV?=
 =?utf-8?B?QjhVQitWZk5yU2dyamx3RXhzMmxjYWFZVkp2azZwL0d0RXZmb095OVJVSTYw?=
 =?utf-8?B?VHV3dFpOOFJnZFJqemxUOHp6VG9hWHBBdHVKSUhkVTFzQ0s5T0toTkxTNmJW?=
 =?utf-8?B?NmRpZDJ3YzU1OW5mNnFMMGV2dWsxRXNPQmR6WDNmZmZpOXZNdHRFWkJ4UXl4?=
 =?utf-8?B?MFZpOXZzejFSamlETG5lNWJxQzJrQlFHSGwwYWNUZU9TTU5BNWVZOWx5NUNK?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e552490a-39e2-41bb-8299-08dbc61362bf
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2023 02:24:36.9554 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FoajJoyw6VfK2cERWqU662xBQRWVl9RPMrhzxDjgYKDRkV5V6pxfY4bVkwI4bo4Hx+nWS+2GhPeTWCtyMGWXjm3IKwEjblJsvQm8KS/TlEE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7153
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 1/5] drm/i915: Add GuC TLB Invalidation
 device info flags
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/5/2023 12:35, Jonathan Cavitt wrote:
> Add device info flags for if GuC TLB Invalidation is enabled.
>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_drv.h          | 1 +
>   drivers/gpu/drm/i915/intel_device_info.h | 3 ++-
>   2 files changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index cb60fc9cf8737..c53c5586c40c8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -801,4 +801,5 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
>   				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>   
> +#define HAS_GUC_TLB_INVALIDATION(i915)	(INTEL_INFO(i915)->has_guc_tlb_invalidation)
These defines seem to be in completely random order, but it is probably 
still better to put this one next to HAS_GUC_DEPRIV for at least a 
little bit of consistency!

>   #endif
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 39817490b13fd..1cb2beff51835 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -153,6 +153,7 @@ enum intel_ppgtt_type {
>   	func(has_heci_pxp); \
>   	func(has_heci_gscfi); \
>   	func(has_guc_deprivilege); \
> +	func(has_guc_tlb_invalidation); \
>   	func(has_l3_ccs_read); \
>   	func(has_l3_dpf); \
>   	func(has_llc); \
> @@ -173,7 +174,7 @@ enum intel_ppgtt_type {
>   	func(has_coherent_ggtt); \
>   	func(tuning_thread_rr_after_dep); \
>   	func(unfenced_needs_alignment); \
> -	func(hws_needs_physical);
> +	func(hws_needs_physical); \
Why this?

John.

>   
>   struct intel_ip_version {
>   	u8 ver;

