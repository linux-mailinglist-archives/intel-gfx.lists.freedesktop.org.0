Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 758F564E1FC
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 20:50:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63DAC8922E;
	Thu, 15 Dec 2022 19:49:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F8F58922E
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 19:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671133787; x=1702669787;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xiCeXz25dn78jkm1Ah2rAPAW7Hl+TwgcWK8nzGOfJLA=;
 b=XVzQgX675MOwO3BwFrtTCeqpkhBxFDKbL0FAKzyTcCQuWOMUjFaW3yFn
 /3cZznRtBJ3MZlDU9ccAFjnKFAByzshan+SZUqTBBZXZPH725f/Mfhs0q
 L8LQn6rYJGiGCnH3jvPddUVXXolNYTN0Wea268Irn5ncZEUCvbTsBanQo
 r8EeK1SuifFmg34E9f9fx8Dd2p1O41ohSeuyp2MNYX5UdetI9BhXies7b
 qb35GEen7i3wabxGMEcs/skFRpc0x5fs6t6gm41i2HWZ/jgAEuvvJ/lrM
 0aF2vtjk/pgAScEfcYLMdrKEpKs+MDMGASaDT5GF2LPUExsDnjhxnqpBe w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="319956160"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="319956160"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 11:49:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="651640680"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="651640680"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 15 Dec 2022 11:49:44 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 11:49:44 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 11:49:43 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 15 Dec 2022 11:49:43 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 15 Dec 2022 11:49:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D/APT9RwtkKy1aua/zTt46yKrjJDI5sRaqr2/zmkY/7mKTVcH8nz/9CX5ksnw1ZYVrlZOlJMv6Sk6znp+NXgNWlEZ9AP2VOAtXgjHElggt0Ik9E1D+H2+EgrlHYO/hrvMBVyLXnHJudDgzzcS5RDmYIU+1ssbO39uT7xllRo6PLWDh3k/E48bfDLZ+i6v/SytEVtp+x4MxxAeKE9mv8fQpa4dspuHPiB4Nf8liMq+IyNpGL1zEL0qA9mOHuYNDnD+xiiKxoquE/FQP8TLns7Wujr7LR++DPMxxZSkr4dScpNNn7Idpt3akansuLd+lUFQCChq59QXbsv5F3ftzavJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qhmhSmbg9xJDnvxXm/QLNDAQ6PDcGk2vEUo2xj/AUxI=;
 b=ejxjwS3Bnup/uRHDmhLe2R5pOZHBW53DgaJ/nktj3IR/VQlFCK/q5G5uQFvanBa53IJ1Pri84VOuQ/czeLz82QZvYGoen0rzy2m4JLhXmreuEmi8dCIEwBXX7DmT3biC4RIvXB/S9fHxk+9HnpxqtJqPpT47xgfLftVUJZc1NVs/sWd50GXrOw/3U7k1E7QbKt/wDTuT1D8FF573l46QmvYQ+4OmzrQg0D+sNDzrHbqWvIOUcEn509zB8jSGEcxzoZ9zPcYxyNFa2HoJp9vjbFvTpEcVt/CxRNc4p3zJCu5Us9tfWH9/uLxMOAQwHPcUxGRnymuuLF3mK+VlIlOLGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by SA3PR11MB7536.namprd11.prod.outlook.com (2603:10b6:806:320::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.12; Thu, 15 Dec
 2022 19:49:39 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::f1e8:68f7:ba16:1b62]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::f1e8:68f7:ba16:1b62%4]) with mapi id 15.20.5924.011; Thu, 15 Dec 2022
 19:49:39 +0000
Message-ID: <3b082915-a6b6-e6fa-c444-dd5f3c819895@intel.com>
Date: Thu, 15 Dec 2022 21:49:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221215125227.1165037-1-gwan-gyeong.mun@intel.com>
 <20221215125227.1165037-2-gwan-gyeong.mun@intel.com>
 <af944fd6-546c-84e5-3790-2758840df046@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <af944fd6-546c-84e5-3790-2758840df046@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO2P123CA0094.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:139::9) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5409:EE_|SA3PR11MB7536:EE_
X-MS-Office365-Filtering-Correlation-Id: c9294129-c2b6-45e7-e833-08daded58024
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lAUQVN7FxtPaHkiJLs0YQsALx4YlnEQVxpdNaPi6sUH8yAT0O+BcCEfJEt5q0/XUJgfeJEq7DCT7lPMT9XvMOJmwgfD45f1o1R/IkudGINALttDjh5lny/jnwcJQBUMBhDnvv0Do+Wl+YVcFAypfbgDo7PTMWfwY/UqrFKpjumq8NC0/3W9JTgDrKUZNBY//Af4AlCoghWP2rBfBWZ02TrDKAwiIfiydCNlJo9LxyUvU2N6w/6gFvTgiKQwPj6D7qnIV22Kln3lhUhHJNAPXjEovcHRzumr3Yiqhp3KlFgCThYdCXaSwkYxu7U2P41UU22HHAumfVjjESEpP6kMjqOevGmznovKAbhhN1wSv86BG6UhIJ9feIVT/9iO5AwJ4WmtEsK/Mr5CMOkV5KPbHDaV58ZG5npl6AS+S0ZSvZSam8XZrXWZ79w3D1t524+1+qDMBYckDRKQ63PQW1iIuljtUaXEj62mhEu+YbHP66uUf3x5VdV9+MKLd8CAJLWabO3y7r82BJp0qOWbWs7WEDKKuM2C5k46A5JIkVoL8YYizPNoBP4lmddcJPMPJz36r7C/6m4sFu6XqNAMy+vf44rgtGyLsh0JjDGa5galGPRKkJTxAqqVQoSohara1/D+z5iv5+R7mDdkXrFDu11U7/SQ6Pf7/R171eJ5S3aks4k68O6ThU0tQWRlf92SDiskSidss/bSvqXgkqqHq5f4kVoPE/9DGzC9JjtUCZNBOvQ1EG7y+0VNUpYMFztPPtEp/s5bd4OuPoqNT+tewvVsAQfYLp1P8wNsjBeYkv613aCo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(366004)(136003)(376002)(346002)(451199015)(82960400001)(38100700002)(30864003)(5660300002)(8936002)(2906002)(186003)(53546011)(966005)(66476007)(6486002)(66556008)(26005)(6512007)(36756003)(83380400001)(66946007)(41300700001)(4326008)(8676002)(2616005)(86362001)(31686004)(6666004)(478600001)(6506007)(31696002)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGFIdmUyWENWZHI1Yk5ITUZsdUJPeUR0c2dRVkFzZGVoaElFczRxVy9WeFJp?=
 =?utf-8?B?OHBHTkEycm8zZzNJc2kxM2U2eERQRU9FamwwV3JVZG5tbWQvUUw3R250RkZR?=
 =?utf-8?B?cEl4WTdkL1lSejgvWCt0TFRCbTBZejNGc0VxdXR5R01LR0M5cG5EaFdUQ0R2?=
 =?utf-8?B?bzdtWHhSOG9nR0lRYUJzQTg3NzB2WHM4TCt2cDVOQUZJWTN4akQ1YXE1U3dx?=
 =?utf-8?B?T1VsOGpqaWd1RWgzMk9FTVROV2xHYkVCdjdTWkJLZkFlaGtVa3JDYUdjZnVS?=
 =?utf-8?B?bmZ5QU1LSTErcUlLZ3hweW9kamRBM2owamprY0VyTS9BOFZ5U0RKbEZBUlZB?=
 =?utf-8?B?WkRYU2NkcU1FeXhuaEgvT0VxYW1vQ3ZjQVRueVZ0Mm0xSk1ua1VTcjVNenp4?=
 =?utf-8?B?OGRMTktLNXQ5M3pDYnliUHcwTjREZmhTREFuQjVQUnYyWGVycXRUY2FtY3JB?=
 =?utf-8?B?UTRyREcxUTQvUW40OEozMkwzb2laUGQ0V2dhb3NvZXpYRXBuZTBGaDJYZDU4?=
 =?utf-8?B?T1o0czBFTS9hQldrMUpEdFBiR21rVDl1eWdybTNWZHdyejNiRWZvUW8wOGNz?=
 =?utf-8?B?MUhjcXNBM2MzWE1mT0w4ZzY3NFVndHZCblNEaHRaT1NZOVJERUJueUxRTEM1?=
 =?utf-8?B?ZUlRQnhoUzJIanFtREtPK3hnOEtOOTB0TUZ2OGJUeHlyMUE4QUhEaC9uNkxF?=
 =?utf-8?B?cUJsOG9vbzEvaDdMdldqYkxaNmgvRStla0RqVGh0L3RwMkJSK09xSHhCU3FU?=
 =?utf-8?B?R2dvWjdxdDJLQUxDbWYrWXNtdStNQVBmTUFWczFBbE5nN3hDUlFjcjVzeitY?=
 =?utf-8?B?aGFHaU9NdXB6bCtrK2dHVUpHZ0xHUk54VGhWa3Y2WnhzdVRxTTg4Wm85K2Ix?=
 =?utf-8?B?aFBDZk9qNGlUSG1TN21uYUthRUxtNWtaVis5YktxRzhmb29INDhRRjRML3Ry?=
 =?utf-8?B?ZCtrVno4SzZkYXhpVjdtRkQvQW8xNjBLdzJDemhrSHhqbzBTVGJyWVJVZ0wz?=
 =?utf-8?B?aWhKOCt2OFZLQWdGQ0RyeXhxZU1mQ2p2QThXbGpTZWR0TzZmYmRScks2M3RP?=
 =?utf-8?B?Q3BGSERzZmFvc1JqL09GbmdHeFB4MGRWUVQxWTg0eGdNY0F5VVBmOFFUWVlL?=
 =?utf-8?B?RnJORmZ0TjRId1d3T1VwM21tVkE4VDQrNVUxNmJuMVVIRzN3OTVSd3ZLU2F2?=
 =?utf-8?B?RlZvRDJVNFE5akQyRjFNR3Rrcnlra2k0MVBqS0IzRm5hMTJxK2szQklZTmZs?=
 =?utf-8?B?aS9tK2owcDZOOHRCODhmZHgwMDFZTUxrdzJpUllzaEkySHFseHZ5aDVBVGRx?=
 =?utf-8?B?UFpBVTZweXFYaGxkdHFqdW5lb0EzYXdJMS9pVE9LcS9HdVVXLzRwNUZPazVD?=
 =?utf-8?B?SXZQQno4QkZkS2UyRy9uYXNIaW1CT0txcVVFRldnNzByTlNad3ZxMVVBRXlF?=
 =?utf-8?B?U0l2VFY4Z0kvaGREQ2V6bldRcjFWWDJKR21IWXdZT2JiVVpOcjl0M0kyMDB2?=
 =?utf-8?B?dXplSEpSYktvNFQwK3NTaTRTSDlYSS9xYTZ6bllySXhUZEVpdUt5c2ZtcnFt?=
 =?utf-8?B?RGJlTWVCeGQwNDVEZGpTYlBsK3gyTUcrQVFRV3hkTnAyWkhPWlBrdlZEeHN1?=
 =?utf-8?B?UDlpVzIxS29BZkhIamo4aWNPV0JCSk4vbEZwMXVTbmp5YVFnbE50Z1F2WEdh?=
 =?utf-8?B?SGErMzRKdm0yUDN2dTVINFM2TVo0UFpPa2w3UUZlUk81amZqakRTMnpvVG0w?=
 =?utf-8?B?ZW1CRE5WWEYvZDRkS0ZKck0wYkdrOTBCMWV6YkNNOU9odzU1WGpEUWZWbDRV?=
 =?utf-8?B?c0I1YVN5elJDajdNYndhWHV5VGNmUmFQSWhsVmg2a0FpSVVZUFZDN05pLytL?=
 =?utf-8?B?bHlSQjh2RStLbkk2cXhRQzFEK0NURjhGK090aTZhMmIxRmpwYVhJeThRMFN6?=
 =?utf-8?B?d0wxc3NvQXA3UFExRzJmajM3Vm1vT0UvWkxFWFpYb1RBTnp0aERiNzcwM1ZS?=
 =?utf-8?B?eE11MUp3Vnc0QWw4TTBwbkJLT1ZtdkpQREtFMlBWN2FSVWFmaEZCc3VwVDBu?=
 =?utf-8?B?ai9INlNweW93bWhrYVNKL00wdFRkUHJURGtuNEcvai9lbXI3NUYzcFpSbzhx?=
 =?utf-8?B?SU1kdDdEUmlGSHpidzZhbUJVWkZNY2RmSkR0NjJCazBPT0FKeWhibmZ3bTBn?=
 =?utf-8?B?REE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9294129-c2b6-45e7-e833-08daded58024
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2022 19:49:38.9242 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6dHJSpEqYucyu6iV7Yg1QlJrbkRuYEHJcDTbCwXwhZ26egYFKhSVUk9BYv3hc+2oYTwQRhScRO3i17uIzBbXv8ChMFxeXUD2ofMpT1R4nEY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7536
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v15 1/7] overflow: Introduce
 overflows_type() and castable_to_type()
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
Cc: thomas.hellstrom@linux.intel.com, jani.nikula@intel.com,
 chris@chris-wilson.co.uk, matthew.auld@intel.com, mchehab@kernel.org,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 12/15/22 5:09 PM, Andrzej Hajda wrote:
> 
> 
> On 15.12.2022 13:52, Gwan-gyeong Mun wrote:
>> From: Kees Cook <keescook@chromium.org>
>>
>> Implement a robust overflows_type() macro to test if a variable or
>> constant value would overflow another variable or type. This can be
>> used as a constant expression for static_assert() (which requires a
>> constant expression[1][2]) when used on constant values. This must be
>> constructed manually, since __builtin_add_overflow() does not produce
>> a constant expression[3].
>>
>> Additionally adds castable_to_type(), similar to __same_type(), but for
>> checking if a constant value would overflow if cast to a given type.
>>
>> Add unit tests for overflows_type(), __same_type(), and 
>> castable_to_type()
>> to the existing KUnit "overflow" test:
>>
>> [16:03:33] ================== overflow (21 subtests) ==================
>> ...
>> [16:03:33] [PASSED] overflows_type_test
>> [16:03:33] [PASSED] same_type_test
>> [16:03:33] [PASSED] castable_to_type_test
>> [16:03:33] ==================== [PASSED] overflow =====================
>> [16:03:33] ============================================================
>> [16:03:33] Testing complete. Ran 21 tests: passed: 21
>> [16:03:33] Elapsed time: 24.022s total, 0.002s configuring, 22.598s 
>> building, 0.767s running
>>
>> [1] https://en.cppreference.com/w/c/language/_Static_assert
>> [2] C11 standard (ISO/IEC 9899:2011): 6.7.10 Static assertions
>> [3] https://gcc.gnu.org/onlinedocs/gcc/Integer-Overflow-Builtins.html
>>      6.56 Built-in Functions to Perform Arithmetic with Overflow Checking
>>      Built-in Function: bool __builtin_add_overflow (type1 a, type2 b,
>>
>> Cc: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
>> Cc: Nathan Chancellor <nathan@kernel.org>
>> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> Cc: Tom Rix <trix@redhat.com>
>> Cc: Daniel Latypov <dlatypov@google.com>
>> Cc: Vitor Massaru Iha <vitor@massaru.org>
>> Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
>> Cc: linux-hardening@vger.kernel.org
>> Cc: llvm@lists.linux.dev
>> Co-developed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>> Signed-off-by: Kees Cook <keescook@chromium.org>
>> Link: 
>> https://lore.kernel.org/r/20221024201125.1416422-1-gwan-gyeong.mun@intel.com 
>>
>> ---
>>   drivers/gpu/drm/i915/i915_user_extensions.c |   2 +-
>>   drivers/gpu/drm/i915/i915_utils.h           |   4 -
>>   include/linux/compiler.h                    |   1 +
>>   include/linux/overflow.h                    |  48 +++
>>   lib/Makefile                                |   1 +
>>   lib/overflow_kunit.c                        | 381 ++++++++++++++++++++
>>   6 files changed, 432 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_user_extensions.c 
>> b/drivers/gpu/drm/i915/i915_user_extensions.c
>> index c822d0aafd2d..e3f808372c47 100644
>> --- a/drivers/gpu/drm/i915/i915_user_extensions.c
>> +++ b/drivers/gpu/drm/i915/i915_user_extensions.c
>> @@ -51,7 +51,7 @@ int i915_user_extensions(struct i915_user_extension 
>> __user *ext,
>>               return err;
>>           if (get_user(next, &ext->next_extension) ||
>> -            overflows_type(next, ext))
>> +            overflows_type(next, uintptr_t))
>>               return -EFAULT;
>>           ext = u64_to_user_ptr(next);
>> diff --git a/drivers/gpu/drm/i915/i915_utils.h 
>> b/drivers/gpu/drm/i915/i915_utils.h
>> index b64192d9c7da..2c430c0c3bad 100644
>> --- a/drivers/gpu/drm/i915/i915_utils.h
>> +++ b/drivers/gpu/drm/i915/i915_utils.h
>> @@ -111,10 +111,6 @@ bool i915_error_injected(void);
>>   #define range_overflows_end_t(type, start, size, max) \
>>       range_overflows_end((type)(start), (type)(size), (type)(max))
>> -/* Note we don't consider signbits :| */
>> -#define overflows_type(x, T) \
>> -    (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))
>> -
>>   #define ptr_mask_bits(ptr, n) ({                    \
>>       unsigned long __v = (unsigned long)(ptr);            \
>>       (typeof(ptr))(__v & -BIT(n));                    \
>> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
>> index 973a1bfd7ef5..947a60b801db 100644
>> --- a/include/linux/compiler.h
>> +++ b/include/linux/compiler.h
>> @@ -236,6 +236,7 @@ static inline void *offset_to_ptr(const int *off)
>>    * bool and also pointer types.
>>    */
>>   #define is_signed_type(type) (((type)(-1)) < (__force type)1)
>> +#define is_unsigned_type(type) (!is_signed_type(type))
>>   /*
>>    * This is needed in functions which generate the stack canary, see
>> diff --git a/include/linux/overflow.h b/include/linux/overflow.h
>> index 1d3be1a2204c..16ae8d912390 100644
>> --- a/include/linux/overflow.h
>> +++ b/include/linux/overflow.h
>> @@ -128,6 +128,54 @@ static inline bool __must_check 
>> __must_check_overflow(bool overflow)
>>       (*_d >> _to_shift) != _a);                    \
>>   }))
>> +#define __overflows_type_constexpr(x, T) (            \
>> +    is_unsigned_type(typeof(x)) ?                \
>> +        (x) > type_max(typeof(T)) ? 1 : 0        \
>> +    : is_unsigned_type(typeof(T)) ?                \
>> +        (x) < 0 || (x) > type_max(typeof(T)) ? 1 : 0    \
>> +        : (x) < type_min(typeof(T)) ||            \
>> +          (x) > type_max(typeof(T)) ? 1 : 0)
> 
> Syntactically seems fine, but I am little bit lost with indentation. 
> Shouldn't the last two lines be one tab to the left?  Up to you.
> Btw, maybe extra helper in_range/between: in_range(x, type_min(T), 
> type_max(T)) :)
> The rest looks OK
> 
Hi Andrzej,

As you commented, the indent part seems to need an update.
Now this patch [1] has been merged into linux-next as described in the 
cover letter. So it seems good to fix the indent as a separate update.

And the implementations of in_range exist in several places with the 
same name. [2]
In order to avoid name conflicts or parameter mismatches, it is thought 
that the existing code should be modified first.
This part also seems to need to be applied as a separate patch after 
this patch.

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=4b21d25bf519c9487935a664886956bb18f04f6d
[2]
[arch/arm/mm/pageattr.c]
static bool in_range(unsigned long start, unsigned long size,
	unsigned long range_start, unsigned long range_end)

[drivers/gpu/drm/arm/display/include/malidp_utils.h]
static inline bool in_range(struct malidp_range *rg, u32 v)

[drivers/gpu/drm/msm/adreno/a6xx_gmu.c]
static int in_range(u32 addr, u32 start, u32 size)

[drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c]
static int in_range(int val, int lo, int hi)


[drivers/virt/acrn/ioreq.c]
static bool in_range(struct acrn_ioreq_range *range,
		     struct acrn_io_request *req)

[fs/btrfs/misc.h]
#define in_range(b, first, len) ((b) >= (first) && (b) < (first) + (len))

[fs/ext2/balloc.c]
#define in_range(b, first, len)	((b) >= (first) && (b) <= (first) + 
(len) - 1)

[fs/ext4/ext4.h]
#define in_range(b, first, len)	((b) >= (first) && (b) <= (first) + 
(len) - 1)

[fs/ufs/util.h]
#define in_range(b,first,len)	((b)>=(first)&&(b)<(first)+(len))

[net/tipc/core.h]
static inline int in_range(u16 val, u16 min, u16 max)

[tools/testing/selftests/bpf/progs/get_branch_snapshot.c]
static inline bool in_range(__u64 val)

Br,

G.G.
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> 
> Regards
> Andrzej
> 
>> +
>> +#define __overflows_type(x, T)        ({    \
>> +    typeof(T) v = 0;            \
>> +    check_add_overflow((x), v, &v);        \
>> +})
>> +
>> +/**
>> + * overflows_type - helper for checking the overflows between value, 
>> variables,
>> + *            or data type
>> + *
>> + * @n: source constant value or variable to be checked
>> + * @T: destination variable or data type proposed to store @x
>> + *
>> + * Compares the @x expression for whether or not it can safely fit in
>> + * the storage of the type in @T. @x and @T can have different types.
>> + * If @x is a constant expression, this will also resolve to a constant
>> + * expression.
>> + *
>> + * Returns: true if overflow can occur, false otherwise.
>> + */
>> +#define overflows_type(n, T)                    \
>> +    __builtin_choose_expr(__is_constexpr(n),        \
>> +                  __overflows_type_constexpr(n, T),    \
>> +                  __overflows_type(n, T))
>> +
>> +/**
>> + * castable_to_type - like __same_type(), but also allows for casted 
>> literals
>> + *
>> + * @n: variable or constant value
>> + * @T: variable or data type
>> + *
>> + * Unlike the __same_type() macro, this allows a constant value as the
>> + * first argument. If this value would not overflow into an assignment
>> + * of the second argument's type, it returns true. Otherwise, this falls
>> + * back to __same_type().
>> + */
>> +#define castable_to_type(n, T)                        \
>> +    __builtin_choose_expr(__is_constexpr(n),            \
>> +                  !__overflows_type_constexpr(n, T),    \
>> +                  __same_type(n, T))
>> +
>>   /**
>>    * size_mul() - Calculate size_t multiplication with saturation at 
>> SIZE_MAX
>>    * @factor1: first factor
>> diff --git a/lib/Makefile b/lib/Makefile
>> index 59bd7c2f793a..889f96b10f12 100644
>> --- a/lib/Makefile
>> +++ b/lib/Makefile
>> @@ -377,6 +377,7 @@ obj-$(CONFIG_CMDLINE_KUNIT_TEST) += cmdline_kunit.o
>>   obj-$(CONFIG_SLUB_KUNIT_TEST) += slub_kunit.o
>>   obj-$(CONFIG_MEMCPY_KUNIT_TEST) += memcpy_kunit.o
>>   obj-$(CONFIG_IS_SIGNED_TYPE_KUNIT_TEST) += is_signed_type_kunit.o
>> +CFLAGS_overflow_kunit.o = $(call cc-disable-warning, 
>> tautological-constant-out-of-range-compare)
>>   obj-$(CONFIG_OVERFLOW_KUNIT_TEST) += overflow_kunit.o
>>   CFLAGS_stackinit_kunit.o += $(call cc-disable-warning, 
>> switch-unreachable)
>>   obj-$(CONFIG_STACKINIT_KUNIT_TEST) += stackinit_kunit.o
>> diff --git a/lib/overflow_kunit.c b/lib/overflow_kunit.c
>> index b8556a2e7bb1..dcd3ba102db6 100644
>> --- a/lib/overflow_kunit.c
>> +++ b/lib/overflow_kunit.c
>> @@ -736,6 +736,384 @@ static void overflow_size_helpers_test(struct 
>> kunit *test)
>>   #undef check_one_size_helper
>>   }
>> +static void overflows_type_test(struct kunit *test)
>> +{
>> +    int count = 0;
>> +    unsigned int var;
>> +
>> +#define __TEST_OVERFLOWS_TYPE(func, arg1, arg2, of)    do {        \
>> +    bool __of = func(arg1, arg2);                    \
>> +    KUNIT_EXPECT_EQ_MSG(test, __of, of,                \
>> +        "expected " #func "(" #arg1 ", " #arg2 " to%s overflow\n",\
>> +        of ? "" : " not");                    \
>> +    count++;                            \
>> +} while (0)
>> +
>> +/* Args are: first type, second type, value, overflow expected */
>> +#define TEST_OVERFLOWS_TYPE(__t1, __t2, v, of) do {            \
>> +    __t1 t1 = (v);                            \
>> +    __t2 t2;                            \
>> +    __TEST_OVERFLOWS_TYPE(__overflows_type, t1, t2, of);        \
>> +    __TEST_OVERFLOWS_TYPE(__overflows_type, t1, __t2, of);        \
>> +    __TEST_OVERFLOWS_TYPE(__overflows_type_constexpr, t1, t2, of);    \
>> +    __TEST_OVERFLOWS_TYPE(__overflows_type_constexpr, t1, __t2, of);\
>> +} while (0)
>> +
>> +    TEST_OVERFLOWS_TYPE(u8, u8, U8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u8, u16, U8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u8, s8, U8_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u8, s8, S8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u8, s8, (u8)S8_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(u8, s16, U8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s8, u8, S8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s8, u8, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s8, u8, S8_MIN, true);
>> +    TEST_OVERFLOWS_TYPE(s8, u16, S8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s8, u16, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s8, u16, S8_MIN, true);
>> +    TEST_OVERFLOWS_TYPE(s8, u32, S8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s8, u32, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s8, u32, S8_MIN, true);
>> +#if BITS_PER_LONG == 64
>> +    TEST_OVERFLOWS_TYPE(s8, u64, S8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s8, u64, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s8, u64, S8_MIN, true);
>> +#endif
>> +    TEST_OVERFLOWS_TYPE(s8, s8, S8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s8, s8, S8_MIN, false);
>> +    TEST_OVERFLOWS_TYPE(s8, s16, S8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s8, s16, S8_MIN, false);
>> +    TEST_OVERFLOWS_TYPE(u16, u8, U8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u16, u8, (u16)U8_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(u16, u8, U16_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u16, s8, S8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u16, s8, (u16)S8_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(u16, s8, U16_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u16, s16, S16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u16, s16, (u16)S16_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(u16, s16, U16_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u16, u32, U16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u16, s32, U16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s16, u8, U8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s16, u8, (s16)U8_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(s16, u8, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s16, u8, S16_MIN, true);
>> +    TEST_OVERFLOWS_TYPE(s16, u16, S16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s16, u16, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s16, u16, S16_MIN, true);
>> +    TEST_OVERFLOWS_TYPE(s16, u32, S16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s16, u32, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s16, u32, S16_MIN, true);
>> +#if BITS_PER_LONG == 64
>> +    TEST_OVERFLOWS_TYPE(s16, u64, S16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s16, u64, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s16, u64, S16_MIN, true);
>> +#endif
>> +    TEST_OVERFLOWS_TYPE(s16, s8, S8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s16, s8, S8_MIN, false);
>> +    TEST_OVERFLOWS_TYPE(s16, s8, (s16)S8_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(s16, s8, (s16)S8_MIN - 1, true);
>> +    TEST_OVERFLOWS_TYPE(s16, s8, S16_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(s16, s8, S16_MIN, true);
>> +    TEST_OVERFLOWS_TYPE(s16, s16, S16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s16, s16, S16_MIN, false);
>> +    TEST_OVERFLOWS_TYPE(s16, s32, S16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s16, s32, S16_MIN, false);
>> +    TEST_OVERFLOWS_TYPE(u32, u8, U8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u32, u8, (u32)U8_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(u32, u8, U32_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u32, s8, S8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u32, s8, (u32)S8_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(u32, s8, U32_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u32, u16, U16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u32, u16, U16_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(u32, u16, U32_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u32, s16, S16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u32, s16, (u32)S16_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(u32, s16, U32_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u32, u32, U32_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u32, s32, S32_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u32, s32, U32_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u32, s32, (u32)S32_MAX + 1, true);
>> +#if BITS_PER_LONG == 64
>> +    TEST_OVERFLOWS_TYPE(u32, u64, U32_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u32, s64, U32_MAX, false);
>> +#endif
>> +    TEST_OVERFLOWS_TYPE(s32, u8, U8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s32, u8, (s32)U8_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(s32, u16, S32_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(s32, u8, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s32, u8, S32_MIN, true);
>> +    TEST_OVERFLOWS_TYPE(s32, u16, U16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s32, u16, (s32)U16_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(s32, u16, S32_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(s32, u16, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s32, u16, S32_MIN, true);
>> +    TEST_OVERFLOWS_TYPE(s32, u32, S32_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s32, u32, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s32, u32, S32_MIN, true);
>> +#if BITS_PER_LONG == 64
>> +    TEST_OVERFLOWS_TYPE(s32, u64, S32_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s32, u64, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s32, u64, S32_MIN, true);
>> +#endif
>> +    TEST_OVERFLOWS_TYPE(s32, s8, S8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s32, s8, S8_MIN, false);
>> +    TEST_OVERFLOWS_TYPE(s32, s8, (s32)S8_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(s32, s8, (s32)S8_MIN - 1, true);
>> +    TEST_OVERFLOWS_TYPE(s32, s8, S32_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(s32, s8, S32_MIN, true);
>> +    TEST_OVERFLOWS_TYPE(s32, s16, S16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s32, s16, S16_MIN, false);
>> +    TEST_OVERFLOWS_TYPE(s32, s16, (s32)S16_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(s32, s16, (s32)S16_MIN - 1, true);
>> +    TEST_OVERFLOWS_TYPE(s32, s16, S32_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(s32, s16, S32_MIN, true);
>> +    TEST_OVERFLOWS_TYPE(s32, s32, S32_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s32, s32, S32_MIN, false);
>> +#if BITS_PER_LONG == 64
>> +    TEST_OVERFLOWS_TYPE(s32, s64, S32_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s32, s64, S32_MIN, false);
>> +    TEST_OVERFLOWS_TYPE(u64, u8, U64_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u64, u8, U8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u64, u8, (u64)U8_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(u64, u16, U64_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u64, u16, U16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u64, u16, (u64)U16_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(u64, u32, U64_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u64, u32, U32_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u64, u32, (u64)U32_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(u64, u64, U64_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u64, s8, S8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u64, s8, (u64)S8_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(u64, s8, U64_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u64, s16, S16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u64, s16, (u64)S16_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(u64, s16, U64_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u64, s32, S32_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u64, s32, (u64)S32_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(u64, s32, U64_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u64, s64, S64_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(u64, s64, U64_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(u64, s64, (u64)S64_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(s64, u8, S64_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(s64, u8, S64_MIN, true);
>> +    TEST_OVERFLOWS_TYPE(s64, u8, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s64, u8, U8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s64, u8, (s64)U8_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(s64, u16, S64_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(s64, u16, S64_MIN, true);
>> +    TEST_OVERFLOWS_TYPE(s64, u16, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s64, u16, U16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s64, u16, (s64)U16_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(s64, u32, S64_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(s64, u32, S64_MIN, true);
>> +    TEST_OVERFLOWS_TYPE(s64, u32, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s64, u32, U32_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s64, u32, (s64)U32_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(s64, u64, S64_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s64, u64, S64_MIN, true);
>> +    TEST_OVERFLOWS_TYPE(s64, u64, -1, true);
>> +    TEST_OVERFLOWS_TYPE(s64, s8, S8_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s64, s8, S8_MIN, false);
>> +    TEST_OVERFLOWS_TYPE(s64, s8, (s64)S8_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(s64, s8, (s64)S8_MIN - 1, true);
>> +    TEST_OVERFLOWS_TYPE(s64, s8, S64_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(s64, s16, S16_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s64, s16, S16_MIN, false);
>> +    TEST_OVERFLOWS_TYPE(s64, s16, (s64)S16_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(s64, s16, (s64)S16_MIN - 1, true);
>> +    TEST_OVERFLOWS_TYPE(s64, s16, S64_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(s64, s32, S32_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s64, s32, S32_MIN, false);
>> +    TEST_OVERFLOWS_TYPE(s64, s32, (s64)S32_MAX + 1, true);
>> +    TEST_OVERFLOWS_TYPE(s64, s32, (s64)S32_MIN - 1, true);
>> +    TEST_OVERFLOWS_TYPE(s64, s32, S64_MAX, true);
>> +    TEST_OVERFLOWS_TYPE(s64, s64, S64_MAX, false);
>> +    TEST_OVERFLOWS_TYPE(s64, s64, S64_MIN, false);
>> +#endif
>> +
>> +    /* Check for macro side-effects. */
>> +    var = INT_MAX - 1;
>> +    __TEST_OVERFLOWS_TYPE(__overflows_type, var++, int, false);
>> +    __TEST_OVERFLOWS_TYPE(__overflows_type, var++, int, false);
>> +    __TEST_OVERFLOWS_TYPE(__overflows_type, var++, int, true);
>> +    var = INT_MAX - 1;
>> +    __TEST_OVERFLOWS_TYPE(overflows_type, var++, int, false);
>> +    __TEST_OVERFLOWS_TYPE(overflows_type, var++, int, false);
>> +    __TEST_OVERFLOWS_TYPE(overflows_type, var++, int, true);
>> +
>> +    kunit_info(test, "%d overflows_type() tests finished\n", count);
>> +#undef TEST_OVERFLOWS_TYPE
>> +#undef __TEST_OVERFLOWS_TYPE
>> +}
>> +
>> +static void same_type_test(struct kunit *test)
>> +{
>> +    int count = 0;
>> +    int var;
>> +
>> +#define TEST_SAME_TYPE(t1, t2, same)            do {    \
>> +    typeof(t1) __t1h = type_max(t1);            \
>> +    typeof(t1) __t1l = type_min(t1);            \
>> +    typeof(t2) __t2h = type_max(t2);            \
>> +    typeof(t2) __t2l = type_min(t2);            \
>> +    KUNIT_EXPECT_EQ(test, true, __same_type(t1, __t1h));    \
>> +    KUNIT_EXPECT_EQ(test, true, __same_type(t1, __t1l));    \
>> +    KUNIT_EXPECT_EQ(test, true, __same_type(__t1h, t1));    \
>> +    KUNIT_EXPECT_EQ(test, true, __same_type(__t1l, t1));    \
>> +    KUNIT_EXPECT_EQ(test, true, __same_type(t2, __t2h));    \
>> +    KUNIT_EXPECT_EQ(test, true, __same_type(t2, __t2l));    \
>> +    KUNIT_EXPECT_EQ(test, true, __same_type(__t2h, t2));    \
>> +    KUNIT_EXPECT_EQ(test, true, __same_type(__t2l, t2));    \
>> +    KUNIT_EXPECT_EQ(test, same, __same_type(t1, t2));    \
>> +    KUNIT_EXPECT_EQ(test, same, __same_type(t2, __t1h));    \
>> +    KUNIT_EXPECT_EQ(test, same, __same_type(t2, __t1l));    \
>> +    KUNIT_EXPECT_EQ(test, same, __same_type(__t1h, t2));    \
>> +    KUNIT_EXPECT_EQ(test, same, __same_type(__t1l, t2));    \
>> +    KUNIT_EXPECT_EQ(test, same, __same_type(t1, __t2h));    \
>> +    KUNIT_EXPECT_EQ(test, same, __same_type(t1, __t2l));    \
>> +    KUNIT_EXPECT_EQ(test, same, __same_type(__t2h, t1));    \
>> +    KUNIT_EXPECT_EQ(test, same, __same_type(__t2l, t1));    \
>> +} while (0)
>> +
>> +#if BITS_PER_LONG == 64
>> +# define TEST_SAME_TYPE64(base, t, m)    TEST_SAME_TYPE(base, t, m)
>> +#else
>> +# define TEST_SAME_TYPE64(base, t, m)    do { } while (0)
>> +#endif
>> +
>> +#define TEST_TYPE_SETS(base, mu8, mu16, mu32, ms8, ms16, ms32, mu64, 
>> ms64) \
>> +do {                                    \
>> +    TEST_SAME_TYPE(base,  u8,  mu8);                \
>> +    TEST_SAME_TYPE(base, u16, mu16);                \
>> +    TEST_SAME_TYPE(base, u32, mu32);                \
>> +    TEST_SAME_TYPE(base,  s8,  ms8);                \
>> +    TEST_SAME_TYPE(base, s16, ms16);                \
>> +    TEST_SAME_TYPE(base, s32, ms32);                \
>> +    TEST_SAME_TYPE64(base, u64, mu64);                \
>> +    TEST_SAME_TYPE64(base, s64, ms64);                \
>> +} while (0)
>> +
>> +    TEST_TYPE_SETS(u8,   true, false, false, false, false, false, 
>> false, false);
>> +    TEST_TYPE_SETS(u16, false,  true, false, false, false, false, 
>> false, false);
>> +    TEST_TYPE_SETS(u32, false, false,  true, false, false, false, 
>> false, false);
>> +    TEST_TYPE_SETS(s8,  false, false, false,  true, false, false, 
>> false, false);
>> +    TEST_TYPE_SETS(s16, false, false, false, false,  true, false, 
>> false, false);
>> +    TEST_TYPE_SETS(s32, false, false, false, false, false,  true, 
>> false, false);
>> +#if BITS_PER_LONG == 64
>> +    TEST_TYPE_SETS(u64, false, false, false, false, false, false,  
>> true, false);
>> +    TEST_TYPE_SETS(s64, false, false, false, false, false, false, 
>> false,  true);
>> +#endif
>> +
>> +    /* Check for macro side-effects. */
>> +    var = 4;
>> +    KUNIT_EXPECT_EQ(test, var, 4);
>> +    KUNIT_EXPECT_TRUE(test, __same_type(var++, int));
>> +    KUNIT_EXPECT_EQ(test, var, 4);
>> +    KUNIT_EXPECT_TRUE(test, __same_type(int, var++));
>> +    KUNIT_EXPECT_EQ(test, var, 4);
>> +    KUNIT_EXPECT_TRUE(test, __same_type(var++, var++));
>> +    KUNIT_EXPECT_EQ(test, var, 4);
>> +
>> +    kunit_info(test, "%d __same_type() tests finished\n", count);
>> +
>> +#undef TEST_TYPE_SETS
>> +#undef TEST_SAME_TYPE64
>> +#undef TEST_SAME_TYPE
>> +}
>> +
>> +static void castable_to_type_test(struct kunit *test)
>> +{
>> +    int count = 0;
>> +
>> +#define TEST_CASTABLE_TO_TYPE(arg1, arg2, pass)    do {    \
>> +    bool __pass = castable_to_type(arg1, arg2);        \
>> +    KUNIT_EXPECT_EQ_MSG(test, __pass, pass,            \
>> +        "expected castable_to_type(" #arg1 ", " #arg2 ") to%s pass\n",\
>> +        pass ? "" : " not");                \
>> +    count++;                        \
>> +} while (0)
>> +
>> +    TEST_CASTABLE_TO_TYPE(16, u8, true);
>> +    TEST_CASTABLE_TO_TYPE(16, u16, true);
>> +    TEST_CASTABLE_TO_TYPE(16, u32, true);
>> +    TEST_CASTABLE_TO_TYPE(16, s8, true);
>> +    TEST_CASTABLE_TO_TYPE(16, s16, true);
>> +    TEST_CASTABLE_TO_TYPE(16, s32, true);
>> +    TEST_CASTABLE_TO_TYPE(-16, s8, true);
>> +    TEST_CASTABLE_TO_TYPE(-16, s16, true);
>> +    TEST_CASTABLE_TO_TYPE(-16, s32, true);
>> +#if BITS_PER_LONG == 64
>> +    TEST_CASTABLE_TO_TYPE(16, u64, true);
>> +    TEST_CASTABLE_TO_TYPE(-16, s64, true);
>> +#endif
>> +
>> +#define TEST_CASTABLE_TO_TYPE_VAR(width)    do {                \
>> +    u ## width u ## width ## var = 0;                    \
>> +    s ## width s ## width ## var = 0;                    \
>> +                                        \
>> +    /* Constant expressions that fit types. */                \
>> +    TEST_CASTABLE_TO_TYPE(type_max(u ## width), u ## width, 
>> true);        \
>> +    TEST_CASTABLE_TO_TYPE(type_min(u ## width), u ## width, 
>> true);        \
>> +    TEST_CASTABLE_TO_TYPE(type_max(u ## width), u ## width ## var, 
>> true);    \
>> +    TEST_CASTABLE_TO_TYPE(type_min(u ## width), u ## width ## var, 
>> true);    \
>> +    TEST_CASTABLE_TO_TYPE(type_max(s ## width), s ## width, 
>> true);        \
>> +    TEST_CASTABLE_TO_TYPE(type_min(s ## width), s ## width, 
>> true);        \
>> +    TEST_CASTABLE_TO_TYPE(type_max(s ## width), s ## width ## var, 
>> true);    \
>> +    TEST_CASTABLE_TO_TYPE(type_min(u ## width), s ## width ## var, 
>> true);    \
>> +    /* Constant expressions that do not fit types. */            \
>> +    TEST_CASTABLE_TO_TYPE(type_max(u ## width), s ## width, 
>> false);        \
>> +    TEST_CASTABLE_TO_TYPE(type_max(u ## width), s ## width ## var, 
>> false);    \
>> +    TEST_CASTABLE_TO_TYPE(type_min(s ## width), u ## width, 
>> false);        \
>> +    TEST_CASTABLE_TO_TYPE(type_min(s ## width), u ## width ## var, 
>> false);    \
>> +    /* Non-constant expression with mismatched type. */            \
>> +    TEST_CASTABLE_TO_TYPE(s ## width ## var, u ## width, 
>> false);        \
>> +    TEST_CASTABLE_TO_TYPE(u ## width ## var, s ## width, 
>> false);        \
>> +} while (0)
>> +
>> +#define TEST_CASTABLE_TO_TYPE_RANGE(width)    do {                \
>> +    unsigned long big = U ## width ## _MAX;                    \
>> +    signed long small = S ## width ## _MIN;                    \
>> +    u ## width u ## width ## var = 0;                    \
>> +    s ## width s ## width ## var = 0;                    \
>> +                                        \
>> +    /* Constant expression in range. */                    \
>> +    TEST_CASTABLE_TO_TYPE(U ## width ## _MAX, u ## width, 
>> true);        \
>> +    TEST_CASTABLE_TO_TYPE(U ## width ## _MAX, u ## width ## var, 
>> true);    \
>> +    TEST_CASTABLE_TO_TYPE(S ## width ## _MIN, s ## width, 
>> true);        \
>> +    TEST_CASTABLE_TO_TYPE(S ## width ## _MIN, s ## width ## var, 
>> true);    \
>> +    /* Constant expression out of range. */                    \
>> +    TEST_CASTABLE_TO_TYPE((unsigned long)U ## width ## _MAX + 1, u ## 
>> width, false); \
>> +    TEST_CASTABLE_TO_TYPE((unsigned long)U ## width ## _MAX + 1, u ## 
>> width ## var, false); \
>> +    TEST_CASTABLE_TO_TYPE((signed long)S ## width ## _MIN - 1, s ## 
>> width, false); \
>> +    TEST_CASTABLE_TO_TYPE((signed long)S ## width ## _MIN - 1, s ## 
>> width ## var, false); \
>> +    /* Non-constant expression with mismatched type. */            \
>> +    TEST_CASTABLE_TO_TYPE(big, u ## width, false);                \
>> +    TEST_CASTABLE_TO_TYPE(big, u ## width ## var, false);            \
>> +    TEST_CASTABLE_TO_TYPE(small, s ## width, false);            \
>> +    TEST_CASTABLE_TO_TYPE(small, s ## width ## var, false);            \
>> +} while (0)
>> +
>> +    TEST_CASTABLE_TO_TYPE_VAR(8);
>> +    TEST_CASTABLE_TO_TYPE_VAR(16);
>> +    TEST_CASTABLE_TO_TYPE_VAR(32);
>> +#if BITS_PER_LONG == 64
>> +    TEST_CASTABLE_TO_TYPE_VAR(64);
>> +#endif
>> +
>> +    TEST_CASTABLE_TO_TYPE_RANGE(8);
>> +    TEST_CASTABLE_TO_TYPE_RANGE(16);
>> +#if BITS_PER_LONG == 64
>> +    TEST_CASTABLE_TO_TYPE_RANGE(32);
>> +#endif
>> +    kunit_info(test, "%d castable_to_type() tests finished\n", count);
>> +
>> +#undef TEST_CASTABLE_TO_TYPE_RANGE
>> +#undef TEST_CASTABLE_TO_TYPE_VAR
>> +#undef TEST_CASTABLE_TO_TYPE
>> +}
>> +
>>   static struct kunit_case overflow_test_cases[] = {
>>       KUNIT_CASE(u8_u8__u8_overflow_test),
>>       KUNIT_CASE(s8_s8__s8_overflow_test),
>> @@ -755,6 +1133,9 @@ static struct kunit_case overflow_test_cases[] = {
>>       KUNIT_CASE(shift_nonsense_test),
>>       KUNIT_CASE(overflow_allocation_test),
>>       KUNIT_CASE(overflow_size_helpers_test),
>> +    KUNIT_CASE(overflows_type_test),
>> +    KUNIT_CASE(same_type_test),
>> +    KUNIT_CASE(castable_to_type_test),
>>       {}
>>   };
> 
