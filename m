Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E5E6FC9EF
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 17:10:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31F6E10E113;
	Tue,  9 May 2023 15:10:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7A8D10E113
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 15:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683645018; x=1715181018;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=gUiLrZnY6E3d3aCWA8fttNn6ADBacbjKRunEXGJRt7Q=;
 b=KjgxrUqrP8U79DgKjzW3tMwl9zWq3uLHrMoCbYjL0mlg4S4dqTrhajKe
 nxq4P8YaPQYBQBDaA4jCbhtEz8XlEkjDJ5VudHA0wW48cemUQCPDi97Af
 1sPYxJ8Pzo2uUKtiyJ5FotgVCHgFcncOYETYO/Dx4+Aj2lgN2ATPMcf4m
 fy0Z2kNvOBlQIkjKwRxhfBlHu2bFJjU/Q99R0kyAn3iVQnMH5+4YbXjtI
 SwT+NfxHTdW705psluJhc64ELa5oatCEFzVOQgEmiS5Pl53WBmkpQZ+Wg
 9DMyMNDcvAAc2nFkdcrvw715YH+7N9Adgsok+3s6nRW0hSpgmPyWdOqFx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="348788890"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="348788890"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 08:10:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="731757060"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="731757060"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 09 May 2023 08:10:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 08:10:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 9 May 2023 08:10:17 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 9 May 2023 08:10:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lfi0yXg+h+9xWczsB/64UGpvaH8IUaSsXpgfyFMIQzJ+80UXXS8BkwTDffqyPqI8+wmXjQKxqx7uAqwCje0bNQoGyqK6s0phbohoe2vGhnvvvkhiqq42/r1NCtHMgm+M1wvAgv6rG7YuTmSI83D2n2Nq01F+h57it3FrMreeAog3IbF8BVUFya9N9yLR1DK0LTHaXxjdIzYkGJPA469TUd1WPU8NRkrC2fn/yx2UlVaUiav9sFj8Dxs5JylOKxQuT9In+hafqkot8DKacrSDvYoorG9momB9Z2jtvu18VCJFnBFphzqv+gFWfL76Rg2Kj0qYERMQqSSA1NdTZfXGYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h7QP36RmDiURkifIVyKYgMXiYvRK/SGIjXIEeaxab6o=;
 b=MYegtt3ft6DzBhv5Gkcbk0CQEib1pE/wRwIjAsP2tklEOZVChe1XM+JIyBMY+dt5iqdosF9ISMdT0GTDCCHTs/pihiQqwJe8UP0G4FevgDbyjqG7TYx2Os3T0oni5kwTbMWA/mKvG91SX2iZc3e8/MchupnaeAmor2cWl7IYSzwG+EORdWeJeA+bQMIA5yPJOFeMaB835NRLobeQPagGn372B5MVixjYSGMXIvTrRz+KKoLEvaxe2MuZGYLSdzjVYFd+N5QoUrlOcVAqPk0MnBSjhOvwUfGhhO+JMatTh7MnjeGZi0v3gmHPDI/8CuDBmajSg7aZiyJBaJbh2nzIIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SA1PR11MB8543.namprd11.prod.outlook.com (2603:10b6:806:3ac::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Tue, 9 May
 2023 15:10:14 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3c72:3d28:fbb1:818b]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3c72:3d28:fbb1:818b%6]) with mapi id 15.20.6363.032; Tue, 9 May 2023
 15:10:14 +0000
Date: Tue, 9 May 2023 08:10:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <ZFpiS5ulz0xLgrT7@orsosgc001.jf.intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-4-umesh.nerlige.ramappa@intel.com>
 <ZFk3dT/vODwE5ata@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <ZFk3dT/vODwE5ata@orsosgc001.jf.intel.com>
X-ClientProxiedBy: BYAPR11CA0071.namprd11.prod.outlook.com
 (2603:10b6:a03:80::48) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SA1PR11MB8543:EE_
X-MS-Office365-Filtering-Correlation-Id: 16a48fe0-f543-46d6-7e38-08db509f7dcf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uxWlIWuPrlTIr6PJWvVwC1uKIQq6jKByXsvk5vV+JsgyXzQEvptFwo6KiL14qyOWzNeEv4zFaamVmkuKPBCrAjvHwovPSUIaKMu1ZNJtCiEcL4u+HwsxeEDIm7nEcbl3x257HRA1Nr4RI8bDslPvq1y8MMfGTu1J4N7I2zWrIj4FnJvkN5oGFrdF2ZBRI2c2grQZrdKgESAp7E5br4ko+3YXBAWRtq6teKVRG3AMXi1X3gxkfSAqvTzmzO43iwvTPHoqjSI0GdlenmQPV3QmXXIvVBQApTDzyAJmLiREjByTrxoLGI+xLmueDxR9PI19xi3Wz7n1jE/71AKKXtGQYblmnv9+Y7YgIvypcFWHNPCgo1NnpbFoJWX4rtD1jQI4YUBa4OEzZ2ezT8FSzkrWrFPsDwfNnRTCbKFceSwxL/BJJA9jgIK/293SAimFR1YJqISWYm9cUqBKtpYQa7ncONIcMJRmbLG9BXVEBCdnK7zTQGIaMYVmaXlmVDN3eT1Xeo6q1JF217w1dh7MnhZJYdu3yNOGve+a4yP52Hl4PmfWlamwMwlHziTszG6zPHE4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(136003)(376002)(366004)(39860400002)(451199021)(316002)(478600001)(6636002)(66946007)(6486002)(66556008)(110136005)(66476007)(86362001)(83380400001)(26005)(6506007)(6512007)(6666004)(2906002)(5660300002)(41300700001)(8936002)(8676002)(82960400001)(186003)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0hSUk5yNktIU2RLOWlGWEcvc3daTHRCazYxWTBrNWNvaFRrVXBJZVRkdllO?=
 =?utf-8?B?OXM3NnNjT1BiNTdEd3dMRTYrY2VMQklicDlQcTdYbTE3YVc1c0ExUzNOa2lY?=
 =?utf-8?B?SWNKUEprcXJ2WStxTnMzOGdVL1BFOHdhTzYwT3dkbUxJQUFtZTBiVUVxTUNp?=
 =?utf-8?B?TW5lNjRJTy9WWmNyUDNzMmh3Umk3TjA3THJqSW1SRUZmVGd5WTFHMm9vOUdt?=
 =?utf-8?B?ZDBTN0VxMkhGZkNIejVQWHN6SkJkU0xPVW1wV2NkQ1AwREluYVFib1hvaEtR?=
 =?utf-8?B?bWMrYWJUbURXQjgwUEt3cGUzRTdGdlQ3dGw4cElOaWFoRnFnVlhzWFUrSlpr?=
 =?utf-8?B?M2g5dHdRMk9yUXdabHhzWUNBMmZNVFpsb042RU5GVnpFRFBpWDBTb0xiOEdn?=
 =?utf-8?B?amtFd0lVTWQ4YlRKREpvVXFONFV3MVlUK3RISHhTeW44TWJGdTJWUEVUQU1D?=
 =?utf-8?B?VHJkdWY0aU9Ta2lYWjRvaHM2THhIMWtuSjZTYU9Kd1Z3TC9ITWxmSzlad1Zt?=
 =?utf-8?B?dWl1WTN5T0NOZCtQcHpkNUgxckZzL3BUWVl1SzdCc1BNeWl3dUhsSGp5ZGhE?=
 =?utf-8?B?U25EUVl4TWJDRGZ3VE1Ba241ZjV1MUFrVUtiSzA1QUQ4K2laU0NFVFYraGp3?=
 =?utf-8?B?RW40dDlrSithUGExUTc3NVFnRmFsdWg5ZS9Ianl6WEFNallYUUlFZGdkbW9N?=
 =?utf-8?B?UDRlRWM4UldBdHJ4c0FCdjVpVktLUzRkZlJUVS95WjN2NlhHOWsvRVhsY1pJ?=
 =?utf-8?B?NlBkcGhXSHhpM3BlYmpyZVBZeXk1YVZESDRuU3dFbW02RzhHdmdwN21BMjJm?=
 =?utf-8?B?M2RISWdWanFyNmt6WEMxMWJmYVdNTEw1R3RUMy8rZjUxMkZnVjAweXdOalRz?=
 =?utf-8?B?cU02dXdCRVM2MWVSVkcyNTRwbUp3N2hmL0J5MTBhMGtEMjdyMy9pSFFPRkNV?=
 =?utf-8?B?NVV3N3NTSlYwdkl4TkJGSU9IM3dXMExQaVhQdlNCdXA4NFQzUW9YY2ZKTUxr?=
 =?utf-8?B?TDdyTEduMU1RUC84NVdreFllb3ZsbnRxS3NuaFBnZkl6SE15Zk1jTzFBSTkw?=
 =?utf-8?B?V2VMbHlwRmdYV2phRUkwZ1BGcSs5bW14ZFp3N1U4aTJpQU91a21FWDNjRU9N?=
 =?utf-8?B?MlZnNEFXRGtueUswMW0wcSs3SjgzMTFjR1doVzIyOGVNZmVBZ3hoN3oweFVr?=
 =?utf-8?B?N3B0eEh0Y2hSV3ZSSVk4cXBvQ2pSdy9iUm9ZOWZnYTg5MmhhOVB5L21IUUpv?=
 =?utf-8?B?MERMampXdnpjZW9MMlZaMnlGcUNpN2kvQktpUHQyOS9uR200YTlwZXVmQkpQ?=
 =?utf-8?B?QUVHTGR3a20rR0grTnF4VnlQdXZJOEMwYnY1OTRlYjVUQmZlUGVaMXQxd3pY?=
 =?utf-8?B?NjRPZUU3clppQ1hkcGJRUVJMOXU1TFNmdDN3V0NYVU9sSjFOeDIvOUlPSjh1?=
 =?utf-8?B?dkVWT1YwSjc3ZnZsVDNZQnMwaGNFclRmS2d6ZEhtL2xna2FDb2NUUVJmczJP?=
 =?utf-8?B?cm9wYXNlWlh5amRjVjRUd0QrNTVmZnlUSnh0Q21Ib2Y0ZzBiOXNqeWR3b2hH?=
 =?utf-8?B?TzVvZXJ2c01jQ2J3NzFUczJ1V2xYZ0JwMmdtK0xPS3pVU1JTakR0a3hVWDIy?=
 =?utf-8?B?cnFtajFKNFdhMTJuSFMydmpXUzg5YWhuUDBvRlpQVUgxV3BOOWJNOVZhS1Bp?=
 =?utf-8?B?QlJaY1hiWDVUV0h5UFloSFR4blRmeEM2YkJTT1Bka0oyQ3ZTbUVlb01KRGJI?=
 =?utf-8?B?dkFaY1JBUkJob2dmelA0YkEyenlVbC96UlJkaUh3M2ZCWnpaZDFiSmlNTUNl?=
 =?utf-8?B?Z3VYNnlMTGVQeUVjSENwMEVtdlBuRzMyODEvVXZyTHdmTjdkNDBQdVp6QTQy?=
 =?utf-8?B?WFd4TEJiR1dzaUxWY2k1VGZNNVUrRUJKWGZzUTdJNlBYczhiRWNpVnlNSVgw?=
 =?utf-8?B?WkVTc05yTWZCQ2RpdmI2ejRRTlRwQURtUUF5cUVxNSt0b056MTRwMkZpMlU0?=
 =?utf-8?B?OGIydDFVaWRJQ2hzY0piQ1VsZWdJbHM1aUFRcjVjM1VwbEZKZEc4aGZMRHB5?=
 =?utf-8?B?WmZvYTJJQjdHSVBQaEdKdnp6c0gwb2J0bFhIK3UwbERuVXg5NndhTVhnWVBZ?=
 =?utf-8?B?d3ZDcUQrS1NUZjhwRVFnRnUzWjBKQ0gyR0VtSE5VTDdTb3lSLzZEUWFraS9O?=
 =?utf-8?Q?Mqn5WDpXzfSPIy9KJ1K3F3M=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16a48fe0-f543-46d6-7e38-08db509f7dcf
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2023 15:10:14.5745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d3/8Hxo4HG5hT+ZUeIG45tbVSvUC77AuMZ7hBxPuVA4SBmq91tQSHZS+YjVL3XWrwfEgHJWFmhe2R3GftpyfWYetKnrRqcviFgrlvcbUPUg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8543
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/pmu: Transform PMU parking
 code to be GT based
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

On Mon, May 08, 2023 at 10:55:01AM -0700, Umesh Nerlige Ramappa wrote:
>On Fri, May 05, 2023 at 05:58:13PM -0700, Umesh Nerlige Ramappa wrote:
>>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>>Trivial prep work for full multi-tile enablement later.
>
>Some more description on what this does OR how park/unpark affects pmu 
>counters would help.

Described later, so

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

>
>Thanks,
>Umesh
>
>>
>>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>---
>>drivers/gpu/drm/i915/gt/intel_gt_pm.c |  4 ++--
>>drivers/gpu/drm/i915/i915_pmu.c       | 16 ++++++++--------
>>drivers/gpu/drm/i915/i915_pmu.h       |  9 +++++----
>>3 files changed, 15 insertions(+), 14 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>index e02cb90723ae..c2e69bafd02b 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>@@ -87,7 +87,7 @@ static int __gt_unpark(struct intel_wakeref *wf)
>>
>>	intel_rc6_unpark(&gt->rc6);
>>	intel_rps_unpark(&gt->rps);
>>-	i915_pmu_gt_unparked(i915);
>>+	i915_pmu_gt_unparked(gt);
>>	intel_guc_busyness_unpark(gt);
>>
>>	intel_gt_unpark_requests(gt);
>>@@ -109,7 +109,7 @@ static int __gt_park(struct intel_wakeref *wf)
>>
>>	intel_guc_busyness_park(gt);
>>	i915_vma_parked(gt);
>>-	i915_pmu_gt_parked(i915);
>>+	i915_pmu_gt_parked(gt);
>>	intel_rps_park(&gt->rps);
>>	intel_rc6_park(&gt->rc6);
>>
>>diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>>index ba769f7fc385..2b63ee31e1b3 100644
>>--- a/drivers/gpu/drm/i915/i915_pmu.c
>>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>>@@ -217,11 +217,11 @@ static void init_rc6(struct i915_pmu *pmu)
>>	}
>>}
>>
>>-static void park_rc6(struct drm_i915_private *i915)
>>+static void park_rc6(struct intel_gt *gt)
>>{
>>-	struct i915_pmu *pmu = &i915->pmu;
>>+	struct i915_pmu *pmu = &gt->i915->pmu;
>>
>>-	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(to_gt(i915));
>>+	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(gt);
>>	pmu->sleep_last = ktime_get_raw();
>>}
>>
>>@@ -236,16 +236,16 @@ static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
>>	}
>>}
>>
>>-void i915_pmu_gt_parked(struct drm_i915_private *i915)
>>+void i915_pmu_gt_parked(struct intel_gt *gt)
>>{
>>-	struct i915_pmu *pmu = &i915->pmu;
>>+	struct i915_pmu *pmu = &gt->i915->pmu;
>>
>>	if (!pmu->base.event_init)
>>		return;
>>
>>	spin_lock_irq(&pmu->lock);
>>
>>-	park_rc6(i915);
>>+	park_rc6(gt);
>>
>>	/*
>>	 * Signal sampling timer to stop if only engine events are enabled and
>>@@ -256,9 +256,9 @@ void i915_pmu_gt_parked(struct drm_i915_private *i915)
>>	spin_unlock_irq(&pmu->lock);
>>}
>>
>>-void i915_pmu_gt_unparked(struct drm_i915_private *i915)
>>+void i915_pmu_gt_unparked(struct intel_gt *gt)
>>{
>>-	struct i915_pmu *pmu = &i915->pmu;
>>+	struct i915_pmu *pmu = &gt->i915->pmu;
>>
>>	if (!pmu->base.event_init)
>>		return;
>>diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>>index c30f43319a78..a686fd7ccedf 100644
>>--- a/drivers/gpu/drm/i915/i915_pmu.h
>>+++ b/drivers/gpu/drm/i915/i915_pmu.h
>>@@ -13,6 +13,7 @@
>>#include <uapi/drm/i915_drm.h>
>>
>>struct drm_i915_private;
>>+struct intel_gt;
>>
>>/*
>> * Non-engine events that we need to track enabled-disabled transition and
>>@@ -151,15 +152,15 @@ int i915_pmu_init(void);
>>void i915_pmu_exit(void);
>>void i915_pmu_register(struct drm_i915_private *i915);
>>void i915_pmu_unregister(struct drm_i915_private *i915);
>>-void i915_pmu_gt_parked(struct drm_i915_private *i915);
>>-void i915_pmu_gt_unparked(struct drm_i915_private *i915);
>>+void i915_pmu_gt_parked(struct intel_gt *gt);
>>+void i915_pmu_gt_unparked(struct intel_gt *gt);
>>#else
>>static inline int i915_pmu_init(void) { return 0; }
>>static inline void i915_pmu_exit(void) {}
>>static inline void i915_pmu_register(struct drm_i915_private *i915) {}
>>static inline void i915_pmu_unregister(struct drm_i915_private *i915) {}
>>-static inline void i915_pmu_gt_parked(struct drm_i915_private *i915) {}
>>-static inline void i915_pmu_gt_unparked(struct drm_i915_private *i915) {}
>>+static inline void i915_pmu_gt_parked(struct intel_gt *gt) {}
>>+static inline void i915_pmu_gt_unparked(struct intel_gt *gt) {}
>>#endif
>>
>>#endif
>>-- 
>>2.36.1
>>
