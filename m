Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B35CE7A0B8D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 19:23:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D42C10E298;
	Thu, 14 Sep 2023 17:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B9BC10E298
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 17:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694712228; x=1726248228;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/xQ4orOZYa19WaR80l9c1XjZQY/WoKkXmGLJpUXj6dU=;
 b=gmBAcrZJ3+2kQh5J5laaOd+u2kaxpyPowUVLhfuteVgZsLXQmCq+c8Es
 XMcCbYpRBwDjFtyfqN1Y2FVcF0KlQsXHJz9stDEDTlwOVJXcd+NgjkOni
 1THlV3qw7sVlSz4O7NNTkMn67qiy5IOPLZ4OgDbSfQhiN2n8zxw7myRb3
 qQB95z6ZzUBHOTkBBT/MQXUbGSzY5znAiEjILv2bu0m2Uk3ZRBZU6KR5/
 p7pU3fugNvyQewyoeuzP4j6ar1dc4sjCK8l2s4b9HkFZcHEklJTyDNemq
 iIyhpBsoKAzcjkgezOXFsEIj85xAAyBuRHsonKOtWr3GmgRF1NvueN/+3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="377932443"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="377932443"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 10:23:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779734264"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779734264"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 10:23:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 10:23:39 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 10:23:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 10:23:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bUSGh9L/uro8F4lVSDK2CxizQEp/AYFP/a9+km/V6Io+ept2Ls0ac8VOn23NRD41RDSlm0pcnav9XWP1ogqEs40sstZVgp46YH0MXRHyWOOMi6R/dWqbwyA44j0dogerBeetvC0z6mTbFPcw0BgRO6TO9SKnFJhRuny2+xP0CysmqrESmzjKhx/qOr54/nRAkMPueAYR6LU7kr/oClAy5sgTs09pwMOKvbvVrGucf8w2L7RjqN6JLNEJmaIX1Wei5P5hrAsip7O/N3oyfxs7nK1cgh1PzuYstK0axy0Hw0d1O4feN5Nb9ECM8Zvj2QJX9fUG2ppMjvDAetM3Jl/UHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qpYYP6KSNkZCrV9qP06ob21qeQpDc1eqsuk4JtIxhEw=;
 b=T1KiweqMknT6XEMg8xvLZjpoQqcRgHjf2QvdgFzLJKz+vHHxQxfwXQ357Mxt+Wx6gGzY4PkwDDXJ1hrL91vXBnovvku3t8LOYEr4VZmCOmbBkHUqxtDeVWwAzx9IBlWor6vwCDoFI86KWDGIOcKypctUvAO20yEZ3+EQ84RmUYc5oG3ENo3+ym4Ge9XT+mPdWBDuSBmeO4nUS7smMv2sTarnLZTdPwVC/owpvKN4SRX5OKjiFaNEXtMqwUR/EvWrrzbHDESjt4IHC4/Bjm9QNOHupis6KsUA8Q9l7M/GZphnEDSTk6Xpd6fPdMTaItPc0Tjrf3QGHUHGGt63tNAhqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by DS7PR11MB7907.namprd11.prod.outlook.com (2603:10b6:8:db::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Thu, 14 Sep
 2023 17:23:37 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::4b20:e34:71f:139f]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::4b20:e34:71f:139f%4]) with mapi id 15.20.6768.029; Thu, 14 Sep 2023
 17:23:37 +0000
Message-ID: <3f756ce9-634e-4faf-b410-9a54e65b1f8c@intel.com>
Date: Thu, 14 Sep 2023 10:23:37 -0700
User-Agent: Mozilla Thunderbird
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <john.c.harrison@intel.com>
References: <20230912005228.1736471-1-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20230912005228.1736471-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR01CA0012.prod.exchangelabs.com (2603:10b6:a02:80::25)
 To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|DS7PR11MB7907:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ca45877-1b64-4b6c-a5ec-08dbb547548e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TC7KjhPmTr5NFutCcOZSYAcKOmJWgaanVPobTD29O9xBql6Mku7JcG3PvowuGkzL8ojsxPqKlFhCCxMe2wUd9VqqkcFQwIYP2OOxxMlTJEBNmidRiY7oqIsomgNkbSUroeLi2GcfzjiC+vC3bs58FdDlPkET8GHCH1HiakK2B04kX7VZEdR04+LjBAPEjUJ0vxKtRZLaHmsmzefuVnnSSDefW6v/jkkx+R56O7MOTwIyLq07zDP+x/4UMzVnceJ3R4mzfgHxKw7TTasa5WBuIG3fdr+DqzdsnBkk+iEy1vDuUNuHkBQOkq1wKIu91tM+TyJwa4pU3gbjju3OcgGEM+uMuHNnJAeouAycdekZ/iNXw8QVKuT5MMCd1wBckSOFNB6Jms9JceYTJunuEKsZt5nBoAVVpwHjQsgCR+1pntwAtPH0EIXMTQV2KN3hYAuKEuGPHsxkjtZHLTgbXrChpZWgnISyHo51Da/GLWCkFlh3m2NpBqjeY2/gFdX9q1XfoUOv7tvTj5NduKJ47yjm3K4722oi8aFrexCw2PDfwr9FFoPbSw/9ijI4nH5H8EL+4t68mqfLQqcVE99RvGgYrohjUUNWzVTTg/hwhVHp2Is5rO+vWThEfRtjrJQw6Mmj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(376002)(396003)(136003)(1800799009)(451199024)(186009)(31696002)(478600001)(38100700002)(2906002)(53546011)(2616005)(26005)(86362001)(36756003)(6486002)(6506007)(6512007)(966005)(83380400001)(82960400001)(41300700001)(8936002)(8676002)(66476007)(66946007)(6636002)(66556008)(5660300002)(316002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UkVCb0RlY1U1WUlneTJmSE5DSEFuOFRCdlFqN2JkUGM4c0lTTGV1ZDdHUTkr?=
 =?utf-8?B?YkRqMDQzaUg0WUpaTlAxUno5ZTRORVpFcTV1eGRuTzQvRUM4UjJob1JpV1hM?=
 =?utf-8?B?dktUOVpWVmJPeGQrS1VQeFJFd0FlaThWaHFGZWdydjdqV1FqclZqcFp1VXlW?=
 =?utf-8?B?UVpBWm85L0dzWFJKbGNXWWowUzFyUnVjM013TGFaTVBaRjlIdC9HY1FDK0Nj?=
 =?utf-8?B?VDUrLzUwWFpScStIMUhwNnRZU3VST0JjM0ZGdUR2cnJkMFdndlFoN2UwVVNt?=
 =?utf-8?B?ZjR0NWptSGxpN1doZ3V3bXpxQVY2azBiL25QSHhXMEl0QzdONXREUy93Tjhj?=
 =?utf-8?B?VUhBbjQvV2M2YTVqckJydmZNYWxhNkNwSTdDRTZuYXp4SnJGZDJIVVZqa0t0?=
 =?utf-8?B?TVpNbFZKWHVJUk9oM2V2dTI4dUJDc3IzcVd5K0dWOEVjTUQ3OXE0SlNiMmYz?=
 =?utf-8?B?NUs2d1pIRFVSVzN5NkhZanlqNEl2RDVnSzBRZHRqNFR0SFNCcnhGaDkrL1ZV?=
 =?utf-8?B?ai9GeG03K0M4OTJsSDg2Zm8zL1A3R0pYVUlZWFB0UUNZUklrVDY5MXlrTGk3?=
 =?utf-8?B?b3BVb3VaWnZCKzlmNHZzWWkzWFBJQkZ4WFMra0VERENTSE1SOTRVNlVxMzNI?=
 =?utf-8?B?UStGaENLVGxXNVRmekE1RVRIbEo4T0o5MldTMFRWNDVOSUt2ZlUxN0twM01N?=
 =?utf-8?B?STZYdGVKQ0ozekJoZUk4UEg5dmZ4d3dBNzdSQjMycTVYaW9uNFUxWHVGWURI?=
 =?utf-8?B?QzZKSVozSHkxbW1HTlZ5aFdrVW80N0RPNmdML2l5M0RmMmZwYllQajdZQ3l6?=
 =?utf-8?B?RHhwbVdOSnlqL1VOVUhBcFNMTnV5L0JVYTRlT2JHeHBWQU5iWXdacGRoZmdW?=
 =?utf-8?B?NXRWTEw4MTNuT1BLOW93WjBsU2VGNjRBNDA4UjF4cm90YmFETnNhWU0zYVlv?=
 =?utf-8?B?OFo5TTc0NmtVM09rc0w0dklkeGFUUHVia0ZuK1NPd1JYbGt2V2k1NUtSdHdy?=
 =?utf-8?B?dEZMaS9SZVQ5MGhjbTBnWDMySzBCanpqVFpqbEF2cmEwWmRZYWlpRUxiVnF2?=
 =?utf-8?B?ak5rcC9RSnQxYXoxU1dqNHU1SzI4VzBrSnliQ1VrL3VnTnBjOXp6RVJYZml5?=
 =?utf-8?B?VGl6aUN0alNoZTlZdERPNEdnUHZEQ1VyaEdvQkxwcDJsY1l4OXdqKy8vNDhR?=
 =?utf-8?B?TjRMc0hjMVNxSVhBMlpDdDhxUUlyWFZYVWNBeG9aMHZRSlJ1anF5U1VGYit1?=
 =?utf-8?B?Y3FxL0R2eE5kQTI5MjdjbVdYNllVelNwTDl0Y2JZTGxjd3A4QW5nT2UzdEZy?=
 =?utf-8?B?UUFKRTIybHR4enlWbGtDV2lueDQyZVdLcXp5NEVpTE9pc3NZb2dJSHVOMFNU?=
 =?utf-8?B?QTJDSDExR2I4YWpub2U1bzZiR24rTW1MSVBDZDhnaURZUUpDUkVydXJNbnNh?=
 =?utf-8?B?eFg1OUk5WHhyMnJoYjVzNFlUc2FIRzhJdUIvdFJNaGhUd1ArbWsrcnZYbDJv?=
 =?utf-8?B?SDF5M0FxOG5QS0VFajJaaUY1WHN4aTNkeUQyYjMwRUw0bW1vSG0rdEd0d1kv?=
 =?utf-8?B?b3BKU0FsNkMwRnBTNUVtSENhSkd2aDRlbUlCUjNORE9oWmJQWWVzdGtMSDRL?=
 =?utf-8?B?R3Bnd0ROcW9yWHl6SDZvLzArT0F1eEwvOWpETVcyOGVQRXlRcVc3WFlFQlpJ?=
 =?utf-8?B?UWZsZ2JnY3hmZlJjOUdoK2xQOW9PRW1XS29wNFRicWszbDJHOTdrMVk5VnhU?=
 =?utf-8?B?d2RBSGk4eVJEWk9uaXRyd0IwR04rTEFYUzErbGFvdll6KzVHR1RpOVJvSTNV?=
 =?utf-8?B?VE1uSkZHNlZMT1FVRzBORnl6WVNGSE5qb0liYmZwemFEYjkycGlNU0FLK2Ny?=
 =?utf-8?B?cTF2NG56R3BNcmpzTCtGSGZkMVB0bk9JMUVobE5FdFRCdk5oVXN0b1NWdlU3?=
 =?utf-8?B?TXF5UXMvTnNCdFhDb0ZwYU9FS2RNTUNsVDhiekdDb25ycC9qbVVzQmkreGZj?=
 =?utf-8?B?dngyc29DYWRUdlZpS3kxSFB3a1pMZlM2T1dUWmxYVm93MElybHpLSkVsOHZn?=
 =?utf-8?B?Zzhnc3JEOU9vVlYrM3Q5OHdna1BENU9icXdCR3BQaUF6VVQ4SG9Bak02Mmkr?=
 =?utf-8?B?NXFuTFcyZUtQeFVpNlJYbHF6aVhNQXJ0UVg0YmdvV0NHOFBCOEs1aDA1d2s5?=
 =?utf-8?Q?5cwwPt5M82VzXJpAjE9N4n0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ca45877-1b64-4b6c-a5ec-08dbb547548e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 17:23:37.0350 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OA+CuHw7nVorOXXMhtdXKj2NA2rTSdQOuYxvMOw4nh27AimJ8o5x/jRSTqKCPpfSjbXr54NW9oG8ous794D363O8cd6crp9bfk53Mgs6ibI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7907
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915/guc: Run busyness worker only if gt is
 awake
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


On 9/11/2023 5:52 PM, Umesh Nerlige Ramappa wrote:
> The worker is canceled in the __gt_park path, but we still see it
> running sometimes during suspend.
>
> Only update stats if gt is awake. If not, intel_guc_busyness_park would
> have already updated the stats. Note that we do not requeue the worker
> if gt is not awake since intel_guc_busyness_unpark would do that at some
> point.
>
> If the gt was parked longer than time taken for GT timestamp to roll
> over, we ignore those rollovers since we don't care about tracking the
> exact GT time. We only care about roll overs when the gt is active and
> running workloads.
>
> v2 (Daniele)
> - Edit commit message and code comment
> - Use runtime pm in the worker
> - Put runtime pm after enabling the worker
> - Use Link tag and add Fixes tag
>
> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/7077
> Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 26 ++++++++++++++++---
>   1 file changed, 23 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index e250bedf90fb..d37b255559a0 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1461,6 +1461,24 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>   	unsigned long index;
>   	int srcu, ret;
>   
> +	/*
> +	 * The worker is canceled in the __gt_park path, but we still see it
> +	 * running sometimes during suspend.

This sounds very vague and more like there is a bug in __gt_park. We 
actually do know that the issue on the park side is that the worker 
re-queues itself if it's running while we cancel it; that's not really a 
problem as long as we don't wake the device after it's gone to sleep 
(which is what your change below does), so this sentence should be 
reworded or dropped.

> +	 *
> +	 * Only update stats if gt is awake. If not, intel_guc_busyness_park
> +	 * would have already updated the stats. Note that we do not requeue the
> +	 * worker in this case since intel_guc_busyness_unpark would do that at
> +	 * some point.
> +	 *
> +	 * If the gt was parked longer than time taken for GT timestamp to roll
> +	 * over, we ignore those rollovers since we don't care about tracking
> +	 * the exact GT time. We only care about roll overs when the gt is
> +	 * active and running workloads.
> +	 */
> +	wakeref = intel_runtime_pm_get_if_active(&gt->i915->runtime_pm);

The patch title and the comment refer to GT being awake, but here you're 
taking a global rpm ref and not a gt_pm ref. I understand that taking a 
gt_pm ref in here can be complicated because of the canceling of the 
worker in the gt_park flow and that taking an rpm ref does work for what 
we need, but the title/comments need to reflect and explain that.

Daniele

> +	if (!wakeref)
> +		return;
> +
>   	/*
>   	 * Synchronize with gt reset to make sure the worker does not
>   	 * corrupt the engine/guc stats. NB: can't actually block waiting
> @@ -1469,10 +1487,9 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>   	 */
>   	ret = intel_gt_reset_trylock(gt, &srcu);
>   	if (ret)
> -		return;
> +		goto err_trylock;
>   
> -	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
> -		__update_guc_busyness_stats(guc);
> +	__update_guc_busyness_stats(guc);
>   
>   	/* adjust context stats for overflow */
>   	xa_for_each(&guc->context_lookup, index, ce)
> @@ -1481,6 +1498,9 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>   	intel_gt_reset_unlock(gt, srcu);
>   
>   	guc_enable_busyness_worker(guc);
> +
> +err_trylock:
> +	intel_runtime_pm_put(&gt->i915->runtime_pm, wakeref);
>   }
>   
>   static int guc_action_enable_usage_stats(struct intel_guc *guc)

