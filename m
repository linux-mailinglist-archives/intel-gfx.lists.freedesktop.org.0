Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0A0443B19
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 02:45:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFBDC73992;
	Wed,  3 Nov 2021 01:45:47 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D8347398D;
 Wed,  3 Nov 2021 01:45:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="218604315"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="218604315"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 18:45:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="531763097"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 02 Nov 2021 18:45:45 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 18:45:45 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 18:45:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 18:45:44 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 18:45:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JOsyitxYLq44LZWKS9JRp456c/o3SUBI/jm2C/XB90HP2/GmCUIxpGdtMYnkpw7PMcm+/oSILIjBNDTCy0v7CBjVUbEzbWTTjt7lLzIY32ZGvOWNC5V9hRB+kmpyVp0+OQEqJhRqsqr0lMUa4x6KWgSlk4dFnDcwBzPpqjVucwCmd2k2nFTRWL23Yk6E3mvw5+okrGicjzGwGm5hRyCE42f8qugIsb9JzZ0F4V9/PIYRZdf11lwyBpUQS4nip5WQI1Y1ZU3Mdf/bNEe4bCyWwSvyUNA4ujjl3rjaldTq7bjMeg7SOp/E1mroKtX5LEPnJxERi/oHrsA/vVrQPAdBIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aJpP/HILZTwwUwY0DpPCZS6//g+Z3Jsoe3Hx3OV4kFE=;
 b=fcGU0xXzvI0ROxoCHGrvwEVPwP27HqrDHBdcCYxxlKdYUO82Xc31GxmpIjGXaDVN1zfEnMhxuDA2s7nQ8MMcWvGZbCTRmDTS8lljMeoJE8jeyKJly8UxcsvThG526CwyAEzrZ8zd4lO/Qb4wG6uXvoihjprsLT4u0QSpFfCEp6CWguWFPsa/M5arPZnCExGp+iM7qe9P6t0uyqj3jjhXPPAeKDgZ99ZBahTtL3Xg966XeWmRq/ZKkVWBGzoMP29Vw+dqfq3mCG96aQc5qz5ZZ3qkpExhF1wQO0Rh0PNZsRCNl8+pIKQkRi4ucnHWJ5cBZ4b26rIkC89Dq6xg752C7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aJpP/HILZTwwUwY0DpPCZS6//g+Z3Jsoe3Hx3OV4kFE=;
 b=zQ3D7nIBtKPoLgarzIs/IuZaf/28NsEBNRQnK0Plnu1jhDkb1n31fxM3s2qdqKDs8x5j807HmGgqJ/k25Wr6xdKYKewjBJeAlG8P+9eV4tKkwfc0ysWLIDzpGQUgAatHsVg/MGSC67K3DZxITJb0w5Ql+5ROkXweJ/VkaWbfq80=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5626.namprd11.prod.outlook.com (2603:10b6:510:ee::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Wed, 3 Nov
 2021 01:45:41 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::ad26:6540:dce1:9f81]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::ad26:6540:dce1:9f81%3]) with mapi id 15.20.4649.019; Wed, 3 Nov 2021
 01:45:41 +0000
Message-ID: <4adc8d9a-8393-2774-2c67-a93083240795@intel.com>
Date: Tue, 2 Nov 2021 18:45:38 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.2.1
Content-Language: en-GB
To: Matthew Brost <matthew.brost@intel.com>
References: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
 <20211021234044.3071069-5-John.C.Harrison@Intel.com>
 <20211102233442.GA16356@jons-linux-dev-box>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20211102233442.GA16356@jons-linux-dev-box>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CO2PR18CA0043.namprd18.prod.outlook.com
 (2603:10b6:104:2::11) To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
Received: from [192.168.1.106] (73.157.192.58) by
 CO2PR18CA0043.namprd18.prod.outlook.com (2603:10b6:104:2::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.10 via Frontend Transport; Wed, 3 Nov 2021 01:45:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d0ff69dd-da28-4ea4-d3b9-08d99e6ba4a6
X-MS-TrafficTypeDiagnostic: PH0PR11MB5626:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <PH0PR11MB5626F8BD49B7FCB4CEC51348BD8C9@PH0PR11MB5626.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Wq5rsagEBGChaIzZY8BzZauZR1dxa0EmM80yl1F1/ODzg9JA6bMViRcYGA/LGpZGyR7kHLs7WtHMjPVV/Qw2UgtSXnS1BslUAypuwOw0Bpf9KluusVbMFmmM7Dirm7UCAtc68YT9ReNseTMJvIuLaQ+fP4K5NWNft1xKH7aKmJYHrkgmEb+OBBKfq2cZvVxz+txT2r0u2HvHavTu9SEL9j+bgtuCSQpKmLo9MnkEWEHSOui7wzoq6cRQG6bjhMO8LHCtBgU/XVobZ7uKltSmes+ILz8NGig5DNhdBYqtanEj6nLamKCYhK4WQTp+gasFEhlf1P0GombgT4LebvS32ZixEXoHElqAkYfA7La7EGN7nI2Lgq3fdOxvjaT4hJ5St1D161ecmCb7OC66l0C61IwgMzZjaDYZcKBxMEBSAK208rHXDpwBHtCHeHPA/063tlBzoWQD4SFdZj1XVQJeBxjz9C6/Z1eYCo9nVRP3G0MAB8wYmhFamnULLWsnBpS7iIeQl1vYhU1o4HrwbHRv43Zl4zXtOtnU/rLTb2VlhO+IcwwKC5l40vGOhLLyjOb3e8Bgve7AHIXOFDGxKpcq8961gDnOigEfUlD0lovrHexWpKJKmHcP3rrGh4mcbzjIFl6BOL+P6sbyAAytV7yGoAZp/zg0umptJDGAtJh5eLnqhIc3UhQVAhciKeP03ibZt1t5Y6mMpOgknKDHUJ7wUrgtLwiJsezHu4Nzj2BBkXw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66556008)(66476007)(450100002)(26005)(2906002)(31686004)(83380400001)(508600001)(956004)(186003)(66946007)(2616005)(6636002)(31696002)(36756003)(38100700002)(82960400001)(86362001)(6486002)(53546011)(8676002)(5660300002)(37006003)(4326008)(6862004)(16576012)(316002)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NW5qUGRjZjBkc1paNHZRVmdLUnJqWjBTT3dFY0c2cUgxUTljeDZlS2tneGpT?=
 =?utf-8?B?blFQU0gwYjVYTXlpWU9QWFd1N3FEODUrQ0RFbkwzRUgzb3BldUpmTEl6a2Rn?=
 =?utf-8?B?bjFuZDRsU0FEUmQ1NjdGUkZ4UlNGYklDbVNiY0s2NlZDaEJjL3oySTRENG9n?=
 =?utf-8?B?ZmI2VElLdTh3cE9MSzdIRS81Zmlwdnd5cDNCTHBmb3B2UzFFT1c4dUl6OEJ3?=
 =?utf-8?B?VzQ1bzYyN1BOVVAwWW40cCttcUpkTVpoMG55Ykk2RmpraUx4SzFLRnpPay9F?=
 =?utf-8?B?K2U4ZGs4NjE3M3dtZHJLc3dkUnVxZklkUnZ6dUFPZWVGdURmNUJBd1VnYjB0?=
 =?utf-8?B?ZHc5bzVPY3Y5aWhJMVJqbzNWTHJib1Y2TlVHdVdqUllxcXFxNlI4VEJmMnNC?=
 =?utf-8?B?L0QrOW52bUVPODUyOXlHT1gxQ0hEMTNacUpyWnozcVF0Zkt2ZS9hUThNc21I?=
 =?utf-8?B?WUpoKzJZQk1GSlRMZDBRL2ZOTnphRGhkNjc2TVQ3TUxQYWpacjNFZG1FK3pi?=
 =?utf-8?B?dTRkSTJqVlErMEhkTlFyeHBISVRtb1BZZTM2UjZmV0FFV0w2TU53emVNZUZI?=
 =?utf-8?B?anliT3RXMmdpdTFsYy9QL1MzaWdoNHFHcW5PeTFHOU1qbWJoYzZ0Z25qb1NS?=
 =?utf-8?B?QnlLYlo1Mmd5MUdvOUFFTXRQNjI3ZEt0NUpXUmV0blpUZTE5bC84blpaRytz?=
 =?utf-8?B?OGJKeXNTN0FhaVJvNkRIR2ozbElsWnJHMkxkeHgxRDVuSDA2ckZMRlFqRkVO?=
 =?utf-8?B?eUhEdDIzbzhHY1B2RXJDL3NJc3R2MXlkOVJ4S0VoYU9wRG1sclFDNjJkTWtq?=
 =?utf-8?B?dms3WXBQcnRYaTMyZjZ1VUYwVnVSOFM0dndFb2RBeUE5VWZ0MVR6Nk9zdi9h?=
 =?utf-8?B?VHBBOFYxSVJzNTdreFBDY1ZCNlZSYXJKekhyWmp5cmpVSzZ2S0tZU21kRFNx?=
 =?utf-8?B?R2hMUHdoeGxFT0gyK2V3dy9HWkFZQkVuZFZiT3gyYzBVeVpTTVNSQWNHc3Y4?=
 =?utf-8?B?emxXQisxK2VpU0xpbFlJMUExLzlxNklZUFdmTWdqcTBKNzQ4eDk5Y3grTmpC?=
 =?utf-8?B?THQ3cTViMFNkOG5CZVh0OXBUZy9weXU3cmRFNmJQL3JzblJNTGR5OXJ1OUl0?=
 =?utf-8?B?am9HM0VKQXVzQjhHT25ud2llSUF5andVQnFPY0hJakc0NGxaWUFrR2xuRFZW?=
 =?utf-8?B?UWp3b2NTUEpBdGhtZmNCUm1sK1M1aTI1NStzU1ZGWUhmanBkMFQxRUVtaktk?=
 =?utf-8?B?ejV4RHA5NFlNYTNhYXJ6djQxQS9ocDJFcXRSd2lzT2xDbHhvTTc0ZGljbXFh?=
 =?utf-8?B?anJSdFZEdUo2QkliMzlJdmNIMXlRcFk3RUUwaW4vT0FLK090VmY5c3B6TTFW?=
 =?utf-8?B?M016RGFFc3Q4bUprY3F2Rkg4SGpwNkduVkRsQWJhV0hyck42QlZQLzR4SmJx?=
 =?utf-8?B?T0dpYVRGMGRMUDkyN3hGSVVmbWUyZk9CTERLeG9sYUtOTXc5di9WQjFyT1c3?=
 =?utf-8?B?MjJQa0FkZXZOZmVXQnZMdFpFWDZpNytuSDAvQXVpV283c2FqNTI3RU5TdDAy?=
 =?utf-8?B?anVJKzg2bS9Hd0l5ZGlDb2VEOEp1NXh3VU91THBRNlJ6dkdDK01rU0tZWFM5?=
 =?utf-8?B?QmpRQUhYNkJ5eDBoY0NZQXdTaWpPRkxlY0J1L2R3VVQ4bGpHcGdBd0JSQkxk?=
 =?utf-8?B?c0pvNWNySys3dkhHeHFQM0VpekJJZHcxZEQ3QkRKMmtvdEJoQ0RCQ3dSdmhZ?=
 =?utf-8?B?Z1JwaXo5SnZQYXNlYUZPL2lZWUNJaWxkNVo3TVQ2NW1BNUo1MXJXeVdNZkE0?=
 =?utf-8?B?end3Zk9qTHpVc01hWWtKLzVoWEFqY1l6NUNQQ0dvWmhSMFFQZTRiclJrYllN?=
 =?utf-8?B?NGNpczRKMjhIdzJXdVpwUTBEMTJ6YkdJbC9RalpGYzNacWFWeHMxOE8rYm9q?=
 =?utf-8?B?b2ZSa0Zvd0t6VjE4UVMvaUduTVVxSHdkVVBwVEVpWUlsZ25EcmkydGxpV0xG?=
 =?utf-8?B?ZXJnN25CM1JXSzNmTVd0bWVnbDBpZU1GUmNUS1ZtMnJjd0c2U2dMSks1b2Zq?=
 =?utf-8?B?N0xhbjNLeGZjakY2WjdSUEg4YXc0TVoxcW5NTnUzSVI5ZWE4Z2k0S2F6dEc3?=
 =?utf-8?B?bjFjK3VaYi8zSzN0S3VTdTBhU2lZWVZOR254OE5aSDNLMDhGVVd3b3JIQy9m?=
 =?utf-8?B?aldLTkg5SFhUaDRydEJLMmdFL3VVK1B4aERHOFlXM01zS0k4c2xCbDVub050?=
 =?utf-8?Q?SC6smM7F76RSxTY4Ma2TIwOCmxbrxuJKt5WF9TTKmk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0ff69dd-da28-4ea4-d3b9-08d99e6ba4a6
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2021 01:45:41.2503 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ofujR4fBnrFQVvZsPRNjbNZxOAIOr1NAm1VT9FZrtm7RmOJmvq8AqlfHoFj4n+5LUEpCuoh3sg73ci1Zs5ylmtNsyMoNe25AAJy10O9+dX0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5626
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 4/8] tests/i915/gem_exec_capture: Use
 contexts and engines properly
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/2/2021 16:34, Matthew Brost wrote:
> On Thu, Oct 21, 2021 at 04:40:40PM -0700, John.C.Harrison@Intel.com wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> Some of the capture tests were using explicit contexts, some not. Some
>> were poking the per engine pre-emption timeout, some not. This would
>> lead to sporadic failures due to random timeouts, contexts being
>> banned depending upon how many subtests were run and/or how many
>> engines a given platform has, and other such failures.
>>
>> So, update all tests to be conistent.
>>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>   tests/i915/gem_exec_capture.c | 80 +++++++++++++++++++++++++----------
>>   1 file changed, 58 insertions(+), 22 deletions(-)
>>
>> diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
>> index c85c198f7..e373d24ed 100644
>> --- a/tests/i915/gem_exec_capture.c
>> +++ b/tests/i915/gem_exec_capture.c
>> @@ -204,8 +204,19 @@ static int check_error_state(int dir, struct offset *obj_offsets, int obj_count,
>>   	return blobs;
>>   }
>>   
>> +static void configure_hangs(int fd, const struct intel_execution_engine2 *e, int ctxt_id)
>> +{
>> +	/* Ensure fast hang detection */
>> +	gem_engine_property_printf(fd, e->name, "preempt_timeout_ms", "%d", 250);
>> +	gem_engine_property_printf(fd, e->name, "heartbeat_interval_ms", "%d", 500);
> #define for 250, 500?
Is there any point? There is no special reason for the values other than 
small enough to be fast and long enough to not be too small to be 
usable. So there isn't really any particular name to give them beyond 
'SHORT_PREEMPT_TIMEOUT' or some such. And the whole point of the helper 
function is that the values are programmed in one place only and not 
used anywhere else. So there is no worry about repetition of magic numbers.


>
>> +
>> +	/* Allow engine based resets and disable banning */
>> +	igt_allow_hang(fd, ctxt_id, HANG_ALLOW_CAPTURE);
>> +}
>> +
>>   static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
>> -		       unsigned ring, uint32_t target, uint64_t target_size)
>> +		       const struct intel_execution_engine2 *e,
>> +		       uint32_t target, uint64_t target_size)
>>   {
>>   	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
>>   	struct drm_i915_gem_exec_object2 obj[4];
>> @@ -219,6 +230,8 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
>>   	struct offset offset;
>>   	int i;
>>   
>> +	configure_hangs(fd, e, ctx->id);
>> +
>>   	memset(obj, 0, sizeof(obj));
>>   	obj[SCRATCH].handle = gem_create(fd, 4096);
>>   	obj[SCRATCH].flags = EXEC_OBJECT_WRITE;
>> @@ -297,7 +310,7 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
>>   	memset(&execbuf, 0, sizeof(execbuf));
>>   	execbuf.buffers_ptr = (uintptr_t)obj;
>>   	execbuf.buffer_count = ARRAY_SIZE(obj);
>> -	execbuf.flags = ring;
>> +	execbuf.flags = e->flags;
>>   	if (gen > 3 && gen < 6)
>>   		execbuf.flags |= I915_EXEC_SECURE;
>>   	execbuf.rsvd1 = ctx->id;
>> @@ -326,7 +339,8 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
>>   	gem_close(fd, obj[SCRATCH].handle);
>>   }
>>   
>> -static void capture(int fd, int dir, const intel_ctx_t *ctx, unsigned ring)
>> +static void capture(int fd, int dir, const intel_ctx_t *ctx,
>> +		    const struct intel_execution_engine2 *e)
>>   {
>>   	uint32_t handle;
>>   	uint64_t ahnd;
>> @@ -335,7 +349,7 @@ static void capture(int fd, int dir, const intel_ctx_t *ctx, unsigned ring)
>>   	handle = gem_create(fd, obj_size);
>>   	ahnd = get_reloc_ahnd(fd, ctx->id);
>>   
>> -	__capture1(fd, dir, ahnd, ctx, ring, handle, obj_size);
>> +	__capture1(fd, dir, ahnd, ctx, e, handle, obj_size);
>>   
>>   	gem_close(fd, handle);
>>   	put_ahnd(ahnd);
>> @@ -355,9 +369,9 @@ static int cmp(const void *A, const void *B)
>>   }
>>   
>>   static struct offset *
>> -__captureN(int fd, int dir, uint64_t ahnd, unsigned ring,
>> -	      unsigned int size, int count,
>> -	      unsigned int flags)
>> +__captureN(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
>> +	   const struct intel_execution_engine2 *e,
>> +	   unsigned int size, int count, unsigned int flags)
>>   #define INCREMENTAL 0x1
>>   #define ASYNC 0x2
>>   {
>> @@ -369,6 +383,8 @@ __captureN(int fd, int dir, uint64_t ahnd, unsigned ring,
>>   	struct offset *offsets;
>>   	int i;
>>   
>> +	configure_hangs(fd, e, ctx->id);
>> +
>>   	offsets = calloc(count, sizeof(*offsets));
>>   	igt_assert(offsets);
>>   
>> @@ -470,9 +486,10 @@ __captureN(int fd, int dir, uint64_t ahnd, unsigned ring,
>>   	memset(&execbuf, 0, sizeof(execbuf));
>>   	execbuf.buffers_ptr = (uintptr_t)obj;
>>   	execbuf.buffer_count = count + 2;
>> -	execbuf.flags = ring;
>> +	execbuf.flags = e->flags;
>>   	if (gen > 3 && gen < 6)
>>   		execbuf.flags |= I915_EXEC_SECURE;
>> +	execbuf.rsvd1 = ctx->id;
>>   
>>   	igt_assert(!READ_ONCE(*seqno));
>>   	gem_execbuf(fd, &execbuf);
>> @@ -505,10 +522,20 @@ __captureN(int fd, int dir, uint64_t ahnd, unsigned ring,
>>   
>>   static void many(int fd, int dir, uint64_t size, unsigned int flags)
>>   {
>> +	const struct intel_execution_engine2 *e;
>> +	const intel_ctx_t *ctx;
>>   	uint64_t ram, gtt, ahnd;
>>   	unsigned long count, blobs;
>>   	struct offset *offsets;
>>   
>> +	/* Find the first available engine: */
>> +	ctx = intel_ctx_create_all_physical(fd);
>> +	igt_assert(ctx);
>> +	for_each_ctx_engine(fd, ctx, e)
>> +		for_each_if(gem_class_can_store_dword(fd, e->class))
>> +			break;
>> +	igt_assert(e);
> Duplicated below. Helper for this?
>
> Matt
Sure.

John.

>> +
>>   	gtt = gem_aperture_size(fd) / size;
>>   	ram = (intel_get_avail_ram_mb() << 20) / size;
>>   	igt_debug("Available objects in GTT:%"PRIu64", RAM:%"PRIu64"\n",
>> @@ -518,9 +545,9 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
>>   	igt_require(count > 1);
>>   
>>   	intel_require_memory(count, size, CHECK_RAM);
>> -	ahnd = get_reloc_ahnd(fd, 0);
>> +	ahnd = get_reloc_ahnd(fd, ctx->id);
>>   
>> -	offsets = __captureN(fd, dir, ahnd, 0, size, count, flags);
>> +	offsets = __captureN(fd, dir, ahnd, ctx, e, size, count, flags);
>>   
>>   	blobs = check_error_state(dir, offsets, count, size, !!(flags & INCREMENTAL));
>>   	igt_info("Captured %lu %"PRId64"-blobs out of a total of %lu\n",
>> @@ -531,7 +558,7 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
>>   }
>>   
>>   static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
>> -		    unsigned ring, const char *name)
>> +		    const struct intel_execution_engine2 *e)
>>   {
>>   	const uint32_t bbe = MI_BATCH_BUFFER_END;
>>   	struct drm_i915_gem_exec_object2 obj = {
>> @@ -540,7 +567,7 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
>>   	struct drm_i915_gem_execbuffer2 execbuf = {
>>   		.buffers_ptr = to_user_pointer(&obj),
>>   		.buffer_count = 1,
>> -		.flags = ring,
>> +		.flags = e->flags,
>>   		.rsvd1 = ctx->id,
>>   	};
>>   	int64_t timeout = NSEC_PER_SEC; /* 1s, feeling generous, blame debug */
>> @@ -555,10 +582,6 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
>>   	igt_require(igt_params_set(fd, "reset", "%u", -1)); /* engine resets! */
>>   	igt_require(gem_gpu_reset_type(fd) > 1);
>>   
>> -	/* Needs to be fast enough for the hangcheck to return within 1s */
>> -	igt_require(gem_engine_property_printf(fd, name, "preempt_timeout_ms", "%d", 0) > 0);
>> -	gem_engine_property_printf(fd, name, "preempt_timeout_ms", "%d", 500);
>> -
>>   	gtt = gem_aperture_size(fd) / size;
>>   	ram = (intel_get_avail_ram_mb() << 20) / size;
>>   	igt_debug("Available objects in GTT:%"PRIu64", RAM:%"PRIu64"\n",
>> @@ -576,15 +599,19 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
>>   
>>   	igt_assert(pipe(link) == 0);
>>   	igt_fork(child, 1) {
>> +		const intel_ctx_t *ctx2;
>>   		fd = gem_reopen_driver(fd);
>>   		igt_debug("Submitting large capture [%ld x %dMiB objects]\n",
>>   			  count, (int)(size >> 20));
>>   
>> +		ctx2 = intel_ctx_create_all_physical(fd);
>> +		igt_assert(ctx2);
>> +
>>   		intel_allocator_init();
>>   		/* Reopen the allocator in the new process. */
>> -		ahnd = get_reloc_ahnd(fd, 0);
>> +		ahnd = get_reloc_ahnd(fd, ctx2->id);
>>   
>> -		free(__captureN(fd, dir, ahnd, ring, size, count, ASYNC));
>> +		free(__captureN(fd, dir, ahnd, ctx2, e, size, count, ASYNC));
>>   		put_ahnd(ahnd);
>>   
>>   		write(link[1], &fd, sizeof(fd)); /* wake the parent up */
>> @@ -615,18 +642,27 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
>>   
>>   static void userptr(int fd, int dir)
>>   {
>> -	const intel_ctx_t *ctx = intel_ctx_0(fd);
>> +	const struct intel_execution_engine2 *e;
>> +	const intel_ctx_t *ctx;
>>   	uint32_t handle;
>>   	uint64_t ahnd;
>>   	void *ptr;
>>   	int obj_size = 4096;
>>   
>> +	/* Find the first available engine: */
>> +	ctx = intel_ctx_create_all_physical(fd);
>> +	igt_assert(ctx);
>> +	for_each_ctx_engine(fd, ctx, e)
>> +		for_each_if(gem_class_can_store_dword(fd, e->class))
>> +			break;
>> +	igt_assert(e);
>> +
>>   	igt_assert(posix_memalign(&ptr, obj_size, obj_size) == 0);
>>   	memset(ptr, 0, obj_size);
>>   	igt_require(__gem_userptr(fd, ptr, obj_size, 0, 0, &handle) == 0);
>>   	ahnd = get_reloc_ahnd(fd, ctx->id);
>>   
>> -	__capture1(fd, dir, ahnd, intel_ctx_0(fd), 0, handle, obj_size);
>> +	__capture1(fd, dir, ahnd, ctx, e, handle, obj_size);
>>   
>>   	gem_close(fd, handle);
>>   	put_ahnd(ahnd);
>> @@ -684,7 +720,7 @@ igt_main
>>   	}
>>   
>>   	test_each_engine("capture", fd, ctx, e)
>> -		capture(fd, dir, ctx, e->flags);
>> +		capture(fd, dir, ctx, e);
>>   
>>   	igt_subtest_f("many-4K-zero") {
>>   		igt_require(gem_can_store_dword(fd, 0));
>> @@ -719,7 +755,7 @@ igt_main
>>   	}
>>   
>>   	test_each_engine("pi", fd, ctx, e)
>> -		prioinv(fd, dir, ctx, e->flags, e->name);
>> +		prioinv(fd, dir, ctx, e);
>>   
>>   	igt_fixture {
>>   		close(dir);
>> -- 
>> 2.25.1
>>

