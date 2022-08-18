Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C244598EB7
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 23:06:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9704610E136;
	Thu, 18 Aug 2022 21:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9D4E10E136
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 21:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660856762; x=1692392762;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RTCuBlyjqQJfUh7dc3Eq0rx8CM3tWpRml2FipEOuw7s=;
 b=kd/5yj/fRblya/r0CEM+1fdqlyZn96n+ntwZsJlb9k4/VCEye+t68HH9
 swD6fKBrjHvfir6RKMmvM2WY3ZhPlKgQdWrAAGVhYdeNqY4btwRajeHB2
 o/7QunChaB0qXaaVn4iZ+tHaw6FSSDvXEz1j1YOy8UMu0NYxpZ1nXPjxV
 tHbVpBzatMgMWITYvU8Ncz3MjytISHpBQjJicegIHS0l0bpBPsEIneJSu
 xwH3aKIoGuHNC+O71x05BgeB1fyCaX3TGAEIs2iTCjwvfxcgXr/BPFCSh
 JNHxnbG7fUpNZ52hupKZC/8Vyff2xy1qm9L8EV288LDsKCGs4Jn5Gexfk A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="294146964"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="294146964"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 14:06:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="584378416"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 18 Aug 2022 14:06:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 18 Aug 2022 14:06:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 18 Aug 2022 14:06:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 18 Aug 2022 14:06:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 18 Aug 2022 14:06:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GSX30IYn/yUNPJLP4h6FNcI4PwCFBSCk6kJCTz9+HSMzDV4Re2be9C52D7dNtG/rD4AEvQQbXDsQgK6MM0ChOoyjTfJK834hOd4CdZUTYzR/ghwhEJT3WV7zlX5Q/ozPEwd6NgqJZpzjJAwfDrFU6FxzISZXawU9oqwZKj79K2+96pYYPLHWS0Lw0MyrslhpQQKgOxM45E/mxBheD3SvldTtHFpD65hJrArPUpFKtoXH4PU4EI70F0LqgJKl5WWyIJkTSnBxBI5HZn9gYO8gVIhEQl5zL5zAZsDIA5FFzCG9XelYF4GcX9pFkTQvj9j09U4k+sEJW5qB1PmXvwt/uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Je0pjcdSMD7vYrjdwawUp0fFUkbJqZqM8OjvYb3KyPI=;
 b=iejaMDPppZ21pTQDAos6UvHqxM2K6YTeaQgfSV8nK8BhEZ4qcmRrtMC4usVbbfFKFt7OYw9/utzd1AgzlMjhBUUcOvVG3mGYoHvT9zbxn9+SkyMUSoNspEi4hnTzXdTPPByW+LCiDV6PHumkDa4smpd0CZTKB3oWNIXmxgAfG6HrmmFUK3jZJ4Ci+jfioC8nrbuIvS7yLzRFyIuUkGBF2l1/ad9FqauSaxFfpF+3SbpfSXhKdScQ/5hsBNHHKsi4hIQTt0xonmvl0Ee9QO7j4lyvygTEP3NorhxOdalCOFhrNPrYvq91hTwl0yy9+3S4xknM0la1KIba+ZDxA8p2eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by IA1PR11MB6369.namprd11.prod.outlook.com (2603:10b6:208:3af::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.28; Thu, 18 Aug
 2022 21:05:57 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e%5]) with mapi id 15.20.5504.028; Thu, 18 Aug 2022
 21:05:54 +0000
Message-ID: <d230ac40-5a13-3eaf-0230-f559d423219c@intel.com>
Date: Thu, 18 Aug 2022 14:05:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220817020511.2180747-1-alan.previn.teres.alexis@intel.com>
 <20220817020511.2180747-3-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220817020511.2180747-3-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0006.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::11) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6b116da4-f028-4595-0abe-08da815d709c
X-MS-TrafficTypeDiagnostic: IA1PR11MB6369:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SfR8vDsTdOaRBn8AshsqQXrRfjuKKFpPGvJoxu/tnx4RfdoKzJ6sQixmkEAXxx8Arsv+I8uEqoQZ6mxCb1VKnD8TQ/fGIk99Ecu3ubMPnRvRvy2ZCq/89dJcMOxiOM+fTJ3com29tePR2PvJ6Ppnllr/qi2CvdjBRfTJLgPHz11HDs1qP/TXu7JmVuolEKMzXgU7CVJJi9gF9CP1WdvftS2b2OlElfBkSvFLf3MgFTAfiJ3gS4jzPingmPwgYGxnD9MlioLiDg+Fg2hKSMuR7/23/kUCOlTf3EGGBtW6kTNHzM913BbQOPIbje1NUqQA6zWFIAQyxeoFyGuDlBQaLFJ8mRZ6mUfUW+nl2bcSDNdRhTyFwozoyH4dBspdTAX3dz8Vi6XZCjQpQx5QI618EwxNy2H/2Yu2pqLV4DkYfWTS86Kujab0EpbnoCZp7KUPtz8wcUju+sudiwTBJfTX7gk/YLovDEnVJhs0ez3pzGavW09tXAuw0eYzBnCJGzP966oXKXfemjmF8VRsVfaDEBD19t4qX0i46LBxdZn98wojpnNmWh6IfHB6mTUR2zy1FRZn50FCrfjYcvw2BSRtNIDd1X4GHoi7f91D6nabPPDRVpyiOKaWJk+ZLbcBzfPuQTD/VLKK8gaE1J0sbwHthRS1Ur0KsY5dhuZbhLGNPWUGlP16ZkthrJIa5W2AzZy8v0NlhSVFas0q8lHH90AZO7yNPgB7zdaqTddhFMQGD3VnptzqEYJdo+2NHHidkVtosD9Sa6546b4CQgCGQk/PYUA47PlxNOO7dBl+jqqaWsg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(366004)(136003)(376002)(346002)(8936002)(82960400001)(83380400001)(38100700002)(30864003)(66946007)(66556008)(8676002)(186003)(5660300002)(316002)(66476007)(53546011)(478600001)(2616005)(2906002)(26005)(86362001)(41300700001)(6512007)(6506007)(36756003)(31696002)(6486002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WERnRjZJS054cEdua3dNMTBqT3pFajFzNXU1all2eUpZR2JwWFAyN3JDQXJv?=
 =?utf-8?B?U1FKUDRoU2JyekVSZEV5U3czNFkvVnhCbzhkeTBnb05VUVJ3MmpvMWFMVGo0?=
 =?utf-8?B?cUxUcnBwbEp5YTV0TWRYYlUwUWptSnllQjRXMFNuMW43L1MvMDFlSlR1NWV1?=
 =?utf-8?B?TGpBTXBhVUV6SUVTRVVoV3M2b3FkWnRTeEJHdjV6VjRUOVBkcmFIU05aT2Vn?=
 =?utf-8?B?d0toMzRJVzZXalNXSW9SNGoxUjFwbzRxbGsxRlhQMjVaSzl6K1J1QUQ3U3Ny?=
 =?utf-8?B?UGtWYkg1NEdzNGtlS0lmSU93K2RndWhjU1REaUVKRDY2eFJxUUhkNlNJQXI5?=
 =?utf-8?B?OHpScTgveGVHSVlXVjdxdHEyTFllNjV2S2JySDhZK0lhSlM0ZDd3eXNBT1U4?=
 =?utf-8?B?U3BrR1hzZmVaVG1EVlRSQ2Z0Y2d4VkkrQVgyeE5valA1YzgxcHZ0S3VidUUz?=
 =?utf-8?B?eTZBYUl3WEhoQ3FBSkVyaHNxUGp6SFJYT3J1WXBjTlNuOFhDRW1qNmxKY0JP?=
 =?utf-8?B?TytIRDlZTnNUUFlRTU1UNHVidEV1UzBhRWFzQXNEZ0ZPNzcwbExUdUtqUGJu?=
 =?utf-8?B?UU1OTTlaNk9aaHhoSTludVZLWUVJY0xjMHlYS2c5VDhkdkMvTjRQT3VNQ0Vy?=
 =?utf-8?B?UWpsVnhwVGhxMFpOYXh4MHJYVGRpK24rS0FkY29CeEJuRGtURUR4dFExb1cy?=
 =?utf-8?B?cFBackFnay9HR2oxMm9uK0Q3MnNsejRKWk4rd2luc0krUWZkb25xQ1hISXV1?=
 =?utf-8?B?VnlOcUtDTjZRUGUzL0hWZy9ISGJiSFNyTm5BZ3M2MzB0cTYwRXRpOUdpVjg1?=
 =?utf-8?B?OXlNOTZ2VzhWMjU4ZitRdCtySnFZaitLZDIxSzN2ZWhWUTYvOFhOYnNTeG1N?=
 =?utf-8?B?eG1Tejdva2RUMnpVYTVBdUpsQzNYR2M4bnFaVFVib1ZOSU1ZcW1Xd1ZVWGFx?=
 =?utf-8?B?M0YvZTFIYlcrQlI5YXdtZGhIOXRldU1HTjhlQzEzc2g3WnFTUlJLcTdJQ1gw?=
 =?utf-8?B?S1lYMjQ3V1hDMyt5bWJ1ZWdMaVlCNUE1VDhHVFlLK1lNY1YwUEsrZTQzTk1s?=
 =?utf-8?B?SzF3VUUzMWx6VitCSVljZ0ZPSFRHYWp4SzNkQzNNUkZpRjcxSGE5OVZSUnpT?=
 =?utf-8?B?MktvQ0x0ZUdPZENxZ2VpQkpEUEV0SXFjd0xpdE1UQmNDMUI1eUxuUHZlNlJF?=
 =?utf-8?B?K2tyVWVkUzVLd2RhOUtuMVhqMGNzZ2xSbllEUXNNZ1RpT3BlaWVhUkNuRDM2?=
 =?utf-8?B?RkxCeEtCUjdybE8rMlc4RkdITVJYZnpOZ216SVUxTnpjSHdoYTZrMTZJbHlK?=
 =?utf-8?B?RWFRdFhud3hHaG55ZG83SU9IbEhxYUFUUnFDTk9FSEFUNkdXcko2dTczNFNv?=
 =?utf-8?B?RE45Ym82WVYvRnd4SnZYSGZtMHRDYWZaNVpnNEwvelhDakYzQ3UwQjFzekdh?=
 =?utf-8?B?V0dRZmF0eitxbG5XVzZnMDhaL3psNVpGTlg3THZyS21KTFF5cmhSamo5b0Fo?=
 =?utf-8?B?L25EOVQ0bFZLVWd5Y1MxZkdVa2s1YU5FdFJVQmtpN2VubGpjNnltK20rL2Rs?=
 =?utf-8?B?Z2g4VUdJclgzRDBCU1BacU9WVWFTMDMxakk2NkxGTlJ1WCtYMVR2VkxjK2E4?=
 =?utf-8?B?c2tSQXJYWWlWTmxKdUJNZjJ5aUtpOUxpZjJsWVJlRUpNcWlLN0dBRWpCZGhJ?=
 =?utf-8?B?QlJ2bk5FY3FKVnNNTEwzd2pmZFYyUUJPMWg3TlU1VlE2YnN2K0VLUnZSYlFu?=
 =?utf-8?B?SWYzbFpMNysyamxhSEFHVkdIMTVNYjVZVG91cVdlVHFWR09KV0lWRVl4cXRB?=
 =?utf-8?B?T3FRWVp4dTJNZE0ydWEwVEIzVTl4TittQWVkL1VHQjk3YkZEdlZMRE1uWmZF?=
 =?utf-8?B?Um9Bems2WkZuaGhEUjR5bUg2a2ZUMkdHSHllR1pMTTYzZ1VYdW1iNVlTWmFt?=
 =?utf-8?B?WmtZcE8zYm1USmx3RGRRQUNCN0I1LzBMRFFFS2kzRmYvM05mTU1FaTBsNGdS?=
 =?utf-8?B?Qk5rNWlMN1FhQnZEVE56UDNKSTIwNC9QcUFhMXA0V0s0Q3dScTkrZTFsWnc5?=
 =?utf-8?B?cjZNbzk0ZDlMNm0zSWJrSU9iWDYxKzBuVnZsWVZGbzRqbjlwSlc1VzRHTWtl?=
 =?utf-8?B?bEdHSGxXMVBLOXlGUFptMG9UcTBvZVdNcXZUTmIya2tUNHBVY2s3YVljS1Q5?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b116da4-f028-4595-0abe-08da815d709c
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2022 21:05:54.9125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 53pR/0319kXcskR7t0Ls5bnj7fWgcXQENcyyucWiwzFqZUeTlDG/mc4Mk+Ya+IqxznG9woooZb+E5wBgv0U5LWUb0DJJOkpTkTa0MfRyHfc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6369
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Add delay to disable
 scheduling after pin count goes to zero
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

On 8/16/2022 19:05, Alan Previn wrote:
> From: Matthew Brost <matthew.brost@intel.com>
>
> Add a delay, configurable via debugfs (default 34ms), to disable
> scheduling of a context after the pin count goes to zero. Disable
> scheduling is a costly operation as it requires synchronizing with
> the GuC. So the idea is that a delay allows the user to resubmit
> something before doing this operation. This delay is only done if
> the context isn't closed and less than a given threshold
> (default is 3/4) of the guc_ids are in use.
>
> As temporary WA disable this feature for the selftests. Selftests are
> very timing sensitive and any change in timing can cause failure. A
> follow up patch will fixup the selftests to understand this delay.
>
> Alan Previn: Matt Brost first introduced this series back in Oct 2021.
> However no real world workload with measured performance impact was
> available to prove the intended results. Today, this series is being
> republished in response to a real world workload that benefited greatly
> from it along with measured performance improvement.
>
> Workload description: 36 containers were created on a DG2 device where
> each container was performing a combination of 720p 3d game rendering
> and 30fps video encoding. The workload density was configured in a way
> that guaranteed each container to ALWAYS be able to render and
> encode no less than 30fps with a predefined maximum render + encode
> latency time. That means the totality of all 36 containers and their
> workloads were not saturating the engines to their max (in order to
> maintain just enough headrooom to meet the min fps and max latencies
> of incoming container submissions).
>
> Problem statement: It was observed that the CPU core processing the i915
> soft IRQ work was experiencing severe load. Using tracelogs and an
> instrumentation patch to count specific i915 IRQ events, it was confirmed
> that the majority of the CPU cycles were caused by the
> gen11_other_irq_handler() -> guc_irq_handler() code path. The vast
> majority of the cycles was determined to be processing a specific G2H
> IRQ: i.e. INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE. These IRQs are sent
> by GuC in response to i915 KMD sending H2G requests:
> INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET. Those H2G requests are sent
> whenever a context goes idle so that we can unpin the context from GuC.
> The high CPU utilization % symptom was limiting density scaling.
>
> Root Cause Analysis: Because the incoming execution buffers were spread
> across 36 different containers (each with multiple contexts) but the
> system in totality was NOT saturated to the max, it was assumed that each
> context was constantly idling between submissions. This was causing
> a thrashing of unpinning contexts from GuC at one moment, followed quickly
> by repinning them due to incoming workload the very next moment. These
> event-pairs were being triggered across multiple contexts per container,
> across all containers at the rate of > 30 times per sec per context.
>
> Metrics: When running this workload without this patch, we measured an
> average of ~69K INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE events every 10
> seconds or ~10 million times over ~25+ mins. With this patch, the count
> reduced to ~480 every 10 seconds or about ~28K over ~10 mins. The
> improvement observed is ~99% for the average counts per 10 seconds.
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   |   2 +-
>   drivers/gpu/drm/i915/gt/intel_context.h       |   8 +
>   drivers/gpu/drm/i915/gt/intel_context_types.h |   7 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  16 ++
>   .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  60 +++++++
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 154 +++++++++++++++---
>   drivers/gpu/drm/i915/i915_selftest.h          |   2 +
>   7 files changed, 223 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index dabdfe09f5e5..df7fd1b019ec 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1454,7 +1454,7 @@ static void engines_idle_release(struct i915_gem_context *ctx,
>   		int err;
>   
>   		/* serialises with execbuf */
> -		set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
> +		intel_context_close(ce);
>   		if (!intel_context_pin_if_active(ce))
>   			continue;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
> index 8e2d70630c49..f96420f0b5bb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
> @@ -276,6 +276,14 @@ static inline bool intel_context_is_barrier(const struct intel_context *ce)
>   	return test_bit(CONTEXT_BARRIER_BIT, &ce->flags);
>   }
>   
> +static inline void intel_context_close(struct intel_context *ce)
> +{
> +	set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
> +
> +	if (ce->ops->close)
> +		ce->ops->close(ce);
> +}
> +
>   static inline bool intel_context_is_closed(const struct intel_context *ce)
>   {
>   	return test_bit(CONTEXT_CLOSED_BIT, &ce->flags);
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 04eacae1aca5..86ac84e2edb9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -43,6 +43,8 @@ struct intel_context_ops {
>   	void (*revoke)(struct intel_context *ce, struct i915_request *rq,
>   		       unsigned int preempt_timeout_ms);
>   
> +	void (*close)(struct intel_context *ce);
> +
>   	int (*pre_pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void **vaddr);
>   	int (*pin)(struct intel_context *ce, void *vaddr);
>   	void (*unpin)(struct intel_context *ce);
> @@ -208,6 +210,11 @@ struct intel_context {
>   		 * each priority bucket
>   		 */
>   		u32 prio_count[GUC_CLIENT_PRIORITY_NUM];
> +		/**
> +		 * @sched_disable_delay: worker to disable scheduling on this
> +		 * context
> +		 */
> +		struct delayed_work sched_disable_delay;
>   	} guc_state;
>   
>   	struct {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index a7acffbf15d1..1f5408dc32bc 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -112,6 +112,10 @@ struct intel_guc {
>   		 * refs
>   		 */
>   		struct list_head guc_id_list;
> +		/**
> +		 * @guc_ids_in_use: Number single-lrc guc_ids in use
> +		 */
> +		u16 guc_ids_in_use;
>   		/**
>   		 * @destroyed_contexts: list of contexts waiting to be destroyed
>   		 * (deregistered with the GuC)
> @@ -132,6 +136,16 @@ struct intel_guc {
>   		 * @reset_fail_mask: mask of engines that failed to reset
>   		 */
>   		intel_engine_mask_t reset_fail_mask;
> +		/**
> +		 * @sched_disable_delay_ms: schedule disable delay, in ms, for
> +		 * contexts
> +		 */
> +		u64 sched_disable_delay_ms;
> +		/**
> +		 * @sched_disable_gucid_threshold: threshold of min remaining available
> +		 * guc_ids before we start bypassing the schedule disable delay
> +		 */
> +		int sched_disable_gucid_threshold;
>   	} submission_state;
>   
>   	/**
> @@ -464,4 +478,6 @@ void intel_guc_load_status(struct intel_guc *guc, struct drm_printer *p);
>   
>   void intel_guc_write_barrier(struct intel_guc *guc);
>   
> +int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
> +
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> index 25f09a420561..c91b150bb7ac 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> @@ -71,12 +71,72 @@ static bool intel_eval_slpc_support(void *data)
>   	return intel_guc_slpc_is_used(guc);
>   }
>   
> +static int guc_sched_disable_delay_ms_get(void *data, u64 *val)
> +{
> +	struct intel_guc *guc = data;
> +
> +	if (!intel_guc_submission_is_used(guc))
> +		return -ENODEV;
> +
> +	*val = guc->submission_state.sched_disable_delay_ms;
> +
> +	return 0;
> +}
> +
> +static int guc_sched_disable_delay_ms_set(void *data, u64 val)
> +{
> +	struct intel_guc *guc = data;
> +
> +	if (!intel_guc_submission_is_used(guc))
> +		return -ENODEV;
> +
> +	guc->submission_state.sched_disable_delay_ms = val;
> +
> +	return 0;
> +}
> +DEFINE_SIMPLE_ATTRIBUTE(guc_sched_disable_delay_ms_fops,
> +			guc_sched_disable_delay_ms_get,
> +			guc_sched_disable_delay_ms_set, "%lld\n");
> +
> +static int guc_sched_disable_gucid_threshold_get(void *data, u64 *val)
> +{
> +	struct intel_guc *guc = data;
> +
> +	if (!intel_guc_submission_is_used(guc))
> +		return -ENODEV;
> +
> +	*val = guc->submission_state.sched_disable_gucid_threshold;
> +	return 0;
> +}
> +
> +static int guc_sched_disable_gucid_threshold_set(void *data, u64 val)
> +{
> +	struct intel_guc *guc = data;
> +
> +	if (!intel_guc_submission_is_used(guc))
> +		return -ENODEV;
> +
> +	if (val > intel_guc_sched_disable_gucid_threshold_max(guc))
> +		guc->submission_state.sched_disable_gucid_threshold =
> +			intel_guc_sched_disable_gucid_threshold_max(guc);
> +	else
> +		guc->submission_state.sched_disable_gucid_threshold = val;
> +
> +	return 0;
> +}
> +DEFINE_SIMPLE_ATTRIBUTE(guc_sched_disable_gucid_threshold_fops,
> +			guc_sched_disable_gucid_threshold_get,
> +			guc_sched_disable_gucid_threshold_set, "%lld\n");
> +
>   void intel_guc_debugfs_register(struct intel_guc *guc, struct dentry *root)
>   {
>   	static const struct intel_gt_debugfs_file files[] = {
>   		{ "guc_info", &guc_info_fops, NULL },
>   		{ "guc_registered_contexts", &guc_registered_contexts_fops, NULL },
>   		{ "guc_slpc_info", &guc_slpc_info_fops, &intel_eval_slpc_support},
> +		{ "guc_sched_disable_delay_ms", &guc_sched_disable_delay_ms_fops, NULL },
> +		{ "guc_sched_disable_gucid_threshold", &guc_sched_disable_gucid_threshold_fops,
> +		   NULL },
>   	};
>   
>   	if (!intel_guc_is_supported(guc))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 0d17da77e787..29ddfb1f8b81 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -65,7 +65,13 @@
>    * corresponding G2H returns indicating the scheduling disable operation has
>    * completed it is safe to unpin the context. While a disable is in flight it
>    * isn't safe to resubmit the context so a fence is used to stall all future
> - * requests of that context until the G2H is returned.
> + * requests of that context until the G2H is returned. Because this interaction
> + * with the GuC takes a non-zero amount of time we delay the disabling of
> + * scheduling after the pin count goes to zero by a configurable period of time
> + * (see SCHED_DISABLE_DELAY_MS). The thought is this gives the user a window of
> + * time to resubmit something on the context before doing this costly operation.
> + * This delay is only done if the context isn't closed and the guc_id usage is
> + * less than a threshold (see NUM_SCHED_DISABLE_GUC_IDS_THRESHOLD).
>    *
>    * Context deregistration:
>    * Before a context can be destroyed or if we steal its guc_id we must
> @@ -1989,6 +1995,9 @@ static int new_guc_id(struct intel_guc *guc, struct intel_context *ce)
>   	if (unlikely(ret < 0))
>   		return ret;
>   
> +	if (!intel_context_is_parent(ce))
> +		++guc->submission_state.guc_ids_in_use;
> +
>   	ce->guc_id.id = ret;
>   	return 0;
>   }
> @@ -1998,14 +2007,16 @@ static void __release_guc_id(struct intel_guc *guc, struct intel_context *ce)
>   	GEM_BUG_ON(intel_context_is_child(ce));
>   
>   	if (!context_guc_id_invalid(ce)) {
> -		if (intel_context_is_parent(ce))
> +		if (intel_context_is_parent(ce)) {
>   			bitmap_release_region(guc->submission_state.guc_ids_bitmap,
>   					      ce->guc_id.id,
>   					      order_base_2(ce->parallel.number_children
>   							   + 1));
> -		else
> +		} else {
> +			--guc->submission_state.guc_ids_in_use;
>   			ida_simple_remove(&guc->submission_state.guc_ids,
>   					  ce->guc_id.id);
> +		}
>   		clr_ctx_id_mapping(guc, ce->guc_id.id);
>   		set_context_guc_id_invalid(ce);
>   	}
> @@ -2993,41 +3004,98 @@ guc_context_revoke(struct intel_context *ce, struct i915_request *rq,
>   	}
>   }
>   
> -static void guc_context_sched_disable(struct intel_context *ce)
> +static void guc_context_sched_disable(struct intel_context *ce);
> +
> +static void do_sched_disable(struct intel_guc *guc, struct intel_context *ce,
> +			     unsigned long flags)
> +	__releases(ce->guc_state.lock)
>   {
> -	struct intel_guc *guc = ce_to_guc(ce);
> -	unsigned long flags;
>   	struct intel_runtime_pm *runtime_pm = &ce->engine->gt->i915->runtime_pm;
>   	intel_wakeref_t wakeref;
> -	u16 guc_id;
>   
> +	lockdep_assert_held(&ce->guc_state.lock);
> +
> +	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +
> +	with_intel_runtime_pm(runtime_pm, wakeref)
> +		guc_context_sched_disable(ce);
> +}
> +
> +static bool bypass_sched_disable(struct intel_guc *guc,
> +				 struct intel_context *ce)
> +{
> +	lockdep_assert_held(&ce->guc_state.lock);
>   	GEM_BUG_ON(intel_context_is_child(ce));
>   
> +	if (submission_disabled(guc) || context_guc_id_invalid(ce) ||
> +	    !ctx_id_mapped(guc, ce->guc_id.id)) {
> +		clr_context_enabled(ce);
> +		return true;
> +	}
> +
> +	return !context_enabled(ce);
> +}
> +
> +static void __delay_sched_disable(struct work_struct *wrk)
> +{
> +	struct intel_context *ce =
> +		container_of(wrk, typeof(*ce), guc_state.sched_disable_delay.work);
> +	struct intel_guc *guc = ce_to_guc(ce);
> +	unsigned long flags;
> +
>   	spin_lock_irqsave(&ce->guc_state.lock, flags);
>   
> -	/*
> -	 * We have to check if the context has been disabled by another thread,
> -	 * check if submssion has been disabled to seal a race with reset and
> -	 * finally check if any more requests have been committed to the
> -	 * context ensursing that a request doesn't slip through the
> -	 * 'context_pending_disable' fence.
> -	 */
> -	if (unlikely(!context_enabled(ce) || submission_disabled(guc) ||
> -		     context_has_committed_requests(ce))) {
> -		clr_context_enabled(ce);
> +	if (bypass_sched_disable(guc, ce)) {
>   		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> -		goto unpin;
> +		intel_context_sched_disable_unpin(ce);
> +	} else {
> +		do_sched_disable(guc, ce, flags);
>   	}
> -	guc_id = prep_context_pending_disable(ce);
> +}
>   
> -	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +static bool guc_id_pressure(struct intel_guc *guc, struct intel_context *ce)
> +{
> +	/*
> +	 * parent contexts are perma-pinned, if we are unpinning do schedule
> +	 * disable immediately.
> +	 */
> +	if (intel_context_is_parent(ce))
> +		return true;
>   
> -	with_intel_runtime_pm(runtime_pm, wakeref)
> -		__guc_context_sched_disable(guc, ce, guc_id);
> +	/*
> +	 * If we are beyond the threshold for avail guc_ids, do schedule disable immediately.
> +	 */
> +	return guc->submission_state.guc_ids_in_use >
> +		guc->submission_state.sched_disable_gucid_threshold;
> +}
> +
> +static void guc_context_sched_disable(struct intel_context *ce)
> +{
> +	struct intel_guc *guc = ce_to_guc(ce);
> +	u64 delay = guc->submission_state.sched_disable_delay_ms;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&ce->guc_state.lock, flags);
> +
> +	if (bypass_sched_disable(guc, ce)) {
> +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +		intel_context_sched_disable_unpin(ce);
> +	} else if (!intel_context_is_closed(ce) && !guc_id_pressure(guc, ce) &&
> +		   delay) {
> +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +		mod_delayed_work(system_unbound_wq,
> +				 &ce->guc_state.sched_disable_delay,
> +				 msecs_to_jiffies(delay));
> +	} else {
> +		do_sched_disable(guc, ce, flags);
> +	}
> +}
>   
> -	return;
> -unpin:
> -	intel_context_sched_disable_unpin(ce);
> +static void guc_context_close(struct intel_context *ce)
> +{
> +	if (test_bit(CONTEXT_GUC_INIT, &ce->flags) &&
> +	    cancel_delayed_work(&ce->guc_state.sched_disable_delay))
> +		__delay_sched_disable(&ce->guc_state.sched_disable_delay.work);
>   }
>   
>   static inline void guc_lrc_desc_unpin(struct intel_context *ce)
> @@ -3346,6 +3414,8 @@ static void remove_from_context(struct i915_request *rq)
>   static const struct intel_context_ops guc_context_ops = {
>   	.alloc = guc_context_alloc,
>   
> +	.close = guc_context_close,
> +
>   	.pre_pin = guc_context_pre_pin,
>   	.pin = guc_context_pin,
>   	.unpin = guc_context_unpin,
> @@ -3428,6 +3498,10 @@ static void guc_context_init(struct intel_context *ce)
>   	rcu_read_unlock();
>   
>   	ce->guc_state.prio = map_i915_prio_to_guc_prio(prio);
> +
> +	INIT_DELAYED_WORK(&ce->guc_state.sched_disable_delay,
> +			  __delay_sched_disable);
> +
>   	set_bit(CONTEXT_GUC_INIT, &ce->flags);
>   }
>   
> @@ -3465,6 +3539,9 @@ static int guc_request_alloc(struct i915_request *rq)
>   	if (unlikely(!test_bit(CONTEXT_GUC_INIT, &ce->flags)))
>   		guc_context_init(ce);
>   
> +	if (cancel_delayed_work(&ce->guc_state.sched_disable_delay))
> +		intel_context_sched_disable_unpin(ce);
> +
>   	/*
>   	 * Call pin_guc_id here rather than in the pinning step as with
>   	 * dma_resv, contexts can be repeatedly pinned / unpinned trashing the
> @@ -3595,6 +3672,8 @@ static int guc_virtual_context_alloc(struct intel_context *ce)
>   static const struct intel_context_ops virtual_guc_context_ops = {
>   	.alloc = guc_virtual_context_alloc,
>   
> +	.close = guc_context_close,
> +
>   	.pre_pin = guc_virtual_context_pre_pin,
>   	.pin = guc_virtual_context_pin,
>   	.unpin = guc_virtual_context_unpin,
> @@ -3684,6 +3763,8 @@ static void guc_child_context_destroy(struct kref *kref)
>   static const struct intel_context_ops virtual_parent_context_ops = {
>   	.alloc = guc_virtual_context_alloc,
>   
> +	.close = guc_context_close,
> +
>   	.pre_pin = guc_context_pre_pin,
>   	.pin = guc_parent_context_pin,
>   	.unpin = guc_parent_context_unpin,
> @@ -4207,6 +4288,26 @@ static bool __guc_submission_selected(struct intel_guc *guc)
>   	return i915->params.enable_guc & ENABLE_GUC_SUBMISSION;
>   }
>   
> +int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc)
> +{
> +	return guc->submission_state.num_guc_ids - NUMBER_MULTI_LRC_GUC_ID(guc);
> +}
> +
> +/*
> + * This default value of 33 milisecs (+1 milisec round up) ensures 30fps or higher
> + * workloads are able to enjoy the latency reduction when delaying the schedule-disable
> + * operation. This matches the 30fps game-render + encode (real world) workload this
> + * knob was tested against.
> + */
> +#define SCHED_DISABLE_DELAY_MS	34
> +
> +/*
> + * A threshold of 75% is a reasonable starting point considering that real world apps
> + * generally don't get anywhere near this.
> + */
> +#define NUM_SCHED_DISABLE_GUCIDS_DEFAULT_THRESHOLD(__guc) \
> +	(((intel_guc_sched_disable_gucid_threshold_max(guc)) * 3) / 4)
> +
>   void intel_guc_submission_init_early(struct intel_guc *guc)
>   {
>   	xa_init_flags(&guc->context_lookup, XA_FLAGS_LOCK_IRQ);
> @@ -4223,7 +4324,10 @@ void intel_guc_submission_init_early(struct intel_guc *guc)
>   	spin_lock_init(&guc->timestamp.lock);
>   	INIT_DELAYED_WORK(&guc->timestamp.work, guc_timestamp_ping);
>   
> +	guc->submission_state.sched_disable_delay_ms = SCHED_DISABLE_DELAY_MS;
>   	guc->submission_state.num_guc_ids = GUC_MAX_CONTEXT_ID;
> +	guc->submission_state.sched_disable_gucid_threshold =
> +		NUM_SCHED_DISABLE_GUCIDS_DEFAULT_THRESHOLD(guc);
>   	guc->submission_supported = __guc_submission_supported(guc);
>   	guc->submission_selected = __guc_submission_selected(guc);
>   }
> diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
> index f54de0499be7..bdf3e22c0a34 100644
> --- a/drivers/gpu/drm/i915/i915_selftest.h
> +++ b/drivers/gpu/drm/i915/i915_selftest.h
> @@ -92,12 +92,14 @@ int __i915_subtests(const char *caller,
>   			T, ARRAY_SIZE(T), data)
>   #define i915_live_subtests(T, data) ({ \
>   	typecheck(struct drm_i915_private *, data); \
> +	(data)->gt[0]->uc.guc.submission_state.sched_disable_delay_ms = 0; \
>   	__i915_subtests(__func__, \
>   			__i915_live_setup, __i915_live_teardown, \
>   			T, ARRAY_SIZE(T), data); \
>   })
>   #define intel_gt_live_subtests(T, data) ({ \
>   	typecheck(struct intel_gt *, data); \
> +	(data)->uc.guc.submission_state.sched_disable_delay_ms = 0; \
>   	__i915_subtests(__func__, \
>   			__intel_gt_live_setup, __intel_gt_live_teardown, \
>   			T, ARRAY_SIZE(T), data); \

