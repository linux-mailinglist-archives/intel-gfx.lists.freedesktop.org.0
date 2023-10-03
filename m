Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 280477B727C
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 22:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C09010E07D;
	Tue,  3 Oct 2023 20:30:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40B2E10E07D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 20:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696365011; x=1727901011;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uyrW7/z2IQ+D9nAYFaCVOd1RV/3LznXtfPsxsYih8TA=;
 b=bwX1uS9xlMaSUFMYCrGvM8JGJ9sjg9PlS3LC/iiHkvQ/EKGTBbR1/l4i
 41t8bfTQq289F1CiITz2QSchLmGepNuCV1MI7YxsxTsYa5xmZwiDODnKM
 X2c7hXV9TNXoni/f/BqIJBPiAze1cOcRbkyqul6FEs7K5wvqQk448gfby
 s+1eNeGY1WFxWLoarTIuOpBGNa4HnAPW78PRI9U1M7CHtlyJk3uSKA0wn
 mdLQ/ZpQtlSMMrXTtOvS2g2M6zRqvuSZ/MZis7QWsklasPoOKFGb9DRkN
 c1FGTzeSKCwvUcmj9VvmkVJ1+gcKt1acl1hcxbajfUSmKQJoUNuUsJkwq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="1564970"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; 
   d="scan'208";a="1564970"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 13:30:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="841497181"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="841497181"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2023 13:30:10 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 13:30:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 13:30:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 3 Oct 2023 13:30:09 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 3 Oct 2023 13:30:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BiUo5jHfV+FnO1FNYx27bbfGG2+eJXiMPu5Piz1Ql3P9nkxz2WyS1Bz1qqjAoCJgxE5Sp4dbFRLnFLjdIc6CX9gHXlnb1A7iuZkf2GuxlZPG9qhSK6cM9W1DA9PMOTCvhVWSCkubBnEoxs3mANZ5e7D8IbnUt5PP0Y9a9+JjMey3RtUVzrRBLN4gj5qRVkWq/okgTgFCMDQS9QKagsR+qfOdJvV14B35uttjo1vzMRyuUO8zWKFr3Yo0rLQmxVogy11e2W7m771MJw/Bq079NjesIwfUn4HFhIOazCt0/zNc4e6k8y1VGoEmfhBmL82BK/9pfP0AN5MW5hhj3NvHNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dSJJ8vR6yoeF2ZXccczAEpmZ2RJkb7duWh4BWPFFWfE=;
 b=OEY9OUVWFfvYRLAMjg0wj0MW0cAwZ83/DTkQg3K9UucioGwV/TYf5uEc1DMqo3A27OHxiDBbiiEQCSVJWUon+eVmglNxMHUtEgmrlQXbwr6elMbUaXAEQ3B1WBkW/CvDtHRQ8u+Z3XgnaAV4NY1+rjABG/DQwHkSkp79Lh5fLC0iAOJ43c7aqAei11AAYqE7MIc4snYGCRoxnYEmMH5F2nm87VML+4GcxzO6wXzAP/QKMrd1q1uiN6sf140rHM66MkuH9R36Q99jdeSfUmW+xalh/BtcGKf4NFmTTEu8eSImd5kiwm6V5nhuTodOFrkgNFPHVHMftzy/N3woPyG+Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH8PR11MB6952.namprd11.prod.outlook.com (2603:10b6:510:224::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.33; Tue, 3 Oct
 2023 20:30:06 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b015:c622:edaf:8c86]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b015:c622:edaf:8c86%6]) with mapi id 15.20.6838.030; Tue, 3 Oct 2023
 20:30:05 +0000
Message-ID: <34c8cffc-ece1-dab4-1e41-4fc8b632157d@intel.com>
Date: Tue, 3 Oct 2023 13:29:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-GB
To: Andi Shyti <andi.shyti@linux.intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
References: <20231002172419.1017044-1-jonathan.cavitt@intel.com>
 <813ae801-b774-7d7a-df8a-00b5b0e36695@linux.intel.com>
 <ZRxEOCI6Xq1UEnlw@ashyti-mobl2.lan>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <ZRxEOCI6Xq1UEnlw@ashyti-mobl2.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0134.namprd03.prod.outlook.com
 (2603:10b6:303:8c::19) To BN6PR11MB3908.namprd11.prod.outlook.com
 (2603:10b6:405:7d::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH8PR11MB6952:EE_
X-MS-Office365-Filtering-Correlation-Id: 03237656-5620-4d09-f7e9-08dbc44f86bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3qbJA9qUYdRjp5LSpw3eyPJGMAW4EbTROkdgU486KAak7m9AGenuevLE+Ig1SViJJKKZ9R9J4YUxWU0DH8W8iIjGIZ6fqpNU1LTh2pG7TQUzAYKeUzlGb7yhcAW9gwOTieIqoDtiW32ZJEdS5Zruam32cIH5BGHgJLMoWcrmC831R2gwlvBdZmVcz9Rb4Smbv6mQUB6wdhLBy9LgCsX/3qiw9hpFDmUvopYU8kI8SBeJFBLE3jJ9Z9NqdF03jEvpwR46D8fdGSQM8ApbzPrmGPurd61C+dY4TuPTbtJmSG9IHGuVfecxproICtxOfG+fT7VkbJmzUnqaYsYj1rlLvfFr4tEUuvVVNIkvojfXs6946NHbhtlkkjMEUxAwrMgURhTv1vHSQ4coZrirTUdhLqnKAzyDlzPLfWEiC+864x9+yRnOG/V2GSFALc8zSxfs5cU+6cQw5ZXqglwcbTZqvWXMxVxRPMJ4RIkVMKzp/dOfCcQczXORHpJs5o2KzNfsTSelve4lZZ7Yo3RorPvV7epJAZ/Z621H1d65qYR+MYOhoJv0khI9QIjqeinW3kQuehyBeObPILkAMDjiTRIwhYyA1vvp/obce3uHlcJUi65S4sWIq5fqmoOIqj6mFiIwg6FMm6Pb0MBNlhNz+lJFcw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(366004)(346002)(376002)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(2616005)(82960400001)(5660300002)(26005)(6666004)(4326008)(8676002)(8936002)(86362001)(31686004)(478600001)(31696002)(6486002)(38100700002)(66946007)(66556008)(66476007)(316002)(110136005)(53546011)(6512007)(2906002)(6506007)(83380400001)(36756003)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHkyalJxNjhxWWxwYlArWFJIOWN2dVdOclZTUUFMZVkvajdEdWszLzJBa0ZC?=
 =?utf-8?B?TWp4b3pIMEpTbE9WamdQMHdzTFhrZlluSnZIL1lRK1d0OWs5bHZRZTFPVUE0?=
 =?utf-8?B?N041dmRPT0Q3WWl0UC9NNDR4blgzU0REaVhyY3l6R1JhZ0M4WUdTRXRSWnB3?=
 =?utf-8?B?dXRzV24vR1BBeXhYSGVVeTJoWWcyeUtoZ0JCMFVoQ1dTcjFmVDdZMjZoUjgw?=
 =?utf-8?B?V0hCcUlsNEJhYk5xL29lVXhhb3NtWmhXMUFUZTRZbmI1Q3RKcVBZNG5Wdlpj?=
 =?utf-8?B?OWZQZ0JDSStPNk5oeUFUdmpocW9kUGk3Y21wSjdtY2JPcEU3a04wTWJpeDVB?=
 =?utf-8?B?V0tjR3BidzFXbUFOSEcraDhGemNVczllTlRrajRtb0RnVXBFNi8yWSt6eTY1?=
 =?utf-8?B?MHlZWVRGOWFxN01xMmhUdW5tVUQ3aStsYmVsemxMR0hOYTVjWURCcUxnVjJ5?=
 =?utf-8?B?Ykl5LzhjM0tWV2U3SnFlQlpxd25BYjYrNnB2dEVZbG1DN3VZYjU2elZVOXdF?=
 =?utf-8?B?bnlvU3haTVZvWFpPbE44VnE4cHdNaEVXcnltbjJRb01WRFNSSUpSVlE2Tjli?=
 =?utf-8?B?eTdXelVmVThaYzluVHNIQk9sQTU4VnpDM05pTWxZSU9kWHpIMkFMeXVNc3Fk?=
 =?utf-8?B?ajNNenRBTURweXVGa3JKMG1wcnV0d2hqOGx1VWw5WnZjRnUxNnRBQ2MyU3lU?=
 =?utf-8?B?Zk5WMW42d3hWQys0S3VRc0lIVXlSZGRlWlBhbWRZbjVTVWdGbTYyUUlUbkdj?=
 =?utf-8?B?bHMrenJBYWkxNmJqWk50UXRIdmtsTzJtVlZNY2pvL21BMlArL1JiUllUdTB1?=
 =?utf-8?B?ajdTbTJlSVZWcDVpZ2J4dkl1bFNBZWRMKzQzTVBOaU1FMWM4QzZHUkx0OW12?=
 =?utf-8?B?bnQ0Tkp2MXZUeWhyRTlTb05kajZISmI0MllnSUk5ekhGT1h2RWlnL2V6TG9p?=
 =?utf-8?B?NVdZT1k4eDBXRDBlSUdtemVoUmRLMjAxdVdsUndQUTVBUlVSdzNkdmhpT3lt?=
 =?utf-8?B?d05FZjY0bFRiaG9xK2wvRExYczM1d0d1YTlQNzdDbUJUZGltVStiSlF3VmxP?=
 =?utf-8?B?S2RESzdCcGhHdURVZFdKR2N3d25LQXlXVTcySnJIUGdLSkl2ZmJyNnhUQ25Z?=
 =?utf-8?B?VkNmbC9mNU1zZjR3b0hoUTlmKzFYRkppQVRYemM3K0RsTGNJbThZMllWSzhW?=
 =?utf-8?B?aFlnRjF3ZTdqcnhqSE95ekpIcGhCZ1dHZzdoVFdLSGVsanVib3VDRkNMUThy?=
 =?utf-8?B?WFNsYkVrWTlSSUkyUGFWdE5RY240L2ZVeVZ4ckRsNGgvTmxrMDZQMmVMMXZn?=
 =?utf-8?B?WVpCYjAzamgrQ3hHa3BPUUF5TjNGSzkrTzkyWEd0MnpXaWJVTXUrejg0cHpO?=
 =?utf-8?B?SGxXZXY4NC93NDlmdWd1UUJwVStnZlBNOXpxdWpQTUMrenhYaTg4Y2dZS2FC?=
 =?utf-8?B?L0JtTndZVzhCWG92bzJqOU51WDVZN1k5emN0R202VkVBTytzVStGaTFoTW9G?=
 =?utf-8?B?Znk5SWNyd254Y1gzTy9vUXY2UDBFb3o4MTkyczJ2OExWd1VyckZWSGlqbEFp?=
 =?utf-8?B?TDJnM2tqUVl3c3Ayc0s4Z0hid0tuV2phaDgyTisxSUlueHlCL0F1TEdrTUlN?=
 =?utf-8?B?eEEwY29kZ3Z2ZzFjVlpZZXhuWUhPcmI0OWtwazZZeDl3VkRHTXA4eEZrQ05t?=
 =?utf-8?B?U3VaT2t0SytucWFyZlN1dUc2eXpCQWtoOTZLRi9UVS9RZXRGQUdMRGJHeEo5?=
 =?utf-8?B?cDlneGdBM2lEMFFKbDNHVjlJSHN1QkdjZUl4K0UzL1kranV3Q1F1U0tONkox?=
 =?utf-8?B?dDFybzNtV291bWwrSGdZTjZzWGlTclFQbmdqcmt0UWZybHl3RUJhdk5DbEpn?=
 =?utf-8?B?Mk1DUUN3SmlDU2h4Q2VJVDZaYVUzS215NnRmNmh6N3E3K2h6UTNaeVZrZUZJ?=
 =?utf-8?B?am5VU1NiVUxvcjg5RmpCYWtPb05iK2RkZ1p0UkMwOEZjUUpJOG5oT2hxVVQ3?=
 =?utf-8?B?dWxjN09KL0hEQXlmakFST3k3VGdDNk9TVno0ZU9Qemg3TUovdlM5WkthVlpi?=
 =?utf-8?B?ZDd6NXpQQjhYNnJhZnVBaXJQa3JuZXVwdy96U3VSREhaYTNHbk1wdEVOT2t1?=
 =?utf-8?B?TE1odE5vNit0RHpUSGNmYkhZVXhmRlVPbDhRaHZTWDU3NzJCQTJYS0YvTith?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03237656-5620-4d09-f7e9-08dbc44f86bf
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB3908.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 20:30:05.7784 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pwyonFk7ojzfbJ8bYhElk2uzYgoUTtqnw/JJ1kQneRDKmXxifaJ6bzkNlj3Q6VPGRQNpYPo3mmip8SmwUI4xUcrUEtRWwaFn05iHe5H/IQg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6952
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/4] drm/i915: Define and use GuC and CTB
 TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/3/2023 09:41, Andi Shyti wrote:
> [...]
>
>>> -		mmio_invalidate_full(gt);
>>> +		if (INTEL_GUC_SUPPORTS_TLB_INVALIDATION(guc)) {
>>> +			if (intel_guc_is_ready(guc))
>>> +				intel_guc_invalidate_tlb_full(guc);
>>> +		} else {
>>> +			/*
>>> +			 * Fall back to old path if GuC is disabled.
>>> +			 * This is safe because GuC is not enabled and not writing to MMIO.
>>> +			 */
>> It is safe for intel_guc_is_ready() transitioning from false to true during GuC init? No way for some path to start issuing invalidations as that is happening?
>>
>>> +			mmio_invalidate_full(gt);
>>> +		}
> supernitpick: as we are at this, brackets are not required.
Braces are required on the first half of the 'if' because it is a double 
if and the else applies to the top level not the inner level. And my 
understanding of the style guide is that lop-sided bracing is incorrect. 
i.e. never have "} else". Plus while it might be syntactically valid to 
not have braces around the five line else clause because it is only one 
actual code statement, it massively helps readability of the code to 
have the braces present.

John.

>
> Andi

