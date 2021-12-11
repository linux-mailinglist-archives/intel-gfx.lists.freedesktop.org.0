Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02957471255
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Dec 2021 08:03:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAF5B10E2E9;
	Sat, 11 Dec 2021 07:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F1FA10E2E9
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Dec 2021 07:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639206206; x=1670742206;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5lSfL40UZq3juHkofkynJGCaA7gCr9zp7W8zLF4PARQ=;
 b=QIB+VZUUn40KUpNAEeWm2LhwvOsbiL46XPd3kuOkpE8FnJrg4i3h/8Wp
 Qu6E9i75yKSL68Rn/xnKiCiJ+siDlui3QBvSeDYfXYp/eM+XNMdLo8/0L
 RXsGg/Z9ZDuX2BnfRDwaE0udE1PJucm8iOC4e70bwVlB9KzWf3ZcsCgSG
 ipU7SWv1bITRjMizOQ7VKZvFagKmFJoUg3M8doobnnMZcex+3Gx3EoQKK
 7Y4cO5PHKPY/H1MIneC6nDyM57hViMolsrq6V2nMVIX6yj6u0rYMwv+9w
 yThb7TNlS7W2uQ+ipTDr/M5Lh7RyI2NW+jwTpCJQCeInIuK6J0rz0QQNr g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="237249241"
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="237249241"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 23:03:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="504246484"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga007.jf.intel.com with ESMTP; 10 Dec 2021 23:03:25 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 10 Dec 2021 23:03:25 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 10 Dec 2021 23:03:25 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 10 Dec 2021 23:03:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TUyHobQ18NWhfB4JX+N7vMrlZXcYT4UCRIe8GXEE8crsjE3XeUg/qejEzMecfUOwCHxXaTiE2oLMCCuTRNM2rqfQS+MKCCKkPcSFACTvSjVdr87AgPdIiDIZ05lIM2moi7kozD7/l/ArgVoatWTx6me4vGWTHofg92/WEHEW5y01CiL/urErIPciNVFunS2KMl6M2LJSSNG5h3ojX2Fu12xLGDbPXNVcOpSl4sUn4My5+BSJvsZY6krXkhCNk/MFFDJy9vbpYrJxor4OKqkeDyUxctloj/58OexmMmDAb48q6MyS2G577Xvvnl4bJBJuGBymugyG4tfb/f8eokfC6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+uDplZgKx26RHhJZjyKQyrZCzU0y5EMg4XtweMoxQKw=;
 b=Gs3x2S/rm5OdqJd7vmbxVvW5L8sxjo+Hqslx+xLNIEcI1h5jLjbAXqTWI5Aw0w0HUtF0r0UgSv2zKEBAu8Geu/qHndY8RViIX0ENUxUcd2O69YHodSgZ45w8WwK0U+HLFDJmuVxrg41ZD+6bQbND7cScGeV20dzwmzcws76IV5Uc/ETTAsFSSiTKRAJr87NLzYh0xU5wVr/41immlb0a+saWsrILu0HwSn7lq97/kJtISU9CGb5uHA/p4fxxii8GCtVWY0s1v6efQQIOHBx8HlRGdAreZijb3s/oFT6XbKPRyfFtuFpKnSSLmuXZ0cTXgziGfnGIsoV1Gj/K31ESTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+uDplZgKx26RHhJZjyKQyrZCzU0y5EMg4XtweMoxQKw=;
 b=Ictu+Avn1ST2FoVDiiQ12gt6ySpSdV+fqFwveN+o2/tnzItgWJx/44oYtrYW1xkoPoHQxnwfDiMZGDjM4glxeU+0GkI+LZAl/+IP28JPa43GwFzHrkcBq1E7GoJbXzfoe1+Rs2yhTf1Pjv6Edc+4Z9aGVDxZ933f9fdwflXNr3E=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.11; Sat, 11 Dec
 2021 07:03:23 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::8460:d836:4335:641e]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::8460:d836:4335:641e%5]) with mapi id 15.20.4778.016; Sat, 11 Dec 2021
 07:03:23 +0000
Message-ID: <110abafe-e292-9325-7bba-bce35cb5ccef@intel.com>
Date: Fri, 10 Dec 2021 23:03:20 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.0
Content-Language: en-GB
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20211203145603.4006937-1-ravitejax.goud.talla@intel.com>
 <20211209172139.jze46pphfosafv62@ldmartin-desk2>
 <20211211012254.GI2219399@mdroper-desk1.amr.corp.intel.com>
 <4bb349c0-5518-b93c-1925-59bb7e1dd08d@intel.com>
 <20211211053048.y5vkycct5j6tvsui@ldmartin-desk2>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20211211053048.y5vkycct5j6tvsui@ldmartin-desk2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CO2PR18CA0062.namprd18.prod.outlook.com
 (2603:10b6:104:2::30) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6a0550a8-60f9-4d0b-54ef-08d9bc745211
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BY5PR11MB391138296FC22E16306517FABD729@BY5PR11MB3911.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tt0OyYivNd/YdXwOo4ifLy+ESb7iKITQ+7NyFzNETkNrX9+LE4MnX98CZz7pjCH1RNoCG69XEZ6SQgKoOl1PP4jyW9ZRGZfnAlodSaazHFmnw/5ywA5rB6OmbsCgEgzjG0B0P8fc2WE9KS+0rns9d0VvlLoVTEVHBLSvmFJQvxd4S1XMGT9TVCMLObyU5xtjnqpO+HB7juhwC1/Xt8q6wsPFoXKXXOXJ6hNF1pSbk1SubRzQDCXdUKDSpJL7tfv/jScnr2f2P7CjIzAYE0s9qtMBcUjDjPowr/cvpnYy4R4R7R87r1LHuKsTA/FAof2RSjVQEpUl8BOl7x4WrDpozroErrEho5f4gNfS+xWt+Ec7eQdfg8tKU7OLIqYJGOzty9qXefh8c2f/tRtZhj257UGn0JuxD/0PJH6spbLMav/pdo8kkD+bkc2uggqT5NpADYX4Dvi5Szy90joDZNMWR8KVPoh9sCjoS3EN6TkuJHciwwPb2rpTxub+a6FJS5KrqrlJWAabw8yf40TiX2cEwynZZdzE+BsLPXHA1uFwfja/njw3Yx/smrT7o+oCxLitsxVSi+4qF4JB9tWFPucl0y1MvCw6z2/kNkf5KfxKchkRUaLQKb+LQvsguPFyBCZ1mjWOWU2hbK2fqGlecbAJ2j9T1WFFh8x8VZ0RkyWJVowNWWaZmi2pmFi4VpjCFWVYkMwC1W0q1U/KG2IDru+010x0LB0F92iw0VCFPcE7HSm/7/x/hDBhTatqP2ngKRXm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(36756003)(6636002)(66476007)(66946007)(82960400001)(316002)(8676002)(66556008)(4326008)(37006003)(6486002)(186003)(2616005)(31696002)(83380400001)(8936002)(6512007)(6862004)(53546011)(6506007)(5660300002)(31686004)(86362001)(26005)(2906002)(38100700002)(966005)(508600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1doSEJ2UmduSzFLdlRvV2tDRHVsNzU2bGRmQitPUGpCem9TOWVqNHUyRHA3?=
 =?utf-8?B?QmVPV016NnAzbTBnK0FiR2M1YmJjZ3lQcmYxZWQxV1NJY2d2QlVaOC9YcVAw?=
 =?utf-8?B?OGFQcEMzdldkdWdWS3lzeHJiYXIxU2U4WXB6KzZZb2hyVkVsMkJWbTZucE04?=
 =?utf-8?B?a1pMRmYybDhyMDEveFM1U0hTeWFTUTJORXhGYndUdUJuLy9JYXpFcUlBQzda?=
 =?utf-8?B?V3pTM0RWTHhjaUJHQndQQlZqWWJVWjRFVGlzMktWUFZoR1JwUlZxYy9PNnVx?=
 =?utf-8?B?NlNkdnJhUXlycmszd00wMG5Sdko4eEhtYjJob0kzNW1CVldtdGYvZHFaYjRD?=
 =?utf-8?B?L01NNjlqVUYyYlNmamhhMVRHTjI4dG93blpFNmkvS3gwNjFWUGJ6aDhnVTZy?=
 =?utf-8?B?VnF0SlhzQzVvWnppeTB4UEdzSVNydS9LMkZ0YkdHRy9sME56TkJSbjdVM3Z4?=
 =?utf-8?B?Tzl3SFhsYitnaSs1M0Q1RzM5Mi96NWtTWTN4ZHJKSDRuZkdyR0tvdVJ4aG1t?=
 =?utf-8?B?cTNtZjVHYXFsM2VjR2RTVGlWYjNuY3BQNnQ5ZUJlem42ME5oNEg0RDlmMGhk?=
 =?utf-8?B?aE9UazJneUgwdkRWZmlEYm9GcTRWc3E2ekYrajVIWXAxSWJSdVVCcm1MVG5s?=
 =?utf-8?B?VTViaUdzWXFnQnNJY2dHM0xzdndOb0tUbC9rMkRSMzJqN0RkSStNT0tpNGZT?=
 =?utf-8?B?aFRGQXREd2UwN214RFRZVjZabkdsaWdNYm0xYjFZclJUaURjMDVNRXFyWU9s?=
 =?utf-8?B?eGR5OTdFSE1rNUVGYnplMXBQWWt4OWdjaS9wa3ZJNXp0b3JtU3ArWG9vSmFH?=
 =?utf-8?B?aHlYMjMyM1Jib1JGZWl6S2dHMXZHNlJJdWwwWk02YldDcDBVUkJDN09QcHlB?=
 =?utf-8?B?R29xanRadWtzcEtPcFRBL2s5NWRQQVZKWWlsMGR1RTFGc1lNc0Yva1dzSk5l?=
 =?utf-8?B?RysrYlhKUGI3VmxHWlpJMHBoOHFkdjlIRFhETHhFYmU3YnN0clF3ZEk0SXlt?=
 =?utf-8?B?eUpaUG4zN2JwUlpCN0tTNFozcGZvZGpXMStzcGZiV3U0blVGcXhkblRDbUxT?=
 =?utf-8?B?QWZacUZUQ0ZjWTR4dXFqVHo1UWROSHVtSjdFLzROSkZoRlI3bG1VUFpHRGN6?=
 =?utf-8?B?VVMxczJVYllsalpMbGs4NmJCdFFhdVpoc1dhMTJZWTlYVEZEcDNVNTlZM1V5?=
 =?utf-8?B?STNHT1VCRXdLbWorMzhlWWJhUlBEb016bzRZeE9DOHdmeVpPU2oxZUY5NGMv?=
 =?utf-8?B?aEVSWWg3VkVzY21tckN1NHRpQ1dhZklpWVdFaWhQMnpzSUgyOVJvS0NJb0hw?=
 =?utf-8?B?dy9ZaHZNRnhNZUhiOHlXZ2x5VkxnaEF0TkdhamJiK1h0K0RtR1RPclhMajI1?=
 =?utf-8?B?aEwzMUlhM0VkYWJvRjVELy8xWDZWL0lkTkxUbGhYSFFBUEx0NFRnRTZqUHJi?=
 =?utf-8?B?Q0Q5RHRRY1p5NWYvWGx4ODd1Sk0rS0tPVlhEbUdseVN6aE9qbjE2S1BvUElt?=
 =?utf-8?B?Nmg3dnAzOExOQWFuN2NrdHBBamtzSHIvbUtZemorUThzQlVJTlpsTHRUTDNE?=
 =?utf-8?B?blNuYWwwRkxpWmlERGNPR0U2cVlDdVN4YlRqNVphbVdpSHJ3TGRNQzVJbnkr?=
 =?utf-8?B?Q3U4WUVTODZua0tCbWlXcVJCR0lKeFNpZFNNR0ZSMk5hMTUrOXI3R1pSTitP?=
 =?utf-8?B?aHcxV3FiY21zQ3NYWW8vZm51U3U0ZlJrWDFiRGgyQ0RZN1cwWFZhOWM4c3pq?=
 =?utf-8?B?S0hYeVZreDdtUFlieGdvM1NTQ0E0Mno2NDlHLy9TUTJRMm1ab2w1UDROTDR1?=
 =?utf-8?B?dlk1N2lPQ2hvSzRZMmdUM1NnZ2ZVZUFPWWkzWmZtczJkM051dFhMT3BzcjVV?=
 =?utf-8?B?K291b24ydzFzQU9qV1QvUExpN2h6OW5LWWlFd3Y4Z1FjbTRleDArZkVOYXBx?=
 =?utf-8?B?VTVuR3o5cjZzVVV3RGxOS0xweVF3dXlYYm1CUXZManN6b2xDampoai8yWndi?=
 =?utf-8?B?ZmxZcFI2SktSNnVIekllNzQrYzZROE9NdmdaaFV2dVZKbVNSMzFaUzMwODRP?=
 =?utf-8?B?SUZ3aVoyeFFnTUM0OUhNN2JkcFZiOXVLR1JsRmVyYkhucE1KdFNiUG04SHJ6?=
 =?utf-8?B?VXBjUFJRSGhBZmNjN0ttblpaMVVlbDB4aWJGblJmVmJNcHBReURQUUpLMFpq?=
 =?utf-8?B?aEd2WTRBblU4ZHh0UWRQMVpmVkpmaVE2ZE9OL1hIUXlLNmlweEs5R0dYU0ZC?=
 =?utf-8?Q?cEnxaohoR33kk2+0o6FvxUkdgLxGkAz/OyCv8HVn8M=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a0550a8-60f9-4d0b-54ef-08d9bc745211
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2021 07:03:23.0762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XsIiJjb1XltXnwnnqsRzPYsJkl6NSTMvHucZUKTeZYWmMEPfsFUILHF0COk6Wbc4NlCNgbEU7ROGn799DuFNWe4hBNC0sD7jZycBcVm+wm4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3911
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v2] drm/i915/gen11: Moving WAs to
 icl_gt_workarounds_init()
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
Cc: ravitejax.goud.talla@intel.com, hariom.pandey@intel.com,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/10/2021 21:30, Lucas De Marchi wrote:
> On Fri, Dec 10, 2021 at 05:41:46PM -0800, John Harrison wrote:
>> On 12/10/2021 17:22, Matt Roper wrote:
>>> On Thu, Dec 09, 2021 at 09:21:39AM -0800, Lucas De Marchi wrote:
>>>> On Fri, Dec 03, 2021 at 08:26:03PM +0530, 
>>>> ravitejax.goud.talla@intel.com wrote:
>>>>> From: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>
>>>>>
>>>>> Bspec page says "Reset: BUS", Accordingly moving w/a's:
>>>>> Wa_1407352427,Wa_1406680159 to proper function 
>>>>> icl_gt_workarounds_init()
>>>>> Which will resolve guc enabling error
>>>>>
>>>>> v2:
>>>>>  - Previous patch rev2 was created by email client which caused the
>>>>>    Build failure, This v2 is to resolve the previous broken series
>>>>>
>>>>> Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
>>>>> Signed-off-by: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>
>>>> It seems like this patch is needed to be able to load GuC in ICL:
>>>> https://gitlab.freedesktop.org/drm/intel/-/issues/4067#note_1184951
>>>>
>>>> And that is failing on Linus' master branch as of
>>>> 2a987e65025e ("Merge tag 'perf-tools-fixes-for-v5.16-2021-12-07' of 
>>>> git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux")
>>>> and (at least) 5.15.*. Looking at the appropriate "Fixes" tag I 
>>>> found these commits:
>>>>
>>>>   1) 1cd21a7c5679 ("drm/i915: Add Wa_1407352427:icl,ehl") - original
>>>>      commit adding the WA
>>>>   2) 3551ff928744 ("drm/i915/gen11: Moving WAs to 
>>>> rcs_engine_wa_init()")
>>>>      moving the WA to rcs_engine_wa_init()
>>>>
>>>> However (2) is on v5.7-rc1 and (1) is on v5.6-rc1 and according to the
>>>> bug report GuC loading was working on 5.13. So I suspect the move
>>>> to GuC 62.0.0 made the checks more strict, or there is another patch
>>> This is correct.  Having "GT workarounds" on the engine list by 
>>> accident
>>> used to be harmless (because i915 [with execlist submission] and the 
>>> guc
>>> [with guc submission]) would simply re-apply the register setting more
>>> often than it really needed to.  However the more recent GuC versions
>>> have become more picky about the set of registers they're willing to
>> Actually, I think the GuC was always picky but we haven't supported 
>> GuC submission upstream for quite some time. There was very old 
>> support (never enabled by default) in the VLV timescale. And at that 
>> time, we were not using GuC scheduling anyway, so no save/restore 
>> list. I think by ICL it had already been removed as broken. All you 
>> could do was load the GuC in order to load the HuC. It is only 
>> recently with the ADL-P/DG1 support that GuC submission has been 
>> re-implemented and the save/restore list added in.
>
> as I said in my other reply to Matt, it's not GuC sumbmission that got
> broken though:  it's enable_guc=2.
My point is that it wasn't broken until we added the GuC submission 
support. Doesn't matter whether submission is enabled or not. Until it 
was implemented, there was no save/restore list. After it was 
implemented, the list was created even for enable_guc=2 as it is part of 
initialising the GuC.

John.

>
>>
>>
>>> save/restore for workarounds and will fail to load if they see a
>>> register on the save/restore list that isn't something they think is
>>> appropriate for an engine reset.
>>>
>>> GuC submission isn't officially supported on ICL; you can force it via
>>> module parameter, which taints the kernel and takes you through 
>>> untested
>>> codepaths, so you do so at your own risk.  Given that, I don't think
>>> there's any real need to worry about getting this backported to 
>>> specific
>>> stable kernels; having the workaround in the wrong place doesn't
>>> actually harm anything on the official and default non-GuC mode.
>> As above, even with GuC enabled, I still don't think it is a problem 
>> for any kernel using a GuC version earlier than 62.0.0.
>
> so that rules out 5.10 and the only stable we need this on is 5.15 which
> is pretty easy and applies cleanly.
>
> Lucas De Marchi

