Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 450184D7A59
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 06:29:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DDD610E86E;
	Mon, 14 Mar 2022 05:29:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFBBC10E87F
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 05:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647235771; x=1678771771;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=02yA+ewHPu19wzzc8X5eVDhSk7AGzEbL1l0n+7cLIM4=;
 b=TzagPwfzKdZfuKkr9LviW4l6SDoJTcGuSiqMHrW4JEWRjIqzDS/23IX2
 VXUo68VDMgOBicG/hwRQmXi0Vo3TPdXoL9XVzZF+8zKtxW+VKF+/FfA+b
 TtjY1OoxMgUFWQTQRNQAs3x/6uLS4NeMel3DA447JmJ0E+7zCUoB2Xb1M
 18/hwaW7xERPzOTtWM9bDobOHQpiOSbm8iqs5pUMRsz6Vwb1atRS4CQv4
 blEnDxjZeyb08IrRpmsHGeAISdNF/XA3ttUAfViC10oVUwx6y8IYJdL36
 IWvtG+hG9G4UsEamTv8+XHcv0+/urAkOjWiDhUoiMNzjCbg1Kv0PbecJH w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="316662292"
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; d="scan'208";a="316662292"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2022 22:29:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; d="scan'208";a="549077691"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 13 Mar 2022 22:29:30 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Sun, 13 Mar 2022 22:29:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Sun, 13 Mar 2022 22:29:30 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Sun, 13 Mar 2022 22:29:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N5S6op3jtR34h4/p/Wy+GXy92ZPSJXplyn1AAv/OO9GNCSiBLkscVfLnh0aAUtk1aUJduC/V6buZTYCk7JN4W9iix61NOFmDPIW/yPSJFqAJLNVzTPYHmDznQRbICQM16jJLpB740J+4UE9ieHP8tJqv4gKrSG+U0lBISFpK5kB5/ucfYQJfUhBx61QNISZoPQqwlBhIZURC4udagsMxRwwzD+XzXpJt6YqhUJ20lLdKmGO4BMdRfq41JuvSuPLwR3E5abQm4kT/XaKDXx+FlMKIO4XbU9rx9j5k+jDoTrIEusXvPhER9P7s6sX9aBGKxF8SxpDgNUzF467AY/ZjJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VqSFryNdA8QLDHokYfXQks8SwMOuixgFkS+Nt3aQQMw=;
 b=T43XbxsaZxq+EVfzAmyX7fXngtu1rR28Fr+fvC/Ik29U+PDLp3obARDFGLbrQWY7hvf5YxkcOKbPcOp0qzNmxfCsJQS5+Jp5QuNbZVmTaEa9Jm1NFOgc/xhjfTrLO+d9uCsQeHIGLMKqlNGlqauldxLWvmrwEXTV8ofee1+dUqLc9SewSQma/ApOSm9yj04pTu2hg5PcPDPS1wWhjNjOvagG4sG5/1aWLURMe8obtODzcvut46hhPbwDrlg29JaG3O3ec0JwBuGnpBUoFGhLhiDw6RmtCu3bMmein/mMgcGCUd9NIPJBPyk1f0qngq17+TQt/+LE03cx6x3Iua/Hjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.24; Mon, 14 Mar
 2022 05:29:27 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::2e:34b0:28b3:472a]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::2e:34b0:28b3:472a%8]) with mapi id 15.20.5061.028; Mon, 14 Mar 2022
 05:29:27 +0000
Message-ID: <63a70152-3153-a4eb-28c3-9d43a049ba57@intel.com>
Date: Mon, 14 Mar 2022 10:59:18 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Ashutosh Dixit <ashutosh.dixit@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220311200027.33701-1-ashutosh.dixit@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20220311200027.33701-1-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BM1PR0101CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:1a::22) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: facaa726-8048-479a-6b19-08da057b9b56
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM4PR11MB5488F22E2A15D72734420AD2E50F9@DM4PR11MB5488.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PUdtjNA0zTwQZKtxeE9eEF7e15LZF4h9HrnNdTwDUg46vja6ExAZCWSlG8IqlyaSNasY19GOzMEOIZ6SAzVG3q706YTPV7Nvn6z9Jusri7+rUzwV1WDrK6rMHfgcZ1mi4ko4aktKPD0Vzhr1iZQ0xGqvVHJ/GlPNJPBahv5Mf7RpWlQjs1gF10+8JjUyGzXSd5j7y+/2q9gzU+SCme5X6pcTjd35eFAeJ7NnB2FkAeFIfVDRvLucpBNbOEcnXdvh5a22XkyDW/N8vK7aEBkNMrr+BcyNbYOgQlbsm4j1L1zQD/xiUqNaHxiYIPVCNQDCpZLK31WWUIYyy/9hGycY/OMjzEa9ff8JgSljXm1AwJGW6+YLlcFJYnF+w2zY8COuhgIW6/7ARQlJ9eJNCDrAi8sRyHo29K8F2a0umJiBcjd/MhbO357DNnT+hIe6vZ1z78Tg3uTOXarRk3OYk2YswNBmgnLwBfvpo4j3jgnA00wxkK9hY21pNA9dEpZ8Q0TaotlIrwDPOTT12LDVEWn4bIOXYr4tkVV71iEZt/F+thoRIikUhIqdsiNilXl5VfRAnDOMKCcRD+A/B3gtC59h9JRqJx3p7mBtfWrhm7nsWhRMr5uFEo7sBRGO28T3ohGYQeecuEWd7EV4jmlEsUQvBWtK/L5lG9HLs4eAbqzWCO7Kzhv1BG6TO8kQkVdAG9Kazac90skVxWRNOHqkg6CoaY8gSxb6yc/uODq+JpZVuYI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(36756003)(5660300002)(31686004)(66946007)(66476007)(66556008)(8676002)(83380400001)(316002)(8936002)(2616005)(6512007)(86362001)(6666004)(26005)(186003)(508600001)(53546011)(31696002)(6486002)(6506007)(2906002)(38100700002)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MnBwMWt6bHUvTXdwaEpWYm5hUm5BWE9reUpEWmVBWjFLY0xpZTNjYUt1Sk9t?=
 =?utf-8?B?dUdGLzNRRGRBS1FodWJ3S3BYL0swNkdVTEpuYm5yangrbEZ3cUlQeWt0Qmky?=
 =?utf-8?B?dXVXNmMwd1o2OVdET05JVWpDaHNCQ0QzaHk3bWRseUVlMW4zSE8wcmtMWlM4?=
 =?utf-8?B?RmxkRUFrWmdHRXl0YW1BdWZLM2IxbFk3SzRVQmJURFRSVzltK0RLQ3hGdUl0?=
 =?utf-8?B?a29YUU9ZRVBiMEErdlB4UzkvOEV3R0VkNDJhc1JhK2dhb1ZZeHJRZmhzNlk0?=
 =?utf-8?B?Q2dtZlJhQWtrVEJiY3IwZkk3SFFCRlJCOXRxOVJWQTgyREdFazdyYlJJUHRP?=
 =?utf-8?B?dWwvNUlMbkdCQ3gxdXlBNWx0eVNmUm9wcmFoclpRZExhcGRrOSt3WGszbnNi?=
 =?utf-8?B?SUJINCtROXd1NGNMRVZOTndkRmNEZFU0Q3ZlU0gya1c2TWE0WWFnN3VSMGNj?=
 =?utf-8?B?R3pDK3BwcG82eGdtdUp5MDl6dFVWWWNZRlIxc3QrRWhiSXVZa1hQTyt2VEVC?=
 =?utf-8?B?NjN5QzVuUjZZVUxYeU5PNXEyMzZFcDJlKzJJbVZkM3U5NEZNNEdiQVhxckpS?=
 =?utf-8?B?ZWRUT3JnVU8vT25RdlVsQmZMakxsMFdtdFhBd0dWbmRNendEWXlGdk4wclVx?=
 =?utf-8?B?TXlDZmlhaWJsL3ZUSmVCVjBkV3dnWnNmZTgwM0M3Q1B0K0xrTXNKMFQ2UzBo?=
 =?utf-8?B?ZWJSWHVadzdDeCt6RnZPYldDZVdkTHhIMnE5ZzViUVA2aWRzL05HWFo0Ym84?=
 =?utf-8?B?TFVxR3dEOWZ3dTF6aGIxdk55MnFSSGQwWXJLbFFodWFGUjlxdW9oeHliZlN6?=
 =?utf-8?B?T3gxNHAyZGhGQzV0YXhJR21iS0xEKzFSbGxGb0dWaVdNK05zR094RlMwYi9z?=
 =?utf-8?B?MHdtMmtKUVU4TmFIWjlhVlZVRGlicWI0ZTFwRk5XcEo3ZVA5b3VWSFNCMXdz?=
 =?utf-8?B?MStWVUxPQjk4M2xJVlJ4QWlURWZsdm93dkRuMHRsUDdQR3hpSUxHQWE5MEhD?=
 =?utf-8?B?TGszbldDK1JXdGRhRnorYjBKaDVhQ3J0bm1Ib0g4SnZqa0tRdmx1SlFQZ3dw?=
 =?utf-8?B?TDUxWDJ6cStudEQxMzhVcHVIdnBlbS9hZWxwOExoUEU0cTA2NXM3QlBNV2Y2?=
 =?utf-8?B?Ni9kN2h6M09yaGdIWXV4dHRtSnJ1UVJZcVB5Y0d4Wm9ENzFYTFZqeGRSaDc1?=
 =?utf-8?B?UDVQRHlqcUVtRitxSkplYXhYZSs1bEJBZmZ1aDVXMlNVcEtwbmVrajlicm92?=
 =?utf-8?B?SG40RXJtNGptcFAwSkdBREVmemdJS0YwN2ZUdzhoaEVBR3c5cmJQa29TcjdV?=
 =?utf-8?B?VVJ0NDhKMmp6UTN0RkI0VlY3d0tMTXpHR21Qc2piYU5QZXFJZ3BkVHZmWC9L?=
 =?utf-8?B?b3FwZkhTbm4xRVRSZ0ZraWZzWU5LT2RvYUY0NUl1Y2xDN3I3VFJERC9NdHlM?=
 =?utf-8?B?UmhQTmE0ZXJIYUlmWTJIM2RuaGkxRjRLZTA4OWlncWkyeXNMdU4vaCtPcGUy?=
 =?utf-8?B?OTBwTTZ4b09ZWXRzNnlaa0FVcHJnU2xnWnJTMDFpdlV3aGhHSjFqeUdpbjZj?=
 =?utf-8?B?Vm11RWtIY3p3QjlWWEFKV0Jkc1pwU04wMnpsTSsyVkZjcS9VWFRMeThVQWla?=
 =?utf-8?B?MWVSS05jV3RaTUNDNlo0dkdVMzdsVlFzWUpRWXhFU1dqZzJYZlh6RXpPODZp?=
 =?utf-8?B?QTIramlySitTQisrOWF4TXhoR3BvSG0wbnlHUG05UkhpYTlQVENjVUdGaWty?=
 =?utf-8?B?T2NFU2JUbFNsMi92dDZMY2huaWZNRlVseHBNK2FpanZtc2hVa1FxYUF1dlhM?=
 =?utf-8?B?aWRQendkOTJZR0k1a2RFeEIva3g4WE8rcHVaSWx0dkNGOGZmZkxOVnVjUzhG?=
 =?utf-8?B?ZUxUZWp1Nk5SL3NOSHUzRWV3MzA0blV2YWN4RytEUVd0d2x4YkVZV01CRVpP?=
 =?utf-8?B?TFBhVDVIWUMxT1pkb1JKRUtMejVrWTBkcjlRZkxSWit6YXdyM1kydjR6RUU1?=
 =?utf-8?B?Vk9KR1Z2Q3F3PT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: facaa726-8048-479a-6b19-08da057b9b56
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2022 05:29:27.6125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QC/VQf9XBvtNulTQZTqKoBBnRIsvPYn8D/dPkDsX9Fvto1VKmnZEkhtnAB8OVT9Nwhxf1a1uFEe4rUAJBpiUag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5488
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Drop redundant IS_VALLEYVIEW
 check in __get_rc6()
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



On 12-03-2022 01:30, Ashutosh Dixit wrote:
> Because VLV_GT_RENDER_RC6 == GEN6_GT_GFX_RC6, the IS_VALLEYVIEW() check is
> not needed. Neither is the check present in other code paths which call
> intel_rc6_residency_ns() (in functions gen6_drpc(), rc6_residency() and
> rc6_residency_ms_show()).
> 
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pmu.c | 5 +----
>   1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index cfc21042499d..3e3b09588fd3 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -148,10 +148,7 @@ static u64 __get_rc6(struct intel_gt *gt)
>   	struct drm_i915_private *i915 = gt->i915;
>   	u64 val;
>   
> -	val = intel_rc6_residency_ns(&gt->rc6,
> -				     IS_VALLEYVIEW(i915) ?
> -				     VLV_GT_RENDER_RC6 :
> -				     GEN6_GT_GFX_RC6);
> +	val = intel_rc6_residency_ns(&gt->rc6, GEN6_GT_GFX_RC6);
This change looks fine.
Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
>   
>   	if (HAS_RC6p(i915))
>   		val += intel_rc6_residency_ns(&gt->rc6, GEN6_GT_GFX_RC6p);
