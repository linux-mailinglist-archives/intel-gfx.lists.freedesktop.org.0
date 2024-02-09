Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9BB84EE72
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 01:51:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D0D310F0CB;
	Fri,  9 Feb 2024 00:51:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B5sJSj7o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBAA410F0CB;
 Fri,  9 Feb 2024 00:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707439873; x=1738975873;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5WPnCEWoxqFi0xWiF6GETzNTRSNeVkg68F58tfje2Dg=;
 b=B5sJSj7odCWKixp4j5CVD+1TZWtHPgeBTfb3Z3P/tMaVG5X8k4v7Ge5+
 qlHfPkRbPjyuSO7Kx1IIGaGS48AuN00x+ZsMuO4QjTeZULOcjbViaBNup
 BuvcNbdNFpIaGUYt0BkfQCYBXEgLDg2CRO3/gIBGqM1259UK2flPNm42h
 R2iez+bFL0SySN2u7okB7hryJMML/8kdwl+NZ6NEEmxPWq9XrvBDxe1xw
 B894xUI58lfb9gsEBa7eWl6cUEeKX46LkED92BTu9FHIInPyoAxL4kurz
 +O/mTv5Z5E/ixmthpkWVhuVYJR57n/WFU2ideG5yw4xlHhvW22eNo2Kdu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="11999793"
X-IronPort-AV: E=Sophos;i="6.05,255,1701158400"; d="scan'208";a="11999793"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 16:51:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,255,1701158400"; 
   d="scan'208";a="6438390"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Feb 2024 16:51:12 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 8 Feb 2024 16:51:11 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 8 Feb 2024 16:51:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 8 Feb 2024 16:51:10 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 8 Feb 2024 16:51:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GqcQfTXjUSOB14S4pw8O2Vqf1SvFqmFMh7OQ8ltsBB0QRXVEnDakALYjVs7PLvKf9Tc0UhpYY7ACVvTM0YuVY69BbR4fGmrVuLrhZLINMjWXqMr1Fiaco1Cia8kW+YiLRdedo8ikd7MEyDQpIwxTphWzeAFNstHCz78ghhFuSCfRj3pYuShoNWFvTc3GzVMBJ8DvAk6TmQii1wwgX5KUNZ/FU9ntxvO8JxOhOfeL5yGX2vHttpYX6Olak2rBMWcWmO9kANG5Xh6pQBR/uiAOSXs71xp2IigHaoFhW17hoo7abZyyg0kiyIa7JXYVV9QCUMISoyAmuYlDxJUaMN2GRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UcX4Qa8vSOcYlx5GLdy0s2BB1hwpPOHb+z9OKYBR+XQ=;
 b=NY0yXHOSq5HvD8Mjdarwrw3AHjI9/XtM9/24YPH9BeVrqgd1rr/j8HFTGjdudIds3iRI6deCFlgANi9QVpbzEuQSVaH6U2Yew8wikHktZnReNv25IIZi0FJVGPcPnirs3r1/BBNlSZ0IzCfu21QLk143vOjpLKjul7OaXlay0/QbSGSQMNl+N51b4xVpx4SbYMClh348ru4/3EePwrxPO+gghftHA5Dfc4Egu0PErOFuCsNYyH5eP/XaxxHDWHCVjwyepVDVMDoApA2lZSFj99CpzE6vvUQux+ozszAawb5/eBgxCex5+yOxahktkmbHtHaR1LapDY0XTPx0JiETjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by SJ1PR11MB6250.namprd11.prod.outlook.com (2603:10b6:a03:459::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.24; Fri, 9 Feb
 2024 00:51:09 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03%7]) with mapi id 15.20.7270.024; Fri, 9 Feb 2024
 00:51:08 +0000
Message-ID: <db011053-eba5-4925-8e67-a052c0145f27@intel.com>
Date: Thu, 8 Feb 2024 16:51:06 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/xe: Use gsc_proxy_init_done to check proxy status
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20240207113531.1265801-1-suraj.kandpal@intel.com>
 <20240207113531.1265801-3-suraj.kandpal@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20240207113531.1265801-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0063.namprd05.prod.outlook.com
 (2603:10b6:a03:332::8) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|SJ1PR11MB6250:EE_
X-MS-Office365-Filtering-Correlation-Id: df30bf6e-a282-4ee5-335b-08dc29093409
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mCehJOuPujOjzMnAcbUa4TqXZIcUdgzh67MtIt8DVq1EJfWagADqyGPzgsC2KpsjGiOTnitJw/UlzI4WGegvrNhCqnUzsY4QDVTMvEAhZD36HAZokzbM6qwCf8jwrZwscFlu6c3vGhWj1wP7jVCDEwZ4WNz5I0d7Cep/v+xTqG/faTfYBLdaQWE8gSDsWSprf182hHmDDMrSfmcH3y3RxLFTGVFL68GBLdg/HmfM1HlZm5efTJv5jdkZ0PxO/vck8nlg6u09lIy6RXqmo/Brk9QktTik6jhEfePR8+CqXq6FfpDkLSwzcKEKXwVRFLcFpmTozrqgKxLLOwa/uCFI2Kc67RW9iLXYExMvq4663Uxsx8owQA3TOEOlt7bzLeB5YmyUQ/cLOxdPNT2pbs1FeJ55JkiNRxcgtAnjxLYdeJh36sFhfbZ3j9Ds4lr0XJJ3ZaaMKvuqzOQb1A/4LdrXNEnHMzgJIN0ImYHxBR1LltvUGhwLxkH03/O+pHhpU2hAQawivLPx7hG16Ty6zwqWB8sge684FS0+lQlCM6nr8fYSUDNh4S9obdj6QLyg5KQE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(376002)(136003)(396003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(83380400001)(2616005)(26005)(8676002)(2906002)(82960400001)(38100700002)(316002)(5660300002)(53546011)(36756003)(66556008)(66946007)(450100002)(41300700001)(86362001)(31696002)(6512007)(6506007)(6486002)(8936002)(66476007)(478600001)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TEUxd3FBZUpJdDhiYUdTUFJhYS9nZ3RwRHoyZzdSYjZ5a0l4VzRna2NzUi9U?=
 =?utf-8?B?WGR1OUhHeW1RZmJBS1JFazNsbDlRdjQ4RlBtcEcxZ2wxRjdiakFuT2RyekZW?=
 =?utf-8?B?UHNIMUhzWG1qSzNBSCtJd3BTclNldVFlWjdMT2RQSkdjY1NON3lhUlFjUXhj?=
 =?utf-8?B?MmdwdVQzQklKZmZYSUFNT2pvSXZpWXQvSG9yVzlvZW1QaHcyNFRlaEdlT1pX?=
 =?utf-8?B?dGxZMlQxVWJWTytIRWx0N0RUeHlOQWRPakkvTGZsZWx6TkpEOUlaQ0xJVWxj?=
 =?utf-8?B?TkhTWE1zMi96TzRRcGN6bXRlWTBzSDdMMmY3ZmZ2UjBVVGFrR1hhcldUc2w0?=
 =?utf-8?B?OGNNL2RnL1Z0dU41YmEwU2JNUldNaU1TNW0wTyswVHFyeXlHd2NWejIzOEs1?=
 =?utf-8?B?czVrWW5vN2J0TW9Wa2g5YmZFbVZYNjFKV1RhdGRSaTZ0WEdwODZRR0dDbjRV?=
 =?utf-8?B?U2ppMjh1MTM4bzIyWHNhM2N2VVZXeHRObldBaGM2N1BzeUVNVTVFSVR0N1Yv?=
 =?utf-8?B?SkZHRENuQTFSYjRtWW1YWUdmNHFGNEVhbVZoTHJ3VEI0MmZIWGM3S1hndDNO?=
 =?utf-8?B?YmZjMURIcjZrZWc5QzNVQWNxejhRam1haDl5aUZ1bU9XY0k4Y1dzQjJOeUZ0?=
 =?utf-8?B?QXpCSnVPTnI4KzdoR1lkY203T0dSQ2RCWlorcjFlb1RRMDFYTHplekxlNGtQ?=
 =?utf-8?B?K0VKNjM4SS85MmRTQjhWQVdzcGJweHYxb3M1WVNHaitXNW1rZko2NGVaR1Nj?=
 =?utf-8?B?RTNTRExsV2NBbG41elhEUkNaVHgwZXh5NzlSTVVySUxMZGhwWjBxeXpuK2pU?=
 =?utf-8?B?Y2tCQnJWSjFEamZ2aFNkN3l6LzkvQXlMcGx2VGVaZ1hySEZZN3VLRXdKaHk3?=
 =?utf-8?B?c1ZTTFQ0YkkvMWtXWkF4cTA5WG93MHMyVjJHNklBcEx2SnowZXhteFFiU0hP?=
 =?utf-8?B?UGtENlJKMXJyQUFaUWF5UWQycWpSTGdBSTZ3Z05MV2NwWXNnYk50VGlZd3VV?=
 =?utf-8?B?OHhTZTRES0RuWkUwc2IvQmlWYlBpYnBVQi9lSWh6cTJYbkdZUUg3TWJuTEEr?=
 =?utf-8?B?eHQ4M1VHZm9yYzc4ZnQ5M1huWWFRWER3UU5WTTgwRVU0QmtraDNGS21vd29k?=
 =?utf-8?B?NWFRMStWQ2xZWXNsY2xPMU9hM0syMkN1Rk9xeDh1SGI0NXVmMGNBTloyUWxy?=
 =?utf-8?B?bWcrMExMbEJOZkdnSFUvOUphRk9TcHJ1dnVRcFNvOW5Ga2cxSFZham5ZSCsv?=
 =?utf-8?B?UTZzU29vMU1OOWVROVVxMUFDWHArejBOUjhEUnFCM2FsZWp3bEprbmpGdGNi?=
 =?utf-8?B?QWdkNWRkaThoS0FzV3dOTFNVTENncTRpNG8vOFNsaHpTaXhHTmpvWFhZTUZ0?=
 =?utf-8?B?aHhZWjIyazZ6cWo4UE1lQ1lkWDF4bjRRaEJGY0FQOGJFNkE3MENjcmNtdnVu?=
 =?utf-8?B?dGhqdnZ0QXlUdmdkM0ozbWFEbk5vRlJCQkJRZUdiczdqUjEyUk96Ly95SnRa?=
 =?utf-8?B?U3JxaTAwblZBR29zeGo3aFFyWGk3MkVrWjdSQmg4UHZ4ZW9BelJuWDB4ajRi?=
 =?utf-8?B?eWhGMTF6VE9IU1Y0S3hYM2F4Ry9oYmtVYnJRRDBEUE1GOG5meVhmSjVxMFRp?=
 =?utf-8?B?RE9EaUg0OUkwdkZRaWo3dUdtTEZuMXJJaVU0bkZGcHlFRGgrTXRUbk5ZUjBv?=
 =?utf-8?B?cVhKL0VubkY2bmZPcmZQb3MxZ296Nkd1YWhwOTN3eEdCbTN0NWE4RGZXZHlK?=
 =?utf-8?B?elNwb3RCekkzekpkSGhlVFE3R1Erc3huaFppZDNoT25DU1hDZHpEK0F6YlU3?=
 =?utf-8?B?cmhkcy8xdWExbXJ4bTBZbFV1YVhzcGVhNHAvdTlJa3NwZE5JQ1gxb2UyTFVJ?=
 =?utf-8?B?TmNjdUZUVzEzWlowNlZLbEJIbFFDcFBqMCt5R2V1dFQyR3dLOTFtNlVFQ0VK?=
 =?utf-8?B?Nmt4Mk5YeHFQM3dUMStacEROSWxuSjE1QmFnenNrUjl6Q3ZFaTRIUytOd1lv?=
 =?utf-8?B?WkUxQjlnUUg3U2lJWktDSXB6dXpMVElBT2tWN2NtaWhvVGQ5d0FmT1dNWGlI?=
 =?utf-8?B?RERUbEo3b0hiWExHaGpnN1pmaTRhTkg2cHI4RU1neTVNTTBpcUNGR3FDQlJU?=
 =?utf-8?B?eUNJTnNPMzUrSFMvM1pFZGtMRDdUUDErTHQ2TFRsYzlvV1FseHlGTXEySytT?=
 =?utf-8?Q?rWaxvK4n8chEP7IUOWim3dI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df30bf6e-a282-4ee5-335b-08dc29093409
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2024 00:51:08.5333 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VIERznhhultuwaERoazCZHILL0T1igpbafH0MJdwiPdikHJme1S8rCMSsMuJIkPDYoCuu7ysg7+PyA/9gJi3ScYcdI7zMEPej4NPxu4/qk8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6250
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



On 2/7/2024 3:35 AM, Suraj Kandpal wrote:
> Expose gsc_proxy_init_done so that we can check if gsc proxy has
> been initialized or not.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 25 ++++++++++++++++++++++--
>   drivers/gpu/drm/xe/xe_gsc_proxy.c        |  2 +-
>   drivers/gpu/drm/xe/xe_gsc_proxy.h        |  1 +
>   3 files changed, 25 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 0f11a39333e2..ca17dfbc3fe9 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -5,15 +5,36 @@
>   
>   #include "i915_drv.h"
>   #include "intel_hdcp_gsc.h"
> +#include "xe_gt.h"
> +#include "xe_gsc_proxy.h"
> +#include "xe_pm.h"
>   
>   bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
>   {
>   	return true;
>   }
>   
> -bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915)
> +bool intel_hdcp_gsc_check_status(struct xe_device *xe)

I think it'd be nice to have a prep patch to convert all the 
drm_i915_private in this file to xe_device and drop i915_drv.h, so we 
don't have the changes sprinkled through the patches.

>   {
> -	return false;
> +	struct xe_tile *tile = xe_device_get_root_tile(xe);
> +	struct xe_gt *gt = tile->media_gt;
> +	int ret = true;

why are you initializing this integer to true?

> +
> +	xe_pm_runtime_get(xe);
> +	ret = xe_force_wake_get(gt_to_fw(gt), XE_FW_GSC);
> +	if (ret) {
> +		drm_dbg_kms(&xe->drm, "failed to get forcewake to disable GSC interrupts\n");

incorrect message, this has nothing to do with interrupts.

> +		return false;
> +	}
> +
> +	if (!gsc_proxy_init_done(&gt->uc.gsc))
> +		ret = false;
> +
> +	if (!ret)
> +		xe_force_wake_put(gt_to_fw(gt), XE_FW_GSC);

Why is this conditional on !ret? you can't reach here if the _get fails 
and also you overwrite ret in the if above, so you can't use it as a 
condition here. This looks like it should just be an unconditional put.

> +	xe_pm_runtime_get(xe);

this should be a put

> +
> +	return ret;
>   }
>   
>   int intel_hdcp_gsc_init(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/xe/xe_gsc_proxy.c b/drivers/gpu/drm/xe/xe_gsc_proxy.c
> index 309ef80e3b95..f37f18a36209 100644
> --- a/drivers/gpu/drm/xe/xe_gsc_proxy.c
> +++ b/drivers/gpu/drm/xe/xe_gsc_proxy.c
> @@ -66,7 +66,7 @@ static inline struct xe_device *kdev_to_xe(struct device *kdev)
>   	return dev_get_drvdata(kdev);
>   }
>   
> -static bool gsc_proxy_init_done(struct xe_gsc *gsc)
> +bool gsc_proxy_init_done(struct xe_gsc *gsc)

this needs an xe_ prefix now that it is exposed.

Daniele

>   {
>   	struct xe_gt *gt = gsc_to_gt(gsc);
>   	u32 fwsts1 = xe_mmio_read32(gt, HECI_FWSTS1(MTL_GSC_HECI1_BASE));
> diff --git a/drivers/gpu/drm/xe/xe_gsc_proxy.h b/drivers/gpu/drm/xe/xe_gsc_proxy.h
> index 908f9441f093..10de5359fbb8 100644
> --- a/drivers/gpu/drm/xe/xe_gsc_proxy.h
> +++ b/drivers/gpu/drm/xe/xe_gsc_proxy.h
> @@ -11,6 +11,7 @@
>   struct xe_gsc;
>   
>   int xe_gsc_proxy_init(struct xe_gsc *gsc);
> +bool gsc_proxy_init_done(struct xe_gsc *gsc);
>   void xe_gsc_proxy_remove(struct xe_gsc *gsc);
>   int xe_gsc_proxy_start(struct xe_gsc *gsc);
>   

