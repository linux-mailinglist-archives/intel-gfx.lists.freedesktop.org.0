Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E20465B85AA
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 11:56:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 757EB10E8E4;
	Wed, 14 Sep 2022 09:56:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D9E010E8E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 09:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663149406; x=1694685406;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Uovh/vF2LlSOTXaM6uEXXYicXdySZ0wK1UZGmCFbDYk=;
 b=RssvuduawCw/bm2DobksAUWW9jXttuRcLYK0x/EwPI9BrDZR6FfH2lux
 MPiCGExnxHL0x+dIqZH0GGwSviycuBcMk9uq0YDMdo6Ty9WwpTI2Essk+
 kpFZZY2Sh7o6CpOz8GS+0DRH+mop1kjgrba6z4H8mv/DNT5WbehMWMldY
 5zwOQm3je0Fzd2V6YI095zMbi3doJ2mjo342P+NIuOf1ay/WuJcFvSjwO
 ipNDsTto4ngrKsK1fPzeqrfbQN8LQahpx/eNYGJ2ZXrznvGTzBvVNFlKu
 NSQbuYIUx4BVvBdLSNMWiRT6nO7Ll8uOiJd0yNxkVlxSZGCS+Z29xUpCV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="299746525"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="299746525"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 02:56:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="594319848"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 14 Sep 2022 02:56:45 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 02:56:45 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 02:56:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 02:56:45 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 02:56:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eQ5lntoskWGDx5xh/Y1+FfJ+kxTR516biIk4IknQ56oqBxqY/+upxinv0aVEd35RQeAmdie7eLEOekWLkcArgOwBHjBtuIrmfHN18Vqvouxu6JWtiUqkTT67wAWG+BPkYBXNhWT24yervxNKmkUp9/jhwVgJQ0rQpMrm0PWOVnWZ2a8quvykRxRjC1wgQE3s95G7xK+k5IQmuh3xKM6Ik2PSBh1LOtrtw0Shg3Vj/IiXd9VYHKy4acZnxsAEe2ZcJyEqNq4TcoUE1PAPD8x4qqAW1qd9gqkJdY08YW/MrmszXRyp9VCmxFwSExxFXqaRl0+f8u7H7SP4vSwlLF5URw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q5zHw+KU16u7H5Wbux86xK9Usssvnipn/wLmbAh0zPA=;
 b=NKP7RPGidHMul/AAdrPO+fJQtTHvEm8DnzH1w7hpEeQoNDSE91G/Q8mq6E/A6zyCpqkhZzqV4HpZzXZSsL5ZO1Uo2sLNSS16c22vZXxbx0N+mGtqHh64xRthCBezWAJDatIINYfAh3j8wvoS4TI8WosVIDzAhrfjwd0fbcVO1zLkmHz5gKiGAbomJo5aAIcQ1whiGFa8qa0kMQyo9Tah3HxHuN8LIsSxOhw0KWb2hlUBsKR1jCLSMSc16rmQZ6/8acLIHS4JLBQItucFZ5MuBqRU53u/DFjna8gP73HlJ1jc1UNJC3+aZ9+kZEUvfk4ycUU/FyHqW9FEQPsk/6SFgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by SJ1PR11MB6108.namprd11.prod.outlook.com (2603:10b6:a03:489::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Wed, 14 Sep
 2022 09:56:42 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::b8f7:e789:58d6:f0ee]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::b8f7:e789:58d6:f0ee%7]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 09:56:42 +0000
Message-ID: <5443c3cb-1ece-226f-bef1-55f031359f83@intel.com>
Date: Wed, 14 Sep 2022 15:26:26 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Dixit, Ashutosh"
 <ashutosh.dixit@intel.com>
References: <20220909025646.3397620-1-badal.nilawar@intel.com>
 <20220909025646.3397620-5-badal.nilawar@intel.com>
 <87k06c577l.wl-ashutosh.dixit@intel.com>
 <1ce34139-0b3f-6709-597f-e55437bccc0d@intel.com>
 <87czc05e53.wl-ashutosh.dixit@intel.com>
 <9a6763df-2ab0-4136-2727-e6d24f039ea3@linux.intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <9a6763df-2ab0-4136-2727-e6d24f039ea3@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0122.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::8) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|SJ1PR11MB6108:EE_
X-MS-Office365-Filtering-Correlation-Id: f121f884-629d-402c-2a2b-08da96376d26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 96nNSgYuMvKThIYlmcnfgxiy6C/tL9xGgcwW2KPYJ8JYPo6XOiO78h+rfDZSvg/JuVLiBJ2HzffhhgJvSGwRziKirNyWi+WEucC3arHP4vQysQDUuqgn971o4Efhaoc5QqGimy8ZnWpRrQ2gyi08bzIYQjYmxx64jKYdd5LHhu05gZ8QBpvNiFXT2/YxCQv9RmwB/I8WurywL1X86I5AQupph6K1z1VMsVOm2xhWPDlPaOj+/Ta7shNR0dJ+hnFb2p4u2/KrbFUwOwAtB4bZP4Y91G0FlXsZc8ivXdgQb2NLv4WNMqLD+QexhM1ZaBew4ZBN4uzp47upWCmzN6NAC22DVUH1ijxO23Oen4z8jUtljbtydoC/F13FZfu+I8UHrpxykso1J7qGvJzv5QfeOnnx3m3DRQiz7W2YXHJ+oBh0Hr6fWHp+9+gnGA/M+N3Lx1ovwr8wtSF6HixHuE6qAgpXftPU1GoDiLQ28/7dDqU2wJa9L5dzbXZu5XA0hsWcdWG9rLHW2kMZj0BzZyZ65TH0yV3wU2dTcL7WPbrj4Ko8+BXWq3U4yIBUABfYhDeav6r445AHE3OuDlGZBKwHTWKznl9O+bz6qUErRpvnJbulmXTfW/9BjmXcEuPp055oRPk/DLsZPDoaFEm2lmuMISpkpAYoUFyBP5/AM5Q4+BOmVz8KxyLHwySgMRzvte1Lcpi0dLT9qzYmgIGoggtHT2nCi97VepHvrlHWi3K4N6zDyOYKCmmGkaHy4My/Hlm5KtrlnNlRnPrc+vUIQ4TynLeuhKVPTYgD8EQBX5i+GBU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(396003)(346002)(39860400002)(366004)(451199015)(83380400001)(82960400001)(8936002)(110136005)(6512007)(38100700002)(26005)(31696002)(8676002)(6636002)(478600001)(6506007)(66946007)(4326008)(86362001)(66476007)(186003)(66556008)(6486002)(53546011)(5660300002)(6666004)(2616005)(36756003)(2906002)(31686004)(316002)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NG5kZmVvOE1IdW5TWDNRNHdoK2w1VnV3RGQ4ZkZ6Q0xtaFhLTEtzbnRCY3dO?=
 =?utf-8?B?UDdxNmkxcGJMbG54aUVOSjBncEFpQ3BLRE15NHNaTmRzQkRKemsrTnkvVnpF?=
 =?utf-8?B?eUMxSkNMM0NmUjd5T05HOEpKcEVvWTUwMXdBeXZ4K3piNlRSajdhak84L09U?=
 =?utf-8?B?MmhSWVV1NHY3aU1GNnFDQkFlcE9TV2JsNUE4M2E0ZFlmQVVCM0QwV0xzaFEz?=
 =?utf-8?B?T1lVWWhoM3I3bThXck15RUJ0ejJqazRnY0JoaDduTmd0RGF4NHlCK2JHa2dy?=
 =?utf-8?B?Z0xtNkQ4V2Q3TUJQZ3V2aTA4QkptOUh0WjRZTWx3QjN1Z0ppTXA1cHp3Wmdi?=
 =?utf-8?B?QTY2M1ZSQzUxQ1ZkcWg3ekF5WWVNRllqYmZZdEVsZ1g3U2FTRTZ5TStHOVBl?=
 =?utf-8?B?SnVnQ3FvcXA4cXBTWFhOMUNOMzhnSVZTOFYrTXY2c05xNGNXazVPUm5UT0tr?=
 =?utf-8?B?RHJ1U2RtcVl2UDRHUG43VHVjUjZ2dDlhcEFYc2Fuak1JT1ltaGlHRzRzenVy?=
 =?utf-8?B?MDlxSXIzWE9QaHYvN282cm5aZS9RK0dVTWdIaEJkV29QdFh1RGxEQm1HREpE?=
 =?utf-8?B?ZXBrTUwyQ2RTbm54YVVDaWlocTNJNmZKSWRzK1pFc0FabUg0UkFCekI4dFln?=
 =?utf-8?B?azRiZEhpekkyTGtQUmFsUS9ieWlUY3VleEZHM2tWY3crT0pJV2preUZZdlVH?=
 =?utf-8?B?dCtzcTk5K1lSU2dSaDdUQ1RiMFJncE1paktaSVRnVGpqWENmMy9FVm9PZktz?=
 =?utf-8?B?VDc0VGtDVWF4bXEwWE9EbDdyaEpFWVNQeEtJYkFURjZsVFFwNlY3dExncUta?=
 =?utf-8?B?WTh2YTFkbE1yQk5VOFVwUTJJWGZidlp1UFFob2RMSmdqRDRuK3FUVHRYNExy?=
 =?utf-8?B?TWNTVEF2eVFFRnNBY25lUTBvOWJDQXROa3J3QmF6bUFSTDBIRnJLSHZxWGtT?=
 =?utf-8?B?aDNpbXdJS3liT3lLM09PaUJPN0JXd0F1S2tNdzQxbGdJYnNmTXA4ZVZrVXhx?=
 =?utf-8?B?NWdCbkhDVTNabnF0cUt0eUpJZDZqdmxQVFluOHE5Y3k3MUZ3aFVGSjZVVmFz?=
 =?utf-8?B?L1hIZlNYd29IYmp4ampuNXNURzdWMWdNV0lPS1VibDVEc0Y0ZXJseHFHNnFn?=
 =?utf-8?B?TDFyRmowUUkrNHNEV3hpR2pSK1hxelpWZXFKQ0x5U2Q1SEtJeEdNM1JJZ2Nn?=
 =?utf-8?B?dDgvdStZMTlpNXlLWkVDblNxbHltQVI0ekk0MGcxRXI2QjR0L2g3QmNjaWIx?=
 =?utf-8?B?bWQwOTdOQUhENEkxUnErU3owSUk2S01xWjhvNkVCN3hOZkIyQks1VzJ0Vm9Q?=
 =?utf-8?B?RzU5dUwxT2ppL3NjdjYrbVhpRmZXSitUMTZGNlJiMEp1R3QvR1JzaENFMGI3?=
 =?utf-8?B?SmdVMjFORkJudDNQdTdIY3M0TExQQ3hWWGk2RElDamF5U1BXR1lMTllydEM2?=
 =?utf-8?B?TGpPaUJIUERPRnZuQXN1dXBHWStoZWpjb3JxV29lcFQrUm4wd2pJRXlEV2tI?=
 =?utf-8?B?bEFlTkJpQ1FadHhlY0lPeGpDUCtrZEVGVU5RSkFRYVZJczFDU2hyVHRQcXdU?=
 =?utf-8?B?NUQ2M3NySFAzL1hzR3pHTnMxREpZKzF4dEdvdTdaclRwUldvZzJuSjhtQURI?=
 =?utf-8?B?dkZnNTByb1J1aDljSWhmWWgxL3ZyMlhEazNsRHgxb0hRenJQRUMvdVc3ek1Y?=
 =?utf-8?B?bEU5aCs1RytHRUlpdU1Qb3RVRldFalYrektrcHE2MXJndjYwejduYVQ1WFJU?=
 =?utf-8?B?dndabU5UQkF2MndLUm1VajZVcU8wZ2tXOWx0TjQwZU5HTXJMMWFBYlJnSFpk?=
 =?utf-8?B?ZDRtY2cwRGszalBGNzIxT2lJejh1RG9VR1FMWHV6eFlFVUtUdS9BZmFYMkJa?=
 =?utf-8?B?ODA3eDlOR3VNRzBsa0ZvTEFsUFArZXZSVDJlSDI4QzRjcGl4dWRiUTg1MFlv?=
 =?utf-8?B?c2dXTm5xV1VLK2ZnQjBraGcyK0dMelRxcm5FcnpXRUFMZm13N3h3V21rWG92?=
 =?utf-8?B?a3JVZStSeCszUW1Da1I3TGNhRXZjRU1qeTFLK0VyVFMyaFNrdGpOT0FlK1RK?=
 =?utf-8?B?T0tHR05Dck1MVkFlYkhRL2s3a00zVkJDSkgzRXJMRWxaMVlibWcreGw4WlU3?=
 =?utf-8?B?dHI2NE5SdGluZGhabGZkWElqRk5XYkJET2wxUGFtWEJoeVpZOHZqMk55Ykh2?=
 =?utf-8?B?OGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f121f884-629d-402c-2a2b-08da96376d26
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 09:56:42.8202 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6o5aCszp7YVgfCtQv9QHq1K8+UB8AEJQet6ixJ5Bc7zgDNdhN+dbXkkEebBi53k7zQGKEaAkA4iJC16VxHH/4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6108
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Use GEN12 RPSTAT register
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



On 13-09-2022 13:17, Tvrtko Ursulin wrote:
> 
> On 13/09/2022 01:09, Dixit, Ashutosh wrote:
>> On Mon, 12 Sep 2022 04:29:38 -0700, Nilawar, Badal wrote:
>>>
>>>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c 
>>>>> b/drivers/gpu/drm/i915/i915_pmu.c
>>>>> index 958b37123bf1..a24704ec2c18 100644
>>>>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>>>>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>>>>> @@ -371,7 +371,6 @@ static void
>>>>>    frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>>>>    {
>>>>>     struct drm_i915_private *i915 = gt->i915;
>>>>> -    struct intel_uncore *uncore = gt->uncore;
>>>>>     struct i915_pmu *pmu = &i915->pmu;
>>>>>     struct intel_rps *rps = &gt->rps;
>>>>>
>>>>> @@ -394,7 +393,7 @@ frequency_sample(struct intel_gt *gt, unsigned 
>>>>> int period_ns)
>>>>>          * case we assume the system is running at the intended
>>>>>          * frequency. Fortunately, the read should rarely fail!
>>>>>          */
>>>>> -        val = intel_uncore_read_fw(uncore, GEN6_RPSTAT1);
>>>>> +        val = intel_rps_read_rpstat(rps);
>>>>
>>>> Hmm, we got rid of _fw which the comment above refers to. Maybe we 
>>>> need a
>>>> fw flag to intel_rps_read_rpstat?
>>>
>>> Above function before reading rpstat it checks if gt is awake.
>>
>> Ok, so you are referring to intel_gt_pm_get_if_awake check in 
>> frequency_sample.
>>
>>> So when gt is awake shouldn't matter if we read GEN6_RPSTAT1 with
>>> forcewake.In that case we can remove above comment.  Let me know your
>>> thoughts on this.
>>
>> I am not entirely sure about this. For example in c1c82d267ae8
>> intel_uncore_read_fw was introduced with the same 
>> intel_gt_pm_get_if_awake
>> check. So this would mean even if gt is awake not taking forcewake 
>> makes a
>> difference. The same code pattern was retained in b66ecd0438bf. Maybe 
>> it's
>> because there are no locks?
> 
> Its about power. As c1c82d267ae8 ("drm/i915/pmu: Cheat when reading the 
> actual frequency to avoid fw") explains the _fw variant is to avoid 
> preventing RC6, and so increased GPU power draw, just because someone 
> has PMU open. (Because of the 200Hz sampling timer that is needed for 
> PMU frequency reporting.)
> 
>> Under the circumstances I think we could do one of two things:
>> 1. If we want to drop _fw, we should do it as a separate patch with 
>> its own
>>     justification so it can be reviewed separately.
>> 2. Otherwise as I mentioned we should retain the _fw and add a fw flag to
>>     intel_rps_read_rpstat.
> 
> Agreed. Or instead of the flag, the usual pattern of having 
> intel_rps_read_rpstat_fw and make intel_rps_read_rpsstat get the forcewake.
> 
> Also, may I ask, this patch is in the MTL enablement series but the 
> commit message and patch content seem like it is fixing a wider Gen12 
> issue? What is the extent of incorrect behaviour without it? Should it 
> be tagged for stable for first Tigerlake supporting kernel?
GEN6_RPSTAT1(0xa01c) and GEN12_RPSTAT1(0x1381b4) both are supported by 
gen12 and above. The difference between two is GEN6_RPSTAT1 falls under 
RENDER forcewake domain and GEN12_RPSTAT1 does not require forcewake to 
access. GEN12_RPSTAT1 is punit register and when GT is in RC6 it will 
give frequency as 0.

Reason for clubbing this patch with MTL series is due to common function 
intel_rps_read_rpstat. I think I should send this patch in separate 
series.

Regards,
Badal
> 
> Regards,
> 
> Tvrtko
