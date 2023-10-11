Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A33A7C4E0F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 11:04:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 581CA10E5E2;
	Wed, 11 Oct 2023 09:04:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AF2910E5DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 09:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697015046; x=1728551046;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G8/V8qZ3H0DIftAvbneRBtOCsqT913KVWQuPj4bu2O0=;
 b=kszvk002l91xKI2i6RQQovPFvp6WZl4vpNY8EmGBkkb17Les8I91ASmz
 utgu5aeygB+6Uke4gfJbfUTGbV4oSyoJl0raps9Z81FxEPia2sH2FmedY
 mERlsXK25Qc54fvuwb9o9oWUHB6rXPZOIwwpakG/QS7hFbgV7ELAL1C38
 v4M41BR1LCgpacjH3yRTv2Dd5C5W5GgdrX4s5a0gfVeqHHmVxNW9GLWXo
 M9HbUsjfAgiXpB1UPxjQ6HxEvvsZlGn7r55MFi9zmMX1w072bzJ0A+qDK
 7FjgJiilVT1gFNBFxG6DERdxQfFQhY8j5ucETxEQ+S94bh5cDlvIUlZrl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="6174322"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; 
   d="scan'208";a="6174322"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 02:03:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="819613406"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="819613406"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 02:03:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 02:03:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 02:03:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 02:03:55 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 02:03:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iOtvV48wFE14dEEjOPyT9seFvN7hhn+vZQMOle8cfBedNT+1hGoIoAUXLULNx2TrQyRSAK9GTkajYLCE2CMp5UV69Em9Kc+81t3VY+azYmL3vEY8/qNxJeQOemM6vrPgwcr83RQsTJ+kVgu9xJ2o/1mjK7QfXzLB3VAqWjzXIRscPFsYFcYNZasy9IXL/P63IUYCzKU4Of0pzjQD2ZWpmvv2l2Y6UZ36jjG1kv43FQKUzf8EyExTVwiI5Zw9QwguTPjcgV3eTr4n8pSjFPrenRXqc+UPThrcibfilftI6TWQDvy7qTXmDz7y8L0T8uzWMAkMnc07T6gVSWOE5QFhug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4VIbvkH00mXHnGq9sC2dc946CRCMRqlbBwfmzCACke8=;
 b=cvl02iQFEyP22XKcdjHn6LvAgq4c59TuajLiVmgOeHXUNmgMVNfn2BECYbvMjNwI+VJ1NS0UZyh2P1Iz+ZGDpQC+N76iG2Y+PTpoUpZtDLQWXllnoO2WTlkuG+48p7hFy5qPQL1vyz+ZWcdYXNkNwYaAnwRUyxVGOnXSn1QJO2x3FEljnT2cG0LWRXxwaqkBIOUtSEjsY4XQVeLdFAYZ5jxDhtvbbH9jUPibldeKrAfScrwMYIR13DRb+W5H/ARjkWthkMo9VSpwrGhrcMKwIKnwzicbNw6FRC6C5bP9nVMP8DWI1ae+rgRDQ+U8KtJnjKZtedhJFtX9ymeKnFKdvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by SA0PR11MB4623.namprd11.prod.outlook.com (2603:10b6:806:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 11 Oct
 2023 09:03:49 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d%7]) with mapi id 15.20.6863.040; Wed, 11 Oct 2023
 09:03:48 +0000
Message-ID: <5bad0cf6-c4d6-6a37-417a-b66a1b6f46d2@intel.com>
Date: Wed, 11 Oct 2023 11:03:44 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231011000248.2181018-1-jonathan.cavitt@intel.com>
 <20231011000248.2181018-6-jonathan.cavitt@intel.com>
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <20231011000248.2181018-6-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0125.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::13) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|SA0PR11MB4623:EE_
X-MS-Office365-Filtering-Correlation-Id: 64a32795-3268-4321-f2dc-08dbca38fb5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wZKGPd50LPZ03SAH+/DiEOcAM5zbqhMghjqqryqA5vMmQFWhWf2TSVWXRzK/tjjYOhsK812pI1EvVwag6qQZ4Vo5lFoF+J6NFYrNDt72l06x7xVVt5kF6a91DV/87JI96N4lgFHmVb0DJXDHh64Va4QFNHJbTvwoC2YtVNhbI2wMBuM8L3Kjl88wqdgaTgCRt0npd6PXIjCCLvFfoWDcNdDhdClpk2cWGWEpsh2t7vwDIG1XkVvfgXa+suePxFeAkc6SbD/raaxLsqERLJNldqIi/CSPqorSAWR8szi9UJYPqcDPHqiPqbfg2aPMfjmO6DgopmdeljQSu0FgByHPwBmSpBypbpy7k58rvjXiG+R66GDdEqiMrw6XQD4Jo21urq+e0ucqLEU2Ks1TqUg3F/hbhck6Og+7lsgG1DpLNI5yCTx+eO5762rDPuAi1d7LdTRbd32UAYubciPdzPmxS8YFWrtEYahx/3NNcUcVtkcu7/mA0Dvzra4ZcZ5PMSvVG5sek8Uo/tlzKrZRAkpufAcaCQMzUBaGirFgh+TwEXFvjF1Bp+IKLfHsR/v/1xQtGNI1To3yuvaZyvBUxk8rvdvVCRH67xwrP5zDq6jOZCCgzXxtrSxuIih4d0I6AT2RAZHAkr2J6vnG+/bz58sR8g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(346002)(39860400002)(366004)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(31686004)(31696002)(86362001)(36756003)(2616005)(6512007)(316002)(6506007)(6486002)(2906002)(44832011)(66476007)(53546011)(41300700001)(478600001)(66946007)(5660300002)(66556008)(26005)(6666004)(4326008)(83380400001)(8676002)(8936002)(82960400001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUdTV0FIVzVLdldhOEtxVDFOb1J2THpndWFHRURVcVlUd0MzRzluMzA2KzFL?=
 =?utf-8?B?SUZ0bGF5NVlFbUhkOTdlczZkM2NxOWRpMytRaHg4M1hiQ05HOW5wQzNKSlNs?=
 =?utf-8?B?YjJ6OUxZVWZmMzBMTmFQVFV6d0VTRXFHMUlnU3BXY3dJK2hJVmozbG5nK3dW?=
 =?utf-8?B?S1VvMUdlYlV5emNZSzd4dDhybGpmbXJEeno5Zmwxd1hYSlNhdDZYSGE2S3ho?=
 =?utf-8?B?REFiandMZUZ2QlNPeDczS01hbUk5cFErYzAyeHpJdk8wTWFyZ3Q5aXhkZW1W?=
 =?utf-8?B?VndGYWFDM3ZadVRvTnlCaENGL01HNTc5Qk9aT2NINk1EMzF0QUpVWVlkR3Y2?=
 =?utf-8?B?UE56NlFZVDFZdnFpNkpGWUR6akowaDZLeWFKbmIxeS9WUmFuanB3Yys2U09K?=
 =?utf-8?B?VUVWQWN6RTJWTmNSeG9UcXp5MVNWdGJBRnFJK1B3V2dNU04zbWZSMFVBK2Mr?=
 =?utf-8?B?RFhodWwvWDVHVG5PMEJ2TjNBaVF4eTQwZGxXeWJwU0VmU1FhWnpaaEg5ZTQx?=
 =?utf-8?B?UTZYZDE5TURtUHdnZEgzQXlvZkxDZHpVWXBGRnRqQS9iWnl5d0ExeW9rcmZV?=
 =?utf-8?B?TGlDZ01LUnZDZmp1RzdFc2JhNmYwQkNvZ2V1VzZGVDFKYUtDSTcrSzFjb0ov?=
 =?utf-8?B?cE5ON1NCeXJBSlo3KzYwMTJTMnN5WUZwM0o3WUptY3NjTEYvRVNNVU15eVFR?=
 =?utf-8?B?QkNFVjdvenJ3Zysyci8rdFlXOW5aaEJGRzl6L2d5Mkg4Z1ZzUC8xS0lkTG94?=
 =?utf-8?B?UGROMU1PTkViUU1PdmFnZFpGbTNKdUw4c1l6TFVBWVhHTWRtNHkxS0hESll6?=
 =?utf-8?B?cWJSWGhkWm5DZkFzT3FGNDYxMHpWbmUrekM0LzNOODhrLzl4OVp3R095QXdw?=
 =?utf-8?B?ZHJyUUdsQzg2czF6R3NiUUxsNzBkSVg2c2UxSFMySzgwcnhqT1k4NDRsZDVi?=
 =?utf-8?B?b2pod1hBQ1B4L1JUMmdMd0Zmdm5WYTBMVGZka05wTWZZck5ueDBGZDZwZWth?=
 =?utf-8?B?eUNwb0tJaUY5ZFpyaVloNHZJSFJkcVNKOTVyVWRzRlJHMFhoblNSVEdRbldJ?=
 =?utf-8?B?SjRCOTVzUlBubzNnQjh0cXhJanNZUitXWGEySUhWaVgrUUh6d0toQVlQdVNj?=
 =?utf-8?B?LzlTRGxwMDNIUndYbitWazcrRFRyM2NqMzBJZmZDazYzVDliTERaLzR5RGZE?=
 =?utf-8?B?dkNMWGpDSFJjb1MyU01LRDY5UmZua3F0cGlZM3RIVXFHUWFsZndJZzJPcnB1?=
 =?utf-8?B?VjBVTWo1UDFSNWFzRFl0b2JBUVk0bGhkRmxuZ2VyUnlteW9wTTk3Y0s5dElz?=
 =?utf-8?B?QW45WFM3ZlE4S0xtdVpmSFpyTGxrQkNkMnNlOXg3U0Z4cDk5MUdKNnFhTXp0?=
 =?utf-8?B?V01CWXhaVThvL2w4ZnIxSkJQVGxaeWhZVzFRUGFLQ1RicmIwNHNBSFZzQm9v?=
 =?utf-8?B?d0xkeXB0bUN6QzFMei9ldGZzWWp4QUdodUZNNlhiMDJlNklDNkIwRWNrQ21V?=
 =?utf-8?B?cWZWWDBrTCtPeFF2QVB4MFdKRHFQc0JGZlJObDQzMndyZG51U3ZLWDZsZG0w?=
 =?utf-8?B?dTlHYnd0YXM4MEg3TjU3dFVTQ3BYSEYyd2cwcFkwcm5PclBuMHVKbEdiU20y?=
 =?utf-8?B?VUhuaGVubVc2Sk1yclV0VGVMWC95T3V5S1RuSlFFeERoU1lWdytHWDFuQkkx?=
 =?utf-8?B?WXZta0lySWNSc2I0Q0h4N3Y0b3hRbkhmaUJmcE41Z2RraGJsQ2N4Ym1SaFFT?=
 =?utf-8?B?ZFR0UFJsbklDdStxejEzZC9BUTlWSnNxT1V2NU9uUEhKc1ZWbVpMMm1JMjU3?=
 =?utf-8?B?NlFIbGkxcHZnSEFuR3lGaGphS1Q5dmtORTYyaTdKWDgvRm9vR3pRQ0kxYndS?=
 =?utf-8?B?RGFDZUlOajZVZU9zRFJDSXVPaE0vanVjclE2VGlHdW5pR3VvRVFRSFVWUG56?=
 =?utf-8?B?elFNQlovd0h4L0k5TDJETG05U0lRWklaOUkzb2thMk9qQTdWZjA2d3hPUFY0?=
 =?utf-8?B?U2FwYVlRZ1NXY2dJQjJic3dmSnVoV0dnSTlVRnNKN2xHUmh6ZHVNNWhIck5l?=
 =?utf-8?B?V0xtN2ZvL0Y4dS95ektSVUVXdHhmalBCQkFLRWVjMDIwK3JwbzdQV1ptVjl5?=
 =?utf-8?Q?zXei8gg2BL3+grIQldVXUB37g?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64a32795-3268-4321-f2dc-08dbca38fb5d
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 09:03:48.9429 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d1oUvYFHrAzq7kyp/iLeKj0+dh0WugLlRzE/U7oVfPtocTiMBe4PdTMrHEZMRPedFCSLy5nEnCyByO1coQzdWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4623
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v11 5/7] drm/i915: No TLB invalidation on
 wedged GT
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
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/11/2023 2:02 AM, Jonathan Cavitt wrote:
> It is not an error for GuC TLB invalidations to fail when the GT is
> wedged or disabled, so do not process a wait failure as one in
> guc_send_invalidate_tlb.
>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: John Harrison <john.c.harrison@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Acked-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c  | 18 +++++++++++++++++-
>   1 file changed, 17 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 9d5f8cccaa592..1914cba5f48dd 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -32,6 +32,7 @@
>   
>   #include "i915_drv.h"
>   #include "i915_reg.h"
> +#include "i915_irq.h"
>   #include "i915_trace.h"
>   
>   /**
> @@ -1941,6 +1942,12 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc)
>   
>   	/* GuC is blown away, drop all references to contexts */
>   	xa_destroy(&guc->context_lookup);
> +
> +	/*
> +	 * Wedged GT won't respond to any TLB invalidation request. Simply
> +	 * release all the blocked waiters.
> +	 */
> +	wake_up_all_tlb_invalidate(guc);
>   }
>   
>   void intel_guc_submission_reset_finish(struct intel_guc *guc)
> @@ -4740,6 +4747,14 @@ static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
>   	return timeout;
>   }
>   
> +static bool intel_gt_is_enabled(const struct intel_gt *gt)
> +{
> +	/* Check if GT is wedged or suspended */
> +	if (intel_gt_is_wedged(gt) || !intel_irqs_enabled(gt->i915))
> +		return false;
> +	return true;
> +}
> +
>   static int guc_send_invalidate_tlb(struct intel_guc *guc,
>   				   enum intel_guc_tlb_invalidation_type type)
>   {
> @@ -4789,7 +4804,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc,
>   	if (err)
>   		goto out;
>   
> -	if (!must_wait_woken(&wait, intel_guc_ct_max_queue_time_jiffies())) {
> +	if (intel_gt_is_enabled(guc_to_gt(guc)) &&
> +	    !must_wait_woken(&wait, intel_guc_ct_max_queue_time_jiffies())) {
>   		guc_err(guc,
>   			"TLB invalidation response timed out for seqno %u\n", seqno);
>   		err = -ETIME;
