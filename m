Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF105E7282
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 05:39:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF6DE10E0D5;
	Fri, 23 Sep 2022 03:39:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7F0510E0D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 03:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663904362; x=1695440362;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OEYZTNRT58owKXcm6KDMa53vEw/bK7sTuxyyeADpZAY=;
 b=MNfDoI3MCbwkL2rGQ7Km/u7LwMSb/sK9zmuozl4cwU6I3PWm9bFIpaPX
 E7CUI/OFl23vHyopmCyHkz9owQNbVf14Xk23WkH8KXljZcVzbB/uZIeZt
 BL3mhZ6vRY0zRX9ISWf/flxNCr0+3HstzwbXAdyb4TdX/AAyhY+QTVBAr
 E5MDDvzefUgNRmpxW8mCkpPO/sSfGrge8cdkKTmsp4LaZ7yL3JBYtErtf
 O6xse9A5LaYrwcpG2+fJfWTq3ws5tUzo9RzA0QQY+I67TPYX3zzVBq/80
 SfFeuSQ8de5RwhgOpLkjbSFplKAn+x48HTJwaVcKBUHSGLzvljuRJ/fIR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="299222079"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="299222079"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 20:39:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="865147380"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 22 Sep 2022 20:39:22 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 20:39:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 20:39:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 20:39:20 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 20:39:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UbYv6ITDxI6MtmiynXvSIskN7Q7VXr7FF4cSZwiFJp/GxjIeujWCRb6X2RcUyLeR+aVgmDIYlNL/kRnC0fcVgNRJKMCoEPb30cfdlqnxdSvmuwSEj7+37bfEqWc7Ip66cIF0QI4XaG41LEyattVy/RWgn0F+2+ANQg7Oy61rI/5yOGpNPxdG6KMK4UtqujLkqWdA8ysz8ckLpFLhvEnlSH83IlveKA02ftQLWxWolJc4FSIxR6WBZ3E97HUvibO4Qjcrf8FBrlja6kRBoDs6XvdkRZTJCuBnetD0Mg9Ot9rUiBWQpiAqhiRx9RSfXMn56OfAGHgaqCUr+cXAnvxZtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rVHu6EL2AtCeKYq2rHmGXepY0FyrevrUxYuvgj07488=;
 b=jL5ZutHYZkElmyQTEM6lnlRxMZDMKts/wVjwvoL56ZZO881LSJHbjugh15jCNu3UgT8JTG/3BMQzZnzoi4ZP7x+cSQjuPFYIgq++1S27Z7OFNl7BwbPVWMRi8371FvshESQCnIwWgNkaZSt1E3c/aO19ZQSJTmOJrQbZj9JXm3CgszcYsC9RDSNY4qCE3R55ZY5Ul9xi3s9/3H7DzCE2vIZ2Zpyz0c7PUvr/bvnW8Ai7Q9abLVtHwb1MCXAV/l+LveT96V60A5lAoLKGy1CN8jkvjgNOpQOVQgF5qnHK0GQvy6rerT68eekL76975LncQgLW5eGee7judfNqEvcO6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by MW3PR11MB4762.namprd11.prod.outlook.com (2603:10b6:303:5d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Fri, 23 Sep
 2022 03:39:17 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::4cac:8f59:c719:adee]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::4cac:8f59:c719:adee%7]) with mapi id 15.20.5654.019; Fri, 23 Sep 2022
 03:39:17 +0000
Message-ID: <1b606f13-a067-ae2b-4009-2f1b0cb1eae9@intel.com>
Date: Thu, 22 Sep 2022 20:39:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Riana Tauro <riana.tauro@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220922143209.535323-1-riana.tauro@intel.com>
 <20220922143209.535323-2-riana.tauro@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20220922143209.535323-2-riana.tauro@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR01CA0021.prod.exchangelabs.com (2603:10b6:a02:80::34)
 To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|MW3PR11MB4762:EE_
X-MS-Office365-Filtering-Correlation-Id: 3164a5fd-138f-452e-5029-08da9d15317f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qLT2MITniT4wz8ndiVziULOc4bRN15Rv+Hg42J27hGzxo2IrO48xguv5iRZNvtJVdL1mRrxrSsmIjXQfWA7s9FedqrTv5v8r3LjW88lYwqwGk2I8Bxee2E0J8V0bG+1Qz9PdI13d6JPth8zQVhI8SemsW28NxE8s3uHFTYwQa6x+Yf3hRQhfBw2tRVp47WgClytucA7G0p72lI+wgwir2NNyQP+rJGaMENT5nhUWwh7CLMx5RWZ+Fn8RUQaLRtDsqXG9Jl2o91N8YQyRev6uNOVpjw0JxobrEgzrX/p3MgzVW6bXVt3S7/VeAQBePxR/DoCgCJa2lD3f/yTQi4JFiZW2b/HHhJq+YjRh3c9DFGIKuuGjWFlUl3o1GZTq8sPoZ1sxHK4qM0ZoyRnF9WnyjWWnHGT7K3rOzTGcLnSIhnh1a1CYp6C5wo4wDTB1+Hro9v5/xps6VvJ0F33GzuwuOcb9WyCF5K6p9U5eyOwLwsFxeM4iOepaAsKpHXjGZbVQyJUhjQ6m0Ve7gVryWiGI7rEn4dbE9O51JfFFGLA6B5T7JnrzhVg5mOTMJFjevwMyaQ8LAdy7B8WaSh/kjZ17Cf6GQaPwyX4PWaD3Rn1b9eVsFyfJyY51QIzGCh8hvR3aGLha50m89RXb1tKvaewcbRVcsk/F2wYIhKVGN+nDKY3XB+DGrQFWvp1BaodUKpLZHgHQ5c+jzhHbKL549D0iOQ+eD+EHUqw58tRVLw8Zvez2L1hhdht2QF/bZ4TNrzFNalmgr51xGHM+9rzrmXiX0E6Nx7OKGfmWDBKGJVPlwXU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(376002)(346002)(396003)(39860400002)(451199015)(186003)(31686004)(41300700001)(5660300002)(8936002)(36756003)(53546011)(38100700002)(31696002)(86362001)(82960400001)(6506007)(83380400001)(2616005)(6512007)(26005)(2906002)(107886003)(316002)(6486002)(478600001)(8676002)(4326008)(66946007)(66556008)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVlmQ1ZrK29XNzBJanQ3M3g4T3hRRWtvcE9ENVNNaTRpc1FTYmdoRjJsQ1Rj?=
 =?utf-8?B?K1RsbmpBM0FWQW9YWnRxQzBjYThYVU9mcTNoSWxjdDQ0Uk0yajk5RmhFWUxO?=
 =?utf-8?B?MEhEQnJkdFNTQVJtTUtSRHJmN3R2T08vNEwzUVBiTWVJOWtQU015S09HSGRM?=
 =?utf-8?B?b3JKRXB5TUtXQU5aWUhSUHlqcS91YTdWRGJCb3ZGZ3RqMno3RktydWpYQmRO?=
 =?utf-8?B?cnZqUDZOSkxzb2RVeXJWOW5lVW12TndiZlVrbHlzMmd4d2tjVTdpWUFjZVlP?=
 =?utf-8?B?eEpmUWtFUWh6dEtlZFd0ZENkSE0yaTZ2eWNPaHN2dVF0Nmg2UHVFR3gwc29R?=
 =?utf-8?B?S0taaFdvcFVzajI0L3VZcVVDRVNLZ3pNR212azRrRUQ5b1RHSHY1eXE0UFl0?=
 =?utf-8?B?OGhZRVdJYVVmRTNrN2R0RXpqWmhTZWphWE5iR3VXMFgxSXkwRW5Sc2pCY2h2?=
 =?utf-8?B?UXZWQ0NWK3NGcG5TaXBxVFFqN0lKYUN1L2tzZHFScE0rYnlMaVJnckpUb1Fw?=
 =?utf-8?B?aitaRGlYa2IrWjFUQzF0MjBMNlBySmkvUXNmNXVFLzRCbHlLT3JFTVlFVmJC?=
 =?utf-8?B?S3dYS25EK2JpeHlkQ0pveVpQOGhUZHIvNkE2aDZZUndleld5TGxjVEFXSmhO?=
 =?utf-8?B?Vjgyc0ViOWh2cE4waUNiM3FaMDhEa1d0YmVaNWVYTGJIbkNKVkxrN0pUQmgy?=
 =?utf-8?B?SHI3d3YrUENuQk4xbWhDeklFcHVFamdQWU1mNVVhUHpRYk9Ib0dzQTIrUEI1?=
 =?utf-8?B?UzloV0JGSFdSZThrUVRhVDNEZXR0UUFMby9HUGZtNG1CeVk4dm9IVml5amNW?=
 =?utf-8?B?eE5ORGJSS2tsOElyTW5mTkZmaDBIaUpKcjNuUzN0R3ZhUFJML1pIU1NxZkx6?=
 =?utf-8?B?WGh0eGtLcW5lQklwUmIwRDZHc3UzZS9wNHhOZTBYMDV4d0c5RFFwMHhVSDJi?=
 =?utf-8?B?Rys3OTJHbWpqM0FML0c3NkVvRzQ5anZWSTN2WDR3aEdaZ0dSanF5WlhzTDhp?=
 =?utf-8?B?a09sNUtOR3ZuVkx3ZjJWSzY1dnVrMy84cUFlKzdDTHNlOVFnakI1Sk5MMEdz?=
 =?utf-8?B?dDZ5Z3ZaQ0NQbFg0dEhLVi9HUFp3TVNiendGaFdjOHdJbUtxTktBRnJPamEx?=
 =?utf-8?B?bUZxRmNyWWdRTU1sUW91aWh5ZzVlRGtQSHAvZFJSOWpLYlNONXBRb2pURzZP?=
 =?utf-8?B?OFBFMnhDb2g2ajRpbEJxVmpLdmcrNEV4SjVMTHpZTDl2a2l4WlN0d2V2dTZ0?=
 =?utf-8?B?ZEtmOWxGSGU1UzBKTmVQR1h1YmZ4cW8wOUtDSU9oN2VQSCs2UTlnK3Z4RWRS?=
 =?utf-8?B?cXRZK1Q1OUtrUjMzaENqMUs1RjZtOUpuMlVrdDkyNk9LK25lSi9XdHBTclNr?=
 =?utf-8?B?YjFCR0FOeVFNTHliS2FSdGFxdjcxeXZ4QURRYndnaTVkTklsS09ydHNBVWFY?=
 =?utf-8?B?ckhwaHAzRGpyV2NiWUUvRStCM1VNM0gvVjhwN3p2ZkdmRWtkVmluMUowOG9Y?=
 =?utf-8?B?T1lVMTVLenM4ZWlxN3l1QllacEx3MDdQVy9uQ0V4dERsSitObVFjZkoweUwv?=
 =?utf-8?B?UFZwa2ZtT21WYVg2eXRjVVNhdnZ0emdUeGQyL3FidksrRXdxL0YyaXZXdzNq?=
 =?utf-8?B?U3BNOC9ESlltQkpoeC9XYkd5S3lxK2I2ZjJVWlIwc3gwUGt4RmpZWlZMcWMy?=
 =?utf-8?B?T3F5OG1xUS9iS0JWNmdhOE1nU1RpMjFRL0U4SFh6MmpVTzNkTVUwZXBmbWlw?=
 =?utf-8?B?eklCK04yOWRDY3BaMmM1Tnc0b004OXRVUlZiVUVwVFAzeVV3SUtIdVdEM2s1?=
 =?utf-8?B?SHRXUUpISkh3dFZNdUdlVVIwRXhUVzRTYnBQc3pNU29oS2FZNnpsNkdKZm01?=
 =?utf-8?B?eGFuUTVEK2c5SWR6UnJVOU02TllZY2ZEWE5WcUNaQXNiNHhITDRTVXdTbzNl?=
 =?utf-8?B?Z201c2NMckltMUlKcC85V2xHTlBmbU1lSmNFTWtxU0RrSzRZakRsdHhjS0pP?=
 =?utf-8?B?ZUdZSUlmT2ZjMkxIa2JaamRJamppbXBmZHkwM1AyMkN5dlhSYkRlQk1iSTgz?=
 =?utf-8?B?aDhyMTQwelVwL0ZGaG04dld5TUx3M3FJWUpnSHdHUSs4Zm9qd01EZkVOQmsr?=
 =?utf-8?B?dXQxTzQ5bExkSEczTkJMLzltK2RBeWtWWGthc216Ui9XMDNON1Z5cUdKdzJD?=
 =?utf-8?B?S1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3164a5fd-138f-452e-5029-08da9d15317f
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2022 03:39:17.7897 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bhk7GwJpWqD4u4XB8kx3usu/PUxFelIKSW3CHd0fRcKmvHwsX8Hr+eLgSpRz+n46Ifs3As6Xz33V89Gy0erCF1yc0Ag1qO8Cr2KPwpyMD/g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4762
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc/slpc: Add SLPC selftest
 live_slpc_power
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


On 9/22/2022 7:32 AM, Riana Tauro wrote:
> A fundamental assumption is that at lower frequencies,
> not only do we run slower, but we save power compared to
> higher frequencies.
> live_slpc_power checks if running at low frequency saves power
>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_slpc.c | 116 ++++++++++++++++++++++--
>   1 file changed, 107 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> index f8a1d27df272..f22f091d2844 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> @@ -11,7 +11,8 @@
>   enum test_type {
>   	VARY_MIN,
>   	VARY_MAX,
> -	MAX_GRANTED
> +	MAX_GRANTED,
> +	SLPC_POWER,
>   };
>   
>   static int slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 freq)
> @@ -41,6 +42,42 @@ static int slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 freq)
>   	return ret;
>   }
>   
> +static int slpc_set_freq(struct intel_gt *gt, u32 freq)
> +{
> +	int err;
> +	struct intel_guc_slpc *slpc = &gt->uc.guc.slpc;
> +
> +	err = slpc_set_max_freq(slpc, freq);
> +	if (err) {
> +		pr_err("Unable to update max freq");
> +		return err;
> +	}
> +
> +	err = slpc_set_min_freq(slpc, freq);
> +	if (err) {
> +		pr_err("Unable to update min freq");
> +		return err;
> +	}
> +
> +	return intel_rps_read_actual_frequency(&gt->rps);
The return value here is overloaded (either -ERR or frequency). Can we 
just return the error status here and query the act_freq in the caller 
instead?
> +}
> +
> +static u64 measure_slpc_power_at(struct intel_gt *gt, int *freq)
Name is a little misleading, maybe slpc_measure_power_at() ?
> +{
> +	u64 x[5];
> +	int i;
> +
> +	*freq = slpc_set_freq(gt, *freq);
Here, we can check for return code and then query for act_freq.
> +	for (i = 0; i < 5; i++)
> +		x[i] = __measure_power(5);
> +	*freq = (*freq + intel_rps_read_actual_frequency(&gt->rps)) / 2;
> +
> +	/* A simple triangle filter for better result stability */
> +	sort(x, 5, sizeof(*x), cmp_u64, NULL);
> +
> +	return div_u64(x[1] + 2 * x[2] + x[3], 4);
we are duplicating code from selftest_rps here, is it possible to add a 
helper instead (like __measure_power())?
> +}
> +
>   static int vary_max_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
>   			 u32 *max_act_freq)
>   {
> @@ -113,6 +150,52 @@ static int vary_min_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
>   	return err;
>   }
>   
> +static int slpc_power(struct intel_gt *gt, struct intel_engine_cs *engine)
> +{
> +	struct intel_guc_slpc *slpc = &gt->uc.guc.slpc;
> +	struct {
> +		u64 power;
> +		int freq;
> +	} min, max;
> +	int err = 0;
> +
> +	/*
> +	 * Our fundamental assumption is that running at lower frequency
> +	 * actually saves power. Let's see if our RAPL measurement support
supports*
> +	 * that theory.
> +	 */
> +	if (!librapl_supported(gt->i915))
> +		return 0;
> +
> +	min.freq = slpc->min_freq;
> +	min.power =  measure_slpc_power_at(gt, &min.freq);
> +
> +	max.freq = slpc->rp0_freq;
> +	max.power = measure_slpc_power_at(gt, &max.freq);
> +
> +	pr_info("%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n",
> +		engine->name,
> +		min.power, min.freq,
> +		max.power, max.freq);
> +
> +	if (10 * min.freq >= 9 * max.freq) {
> +		pr_notice("Could not control frequency, ran at [%uMHz, %uMhz]\n",
> +			  min.freq, max.freq);
> +	}
> +
> +	if (11 * min.power > 10 * max.power) {
> +		pr_err("%s: did not conserve power when setting lower frequency!\n",
> +		       engine->name);
> +		err = -EINVAL;
> +	}
> +
> +	/* Restore min/max frequencies */
> +	slpc_set_max_freq(slpc, slpc->rp0_freq);
> +	slpc_set_min_freq(slpc, slpc->min_freq);
> +
> +	return err;
> +}
> +
>   static int max_granted_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps, u32 *max_act_freq)
>   {
>   	struct intel_gt *gt = rps_to_gt(rps);
> @@ -233,17 +316,23 @@ static int run_test(struct intel_gt *gt, int test_type)
>   
>   			err = max_granted_freq(slpc, rps, &max_act_freq);
>   			break;
> +
> +		case SLPC_POWER:
> +			err = slpc_power(gt, engine);
> +			break;
>   		}
>   
> -		pr_info("Max actual frequency for %s was %d\n",
> -			engine->name, max_act_freq);
> +		if (test_type != SLPC_POWER) {
> +			pr_info("Max actual frequency for %s was %d\n",
> +				engine->name, max_act_freq);
>   
> -		/* Actual frequency should rise above min */
> -		if (max_act_freq <= slpc_min_freq) {
> -			pr_err("Actual freq did not rise above min\n");
> -			pr_err("Perf Limit Reasons: 0x%x\n",
> -			       intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS));
> -			err = -EINVAL;
> +			/* Actual frequency should rise above min */
> +			if (max_act_freq <= slpc_min_freq) {
> +				pr_err("Actual freq did not rise above min\n");
> +				pr_err("Perf Limit Reasons: 0x%x\n",
> +				       intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS));
> +				err = -EINVAL;
> +			}
>   		}
>   
>   		igt_spinner_end(&spin);
> @@ -292,12 +381,21 @@ static int live_slpc_max_granted(void *arg)
>   	return run_test(gt, MAX_GRANTED);
>   }
>   
> +static int live_slpc_power(void *arg)
> +{
> +	struct drm_i915_private *i915 = arg;
> +	struct intel_gt *gt = to_gt(i915);
> +
> +	return run_test(gt, SLPC_POWER);
> +}
> +
>   int intel_slpc_live_selftests(struct drm_i915_private *i915)
>   {
>   	static const struct i915_subtest tests[] = {
>   		SUBTEST(live_slpc_vary_max),
>   		SUBTEST(live_slpc_vary_min),
>   		SUBTEST(live_slpc_max_granted),
> +		SUBTEST(live_slpc_power),

Thanks,

Vinay.

>   	};
>   
>   	if (intel_gt_is_wedged(to_gt(i915)))
