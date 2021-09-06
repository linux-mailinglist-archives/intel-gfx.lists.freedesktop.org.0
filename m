Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D544018C0
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 11:23:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17062898A4;
	Mon,  6 Sep 2021 09:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5005B898A4
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 09:23:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10098"; a="242207866"
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; d="scan'208";a="242207866"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 02:23:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; d="scan'208";a="468780458"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 06 Sep 2021 02:23:11 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 6 Sep 2021 02:23:11 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 6 Sep 2021 02:23:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 6 Sep 2021 02:23:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 6 Sep 2021 02:23:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a8MuHAr2vIoReaEoVcQOWj8YZDsHRIfD75TKAP1EV8IlkZ16/D18L+bz99f6ODTG9vNmOTM2kDf1QLwYNCCfdiLxN30m7aNhEOYFhsAX22OY89fljf+01nCrNpRyIawzaeoLELgv5jEfez8ScuWrS/PvauneBrUB+8/i70FVXFbrU3kXoQ0nCTVK8EfFUrwKgTzj+Dbb1lP3gLf8jKzjH1Qa2uMEdWK8FHSUpzD+Cou4+BiBafRIXM4RPY/OsR4ryegMXAYtyfGHq9Qr2UhHZvrNvVVzZJ78rLXfjOX7+CipHvMrbKql1bw2IdlIN7R2Yd5NvSaCX+qe+J2b8iYzIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=G+rtzX+NqWcgWyLcXzgoHqZ6HlllnOE2YyDbBmAGNdY=;
 b=g4+RIFTJmb+xvrk9K30KP5nreTLpczSMacdrrY5HoEErnqBQXpsbu76kEwiTUB92bPnvvqWIbaXUG+AgYkwVt2h/HkDt8TMMc/8JQVUwG5wvjTed1Bj1rJq0OXJqGDJ7ge62uit9D6pQIIjjymwzpIZIthoJAK8YR0vlqlZUUo49gxOYAIgAmHUkT3qa69/IyWZwGX3uUIxPQLookRZAwStttLCsAhSg9Z2lgNyCYVNNTiwZxcLKqyUxX8C52LPOB4fdxYAsidK00ZxL64VZ5iZUbLEn/1HZdWRQ2tE7BgNvdDqlmF4ghVmShuJP8cqc1sZaZ21LPW0BwOunD1rvFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G+rtzX+NqWcgWyLcXzgoHqZ6HlllnOE2YyDbBmAGNdY=;
 b=JNy7JcwSC0pl7Z/4g4apil+3CJD2KR0WiKYFrvhTnTS1pbRulAfVnuwE7IUMK1VMnzu2f423L68a1Z/Wji1IJkW49j10ivjruGX7fPYp/tF8hShMEgfqNBw1s4saFxanP6B817g9hJ45Oz+r1Y+Xga92ksxIqePHMItF6766YAQ=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH2PR11MB4342.namprd11.prod.outlook.com (2603:10b6:610:3b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.22; Mon, 6 Sep
 2021 09:23:07 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c%5]) with mapi id 15.20.4478.025; Mon, 6 Sep 2021
 09:23:07 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210903221036.34770-1-jose.souza@intel.com>
 <20210903221036.34770-2-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <ec4132a2-f1af-7c31-b055-89057c051047@intel.com>
Date: Mon, 6 Sep 2021 12:22:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210903221036.34770-2-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0313.eurprd04.prod.outlook.com
 (2603:10a6:10:2b5::18) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.185] (134.134.137.82) by
 DU2PR04CA0313.eurprd04.prod.outlook.com (2603:10a6:10:2b5::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.17 via Frontend Transport; Mon, 6 Sep 2021 09:23:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 577fc25f-574a-44b6-d134-08d97117efb5
X-MS-TrafficTypeDiagnostic: CH2PR11MB4342:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR11MB43427C7AAB46437E736D36F3B8D29@CH2PR11MB4342.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kgSXsx0D80sHETLc8L19UV6VJjDUgB5kCEKgSr5TIod4uncC67Z/ryLiqNL+xqPlOSKn9TTGK6kA4Ws9wgzoFbw1r+rvC6a6AHj8B411ux2Hy2tnJ2FuXZmAgKANrEVrBK8ewDolRaZfJ2BGBvgOsK13xMA5Zer7bufKdhPNqZPbiRPGZMmkQCUQ2Xuhu04l1R5ZaxDeDKO0ogT0/jss7XZ2ZtVudiL/4+3gyadJkQSJ/e6YCoxkJ2Nbh6qACIaN3uTLV6LCsMr/gJYLMJP3D6Csg3JTNDoiD9pi2z7SyqR55QD1dzYkapwKBMwdJmRQKntM1b/PDXdx+ONcaLjILkh8tQ9dqMofugfGms6WrLLFhkZ+AiArPObL0tV4oExZOQfr5xZUWTRqSIGvIs7GkSQAW2DJD8vJ7pBFgXadI7hVjfXopgPguMRoJ/vv0zUOEUMNH0c/02GhRbuck4OjZs5TLoop6ovNphnwQxuaL/ZERnWTqKlaJ0dMho3c/JnWXrbeG9Are/7dp8k59CFWC8viaXVdGNC641MW4HU5lFt1hk43rhm0jr1yl8Xv8h09Vmf7YZQ/ZaZpoYacl7fGnog54xS+XxBnn2wxCRMAfg114NMIX1HDc4enEeu3GE9NilDSklaUerO5x5bMluZ3Tw4DCxn30J3NxPbHiA3oBHCTjicHhYFV2/CIkVliiL8RC6NsErGy6ZjO3fkE31WNbxDFaiWdolKZ89bMFT4Xg/0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(136003)(346002)(39860400002)(366004)(31696002)(478600001)(66476007)(6486002)(53546011)(186003)(36756003)(6666004)(86362001)(2616005)(956004)(2906002)(31686004)(8676002)(38100700002)(8936002)(16576012)(83380400001)(5660300002)(316002)(66556008)(66946007)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OW04UnBnY1hnaWZteEIxZmdqeTY3a2xES0IwdzQxWGRyemp5VUdjWW9Ka0Np?=
 =?utf-8?B?YlRNdHAzRnI2TVVNNW1DYVlsbjN2Y21TL1ZLZGlFUWxlVXpRdXk2eDJxZGh0?=
 =?utf-8?B?RFFEUm5xUWFCRHJIQldxdWJoY2Fzb1NBN3ROL0hOYVpINU9ka0ZkczVMS1l0?=
 =?utf-8?B?TC9KZjM5MzdETWpBUm1vSUdIdGNETEhxcGY0VEduQ3R5R1ViRVZoSy9IVE9U?=
 =?utf-8?B?U29nZC9BTjUzNDVaNnVNUlhPSTl1WDd1dXZ4MWlaM09tMXkveURhTWUySnNQ?=
 =?utf-8?B?aW0zNGU5OFhhYjVIQ2RPQ09Bc2tPVHlwNkFxdzNOb2FKNVU5Z0VHNlN4WHdT?=
 =?utf-8?B?Ui9IS3hzZ05KNm93SU9YWGY2QmVDbXNiZTZFa2NlYmszTFV0TGdwYklMNytY?=
 =?utf-8?B?bldsbnA0M2x0L0plajQ4NUF2cDZsVzJCLzFwVC95VDBzV25hLzNyNjlFbDFR?=
 =?utf-8?B?MDk1bkJtcTkwL0pTN3NqS1lPQ3dqc0FJNmZNQXlzL2JXbldBMy9yQkFxOVla?=
 =?utf-8?B?cUJvSUQ0bUZaU3hWTG1uTi9iSGlIeldWYy9HSXczV0NRN1dvVkhKNmhiZGEw?=
 =?utf-8?B?UHlJUWswYVFPM0NlUEtRQXA4UW5TVkYzQk4yT3RPVUc4VE00WFJHZ1lTZ3Ax?=
 =?utf-8?B?QVRSTVRKZGplYkZvK050Q3ZKdDFCdkZXSlZiaC8vcDRkbmp0c0dNOFNSd3FT?=
 =?utf-8?B?ZUlqVDZwakowVENYdVhEOHgvNXNFZ3YwRHlCUWpTaERrT1RmWjhuNFR2V3dQ?=
 =?utf-8?B?NWRLeklkUVRjeGFlQ3Y3TE8zOTBXeVoyejF5ZXVCRklwbTRHcERuWjY1cURz?=
 =?utf-8?B?REVET00wcDdxQnFQOU8vNFd2ZExmYWdnbzRrSS9vTlVOcjJjNEdhQ1ZwSC9w?=
 =?utf-8?B?VnRvR3cwWGVpckZoMTZncWhXSlhmb3A1d1RNNDdsK0RMa0F6bUhqOXg2OW80?=
 =?utf-8?B?V3FuZTk2V2QzQTdPWFFhSm90aTVSaXZrQWl3VnNtQ25ibTNEamduaWQ0MjBt?=
 =?utf-8?B?NzJIaVZmWjRqZFFFcTBvcDRabkErdFFTakkrNlVhNVFyanJoM1BydExCZ2Fn?=
 =?utf-8?B?a05JTzRkcDhBNGh4ejh3NEJjaTR0ZDI5N21LYVJ2NE9VU1hkYmpRYUhEOWw3?=
 =?utf-8?B?TUk3YTdzWXc4UXpmWmR0NURhY1lyTmRTWDVURTRkc2RlcFFNUE9EZmZlelM3?=
 =?utf-8?B?OWU3R3l2ZS9lY0FOOTNoUDNNUVlFZXhMWXBxTytYNGNxb0duQ0pHZXlrZGk3?=
 =?utf-8?B?dGVrcXY2aXpFSG1yWDh0bm9XSktyT05LMGRaNVM5M2EvcHBad2NYcUJFeDB2?=
 =?utf-8?B?Tk9yWTZLRW1sNkNxSk1OSHkzRVNIUHNtSEwwbkZHQWgzamFWQy94NUhNNWhG?=
 =?utf-8?B?T1I1T0E2eXVWMUFWL0E3OUw0cy9oUkhva2QyWHQ5bXgyOVdBVThtR3c0WnZa?=
 =?utf-8?B?YmJ5Z05UK3RXWldIU1VXRDcwWHRFSDk3ald6ZnNCcGFYZ2RTL2cxR3RKQm9z?=
 =?utf-8?B?ZXBLcDN5Q2xxWGFYVjFQdjVXK1A0NTFQelJVY2FQeFZzaDQ1ZXE4YkQ4YVN6?=
 =?utf-8?B?YmV4Z0VKb1pMU2xyMlpQdEI3YWxEWklqYXlFdk1BRy9YYkpJUnhzNUFPbzRy?=
 =?utf-8?B?T1QxTHlBSDFPUFJCQ0d2a0hZQmVqcGlEbFUvbXpSRzliY3dhM1VFbi9RTDYy?=
 =?utf-8?B?VzVNbUlPNXBlcVRtVTFFSmwvb3h3VmhxT1dybFZkZ3hCcndHUjFnTmoybVhn?=
 =?utf-8?Q?HO6EPrSgnFydh71RgNl8LAaviNl/WL5sn5f/nY7?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 577fc25f-574a-44b6-d134-08d97117efb5
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2021 09:23:07.0557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xHylf11hjpeswWet7UJHeCB5bSnWjHwz9xi/rL+BsUXnZuv6IVK8QdiOCaCH/ArMoZTjWhx/CwtmzzYHa7z5WODtHP+dEArEgnxR8U+kFkY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4342
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915/display: Share code between
 intel_drrs_flush and intel_drrs_invalidate
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

Looks good to me.
Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 9/4/21 1:10 AM, José Roberto de Souza wrote:
> Both functions are pretty much equal, with minor changes that can be
> handled by a single parameter.
> 
> v3:
> - not scheduling work from invalidate operations
> 
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_drrs.c | 82 +++++++++--------------
>   1 file changed, 32 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> index fa0411341a0da..15e5f91cf331d 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -299,18 +299,9 @@ static void intel_drrs_downclock_work(struct work_struct *work)
>   	mutex_unlock(&dev_priv->drrs.mutex);
>   }
>   
> -/**
> - * intel_drrs_invalidate - Disable Idleness DRRS
> - * @dev_priv: i915 device
> - * @frontbuffer_bits: frontbuffer plane tracking bits
> - *
> - * This function gets called everytime rendering on the given planes start.
> - * Hence DRRS needs to be Upclocked, i.e. (LOW_RR -> HIGH_RR).
> - *
> - * Dirty frontbuffers relevant to DRRS are tracked in busy_frontbuffer_bits.
> - */
> -void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
> -			   unsigned int frontbuffer_bits)
> +static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
> +					  unsigned int frontbuffer_bits,
> +					  bool invalidate)
>   {
>   	struct intel_dp *intel_dp;
>   	struct drm_crtc *crtc;
> @@ -333,16 +324,42 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
>   	pipe = to_intel_crtc(crtc)->pipe;
>   
>   	frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(pipe);
> -	dev_priv->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
> +	if (invalidate)
> +		dev_priv->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
> +	else
> +		dev_priv->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
>   
> -	/* invalidate means busy screen hence upclock */
> +	/* flush/invalidate means busy screen hence upclock */
>   	if (frontbuffer_bits)
>   		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
>   				     DRRS_HIGH_RR);
>   
> +	/*
> +	 * flush also means no more activity hence schedule downclock, if all
> +	 * other fbs are quiescent too
> +	 */
> +	if (!invalidate && !dev_priv->drrs.busy_frontbuffer_bits)
> +		schedule_delayed_work(&dev_priv->drrs.work,
> +				      msecs_to_jiffies(1000));
>   	mutex_unlock(&dev_priv->drrs.mutex);
>   }
>   
> +/**
> + * intel_drrs_invalidate - Disable Idleness DRRS
> + * @dev_priv: i915 device
> + * @frontbuffer_bits: frontbuffer plane tracking bits
> + *
> + * This function gets called everytime rendering on the given planes start.
> + * Hence DRRS needs to be Upclocked, i.e. (LOW_RR -> HIGH_RR).
> + *
> + * Dirty frontbuffers relevant to DRRS are tracked in busy_frontbuffer_bits.
> + */
> +void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
> +			   unsigned int frontbuffer_bits)
> +{
> +	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, true);
> +}
> +
>   /**
>    * intel_drrs_flush - Restart Idleness DRRS
>    * @dev_priv: i915 device
> @@ -358,42 +375,7 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
>   void intel_drrs_flush(struct drm_i915_private *dev_priv,
>   		      unsigned int frontbuffer_bits)
>   {
> -	struct intel_dp *intel_dp;
> -	struct drm_crtc *crtc;
> -	enum pipe pipe;
> -
> -	if (dev_priv->drrs.type == DRRS_NOT_SUPPORTED)
> -		return;
> -
> -	cancel_delayed_work(&dev_priv->drrs.work);
> -
> -	mutex_lock(&dev_priv->drrs.mutex);
> -
> -	intel_dp = dev_priv->drrs.dp;
> -	if (!intel_dp) {
> -		mutex_unlock(&dev_priv->drrs.mutex);
> -		return;
> -	}
> -
> -	crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
> -	pipe = to_intel_crtc(crtc)->pipe;
> -
> -	frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(pipe);
> -	dev_priv->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
> -
> -	/* flush means busy screen hence upclock */
> -	if (frontbuffer_bits)
> -		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
> -				     DRRS_HIGH_RR);
> -
> -	/*
> -	 * flush also means no more activity hence schedule downclock, if all
> -	 * other fbs are quiescent too
> -	 */
> -	if (!dev_priv->drrs.busy_frontbuffer_bits)
> -		schedule_delayed_work(&dev_priv->drrs.work,
> -				      msecs_to_jiffies(1000));
> -	mutex_unlock(&dev_priv->drrs.mutex);
> +	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, false);
>   }
>   
>   /**
> 
