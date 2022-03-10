Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACFC4D3EA9
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 02:18:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D6C10E733;
	Thu, 10 Mar 2022 01:18:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A41D410E732
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 01:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646875088; x=1678411088;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3Jgemg3IltrOznLox7+4MWf2x0MYsS4qXNR7lpEyF4A=;
 b=fTR25jh7SUdBnyvro/JGqoUfUFa3mK9omSpR+LFYeSGr1l59mmcem8Yb
 sGHmsZATng3R1JMZp7uZlWd2Ap+d1gPjLoccBnYZaNfSHVwvPuB95kpSO
 L/WKIRnt8kpwNK7c+y+Fs3lYEGVkdbpwG+v+os0jnTGYKSen1aKu4qkMl
 cJ04zRv8S2RnK8ByY7MVtN7tpjA2qMrJTvuS0yyXVFlSxDBPAsRMSDwLU
 x0HBycEcwKOMxeodgUivaFM62tQ1PxJSqpbI7gjqd7v/08p2vtYemXPRI
 QM9nBlIRI0ZcUBdRG42dai2cqd1bDAaK9hTxN/9BuaqDm3d007h3wuOew w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="237299510"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="237299510"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 17:18:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="538247053"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 09 Mar 2022 17:18:07 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 17:18:07 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 9 Mar 2022 17:18:06 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 9 Mar 2022 17:18:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CfwWi/SfJrtVZ9UPfV/zUgap5tzvKbQWAWfNVIiIedRlWV+VBznaybTVq30aQRCkvvvXFc0oqI/wmAF1FJUFr0Bls+0EEeCWQaMCHV+nm6nJ653OvThlpLAbL7jqz7vCzyGe9cihQatw6ork8NiaRP1OYesQWj4d74RIYWKk1YezERmHUcBjeyLFsqUGC9fTy2eqs3rGECqMOWco0s3dihMr3azGBrKl82y7tOGvmyXOFwUOv4lRGZEpYxgNPhbMwzwT3NH/i7SrqSJpEFR4K+hYqS7+mD/uTZTT7cAjZgEmjcpSxtyMsGcGMPcB5RW9rJY2fDwSbQ3tmzKxYwicqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nZozgeWMRjbIZtGP+1/nHoM7Yvp1B4EoDmb7YeadF5M=;
 b=cmGh3KdN87U1QKN5bO8zasy5Mz+ZWXIBDXEyVkCLmt5haUCRAeHze6q3JyyNP+zziK+SV0c7l78goIUGkSLLMio3/jv+9GoTQExUUNBX9fvhzYo/dk8K2jNNqyysnWStKY68S0ZWILngaohjdZxNEjGZAdrIKpBqetnnV01CQF1qvVis2efDFj7HOs5mfnqd/o3KfFslE5QJKB0ZACGrv+9x70KrnN4RK2RdbDhed6oEqSCdo2GH4KpHN658wzTCefwxVMsjwKCbPFQwGrt4r40VLFn8RpsYCVKr1AO3Kz0RsoQj0/siGZGEIRTj2MPyegXBdyld3x/0uM88Tm6wKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN6PR11MB3908.namprd11.prod.outlook.com (2603:10b6:405:7d::13)
 by BN6PR11MB1491.namprd11.prod.outlook.com (2603:10b6:405:8::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.17; Thu, 10 Mar
 2022 01:18:04 +0000
Received: from BN6PR11MB3908.namprd11.prod.outlook.com
 ([fe80::7d1a:9f8d:abdd:9c2]) by BN6PR11MB3908.namprd11.prod.outlook.com
 ([fe80::7d1a:9f8d:abdd:9c2%6]) with mapi id 15.20.5038.027; Thu, 10 Mar 2022
 01:18:04 +0000
Message-ID: <07d59aa2-2d3c-c9b6-f4c1-359e623934b8@intel.com>
Date: Wed, 9 Mar 2022 17:18:00 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.6.2
Content-Language: en-GB
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220226062732.747531-1-alan.previn.teres.alexis@intel.com>
 <20220226062732.747531-2-alan.previn.teres.alexis@intel.com>
 <c4976a17-1254-c893-6501-e6fa6620a855@intel.com>
 <dc58f444-12f6-6a33-1be7-f0fa004d4b93@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <dc58f444-12f6-6a33-1be7-f0fa004d4b93@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MWHPR20CA0033.namprd20.prod.outlook.com
 (2603:10b6:300:ed::19) To BN6PR11MB3908.namprd11.prod.outlook.com
 (2603:10b6:405:7d::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d96efc1b-e1ae-4b4a-9408-08da0233d374
X-MS-TrafficTypeDiagnostic: BN6PR11MB1491:EE_
X-Microsoft-Antispam-PRVS: <BN6PR11MB1491BC2D986AE2C63FEF0648BD0B9@BN6PR11MB1491.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ca4zwNooFR3wY8ywHqtGqxOD0mA78rxINQ5N3IeW6FcDHQZEahI9DV8ApeXttxOPywqgWAmYDJL+RZKnv8XohvZBhzZ/0uWbmywks3F/Zyx/XCwF1rAYZbEjv9MtJqGr1UZejOk9BCm97YuspdlYU6kKjXP50V5lhXwfsAdLuM6nMAi4B2C6NQgcu1ujdGKpIxYp0i77nzLOwfsRCW3JfJwBnWqbfjegfHGhlojWumCQqbBRfrA9sfSbPcAVQOk/y/Xb9yMuQ5ZRzEYyByzFMERC3KbiLkfkB2m9FuTvA6KAsdSkPH8ZSJslARkPhGFOhlyZasX/bezk0bHGGXkAwqVw078qThxOSjObKpxjb7eecR5eH5L9woi34UMm6E3qSpgXP/z/LRaNUpotLTg06tvS/O02Du+IzM1e//1Dun0rcSWmT798qJkOecP9mF438PVoOrE16h9BKZU0TN2IzJgBSgOiMyBfbtVFuJ9GY6GDtHuzmCX/URxtHWMkBkBgb/MZnklCh/YjZiX6kBVJ5kd3e0JGM3KdgBPUkXmEnAQdM6fVXh8XDjD8Kw9aUXt9cyeVn5vsBjY29i9vkLhrRqIpK+XHjmDURKHAilmzNduli3xQv4/oKdrJV4qogv4G2XflLahcRHhIQiMs249cU4EmCPAg9cvpgmilqfX7/mkSiy1HOS2Ko9BRTHoOalyvCW2oB4MllZZHeoaeO1twJzo+wR82RQG2ZLvPMABw12CZnPGezNehp42xXFLsWMt3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB3908.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66476007)(6666004)(66946007)(66556008)(316002)(6506007)(5660300002)(6486002)(83380400001)(8676002)(26005)(31696002)(186003)(2616005)(86362001)(31686004)(8936002)(38100700002)(36756003)(82960400001)(508600001)(53546011)(6512007)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZjNBbllFRzlTS2xvd0J1dit0N1JIUUJCbUdGVHpURzBWcXRlam94N1F4OSt0?=
 =?utf-8?B?NmNqNXJ6d2dESCtpZ0cvMDNSaFRWQkllb3BkL3l2QUVjVXlQTVdwSkpDQ09T?=
 =?utf-8?B?My9tYms5ZDdSRUNPWGVXME8vUlVqWDN4VGZvWjhock42VkY3ZGR0bzRURm92?=
 =?utf-8?B?TmZsN3hOeGpYQisrQTU4SG1kQUJycVV6MFhHVUFhUWw2bXN3T053Q01mbEsv?=
 =?utf-8?B?QnFCZ2ZsSlhjN2FlZXNWNXdMbUxSYmFBelA1YzE2OEtzYkFBeERPZDd6MkUw?=
 =?utf-8?B?S3pGVlNDUkF3YnhyUXNoU3RsZnhDL3FuVTVnRFZkR2xpc29zRUJkTnFYNjFL?=
 =?utf-8?B?ZXJiZ2tDVytaa2hCZXRMK0QzMDNGdWhLaWw4a0RtRy9MMmNnZUQyUmNUQ1Fk?=
 =?utf-8?B?SnFpemlMUGNrU254OFVzTXFGNEhjVTZMUTFQelpqdjVLTm9iT2N0NFFGYjdr?=
 =?utf-8?B?ditRTFRlSmJBK0k4dHdHU0FvYXBzd2dOOUY2dWZFZS90eGlva3hMWW5YOEhw?=
 =?utf-8?B?ZWdUZnB4L2JicXA4eTNFRmx2QmxrR24xeFpoQ0JnVjR2MW5ZMkJyQk9JZzlD?=
 =?utf-8?B?MDc4NjMwQTJqOStSR2JtSWxrTFBmWHhjOTR4eE53NXcwNm1JQWsva01YZXp1?=
 =?utf-8?B?M0lNeGQwK1dHSlVmVURwZ2tsSUFvMWtFMzJSeWh6N0NwT0FvTXJGRmFPbUV1?=
 =?utf-8?B?SHVQV0ZjL0Z4Y0VwYThmcGdmcVdHSUlrRkZiY3VNaTN0K2NtK3dPOG9vdzdC?=
 =?utf-8?B?N3lsdjR1OXhMOGswWGRkNEkwT0pZcXVESDh0ZzIvYkx5aFdsNU9MSEFIUWhS?=
 =?utf-8?B?NXZOTmQ2aHljRktnakVKMllWMjZ1enpOaDRxRDBMTE0wUkhXZ0JNVVpWb1Bx?=
 =?utf-8?B?MnBadEl0N1hiMGxVWjlQeTV6YU9hMTBSUE9XMkQzNWNFWGs1ZFhKcGZYeGRM?=
 =?utf-8?B?a3FweGJzZGdsRloyMCs3YjJqY2FhSmpXSXRDYjNnTmVUVmROWVZMSmhOWDl2?=
 =?utf-8?B?VHRDZXgreDVYZ0RDZnpOTHNTS3FnNU9ySGNEZDhLeU1jMURuMVNZZndVTWlZ?=
 =?utf-8?B?R0VOK3IvQUZvL0ZsSUphSXBQeTNQekNJNFVLTVpab1NsaVBKNE1NQmtrVDFJ?=
 =?utf-8?B?eVNlaGM0M1hyMjlwbDVWaEZKN252eFlncUVKSGk0d3VIQ3ZTaEdIVVpmbU1t?=
 =?utf-8?B?bWYzQUFjd3dlaThPeDRLLzZXUjZFUGp0WXJ0a1Z3a1FtMDJlVkhVUGNKcFpY?=
 =?utf-8?B?eXMyNlovSm5iNHVHbUZRK1RBWkwzVkY2TVVFeXBxWTIybXpnQWZIU2N5NzR3?=
 =?utf-8?B?WjUrdUtzbFdBS2liMGJCV1R5Q05vTG51dW9JcXhKeTJ6K2JsblRvczNpUjFi?=
 =?utf-8?B?TzVMN1NWTEdackRCSG5ZWXZwN3VGMk1vRHNnSVJpam12UFYyNC9ZMGM1R1hi?=
 =?utf-8?B?bVcxcHloQWRHVy9WL2UzeVZBSlpuQTBPNFF5emp3aEdIVWFnZ0txNXk0N3B5?=
 =?utf-8?B?V1hYSmptU1dzZW1HME9mRkcxWDA3akdEcjZVN29wYmMzTjZHQzBlVzljTi8v?=
 =?utf-8?B?Z2VZRXZNK0pTejZxWWhaeWpDTDRxckpXbFNldSs3L0xBYUVXQ1V1L0JLQmFl?=
 =?utf-8?B?OFdVRXhlVEhLQUNxT2svT0hNNDQ3ZFZyYVA4Ymo5cXlZQVNZSExNVFpEbXRK?=
 =?utf-8?B?cDhvb08wbGZ1OFM1N2s0eHdTMlNmRGFNZlZhYndGclJ6dEtnK01pUEdWejFm?=
 =?utf-8?B?KzJiV3duTjA2WmdjZ2hlc2UxbERlL3Q2bXZKSG13Zlg0SEdtZEdmUnd5Wml4?=
 =?utf-8?B?TGJqTjZpSXI3T0l1bi95dzNoY1FocHNjeVZITkxldmNaRXFEb3RLMHRvbjBx?=
 =?utf-8?B?REFkeVpQMFZNeWRHUUZHWXU2VFdZcnRvbFFLejVnNzlKdEREWjVHUVdWUUU5?=
 =?utf-8?B?aDlHNllzR2dCZHhpSVpraC8rSE1rL3ZDakorV0wxQUNENzc3MnVPYUhVOVNk?=
 =?utf-8?B?MWlEVFA0SFVpZHRwcEFMa0hDdElmR1I1a2hOeWZVYU43UmtGdFNhcmxOZFY4?=
 =?utf-8?B?QnpyZ3JGOGR4SWVaZGZMQlgzZXJqU1FrQmtEdTBMd2ZFTUw5K3NDSGRseDZr?=
 =?utf-8?B?bGVxWjBuL1h6TlF0d0p3RXNCVldob2NuY1M1QWRodGdqc2xEd2orMTZTSDRW?=
 =?utf-8?B?ZU5QdUpoY0gwTVBHMThnNVZEbkpvYk5UekV6eHFDSVFHRnBYV3hVYUdMRU9t?=
 =?utf-8?Q?R7NCQ0rAruSMbAvZAdRRZgwfUXBTJ8CRo/V5vCCEnE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d96efc1b-e1ae-4b4a-9408-08da0233d374
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB3908.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2022 01:18:04.3066 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TR/NQ3pVmy59ZafpmUr4wDh+RxN/htwPnokdRTMWGxK07zOtHxpXS4z/JyysvGEh97q+Zovtx+XcXCtC4WEWdTvKY3Z3PmGjC2Hqjr96JM0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1491
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/reset: Fix error_state_read
 ptr + offset use
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

On 3/8/2022 11:47, Teres Alexis, Alan Previn wrote:
> On 3/1/2022 1:37 PM, John Harrison wrote:
>> On 2/25/2022 22:27, Alan Previn wrote:
>>> ...
>>> This fixes a kernel page fault can happen when
>>> multiple tests are running concurrently in a loop
>>> and one is producing engine resets and consuming
>>> the i915 error_state dump while the other is
>>> forcing full GT resets. (takes a while to trigger).
>> Does need a fixes tag given that it is fixing a bug in an earlier 
>> patch. Especially when it is a kernel BUG.
>> E.g.:
>> 13:23> dim fixes 0e39037b31655
>> Fixes: 0e39037b3165 ("drm/i915: Cache the error string")
>>
> okay, will add that.
>
> diff --git a/drivers/gpu/drm/i915/i915_sysfs.c 
> b/drivers/gpu/drm/i915/i915_sysfs.c
>>> index a4d1759375b9..c40e51298066 100644
>>> --- a/drivers/gpu/drm/i915/i915_sysfs.c
>>> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
>>> @@ -432,7 +432,7 @@ static ssize_t error_state_read(struct file 
>>> *filp, struct kobject *kobj,
>>>       struct device *kdev = kobj_to_dev(kobj);
>>>       struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
>>>       struct i915_gpu_coredump *gpu;
>>> -    ssize_t ret;
>>> +    ssize_t ret = 0;
>>>         gpu = i915_first_error_state(i915);
>>>       if (IS_ERR(gpu)) {
>>> @@ -444,8 +444,10 @@ static ssize_t error_state_read(struct file 
>>> *filp, struct kobject *kobj,
>>>           const char *str = "No error state collected\n";
>>>           size_t len = strlen(str);
>>>   -        ret = min_t(size_t, count, len - off);
>>> -        memcpy(buf, str + off, ret);
>>> +        if (off < len) {
>>> +            ret = min_t(size_t, count, len - off);
>>> +            memcpy(buf, str + off, ret);
>>> +        }
>> So the problem is that the error dump disappeared while it was being 
>> read? That seems like it cause more problems than just this 
>> out-of-range access. E.g. what if the dump was freed and a new one 
>> created? The entity doing the partial reads would end up with half of 
>> one dump and half of the next.
>>
>> I think we should at least add a FIXME comment to the code that fast 
>> recycling dumps could cause inconsistent sysfs reads.
>>
>> I guess you could do something like add a unique id to the gpu 
>> coredump structure. Then, when a partial sysfs read occurs starting 
>> at zero (i.e. a new read), take a note of the id somewhere (e.g. 
>> inside the i915 structure). When the next non-zero read comes in, 
>> compare the save id with the current coredump's id and return an 
>> error if there is a mis-match.
>>
>> Not sure if this would be viewed as an important enough problem to be 
>> worth fixing. I'd be happy with just a FIXME comment for now.
> For now I shall add a FIXME additional checks might impact IGT's that 
> currently dump and check the error state. I would assume with that 
> additional check in kernel, we would need to return a specific error 
> value like -ENODATA or -ENOLINK and handle it accordingly in the igt.
If an an extra check against returning invalid data affects an existing 
IGT then that IGT is already broken. The check would to prevent userland 
reading the first half of one capture and then getting the second half 
of a completely different one. If that is already happening then the 
returned data is meaningless gibberish and even if the IGT says it is 
passing, it really isn't.


>>
>> I would also change the test to be 'if (off)' rather than 'if (off < 
>> len)'. Technically, the user could have read the first 10 bytes of a 
>> coredump and then gets "tate collected\n" as the remainder, for 
>> example. If we ensure that 'off' is zero then we know that this is a 
>> fresh read from scratch.
>>
>> John.
>>
> I'm a little confused, did u mean: in the case we dont have a 
> gpu-state to report, and then the user offset is zero (i.e. "if 
> (!off)" ) then we copy the string vs if we dont have a gpu-state to 
> report and the user-offset is non-zero, then we return an error (like 
> the -ENOLINK?). If thats what you meant, then it does mean we are 
> assuming that (in the case we dont have a gpu-state) the user will 
> never come in with a first-time-read where the user's buffer size of 
> less than the string length and be expected continue to read the rest 
> of the string-length. This i guess is okay since even 6 chars are 
> enough to say "No err".  :)
Sorry, yes. That was meant to say 'if (!off)'.

Hmm, I guess technically the user could be issuing single byte reads. 
User's can be evil.

Okay. Maybe just add a FIXME about needing to check for 
changed/missing/new error state since last read if the offset is 
non-zero and otherwise leave it as is.

John.


>>>       }
>>>         return ret;
>>

