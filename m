Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E976E9CE5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 22:13:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3363210ECDA;
	Thu, 20 Apr 2023 20:13:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D278510ECDA
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 20:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682021583; x=1713557583;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=om6/1Y4fdJT5RzyDY3xWrsVuOihechrDbG/2t8mrkQM=;
 b=gT0a826vU0yDbOfUv1f5MUJLhp1KUWEUE8kHtByVhEa09ogn8SUIY8sr
 xu8ju7Uza7GNsJJicurarddSWMMTjQc/mIBgaUXhlb6xaOPWDp4VNBBpF
 qQsL+YlACB3mZieDbDd77b8QEVB8x/aN/LZk8CyXSVbnmMuZb4d4xB6Zy
 n1hlSAFmsvo2QnAkotylVOdQa9lu7ja5tVxrGFfI4kbJcbpHBXDHKuF10
 Yoc0GYFS8VmRSY5S8PpcQK7iI6wl/Jk21Imb5fzX903UHJ8JTKyMWsy/w
 SbXY9z/A9u0XAmlFK1bTj8+gUrKxsDKaYNKvgnrLkRblmUpy/gXrF9XTJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373760229"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="373760229"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 13:13:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="692045903"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="692045903"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 20 Apr 2023 13:13:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 13:13:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 13:13:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 13:12:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mdxbYu4FjuGGUZkAigSgQEXOApehrqPZ5Yq9mzRnar7ndEtxi5E1u2u2lWj/JwW912d6n5joXbwmdqBpOjMXDpZxZMfJASMobAIDMSYfaTkO9yfli50NCDGuEDOl7I4KEZMwTHmUmGqCI/xJcBuQ7wT6xZBC7qxsfA20xhDeuIRrx0odiryVqhQj576PouJsZp3QB/dS/LIa+IlyFaVh9kREypfbOhuNrMfcTvPT+K63GJ/X7/PpQhJAhPVfFha/yqzCIYmcbsphGUheZKvxVshISkfxF9aDqKiErzlWkt/dpJej9r3DT2qafQqO2GgORCfKsIIzJArkystBi+zNbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DJOgAQ5onS2aWh9MybjR9Z3igeB64W2bgt/AQupkpqg=;
 b=DbkthHSgUzQ4u5WTg55sSQPK5Sl9hiDGpo9zvAF8npbo+O8bvW4ZPnV6QxcAAs7rJhBcRcOX8Im28xpPaplUjw96l+wDQFFzcsWXHo4OVod3red9XeIgOrUDa3SBhh1o0fkBXAeqJ1qu5omgxsBoddgA4DDCqWGVH0rZY7Pb3/ZwnYC/Wv2aCcmPw4Dlf414PR4o7ZFi3+DT47v3vc6lLNQQVjjFj5nCzpkDs2g9c4izaMHRfY33/dPdtL6yX464xDwxKFly4U4cnR2G/lzuo8SaOqrHxJno5zvKrTslacLuaUt8oe7ZhEL4+p183CcMWDsp3Ig7YhGqSmeSM/S5/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DS7PR11MB7781.namprd11.prod.outlook.com (2603:10b6:8:e1::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6319.22; Thu, 20 Apr 2023 20:12:58 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9c02:9b11:8756:fe69]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9c02:9b11:8756:fe69%5]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 20:12:58 +0000
Date: Thu, 20 Apr 2023 13:12:55 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZEGcx3Mk9pByiRTk@orsosgc001.jf.intel.com>
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
 <20230330004103.1295413-10-umesh.nerlige.ramappa@intel.com>
 <6d3b06eb-d18e-de8f-cc2a-1e9e90a590b0@linux.intel.com>
 <ZCXVmTQJi8ulgE8+@orsosgc001.jf.intel.com>
 <3129e943-fdb4-1671-f114-9384f6373cec@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <3129e943-fdb4-1671-f114-9384f6373cec@linux.intel.com>
X-ClientProxiedBy: BY5PR16CA0006.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::19) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DS7PR11MB7781:EE_
X-MS-Office365-Filtering-Correlation-Id: a5168e12-dd8e-4264-3199-08db41dba24b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KVRXGnkjLetX7AHXZX3uLYIyQB49ebr4N0po8GPE8gFf3AIUks556mnJCFqTQg7oNgfJIBVxTLuiH8JAFz5XTkG4hRvzmH5KYL9dqR+YmMCkY+rsMmeTLuMRZ6Fth5cWnM5HyFIDmZAH3ygLW343qClrxsBXMqbd1jF0iSuLsnjjnmKW8ZyvYDfgwRiCwKL5JJSutskJN+HSzDepq0znZwNqLEuY3j1rwMoqnTVXW996Te7ZkiuibL31prmxBNuXpJUz3p9kyHO6sSgN2r6x+P8jHNCRsTpAv2I6U3AyDsTG9s2okEQibazy5eHalEugyj8LAGa87BxVMdEfczMzO8k1Vd+6v/VGhY54iomwmN9MZM39imhpVn8Kp56QV0RtpZS4+1PLtjaExYQW4O6zMYv/RnfMqufAk6qGQUpmkGmobGbsfLoXDd7wjTckG1hbObrPz3vbjz6rRCcjy9xQcVR0MYIjG3wgzf3PX0OHJ9Rx8byTxLLzTkXU/1pBFljZX149HdVAI8ukHggOJ5VHLWGyA5llsQUqkbjfEANlmbp/P3TL+3gZz++RnbeDSpo/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(346002)(39860400002)(366004)(376002)(451199021)(186003)(6506007)(6512007)(26005)(6486002)(6666004)(5660300002)(41300700001)(4326008)(6916009)(66476007)(66556008)(8936002)(8676002)(66946007)(478600001)(82960400001)(38100700002)(2906002)(316002)(86362001)(83380400001)(66899021);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTdPZUY0dm15RjI3ZE5xMS9wbEVqSWJ5RUlIMWJKbzJKb2lGUllhMXBYRjIv?=
 =?utf-8?B?RTJqSE5CUUYvN2RBY29lRUJ4TDdkakkyeUFINmdPNSs4TmZPWldoTHVhdmlL?=
 =?utf-8?B?eFNzS2hGM0NuQ3craXFUZTM1Z3hXWjFEQXRUSkc4aW95RGNmYVBQTlVCQWd4?=
 =?utf-8?B?QzRMd1Q4dUx0V0tla2JjalNpTm1kSk5udE9NaGtsOGJzMlQ1amRFTmUwUEZp?=
 =?utf-8?B?bndMcWVSRk1LUFpQWHA3OFVxaE11VnNXaWsxREhvSXF5WEJidmNMNmlYZEcx?=
 =?utf-8?B?aEJHaWpISDl4eEtiRWhPc0xiMkd0SVc0QWsrMEVTWk01M01lazVlNlkwdGhW?=
 =?utf-8?B?UnBKT2ZCaTJJSnlmTjg3bW5jM2RIZWRvZytOVmFlTjk0aHJHSUpWRUZlM2hG?=
 =?utf-8?B?eUZtUS9UTWZBakRXQjFzQlgwaW15aHhhWVJPMmVLdUNIMnB5VFZ1NDlZVVFJ?=
 =?utf-8?B?R0RXemJHSlRyNzlDcDIwSkwyTmg1NExVamszTXgvRnlzWTVaL1ptNjdLSGhO?=
 =?utf-8?B?Y1prelNRaXZVWmZ0VmNvYmFLTUFwK2xqMHM5M1ZPbTRCWi9oZUZSUVR3Q2ZK?=
 =?utf-8?B?UnhxdVV1c2JiMGRLWG9OejRLL0xjMDdDSjJqeHRhSkEvUlI2QkpucXlRcURB?=
 =?utf-8?B?eUFXKzNkSnROUHlYa3hQVlhPOURTRmFHdjRkYUhJNEZZTC9MZGovblFBWStL?=
 =?utf-8?B?NVB1bFQ5V283U1BQRjA3ZldhRktEanM0UERrQWk2Znp1T0grMGYzM1c4TWR5?=
 =?utf-8?B?RkZwZzBLcGVjM2pRZ0ppbWk3cWppejZCY2hnVzNRU2k1WlJ1bnlUdU9kTXdn?=
 =?utf-8?B?Q2ZIQ01oQitpdnhPVFBReEdnUC9tN1pnVWdwWmkvUzFGcEMvTWNVR2FFcHB3?=
 =?utf-8?B?emtpUGtTWjBCQWt4M3BwUzBhUVhMV2gyVUJJd3pCME45TG0yMnRRb2tKaEwr?=
 =?utf-8?B?Vk9mb3h1MFhZVXRMbG9NSnBLczVKUENiZE1rQk5WQlhMeUk1N1doRElvb0sx?=
 =?utf-8?B?b1dFQXlYSFQ4eWUzVWErcVhTSzM2VkZUQ2hQVk0weXhFcGZMbS9xSmd5dUVw?=
 =?utf-8?B?SUYwWXl4SmR2RVRsREZYcUFFbHE4eUFLbjJ4NS9EY3Jub3dmZTRlVlh2dE0v?=
 =?utf-8?B?dlc3dnVMaEhBc3dpNVFsL2lyVmp3UGZzZ2JBczVJMTdVVmppRHI4SG1lK2FQ?=
 =?utf-8?B?NGRGVU40RzJNK2VPcHd5QnNSQkl3dXdtR2FvVytmNmhnMzQxTjUrdmxya0hY?=
 =?utf-8?B?U2JDaDVObUE3bmtYVHFOY2JCa0pHM05OQ3JvazlqeEJzOEZVeHlpdnFMbzlU?=
 =?utf-8?B?K0YzKzFZNDBzVGR5VStaZHo0dVNBbEdkYUNER3RXVExIZWo1S2tNVVhTMG1m?=
 =?utf-8?B?SXJSMUJrckR1eVBIU20rK0ZHYituVXhGeGdlRm9OUlh0ZkNFb1Q1MkMxd3FM?=
 =?utf-8?B?azkrMmp1ZjZnK3JBcmNlUWJlaENMOFovNEQwS3hXSGcxbG5HSld0UU1lNkE0?=
 =?utf-8?B?NFk1THZGa0VkRVpoc2lCeTNKbFZQSmtOcWJ5RzVaWm5uOWlyRmdaV2FFaXlW?=
 =?utf-8?B?SHhlZll2aWEvNzVDb0dheitmZFpBTFExMXJxRlNpZ3ZacHBJSmFSWkFGS0l5?=
 =?utf-8?B?WEw2NTQ5SGxWZm02K1lCQ2I2YzYzcStuemVWWnVOb2phaEFzVHpiRXFyL2tr?=
 =?utf-8?B?TUk3ZHRSWVU5cnZLVVBMTkFxMzJwdUhnK0JpN0hXU2JOalpPVVJEbkw2SC9m?=
 =?utf-8?B?TFdROFY5YU1uSEZUTytpMndETEZBWTRWZnc4SzVtWkxEdlYwRjVqQWNydHlp?=
 =?utf-8?B?MWlwV3RMc29qNG1QYzJKRVlDSk5uTk1mbXRhNWFSVDhyYXltbkhXcnI2ZjJG?=
 =?utf-8?B?bWdNQk16dk5PMVlKYVhkUzVTbnlOTVVtbE9OWVRLTmczR05jQUx6YndKV25y?=
 =?utf-8?B?bnZmekpmWlFWZ1R4QlNmUHNBbmpTN1R3Tll5QjdVMGxQRDdEd3R4Z1kyb3h6?=
 =?utf-8?B?VU9XMlV4UU5QdzZMVXFTeElqVGxhMW9YcnR2N0xMd1kwZnBHQXpORDZnQ3Rr?=
 =?utf-8?B?dDJ6RjI3VzVtNkNxbEpaNEhiRm8rMG1CRXlwck1WaFM4bmRkdWNQVm5JVGRY?=
 =?utf-8?B?bmVPNkdhWVg3RDhnbzBZVHAyQk53KzNpcncxVlhJcUh5YmV5WDkzZ3BOVzFv?=
 =?utf-8?Q?EY8bWrp2Xg8uumVqlvx+IU4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5168e12-dd8e-4264-3199-08db41dba24b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2023 20:12:58.1436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cal2f2596StwVMHF1tCQ3OoWm0BA7jMcRdXsGPMmfl7BrSP8cTXCr18Fan8vkrKQhk3qNm6RmeD/z0btbZtyzYgUuwBk2ORJl4csqBH0vKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7781
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

On Fri, Mar 31, 2023 at 02:02:40PM +0100, Tvrtko Ursulin wrote:
>
>On 30/03/2023 19:31, Umesh Nerlige Ramappa wrote:
>>+ Joonas for comments on this
>>
>>On Thu, Mar 30, 2023 at 02:38:03PM +0100, Tvrtko Ursulin wrote:
>>>
>>>On 30/03/2023 01:41, Umesh Nerlige Ramappa wrote:
>>>>MTL introduces separate GTs for render and media. This complicates the
>>>>definition of frequency and rc6 counters for the GPU as a whole since
>>>>each GT has an independent counter. The best way to support this change
>>>>is to deprecate the GPU-specific counters and create GT-specific
>>>>counters, however that just breaks ABI. Since perf tools and scripts may
>>>>be decentralized with probably many users, it's hard to deprecate the
>>>>legacy counters and have all the users on board with that.
>>>>
>>>>Re-introduce the legacy counters and support them as min/max of
>>>>GT-specific counters as necessary to ensure backwards compatibility.
>>>>
>>>>I915_PMU_ACTUAL_FREQUENCY - will show max of GT-specific counters
>>>>I915_PMU_REQUESTED_FREQUENCY - will show max of GT-specific counters
>>>>I915_PMU_INTERRUPTS - no changes since it is GPU specific on all 
>>>>platforms
>>>>I915_PMU_RC6_RESIDENCY - will show min of GT-specific counters
>>>>I915_PMU_SOFTWARE_GT_AWAKE_TIME - will show max of GT-specific counters
>>>
>>>IMO max/min games are _very_ low value and probably just confusing.
>>
>>By value, do you mean ROI or actually that the values would be incorrect?
>
>Both really.
>
>>>I am not convinced we need to burden the kernel with this. New 
>>>platform, new counters.. userspace can just deal with it.
>>
>>I agree and would prefer to drop this patch. There are some counter 
>>arguments, I have added Joonas here for comments.
>>
>>1) an app/script hard-coded with the legacy events would be used on 
>>a new platform and fail and we should maintain backwards 
>>compatibility.
>
>I thought we pretty much agreed multiple times in the past (on 
>different topics) that a new platform can require new userspace.
>
>PMU is probably even a more clear cut case since it is exposing 
>hardware counters (or close) so sometimes it is not even theoretically 
>possible to preserve "backward" compatibility.
>
>(I double quote backward because I think real backward compatibility 
>does not apply on a new platform. And MTL is under force probe still.)
>
>So for me it all comes under the "would be nice" category. But since 
>we need to add kernel code to do it, code which asy intel_gpu_top 
>could run in userspace, I am not at all convinced it wouldn't be a bad 
>idea.
>
>The aggregated counters wouldn't even be giving the full picture.
>
>So I'd simply add tiles/gt support to intel_gpu_top. Same as it 
>currently can do "-p" on the command line, or '1' in the interactive 
>mode, to aggregate the engine classes into one line item, I'd extend 
>that concept into frequencies and RC6.
>
>By default we start with normalized values and in physical mode we 
>show separate counters per tile/gt.
>
>Someone running old intel_gpu_top on MTL gets to see nothing since the 
>counter names are different. Which is IMO fine - better than showing 
>tile 0 data, or some minimums/maximums from one tile only.
>
>>2) the sysfs attributes for rc6/frequency have already adopted an 
>>aggregate vs gt0/gt1 approach to address that and pmu should have a 
>>similar solution (or rather, PMU and the sysfs approaches should 
>>match based on whatever is the approach)
>
>Yeah I disagreed with min/max reads in sysfs too and am pretty sure I 
>expressed that at the time. :shrug:
>
>But I don't think there is a strong argument that PMU needs to follow.
>
>Only impact is to people who access perf_event_open directly so yeah, 
>if there are such users, they will need to add multi-tile support.

I discussed with Joonas offline and I guess I had a wrong idea regarding 
ABI. Looks like ABI is only broken if we remove something that existed 
for a platform, so this does not break ABI for MTL. The motivation was 
to have per-platform differences smaller for applications/UMD.

The other aspect he pointed out was that we should not push anything 
that does not have an IGT. For aggregate events, we do not have any 
plans to support IGTs (large effort as well as no clear way to support 
such aggregation).

In short, I will drop this patch and post what you originally had for 
multi-gt PMU support.

Thanks,
Umesh
>
>Regards,
>
>Tvrtko
