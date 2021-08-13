Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 335EB3EBEB0
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Aug 2021 01:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31A6A6E8E8;
	Fri, 13 Aug 2021 23:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 862136E8E7;
 Fri, 13 Aug 2021 23:24:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10075"; a="215673706"
X-IronPort-AV: E=Sophos;i="5.84,320,1620716400"; d="scan'208";a="215673706"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 16:24:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,320,1620716400"; d="scan'208";a="447320344"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga007.fm.intel.com with ESMTP; 13 Aug 2021 16:24:42 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 13 Aug 2021 16:24:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 13 Aug 2021 16:24:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 13 Aug 2021 16:24:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FaWoEGttP+uY3OVKOFnI1Q+WDkTD+G+gTa/fYbVGpfy4U0puKAUbNnrQwqISx4pP4ZT1Y3OfqPtHDog0NcgwEDExKD0laKnU/zDYf1kIHtL43gmKfYYSxkCDH4TUW0IWDhPDn/yfjgCTrVHWkgEWOTJDfJ2vI7XTbif2BzbLPSZJRU9UKhrcDhjCM9/blT1eygtCfhYFbLf6/vOc91DX7MBC+AGNC27NqUmI66oautwSXUUM/4+5hbOiKM8aQ/7MsXodXCgPlvVjM9gkg2Szhp42cU7O7L73fAMsao5rP53GQa+M3kMToYTjDpjFxWi0gJLILkCa0SXMYlDaWA0zsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4FO/P1hv96se4D4ryqn+PaBEK7TZwlbBei5GJnMLMI8=;
 b=fUy7FQU7yJsmj7+cP7u6eXOHN+eeCd7go+urg8l/qJNeFrbulbbSfeTRb1VdbIyXHRvwmXH0tkZt7QMwmSaFa4mWXIi0//H8toazgQ24034pAr+jLZFCisk8DN+ChV87u9HDOBRSCUTtxf70U8Whd3wH8mI6IohlUh9WBnRxXAZ2I5Nisplh1W2C0zDG9so8c/SLEsL2ZZ8aJBeBpadi2oZzJ5rp5M3n5QAQqAfAACeTNi2tLMwqsUxUYA8qhRTR0IdAz69KYJeSIk+trSbN2XNhu1AGTCb3ehp9+FzMLJM8y8kPv7LHJMnqEHGv4la+Q8DZiCwMpq2DLbYbVv6EPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4FO/P1hv96se4D4ryqn+PaBEK7TZwlbBei5GJnMLMI8=;
 b=uqD7+7hDNxmkHth0y8UEkT3XBuhMgRer+nzfCNFZ8PtT6pDv7hmHzQRuFf4Qnn48k96bniOb4Tz7iTsLH30/savvXvaRBptBuVNLFpe5ptmdxN58/h1qDiy76P1RxE2uzsAeEmpt90/lmAv2h0hdsfUlO1HxEbBbubx5jig8TfU=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM5PR11MB1609.namprd11.prod.outlook.com (2603:10b6:4:8::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4415.19; Fri, 13 Aug 2021 23:24:41 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b96b:79f6:c1fb:13ff]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b96b:79f6:c1fb:13ff%7]) with mapi id 15.20.4415.019; Fri, 13 Aug 2021
 23:24:41 +0000
To: Matthew Brost <matthew.brost@intel.com>, <igt-dev@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
References: <20210804012303.158392-1-matthew.brost@intel.com>
 <20210804012303.158392-2-matthew.brost@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <0f42bc7d-2a3a-ffcc-a674-8d028093987a@intel.com>
Date: Fri, 13 Aug 2021 16:24:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
In-Reply-To: <20210804012303.158392-2-matthew.brost@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-ClientProxiedBy: SJ0PR03CA0327.namprd03.prod.outlook.com
 (2603:10b6:a03:39d::32) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.65] (99.72.232.53) by
 SJ0PR03CA0327.namprd03.prod.outlook.com (2603:10b6:a03:39d::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.14 via Frontend
 Transport; Fri, 13 Aug 2021 23:24:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d29d7bc3-093e-4ebc-5f5f-08d95eb18699
X-MS-TrafficTypeDiagnostic: DM5PR11MB1609:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR11MB1609F9DAB2F3E12E62C8C1E2F4FA9@DM5PR11MB1609.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jdrLUGbTKaqNmpqgvlAEQ83aWk3C9LxrN52+3ECfuhiptB/vQBEfITvgFtHJEIHy20jzTdQUaNO/8DEloKx7ghgaxEoAtlu+XM7oFapgoSA6JGSFvCCSSnT29T1MpQ8xAigI5ECYYydxHFf1Sc0+iSZ9UvJmTEJ9H9R9ddPeSNZqxCfwoKmkxWAZkXK5Zq/OpSYU5Esis0i2QYO4wECw3XOoSaxeDyOqxiZDzZ4ijH5M9H2x1wi/+oPucKrjoz5+ipViqVireUDpSMcOad2JBNObuLRkIkHqXB0KLAP2ghcK2hBpsMc8KwZJ2NR4E+gd/5dZTEbKPew34EmO/rQ2JrxxEyyxzmdsFNnMwlz5RUM38vluuItmAYm+iwY9J9enV72AkcY2mEn+GLsSp3kCfdchCG5OgbssVa1cdNlYi9rrUgUTDWuVtQprVtzvFaInfyn09o2xFzQMU9kz7xJT71wEATkQo+ew/nH5DoXCLNennwdOqTuoROhRXH3UaYV96ZDCQIoWVX1KFyvS0dxpDgnzBrMu+ZRxWUfAnHguWXhSwNI6Y2p9uW57LfxFz5YaVmJakzdmo40iU+qX7v3IQvvpCrzu62HnYNWtb6YDuDXHZUf6zmTWBSJU5QMAJOoG+y//31XdSKRT3mcntU/EN+cf7UqL4V7pn1JyRdjYyuI7mkk69JyZ3EeYyWgDWY7Gtm/JjEeDVV+fSFP1tFfOGopFCvTV1tMoffAQ6737ctr16sQszh0R2GG4yQrE2zEI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(83380400001)(38100700002)(31696002)(316002)(16576012)(31686004)(6666004)(86362001)(66476007)(8676002)(66556008)(8936002)(26005)(186003)(66946007)(36756003)(5660300002)(6486002)(2906002)(508600001)(53546011)(4326008)(956004)(450100002)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEI5RHZRK0RydS9JRVc4bEZnY1RaV0dwRkZlbGdPN3AzS1J5MnUvSjR4YWxp?=
 =?utf-8?B?cFhTR1NZVHpzRXBwUDlobnJMblV4em1ZSjl4L2dQSjRtSldRakV2ZEtRNUN6?=
 =?utf-8?B?OGRoYy9uWS9ZNGp5WlhyVWUySGpXc2Q0OTA2ZFpxWUJXbDZ0Nmx6VGZyWWp0?=
 =?utf-8?B?WEcrN1cwVkZWbGtlM1FIY1hrMVZvR0Y1dDcwL2h4OXVmaUUyRG5Pb1NJZlZu?=
 =?utf-8?B?K2I3RzZWQU8veFVOQlRpU3dRVFBhbWhxTGJmcFhWZzVLdVphYWY2OHovV29x?=
 =?utf-8?B?azgxYzFSc0o0UHl4VTMza25oU3YwMlJndjNzZWNsZFZTeUQyUnFUQzkvQ0xK?=
 =?utf-8?B?YTFuUE9FekVKL2JsaXpiSVZSSUxYUk5TMWlnemJnNy9UTHAvaFRaWFRiaXVI?=
 =?utf-8?B?VGdjTTh2blpiQkNrMDAzeE55L3lXY3R0N0lJcXFqM3g3VkgyajcxektrKzdH?=
 =?utf-8?B?WWttYTlVdnM2bTArY2RLOC9WM0NrZ2ROS3E3dXNOV0FRdUFQb0xES1o0VHNF?=
 =?utf-8?B?Rm9ubnF2RVBtb2pDMUtSRGE5ejg5ellONVR5QTNxd1k5eHVqajBSNUZKV2Y5?=
 =?utf-8?B?QUY2OTBidS9SUERFWU95RURGNEh5UG54Wmh5a0VmSzloZndGN0cydHdBb0hw?=
 =?utf-8?B?WU0vU3d5dStNUWI1VXB1VGpURFdIaGpHeHhKdVdkY1hIckVVYXFtbWNwQ3pG?=
 =?utf-8?B?V0Jpb0JTazR3U0txZXdUWEpEZkU3SVp4YThVMTVWS0xFVk44YngvWlVvQVVP?=
 =?utf-8?B?YlRLdkYvOTh5d3VzQmVMKzFIT1BCeGZJdjNBRGZ3S3I1SlVmL2lGUy9CMWp1?=
 =?utf-8?B?RDZKUUVXOEdjZnNZMWJHS0JDOHF3YUF0TFd0bVZ5TkxJVWRRdlJyYUFqN2ND?=
 =?utf-8?B?Z0RIb1ZZa0tmSGpIRVVNb3dSS2d3eVVDNnc4SEpla1lRM1BXKzJ2eXNTdDFL?=
 =?utf-8?B?d3RLVkZRNVBhYzQwYzBxbGZVcFNvLzJJVyswaXFhcytyQUlodjdvdTZqd013?=
 =?utf-8?B?S2k2UFdhMVlFTWF2UXhqTUlmZHZnTFZtTmEwUHRGTTBsWmt2TFBOQU5pbjE3?=
 =?utf-8?B?TEx6UzlhZVhLNHFJRkc2MXFzdWo5R3lNVEIwYmNwTXU0dGxOQmNWZGdGSWIw?=
 =?utf-8?B?RmN4cEM5WTYzT0FnL0h0blhCbFF0ZzRoamV2MFg2MVBYUHFnNVIzNXBLVU5G?=
 =?utf-8?B?aVVES2FuSlVUN1hZMVVwM2xockcrak1zRUZocVY0V1dsSmQwYXdkVzEvbmRP?=
 =?utf-8?B?aUttZy83MjlwWEgxRjhCaTQ0dVdGKytZY2s4d2NlbzBoLzE4WDR1K0VlbWxp?=
 =?utf-8?B?SzZCc1hJY2NpaWx5eTBEZFJrTzJhbHRWL1lzdmM3WXZtdExZQTI4WnBzNTFj?=
 =?utf-8?B?eUtTQzMzWHZiRGhML01vZG5WSHNSYTJSdlJ4Z2FDaEJ4dVJNRFJtM0dZdnZ4?=
 =?utf-8?B?VzAxaWpoem4rYjVqU203Zk8veThDV2psRmcrbnU5U2JjVVRJMUlRYWVDK0xP?=
 =?utf-8?B?QnV5VTJRSzBmdks4NXpFQk1WUVBBRlpJSGVDUmRLR24xdGNHbVRwNGNNQXc5?=
 =?utf-8?B?MzdzalFxMExJM2FxL21KR0hzUFNkc0pGOGNGNXZ2VkRKSk44Tis2RWFwSDNV?=
 =?utf-8?B?bjliZi8wYUp3SUtYeFBNRFd5WlhTZ1RUUk5yTUV3dk16bUE2Z3FycEtabW1t?=
 =?utf-8?B?YTZtdU9BVmhIL2RIemJvdGNCV2t0eE1hTHlXOENXU3pnbG5iRFluMUI0ekNz?=
 =?utf-8?Q?0s4Pld6KtsvG62r3mPDDAjxGm+DyfRJ+V1BmH1W?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d29d7bc3-093e-4ebc-5f5f-08d95eb18699
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2021 23:24:41.3192 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pOUSNaLT4ozQeVuXkVqksCoemco8MF6E8kFonpl+3FkiDNJPqJuCp/zDEKZrTYGtlXTb6jFVVwavWRFo9A3tiNiFn2YBixVDYI06e0P7XME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1609
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/3] i915/gem_exec_schedule: Make
 gem_exec_schedule understand static priority mapping
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



On 8/3/2021 6:23 PM, Matthew Brost wrote:
> The i915 currently has 2k visible priority levels which are currently
> unique. This is changing to statically map these 2k levels into 3
> buckets:
>
> low: < 0
> mid: 0
> high: > 0
>
> Update gem_exec_schedule to understand this. This entails updating
> promotion test to use 3 levels that will map into different buckets and
> also add bit of delay after releasing a cork beforing completing the
> spinners.

This needs a line about why we add the delay, something like "to give 
time to the i915 scheduler to process the fence release and queue the 
requests" or something.
BTW, any reason not to just add the delay unconditionally in 
unplug_show_queue, instead of only in one test? Other tests might suffer 
from the same problem even if they're not hitting it at the moment.

Daniele

>
> Also skip any tests that rely on having more than 3 priority levels.
>
> v2: Add a delay between starting releasing spinner and cork in
> promotion, add local define for static mapping engine info
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>   lib/i915/gem_scheduler.c       | 14 ++++++++
>   lib/i915/gem_scheduler.h       |  1 +
>   lib/i915/i915_drm_local.h      | 10 ++++++
>   tests/i915/gem_exec_schedule.c | 62 +++++++++++++++++++++-------------
>   4 files changed, 63 insertions(+), 24 deletions(-)
>
> diff --git a/lib/i915/gem_scheduler.c b/lib/i915/gem_scheduler.c
> index cdddf42ad..d006b8676 100644
> --- a/lib/i915/gem_scheduler.c
> +++ b/lib/i915/gem_scheduler.c
> @@ -28,6 +28,7 @@
>   #include "igt_core.h"
>   #include "ioctl_wrappers.h"
>   
> +#include "i915/i915_drm_local.h"
>   #include "i915/gem_scheduler.h"
>   #include "i915/gem_submission.h"
>   
> @@ -90,6 +91,19 @@ bool gem_scheduler_has_ctx_priority(int fd)
>   		I915_SCHEDULER_CAP_PRIORITY;
>   }
>   
> +/**
> + * gem_scheduler_has_static_priority:
> + * @fd: open i915 drm file descriptor
> + *
> + * Feature test macro to query whether the driver supports priority assigned
> + * from user space are statically mapping into 3 buckets.
> + */
> +bool gem_scheduler_has_static_priority(int fd)
> +{
> +	return gem_scheduler_capability(fd) &
> +		I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP;
> +}
> +
>   /**
>    * gem_scheduler_has_preemption:
>    * @fd: open i915 drm file descriptor
> diff --git a/lib/i915/gem_scheduler.h b/lib/i915/gem_scheduler.h
> index d43e84bd2..b00804f70 100644
> --- a/lib/i915/gem_scheduler.h
> +++ b/lib/i915/gem_scheduler.h
> @@ -29,6 +29,7 @@
>   unsigned gem_scheduler_capability(int fd);
>   bool gem_scheduler_enabled(int fd);
>   bool gem_scheduler_has_ctx_priority(int fd);
> +bool gem_scheduler_has_static_priority(int fd);
>   bool gem_scheduler_has_preemption(int fd);
>   bool gem_scheduler_has_semaphores(int fd);
>   bool gem_scheduler_has_engine_busy_stats(int fd);
> diff --git a/lib/i915/i915_drm_local.h b/lib/i915/i915_drm_local.h
> index dd646aedf..a1527ff21 100644
> --- a/lib/i915/i915_drm_local.h
> +++ b/lib/i915/i915_drm_local.h
> @@ -20,6 +20,16 @@ extern "C" {
>    * clean these up when kernel uapi headers are sync'd.
>    */
>   
> +/*
> + * Indicates the 2k user priority levels are statically mapped into 3 buckets as
> + * follows:
> + *
> + * -1k to -1	Low priority
> + * 0		Normal priority
> + * 1 to 1k	Highest priority
> + */
> +#define   I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP	(1ul << 5)
> +
>   #if defined(__cplusplus)
>   }
>   #endif
> diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
> index e5fb45982..bb9fb6c14 100644
> --- a/tests/i915/gem_exec_schedule.c
> +++ b/tests/i915/gem_exec_schedule.c
> @@ -199,7 +199,8 @@ create_highest_priority(int fd, const intel_ctx_cfg_t *cfg)
>   
>   static void unplug_show_queue(int fd, struct igt_cork *c,
>   			      const intel_ctx_cfg_t *cfg,
> -			      unsigned int engine)
> +			      unsigned int engine,
> +			      unsigned usec_delay)
>   {
>   	igt_spin_t *spin[MAX_ELSP_QLEN];
>   	int max = MAX_ELSP_QLEN;
> @@ -216,6 +217,7 @@ static void unplug_show_queue(int fd, struct igt_cork *c,
>   
>   	igt_cork_unplug(c); /* batches will now be queued on the engine */
>   	igt_debugfs_dump(fd, "i915_engine_info");
> +	usleep(usec_delay);
>   
>   	for (int n = 0; n < max; n++)
>   		igt_spin_free(fd, spin[n]);
> @@ -237,7 +239,7 @@ static void fifo(int fd, const intel_ctx_t *ctx, unsigned ring)
>   	store_dword_fenced(fd, ctx, ring, scratch, 0, 1, fence, 0);
>   	store_dword_fenced(fd, ctx, ring, scratch, 0, 2, fence, 0);
>   
> -	unplug_show_queue(fd, &cork, &ctx->cfg, ring);
> +	unplug_show_queue(fd, &cork, &ctx->cfg, ring, 0);
>   	close(fence);
>   
>   	result =  __sync_read_u32(fd, scratch, 0);
> @@ -298,7 +300,7 @@ static void implicit_rw(int i915, const intel_ctx_t *ctx, unsigned int ring,
>   				   ring, scratch, 0, ring,
>   				   fence, I915_GEM_DOMAIN_RENDER);
>   
> -	unplug_show_queue(i915, &cork, &ctx->cfg, ring);
> +	unplug_show_queue(i915, &cork, &ctx->cfg, ring, 0);
>   	close(fence);
>   
>   	result =  __sync_read_u32(i915, scratch, 0);
> @@ -355,7 +357,7 @@ static void independent(int fd, const intel_ctx_t *ctx, unsigned int engine,
>   	/* Same priority, but different timeline (as different engine) */
>   	batch = __store_dword(fd, ctx, engine, scratch, 0, engine, 0, fence, 0);
>   
> -	unplug_show_queue(fd, &cork, &ctx->cfg, engine);
> +	unplug_show_queue(fd, &cork, &ctx->cfg, engine, 0);
>   	close(fence);
>   
>   	gem_sync(fd, batch);
> @@ -1326,7 +1328,7 @@ static void reorder(int fd, const intel_ctx_cfg_t *cfg,
>   	store_dword_fenced(fd, ctx[LO], ring, scratch, 0, ctx[LO]->id, fence, 0);
>   	store_dword_fenced(fd, ctx[HI], ring, scratch, 0, ctx[HI]->id, fence, 0);
>   
> -	unplug_show_queue(fd, &cork, cfg, ring);
> +	unplug_show_queue(fd, &cork, cfg, ring, 0);
>   	close(fence);
>   
>   	result =  __sync_read_u32(fd, scratch, 0);
> @@ -1353,10 +1355,10 @@ static void promotion(int fd, const intel_ctx_cfg_t *cfg, unsigned ring)
>   	gem_context_set_priority(fd, ctx[LO]->id, MIN_PRIO);
>   
>   	ctx[HI] = intel_ctx_create(fd, cfg);
> -	gem_context_set_priority(fd, ctx[HI]->id, 0);
> +	gem_context_set_priority(fd, ctx[HI]->id, MAX_PRIO);
>   
>   	ctx[NOISE] = intel_ctx_create(fd, cfg);
> -	gem_context_set_priority(fd, ctx[NOISE]->id, MIN_PRIO/2);
> +	gem_context_set_priority(fd, ctx[NOISE]->id, 0);
>   
>   	result = gem_create(fd, 4096);
>   	dep = gem_create(fd, 4096);
> @@ -1377,7 +1379,7 @@ static void promotion(int fd, const intel_ctx_cfg_t *cfg, unsigned ring)
>   
>   	store_dword(fd, ctx[HI], ring, result, 0, ctx[HI]->id, 0);
>   
> -	unplug_show_queue(fd, &cork, cfg, ring);
> +	unplug_show_queue(fd, &cork, cfg, ring, 250000);
>   	close(fence);
>   
>   	dep_read = __sync_read_u32(fd, dep, 0);
> @@ -1893,7 +1895,7 @@ static void deep(int fd, const intel_ctx_cfg_t *cfg,
>   	igt_info("Second deptree: %d requests [%.3fs]\n",
>   		 n * XS, 1e-9*igt_nsec_elapsed(&tv));
>   
> -	unplug_show_queue(fd, &cork, cfg, ring);
> +	unplug_show_queue(fd, &cork, cfg, ring, 0);
>   	gem_close(fd, plug);
>   	igt_require(expected); /* too slow */
>   
> @@ -1962,7 +1964,7 @@ static void wide(int fd, const intel_ctx_cfg_t *cfg, unsigned ring)
>   	igt_info("Submitted %d requests over %d contexts in %.1fms\n",
>   		 count, MAX_CONTEXTS, igt_nsec_elapsed(&tv) * 1e-6);
>   
> -	unplug_show_queue(fd, &cork, cfg, ring);
> +	unplug_show_queue(fd, &cork, cfg, ring, 0);
>   	close(fence);
>   
>   	__sync_read_u32_count(fd, result, result_read, sizeof(result_read));
> @@ -2067,7 +2069,7 @@ static void reorder_wide(int fd, const intel_ctx_cfg_t *cfg, unsigned ring)
>   		intel_ctx_destroy(fd, tmp_ctx);
>   	}
>   
> -	unplug_show_queue(fd, &cork, cfg, ring);
> +	unplug_show_queue(fd, &cork, cfg, ring, 0);
>   	close(fence);
>   
>   	__sync_read_u32_count(fd, result, result_read, sizeof(result_read));
> @@ -2963,19 +2965,25 @@ igt_main
>   			test_each_engine_store("preempt-other-chain", fd, ctx, e)
>   				preempt_other(fd, &ctx->cfg, e->flags, CHAIN);
>   
> -			test_each_engine_store("preempt-queue", fd, ctx, e)
> -				preempt_queue(fd, &ctx->cfg, e->flags, 0);
> +			test_each_engine_store("preempt-engines", fd, ctx, e)
> +				preempt_engines(fd, e, 0);
>   
> -			test_each_engine_store("preempt-queue-chain", fd, ctx, e)
> -				preempt_queue(fd, &ctx->cfg, e->flags, CHAIN);
> -			test_each_engine_store("preempt-queue-contexts", fd, ctx, e)
> -				preempt_queue(fd, &ctx->cfg, e->flags, CONTEXTS);
> +			igt_subtest_group {
> +				igt_fixture {
> +					igt_require(!gem_scheduler_has_static_priority(fd));
> +				}
>   
> -			test_each_engine_store("preempt-queue-contexts-chain", fd, ctx, e)
> -				preempt_queue(fd, &ctx->cfg, e->flags, CONTEXTS | CHAIN);
> +				test_each_engine_store("preempt-queue", fd, ctx, e)
> +					preempt_queue(fd, &ctx->cfg, e->flags, 0);
>   
> -			test_each_engine_store("preempt-engines", fd, ctx, e)
> -				preempt_engines(fd, e, 0);
> +				test_each_engine_store("preempt-queue-chain", fd, ctx, e)
> +					preempt_queue(fd, &ctx->cfg, e->flags, CHAIN);
> +				test_each_engine_store("preempt-queue-contexts", fd, ctx, e)
> +					preempt_queue(fd, &ctx->cfg, e->flags, CONTEXTS);
> +
> +				test_each_engine_store("preempt-queue-contexts-chain", fd, ctx, e)
> +					preempt_queue(fd, &ctx->cfg, e->flags, CONTEXTS | CHAIN);
> +			}
>   
>   			igt_subtest_group {
>   				igt_hang_t hang;
> @@ -3017,11 +3025,17 @@ igt_main
>   		test_each_engine_store("wide", fd, ctx, e)
>   			wide(fd, &ctx->cfg, e->flags);
>   
> -		test_each_engine_store("reorder-wide", fd, ctx, e)
> -			reorder_wide(fd, &ctx->cfg, e->flags);
> -
>   		test_each_engine_store("smoketest", fd, ctx, e)
>   			smoketest(fd, &ctx->cfg, e->flags, 5);
> +
> +		igt_subtest_group {
> +			igt_fixture {
> +				igt_require(!gem_scheduler_has_static_priority(fd));
> +			}
> +
> +			test_each_engine_store("reorder-wide", fd, ctx, e)
> +				reorder_wide(fd, &ctx->cfg, e->flags);
> +		}
>   	}
>   
>   	igt_subtest_group {

