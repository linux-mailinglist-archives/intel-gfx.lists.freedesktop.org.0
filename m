Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D7B62912B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 05:22:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93C4189CF6;
	Tue, 15 Nov 2022 04:21:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2610F89CF6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 04:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668486115; x=1700022115;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lqLi9N9Rwt1yhO0yKuvZdDlyKTDXLvMgPdBciT03Nsg=;
 b=ID5mEpL2qK7kY8lvfnQIIODw/aAuumIjLMp9VoA50O5FZMXOCM9/6A98
 qP5cl2t8tfRepMveyCXC7BLOtt4VivwXJCy/opH7mIrE+1SqDahD8r5MT
 oEDE/M5ZPMRIKpf31i4vEyN+T87usJXUcF4i+vvZkMzW1eoEorfV+Wx6o
 aiCyIwvY6hj6TEHh1TnzK5bfA4kqaUFbe+7U7FHj9SIUPVptmJTQ1DxQO
 jcas2Gjxz31LKWCV5TloaNyGZbtawqa7qd+HsiISC1bxnmq6qRFZpZBTQ
 5haLVly+243cyN7GJmpUxqBZBNCuIZJzM3bgm5oDoX2Jl5csP0rovtXTU Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="291867850"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="291867850"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 20:21:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="641050346"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="641050346"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 14 Nov 2022 20:21:54 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 20:21:54 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 20:21:54 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 20:21:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GLMMMzEPlufVoiumzlDK3VRW06NDEGK71HFIo3jQP63+KuUu8cZ2jr8Jn3bmt8KLs/nYUL9TVV25pmm2lFNjRZwqccZRTwjXreSX81HcYzMI5VjDHxr+uJ65rDbjc4dZyz0QOZ5/NePJPV/JYWo4LEpqAOgjKzJkVBHeNCLDZRq+ZofvDAmhS+MtWMuJw3sfPrZvimAPw36TW86JnM9XkQ4JHMEiXqJsUWcVAGWXzUkFuWfoUPl9M9aj3lKC7JNrgE1WfivpB7oHg6BSsiQqiAahQ4Eokk9PK0z/VjH73O0oaQfc70zeeR8XdG6cBkmdGKzy6CsCEawKZO/Xzg56yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t5oM/QoWBN5Ne9uuU9qdPX0oeZMVYEOQaSEk4yxVtzE=;
 b=h9HU+YYk5B740aFp937hC4nJDf+4l16dgkxHS0C4PrtZshdVwi2Yiewtg6386TptCYwlWo+EsQWW7cS1Lz4z0bYLfRuOXslzpzzeBA0MknIyBkqPrcYZL2gGP0nC/c5RJAj2o6VRNaRk8vgTIUhEqQRadYQ/VgvzV+aI8UZzRPk5gzsh3YOQOfwxGu7CT5KXxTE1l//0f8/973mEWM0+bMPWEA/nwR7BqHwzjqxQNseqi1GKF237fQZVZqcXQYmwh83UcrGZtBotE0dnk9JkvOWtScBZF0WtFBnFZFPiW52Q+t0HDUvE18zBKt9n9cm0w1PzTspq6yb72G00FEFPRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 LV2PR11MB5997.namprd11.prod.outlook.com (2603:10b6:408:17f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Tue, 15 Nov
 2022 04:21:51 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%5]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 04:21:51 +0000
Message-ID: <c08b5cba-67df-28e5-e310-e261e25c233c@intel.com>
Date: Mon, 14 Nov 2022 20:21:49 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
 <20221021173946.366210-7-alan.previn.teres.alexis@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20221021173946.366210-7-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0072.namprd05.prod.outlook.com
 (2603:10b6:a03:74::49) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|LV2PR11MB5997:EE_
X-MS-Office365-Filtering-Correlation-Id: f6c3e45c-6682-4712-7c6f-08dac6c0eb5c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XSnYNj19+KlkiCEWfFsef4r7qN46Fv5/ai+asAwT2z95LIimJ/vhNTcQJirjo1VpLXzN90czoKxVtwxj1dDarnrUS+HbAi8aD0aCQkGaaNEGgleWhvmXfJS0l4XTqfHboauXd1QzJBXSd4kFc7r2v67TZ+MQ7a1QHr62mvxOD3P3crU6lBz406Ras33uPQlVHw4C+y3rZ+xAvzvaPsuH79yE7K5seZxKFMwn0IQuj88nolOyYh6YsmcdsLtIkK+s7NHYPbo84dQdJSGg2XGVkD9KNppT5YGBFNcvNDAOujuIjHHxk5SxmZ8Vn25Yfc1fIGymEd/FanqOPFyHUXVp/7JCdXJxEVWBfrlLX4Kdg5y/wnrG9/whnpULUwouAtM2c31ERVc01afKbqUEH1Q4Bxuj+ANoGqJlAtkxLWjjOfkZXrm7x8hLr/xRK0BI/6H0K/HlFFcU7M2nGd/9A5z+VTQiLhIPKwsLJ1pj508XNs7fYgGIrr8hudtbrzaNMITE4ISLrTX/6RPb/pNeSlfM+7tGDCPiOgHOVFkFz27iYTVWkC+9ZrcPiK7froIjTMNn78VKpT53fzCZPJr8ECCWzJSoh1UgbdxaFZBognzsj8H/7xyXiOWNWPw6X6ZtJTmBACjSZ5Gb8olneXWBCx8zS38LgIyA4YfilcNW7bv67YCRI/TzCNAKvXxQzWysL+weIY5NEnSQMBFiWECFUcssK25PWJ3eOY6crIoWm++1WoS0jGG5lk3TLb4pV6RLSWyGtiMkVnbA+yRaUHjdsSdTdcJ/mU/8u6tHsToWVPF7mYU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(396003)(136003)(366004)(346002)(451199015)(2906002)(8936002)(41300700001)(316002)(26005)(6512007)(2616005)(38100700002)(186003)(82960400001)(31696002)(83380400001)(86362001)(5660300002)(66946007)(8676002)(66476007)(66556008)(6506007)(53546011)(6486002)(478600001)(31686004)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QUhnSWZpYlpQVHI1TlpyOHZvbWRUZVZZUk9SQ2xOdkZ6M1BHdXlHM05PZ1Nk?=
 =?utf-8?B?NUw2OE5Zc2tSUXRCd0NZdTJ6V1UzVmE0WU1mV3lWZEVpbmVOdEV2ZENvVkFW?=
 =?utf-8?B?QVY5dnlYdUs4QXYxWklCL1BkUGJvM1BBaDFSOVJsY3NDQi92cXJkeXBZUWQy?=
 =?utf-8?B?RkVUMHB4aG5acmZaWVF3a2xqTG1qUlRnMjZLbCsrZXR2WlpFMWJBR2lMdWdt?=
 =?utf-8?B?Znh0MjViSHZVM1JZZGhhSWdmbFp1eHQ1V3o0MURNZFFIb3NLZHg2NC80RGho?=
 =?utf-8?B?ekJ1Mkc0WUgxVjh5SCtUQnRjWnNlTnY3SEo4ZHZLSHJpcVpBdlZzOWRwZDZZ?=
 =?utf-8?B?YkNwc3hmWTQ1YzhYWlZ2RTB2L0U5Ky9mZFFCZUZGdE1ZY1RONHFwR2d1Rksx?=
 =?utf-8?B?Yi9WblJKenBFSnJiSU10T1duYTJFd1N3VnRoRDltWFVEeXc5SG02cVNyaHAx?=
 =?utf-8?B?cENaUWVkQ3ZlZkNQZTJ4NTYzeVdxbk1UaGlJMWVsclMydWltTGcyVzJDVmZK?=
 =?utf-8?B?ZVNxWUJOOXMzWjlVUGlxNmtYL1BoYk45ZWkyOVR5dnRSQmM5WWVTN1J6WGFs?=
 =?utf-8?B?WmNaSmpjMnEwRkdrRnYxdXRjbUh4YXg1SXJYWC9WdzRQR0VYTWVmVnNrV1Yz?=
 =?utf-8?B?VGgxQnR6VDVrbkIwcDl5SHdBbjRSL1oxaE1PL1Z4bnlHd1BvdGZWanJBUEdK?=
 =?utf-8?B?RnVQMjgyMTg2ZTljaENqZm9zTXE2Wk1VS0xtaS9qUUloRjlmN0pWK0trOXIx?=
 =?utf-8?B?dHFXK2F4anpBMW93eXR1M0VraXlDRTBCK2p5a25NU1dFVVppeTFWVDZScVlo?=
 =?utf-8?B?TWhmc3FEUmRQNHlOZWpuSVBNZnlYQ2RqTU82c3BwQU43emVZY2YvMkNZZFhz?=
 =?utf-8?B?WFQ2aEZiQVhKS3hyaU5sSFpKbUVkT3NUVEk4dkkzNGxTaXZtUEphN3poT1R4?=
 =?utf-8?B?YndsSkFRMm1tRnM4NDNNWHJFSEpCeW9FUmpyZm1aVVlpUzQyNE5wZDVhTHU1?=
 =?utf-8?B?bWd3c2tQSEZrQVZoblREck1oNTg0QTNzL3VXR2Y4UGVqbEV5TzAzWVMvTFhJ?=
 =?utf-8?B?c2dzemJyR2FzTXl4Q2dKQWpSbUV4ZU9ibFRZN0REcWVSbURvWlF5N2lEY1FQ?=
 =?utf-8?B?eEUxZjMrR2hrejlnU1M2b2x6Ulg5MzBlaGMzWEdqVFlHRmFSeXNPU1NpbnQw?=
 =?utf-8?B?ZkhmOWFwMjFBeWpQNmE1aCtZdDBRL0NybFNCVUZxZ3p2NFZBaVY5TEdiaEh2?=
 =?utf-8?B?d3hucFdsWGtWenl3VnJjcXF4aXI4QTJuU0p0UE91Q3plU29FMDZkeVFCYjJQ?=
 =?utf-8?B?QkljVHhDa0p4czhhZVpsMWxuOXNNZVlpWDhvYzEzaGVNOWxNa09iMjE2WUhw?=
 =?utf-8?B?NTNWK1UveVN6UCszNXBCVDdJN3FydHpwcE14UDM4UVVLaEt0ckxRQURiRTNn?=
 =?utf-8?B?eWlvNWdWVCsyWG9vSVJZUHBmbUhyLzk1cjYwWFZubi9HdTFJYXA3cXlQVTFn?=
 =?utf-8?B?dDJPS3p0cFQ4dlIxSUlZTjhHWFFmZzk3a0tuNnB2d05nNUNTOGRVUU1BNjVo?=
 =?utf-8?B?R1lHUCtvM2J4TXVWbUJQc3c0YWFjTCtWUWh4Y3JSNmV3V1NQTjBpVTQ3ZktW?=
 =?utf-8?B?THhRSGkrZXEyeFhFcDZXS2p3bVRMQXAvQUFUdWlsT3NVaEVxTVVhMFBGMUor?=
 =?utf-8?B?Z3VnRzRYQnJHcko2WFdCdzc1ZGNjRGRHaEZGdWtOZVJpaTRNWll1bHlQSkho?=
 =?utf-8?B?SXpVOTlmbHBjVmNzSWQ5U080aFNZWmFRZWNCMWJYUk5RR1ZES3gvaStKWnh5?=
 =?utf-8?B?VlM0WWlqN3NNZ2xtbDg0NEpOdlpaL1JjbEcyOGxqK1RCZGNBdk1mMlpKcEtj?=
 =?utf-8?B?SkV4NXlsOFA3R2lZenhKK0gxa2RLekV5TGNjZGJObHZwN1k3Nzg1UVpwd2pu?=
 =?utf-8?B?Qm9vRzM2ZDk4bkFGakxPZkR3SmgyNHEzNzBvME80ZTM1am5pRGp3NkNFcHN3?=
 =?utf-8?B?ZmJGV2d0SXVValNKOU5Ha0JocE9lbkZ1Q1NEQ2tqWDBtZXNSNVE5anZhbTRr?=
 =?utf-8?B?b2xVeXVPckdkTGl0VkpuUmhQQll3U3hnNWhWQ1lDNW1sTU9JM294OVphaWRs?=
 =?utf-8?B?VWZQOVV5T1NLQ25xd1NEcE1mcGNHN2g5bVJ0dXAwaEdFRCtmMFFhdng2ZWd4?=
 =?utf-8?Q?oBdqKSZQ87602Kt7oqJw5uo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f6c3e45c-6682-4712-7c6f-08dac6c0eb5c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2022 04:21:51.2792 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zHYCPUoNrZi/qZpwiBLU9CyFEZoq8S4JnHDb6CIN2vKmYd2ttR7NZsjOhM4OB5rn5rqbonAq9ZT5kafddSApRCuLFhDySVfgYgJz+g7A8pA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5997
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 6/6] drm/i915/pxp: Make
 intel_pxp_key_check implicitly sort PXP-owning-GT
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



On 10/21/2022 10:39 AM, Alan Previn wrote:
> Make intel_pxp_key_check implicitly find the PXP-owning-GT.
> Callers of this function shall now pass in i915 since PXP
> is a global GPU feature. Make intel_pxp_key_check implicitly
> find the right gt to verify pxp session key establishment count
> so it's transparent to the callers.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     |  2 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp.c               | 10 +++++++++-
>   drivers/gpu/drm/i915/pxp/intel_pxp.h               |  2 +-
>   4 files changed, 12 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 7cb713043408..04e78acbaf5f 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1841,7 +1841,7 @@ static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
>   {
>   	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>   
> -	return intel_pxp_key_check(&to_gt(i915)->pxp, obj, false) == 0;
> +	return intel_pxp_key_check(i915, obj, false) == 0;
>   }
>   
>   static bool pxp_is_borked(struct drm_i915_gem_object *obj)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 1160723c9d2d..23224977e003 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -868,7 +868,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
>   		 */
>   		if (i915_gem_context_uses_protected_content(eb->gem_context) &&
>   		    i915_gem_object_is_protected(obj)) {
> -			err = intel_pxp_key_check(&vm->gt->pxp, obj, true);
> +			err = intel_pxp_key_check(vm->gt->i915, obj, true);
>   			if (err) {
>   				i915_gem_object_put(obj);
>   				return ERR_PTR(err);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index c87f812ba13a..5c9a4b2c9a75 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -313,10 +313,18 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp)
>   	intel_pxp_irq_disable(pxp);
>   }
>   
> -int intel_pxp_key_check(struct intel_pxp *pxp,
> +int intel_pxp_key_check(struct drm_i915_private *i915,
>   			struct drm_i915_gem_object *obj,
>   			bool assign)
>   {
> +	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
> +	struct intel_pxp *pxp;
> +
> +	if (!gt)
> +		return -ENODEV;
> +
> +	pxp = &gt->pxp;
> +
>   	if (!intel_gtpxp_is_active(pxp))
>   		return -ENODEV;
>   
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index c45949bb1f7b..85c5499daba5 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -33,7 +33,7 @@ void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
>   
>   int intel_pxp_start(struct drm_i915_private *i915);
>   
> -int intel_pxp_key_check(struct intel_pxp *pxp,
> +int intel_pxp_key_check(struct drm_i915_private *i915,
>   			struct drm_i915_gem_object *obj,
>   			bool assign);
>   

