Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3322941C592
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 15:27:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D7216EA77;
	Wed, 29 Sep 2021 13:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27BAA6EA77
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 13:27:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="310487500"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="310487500"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:27:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="479262748"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga007.fm.intel.com with ESMTP; 29 Sep 2021 06:27:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 06:27:01 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 06:27:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 29 Sep 2021 06:27:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 29 Sep 2021 06:27:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nk+zUv93n/z7Ok93A7DZKoPkgF+cJ4Flt+55fhGzzr6X/Afq+yOGlvNHnopjVOLrpuvIfnD792+0+frK/aAbRCPH3SlNugJd7AEnOTPmDkYOFYdiaElapRHKTJieg62HcG6D1AMBhzQdPrZInzJJ3u7QDrrncxD4ohXPT1hEooVSl1ncOltv9HtBO1vchOJIIEsu/AxnpR+4mDYAbMVRwOwtdToc49LSS3dLMgMjh7Ug/C31UOfI3x86tC/57+P9KtL8GrgTnZgucYT5v6dLVrlVxXFPgvQtwFj0XG4jt07Dw1TMfleHDKGFHPUSD+ryWJ4nApNIuX8zSg1AtPXcoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=+pWH64atcge+vYAYTaSymw0v/wqGFcGUHbZWA55ZHrE=;
 b=n5lHvHuXLA2mLpYRMng+cpNBTfBfaB9mD5GMPfOsQ7cBoRonnoU7FjJ/xoKnIpMg+1PiCW5a0hL/fSmfWslMtaoAcdfAfqBg84nJon+1FX7zyIRK9+w8voXar6fjCCSBIbLaNXgQb+EDs0YHOe0VLHd78OMEmWtVbHRIKkbBTkYfjPoBYVjTjDy3/BGhmaS/a4kH1F+x+FdAByqFt9y7CN3zyYkWQPIRU3PXJFIRAAm+bbok+6ygV37vbjDk3zzu1tjrHSi/jkm8GeCRCbN6lDhUX3dJxHHYuwEuJL3G5AxASEh8vFqVynMgU7G2AVjqnDBSQMV+Xwyw1x14MHdlEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+pWH64atcge+vYAYTaSymw0v/wqGFcGUHbZWA55ZHrE=;
 b=i8KjCMliE4IrfELZwOPFsGQuxF9aAQQeFN52s3AU9k5nbNomAxHQmlnZfhnqERgzG+8SbJdxUWE5G58Ih2Ywo1t+CaFfY7g9lqmk5wkZYcwvvK1s2p6Ks1DC87Kx34sjwjC/LEg9RGQ2v1cuuKF0QwfFmpW1jf0YXmpW1rp7BTg=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5424.namprd11.prod.outlook.com (2603:10b6:5:39c::8) by
 DM6PR11MB3977.namprd11.prod.outlook.com (2603:10b6:5:5::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.15; Wed, 29 Sep 2021 13:26:57 +0000
Received: from DM4PR11MB5424.namprd11.prod.outlook.com
 ([fe80::d5e2:ceac:b53e:351f]) by DM4PR11MB5424.namprd11.prod.outlook.com
 ([fe80::d5e2:ceac:b53e:351f%4]) with mapi id 15.20.4544.022; Wed, 29 Sep 2021
 13:26:57 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20210923194617.69136-1-jose.souza@intel.com>
 <20210923194617.69136-7-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <8a269911-1710-577c-dd9f-f0cf4aabcec5@intel.com>
Date: Wed, 29 Sep 2021 16:26:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210923194617.69136-7-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0197.eurprd04.prod.outlook.com
 (2603:10a6:10:28d::22) To DM4PR11MB5424.namprd11.prod.outlook.com
 (2603:10b6:5:39c::8)
MIME-Version: 1.0
Received: from [10.237.72.199] (134.134.137.86) by
 DU2PR04CA0197.eurprd04.prod.outlook.com (2603:10a6:10:28d::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.15 via Frontend Transport; Wed, 29 Sep 2021 13:26:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4922026d-0ec5-41b3-8b51-08d9834ccf8a
X-MS-TrafficTypeDiagnostic: DM6PR11MB3977:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB397731AAA045F059AD39C2A1B8A99@DM6PR11MB3977.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NZO4QIEBcPTAyrLOkInYkIlnSOB0RpYsmr8FuNXS+s80QxMz0bS4SvyP0Ge6ANghbL9T1PVA9pLtlsxffEjQvUZ7GfQ91oKxFO0gRB9krbKo6EsAmHEIW/BooqrX9Imjl2Lc4PT5bE5vXZgUQATFgdMD0cCvjJB5/9+ydvCAT7lCd2NOBCjwJ+Y3C4LJGAywMyq1+vg92rB+oZCIMxwZ7Vzljx6PofMF6jX3WW6bT9kpg0ELh6mEsGjP5a3v5OPIZwijHzVfx6EsfiwpuVnEHMRLn4Ce4RYLSw8FQtAZ0rvBET/oOm8ezkk1NgoZitv2f8Rpt9cSO9JmqJfmqbrL0htkaQWQtKKRNXXyO7pVQZ3Cb7CakINlAg9jUB98tfIp2rlndbl0/MOfh59AFPTUZOXL+m6+67HkOgnOzVfIBEydpwTmNFmlDcMvFS7IdHRguDk81ihEFY9I08Zm04qA/zKYZB0HfLq9LP1C2KdSSj15vOP3YcAPsqFLlrr1ijTZTV53jFoRzUxmf1rFq9SulUjKRJg2EIHr+dCnPx38fiNR/GTWpjnz3uER4WPN/sUesPU+thf+Yt9uAWFijyEMHwzuPPXKdxNXWHXEJje6yqujl2So2Z+SeGYd4b6mEbr0eDc/izFGmZyordalulYTzhXW0VMkYlrEmashxzCEMQUCgi1AxAX3gYeiqVA/efKc7YpMsl8HgeUHULcfxLmwOE23TewBoZNOAefrct+xaLI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8676002)(8936002)(31696002)(66574015)(86362001)(316002)(16576012)(2616005)(956004)(508600001)(6486002)(36756003)(53546011)(186003)(2906002)(26005)(66556008)(66476007)(6666004)(31686004)(83380400001)(66946007)(38100700002)(4326008)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWVDY1JTaXZDTGFGS0I0ZGswc2tHQlpTY0gyNlIyTTlrQjFSY3hNWFNwUVFo?=
 =?utf-8?B?ak9saU9YajM5UXUyUGowdFV2RUJIQXBpTjRUZ2JxZkcraXlXTEFLM1FkaytN?=
 =?utf-8?B?WlEwOTJhZmlXUmRSMUhPWDdQcmpmRDZPWUM2aVdvK0pNMWFhbWxEa0JwK0dE?=
 =?utf-8?B?ZWxEbzJSVzdtejBFSlJ3eERWb2ZGdGREdmp1ektZcnVONnRtc2ducTByOTZJ?=
 =?utf-8?B?ZXRteGY3RGJRamt5SFBZWkc1TXlSUk5heGhDNXJ3MlZCMFFzcmFDWXd2QWNk?=
 =?utf-8?B?MzlBNm1saUJqeVBxTUV5ZllIdlBRcFc2c05FcEpCeE1CTitDSzVpOGtCejhS?=
 =?utf-8?B?R0g4SCtjWnNWa3RkK2VKQmozTnJDZzJzWnFHY2hDSTRlUk5GSHdLSUNKd3h6?=
 =?utf-8?B?YUpXMjVIaDE1YytrNS9xNC8ya2l4SnFQMjI2dnhXNWdWSEdsOHEwTEovcFhE?=
 =?utf-8?B?VWR0STBGQWk5em8wYmhjLzNtYndLSmVCMmdWTTM5Z2dYUGZidFpubUhtOU8r?=
 =?utf-8?B?VmNmd0dXaldtSkdxdzBWcUUxWmsxcmNFa2R6TzhUR2FzZWl1S0t3d0ZFc2Mv?=
 =?utf-8?B?LzNObHowYjE2UUdHVlRhNy9naUxXbXNCeWVBckI1VnI3b3kzY2tQUzJVOEE2?=
 =?utf-8?B?b2IxMGFHeDBIUlBuRUpBOFJ0N2pFSzNBVjI5VTh1NUtDZndMNGpiUTJoVWNv?=
 =?utf-8?B?anFmSlRrczZCM09RVHY3MTJVcDF6S0Q2eUU5cWUraVJ3ekdwOTNyRnhyWFlx?=
 =?utf-8?B?RkwwQnFxdHFDUXcraXAvSHZTYjFIeEQ4TkJPb1ROWUF1a3FGcGZOQ0c4YW5S?=
 =?utf-8?B?VmxIUGtMSWtTa21YL0gyTEhHb3g0R1dnTUV6Nk54SFJ3Q2VSZXp0R3lKTTFV?=
 =?utf-8?B?eEdDZmpSSWpISTJnamFkdGxHUFFRNm5QUFBRS2pocG13M0paa0hvd1R2dXFI?=
 =?utf-8?B?UVhLTndueVQ0d1Riblk2YWVjNlBTWTRUSXpRSXV6UTh4UUhNVFNVY0lXQXJn?=
 =?utf-8?B?S09mMTJGbzU3S3k1dkU4RTVqajJVY3JaODVYRkpkeDl5azJOL2J6bnJQMVZO?=
 =?utf-8?B?VU9TNXBnMXhIYlBTbUxGK25IVUxVam9uWVB2TUpFZXA3RVZLS3h2bUE0NjBK?=
 =?utf-8?B?QVJueVQ4VzEySndzUEp3amZzTFlKbUIyMnpDbDRCY3dENjZ1c1BFcUl1bTY2?=
 =?utf-8?B?dkZlMW9wZllzU3BQRjRPM1F5S1ZsL2VQWE1wRlN2YlFBOFlXTGJYNjFFN3Zw?=
 =?utf-8?B?bjJ1Q0QrRWtOOExKdDN2dW5yR0wrRll3TGRCSjU5T2V4eWUzNjI4RlhLQW5D?=
 =?utf-8?B?Y3RzK3R1SS9YR3dia29YemdFcUlJbmVhY2hjQkNYRldsTEdwa25GajBSTFZG?=
 =?utf-8?B?cUZIR1FVekpHSlltN1pyL0E0dHlXV0ZmcW9CSHlCV0pZcUxOZzdJOWpsVVZp?=
 =?utf-8?B?c1Y3TDhjYkUrcHcwZ2RQL09wNGVOZEdVcWFRcDNvdDhJMU0xQUVqZVVkNmVN?=
 =?utf-8?B?Y3lRaUlwQTQ5dDNwZEhJVmsyUHJxeGJFeTBkUDh5N3JrSlhhNFR6ek9nSkhT?=
 =?utf-8?B?MEc1OVNHZTBKQWxaczBHUFE2eGo4NkpLcWdiOEQ4c3NVci9tL2R0YWx5OXBj?=
 =?utf-8?B?UWdqSHRiNDF2eUFyNUordGR6L01VRmxlUFc1TU9HLzZHckdlUmIzWmc5NjRN?=
 =?utf-8?B?UXRnY2JhS3pYNDN2T2o4M25NQzRyN3FOcGYrU2ExSEp1SDNOeWxvT29HNzBq?=
 =?utf-8?Q?3FUbw1W2UoNb+8wboiy7m/2PyOlmX7qSWU2CKQH?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4922026d-0ec5-41b3-8b51-08d9834ccf8a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2021 13:26:57.5020 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /6MyL8IGUAy7H3Yau2VXotNeHkgDEDuA3EJHO7Txcb+KL37HjIs4e4v/oJoNihqxFbayv5a2vlCV+bCkk8UK2sDEWXeUoYwaXnUt3T8C+qA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3977
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/display: Enable PSR2 selective
 fetch by default
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

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 9/23/21 10:46 PM, José Roberto de Souza wrote:
> With all the past fixes now this feature is functional and can be
> enabled by default in desktop enviroments that uses compositor.
> 
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_params.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index f27eceb82c0f5..8d725b64592d8 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -55,7 +55,7 @@ struct drm_printer;
>   	param(int, enable_fbc, -1, 0600) \
>   	param(int, enable_psr, -1, 0600) \
>   	param(bool, psr_safest_params, false, 0400) \
> -	param(bool, enable_psr2_sel_fetch, false, 0400) \
> +	param(bool, enable_psr2_sel_fetch, true, 0400) \
>   	param(int, disable_power_well, -1, 0400) \
>   	param(int, enable_ips, 1, 0600) \
>   	param(int, invert_brightness, 0, 0600) \
> 
