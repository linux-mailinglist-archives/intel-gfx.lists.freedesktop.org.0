Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CE24E4D06
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 08:03:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 752EA10E1C6;
	Wed, 23 Mar 2022 07:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F338610E1C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 07:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648019016; x=1679555016;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9dkyou2YgRel3a/+wJXB4mcGHn+IApy/TRa+xfL/jig=;
 b=jg5BUGfIjG0zhQcAYjsr7N7pKQX82F3T4NoYcDNjE5ZMrULXt+dhBYo5
 KBC6WN/6D1DZ88GHxLoYpZpC1kfxxilM5JooJnZfHwX5kfaXjG6Mkb0KJ
 hwtEtsq6VRFrji2mHkZub72Xx57HJh1ArckwoPsJNAxJBgUfw+9fdUKLX
 z+DO3cQ9xjrgq94deyZhQGJD0llk/oqJFFRjryj41g4//DNLkDYcqfg8D
 N1DfeKGNPqxVpzognPkzbWUDRBKd7kEsRoCJTtlIn72lN+zlZVBOkUpfg
 DvWAuVwhHdNFRTnnplJJ4YXD3IBi1T/VT0cCGqKCXYLgZY2JkKzpe55Bq g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="237981707"
X-IronPort-AV: E=Sophos;i="5.90,203,1643702400"; d="scan'208";a="237981707"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 00:03:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,203,1643702400"; d="scan'208";a="616316458"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga004.fm.intel.com with ESMTP; 23 Mar 2022 00:03:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 23 Mar 2022 00:03:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 23 Mar 2022 00:03:34 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 23 Mar 2022 00:03:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jr8UPPZVRls6jj/QoojM+v6pUyAaYf79AYvG4nd/4BhEXaIz9XyEEeX9gvb2SqqytSPKSTmn2WI3/fMg0r1vjJLeV+ctVJ36Slqkl/+wWmqRR/Hjz0oaQw9ABXOU/YIolVhCRlLbFuo+d5uPOHISsVf/6zZmBEe4qxLuMaXYU8C/XYhKC6hmvRN+lLso/TjVYEgrCv8v/c9IPSKRyavwlVYrfIi6hEHUgxGRRuoJ4qJ+AFfmg1DO7FhvaQ/Nd6hY/gmYSkGMZXugRoBT58bu7cTvv0y5LCayJSOaGd/G+I7mGbxcMB9Bs28ioZD6RyuEbbEqsEzY5PKvTiUDR0gLiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c+9NcoyZl1p0ru/02xslO3gQ+1jn3UQlwbDQmFM4KO4=;
 b=PMoLuYN2/SbYkA9oleXcLt6UyJ1yCKJ6VUAijelidMgS2UqspVoysZRHqsOl8gGcUxHLfG6tKDIMRCm1QzriCv0BGd3FL08dl2HY73bc7IJ5KAEi5vLJERgdGHbfGu4pRbFy8Q6HoCfQXkSUowAJ0srrnr67+0CKE420g8Py04uVO4y8oFkul1TKNAJho1V+HbhrxlvGFifpb1xNWGxiuW9P+dQFj0H1/oO6dKGA/dWYgjTolOhaQxPNKCtB3XQINs9ozb4a6u/JnOVpVXyvZmpA0gC5RBW8qiMmAzLNuCsLVb3wMl7hHaj4s7wZ+HrWpZz/VCTV4pmNmliUsL6ZWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by BN6PR1101MB2211.namprd11.prod.outlook.com (2603:10b6:405:51::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.17; Wed, 23 Mar
 2022 07:03:32 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::65ca:5b0f:d62d:fadf]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::65ca:5b0f:d62d:fadf%7]) with mapi id 15.20.5081.023; Wed, 23 Mar 2022
 07:03:32 +0000
Message-ID: <0ef3cf31-e799-61b9-6907-7e69b0642e3e@intel.com>
Date: Wed, 23 Mar 2022 12:33:23 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Ashutosh Dixit <ashutosh.dixit@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220322185658.31344-1-ashutosh.dixit@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20220322185658.31344-1-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BMXPR01CA0089.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:54::29) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0569ba4d-6998-4ac1-9c4c-08da0c9b3dbd
X-MS-TrafficTypeDiagnostic: BN6PR1101MB2211:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BN6PR1101MB2211AACD2F9AB0315B6B4674E5189@BN6PR1101MB2211.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Sxus3cx42S0EHXeKcrSjOSgCtUtt9lLu0wymP1gRGuD2e7t+p7nDDYQaNXxOO4bhKBleSucQtLamWRpPTotaQ3BbSrcvqOZQ3PzmDkNCAPx3KFdqokYuBRrhweeiurXxASWshd4dfxBI+Lqi0RMP9yRIL301LZY37Vs+t6NA1G9K+ilCnhzT78+XdwXHrr4w8x/77cE482ynjL/5C/ZeRi9XAdtIPTvyc2682JVq3QZ9Jv0xp16Kd7PcQxLVNU91H6yqhL4/l3ucceoPjwvL3bLtkRAyRfllZcCIPtYTtGXeF5QQSQhuB+joeJalA4WNGDAoUdaUS99Z2DXj/HfESaVDUNMN8Ft3vUB/WVt4oA0uTDkqCyo34wvIg9MlZEK7sqWZwnBhr9StTdmf7Jem7AT7zHcZjwKjDfKY5pOSSPiWl1Gsfs0+GgkfHSlP/yIae7EcN5sZ4glLyqelddnX0x92nF+GxaRHNSYNUU1hwmOT885VFs/5Ezx81GipxVy1w5pJFivEqVh2Pbuscasf3vzsIXMDhWcbHZLQVwF0rhguewzchxvZ9qj38SVC9Uk3vmlYyLC4mYigDgw47ZJ/s7DbW2cTSp9c0xOdg2ar3SA45/RoMOMwdRfjrp0viaQDMYpByNLIOIc8ZoBj83eyJbRMLuvbnyuiBBJwS7OqC9vOrW1tSqwuuDld4ZAWHeFNpq7T0S+P83skJdXNaNCmLLWpxo17b0/x0HBOGBKGgQQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66476007)(38100700002)(4326008)(66556008)(8676002)(66946007)(316002)(2906002)(54906003)(508600001)(6666004)(6486002)(31696002)(86362001)(82960400001)(8936002)(5660300002)(186003)(30864003)(26005)(83380400001)(107886003)(6512007)(31686004)(2616005)(36756003)(6506007)(55236004)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZjhBbnltaE1YQ1dRb1JQWERDZWZhNnJLanA0Rm9IOTNuK0g5bWFyZFdHTWdI?=
 =?utf-8?B?a2dyQ1VYZUJiQ0JDY21RUkJOeVQ0ZjlHZ21HZDFmVkN3N2N5SmE0QTdkVDRG?=
 =?utf-8?B?UXNNV3ZXZHhzbXVadmV5M2JDZmFoMTNLanU3ei96RmdkZ3ROaHFDZHNtOUF2?=
 =?utf-8?B?VkFFc05reXFML3pqYU1sRHdyM1ZKZzBjcWtLenVvaXgrWUhGK3JLaThtZzUx?=
 =?utf-8?B?dW9XWWNlY1ZuTEVzVzIyS25LOFFqd3FxOThjSFFNTk1tWDZoanVaU1NzV21L?=
 =?utf-8?B?dlBqSWpIbzE0S05DUDZRRzEwM3V0eVdqM1FLby9IRXZ2ZHYwUGhuVW5pTDYz?=
 =?utf-8?B?TFpncmk5WFc1YUJ2Q3J2WU5CL0NsRXEyV2JrTGZXeThOaGlGZ1Y2VTRpZ2pr?=
 =?utf-8?B?Sng0T1EraVdjdDBaVU1UNVlpd2t6VFNoNzJzNGlyei9iQ2tFTVpvMzR6RVJ6?=
 =?utf-8?B?SVl1RG96RS9EMEN6Mmhhemhjenc0TTdpRG9UUldiT2NyT2xPMmdDNGRIYWhL?=
 =?utf-8?B?Y3BGRjlLVnVwZmFENUR0V1RuVTNyd2FqeWVRTTlDVDdnL1BsSDJFaXFPaG9s?=
 =?utf-8?B?ZkNSaXFEZXlVUG0rS0VDUFVvbStzV2VYSmhzZ3pxNnpDNVRZZ21xWXNFRGhS?=
 =?utf-8?B?d3NtaG9ZVlNqRzhSaGVUZFVkSDB3djNEdFBlU0JWUFBTNkt5OVNuZHlVRXc2?=
 =?utf-8?B?NnhEM3pSNnVBTzdHbEp6RHZPYUcvZDlpY1daWEtVRUZCMmtVVTZLMmo3R1Ir?=
 =?utf-8?B?RmdkUndiK08wUFZ3UWZvVCtoczRiQWxPWXB2Ykg4Zyszd0FWUU81VFBLU1RD?=
 =?utf-8?B?V0kreHB6bVpPN0l3cE80NTBuNXV4cTZ6amoxT0kxUCtuNzB5YTExZXlZK3Yr?=
 =?utf-8?B?dGtjWVR4MFBRNktBU0NlcFA3bXlESUJOYy9lMGZwNy9YbE1pUVl4aS9OMkxr?=
 =?utf-8?B?V2JvdzFtSnY4eWNNTmFRbiszOHd0N2xHZ0k2bTBQeGpsK1JZRzFqQlpnN0pn?=
 =?utf-8?B?cEQrenkvNGdpVzFhNmpSY0FiLzAxSVgxazVvR3ZHbkdYdlM4NU5uL0VPRm96?=
 =?utf-8?B?Tko0WkxJV1NOMGQ4VDNhNk52bE1aTmU1UXBiTS9IcFRWS0tVQU1PNW1oVWtN?=
 =?utf-8?B?ZWxWWUhIN3pzVmhDZm1PQ0dZZWZxSTRZL3NsRzZSVHJZZXlVb1p6OEk2Qm5t?=
 =?utf-8?B?YTRpNGtUd3crOXdQQU1EanpVZmVUcmdtdldDQVlEM2grTEIxcDJFeVd5MzlZ?=
 =?utf-8?B?cHk2Ym1jbUZTcWd3M3FiZE9NM1FiQzU3OWpFRnRHUW1ROWViWW5mL1NGMVg2?=
 =?utf-8?B?a2dDRUFpa1NvM3ljczZ4TFkrTzVtWlArcFIvSDZYVEdwY0J2eEtDMHhvZ3Vv?=
 =?utf-8?B?R0xvdUR3THZ4d1g0Tnk1cTlsNlhOY3dZV1pnZENSSGpkdzFtb0Q5R3F2NkRv?=
 =?utf-8?B?dmsvdFloSURLNG1iaGxLRUo5MWhIdmowZUppL2dhMTZWZVdXSGVVVkFSRzJ0?=
 =?utf-8?B?QWhrbExVUjJacU1nbm9IOXZSWGdYRDh3L3hCVDdzWHhoeU5IbVhsMlRsWDJI?=
 =?utf-8?B?MTJaSXlYdlhmU0kwRXcwcUsyWEhHY0lBNG5KQTlqRTE0OGtpOG9xc1BHdmJm?=
 =?utf-8?B?dk1mQkVPSDZSTVkvbVBOUllrV2FnZmQ0dUxWL0Jtc2wyVXhHZkhrb3V5ZlRt?=
 =?utf-8?B?Y0RTcUIyUmIralduYVV4WmxLSEVPanorbGVvSS91S2tMd1BXdDA2WVBxOVo4?=
 =?utf-8?B?YU9ydmFRV3gwSWd4eTFPdHJzZDVUSHg1SkNZL3lYR0ZEQWhhcDVXN09tc1lG?=
 =?utf-8?B?Qm1UTk52NFl2WHlyZzNMWDRhU0UrbVZid2U3ZkVLQ0VNQmdXd21IT0F5WGxu?=
 =?utf-8?B?dTY3OHdVeUpranpDV1J3VFpoNnB3ekZQUG5wOFpwcDBRVS9kRlJjcmprN3pE?=
 =?utf-8?B?WnlFcE5LMlNPNGhJQjdhVUNFeFIxZmhueHYwZGlUcEc4ai9jdVNsem45Ujk4?=
 =?utf-8?B?bXNaRzFOSm9RPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0569ba4d-6998-4ac1-9c4c-08da0c9b3dbd
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2022 07:03:32.4447 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N9A3vQEFYs+1PkFBj8wz+X4SY5PbWIAxJELDsyxXBAyEh7aMidHL+D0sCvbfUp8Gy0vIj5/GhgjqAPuw6A1MHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2211
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rps: Centralize computation of
 freq caps
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



On 23-03-2022 00:26, Ashutosh Dixit wrote:
> Freq caps (i.e. RP0, RP1 and RPn frequencies) are read from HW. However the
> formats (bit positions, widths, registers and units) of these vary for
> different generations with even more variations arriving in the future. In
> order not to have to do identical computation for these caps in multiple
> places, here we centralize the computation of these caps. This makes the
> code cleaner and also more extensible for the future.
> 
> v2: Clarify that caps are in "hw units" in comments (Lucas De Marchi)
> 
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  24 +----
>   drivers/gpu/drm/i915/gt/intel_rps.c           | 101 ++++++++++--------
>   drivers/gpu/drm/i915/gt/intel_rps.h           |   2 +-
>   drivers/gpu/drm/i915/gt/intel_rps_types.h     |  10 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  14 +--
>   5 files changed, 79 insertions(+), 72 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index 31dbb2b96738..f5fbb74ed076 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> @@ -342,17 +342,16 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
>   	} else if (GRAPHICS_VER(i915) >= 6) {
>   		u32 rp_state_limits;
>   		u32 gt_perf_status;
> -		u32 rp_state_cap;
> +		struct intel_rps_freq_caps caps;
>   		u32 rpmodectl, rpinclimit, rpdeclimit;
>   		u32 rpstat, cagf, reqf;
>   		u32 rpcurupei, rpcurup, rpprevup;
>   		u32 rpcurdownei, rpcurdown, rpprevdown;
>   		u32 rpupei, rpupt, rpdownei, rpdownt;
>   		u32 pm_ier, pm_imr, pm_isr, pm_iir, pm_mask;
> -		int max_freq;
>   
>   		rp_state_limits = intel_uncore_read(uncore, GEN6_RP_STATE_LIMITS);
> -		rp_state_cap = intel_rps_read_state_cap(rps);
> +		intel_rps_get_freq_caps(rps, &caps);
>   		if (IS_GEN9_LP(i915))
>   			gt_perf_status = intel_uncore_read(uncore, BXT_GT_PERF_STATUS);
>   		else
> @@ -474,25 +473,12 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
>   		drm_printf(p, "RP DOWN THRESHOLD: %d (%lldns)\n",
>   			   rpdownt, intel_gt_pm_interval_to_ns(gt, rpdownt));
>   
> -		max_freq = (IS_GEN9_LP(i915) ? rp_state_cap >> 0 :
> -			    rp_state_cap >> 16) & 0xff;
> -		max_freq *= (IS_GEN9_BC(i915) ||
> -			     GRAPHICS_VER(i915) >= 11 ? GEN9_FREQ_SCALER : 1);
>   		drm_printf(p, "Lowest (RPN) frequency: %dMHz\n",
> -			   intel_gpu_freq(rps, max_freq));
> -
> -		max_freq = (rp_state_cap & 0xff00) >> 8;
> -		max_freq *= (IS_GEN9_BC(i915) ||
> -			     GRAPHICS_VER(i915) >= 11 ? GEN9_FREQ_SCALER : 1);
> +			   intel_gpu_freq(rps, caps.min_freq));
>   		drm_printf(p, "Nominal (RP1) frequency: %dMHz\n",
> -			   intel_gpu_freq(rps, max_freq));
> -
> -		max_freq = (IS_GEN9_LP(i915) ? rp_state_cap >> 16 :
> -			    rp_state_cap >> 0) & 0xff;
> -		max_freq *= (IS_GEN9_BC(i915) ||
> -			     GRAPHICS_VER(i915) >= 11 ? GEN9_FREQ_SCALER : 1);
> +			   intel_gpu_freq(rps, caps.rp1_freq));
>   		drm_printf(p, "Max non-overclocked (RP0) frequency: %dMHz\n",
> -			   intel_gpu_freq(rps, max_freq));
> +			   intel_gpu_freq(rps, caps.rp0_freq));
>   		drm_printf(p, "Max overclocked frequency: %dMHz\n",
>   			   intel_gpu_freq(rps, rps->max_freq));
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 6c9fdf7906c5..4528da9db590 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1070,23 +1070,59 @@ int intel_rps_set(struct intel_rps *rps, u8 val)
>   	return 0;
>   }
>   
> -static void gen6_rps_init(struct intel_rps *rps)
> +static u32 intel_rps_read_state_cap(struct intel_rps *rps)
>   {
>   	struct drm_i915_private *i915 = rps_to_i915(rps);
> -	u32 rp_state_cap = intel_rps_read_state_cap(rps);
> +	struct intel_uncore *uncore = rps_to_uncore(rps);
>   
> -	/* All of these values are in units of 50MHz */
> +	if (IS_XEHPSDV(i915))
> +		return intel_uncore_read(uncore, XEHPSDV_RP_STATE_CAP);
> +	else if (IS_GEN9_LP(i915))
> +		return intel_uncore_read(uncore, BXT_RP_STATE_CAP);
> +	else
> +		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
> +}
> +
> +/* "Caps" frequencies should be converted to MHz using intel_gpu_freq() */
> +void intel_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *capSis)
Since this function is covering gen6 and above it would be good to 
rename it as gen6_rps_get_freq_caps.

Thanks,
Badal
> +{
> +	struct drm_i915_private *i915 = rps_to_i915(rps);
> +	u32 rp_state_cap;
> +
> +	rp_state_cap = intel_rps_read_state_cap(rps);
>   
>   	/* static values from HW: RP0 > RP1 > RPn (min_freq) */
>   	if (IS_GEN9_LP(i915)) {
> -		rps->rp0_freq = (rp_state_cap >> 16) & 0xff;
> -		rps->rp1_freq = (rp_state_cap >>  8) & 0xff;
> -		rps->min_freq = (rp_state_cap >>  0) & 0xff;
> +		caps->rp0_freq = (rp_state_cap >> 16) & 0xff;
> +		caps->rp1_freq = (rp_state_cap >>  8) & 0xff;
> +		caps->min_freq = (rp_state_cap >>  0) & 0xff;
>   	} else {
> -		rps->rp0_freq = (rp_state_cap >>  0) & 0xff;
> -		rps->rp1_freq = (rp_state_cap >>  8) & 0xff;
> -		rps->min_freq = (rp_state_cap >> 16) & 0xff;
> +		caps->rp0_freq = (rp_state_cap >>  0) & 0xff;
> +		caps->rp1_freq = (rp_state_cap >>  8) & 0xff;
> +		caps->min_freq = (rp_state_cap >> 16) & 0xff;
> +	}
> +
> +	if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11) {
> +		/*
> +		 * In this case rp_state_cap register reports frequencies in
> +		 * units of 50 MHz. Convert these to the actual "hw unit", i.e.
> +		 * units of 16.67 MHz
> +		 */
> +		caps->rp0_freq *= GEN9_FREQ_SCALER;
> +		caps->rp1_freq *= GEN9_FREQ_SCALER;
> +		caps->min_freq *= GEN9_FREQ_SCALER;
>   	}
> +}
> +
> +static void gen6_rps_init(struct intel_rps *rps)
> +{
> +	struct drm_i915_private *i915 = rps_to_i915(rps);
> +	struct intel_rps_freq_caps caps;
> +
> +	intel_rps_get_freq_caps(rps, &caps);
> +	rps->rp0_freq = caps.rp0_freq;
> +	rps->rp1_freq = caps.rp1_freq;
> +	rps->min_freq = caps.min_freq;
>   
>   	/* hw_max = RP0 until we check for overclocking */
>   	rps->max_freq = rps->rp0_freq;
> @@ -1095,26 +1131,18 @@ static void gen6_rps_init(struct intel_rps *rps)
>   	if (IS_HASWELL(i915) || IS_BROADWELL(i915) ||
>   	    IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11) {
>   		u32 ddcc_status = 0;
> +		u32 mult = 1;
>   
> +		if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11)
> +			mult = GEN9_FREQ_SCALER;
>   		if (snb_pcode_read(i915, HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL,
>   				   &ddcc_status, NULL) == 0)
>   			rps->efficient_freq =
> -				clamp_t(u8,
> -					(ddcc_status >> 8) & 0xff,
> +				clamp_t(u32,
> +					((ddcc_status >> 8) & 0xff) * mult,
>   					rps->min_freq,
>   					rps->max_freq);
>   	}
> -
> -	if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11) {
> -		/* Store the frequency values in 16.66 MHZ units, which is
> -		 * the natural hardware unit for SKL
> -		 */
> -		rps->rp0_freq *= GEN9_FREQ_SCALER;
> -		rps->rp1_freq *= GEN9_FREQ_SCALER;
> -		rps->min_freq *= GEN9_FREQ_SCALER;
> -		rps->max_freq *= GEN9_FREQ_SCALER;
> -		rps->efficient_freq *= GEN9_FREQ_SCALER;
> -	}
>   }
>   
>   static bool rps_reset(struct intel_rps *rps)
> @@ -2219,19 +2247,6 @@ int intel_rps_set_min_frequency(struct intel_rps *rps, u32 val)
>   		return set_min_freq(rps, val);
>   }
>   
> -u32 intel_rps_read_state_cap(struct intel_rps *rps)
> -{
> -	struct drm_i915_private *i915 = rps_to_i915(rps);
> -	struct intel_uncore *uncore = rps_to_uncore(rps);
> -
> -	if (IS_XEHPSDV(i915))
> -		return intel_uncore_read(uncore, XEHPSDV_RP_STATE_CAP);
> -	else if (IS_GEN9_LP(i915))
> -		return intel_uncore_read(uncore, BXT_RP_STATE_CAP);
> -	else
> -		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
> -}
> -
>   static void intel_rps_set_manual(struct intel_rps *rps, bool enable)
>   {
>   	struct intel_uncore *uncore = rps_to_uncore(rps);
> @@ -2244,18 +2259,18 @@ static void intel_rps_set_manual(struct intel_rps *rps, bool enable)
>   void intel_rps_raise_unslice(struct intel_rps *rps)
>   {
>   	struct intel_uncore *uncore = rps_to_uncore(rps);
> -	u32 rp0_unslice_req;
>   
>   	mutex_lock(&rps->lock);
>   
>   	if (rps_uses_slpc(rps)) {
>   		/* RP limits have not been initialized yet for SLPC path */
> -		rp0_unslice_req = ((intel_rps_read_state_cap(rps) >> 0)
> -				   & 0xff) * GEN9_FREQ_SCALER;
> +		struct intel_rps_freq_caps caps;
> +
> +		intel_rps_get_freq_caps(rps, &caps);
>   
>   		intel_rps_set_manual(rps, true);
>   		intel_uncore_write(uncore, GEN6_RPNSWREQ,
> -				   ((rp0_unslice_req <<
> +				   ((caps.rp0_freq <<
>   				   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT) |
>   				   GEN9_IGNORE_SLICE_RATIO));
>   		intel_rps_set_manual(rps, false);
> @@ -2269,18 +2284,18 @@ void intel_rps_raise_unslice(struct intel_rps *rps)
>   void intel_rps_lower_unslice(struct intel_rps *rps)
>   {
>   	struct intel_uncore *uncore = rps_to_uncore(rps);
> -	u32 rpn_unslice_req;
>   
>   	mutex_lock(&rps->lock);
>   
>   	if (rps_uses_slpc(rps)) {
>   		/* RP limits have not been initialized yet for SLPC path */
> -		rpn_unslice_req = ((intel_rps_read_state_cap(rps) >> 16)
> -				   & 0xff) * GEN9_FREQ_SCALER;
> +		struct intel_rps_freq_caps caps;
> +
> +		intel_rps_get_freq_caps(rps, &caps);
>   
>   		intel_rps_set_manual(rps, true);
>   		intel_uncore_write(uncore, GEN6_RPNSWREQ,
> -				   ((rpn_unslice_req <<
> +				   ((caps.min_freq <<
>   				   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT) |
>   				   GEN9_IGNORE_SLICE_RATIO));
>   		intel_rps_set_manual(rps, false);
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
> index ba1ed9f7ecda..529774c55eb6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.h
> @@ -45,7 +45,7 @@ u32 intel_rps_get_rp1_frequency(struct intel_rps *rps);
>   u32 intel_rps_get_rpn_frequency(struct intel_rps *rps);
>   u32 intel_rps_read_punit_req(struct intel_rps *rps);
>   u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps);
> -u32 intel_rps_read_state_cap(struct intel_rps *rps);
> +void intel_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps);
>   void intel_rps_raise_unslice(struct intel_rps *rps);
>   void intel_rps_lower_unslice(struct intel_rps *rps);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h b/drivers/gpu/drm/i915/gt/intel_rps_types.h
> index 3941d8551f52..f755f69662c4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
> @@ -37,6 +37,16 @@ enum {
>   	INTEL_RPS_TIMER,
>   };
>   
> +/*
> + * Freq caps exposed by HW, values are in "hw units" and intel_gpu_freq()
> + * should be used to convert to MHz
> +*/
> +struct intel_rps_freq_caps {
> +	u8 rp0_freq;		/* non-overclocked max frequency */
> +	u8 rp1_freq;		/* "less than" RP0 power/freqency */
> +	u8 min_freq;		/* aka RPn, minimum frequency */
> +};
> +
>   struct intel_rps {
>   	struct mutex lock; /* protects enabling and the worker */
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index 9f032c65a488..aec5e986cb13 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -582,16 +582,12 @@ static int slpc_use_fused_rp0(struct intel_guc_slpc *slpc)
>   static void slpc_get_rp_values(struct intel_guc_slpc *slpc)
>   {
>   	struct intel_rps *rps = &slpc_to_gt(slpc)->rps;
> -	u32 rp_state_cap;
> +	struct intel_rps_freq_caps caps;
>   
> -	rp_state_cap = intel_rps_read_state_cap(rps);
> -
> -	slpc->rp0_freq = REG_FIELD_GET(RP0_CAP_MASK, rp_state_cap) *
> -					GT_FREQUENCY_MULTIPLIER;
> -	slpc->rp1_freq = REG_FIELD_GET(RP1_CAP_MASK, rp_state_cap) *
> -					GT_FREQUENCY_MULTIPLIER;
> -	slpc->min_freq = REG_FIELD_GET(RPN_CAP_MASK, rp_state_cap) *
> -					GT_FREQUENCY_MULTIPLIER;
> +	intel_rps_get_freq_caps(rps, &caps);
> +	slpc->rp0_freq = intel_gpu_freq(rps, caps.rp0_freq);
> +	slpc->rp1_freq = intel_gpu_freq(rps, caps.rp1_freq);
> +	slpc->min_freq = intel_gpu_freq(rps, caps.min_freq);
>   
>   	if (!slpc->boost_freq)
>   		slpc->boost_freq = slpc->rp0_freq;
