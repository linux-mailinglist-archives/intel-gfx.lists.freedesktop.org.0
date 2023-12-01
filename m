Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B50B800C70
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 14:44:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CC3310E0D3;
	Fri,  1 Dec 2023 13:44:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C23710E0D3
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 13:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701438243; x=1732974243;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xM3MlpehU8Qt84LCw+o3V8RNE18X/Y6wsGt6Wnv99p0=;
 b=EtRK6Y5ptqugX3gejCJ516lQV/XQRAa5cusmzfO1iK3IfG1l9JsqKh0K
 BjkER67B0KPRzhze/NGkSqh/BNaevP0Jc5rExhKC6BzJ8qL9AXRLp85L7
 pRHuEW0QyvbNGcEt8V3UpXVM9Bs4ic2kkCZ5Y+SArgumwIqR9xGosg6JW
 5sdarIkR9L9cDAm4JVzuok42PkU+DKkuHqs6lh+vlCAnkNbY90SOepJpp
 U8uwRtiKOT9w6Y5maiDBKLs2qgpp7Ah0eTLpeWKTUzVBkmFlbIWd2ZFUM
 SuDuA5uERTsd2kLBSebchKpgfRV588fCyTp7Br26EQHnSDCV7zCOtYBZJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="373680714"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="373680714"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 05:44:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="746021894"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="746021894"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 05:44:01 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 05:44:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 05:44:00 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 05:44:00 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 05:43:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LbqnO5stiVKaHrykQbyBWVNIssTW8uCTO21N2sNJaPmfjzfzCLBX/WhsgeVeRpviXj2BpkmCw/fY9DSVoJdOOmfo3eJSkLBinOb6ojWd76zw9O8XZo9HkgADNrE3JSCsbZD8QdSqZtYOPgMsuouSl3RVPokWKvlkhg6b6goS2zl3vw1Pqrmf9YlAkzM6jnL/Y3pGiP5w3YcY1caYHuNngnhmfZ59wDuj7/0Pc28+xSuzfFnxLNVeykipBERbqwiFGGFal1OgS9MQ/icV+9C7Gwz9U4n6NjTPtwD8JGd0ODuqX8RCOuCAsHowYYjj5L528EcF7x5r7FRjwsbXLw13iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iPx2yxdpq/9Ts9naNZ9zEsfZNR0BYxUfoTq8CE7hA3g=;
 b=E2TcspECgaCbWWQDby/avZcMf64ywoQrpwhg5sFgVtU1+miql4VjrfOLOS5IjZs6TCp+dCjuW7f0LV81Lmzq6kKPhyoViTpHYAXXTeo+1wxlQu3caG9pZ1biGC+yxTl+eaQzeI/GKuAZ3JSBQgqffj72ZGdlfJ0ByZZc2ttTGABonO16ZWWeLV23LidYV1ZbvdKM1ZTS1wTTtW//Bc4M54Klmmf9c21pN4sx3xt+h5Iek7UwrjEiQRoYqQYRRQlKrsZ/ryn/Y9xTXlSCEtTqmH4CyHFm7ZnfvDuJgSTO7UexTwZCjb8DTEDSmXkrOsDYr84hDZp2vYNTR0wsOQr9Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by BN9PR11MB5481.namprd11.prod.outlook.com (2603:10b6:408:102::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.27; Fri, 1 Dec
 2023 13:43:58 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::51c3:59ea:6d4:8bc0]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::51c3:59ea:6d4:8bc0%4]) with mapi id 15.20.7046.027; Fri, 1 Dec 2023
 13:43:57 +0000
Message-ID: <75320004-63bc-414f-a8e1-2fef23859b9a@intel.com>
Date: Fri, 1 Dec 2023 19:13:49 +0530
User-Agent: Mozilla Thunderbird
To: Karthik Poosa <karthik.poosa@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231201045803.1131795-1-karthik.poosa@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20231201045803.1131795-1-karthik.poosa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0072.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::17) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|BN9PR11MB5481:EE_
X-MS-Office365-Filtering-Correlation-Id: 3bff2d47-2e8f-4df7-e03c-08dbf2739147
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RYHRF14jlTC4ouRpOW9GVY0YOUW4JMxhYF3kwSjQJhTeBjrwSIZ/X+tTYV4ym4FX5+LePXbG7gZSQHCsHTogTu7t2P4b57oDr/AI4QpTRYih6OVCeNjA0UDrxIKGWtv8e1bk+JY2eSuiPKCqrUPew5S7qolBa6IEpBYjWR2XqviTgEj07oQhaoFKQ1+Q/aS6d/QzAs9X+cMC/nOmQNI7AF3cRap966ipGQx261uvlxHTdwTeZOnTPTC4IJKI5GmNvSx7KNqmi+HPJ8wucQXLPI+T35o00Q9pDTNViox2DcBNmsxnD26UIVOlGOIbaaKnKfJBeXIX1EpyX3zSaaNZSqGY0tb0Xy38eWrRIB0gmgBbpbaaAD0msOutwK9HInhba3xuVR9bI6x53lx/aLdXV81QT8K4X9qaSmmXJBWGne5Om4o5F2JvvRoyNtG0zSb0fBWVpAsaRTzUqA1ElO819qkpibbZpXxvOr1m1vh33cgEr/2sUzpV2BEv4Vnw5rje9Re8sqLnx3SMtK/BXXNT5TId2kzwxWqdlU1H+dFzGiSS6AC8MZmhcWhFpUdyfinh1tkO4tC2NTazEVvWQS5bmdhIlrfmXosjTDxQVN0DDqhhwBKtMH+UUEh7TscHH872fZF8b7IIj+OnI2me/ZubpA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(346002)(376002)(39860400002)(366004)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(31686004)(86362001)(26005)(66946007)(66556008)(66476007)(38100700002)(82960400001)(36756003)(31696002)(6666004)(6506007)(83380400001)(107886003)(2616005)(6512007)(53546011)(6486002)(2906002)(316002)(478600001)(8936002)(8676002)(4326008)(5660300002)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzE1WGcxRjhNZklRWG9GVmhJLzF1OEUwcDNoQTh3aEV1NjN5Mkl0cGQ1UjY2?=
 =?utf-8?B?SitlT3pPWTBqclJqR082VUFaVE4wMHRldXpEeGFlN0lxTXB5VWlFRDR2bmxP?=
 =?utf-8?B?b1Q1V2VMVXVCQXlmbjNCemh1cFZNYUhhWC9Id2pHdE5hK2lhdEdEcFZUSzhN?=
 =?utf-8?B?a3Y1M3poeFdVNm9wNUhkVVZRaUN3NmhUUnJGS1dycG83WXVxWDZRdCtrWWVY?=
 =?utf-8?B?dmxzNXNxUURYR3pNa1BWOVhHUjRwMlR2ZnM4alJKcDZFRTVTVFA2OEZ1S05I?=
 =?utf-8?B?QWtOLzk3bmR6RStCQjRlRnpGSnhRTnkxdm9zZzcyNGVId1R6Qy8zbm43SWNo?=
 =?utf-8?B?NnYxWTZXVVlRN1J1Z1VxTy8yZUhvdGZrSlpJZ2ZoZ1kyRHdzdXA0aXFCSy9t?=
 =?utf-8?B?dHBueFR1bjg2ZGtsejM2M0JOblUxaGZUbzQxWERJY01pU0NYU29HZ1QzRFgv?=
 =?utf-8?B?L0YyZHpZMUhWZXdqYlFWdFducTE1NE00eTBTZy8yaTBURVlBc1R4dUt0bG9F?=
 =?utf-8?B?K0xBdDVPeC96VjlIRE9zaWtwOXMzSTBDcUdtRjJHQzIxREZUQWpKaXRSc3lP?=
 =?utf-8?B?bEtZZmd6VDNrUTdZdUptSkVkRFkrSlYwQ2dGamNIWHNKT1NWaEtaeWlWRXA3?=
 =?utf-8?B?UWhxSG12Q0FUM25FWXlyYTVvc2N6cjF3UExSalJ4TnhpUVRvaW8yZDVMQVVK?=
 =?utf-8?B?NHZkUXRYMVFNaStWNzREZ2pwR2EwdmZ5SWd4clUwdE9NbnNBWWdpaXJCRm1s?=
 =?utf-8?B?K3ZUYUgyYzNxVUd3cDRSYTYzUHJybjhaL1FaUnhxZWVKRThjQ1RIbk92dFdv?=
 =?utf-8?B?Rm43bDRWUmIrK2paellUdm9ibFJqSkQ3bWVHWE1WbDJ4VjQxZVA3T3VJV2pS?=
 =?utf-8?B?NjMzQ2lKMGcvMytaQ1JCRmNOdWM5U0JuMmM1MStLUWRXUWpaaEc1VzFNdTBW?=
 =?utf-8?B?cU1jRzRHc3lFc21BNGxYL3NoN2J2OUZtdllnTEpCMDFrQTdKMWZUUWNwNmhS?=
 =?utf-8?B?VitoaWN4OW5BbHRFSlAzY0Uxc1Rwa2wyeUJHS09BQjZLc0N2Q2ZIQ3pkMzQy?=
 =?utf-8?B?ZTB2Zkg1S1l4bWJoRi8wM1FLYXFhQTZYalhlOVJXTVZLMjVSSGQ0NU5EMENM?=
 =?utf-8?B?Uk96dVM5NEdYTTFZQUsvbXNKZ1M0L2EyMkl4b0hmQTZkdTJpZTl1bHR1MFM3?=
 =?utf-8?B?WGpDM3dIT3hlZ0gyVFVmOGlKOXF6bDRYL2NoL2RDeGJ1ajQzdEdMUnFlMk9l?=
 =?utf-8?B?SmxVVFoybUJQbys1OXN2YWJxUWdxT0g2Qi9IVUcreWVGZFptOWFsTXZ4UlhO?=
 =?utf-8?B?NkN2YllyVXU5WFh1TDRZd1NKRTZpcG5nWFY5OGNRKzRjRXYzWjNyMU1JU0NL?=
 =?utf-8?B?QjFySWNYSVRRUUU3UDBKSVNKVEpxMzlzcWhpRVRSS05JRHRIS0NjT004cEt4?=
 =?utf-8?B?TW13ZG9UMEJ5L3VYVHJQcDlBQjZyclowSEN4NmNFQTVJMHdyUmpvc1UvcDk1?=
 =?utf-8?B?cEd2KzhxSHJDRUFNd09HbjhZUnltWkVOY0lsSDE4bWpvZHpVRkNrK2dCb0Qr?=
 =?utf-8?B?YlBFMWVVTmZJU3c5bzgzRzFZSzM1SWJkWS9lK0tUTUxocFFhVFRGd2JWejBB?=
 =?utf-8?B?Rlpkck9pTkRMdnJiMzlmZng1WFRsbUg4c2dyN2kyZmRJSTRZNTVFMGpkNDRU?=
 =?utf-8?B?N2E3TUJudmcxbmZoa1c3SXRvYTFRR01uYk9nbVVtR0VaTW9YSG9nMytvbGFL?=
 =?utf-8?B?OUE1bG1aMTdWcVNob3Q5T002YXo1R1h3Z0c2VW95RndKUVhqbk1oaXZCeEh1?=
 =?utf-8?B?Q1lTSTBhTmkwRjE0ZmdNSllMcXdyQ2dZQ2cxL0kwTStpSkFWNDdSV25CeE50?=
 =?utf-8?B?OE5iOENldzJML2ZEQ21RRTFscGw3Ly82aEpleHNXWHNDZGk5OGdtN2JTTGNz?=
 =?utf-8?B?SE1lZ2MxQmI1bWE1MURPS09vSGhhY2pUNkdrWEk2eEFyb3RwZ25vMlkxeVF5?=
 =?utf-8?B?aHNOaWZnWkhnYXltb2Mzb0lLMEMxY25mb3p4QjdhQXpKQzdqTUVJdEw2RmY3?=
 =?utf-8?B?MGZZT3ZlblFkdnlCaS96aUl2UDNQb1ZLR1BBMk02MCs5R0owQkNHaGxhRUk3?=
 =?utf-8?B?ekZpdjdvK0w5MjM2KzdCWFRuaFVJYTFITlJLSVAzUHlyYmdDS1AwaEE4eG44?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bff2d47-2e8f-4df7-e03c-08dbf2739147
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 13:43:57.9108 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: unKyK/RqJ2IkKEcX8l/sCgl4GQf4UcTVwjv3lpjCo1fZqqhGVnbB52KueqcScz/wu1o/+ijHBPfzt0TgCh5Bnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5481
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hwmon: Fix static analysis tool
 errors in i915 hwmon
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

Hi Karthik,

On 01-12-2023 10:28, Karthik Poosa wrote:
> Updated i915 hwmon with fixes for issues reported by static analysis tool.
> Fixed unintentional buffer overflow (OVERFLOW_BEFORE_WIDEN) with upcasting.
> 
> v2: Updated commit message with details of issue [Jani].
Please add fixes tag.
Fixes: 4c2572fe0ae7 ("drm/i915/hwmon: Expose power1_max_interval")

Regards,
Badal
> 
> Signed-off-by: Karthik Poosa <karthik.poosa@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_hwmon.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index 975da8e7f2a9..8c3f443c8347 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -175,7 +175,7 @@ hwm_power1_max_interval_show(struct device *dev, struct device_attribute *attr,
>   	 *     tau4 = (4 | x) << y
>   	 * but add 2 when doing the final right shift to account for units
>   	 */
> -	tau4 = ((1 << x_w) | x) << y;
> +	tau4 = (u64)((1 << x_w) | x) << y;
>   	/* val in hwmon interface units (millisec) */
>   	out = mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time + x_w);
>   
> @@ -211,7 +211,7 @@ hwm_power1_max_interval_store(struct device *dev,
>   	r = FIELD_PREP(PKG_MAX_WIN, PKG_MAX_WIN_DEFAULT);
>   	x = REG_FIELD_GET(PKG_MAX_WIN_X, r);
>   	y = REG_FIELD_GET(PKG_MAX_WIN_Y, r);
> -	tau4 = ((1 << x_w) | x) << y;
> +	tau4 = (u64)((1 << x_w) | x) << y;
>   	max_win = mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time + x_w);
>   
>   	if (val > max_win)
