Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5365090BF
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 21:51:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFDFD10F28B;
	Wed, 20 Apr 2022 19:51:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CF2C10F28A
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 19:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650484307; x=1682020307;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Po/euIAFlfVL4Pc2ro6vGRzl7Fq6p1Tgiod6AKgwGo0=;
 b=kNgdcD+w5GzVFy2k8wk6ZEh9VRe/WJa+TF+pv+yFno/3zLcsWcRisslc
 PCMeo5hxqVKQ7G6tklb/BcjbQOuwxgmSTsnxrInaPxr9thPimBHXrgVyY
 5L/h8Z6as/Ukzi3K8VhH2g09oiAuxpmNTnx4WVLcinTnbG/2OUraqQIk8
 ZLOi4iAq+MICJc5KbeirLs4NW7XV03d5+wdRXAOBMgK92XQObJUavpuF3
 d7ED5+Tw2zkDwuxttsJ3l+2QK6wZ1TXgF7C3UhK9z9fcRpvPF7zoHZv8l
 PZeE71gc6zURXdo0rLg0h6mhGIWumAAgsZkQDQ9ggyaUqkpBG6/sBzOcN w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="350589874"
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="350589874"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 12:51:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="532123440"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 20 Apr 2022 12:51:46 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Apr 2022 12:51:46 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Apr 2022 12:51:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 20 Apr 2022 12:51:45 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Apr 2022 12:51:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bohg1ZvuRVmg8iNFJkSukByIoKML6EW4uN+enTmtRRlysZG+62ymltfsL4xHXp6tTaEA1Ps50BY9oDMgoWc7h8tTplfiiVSQdjZSjtd0CPZVF6INlUyixbobEa0Cgit5lTeUhADbDwWXjzCFQ9Tsdidkhn36E5RnoHS+xMqTJcW/jEvn/tpLYQPWphzHzQc8rh4tM4qtu6Z85cIivzmyitN2fR14WKVrYc71iXs19op10VJMs/pCWU9dw4dPSoilCrb/Ni472dhAnaiRT976LJht4KY/YAKvia84R7Swv3QEVABfiEWxdIS+RbFCKCYWqC3AHwrWus6klbLQ8z8hGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w/vhdnmHFbEu4cCuUnL2jU36wpA5rz030Ju5Hrfb7SU=;
 b=PFwRPSJ4Ri7QgTX2J4pOesPC/ZDg0CnVCoMRIR3CbXSMJlGt4vbdWu/MA0QF2hhLHggdHWL05DJbIv1iEm8tW7JQMckkZwHfvEBkc0ZfJyA/ODpbKaa+QOjAfVlVfSTAS+orinwA0X5fUbkxfL5meZlIpP4G+NZ5GGEcBRiOb5wcvPb409iRFRMGXLktgURm1mimbfGLw3d3xib2iPTlUJ60Obrrpops3qoWUjjMSvR81Ic2wLW9aKvcUvScAaenYsXbqwwmON+BpukFWCicCz6GU2vpBYKDfL+E/OxFKuYolqU6wov+mgbn8D13e/RYS/S9RQ68WSwjIvT4aQUmZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3180.namprd11.prod.outlook.com (2603:10b6:5:9::13) by
 BYAPR11MB3288.namprd11.prod.outlook.com (2603:10b6:a03:7e::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5164.20; Wed, 20 Apr 2022 19:51:42 +0000
Received: from DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871]) by DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871%5]) with mapi id 15.20.5164.025; Wed, 20 Apr 2022
 19:51:42 +0000
Message-ID: <d16ba36a-cc23-6bdd-803a-f2bb35dac75d@intel.com>
Date: Wed, 20 Apr 2022 21:51:38 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.8.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
 <cover.1650430271.git.ashutosh.dixit@intel.com>
 <9ed5af1177ad08c7c2d9c5d9b32ab0154dbd950f.1650430271.git.ashutosh.dixit@intel.com>
 <1339a2be-5fd0-cf65-d361-06c60d938ce5@intel.com>
 <87levzag3a.wl-ashutosh.dixit@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <87levzag3a.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS8PR04CA0101.eurprd04.prod.outlook.com
 (2603:10a6:20b:31e::16) To DM6PR11MB3180.namprd11.prod.outlook.com
 (2603:10b6:5:9::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a895893e-5795-4665-0b34-08da2307310d
X-MS-TrafficTypeDiagnostic: BYAPR11MB3288:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BYAPR11MB3288FB304EBA1AB4B2EA1354EBF59@BYAPR11MB3288.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qIQq3GLP2YdeLpHPNkGsVZ4TEEVD0p7XYHBYdMEX+F69Mu3t40xZ0ehbW0/1w3UM6N5sm7V7Hgj70VgPK9/vbCJmIV8z0XsPdcef0MKqoXqDE6Z/Ifzso8zwblQoJ/1JrT/zi6gx8+mmybBbYBUvIwGbiVlD59qSpcGeUwTx9uF7v1EoU+VBgagIXWdmruo4Y/qOjbzfgsspWYzo0KV+/eYIn/YK/RyE49Zx6dPndcz0719MhQhQX2JlWSzVshfjz5EdkjZ6/T6po9w14bksLlRxXV28Hoc+qBoYUfoS/aG1hsVT3M9KBeqCy86zTArdGv+tpaMTSwC0dAPURRupS+9xmPRZ09N54wT8NG2zU821LhOLR5AST6g6B09BL0ElhO5dN905qq8HyJpVxIDMNL9a0Dls4DwySlPmk1Jie2KKbKjN0Zxe7Az1ZXxI1iM+fr8GR0gNhxbhbfBHNmMM6yPx/eaJ/Xql2+kponyWE5cYDLaoKVkG0IKH6KtCg3rQJu8OaNdcL/FkofThxkIc/FfCj4a2aXP2GnS+9MBNoYM+5lCchdaOgzX3gpVCkmixA+4PgDXEzcDel6WdXjNsAZFEuGR77pGz64o5sSiiP8gQPwMEyYvt7KaO6Otk1Kxj0JlWq+WsmvGgYifEf7xj99YPeFl3ufJ2F5YGgeDpEJuMixfwmHGGaIqh5Xuw2qdb+xoNHRGmW3+3fghSZ+uU1FYLn5/jw0FRY+TflCA4YMA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(54906003)(86362001)(8676002)(2906002)(31686004)(44832011)(316002)(6512007)(508600001)(82960400001)(26005)(31696002)(6486002)(83380400001)(36916002)(4326008)(6862004)(36756003)(8936002)(37006003)(6636002)(66476007)(66556008)(66946007)(38100700002)(186003)(53546011)(2616005)(5660300002)(6666004)(6506007)(107886003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHRrVm1wdlR0QW5hYkR0R1V4K1BNejlHZW1KMXA1UlRGRlhxUE5lYWYrR0J2?=
 =?utf-8?B?S1FhUzlad0hmblo2Zkhyc09mWDI2Q0JaWTlKNVdJbG5qeWNyOWlibWpBeHJh?=
 =?utf-8?B?ZTd5N3Frc0xmWTRqU0hCeG14N0FkczBGdVFabktrK0svVUhCNkE3c0pEM3pH?=
 =?utf-8?B?bUdKV3FuMFVBTXNRbEZGMHlIMWc3c0ltTS8rK1FlSk1BeFRuZFZpNitCMXcw?=
 =?utf-8?B?OXRYdDhwalg2QnZkWFppOEFTWTNEM1NXZmNLRlBZaSt1a0hlMlhMSGJwMkg0?=
 =?utf-8?B?b2h2Nkw3ZTU5UC9TaW1odjJRazRqUVl4ODE2bUI2d1lhM2pvaUtJNm9uOE9T?=
 =?utf-8?B?MkhLdkNkbEUzcVN6SkkxeDJTcHVsSUJDZEZOQmdMQmV5UHFsaEZwbk5YdENQ?=
 =?utf-8?B?WUNCS1JNUXlVT2gzS01wZW03SjNkcGRnQTRBUVNic3JKOWpsYWl6bzNWazBC?=
 =?utf-8?B?L1BlKzBIZjdLMWM4UEJEVXUvZXhCK1o0OUoyTmlCckM5dGN5Zy9JQUgvYktt?=
 =?utf-8?B?R2ZwejdOdFhmYnM1YXhUMm1CVEhEcHBsNzgzMWlFd3Fsdk1oR2liSURuY01i?=
 =?utf-8?B?NVV5N1VmYmZvYlRoK0pBUW5YaEFnK1A5eHNGbTFCYW1EU1A1SlZnUWMvK0Yv?=
 =?utf-8?B?WTZSMFI2UHJCM2tZN2VaTXVxTFk3L0dlSUpscVN5VEI4OWFNSWkwQkFqdEEx?=
 =?utf-8?B?VU0zM2EyV0tPQ2Z2eHR4SmIwWnh5ZndnNlFTYkZIcTViaklIWC9PN0Vucnlx?=
 =?utf-8?B?K0pNWWRla0pnMCtxTTMyR3U4V1M3WWZtYWlIWmc1d0pOaXJXaGVoSjEyMWU1?=
 =?utf-8?B?M3RvNGR6Tm9nS2VxOFdCelMvblVGbkcxcnc0dVVrVUJ1TG9ZZDZrbFc2Znpp?=
 =?utf-8?B?M1BkWGQ3L25PMHJxem4yKzNScTZmRXhZVEpXRWpLM1UzVW9aUHE4elJqZG80?=
 =?utf-8?B?bktWbG5jc3Z2a1Fud3NXcmFOWFpVRWRiK3BhZDgvSXU4dHN3azhTKzRIU1VJ?=
 =?utf-8?B?MnFIaDNuYXVta1RZMkRKYm9QYXFQNnQ3Ujk2TVQyY2w4NGdLc21vNGQ5aHND?=
 =?utf-8?B?VHZDUHIvYlVseWdac3BoQzhPVVJoR20wS2ZMTmFNYVRJMldheCtuQXM0T0M0?=
 =?utf-8?B?cHVvZHBwVVRhUXJRaFRveHR3azhEd1VpcHIvOHRvTWZDekNESFFtVUlseS9B?=
 =?utf-8?B?clFSU1JFaWpTVTdNcjZBNlI5U1NoVGVXMURFUlQ3Q0VHbkNvZWRNTFJHNFJQ?=
 =?utf-8?B?ZHBrTmRYUEdRRTI0d1hWZkVjeXBZdFZ3aDJyV1BwTWYwT01ZZnloRllTSkNq?=
 =?utf-8?B?UHptQVl3SmxNeUtXL3JLUzdyNTNadEtYd0t2bitaUVBhMnhoNDNDV1JFM2Y0?=
 =?utf-8?B?S3M0M3RYdmQyTGtnbnIwZEl1QzU1VzNLL3lRV2VPMU5uai8zWGZncGRidUdl?=
 =?utf-8?B?dDJYaDlxT3grOHB0eDhwU1VVaG9Ec211VFAzZzhidDVMRHlaZ1lraWdEZzNq?=
 =?utf-8?B?ZnRXdmhaOFQ1UDR3MXhxcTd6NUdUeHVhYXF0SEtWUXVuQ1cyWnJDeHkxR2RR?=
 =?utf-8?B?NXdCeDB0d0xvWk9kdy82MFZ2Q1djTFFPMUV3cUxJMHFyZlhZV3ZEVm95dFR4?=
 =?utf-8?B?SEVNdUF2V2Y2TC9UZExEaDZZN0JNYkJNdGEzQlFhSzgvSjFuYlRtclZYR0Fm?=
 =?utf-8?B?YzhNSXI5cm5JZCt3aXFsMVdYVytkZWlRQkgxZ0pDdHNzKzZLTDJOUHVGYmh1?=
 =?utf-8?B?VGNVSktlRmFWdWptWXM3MnBaS3FnS2hCdmthNXhSSVUweTRTRTBnV21jU3Zh?=
 =?utf-8?B?cis0aDJzd1R3bVBjeXlmRFpUS205TFVSTDNPbWJqSlpCYkJFbzlINjZuay9x?=
 =?utf-8?B?bU9rNjRSeGFaTDFEa1hSNEkrZG9PdFB0ZzdscEZWaGFXVjZJZXk0ZlhEeWxK?=
 =?utf-8?B?Zm95SVBVL2FBSG5jblY5eWRFNHQwMUZCZVZyNlpIUm14QUhsK2xKZUt5eWth?=
 =?utf-8?B?V2tGVkdpMGhqVi9qelIwYkZmMm5sYUE3M2NBb3NaY2JwZUd0bkJlUzI1QjNZ?=
 =?utf-8?B?cTJMZUVtL1lBZU00SGY0ZlBMZFJ2Z0FuL1VJUkhSY0RtZGF4bmtpcUIrbDR0?=
 =?utf-8?B?YlUxSjB5WVZMaEw2aWliZGVHZnBOb0xmNlBEcHVUa2l0YUpaY0h1akpFcGh4?=
 =?utf-8?B?V1BuQUt2UStpdGgxb0hCU3VNNk9VVzR4dXZlbWVzck45eW15elRCUm5OZVBL?=
 =?utf-8?B?dUpiZFZNWUFQMWlRNmFXcVhDWEIyVjR5VHB6ZUlCQnF4TkVFUkx3UXBFR3lp?=
 =?utf-8?B?UkU4djFUeEtKS1NRV0NqUHh1aWZOWDBRYW12OXlrdDczbnBBSkcyY2tNUnd3?=
 =?utf-8?Q?lpl7J1FZ+BuAF6L0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a895893e-5795-4665-0b34-08da2307310d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2022 19:51:42.3996 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g+2FYewBlI1PmGbQki7kO3yoUwWsoUJo2qgQC01iM8s6vJfvfmFCSUx24za2PvyiqmAPCAs1BAUE1PDKf5elwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3288
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/gt: Fix memory leaks in per-gt
 sysfs
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
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 20.04.2022 18:12, Dixit, Ashutosh wrote:
> On Wed, 20 Apr 2022 05:17:57 -0700, Andrzej Hajda wrote:
>> Hi Ashutosh,
> Hi Andrzej,
>
>> On 20.04.2022 07:21, Ashutosh Dixit wrote:
>>> All kmalloc'd kobjects need a kobject_put() to free memory. For example in
>>> previous code, kobj_gt_release() never gets called. The requirement of
>>> kobject_put() now results in a slightly different code organization.
>>>
>>> Cc: Andi Shyti <andi.shyti@intel.com>
>>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Fixes: b770bcfae9ad ("drm/i915/gt: create per-tile sysfs interface")
> /snip/
>
>>> +void intel_gt_sysfs_unregister(struct intel_gt *gt)
>>> +{
>>> +	kobject_put(&gt->sysfs_gtn);
>>> +}
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
>>> index 9471b26752cf..a99aa7e8b01a 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
>>> @@ -13,11 +13,6 @@
>>>      struct intel_gt;
>>>    -struct kobj_gt {
>>> -	struct kobject base;
>>> -	struct intel_gt *gt;
>>> -};
>>> -
>>>    bool is_object_gt(struct kobject *kobj);
>>>      struct drm_i915_private *kobj_to_i915(struct kobject *kobj);
>>> @@ -28,6 +23,7 @@ intel_gt_create_kobj(struct intel_gt *gt,
>>> 		     const char *name);
>>>      void intel_gt_sysfs_register(struct intel_gt *gt);
>>> +void intel_gt_sysfs_unregister(struct intel_gt *gt);
>>>    struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
>>> 					    const char *name);
>>>    diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>> b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>> index 937b2e1a305e..4c72b4f983a6 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>> @@ -222,6 +222,9 @@ struct intel_gt {
>>> 	} mocs;
>>> 		struct intel_pxp pxp;
>>> +
>>> +	/* gt/gtN sysfs */
>>> +	struct kobject sysfs_gtn;
>> If you put kobject as a part of intel_gt what assures you that lifetime of
>> kobject is shorter than intel_gt? Ie its refcounter is 0 on removal of
>> intel_gt?
> Because we are explicitly doing a kobject_put() in
> intel_gt_sysfs_unregister(). Which is exactly what we are *not* doing in
> the previous code.
>
> Let me explain a bit about the previous code (but feel free to skip since
> the patch should speak for itself):
> * Previously we kzalloc a 'struct kobj_gt'
> * But we don't save a pointer to the 'struct kobj_gt' so we don't have the
>    pointer to the kobject to be able to do a kobject_put() on it later
> * Therefore we need to store the pointer in 'struct intel_gt'
> * But if we have to put the pointer in 'struct intel_gt' we might as well
>    put the kobject as part of 'struct intel_gt' and that also removes the
>    need to have a 'struct kobj_gt' (kobj_to_gt() can just use container_of()
>    to get gt from kobj).
> * So I think this patch simpler/cleaner than the original code if you take
>    the requirement for kobject_put() into account.

I fully agree that previous code is incorrect but I am not convinced 
current code is correct.
If some objects are kref-counted it means usually they can have multiple 
concurrent users and kobject_put does not work as traditional 
destructor/cleanup/unregister.
So in this particular case after calling kobject_init_and_add sysfs core 
can get multiple references on the object. Later, during driver 
unregistration kobject_put is called, but if the object is still in use 
by sysfs core, the object will not be destroyed/released. If the driver 
unregistration continues memory will be freed, leaving sysfs-core (or 
other users) with dangling pointers. Unless there is some additional 
synchronization mechanism I am not aware of.

Regards
Andrzej

> Thanks.
> --
> Ashutosh

