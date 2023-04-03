Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDFD6D511E
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 21:17:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 191B610E05D;
	Mon,  3 Apr 2023 19:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 449A610E05D
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 19:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680549424; x=1712085424;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2X3tiJcIZs6WOoUuTXyyLwHQqd4/9tguzPpTHfIIP3Q=;
 b=SMkALaYTOWMo2hANHXcpFtaJKeeuC+hYX8e5rSzyIfWFT/FHiMkrW1wH
 1US7eqURBHDwTfUZbz5iPA6qBNIuweJPqagZzZKm0ypRXHueGtEMx6p7w
 zmNswzXxmcZJG+fKBzP+YEsRoAJHHGr+/Bg2rowrz//O1gWPKWPVM4S+L
 XsBtueRNNBjn+p5SMGDyub/zNujpEYi+hZPKtAKrXs3skaqlAxjIrEzkQ
 S+KZg2svz6OAYAiQjRHMv8MsJZgPMUrctjbh+vTprl6Ppf0UdjqKPdbYc
 AV+yTLDdsh2DoKI8pV0Gmux/Uz8g27Vmvg4D65JvxWd5xg17S5C4Y+GhH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="339486973"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="339486973"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 12:17:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="688615533"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="688615533"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 03 Apr 2023 12:17:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 12:17:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 12:17:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 12:16:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=brWkimQweCwLHqJbBFM6vdjO5ZGIjgjiypHUx+rTr8DzeSlegxaJgYb9nJDlz+XqAdkByPYKW7xxefI9ltDRobb9eCi+J2oFuw3mqvKe9jHAIGR42MuNdQRYvbIu2tacwuYKOLXft1PXOoq6/xiOLNGJUMyosfcgpUX4tuluHgsrOHfB5MnA61gQHAnpPNUTQtLPzLt8KlFbhH1ihttMcIFBINUrbubUfIXww5bEPCo854lMtCADGndLr8++JcZkJoyHbUCRVkWl09PEf4PVapaXNAv7Y8rV+URRgtPlVw4TC9KuLUItcZ5dmjybn16JRjr9cZMLjFCoLpZ2dpZJGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9qJit7w+u9WET2Nb/l+xH5d5mXCgEG1xvTgk7DJnCPk=;
 b=ZlmJWtysTMNg71c4CaZN27KZ6a2CRzbl/EOOr70X0Fcp+Qjq84ZK/oqR53HFpkQ8+Tsgoubs98RP8PI9/qdlRpzMzEX6DuLgaLFHH6VU8kXp/lupr+uv3qAnhnXQydZMkT+vmmVGPyJhBY4bb1yhI2hg5QBq0+Zt5c5mYVoraLvPzKWHkHR+GEMNqwFNt5dr4JUjcUH9RI92FpZ9Ot0DBpntHpypKJpuWIZgA3rOXEe6f66co/cA0rVYjvI94GL1bsN12y49S4CPhFtIThSkeIxXO4ilLSpkskkElDKSzJnV96ZkQw95a7rvY5PE7AjlwMA8GyFAxDob0nVMGBjL/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6254.33; Mon, 3 Apr 2023 19:16:55 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::110a:8742:df45:10ed]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::110a:8742:df45:10ed%4]) with mapi id 15.20.6254.033; Mon, 3 Apr 2023
 19:16:55 +0000
Date: Mon, 3 Apr 2023 12:16:53 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>
Message-ID: <ZCsmJTBH+0aTXW0p@orsosgc001.jf.intel.com>
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
 <20230330004103.1295413-10-umesh.nerlige.ramappa@intel.com>
 <6d3b06eb-d18e-de8f-cc2a-1e9e90a590b0@linux.intel.com>
 <ZCXVmTQJi8ulgE8+@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <ZCXVmTQJi8ulgE8+@orsosgc001.jf.intel.com>
X-ClientProxiedBy: MW2PR16CA0044.namprd16.prod.outlook.com
 (2603:10b6:907:1::21) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SJ0PR11MB5662:EE_
X-MS-Office365-Filtering-Correlation-Id: b31155e8-08d4-444b-ec87-08db3477fcf1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RU5rk3ULeyuQhhmyoUK1Acyp2Ch/L1VbaQWrMJbCuWqgBxt+lYkrtcRc5PtDTWQkWunXaM1e4X0j+VcZOae2sUlk30FLM80F8B4am/AWzRgHb6Uu/2eQKMDeWDl5N4tAsWO1aVjmfMD1165oeo7VxGmkxG7dX6vYwkRfiXSMQZAihkHqnyhRkqtCWpHt4MZKocWYjAGMsm5dkxmtLbHNtn/fGF9lkBl57Wu45glytZC8Mow6Zyfy3bPzjWKmHCuEaa3e+ALXCJeiB33vzshDpQqRLHYkq/eVcE7Zsf6dfTxiPMDL+77fP0O5gTaIkhxB7FOTOCmyAHX8U74+Z62xuAId68yt7PrjrooR+nte62wtwSMma+7qdzNhhnmtKhj3xKWDTGBxFlrils8jJisoUdB61NlyhorkVVQc8yKLZc6Q2fDaNYSKLJTJJlQupECllOvEVpJIRzG22hJk2mhTHEPe6JCr1LpIOmWfE4wTpOtX9f0ECIXzMmN2TxfhY4WBce3TnCu3fuDKhqtfVKTMJQClOXcuXpYFIafu4KCJ00wItHe9S7vXy3B6H9UtSlcRMin+K55D70nTcEQHPP8ygrAVjGjpr4mddAjzebM4GEk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(396003)(39860400002)(376002)(136003)(451199021)(66476007)(4326008)(8676002)(316002)(66556008)(66946007)(478600001)(8936002)(30864003)(41300700001)(82960400001)(5660300002)(38100700002)(186003)(83380400001)(6486002)(6506007)(6512007)(26005)(86362001)(2906002)(66899021)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXRtTDFXM2VPcDBlTm1lYm5pTTlLdWNNTC9ZYXQ2S0ZsZTFxdGhrRng2clpt?=
 =?utf-8?B?TmR3b2tVNXRMZjlBVUorSTJGRXVIVm1XNXNMRGw3SDBnR2l0UnFDRGg1VTBR?=
 =?utf-8?B?bzZ6cWtSbHdIRVRoVnk1VHJuRkxtYW5odGV3SEc1S1czYWlJaHlMNFhWdDRo?=
 =?utf-8?B?My9FVHpCOW5RQ3VTV0JvT3RQSmREM1NPZk1KWmxsMU1YMjlpNGk4Q2NjL2gx?=
 =?utf-8?B?cWNRRFNZUy9wMW1MUjJ5cHBpZnZmUHRZSnl4VXVJWkdjbnptWkE5ZGJqS29u?=
 =?utf-8?B?dXJzOXlMQXdQS2U3cjJNc2FwOU4zMGV4bkJ4bzBMd00yc1NTeGdIdGxTY2Ir?=
 =?utf-8?B?dmZqY1ZoRkt0czBndmNjUGlSdkhVWTl3N24rVWlWdW55L2Myd1FUZWZqckIy?=
 =?utf-8?B?M1F2dHdzd1RWUytMa0NpQ3RBSVVHU3hnV1FuanlVSVBqVkY0cHd1cHRWSkpy?=
 =?utf-8?B?eTM4b3BIaDQrN0d3SnFaT2djaDk3SG5Ma0Fsd2JGMXI5Q2JURW9yaWhPQk9F?=
 =?utf-8?B?MkN1MVo4aUJ2VzVxWXJUMW5DYmxIZkpFd0NoOTlzcE9hOUtCREN5OFJXWkkz?=
 =?utf-8?B?a2ZhQzRLY0ZsZzlJR0lCelRRM3hBUndVc2Y4bzJ3UllOMXZzdE1HaVVNWTdV?=
 =?utf-8?B?bTFVVEZRRExQeXpETERpY1ZpdGFDTDBjTlVySE1rL3FPU2gyNlNHR3N1bUps?=
 =?utf-8?B?dFg3MTQxUXAza1YyM1ZnKzJxMldCZGluVDdrdmtMYnQxeXdtUzJpQXQrVUlu?=
 =?utf-8?B?dk9mUGRzOVNlQllhTkIvdW9ibEpESzdCNkw1MnQ5TTdjL1RQeHJPbmJFVTF6?=
 =?utf-8?B?bkV6WmhBUFoxbXlFYTU0ZlZIM1daQUsyWE50bzZOZWZUR0thMHZINFlFcENB?=
 =?utf-8?B?SjlVSHgrYzMxR3AzbkI1eUFaZEZPNzZLdHJEc1paeEtWRE91SHRHdXppSUFN?=
 =?utf-8?B?bkJUcmdrdXRvSmVBaHRCWFdMc0hDMFlWaFkyY0FvVlVaZnJoZlRiVHl0VUdJ?=
 =?utf-8?B?M3Joa0c4MDgzZC80cldUcVVhb3JuYnZNMkVUUXVuMFQvcHlmaThyVzEwRzFL?=
 =?utf-8?B?Nk1yeTFOdEQvUDVuMkhDTGZtajhrWVRiekhqUVhhelR1UlpyVEo2L1QwUG9G?=
 =?utf-8?B?Zzc5bjlxN0VNYlJjUS9NR3Nub0srM2NjVnJLTTBVS2ZnOWFmLzRlYmJsemxq?=
 =?utf-8?B?bENwb2NXd2RmQzFLblVrT0p2WlJwdmY4YlZod0M3VUY1aC9OdmdKb0xBWUto?=
 =?utf-8?B?NldaT2VCalIzOEhlV2oxWDhvS2UyNHRSQkhaQWNEeEVQcUFKNFZGaVExY3Zj?=
 =?utf-8?B?Z0FDSGY2RC9xTEMvcGNDeDF4cWVpajcrUmo1OWJucTJkMkM3QmZKTWJzSVBM?=
 =?utf-8?B?YmIvSGRuTXpGUTVGTWZ1b1NCWjFDcGpNbE0ycWRwWUNzZ3l4SWltQ3k1empa?=
 =?utf-8?B?elB6TmtuSjZrUjg2RXQ2c1IwVjRDMnFpZkRqbHBXVElCNFE1anE0VEJlc0xP?=
 =?utf-8?B?UUFTNzVjeHNrMnIyamJxWFlVOWd3UEpmK00zMUp4WVA5S3FBYnlDdXIwUzFz?=
 =?utf-8?B?cTg3SlByb2VuR01SK1NmclpFTUt6MkVuODVTMlU5cDlYa2hSbnlYQ1VORUpE?=
 =?utf-8?B?ZnJJR0RpS1FSZUdpNTFhVElwYi9DNVJaS2dZNzBpWDB5TXV5cmxwOUN0RWFu?=
 =?utf-8?B?b1ZnQzJneCtCdWRHOHhtOTRJeHZESlRGbmpvQWQwMUkxYVF4cVVubXRvMkZB?=
 =?utf-8?B?RTZKcjQ5aldBa0VVeDRISjZnbGdld0Fha21rL0JBU2VzTjNwRXF5RmxYaTlL?=
 =?utf-8?B?Skg2NlJDc3FZcDZwNmQ0UEhISUtPRFpjUlVDV1c1bEV3Y0k0V3pUWXVXNDAx?=
 =?utf-8?B?bVgrL1h3MjRqYVJYOXFwNVVQRElIVDc5YkpRcWh4RTlYQWVPb2hyL3ZIV1JG?=
 =?utf-8?B?TFRqcEEvZXZLZkNCN3I1RWJkU2trV05uTFVvMzlMN0tzbFBCL1ExWUJRb2li?=
 =?utf-8?B?MTdURHIwSW95cXRkankxUW85RzNwQWFaRlZuNHNEY0xwTytSUTd0dW1Yei9C?=
 =?utf-8?B?QnlMMEVyeXdneTZVaUdKbW9SNUkxV1FHNEk5UytIcVMreTJMTG93Mml2bE02?=
 =?utf-8?B?dURIRkJpV3RsVmlCSGNCVWVoSFRubGZmdUd6ek82MnVDY0RkYjAzZ2NCdkVh?=
 =?utf-8?Q?UMus83KX1qiOwHt8ECusEyM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b31155e8-08d4-444b-ec87-08db3477fcf1
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2023 19:16:55.4492 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nZtiAREw0N5lZPADRCOfAhZjoEijfemeVhDQBCx7Rho8CFsi9EsuULFi4LkeYLZMzPTFOlJqUM1rHzC6o4mypkaWBWK/E9NJ8G4X9IzQuqo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5662
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/pmu: Enable legacy PMU events
 for MTL
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+ Joonas for inputs

On Thu, Mar 30, 2023 at 11:31:53AM -0700, Umesh Nerlige Ramappa wrote:
>+ Joonas for comments on this
>
>On Thu, Mar 30, 2023 at 02:38:03PM +0100, Tvrtko Ursulin wrote:
>>
>>On 30/03/2023 01:41, Umesh Nerlige Ramappa wrote:
>>>MTL introduces separate GTs for render and media. This complicates the
>>>definition of frequency and rc6 counters for the GPU as a whole since
>>>each GT has an independent counter. The best way to support this change
>>>is to deprecate the GPU-specific counters and create GT-specific
>>>counters, however that just breaks ABI. Since perf tools and scripts may
>>>be decentralized with probably many users, it's hard to deprecate the
>>>legacy counters and have all the users on board with that.
>>>
>>>Re-introduce the legacy counters and support them as min/max of
>>>GT-specific counters as necessary to ensure backwards compatibility.
>>>
>>>I915_PMU_ACTUAL_FREQUENCY - will show max of GT-specific counters
>>>I915_PMU_REQUESTED_FREQUENCY - will show max of GT-specific counters
>>>I915_PMU_INTERRUPTS - no changes since it is GPU specific on all platforms
>>>I915_PMU_RC6_RESIDENCY - will show min of GT-specific counters
>>>I915_PMU_SOFTWARE_GT_AWAKE_TIME - will show max of GT-specific counters
>>
>>IMO max/min games are _very_ low value and probably just confusing.
>
>By value, do you mean ROI or actually that the values would be 
>incorrect?
>
>>
>>I am not convinced we need to burden the kernel with this. New 
>>platform, new counters.. userspace can just deal with it.
>
>I agree and would prefer to drop this patch. There are some counter 
>arguments, I have added Joonas here for comments.
>
>1) an app/script hard-coded with the legacy events would be used on a 
>new platform and fail and we should maintain backwards compatibility.
>
>2) the sysfs attributes for rc6/frequency have already adopted an 
>aggregate vs gt0/gt1 approach to address that and pmu should have a 
>similar solution (or rather, PMU and the sysfs approaches should match 
>based on whatever is the approach)
>
>Regards,
>Umesh
>
>>
>>In intel_gpu_top we can do the smarts in maybe default aggregated 
>>view (piggy back/extend on engines aggregation via command line '-p' 
>>or '1' at runtime). But then it's not min/max but probably 
>>normalized by number of gts.
>>
>>Regards,
>>
>>Tvrtko
>>
>>>
>>>Note:
>>>- For deeper debugging of performance issues, tools must be upgraded to
>>>  read the GT-specific counters.
>>>- This patch deserves to be separate from the other PMU features so that
>>>  it can be easily dropped if legacy events are ever deprecated.
>>>- Internal implementation relies on creating an extra entry in the
>>>  arrays used for GT specific counters. Index 0 is empty.
>>>  Index 1 through N are mapped to GTs 0 through N - 1.
>>>- User interface will use GT numbers indexed from 0 to specify the GT of
>>>  interest.
>>>
>>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>---
>>> drivers/gpu/drm/i915/i915_pmu.c | 134 +++++++++++++++++++++++++++-----
>>> drivers/gpu/drm/i915/i915_pmu.h |   2 +-
>>> include/uapi/drm/i915_drm.h     |  14 ++--
>>> 3 files changed, 125 insertions(+), 25 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>>>index 9bd9605d2662..0dc7711c3b4b 100644
>>>--- a/drivers/gpu/drm/i915/i915_pmu.c
>>>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>>>@@ -221,7 +221,7 @@ add_sample_mult(struct i915_pmu *pmu, unsigned int gt_id, int sample, u32 val,
>>> static u64 get_rc6(struct intel_gt *gt)
>>> {
>>> 	struct drm_i915_private *i915 = gt->i915;
>>>-	const unsigned int gt_id = gt->info.id;
>>>+	const unsigned int gt_id = gt->info.id + 1;
>>> 	struct i915_pmu *pmu = &i915->pmu;
>>> 	unsigned long flags;
>>> 	bool awake = false;
>>>@@ -267,24 +267,26 @@ static void init_rc6(struct i915_pmu *pmu)
>>> 	for_each_gt(gt, i915, i) {
>>> 		intel_wakeref_t wakeref;
>>>+		const unsigned int gt_id = i + 1;
>>> 		with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
>>> 			u64 val = __get_rc6(gt);
>>>-			store_sample(pmu, i, __I915_SAMPLE_RC6, val);
>>>-			store_sample(pmu, i, __I915_SAMPLE_RC6_LAST_REPORTED,
>>>+			store_sample(pmu, gt_id, __I915_SAMPLE_RC6, val);
>>>+			store_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED,
>>> 				     val);
>>>-			pmu->sleep_last[i] = ktime_get_raw();
>>>+			pmu->sleep_last[gt_id] = ktime_get_raw();
>>> 		}
>>> 	}
>>> }
>>> static void park_rc6(struct intel_gt *gt)
>>> {
>>>+	const unsigned int gt_id = gt->info.id + 1;
>>> 	struct i915_pmu *pmu = &gt->i915->pmu;
>>>-	store_sample(pmu, gt->info.id, __I915_SAMPLE_RC6, __get_rc6(gt));
>>>-	pmu->sleep_last[gt->info.id] = ktime_get_raw();
>>>+	store_sample(pmu, gt_id, __I915_SAMPLE_RC6, __get_rc6(gt));
>>>+	pmu->sleep_last[gt_id] = ktime_get_raw();
>>> }
>>> static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
>>>@@ -436,18 +438,18 @@ static void
>>> frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>> {
>>> 	struct drm_i915_private *i915 = gt->i915;
>>>-	const unsigned int gt_id = gt->info.id;
>>>+	const unsigned int gt_id = gt->info.id + 1;
>>> 	struct i915_pmu *pmu = &i915->pmu;
>>> 	struct intel_rps *rps = &gt->rps;
>>>-	if (!frequency_sampling_enabled(pmu, gt_id))
>>>+	if (!frequency_sampling_enabled(pmu, gt->info.id))
>>> 		return;
>>> 	/* Report 0/0 (actual/requested) frequency while parked. */
>>> 	if (!intel_gt_pm_get_if_awake(gt))
>>> 		return;
>>>-	if (pmu->enable & config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt_id))) {
>>>+	if (pmu->enable & config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt->info.id))) {
>>> 		u32 val;
>>> 		/*
>>>@@ -467,7 +469,7 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>> 				val, period_ns / 1000);
>>> 	}
>>>-	if (pmu->enable & config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt_id))) {
>>>+	if (pmu->enable & config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt->info.id))) {
>>> 		add_sample_mult(pmu, gt_id, __I915_SAMPLE_FREQ_REQ,
>>> 				intel_rps_get_requested_frequency(rps),
>>> 				period_ns / 1000);
>>>@@ -545,14 +547,15 @@ engine_event_status(struct intel_engine_cs *engine,
>>> static int
>>> config_status(struct drm_i915_private *i915, u64 config)
>>> {
>>>-	struct intel_gt *gt = to_gt(i915);
>>>-
>>> 	unsigned int gt_id = config_gt_id(config);
>>>-	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
>>>+	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 2 : 1;
>>>+	struct intel_gt *gt;
>>> 	if (gt_id > max_gt_id)
>>> 		return -ENOENT;
>>>+	gt = !gt_id ? to_gt(i915) : i915->gt[gt_id - 1];
>>>+
>>> 	switch (config_counter(config)) {
>>> 	case I915_PMU_ACTUAL_FREQUENCY:
>>> 		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>>>@@ -673,23 +676,58 @@ static u64 __i915_pmu_event_read_other(struct perf_event *event)
>>> 	const unsigned int gt_id = config_gt_id(event->attr.config);
>>> 	const u64 config = config_counter(event->attr.config);
>>> 	struct i915_pmu *pmu = &i915->pmu;
>>>+	struct intel_gt *gt;
>>> 	u64 val = 0;
>>>+	int i;
>>> 	switch (config) {
>>> 	case I915_PMU_ACTUAL_FREQUENCY:
>>>-		val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_ACT);
>>>+		if (gt_id)
>>>+			return read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_ACT);
>>>+
>>>+		if (!HAS_EXTRA_GT_LIST(i915))
>>>+			return read_sample_us(pmu, 1, __I915_SAMPLE_FREQ_ACT);
>>>+
>>>+		for_each_gt(gt, i915, i)
>>>+			val = max(val, read_sample_us(pmu, i + 1, __I915_SAMPLE_FREQ_ACT));
>>>+
>>> 		break;
>>> 	case I915_PMU_REQUESTED_FREQUENCY:
>>>-		val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_REQ);
>>>+		if (gt_id)
>>>+			return read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_REQ);
>>>+
>>>+		if (!HAS_EXTRA_GT_LIST(i915))
>>>+			return read_sample_us(pmu, 1, __I915_SAMPLE_FREQ_REQ);
>>>+
>>>+		for_each_gt(gt, i915, i)
>>>+			val = max(val, read_sample_us(pmu, i + 1, __I915_SAMPLE_FREQ_REQ));
>>>+
>>> 		break;
>>> 	case I915_PMU_INTERRUPTS:
>>> 		val = READ_ONCE(pmu->irq_count);
>>> 		break;
>>> 	case I915_PMU_RC6_RESIDENCY:
>>>-		val = get_rc6(i915->gt[gt_id]);
>>>+		if (gt_id)
>>>+			return get_rc6(i915->gt[gt_id - 1]);
>>>+
>>>+		if (!HAS_EXTRA_GT_LIST(i915))
>>>+			return get_rc6(i915->gt[0]);
>>>+
>>>+		val = U64_MAX;
>>>+		for_each_gt(gt, i915, i)
>>>+			val = min(val, get_rc6(gt));
>>>+
>>> 		break;
>>> 	case I915_PMU_SOFTWARE_GT_AWAKE_TIME:
>>>-		val = ktime_to_ns(intel_gt_get_awake_time(to_gt(i915)));
>>>+		if (gt_id)
>>>+			return ktime_to_ns(intel_gt_get_awake_time(i915->gt[gt_id - 1]));
>>>+
>>>+		if (!HAS_EXTRA_GT_LIST(i915))
>>>+			return ktime_to_ns(intel_gt_get_awake_time(i915->gt[0]));
>>>+
>>>+		val = 0;
>>>+		for_each_gt(gt, i915, i)
>>>+			val = max((s64)val, ktime_to_ns(intel_gt_get_awake_time(gt)));
>>> 		break;
>>> 	}
>>>@@ -728,11 +766,14 @@ static void i915_pmu_event_read(struct perf_event *event)
>>> static void i915_pmu_enable(struct perf_event *event)
>>> {
>>>+	const unsigned int gt_id = config_gt_id(event->attr.config);
>>> 	struct drm_i915_private *i915 =
>>> 		container_of(event->pmu, typeof(*i915), pmu.base);
>>> 	struct i915_pmu *pmu = &i915->pmu;
>>>+	struct intel_gt *gt;
>>> 	unsigned long flags;
>>> 	unsigned int bit;
>>>+	u64 i;
>>> 	bit = event_bit(event);
>>> 	if (bit == -1)
>>>@@ -745,12 +786,42 @@ static void i915_pmu_enable(struct perf_event *event)
>>> 	 * the event reference counter.
>>> 	 */
>>> 	BUILD_BUG_ON(ARRAY_SIZE(pmu->enable_count) != I915_PMU_MASK_BITS);
>>>+	BUILD_BUG_ON(BITS_PER_TYPE(pmu->enable) < I915_PMU_MASK_BITS);
>>> 	GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>>> 	GEM_BUG_ON(pmu->enable_count[bit] == ~0);
>>> 	pmu->enable |= BIT_ULL(bit);
>>> 	pmu->enable_count[bit]++;
>>>+	/*
>>>+	 * The arrays that i915_pmu maintains are now indexed as
>>>+	 *
>>>+	 * 0 - aggregate events (a.k.a !gt_id)
>>>+	 * 1 - gt0
>>>+	 * 2 - gt1
>>>+	 *
>>>+	 * The same logic applies to event_bit masks. The first set of mask are
>>>+	 * for aggregate, followed by gt0 and gt1 masks. The idea here is to
>>>+	 * enable the event on all gts if the aggregate event bit is set. This
>>>+	 * applies only to the non-engine-events.
>>>+	 */
>>>+	if (!gt_id && !is_engine_event(event)) {
>>>+		for_each_gt(gt, i915, i) {
>>>+			u64 counter = config_counter(event->attr.config);
>>>+			u64 config = ((i + 1) << __I915_PMU_GT_SHIFT) | counter;
>>>+			unsigned int bit = config_bit(config);
>>>+
>>>+			if (bit == -1)
>>>+				continue;
>>>+
>>>+			GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>>>+			GEM_BUG_ON(pmu->enable_count[bit] == ~0);
>>>+
>>>+			pmu->enable |= BIT_ULL(bit);
>>>+			pmu->enable_count[bit]++;
>>>+		}
>>>+	}
>>>+
>>> 	/*
>>> 	 * Start the sampling timer if needed and not already enabled.
>>> 	 */
>>>@@ -793,6 +864,7 @@ static void i915_pmu_enable(struct perf_event *event)
>>> static void i915_pmu_disable(struct perf_event *event)
>>> {
>>>+	const unsigned int gt_id = config_gt_id(event->attr.config);
>>> 	struct drm_i915_private *i915 =
>>> 		container_of(event->pmu, typeof(*i915), pmu.base);
>>> 	unsigned int bit = event_bit(event);
>>>@@ -822,6 +894,26 @@ static void i915_pmu_disable(struct perf_event *event)
>>> 		 */
>>> 		if (--engine->pmu.enable_count[sample] == 0)
>>> 			engine->pmu.enable &= ~BIT(sample);
>>>+	} else if (!gt_id) {
>>>+		struct intel_gt *gt;
>>>+		u64 i;
>>>+
>>>+		for_each_gt(gt, i915, i) {
>>>+			u64 counter = config_counter(event->attr.config);
>>>+			u64 config = ((i + 1) << __I915_PMU_GT_SHIFT) | counter;
>>>+			unsigned int bit = config_bit(config);
>>>+
>>>+			if (bit == -1)
>>>+				continue;
>>>+
>>>+			GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>>>+			GEM_BUG_ON(pmu->enable_count[bit] == 0);
>>>+
>>>+			if (--pmu->enable_count[bit] == 0) {
>>>+				pmu->enable &= ~BIT_ULL(bit);
>>>+				pmu->timer_enabled &= pmu_needs_timer(pmu, true);
>>>+			}
>>>+		}
>>> 	}
>>> 	GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>>>@@ -1002,7 +1094,11 @@ create_event_attributes(struct i915_pmu *pmu)
>>> 		const char *name;
>>> 		const char *unit;
>>> 	} global_events[] = {
>>>+		__event(0, "actual-frequency", "M"),
>>>+		__event(1, "requested-frequency", "M"),
>>> 		__event(2, "interrupts", NULL),
>>>+		__event(3, "rc6-residency", "ns"),
>>>+		__event(4, "software-gt-awake-time", "ns"),
>>> 	};
>>> 	static const struct {
>>> 		enum drm_i915_pmu_engine_sample sample;
>>>@@ -1024,7 +1120,7 @@ create_event_attributes(struct i915_pmu *pmu)
>>> 	/* per gt counters */
>>> 	for_each_gt(gt, i915, j) {
>>> 		for (i = 0; i < ARRAY_SIZE(events); i++) {
>>>-			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
>>>+			u64 config = ___I915_PMU_OTHER(j + 1, events[i].counter);
>>> 			if (!config_status(i915, config))
>>> 				count++;
>>>@@ -1070,7 +1166,7 @@ create_event_attributes(struct i915_pmu *pmu)
>>> 	/* per gt counters */
>>> 	for_each_gt(gt, i915, j) {
>>> 		for (i = 0; i < ARRAY_SIZE(events); i++) {
>>>-			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
>>>+			u64 config = ___I915_PMU_OTHER(j + 1, events[i].counter);
>>> 			char *str;
>>> 			if (config_status(i915, config))
>>>diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>>>index a708e44a227e..a4cc1eb218fc 100644
>>>--- a/drivers/gpu/drm/i915/i915_pmu.h
>>>+++ b/drivers/gpu/drm/i915/i915_pmu.h
>>>@@ -38,7 +38,7 @@ enum {
>>> 	__I915_NUM_PMU_SAMPLERS
>>> };
>>>-#define I915_PMU_MAX_GTS (4) /* FIXME */
>>>+#define I915_PMU_MAX_GTS (4 + 1) /* FIXME */
>>> /**
>>>  * How many different events we track in the global PMU mask.
>>>diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>>>index bbab7f3dbeb4..18794c30027f 100644
>>>--- a/include/uapi/drm/i915_drm.h
>>>+++ b/include/uapi/drm/i915_drm.h
>>>@@ -290,6 +290,7 @@ enum drm_i915_pmu_engine_sample {
>>> 	(((__u64)__I915_PMU_ENGINE(0xff, 0xff, 0xf) + 1 + (x)) | \
>>> 	((__u64)(gt) << __I915_PMU_GT_SHIFT))
>>>+/* Aggregate from all gts */
>>> #define __I915_PMU_OTHER(x) ___I915_PMU_OTHER(0, x)
>>> #define I915_PMU_ACTUAL_FREQUENCY	__I915_PMU_OTHER(0)
>>>@@ -300,11 +301,14 @@ enum drm_i915_pmu_engine_sample {
>>> #define I915_PMU_LAST /* Deprecated - do not use */ I915_PMU_RC6_RESIDENCY
>>>-#define __I915_PMU_ACTUAL_FREQUENCY(gt)		___I915_PMU_OTHER(gt, 0)
>>>-#define __I915_PMU_REQUESTED_FREQUENCY(gt)	___I915_PMU_OTHER(gt, 1)
>>>-#define __I915_PMU_INTERRUPTS(gt)		___I915_PMU_OTHER(gt, 2)
>>>-#define __I915_PMU_RC6_RESIDENCY(gt)		___I915_PMU_OTHER(gt, 3)
>>>-#define __I915_PMU_SOFTWARE_GT_AWAKE_TIME(gt)	___I915_PMU_OTHER(gt, 4)
>>>+/* GT specific counters */
>>>+#define ____I915_PMU_OTHER(gt, x) ___I915_PMU_OTHER(((gt) + 1), x)
>>>+
>>>+#define __I915_PMU_ACTUAL_FREQUENCY(gt)		____I915_PMU_OTHER(gt, 0)
>>>+#define __I915_PMU_REQUESTED_FREQUENCY(gt)	____I915_PMU_OTHER(gt, 1)
>>>+#define __I915_PMU_INTERRUPTS(gt)		____I915_PMU_OTHER(gt, 2)
>>>+#define __I915_PMU_RC6_RESIDENCY(gt)		____I915_PMU_OTHER(gt, 3)
>>>+#define __I915_PMU_SOFTWARE_GT_AWAKE_TIME(gt)	____I915_PMU_OTHER(gt, 4)
>>> /* Each region is a minimum of 16k, and there are at most 255 of them.
>>>  */
