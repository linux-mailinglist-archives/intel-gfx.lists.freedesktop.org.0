Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DE05BACC6
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 13:52:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D59E89580;
	Fri, 16 Sep 2022 11:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C8F910ECDA
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 11:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663329151; x=1694865151;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tJ+T7sujPq9g9PhCR56JK1vhS/I9TGRgeRz7C7mZKQ4=;
 b=MDnEWEitNBVD9qkNSm8GB7wYytENvPFCcG/G56cMIlAXKJVzaF6Ugwm3
 SRMg8RCIe7D5nfRL5RFbDKmdFyUpQuH7UleOOfDIaJb4mRBM1n1BWzIS4
 lbdqvMsLkj1tyDRlKeqb73MnGWFwDjFHjZGPp3vZRGYWtxLOndZYXOQCV
 /an5h3JO7sXJ5xyFnYbX/q30CDH6RUnbqDqqY6jK6TjWD3CDanH4FIDlr
 g8O7tF1nt1Fhda/6qa9Gu4oR5hjDXxlPEsgv+n4ObaZ4x8pHfe6/L0WI1
 UdWIfMI4pTm3B+EbISvmVjK2FsUYHH14YFntGYtzM5ifM8Hk0wESF2RKm Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="385266289"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="385266289"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 04:52:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="620067528"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 16 Sep 2022 04:52:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 04:52:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 04:52:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 04:52:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bcAchGmye/ln/OoeC5lS9haw8mF40MKGU5PUd3kc4fEhdwb7CZYnfd+ElUcAVzybYC8Nmwp2GbipsUr/JZ0B7m9v7wMZ9iN+ctgMWOa+ZI/v3gIy93eT6gmEF4PvMW/wKgiKp87t5jWE86NopaiCIzcCm4DUo6spNtR4J97NMwLdVrvyzjMuIM7kLkCYp/yGFaLJnFYdVr/nZpJB+NbBDdjBNZyKCFJ5N9z8EzpDfzELkWfLW4goGPFfRd4enWessIDXEyZdDyhhq4YjXeimvhu37ze5TRyU8Bs/cvvmY9vofkjh0A4vBDoCOswGPNAH9Jtb2eC9j+g7T/+pWJ6nPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LpO6ygWYx/qd5IXCyxsU1znMNXClPKhAPpg13O1VyqM=;
 b=DNqJnIq1zf6S2TlKu07HPvLRk7vhSom7au1QZA5wfJ7dop4wb0MswlQQP+Vna1hFqfBVCOyoyLzFBQSSfph+WYrI3z0F1Pm/aDWayxXQ6/qr1j+JXDyT5s5b9SUHXdY8Yfp/d+R7SaDMK5RaSQs/ZzaEie6geH/G9VixMebnBNG0oc65LB66p/nSWw5+c5XmRl8PJ6Bj4m7cRZfRbt5cq9JUQMe9lxgHpWq5H6WWydJqxp60zbJ3PIwU9jdut8RqWhTqI+HuIzk6JNbNxDQwPtWfEDRqZnOwUGuHT7uI1wh8ATHTfn+FNqTqLuXp6bwSfoncZCnhs91l86JwtZ6pkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by IA1PR11MB6372.namprd11.prod.outlook.com (2603:10b6:208:3ac::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Fri, 16 Sep
 2022 11:52:11 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::54de:6030:7501:b7ae]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::54de:6030:7501:b7ae%7]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 11:52:11 +0000
Message-ID: <75bafe7b-1e96-3733-138b-b55303a67cb0@intel.com>
Date: Fri, 16 Sep 2022 14:51:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220916082642.3451961-1-jani.nikula@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <20220916082642.3451961-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS9PR06CA0774.eurprd06.prod.outlook.com
 (2603:10a6:20b:484::29) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5409:EE_|IA1PR11MB6372:EE_
X-MS-Office365-Filtering-Correlation-Id: d8965800-bb40-4178-5b4f-08da97d9e392
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1lRBs2UQXUPx7FhMRjibga6xSUktCmk3RAwS6tkJT+SDOTr/v8SBEPBUISY7VH2jWxq2g9MK1pwYC2PzTBiSfR7gFAPcjMHv5K87BCD2ru2yYSMwvRMsOonxFXXC1iOpoYU8XHgt6/J8EQSj53cCXNLA1o//Cht4DwoMqr8qPH3Dy0a6ODY95lwMoqjXYgJdgabnLeQg0diEPUlPhn3OZ8MvI7mNINxN23eFgUV1dEutP5SIb+6TESBuF9aJOejrxtZklPk6a4KvZ/MQ1wz5RT/++NuOgPxpTxF8VjEkww7WS0qi9mRtl+l5ZAVmfJyWxhIl2aXPZ4I3pu31fpx9Y8e4h/Ww3cqjPggQSVQ3bNIH0mYu1mWpxwxKoIWqcHvIWVMx9/lYDnrlCPfPYRpuMnehs0SzlSmMbCVRfe/flox4Ss3GXgsCHNUmgR5R3GYZJPhQiEVd1CfCxo02loSvUQajG+Va79N9rbV3pw67AKALPCbZYEeaL/2hPwJRYfiI+zrYIoTjY7Au7dESuucGIuVvW697eosZxg7qPzmc0U5ZDTTnJA0qZaZCForQ4U0lX5OgYDGTTdq+YwoSG8SPmHJ5AiKl9FNuYo8SdVujRIYaY05NWU90p2oS+BbL18lU9+7YNpPV+DbA5I/ViZ462lybqCJQP1pN4N3fcQtXg2O7eIfsGalyduvaNOQnseTt8Vez9844IkxmFKUSs85cI+v5dR070SZiLBEBmNQcs/j7alZpQNHPINdRbDe7vyG7f1zu3pu2SjcmASbp2AozRTjrFq8gr6uoPZvKSXnPfMlYBacky5pScw1NGdbheGSJXopRhVXzW5BaBkG8KyRrug==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(376002)(136003)(39860400002)(346002)(451199015)(107886003)(186003)(478600001)(2616005)(83380400001)(8676002)(6506007)(31686004)(53546011)(38100700002)(86362001)(66556008)(31696002)(2906002)(316002)(82960400001)(966005)(6486002)(66946007)(8936002)(26005)(6666004)(66476007)(41300700001)(6512007)(5660300002)(36756003)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1hsV0dqeEIvL0NDU0Jra3JVQ2w0ZTRFYXNrbnZqd1V2ZHNjSXV4N3QwMnI0?=
 =?utf-8?B?V3lCUlF5YXpoTVl6ZzU1NW1OblhUMHQvZ0IzclZENnY4MEhoMmt3L1ZNRlJ2?=
 =?utf-8?B?TmF4TWpZWURSZUFNY0U1QUJMY0RWMDRWYTRWcEgvUkRrY09WRlVSOFJMWmR6?=
 =?utf-8?B?Yms1QXFQN1NGRWh6emE2Mk83ZlZDTEhYT0c2Sm1meGlkTHRGYW1uZzR2K2FM?=
 =?utf-8?B?bnpnenhGL0tTcDUvNVJ2blkrVnRJaTNlUlZJc3BjWE5BUDkvalZrOEtoRXJ0?=
 =?utf-8?B?NVg2NTdYVnhJWFNYV3BGRWpJeGV1K2pldE4zSzk5MVFmUnd5WDJXai9tdVp5?=
 =?utf-8?B?WlhWdk90K1BON3AxdFhRKzBFNHBwZ0hoSDNtRWl3RGJxcCszTlUycTdjZXJV?=
 =?utf-8?B?bGJaMWhzak5FKzZBY21LLzFtblBuUUk1eXQ1R1V4cEh5eDRDZi9FVm5CbGQ1?=
 =?utf-8?B?Ujhldy8vSjFJeHVFMW1IZXBTQzRjdkxDMkY5Njg5Y3d2cXJxZzA5bm92aHlV?=
 =?utf-8?B?UWZ2aHV5OG5vRVpOeFJodWQ5b3NZVm9iRDhxT1grMlRQSmpuSkdhS1M2N1NP?=
 =?utf-8?B?eU1xeFh3OFZwakx3TmxqSUh6YS9hQlg3UHVXekN3UTBPdHd3WEpTUU1JUDdV?=
 =?utf-8?B?R3diWXJzWGV6NnhFWHdZNjIwYUFPaVBEa05iQWNQTzJQS2FoWXR4MVVLZlNl?=
 =?utf-8?B?alJJVXB1U0F0U0VsQkxBLzcwaGt4allUQTZrNm9lZDlrV2owZ01DRmc2Z3g5?=
 =?utf-8?B?UmRDbXprTVdaUjIxcWptdXB3V2NWRmdhOE4yc0dscHc0dHJOdG5DdE9McEtQ?=
 =?utf-8?B?Rk1zL0hLRnZ1NlFIMUtsTzViUXhXRWxtUGczcUI5clA1MndaRlZwSVpRK3h4?=
 =?utf-8?B?UmgvbWFXcmh0U3U5aitCbyt3MlprQ3dETjZxNWw5eUJraXc2QmpqaGd4aVRt?=
 =?utf-8?B?RGFKK0o0eXZTQWx2bWdyeWZBb3p1TURHOEsxUXJqQjBzd0dLcCtMSEN1ODdo?=
 =?utf-8?B?cUl3akpDNVB6YXA5ZjNiZU92TjJjVmVFMzhlUkF2SWFiUG5jWmtqdHp1R1Fj?=
 =?utf-8?B?L0VTQStkTmoyOU1tTjFsUVZORVZUMEtzZUFtWkdYOHVZRmJYUWF1RHNvM0c1?=
 =?utf-8?B?ZlBPZDFCZktscm1TT2tZNzNEaG9vVkU1RUM2NGNDZFVHUU13b20yOWZTb3Bp?=
 =?utf-8?B?Ui9iZzg3SGRrNjdsNnVvYkxqNUl6dGVHYSt4N3BXQkEyT2MwSW0vRWpJb05D?=
 =?utf-8?B?ckF0YnY5TDYwaW5tWTJNRFBob1ZiVndkZTdzVllnVExvaXZPUE11WUxpa2Vz?=
 =?utf-8?B?anhvbTFFWTNMaURhK0krUkNBb0MyU01oTVVsWlU3aUJvWmF3RUthcSttbkZU?=
 =?utf-8?B?a1dZcUUrL3doc283QzdBRXJwOGE3c3RhcFRFbW5seGt4aFRlamQwOXdXQjFi?=
 =?utf-8?B?d29sTWJjUGFmTFhYZTltVjg0YWdlMEQyYmVDc1hzdEwycmZUcUZyQ2NrTnQz?=
 =?utf-8?B?VnJSd2gyYkRkY0ZMazFsNGIwZTJ6VVMwN0d3eWNvQUJOcllwN205MEhXUXF2?=
 =?utf-8?B?Rys0clF5UDRHMDBLeDdDSUZ3dktVL3p5SFNtYTBSRDlNZzZ2TFY5WUZIZDV2?=
 =?utf-8?B?Q0RYOXlmZThhZFR3Z2FwZC9VczNMb0ZmK1hOdmNzSGswajZIcGtObTBHZnVl?=
 =?utf-8?B?RnRXSWNPR2lHVmVjV0pXS3BQWllRVEd0Z2FhUVh1YlVsa2lud29JRDV4YVQv?=
 =?utf-8?B?RmxFT2VKVFQ1aDlsZmVCUjZOZHlseG9iTWUzYzcyMGJlZXgxcS9BeEpzei9R?=
 =?utf-8?B?VlhrN0NIZlAyTkJXTW4rcEZoellJeFhmK2t3M2hTTnlPSDFKYkZwOWRZaDYw?=
 =?utf-8?B?L1RXdzJ5TTZvWXk0Y2xYTFlrU2tEN3VJTDkyVk5HLy9TSEtUUExPL2hRTmxY?=
 =?utf-8?B?ajk2d2RtQklSS0pMOG1GSzZIeGVvVjlpMFNSMnR4U3h5YlY0M2M2eHpCSnpR?=
 =?utf-8?B?U0ZRVk92SFpiR0pyK3k3TTJDOFdHK1V6RWFML0VYa2VZU2MzNTcrWUoxazh4?=
 =?utf-8?B?ZzQxVm1zZURBV21rZDh4ZmpoUStpK0dCT2ZJb3ROQnZPRWZHaWtwRW9DL1h6?=
 =?utf-8?B?WVZKK0hmT2pIbW1CUWszbzdvQWVNdHlYajRzTmg1VDNwS0RWYXBreFhTNW4w?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8965800-bb40-4178-5b4f-08da97d9e392
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 11:52:11.1499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zNpSftuOAvVlmuGeBFQ2uVAvXR7e99xHsZZ5vbs/d7D4pU/xjNHX8ihaqiHcko1lBjqa4AeOvvn5ZXItlnj33tbA1R2PtUUhwSXUK69MHZg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6372
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix device info for devices
 without display
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Looks good to me

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 9/16/22 11:26 AM, Jani Nikula wrote:
> Commit 00c6cbfd4e8a ("drm/i915: move pipe_mask and cpu_transcoder_mask
> to runtime info") moved the pipe_mask member from struct
> intel_device_info to intel_runtime_info, but overlooked some of our
> platforms initializing device info .display = {}. This is significant,
> as pipe_mask is the single point of truth for a device having a display
> or not; the platforms in question left pipe_mask to whatever was set for
> the platforms they "inherit" from in the complex macro scheme we have.
> 
> Add new NO_DISPLAY macro initializing .__runtime.pipe_mask = 0, which
> will cause the device info .display sub-struct to be zeroed in
> intel_device_info_runtime_init(). A better solution (or simply audit of
> proper use of HAS_DISPLAY() checks) is required before moving forward
> with [1].
> 
> Also clear all the display related members in runtime info if there's no
> display. The latter is a bit tedious, but it's for completeness at this
> time, to ensure similar functionality as before.
> 
> [1] https://lore.kernel.org/r/dfda1bf67f02ceb07c280b7a13216405fd1f7a34.1660137416.git.jani.nikula@intel.com
> 
> Fixes: 00c6cbfd4e8a ("drm/i915: move pipe_mask and cpu_transcoder_mask to runtime info")
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pci.c          | 11 ++++++-----
>   drivers/gpu/drm/i915/intel_device_info.c |  6 ++++++
>   2 files changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 77e7df21f539..cd4487a1d3be 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -41,6 +41,8 @@
>   	.__runtime.media.ip.ver = (x), \
>   	.__runtime.display.ip.ver = (x)
>   
> +#define NO_DISPLAY .__runtime.pipe_mask = 0
> +
>   #define I845_PIPE_OFFSETS \
>   	.display.pipe_offsets = { \
>   		[TRANSCODER_A] = PIPE_A_OFFSET,	\
> @@ -519,9 +521,8 @@ static const struct intel_device_info ivb_m_gt2_info = {
>   static const struct intel_device_info ivb_q_info = {
>   	GEN7_FEATURES,
>   	PLATFORM(INTEL_IVYBRIDGE),
> +	NO_DISPLAY,
>   	.gt = 2,
> -	.__runtime.pipe_mask = 0, /* legal, last one wins */
> -	.__runtime.cpu_transcoder_mask = 0,
>   	.has_l3_dpf = 1,
>   };
>   
> @@ -1039,7 +1040,7 @@ static const struct intel_device_info xehpsdv_info = {
>   	XE_HPM_FEATURES,
>   	DGFX_FEATURES,
>   	PLATFORM(INTEL_XEHPSDV),
> -	.display = { },
> +	NO_DISPLAY,
>   	.has_64k_pages = 1,
>   	.needs_compact_pt = 1,
>   	.has_media_ratio_mode = 1,
> @@ -1081,7 +1082,7 @@ static const struct intel_device_info dg2_info = {
>   
>   static const struct intel_device_info ats_m_info = {
>   	DG2_FEATURES,
> -	.display = { 0 },
> +	NO_DISPLAY,
>   	.require_force_probe = 1,
>   	.tuning_thread_rr_after_dep = 1,
>   };
> @@ -1103,7 +1104,7 @@ static const struct intel_device_info pvc_info = {
>   	.__runtime.graphics.ip.rel = 60,
>   	.__runtime.media.ip.rel = 60,
>   	PLATFORM(INTEL_PONTEVECCHIO),
> -	.display = { 0 },
> +	NO_DISPLAY,
>   	.has_flat_ccs = 0,
>   	.__runtime.platform_engine_mask =
>   		BIT(BCS0) |
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 1434dc33cf49..20575eb77ea7 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -433,8 +433,14 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>   		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
>   						   DRIVER_ATOMIC);
>   		memset(&info->display, 0, sizeof(info->display));
> +
> +		runtime->cpu_transcoder_mask = 0;
>   		memset(runtime->num_sprites, 0, sizeof(runtime->num_sprites));
>   		memset(runtime->num_scalers, 0, sizeof(runtime->num_scalers));
> +		runtime->fbc_mask = 0;
> +		runtime->has_hdcp = false;
> +		runtime->has_dmc = false;
> +		runtime->has_dsc = false;
>   	}
>   }
>   
