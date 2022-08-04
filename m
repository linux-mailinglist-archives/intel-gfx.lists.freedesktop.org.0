Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C649B58959E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 03:22:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D91210F1F3;
	Thu,  4 Aug 2022 01:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BAE011B25C
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 01:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659576108; x=1691112108;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=skeFwiMKvgSwPBTaJ4oG5Y3ebaRl8qaLYEf9GHVr+Bc=;
 b=GrOmpqXL2w6hXQjZuwv0ORnYUtN6OUI+FL2rwCKdiNI3+3hY1pQBg92N
 EgJX3if3QBZw9WnJI8cHJUWzR9z2skuoFaSeb0/uq1iMuAOtGLOl+EhwO
 51jvZPmyKz9FcyPdZR9vEvWEm7R6/Cgzt0BrNlXFGD6Fjbqo1WInVxXFs
 O2Tuz9j3+HjbabKaE3ilkWw5aFo+OGQIt7TXlpvyGxVQqusk2WFV0naiB
 FJ4zaDLte8t0d+IMHARPVGN9iGiMuDaP4OX2PcJE2iEfZHrgg7a6Z+d/u
 Q8B0Ce36Uz6HFlqc4eYJU/8ataPFHFgzKPDmjZFvsUTt1bH3AeBMdzYP9 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="288570669"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="288570669"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 18:21:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="553529463"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 03 Aug 2022 18:21:46 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 18:21:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 3 Aug 2022 18:21:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 3 Aug 2022 18:21:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MNcr4owMAFZlx7QNxafRMtuFjazIXz2Vz4fbkk61z0UTMuCSFE6jFGMinWiKIfa6LyhX0En+4dWGNcK9Q4ceW+gvQ+6FdqnbHB9w4ClLXXfYXY7XYYv1cblQQhjEP+Fs7zYBVJqcCzL2Zmrh+6PTgos6A5eWZvcOLJ/EROUUva1f7myL9WccDF+2gSdXr23icvD/eSJH/IgDit1ano1SUXaeMDZ2hk/oOldnY00zeiGFztu+u9/A57Q3OyhXPHEDiKFCjXI9PM3bOaRExkfnyKAEenqmBa0Hl8BJf95hEp5cANhhcmdvHYQEC73LHwhpl5FJa4TNm9oRQOfLUrWq1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CYBqCFZejCLwO+/KjABe1fgj4c+GHeCQPDf2ZRF81mA=;
 b=jscHfvM04V5qOteAKV1gzj5w/gaQ9+zO0+ChXCQbRF9KT+pfo+17mDwQbjRpHtMh5QJhA0o8Oi7DEWzdFJWzuUIxbC8+FkpLvxZL+qlKNArGQLRWms+qLB+y9GF87LLDId/SUtiU/Z0uQ92xzeaG+O1ItgzZtOXTCGI9uPoQJYo8E63jLh4deL07S2jkLrzb6wLDMtrhjALCAJqklpJeR8qXgbbi2qiwhVp2DbOh+gTLCYeSgohPSuxinQf18hSHnnUcZ3tYRR1NsFE4W4CADG2osfUPZGkL39ye3LSYFlGea+3YylZppDr26BUP2J3l8wPCU0CVrhaJBsvVGjjyOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM4PR11MB6429.namprd11.prod.outlook.com (2603:10b6:8:b5::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.16; Thu, 4 Aug 2022 01:21:44 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e7:b934:6a3e:59a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e7:b934:6a3e:59a%7]) with mapi id 15.20.5482.016; Thu, 4 Aug 2022
 01:21:44 +0000
Date: Wed, 3 Aug 2022 18:21:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YusfJkzc0yaauGgs@orsosgc001.jf.intel.com>
References: <20220616221347.27621-1-umesh.nerlige.ramappa@intel.com>
 <a0c37ef9-9cde-883e-306d-11f520e273ef@linux.intel.com>
 <YuDUyca6f26zv5SE@orsosgc001.jf.intel.com>
 <e09ba5f4-c7f7-68a6-1ccc-df5229952f89@linux.intel.com>
 <YugjMdjh9AFZfybF@orsosgc001.jf.intel.com>
 <2c5ac8d8-cedc-e7bc-58cd-de088a8b4355@linux.intel.com>
 <Yum1hZcmdWI00WZu@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yum1hZcmdWI00WZu@orsosgc001.jf.intel.com>
X-ClientProxiedBy: SJ0PR13CA0079.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::24) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 30b62717-371c-487e-4252-08da75b7b175
X-MS-TrafficTypeDiagnostic: DM4PR11MB6429:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ilnpzfCqxMZS/QQE0iZ+AVmmaKxXQrUPEzfAVvPHCbVi/a3LSJfcBDzN6w8+gceG2KidZgUCiz3IJ/cEVfY4pMIIGe59dSpxwqi240jgKJDME2n/GT0ZgMKfDr4VqXkNoFoJlWzLtHJF5Fpug927troiJorlTcfp5rfKUv2K1ctV7+69gxwHwakt8QJ1GWwETSC61vGNRhSg9dEOnXYqX9SFhwPwU8yCGozwhBy86UOmHN/2tF9GiH3oyEZizPOhvA1bUuhXtgZFberfbUjYnOTvsbwcBZOxo/MVjAlYlS3gZcnqq0/KxvQo/isDaqxHqqt/W4yQnbx7FY1VlwXO8zn+Vg1huLqz0g5uOJWXwUa1qB+m5xUxJrUNIWNBAE0M8L4sWmseZzc27LCBnoBPmIvcEWFNg2hx7CLTyUfXmJE49Vd3uIUdehb6b77TmCyPXv6IM0KdO3IpljoDyRRu+zV8eYAuSSADjYFPdxn2iGxetGb58w57z/DRYE7AzGJf8wiZEbfXZ8FX2eVCTCoixM7hrk+vOq8fP+310Fux//dPngKiHbk4B5JPl+AHm8W7+QrcdWO2Kg9+DT1eyJAWgUCZuMoymDebyX+dr7geje0KDY9N//GiJgzNW+oa/QZCE2tgrO0QcnEX5lqwhmc8M5ZsSB/vKrBwq+reJsRcsaqZQ1by5losBzYkjq4OjbYDRRG4pyaMyCPmMbb/Mz48B1Fh2Y7gDD1LytARYSDwGya19Zn9XB9BgUtFgfPHJvVI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(136003)(396003)(376002)(39860400002)(66476007)(316002)(6916009)(66946007)(6486002)(66556008)(966005)(83380400001)(2906002)(478600001)(41300700001)(4326008)(8936002)(8676002)(82960400001)(30864003)(6512007)(26005)(86362001)(6506007)(186003)(5660300002)(38100700002)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TnE2Tis0UGJRUWUxVXVLWmkrVWtSS1IvS052SG56d2x4MUtjQXpXVmU5Lzcw?=
 =?utf-8?B?YWlzZERSeFFNenp4QmhUODZoYTJLMmRBaUdrdlE5bzNFSDI3dmpxUGtINEx3?=
 =?utf-8?B?RzlEZC8zb29YemZOVUtMQS9BR2hOd1FJajZxbWlodzZGdUgzcG43M2t0S2No?=
 =?utf-8?B?T1YvYmJraWpyQlVVbnBZTytlYmpPTHVEdkVZTW4yckZwaUxJNWdaVVF5NG40?=
 =?utf-8?B?VG8wNlZKKzBkM3VhVDI3anF0aHJ3NVVNRkdyRWUrM2lCOStwTUUzWGVCZG83?=
 =?utf-8?B?ZDR5WXVVOHFSbnBlQ1ltZmdxbjlGTEV3QXU0Uy9jNDVXZGhRN0R6b245ZkdS?=
 =?utf-8?B?ZVdEY3RiNFdpWndiZUpvL1BHSHQrVWxRSVkxLzduK2s1ZTFJV2ZJRmY2K0dX?=
 =?utf-8?B?RXZvMkI0NTZGR3poTjAzd21HVlZtUlZTWlExSS9MNE1PbGdFNDg3TVdsT0F4?=
 =?utf-8?B?WXRyM3BhcW1nSUN3S3R2S1ZreGIzS3Q1SmM5cDl1dFd5M1RuZS9PMWNTV0RZ?=
 =?utf-8?B?N1c3N2N2b3BTUG5VSit2TkgzbEJ2OC9jaW5uMiszd2FPQkQvZ21qSGpDQkRN?=
 =?utf-8?B?K1lVNTgrUkNITXNWVTNrQWpYSzR1VkFwcG1LRlA5aWhOMHFOR1V1RHBLUkY3?=
 =?utf-8?B?bmR0QnJJN1VBY2VrU0Jrdzg4bHJIN2Y5WTlJL0NhRlU1anVlT3hROXhrZTE4?=
 =?utf-8?B?b3RBVUVWd1lBZ1JEWitNTW9nTkFqOUM1VkN4ZW5UUXUyQ09UYy9UcHJTcGZp?=
 =?utf-8?B?STNVc0U0UHNUaDlvN1JOOGt1L1ljMGFjUzBGUkc5TGY1L2FlMGNLZzNpalpt?=
 =?utf-8?B?YUJDbjZiZnRBQ0NmTnRodUxPT1ozUGpvTkYvUXowUW9aSk16dmx3cWFKS3Z6?=
 =?utf-8?B?UGwxSUVhVGo4eWllbmF6bWExTHFBVjVyTVF2ODhkbCtQdHg1b3AxMmVvUEIx?=
 =?utf-8?B?dTlENVk3bGhEdi93N0Q3VHNUTW1RY1RnNU82VlB5L1JIa3ZnRUtDMnpSQ044?=
 =?utf-8?B?SUo5cmo4RHBFR2pXdEM3KytKK29USW5CTjZzcnROMUxqZGhDZDJDRDEzaVJP?=
 =?utf-8?B?dE4wU1czcnNQT0l2SkpTS1N5RTVUbTVmUlZEM2tFemF5YS9JOVEzTzRzaXF1?=
 =?utf-8?B?TjNmck12ZmFIbWIzQndaQWl6NW80TDZUdnIvOU5UZHJaUjlNYk40eS90Rmlz?=
 =?utf-8?B?ZTR5VE1tMXlmd3F2S3pSbnErRHFxaTloTEYwR2czMzcxZW9WRnM1c056R1R1?=
 =?utf-8?B?d080STgrb3JkSWZzWjJSN1lsOE93OVpGRWFLRFN1YTVNTHZ6Q0h2dWsxTita?=
 =?utf-8?B?d2xJTWNoaWxzTDc1bmV4SjFWemhUNjBjMVhYZ1NDOERLemNqbFEvZFRoaU55?=
 =?utf-8?B?VkNOTml4SGZadUN2Q09PSlRQeHp4STdFUkh4RmZJVFpXN0lHc0VLRm8wbUlr?=
 =?utf-8?B?RS96MmZWeGh3ZEllTXVSdi84NGZRZVRMTEZ4ZlZEY1hoOFZWV0Rwa1JOeW54?=
 =?utf-8?B?Z1ByNDlvZ2xnVGRpbGFIdnAydlkvQ0thRW5ETG5pRnFVOTlsTGpyc2x1WlF6?=
 =?utf-8?B?bDZ3WStPNjdOcFhzTFRNclpvbWdqOWJJTmhCdEZ5UzZva3VMa1lIQ0FVUlBW?=
 =?utf-8?B?cEQ2V1BBNS9lSUNSc2NIUGxacHRHZ3VnazI2RDIxQ2NRVlM5VWU3Z2tkSFlC?=
 =?utf-8?B?aGFGc01Qd3RsY1BSMTBZKzRTbXVzOEpzcUpZRUd0ZTY3K2IwRVkyNGtHdm8v?=
 =?utf-8?B?c3JLZWROWnFscExhT3owNHJUbndPYjRXV2ZheWVqb0JLNEp3SFRMMDF3eFdH?=
 =?utf-8?B?Q3NZSE9SVHlaQkp2TEoxWEVmTGd2V0hOalQ3c0JFWXZoakVPK2pQOThYZ1B2?=
 =?utf-8?B?aHpjMWdMTGhBQXozVnpFUFM4dng4MitvT1JQZmx5LzV0dXZ1QTcweEZJZzB4?=
 =?utf-8?B?TEYwQzF6eGhkQzVSN2hxeFdXYmdLZFFWTTBIMGJGeEtuSUlVV2dMYTczMmlO?=
 =?utf-8?B?RHJUVzN5VnZ0c3FVK05VUU5rSVdSeFJDM1A2TTZJM3gyWXBveVhIQm9wMTZy?=
 =?utf-8?B?NlF6clNrRldxL09sSzVDbkMrUktaU0JjdDFlNlRud2pldUJtQjA0YWVLSi9B?=
 =?utf-8?B?clNNSUp5ZFRpdEI4TGZ3RlZhVVllYzZ1UnhoN2I4Q0IxMmdrVC9BL2xNTlhS?=
 =?utf-8?Q?Sqiw5mYfFEMmpAagCHQ3eJ4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 30b62717-371c-487e-4252-08da75b7b175
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2022 01:21:44.6188 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u2EbYGVkNurOOinKpiAv9RWT3Q37HA9qwO5Y++cgHT3k6jLjWhP3Q4pBnmvmDh/+pvTX9wRKHAQQkB34IbMTE9MAQ2ozcL0srbMdPz7Ee3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6429
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915/pmu: Wire GuC backend to per-client
 busyness
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

On Tue, Aug 02, 2022 at 04:38:45PM -0700, Umesh Nerlige Ramappa wrote:
>On Tue, Aug 02, 2022 at 09:41:38AM +0100, Tvrtko Ursulin wrote:
>>
>>On 01/08/2022 20:02, Umesh Nerlige Ramappa wrote:
>>>On Wed, Jul 27, 2022 at 09:48:18AM +0100, Tvrtko Ursulin wrote:
>>>>
>>>>On 27/07/2022 07:01, Umesh Nerlige Ramappa wrote:
>>>>>On Fri, Jun 17, 2022 at 09:00:06AM +0100, Tvrtko Ursulin wrote:
>>>>>>
>>>>>>On 16/06/2022 23:13, Nerlige Ramappa, Umesh wrote:
>>>>>>>From: John Harrison <John.C.Harrison@Intel.com>
>>>>>>>
>>>>>>>GuC provides engine_id and last_switch_in ticks for an 
>>>>>>>active context in
>>>>>>>the pphwsp. The context image provides a 32 bit total 
>>>>>>>ticks which is the
>>>>>>>accumulated by the context (a.k.a. context[CTX_TIMESTAMP]). This
>>>>>>>information is used to calculate the context busyness as follows:
>>>>>>>
>>>>>>>If the engine_id is valid, then busyness is the sum of 
>>>>>>>accumulated total
>>>>>>>ticks and active ticks. Active ticks is calculated with 
>>>>>>>current gt time
>>>>>>>as reference.
>>>>>>>
>>>>>>>If engine_id is invalid, busyness is equal to accumulated total ticks.
>>>>>>>
>>>>>>>Since KMD (CPU) retrieves busyness data from 2 sources - 
>>>>>>>GPU and GuC, a
>>>>>>>potential race was highlighted in an earlier review that can lead to
>>>>>>>double accounting of busyness. While the solution to this is a wip,
>>>>>>>busyness is still usable for platforms running GuC submission.
>>>>>>>
>>>>>>>v2: (Tvrtko)
>>>>>>>- Use COPS_RUNTIME_ACTIVE_TOTAL
>>>>>>>- Add code comment for the race
>>>>>>>- Undo local variables initializations
>>>>>>>
>>>>>>>v3:
>>>>>>>- Add support for virtual engines based on
>>>>>>>  https://patchwork.freedesktop.org/series/105227/
>>>>>>>
>>>>>>>Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>>>>>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>>>>>---
>>>>>>> drivers/gpu/drm/i915/gt/intel_context.c       | 12 +++-
>>>>>>> drivers/gpu/drm/i915/gt/intel_context.h       |  6 +-
>>>>>>> drivers/gpu/drm/i915/gt/intel_context_types.h |  6 ++
>>>>>>> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  5 ++
>>>>>>> .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 65 
>>>>>>>++++++++++++++++++-
>>>>>>> drivers/gpu/drm/i915/i915_drm_client.c        |  6 +-
>>>>>>> 6 files changed, 89 insertions(+), 11 deletions(-)
>>>>>>>
>>>>>>>diff --git a/drivers/gpu/drm/i915/gt/intel_context.c 
>>>>>>>b/drivers/gpu/drm/i915/gt/intel_context.c
>>>>>>>index 4070cb5711d8..4a84146710e0 100644
>>>>>>>--- a/drivers/gpu/drm/i915/gt/intel_context.c
>>>>>>>+++ b/drivers/gpu/drm/i915/gt/intel_context.c
>>>>>>>@@ -576,16 +576,24 @@ void 
>>>>>>>intel_context_bind_parent_child(struct intel_context 
>>>>>>>*parent,
>>>>>>>     child->parallel.parent = parent;
>>>>>>> }
>>>>>>>-u64 intel_context_get_total_runtime_ns(const struct 
>>>>>>>intel_context *ce)
>>>>>>>+u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
>>>>>>> {
>>>>>>>     u64 total, active;
>>>>>>>+    if (ce->ops->update_stats)
>>>>>>>+        ce->ops->update_stats(ce);
>>>>>>>+
>>>>>>>     total = ce->stats.runtime.total;
>>>>>>>     if (ce->ops->flags & COPS_RUNTIME_CYCLES)
>>>>>>>         total *= ce->engine->gt->clock_period_ns;
>>>>>>>     active = READ_ONCE(ce->stats.active);
>>>>>>>-    if (active)
>>>>>>>+    /*
>>>>>>>+     * When COPS_RUNTIME_ACTIVE_TOTAL is set for 
>>>>>>>ce->cops, the backend
>>>>>>>+     * already provides the total active time of the 
>>>>>>>context, so skip this
>>>>>>>+     * calculation when this flag is set.
>>>>>>>+     */
>>>>>>>+    if (active && !(ce->ops->flags & COPS_RUNTIME_ACTIVE_TOTAL))
>>>>>>>         active = intel_context_clock() - active;
>>>>>>>     return total + active;
>>>>>>>diff --git a/drivers/gpu/drm/i915/gt/intel_context.h 
>>>>>>>b/drivers/gpu/drm/i915/gt/intel_context.h
>>>>>>>index b7d3214d2cdd..5fc7c19ab29b 100644
>>>>>>>--- a/drivers/gpu/drm/i915/gt/intel_context.h
>>>>>>>+++ b/drivers/gpu/drm/i915/gt/intel_context.h
>>>>>>>@@ -56,7 +56,7 @@ static inline bool 
>>>>>>>intel_context_is_parent(struct intel_context *ce)
>>>>>>>     return !!ce->parallel.number_children;
>>>>>>> }
>>>>>>>-static inline bool intel_context_is_pinned(struct intel_context *ce);
>>>>>>>+static inline bool intel_context_is_pinned(const struct 
>>>>>>>intel_context *ce);
>>>>>>> static inline struct intel_context *
>>>>>>> intel_context_to_parent(struct intel_context *ce)
>>>>>>>@@ -116,7 +116,7 @@ static inline int 
>>>>>>>intel_context_lock_pinned(struct intel_context *ce)
>>>>>>>  * Returns: true if the context is currently pinned for 
>>>>>>>use by the GPU.
>>>>>>>  */
>>>>>>> static inline bool
>>>>>>>-intel_context_is_pinned(struct intel_context *ce)
>>>>>>>+intel_context_is_pinned(const struct intel_context *ce)
>>>>>>> {
>>>>>>>     return atomic_read(&ce->pin_count);
>>>>>>> }
>>>>>>>@@ -351,7 +351,7 @@ intel_context_clear_nopreempt(struct 
>>>>>>>intel_context *ce)
>>>>>>>     clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
>>>>>>> }
>>>>>>>-u64 intel_context_get_total_runtime_ns(const struct 
>>>>>>>intel_context *ce);
>>>>>>>+u64 intel_context_get_total_runtime_ns(struct intel_context *ce);
>>>>>>> u64 intel_context_get_avg_runtime_ns(struct intel_context *ce);
>>>>>>> static inline u64 intel_context_clock(void)
>>>>>>>diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h 
>>>>>>>b/drivers/gpu/drm/i915/gt/intel_context_types.h
>>>>>>>index 09f82545789f..797bb4242c18 100644
>>>>>>>--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
>>>>>>>+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
>>>>>>>@@ -38,6 +38,9 @@ struct intel_context_ops {
>>>>>>> #define COPS_RUNTIME_CYCLES_BIT 1
>>>>>>> #define COPS_RUNTIME_CYCLES BIT(COPS_RUNTIME_CYCLES_BIT)
>>>>>>>+#define COPS_RUNTIME_ACTIVE_TOTAL_BIT 2
>>>>>>>+#define COPS_RUNTIME_ACTIVE_TOTAL BIT(COPS_RUNTIME_ACTIVE_TOTAL_BIT)
>>>>>>>+
>>>>>>>     int (*alloc)(struct intel_context *ce);
>>>>>>>     void (*ban)(struct intel_context *ce, struct i915_request *rq);
>>>>>>>@@ -55,6 +58,8 @@ struct intel_context_ops {
>>>>>>>     void (*sched_disable)(struct intel_context *ce);
>>>>>>>+    void (*update_stats)(struct intel_context *ce);
>>>>>>>+
>>>>>>>     void (*reset)(struct intel_context *ce);
>>>>>>>     void (*destroy)(struct kref *kref);
>>>>>>>@@ -146,6 +151,7 @@ struct intel_context {
>>>>>>>             struct ewma_runtime avg;
>>>>>>>             u64 total;
>>>>>>>             u32 last;
>>>>>>>+            u64 start_gt_clk;
>>>>>>>             I915_SELFTEST_DECLARE(u32 num_underflow);
>>>>>>>             I915_SELFTEST_DECLARE(u32 max_underflow);
>>>>>>>         } runtime;
>>>>>>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h 
>>>>>>>b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>>>>>>index b3c9a9327f76..6231ad03e4eb 100644
>>>>>>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>>>>>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>>>>>>@@ -196,6 +196,11 @@ static inline u8 
>>>>>>>guc_class_to_engine_class(u8 guc_class)
>>>>>>>     return guc_class_engine_class_map[guc_class];
>>>>>>> }
>>>>>>>+/* Per context engine usage stats: */
>>>>>>>+#define PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO    (0x500 / sizeof(u32))
>>>>>>>+#define PPHWSP_GUC_CONTEXT_USAGE_STAMP_HI 
>>>>>>>(PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO + 1)
>>>>>>>+#define PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID 
>>>>>>>(PPHWSP_GUC_CONTEXT_USAGE_STAMP_HI + 1)
>>>>>>>+
>>>>>>> /* Work item for submitting workloads into work queue of GuC. */
>>>>>>> struct guc_wq_item {
>>>>>>>     u32 header;
>>>>>>>diff --git 
>>>>>>>a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>>>>b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>index 5a1dfacf24ea..cbf3cbb983ce 100644
>>>>>>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>@@ -378,7 +378,7 @@ static inline void 
>>>>>>>set_context_guc_id_invalid(struct intel_context *ce)
>>>>>>>     ce->guc_id.id = GUC_INVALID_CONTEXT_ID;
>>>>>>> }
>>>>>>>-static inline struct intel_guc *ce_to_guc(struct intel_context *ce)
>>>>>>>+static inline struct intel_guc *ce_to_guc(const struct 
>>>>>>>intel_context *ce)
>>>>>>> {
>>>>>>>     return &ce->engine->gt->uc.guc;
>>>>>>> }
>>>>>>>@@ -1323,13 +1323,16 @@ static void 
>>>>>>>__update_guc_busyness_stats(struct intel_guc *guc)
>>>>>>>     spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>>>>>> }
>>>>>>>+static void __guc_context_update_clks(struct intel_context *ce);
>>>>>>> static void guc_timestamp_ping(struct work_struct *wrk)
>>>>>>> {
>>>>>>>     struct intel_guc *guc = container_of(wrk, typeof(*guc),
>>>>>>>                          timestamp.work.work);
>>>>>>>     struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
>>>>>>>     struct intel_gt *gt = guc_to_gt(guc);
>>>>>>>+    struct intel_context *ce;
>>>>>>>     intel_wakeref_t wakeref;
>>>>>>>+    unsigned long index;
>>>>>>>     int srcu, ret;
>>>>>>>     /*
>>>>>>>@@ -1343,6 +1346,10 @@ static void 
>>>>>>>guc_timestamp_ping(struct work_struct *wrk)
>>>>>>>     with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
>>>>>>>         __update_guc_busyness_stats(guc);
>>>>>>>+    /* adjust context stats for overflow */
>>>>>>>+    xa_for_each(&guc->context_lookup, index, ce)
>>>>>>>+        __guc_context_update_clks(ce);
>>>>>>>+
>>>>>>>     intel_gt_reset_unlock(gt, srcu);
>>>>>>>     mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
>>>>>>>@@ -1405,6 +1412,56 @@ void 
>>>>>>>intel_guc_busyness_unpark(struct intel_gt *gt)
>>>>>>>              guc->timestamp.ping_delay);
>>>>>>> }
>>>>>>>+static void __guc_context_update_clks(struct intel_context *ce)
>>>>>>>+{
>>>>>>>+    struct intel_guc *guc = ce_to_guc(ce);
>>>>>>>+    struct intel_gt *gt = ce->engine->gt;
>>>>>>>+    u32 *pphwsp, last_switch, engine_id;
>>>>>>>+    u64 start_gt_clk, active;
>>>>>>>+    unsigned long flags;
>>>>>>>+    ktime_t unused;
>>>>>>>+
>>>>>>>+    spin_lock_irqsave(&guc->timestamp.lock, flags);
>>>>>>>+
>>>>>>>+    /*
>>>>>>>+     * GPU updates ce->lrc_reg_state[CTX_TIMESTAMP] when 
>>>>>>>context is switched
>>>>>>>+     * out, however GuC updates PPHWSP offsets below. Hence KMD (CPU)
>>>>>>>+     * relies on GuC and GPU for busyness calculations. 
>>>>>>>Due to this, A
>>>>>>>+     * potential race was highlighted in an earlier 
>>>>>>>review that can lead to
>>>>>>>+     * double accounting of busyness. While the solution 
>>>>>>>to this is a wip,
>>>>>>>+     * busyness is still usable for platforms running GuC submission.
>>>>>>>+     */
>>>>>>>+    pphwsp = ((void *)ce->lrc_reg_state) - LRC_STATE_OFFSET;
>>>>>>>+    last_switch = 
>>>>>>>READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO]);
>>>>>>>+    engine_id = 
>>>>>>>READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID]);
>>>>>>>+
>>>>>>>+    guc_update_pm_timestamp(guc, &unused);
>>>>>>>+
>>>>>>>+    if (engine_id != 0xffffffff && last_switch) {
>>>>>>>+        start_gt_clk = READ_ONCE(ce->stats.runtime.start_gt_clk);
>>>>>>>+        __extend_last_switch(guc, &start_gt_clk, last_switch);
>>>>>>>+        active = intel_gt_clock_interval_to_ns(gt, 
>>>>>>>guc->timestamp.gt_stamp - start_gt_clk);
>>>>>>>+        WRITE_ONCE(ce->stats.runtime.start_gt_clk, start_gt_clk);
>>>>>>>+        WRITE_ONCE(ce->stats.active, active);
>>>>>>>+    } else {
>>>>>>>+        lrc_update_runtime(ce);
>>>>>>>+    }
>>>>>>>+
>>>>>>>+    spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>>>>>>+}
>>>>>>>+
>>>>>>>+static void guc_context_update_stats(struct intel_context *ce)
>>>>>>>+{
>>>>>>>+    if (!intel_context_pin_if_active(ce)) {
>>>>>>>+        WRITE_ONCE(ce->stats.runtime.start_gt_clk, 0);
>>>>>>>+        WRITE_ONCE(ce->stats.active, 0);
>>>>>>>+        return;
>>>>>>>+    }
>>>>>>>+
>>>>>>>+    __guc_context_update_clks(ce);
>>>>>>>+    intel_context_unpin(ce);
>>>>>>>+}
>>>>>>>+
>>>>>>> static inline bool
>>>>>>> submission_disabled(struct intel_guc *guc)
>>>>>>> {
>>>>>>>@@ -2585,6 +2642,7 @@ static void guc_context_unpin(struct 
>>>>>>>intel_context *ce)
>>>>>>> {
>>>>>>>     struct intel_guc *guc = ce_to_guc(ce);
>>>>>>>+    lrc_update_runtime(ce);
>>>>>>>     unpin_guc_id(guc, ce);
>>>>>>>     lrc_unpin(ce);
>>>>>>>@@ -3183,6 +3241,7 @@ static void 
>>>>>>>remove_from_context(struct i915_request *rq)
>>>>>>> }
>>>>>>> static const struct intel_context_ops guc_context_ops = {
>>>>>>>+    .flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>>>>>>     .alloc = guc_context_alloc,
>>>>>>>     .pre_pin = guc_context_pre_pin,
>>>>>>>@@ -3199,6 +3258,8 @@ static const struct 
>>>>>>>intel_context_ops guc_context_ops = {
>>>>>>>     .sched_disable = guc_context_sched_disable,
>>>>>>>+    .update_stats = guc_context_update_stats,
>>>>>>>+
>>>>>>>     .reset = lrc_reset,
>>>>>>>     .destroy = guc_context_destroy,
>>>>>>>@@ -3432,6 +3493,7 @@ static int 
>>>>>>>guc_virtual_context_alloc(struct intel_context *ce)
>>>>>>> }
>>>>>>> static const struct intel_context_ops virtual_guc_context_ops = {
>>>>>>>+    .flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>>>>>>     .alloc = guc_virtual_context_alloc,
>>>>>>>     .pre_pin = guc_virtual_context_pre_pin,
>>>>>>>@@ -3447,6 +3509,7 @@ static const struct 
>>>>>>>intel_context_ops virtual_guc_context_ops = {
>>>>>>>     .exit = guc_virtual_context_exit,
>>>>>>>     .sched_disable = guc_context_sched_disable,
>>>>>>>+    .update_stats = guc_context_update_stats,
>>>>>>
>>>>>>There are also virtual_parent_context_ops and 
>>>>>>virtual_child_context_ops - which means more test coverage 
>>>>>>is needed..
>>>>>
>>>>>Trying to come back to this... The 
>>>>>virtual_parent_context_ops/virtual_child_context_ops are used 
>>>>>for parallel engines. GuC would only update the pphwsp of the 
>>>>>parent context with the last_switched_in_time.
>>>>>
>>>>>In general, how should I report the busyness for a parallel engine?
>>>>>
>>>>>I would think it is busyness reported by parent context 
>>>>>multiplied by width.
>>>>
>>>>That could a reasonable approximation but I can't say for 
>>>>certain. Depends on the GuC scheduler implementation a bit. Like 
>>>>is anything preventing child contexts from finishing their 
>>>>useful work ahead of the parent context, or they are always 
>>>>strictly scheduled as one entity and child engines are blocked 
>>>>from taking other workloads until the parent is scheduled out?
>>>
>>>Correct, if a child finishes the work before parent/siblings for 
>>>some reason, it cannot take up other work until all siblings are 
>>>done.
>>
>>The only problem is that I guess one day that assumption might break 
>>and we will "never" now. If you have some spare time it would be 
>>best to add an IGT to verify this assumption, or at least put that 
>>work as TODO in the backlog?
>
>I added some tests to IGT for parallel engine, but something is 
>missing in the way I am submitting the batches to the parallel engine. 
>I see some hangs, haven't had a chance to debug that. Will try to get 
>to it and then post the updated i915 patches.

I think I may have to do the parallel engine testing later. Do you think 
this patch alone is good enough for now? It does not enable context 
busyness for parallel execution (which is just adding this 
COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL in the parent/child 
context ops)

If so, okay to post a rebased version?

Thanks,
Umesh
>
>Thanks,
>Umesh
>
>>
>>Regards,
>>
>>Tvrtko
