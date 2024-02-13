Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DBF852DC3
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 11:22:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B425C10E312;
	Tue, 13 Feb 2024 10:22:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BD1+DUlp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE21F10E312
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 10:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707819732; x=1739355732;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nYCgsYpoFXGX3aWGXmmHzv77cgrvrHjbx0EdNn+5RHM=;
 b=BD1+DUlpDJGlF3uGgYZmrDR78Boq2EHeErhsj91xQQtuiN5szp3wRhAb
 frEDa55b6V9WpI/MmfTuOMFSUI5Te5Lp39XMvkQZatrlxoIgZ0vUWPtSm
 stY7cyQuaV+7GgEVU4oyTH5sGtvuY+nkUlopoDF4i0kHaxrcTYl4Yk8la
 cTgHGBiP7LvHs6UNw6es52xJs2jqC57VFOPyiLSMQ2ZSmkdyWcawTxpzG
 clHB4Z9HDnen8Zwf/Df5slAbnyf1hw7MlbN3Osdm+imREJOyYYjwNKFFD
 LVCcZtjKiN01CV74kXAJpk9SdirXzXizTWf6bOksDcdX/NzfwOxl6uncX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="12371587"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="12371587"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 02:22:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="2774314"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 02:22:05 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 02:22:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 02:22:04 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 02:22:04 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 02:22:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eE3PnFtFBUhwYWNrxvp8wxg83bp5LkeB/+RKAHHJNm7fQbvr9Z18N/jsVeix/ck83kb0jbi6AJEffKozx3itIcEIZLPaAnCLtHhc3cThq5cgs3UNHWGRQ7CZYm8dtGGarOVfyUgBCmLApFZ22VuXMadNX+8GwmYSUltpUG4Kcy/i9kYeqKtO2kttzAfBwWCvUz2CtEeOG2fpZkNsqCFkXPANWbiy0iJAmrGyEOU2jfUOHbdQngZfCLBcAseYPOEjYTKrrogp6A7faW3izvu0fM2jMGYPzUXeHhuUicgDguAsf522JrRIGQT0q/7bLOvxy152z2HwakL/6EcwCVay7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I6y0CfCkPwZQjkTcc/71h0Kc1XyJ5gfv7chNMMUyNFE=;
 b=NIylBR84cgJx4oamtigfHRpBrDeyKW7gB2IB+ByHeAiaGw3TJ+yznpL4bh9M6Ry6Ze0miAiSHt06MYQoFHKEs3NF0d2pWmzsNKTkKySyIBTAFLTLUEBJscT/m1FyBrRFJnOojj17YfqmhApcBiuGBWME99umYltUsjXqziLua80n8hbMC2tWI8DYuYFGFFc2AJSgUklAZQJiygvgfGxnCxZTbRQ6wZ9zEw7yBv37e84SDXC71Ho2ILaKe7Ux3uCk/oaOmjBFLpMx1BcIONBIGyCGP7m8QZB8G+UFkVyZx/n27pr03lQcj2VvkfkcbYEh15YPefislI7y6Lht/tt1ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB8539.namprd11.prod.outlook.com (2603:10b6:a03:56e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.41; Tue, 13 Feb
 2024 10:21:57 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%6]) with mapi id 15.20.7270.036; Tue, 13 Feb 2024
 10:21:57 +0000
Message-ID: <7965eec1-4bc4-479b-a8af-91c13cf41481@intel.com>
Date: Tue, 13 Feb 2024 15:51:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/i915/dp: Add Read/Write support for Adaptive Sync
 SDP
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240212173623.1464540-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240212173623.1464540-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240212173623.1464540-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0004.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB8539:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b3935a3-9e2c-4b30-ccf1-08dc2c7d9b53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VxMKcGY8uSn1N3nph1T8Ajoq7YLSAPyor1GDNoRPJ7Xfw0OYqJ8BuIdi6pjT5+oZQcRvHobfK1WcM1heNgbIToohheFvSimameGV9TcIm+134XtB/TIjqhTNzIMMPNcGYBvL29n/9+SDhXjWg/q9W4KHKb3mnliJ7vKSA3kLt/s8XPYc5KxmPXfPmHv+fMr826JYTScTHKgmgwB9R9GfaA4dhN3zJYdUpzbbSfgp/fTMgSmfrJsrNwjZRwcUbdYG70NWomLi+yz08w0HOJ1Lv+X82zyZQR8K8BbCusjzAHWVTQ2KScE/6IRBFp81Pzy+jRsC6zdPykeghov5n4Cm8B78ZrKyAbqgmUWl4lRJPlirD6PZS7X5b6JMW398yYA7zPnNySaLwc779QNs+m8zYd6N5uwdteVofB2T1oajy5TqbhJw2tOJSs9+z8GT8KcsJ+coZIh3nut7GppP2/+ZQ6kov30GjW1O4AGT+CoelQMM6drJ4FflwKKqU97jnxIYq/YSD9KDa+wjs2VkpypJdawRrOYfPhIEkO9S5ZBh2Hai13A7fRu2ZOxKTKvnCAde
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(39860400002)(396003)(346002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(30864003)(2906002)(8936002)(8676002)(5660300002)(83380400001)(2616005)(26005)(38100700002)(36756003)(82960400001)(31696002)(86362001)(66476007)(66556008)(316002)(66946007)(53546011)(6506007)(6666004)(6512007)(6486002)(478600001)(41300700001)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dk1KbWVwNDNCQS84b3IxRGY2aGlFU1UwZnViWkJCdG1LVDdEQ3RpUE8rMVh2?=
 =?utf-8?B?aXBDY3dldmFNbjBOYkxVYkp4b2xweno1R1FOQ0t3Ui92bzdYMXJ6SGhEaFEr?=
 =?utf-8?B?bEx0OGRMZHI3elFobElkMFFjeFB1bDBtNWUrcWFvUzVOclBkZU1mNk9Ocm91?=
 =?utf-8?B?NUYyelpJSTBjK2FBVmgyc29RNS9rcHVRRXhUdE1QZXMwcEVGMXhzMCswSGRr?=
 =?utf-8?B?b2M0VXF2eXVtUU1uYW9ZLzNScSs4ZXJORlRISjJqR0JkYTVqcyttUWR3SEwz?=
 =?utf-8?B?YVdXdTQvK2habmJaZUNNRUEyc1VNZVJ1bENQMVVvVExkbVZmMmphT0hkWVVC?=
 =?utf-8?B?VUVEaUxHbGUrbVZENW1yYk5LTTZkS05QUE4rK1g1TEcxdGV3SXh4SXRNTHBj?=
 =?utf-8?B?a2dMZFhjZmxlUGNqVk9NbTZ1TU85UmNoVDUvcDN2dUtMbFpFU1VYNUFuY0dZ?=
 =?utf-8?B?RTJ6cm1kTzZpVVZBcWk2WG5vdWtOZEZHdTZCNFluQ1U3bGJwSm1XWHhINHl3?=
 =?utf-8?B?cTByZ2FSSzZ3bWpkWUw1Sk9HQkduVHllV3hxYXhOUEp2b29mbDdpcDMvRUxV?=
 =?utf-8?B?VlJDRDVQYUhmUEd0VmpSSWpkZXVmZE1qWU9DWTMrZHV0RUFDWG9rY3JpdmNw?=
 =?utf-8?B?NjhEOXZScS85Y2hId0JlaDMvVmdYV29jM0FaUFY4OGZocFd5dWVJdkIyRHlJ?=
 =?utf-8?B?NjFrNnVacHpCVXFzRkJtdlVlQTJXLzN4eUQ3b3hQdFVjeWFIcUNuUHNoOU9m?=
 =?utf-8?B?NFJ5a0pJVWFQVjIrVFdBbXRkWWNXMlArME1XTU04cVRlZ0hVWnYvQndvUUdo?=
 =?utf-8?B?aE5qVytPb1lpWjBYQisyRk9yWnRiY0JVUUI4ZWtIbWZTRFp2OEZ1eXhoWXE0?=
 =?utf-8?B?eWs5NnoxMWVwY2MzYXhiU29BNUNPZXVXRjUrRFcySHV2ZlhtUmxmMGxJQitx?=
 =?utf-8?B?VFpXUExZMGJNdFFLejRNUDYvRXc0S0hEZUFLUTlKSXpXbW9zWUdzWVArYy9B?=
 =?utf-8?B?N3dkWnZOQTdieEIzeDIyVXlvWVBxRTBKV1ZYYXk4R29GRWZHUGk4a0hNWlZX?=
 =?utf-8?B?NXhFOGVxZ3dhWHVGYTgrRUFQVElHQ24vU1VrS2FDRHA2R0V6V0VLZE1HeUdX?=
 =?utf-8?B?bDloSmNoc2xaRTlwbUw0Q0dNb3BrZlhvdkMrT1UxaE4zWUo3NlpuS1BVR2wx?=
 =?utf-8?B?TUJEc3d1L2l2bWt6WE9PVUxzdlVIRTBha2c3bWZvZlRHZWhFckZ6WHgreDM5?=
 =?utf-8?B?aTQ3NHpiZzlNaEVnb2lmS3hidGs0d2Fla1BsaXpuMDhEOFQ5cmxPa1hoeG1N?=
 =?utf-8?B?Qng3ckM3V2w2c2NRYytGZ2lqSFczQXRkMlg0SzVobXQxOVlWTTl3Z3Urb3lM?=
 =?utf-8?B?U0RFRVo4UXF1Z2dadUo0MmNHT1pWU0lZeEhrVy9UTjlyVm96RjVZcmNGdjRX?=
 =?utf-8?B?YnJiczd2Rm1zUUt0ZzdIZWI5bFl0ZW41eGo1S2lzTEEwcFNrbFpuMGtWZ0Vv?=
 =?utf-8?B?SFJobzdmTHN4Q1d2ajIvcllQM0RCdmxjZW9vcmNFRWNXT0RWWWg0QitWV1pQ?=
 =?utf-8?B?elRFMnJ4NmE2RGw1S21mK0xxVDk5TkNvdHJHUEgzUjNjMCs4M1VDMlM0VGxz?=
 =?utf-8?B?Yms4RWRyTVdLMHRQVk1VeHBzZ09MaEQ5SWkyZis2UnJOblVGcjRFSHRpaVor?=
 =?utf-8?B?OC93bGNSU0JWamNoQVI2eHF5cW4wT0RIL1VMbmdZOFJzcE1PYkFCK1FCNmNw?=
 =?utf-8?B?Z3FxbCtsZkZjd2ExcTAyMlRoamxHTnUyNkFQazdRTTZ6a1VBbllLRm5peEZC?=
 =?utf-8?B?UTd3TVNSOEh0b2UrVjErWXpZYWZYY3Zrcll2T2pkMFN2dk4yNll4SjIrYnda?=
 =?utf-8?B?a2dVVnp0NUNqQWd3bTQwUkdXOFpKOTFTaWgvRWdxN1ZjUnRHK0IrWXpDMWc2?=
 =?utf-8?B?eXYvL1FJR2RWaVF0RDlQMzZRR3V4ekxnbkN1SVVVSVpJUTkzYnQ2Qi8xODVu?=
 =?utf-8?B?eEhHSlBseEdDVlJUbkJFK09GNDg4NndyMFdkMDAxZzFYeWp2dk55NkpxQjRM?=
 =?utf-8?B?YTBwcXVHelZXVklva2o0eEI1V21aN2xXMFhWbFIvRkFnR2o2OUh5Z2tJQmNw?=
 =?utf-8?B?UE4vZng0TFlQVFZiMlRkU2FjRVI2SDduVDNwZGRVbi9pQVNtQjI5dUJtZThl?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b3935a3-9e2c-4b30-ccf1-08dc2c7d9b53
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 10:21:57.1659 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6e3Aut5X3zZoqpdntoA5yE/2h6fh86EreB+1e2Y/RTnV4OGz5Z+fjb24NOyyD9IKApEBp/KbnREf4F8Ws82oPjNavpS4jlY+elWqgnVhO8g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8539
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


On 2/12/2024 11:06 PM, Mitul Golani wrote:
> Add the necessary structures and functions to handle reading and
> unpacking Adaptive Sync Secondary Data Packets. Also add support
> to write and pack AS SDP.
>
> --v2:
> - Correct use of REG_BIT and REG_GENMASK. [Jani]
> - Use as_sdp instead of async. [Jani]
> - Remove unrelated comments and changes. [Jani]
> - Correct code indent. [Jani]
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c   | 95 ++++++++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_hdmi.c | 12 ++-
>   drivers/gpu/drm/i915/i915_reg.h           |  6 ++
>   include/drm/display/drm_dp_helper.h       |  3 +
>   4 files changed, 112 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5045c34a16be..6e9180ce069a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -95,7 +95,6 @@
>   #define INTEL_DP_RESOLUTION_STANDARD	(2 << INTEL_DP_RESOLUTION_SHIFT_MASK)
>   #define INTEL_DP_RESOLUTION_FAILSAFE	(3 << INTEL_DP_RESOLUTION_SHIFT_MASK)
>   
> -
>   /* Constants for DP DSC configurations */
>   static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
>   
> @@ -4087,6 +4086,34 @@ intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
>   	return false;
>   }
>   
> +static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
> +				    struct dp_sdp *sdp, size_t size)
> +{
> +	size_t length = sizeof(struct dp_sdp);
> +
> +	if (size < length)
> +		return -ENOSPC;
> +
> +	memset(sdp, 0, size);
> +
> +	/* Prepare AS (Adaptive Sync) SDP Header */
> +	sdp->sdp_header.HB0 = 0;
> +	sdp->sdp_header.HB1 = as_sdp->sdp_type;
> +	sdp->sdp_header.HB2 = 0x02;
> +	sdp->sdp_header.HB3 = as_sdp->length;
> +
> +	/* Fill AS (Adaptive Sync) SDP Payload */
> +	sdp->db[1] = 0x0;
> +	sdp->db[1] = as_sdp->vtotal & 0xFF;
> +	sdp->db[2] = (as_sdp->vtotal >> 8) & 0xF;
> +	sdp->db[3] = 0x0;
> +	sdp->db[4] = 0x0;
> +	sdp->db[7] = 0x0;
> +	sdp->db[8] = 0x0;
> +
> +	return length;
> +}
> +
>   static ssize_t intel_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
>   				     struct dp_sdp *sdp, size_t size)
>   {
> @@ -4254,6 +4281,10 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
>   							       &crtc_state->infoframes.drm.drm,
>   							       &sdp, sizeof(sdp));
>   		break;
> +	case DP_SDP_ADAPTIVE_SYNC:
> +		len = intel_dp_as_sdp_pack(&crtc_state->infoframes.as_sdp, &sdp,
> +					   sizeof(sdp));
> +		break;
>   	default:
>   		MISSING_CASE(type);
>   		return;
> @@ -4274,7 +4305,8 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
>   	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(crtc_state->cpu_transcoder);
>   	u32 dip_enable = VIDEO_DIP_ENABLE_AVI_HSW | VIDEO_DIP_ENABLE_GCP_HSW |
>   			 VIDEO_DIP_ENABLE_VS_HSW | VIDEO_DIP_ENABLE_GMP_HSW |
> -			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK;
> +			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK |
> +			 VIDEO_DIP_ENABLE_AS_HSW;


Perhaps set this only for ADLP+

>   	u32 val = intel_de_read(dev_priv, reg) & ~dip_enable;
>   
>   	/* TODO: Sanitize DSC enabling wrt. intel_dsc_dp_pps_write(). */
> @@ -4296,6 +4328,40 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
>   	intel_write_dp_sdp(encoder, crtc_state, HDMI_PACKET_TYPE_GAMUT_METADATA);
>   }
>   
> +static
> +int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
> +			   const void *buffer, size_t size)
> +{
> +	const struct dp_sdp *sdp = buffer;
> +
> +	if (size < sizeof(struct dp_sdp))
> +		return -EINVAL;
> +
> +	memset(as_sdp, 0, sizeof(*as_sdp));
> +
> +	if (sdp->sdp_header.HB0 != 0)
> +		return -EINVAL;
> +
> +	if (sdp->sdp_header.HB1 != DP_SDP_ADAPTIVE_SYNC)
> +		return -EINVAL;
> +
> +	if (sdp->sdp_header.HB2 != 0x02)
> +		return -EINVAL;
> +
> +	if ((sdp->sdp_header.HB3 & 0x3F) != 9)
> +		return -EINVAL;
> +
> +	if ((sdp->db[0] & AS_SDP_OP_MODE) != 0x0)
> +		return -EINVAL;
> +
> +	as_sdp->vtotal = ((u64)sdp->db[2] << 32) | (u64)sdp->db[1];
> +	as_sdp->target_rr = 0;
> +	as_sdp->duration_incr_ms = 0;
> +	as_sdp->duration_decr_ms = 0;
> +
> +	return 0;
> +}
> +
>   static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
>   				   const void *buffer, size_t size)
>   {
> @@ -4366,6 +4432,27 @@ static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
>   	return 0;
>   }
>   
> +static int
> +intel_read_dp_metadata_infoframe_as_sdp(struct intel_encoder *encoder,
> +					struct intel_crtc_state *crtc_state,
> +					struct drm_dp_as_sdp *as_sdp)
> +{
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	unsigned int type = DP_SDP_ADAPTIVE_SYNC;
> +	struct dp_sdp sdp = {};
> +	int ret;
> +
> +	dig_port->read_infoframe(encoder, crtc_state, type, &sdp,
> +				 sizeof(sdp));
> +
> +	ret = intel_dp_as_sdp_unpack(as_sdp, &sdp, sizeof(sdp));
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm, "Failed to unpack DP AS SDP\n");
> +
> +	return ret;
> +}
> +
>   static int
>   intel_dp_hdr_metadata_infoframe_sdp_unpack(struct hdmi_drm_infoframe *drm_infoframe,
>   					   const void *buffer, size_t size)
> @@ -4472,6 +4559,10 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
>   		intel_read_dp_hdr_metadata_infoframe_sdp(encoder, crtc_state,
>   							 &crtc_state->infoframes.drm.drm);
>   		break;
> +	case DP_SDP_ADAPTIVE_SYNC:
> +		intel_read_dp_metadata_infoframe_as_sdp(encoder, crtc_state,
> +							&crtc_state->infoframes.as_sdp);
> +		break;
>   	default:
>   		MISSING_CASE(type);
>   		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 7020e5806109..04c975d18e94 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -137,6 +137,8 @@ static u32 hsw_infoframe_enable(unsigned int type)
>   		return VIDEO_DIP_ENABLE_GMP_HSW;
>   	case DP_SDP_VSC:
>   		return VIDEO_DIP_ENABLE_VSC_HSW;
> +	case DP_SDP_ADAPTIVE_SYNC:
> +		return VIDEO_DIP_ENABLE_AS_HSW;
>   	case DP_SDP_PPS:
>   		return VDIP_ENABLE_PPS;
>   	case HDMI_INFOFRAME_TYPE_AVI:
> @@ -164,6 +166,8 @@ hsw_dip_data_reg(struct drm_i915_private *dev_priv,
>   		return HSW_TVIDEO_DIP_GMP_DATA(cpu_transcoder, i);
>   	case DP_SDP_VSC:
>   		return HSW_TVIDEO_DIP_VSC_DATA(cpu_transcoder, i);
> +	case DP_SDP_ADAPTIVE_SYNC:
> +		return HSW_TVIDEO_DIP_AS_SDP_DATA(cpu_transcoder, i);
>   	case DP_SDP_PPS:
>   		return ICL_VIDEO_DIP_PPS_DATA(cpu_transcoder, i);
>   	case HDMI_INFOFRAME_TYPE_AVI:
> @@ -186,6 +190,8 @@ static int hsw_dip_data_size(struct drm_i915_private *dev_priv,
>   	switch (type) {
>   	case DP_SDP_VSC:
>   		return VIDEO_DIP_VSC_DATA_SIZE;
> +	case DP_SDP_ADAPTIVE_SYNC:
> +		return VIDEO_DIP_ASYNC_DATA_SIZE;
>   	case DP_SDP_PPS:
>   		return VIDEO_DIP_PPS_DATA_SIZE;
>   	case HDMI_PACKET_TYPE_GAMUT_METADATA:
> @@ -558,7 +564,8 @@ static u32 hsw_infoframes_enabled(struct intel_encoder *encoder,
>   
>   	mask = (VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
>   		VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
> -		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW);
> +		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW |
> +		VIDEO_DIP_ENABLE_AS_HSW);
>   
>   	if (DISPLAY_VER(dev_priv) >= 10)
>   		mask |= VIDEO_DIP_ENABLE_DRM_GLK;
> @@ -570,6 +577,7 @@ static const u8 infoframe_type_to_idx[] = {
>   	HDMI_PACKET_TYPE_GENERAL_CONTROL,
>   	HDMI_PACKET_TYPE_GAMUT_METADATA,
>   	DP_SDP_VSC,
> +	DP_SDP_ADAPTIVE_SYNC,
>   	HDMI_INFOFRAME_TYPE_AVI,
>   	HDMI_INFOFRAME_TYPE_SPD,
>   	HDMI_INFOFRAME_TYPE_VENDOR,
> @@ -1212,7 +1220,7 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
>   	val &= ~(VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
>   		 VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
>   		 VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW |
> -		 VIDEO_DIP_ENABLE_DRM_GLK);
> +		 VIDEO_DIP_ENABLE_DRM_GLK | VIDEO_DIP_ENABLE_AS_HSW);
>   
>   	if (!enable) {
>   		intel_de_write(dev_priv, reg, val);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 3449e65fdf1b..3bcbddd676b9 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2314,6 +2314,7 @@
>    * (Haswell and newer) to see which VIDEO_DIP_DATA byte corresponds to each byte
>    * of the infoframe structure specified by CEA-861. */
>   #define   VIDEO_DIP_DATA_SIZE	32
> +#define   VIDEO_DIP_ASYNC_DATA_SIZE	36
>   #define   VIDEO_DIP_GMP_DATA_SIZE	36
>   #define   VIDEO_DIP_VSC_DATA_SIZE	36
>   #define   VIDEO_DIP_PPS_DATA_SIZE	132
> @@ -2346,6 +2347,7 @@
>   #define   VSC_DIP_HW_DATA_SW_HEA	(2 << 25)
>   #define   VSC_DIP_SW_HEA_DATA		(3 << 25)
>   #define   VDIP_ENABLE_PPS		(1 << 24)
> +#define   VIDEO_DIP_ENABLE_AS_HSW	REG_BIT(23)

This is defined from ADLP+


>   #define   VIDEO_DIP_ENABLE_VSC_HSW	(1 << 20)
>   #define   VIDEO_DIP_ENABLE_GCP_HSW	(1 << 16)
>   #define   VIDEO_DIP_ENABLE_AVI_HSW	(1 << 12)
> @@ -5042,6 +5044,7 @@
>   #define _HSW_VIDEO_DIP_SPD_DATA_A	0x602A0
>   #define _HSW_VIDEO_DIP_GMP_DATA_A	0x602E0
>   #define _HSW_VIDEO_DIP_VSC_DATA_A	0x60320
> +#define	_HSW_VIDEO_DIP_ASYNC_DATA_A	0x60484

This is also defined only from ADLP onward.


Regards,

Ankit

>   #define _GLK_VIDEO_DIP_DRM_DATA_A	0x60440
>   #define _HSW_VIDEO_DIP_AVI_ECC_A	0x60240
>   #define _HSW_VIDEO_DIP_VS_ECC_A		0x60280
> @@ -5056,6 +5059,7 @@
>   #define _HSW_VIDEO_DIP_SPD_DATA_B	0x612A0
>   #define _HSW_VIDEO_DIP_GMP_DATA_B	0x612E0
>   #define _HSW_VIDEO_DIP_VSC_DATA_B	0x61320
> +#define	_HSW_VIDEO_DIP_ASYNC_DATA_B	0x61484
>   #define _GLK_VIDEO_DIP_DRM_DATA_B	0x61440
>   #define _HSW_VIDEO_DIP_BVI_ECC_B	0x61240
>   #define _HSW_VIDEO_DIP_VS_ECC_B		0x61280
> @@ -5082,6 +5086,8 @@
>   #define HSW_TVIDEO_DIP_SPD_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)
>   #define HSW_TVIDEO_DIP_GMP_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
>   #define HSW_TVIDEO_DIP_VSC_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
> +#define HSW_TVIDEO_DIP_AS_SDP_DATA(trans, i)	_MMIO_TRANS2(trans,\
> +							     _HSW_VIDEO_DIP_ASYNC_DATA_A + (i) * 4)
>   #define GLK_TVIDEO_DIP_DRM_DATA(trans, i)	_MMIO_TRANS2(trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
>   #define ICL_VIDEO_DIP_PPS_DATA(trans, i)	_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
>   #define ICL_VIDEO_DIP_PPS_ECC(trans, i)		_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
> index 37045a903d89..67feb626405b 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -837,6 +837,9 @@ int drm_dp_pcon_convert_rgb_to_ycbcr(struct drm_dp_aux *aux, u8 color_spc);
>   #define DRM_DP_BW_OVERHEAD_FEC		BIT(3)
>   #define DRM_DP_BW_OVERHEAD_DSC		BIT(4)
>   
> +#define AS_SDP_ENABLE				BIT(2)
> +#define AS_SDP_OP_MODE				GENMASK(1, 0)
> +
>   int drm_dp_bw_overhead(int lane_count, int hactive,
>   		       int dsc_slice_count,
>   		       int bpp_x16, unsigned long flags);
