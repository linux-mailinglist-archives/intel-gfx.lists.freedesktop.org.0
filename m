Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4738071F232
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 20:40:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEFCD10E5A1;
	Thu,  1 Jun 2023 18:40:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDFA210E5AF;
 Thu,  1 Jun 2023 18:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685644799; x=1717180799;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QtIRzwE8POzbOfnscjeVZQdrVYa7Gn5IAEsXV9tcbA8=;
 b=YM+UayZC8FYeiOXnLJjMR9QyOXLUwvLtxGIHDsMQUy4oz2SswPnCAaTJ
 PrTUNy/EZmNTjhn92+Q0PK7UKSGjpQbgOPQmeNiVN9zjmkponwyc7luRi
 h6rCHe51ujZ2NP5qd8AYayZmcPGbdgmJRK6bhaC9ZmMiSFVdDLkjzzraw
 KykBxvu8xi5v71CWJByTTavvLpHwuDHbH4YCQTDD8hLr+GlPIRtCJFK16
 6o4vquRRgUlEcTHCNVhbpb12s9WTpvc0SwXCSiw4CT00WsLDTQpwUiCUB
 7bTntEpHJoPKFlhNSQBftZ385+Jy9MAIb1g1tgas/BuTYyDU3IW4lD4Cd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="383925399"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="383925399"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 11:39:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="772545341"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="772545341"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jun 2023 11:39:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 11:39:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 1 Jun 2023 11:39:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 1 Jun 2023 11:39:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aORPqOh0n7L2UCQfzDUlVS/yKbsF1LnyCnBxCxj++GzI+mDhU6IcDBnMBTQMGjuewSNzbu3j8rJ9oO8rxgmytMBqtzDnB0VSin2HGiYGHPF6jB0hSsbPkXP2gR/AiKLYL0XGDpYVjNGPEh4SNPEMaviNhG2UNr6YAJ6ZLshhFZkKMMmegYSQM68+15t+PLq+RThc4hGkAocw6FeXdBBl8OKHJ684RHnPVpC2NY5EtQll7ppWwa1mHP0rdRnImcyCGxTLc3sHeYA8IHTzATogwc9YtXGZ0jVur5o2tL0rEWCelpmiRf94WIXRgWk6kODRLS9hZnM491dVTmErrs7Pyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1UwcJiGUsBnPpCGG3W/GzPm518w3TsQboIy0B+Xvg/4=;
 b=IEsc1ir+H6Sx/iZmjO5G1/1byNyCxBz5buKsqjIsiRgDaPCGtCQTdFKmVsiEs0lumDSUmpNdlFuMbUD81vCxJxci1s6r+bOoHuQm+QLHe0vDRZAjoul2xx47cBBLWglZQQ9lsAuFSQvly4LsZJreHt5/Jm9M7nK6si9r+LRe7kUks84pB7z2Lco3DcXKnFScWq51jFfpZAVQKTBR8HUONYazbRrWeuIP1N4f7lZwJ9ggs8i7oTCO9hkqgUMYuEu8z9hLsMayLTmPwNn4ZR4rDkIR6TR+AUeAqsKqD7oG3k7YSIRalDNMoPUdykLmkOj4ANAMhBHLgmBfkz0q8NnxmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by SN7PR11MB6774.namprd11.prod.outlook.com (2603:10b6:806:265::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.24; Thu, 1 Jun
 2023 18:39:45 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5ec8:e1d9:fbae:5b2a]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5ec8:e1d9:fbae:5b2a%5]) with mapi id 15.20.6455.020; Thu, 1 Jun 2023
 18:39:45 +0000
Message-ID: <8000be2a-c149-8766-d8c1-c63b0c4aa785@intel.com>
Date: Thu, 1 Jun 2023 11:39:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.1
Content-Language: en-US
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
References: <20230524191906.2160802-1-vinay.belgaumkar@intel.com>
 <20230525182521.pxep2ekegnp54x77@kamilkon-desk1>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20230525182521.pxep2ekegnp54x77@kamilkon-desk1>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0251.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::16) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|SN7PR11MB6774:EE_
X-MS-Office365-Filtering-Correlation-Id: f502b03d-6269-4c3f-aa95-08db62cf91d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uiaaXXypXgaL+csc3MbdYMm+7CiA8TRY9oC6oMA6vjnAMxYneG/psCWgHwMGQ97WEoxQ2EGn1OTFS316WQ2cwmhlzc/RW+bDsLfrTaLvED2AEytUwvg7J8JBcT+Q0zmbRi5g+pOfHRmxlwMV94WK1UC1UIkKOZtin3pmUefdRLf9jw2nxQbMXIoFMOmhcKsXzEDyv3TyMfwrfldSD8EhAR9kE3Xg57dEpL2cx3fbrPu0WI1N9MqNsgVsWnsoZ8U5yUmHNew5w7ErjoXt7g0Uj0rpCniUZdaqkqY4Y8GMWZU9T3f//A+UytfmyDJ5Z1dof6toBC7NH4TLF5sbvBIBR6vh6FVHRr6ti+CuYWZv1QqaM9Z3OUsrqxgcb7rH7kf8nOKJfOhVzXORroYcSz4jFT8YF4VGA1GCgUcsXQdF9BxGMCn+xxSQh7wzPMatnCeUd0T096+nGfcZXO/K59HT38QYDdZwz5JzfyU5rOHJoOb0cRBMw8KQcNxQYIe3FkPfu5/KAIWeyRJ5kUdctc4R8EBtEcpxN9xC4yfh/bGGhyVQivzuOQMMJgYlaUuzJUwNBQwVSAlaPPZUPNp+OjXTHIvG9G0719NZwbVLItoA53c4SnX6+4ctnDv1dKCVGtzCB8LO9/cfQ4iWO2IVIh/n4g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(366004)(376002)(346002)(136003)(451199021)(6486002)(41300700001)(38100700002)(31696002)(6512007)(83380400001)(186003)(53546011)(26005)(6506007)(2906002)(82960400001)(86362001)(2616005)(8936002)(36756003)(5660300002)(66946007)(316002)(66556008)(66476007)(478600001)(31686004)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVdxSUpLbExCaEhOMkJadStGYzR5V1B6TzRJSCt4MS9oWkQxR0hLVWhPTklD?=
 =?utf-8?B?djdQQ2p3bm5VNHVVaE1GcWYrODhjcjIwTzhOdFhjMktqQ2lWcWkxWVZNcHZh?=
 =?utf-8?B?bldZaW15ZFZUTFlEaVlKVW40dzE2b2Z1YzJwRlBRdmlMUEMxTHpuT2VwdUxh?=
 =?utf-8?B?N2FQOXpERW9pYWcreEZ3VHJ2UHZNcWhGc29kZTl3RGwvVjVmNm9Ba0FkOVdT?=
 =?utf-8?B?b0s0b2Z6YUFaYktMNEdRZUlBVytUOGRWMUZVYk1yVGYwL2I2a1RwQW1FKy8v?=
 =?utf-8?B?cDFVOGFXTDh3WnVyK213bzVteGQ2MjJOSnBodGdsQ21KVmhqa2FSVmlQZEVY?=
 =?utf-8?B?VElPOEpRWWhUcXNlR2U3SkJicTVIL1gwY1Z2eE9BQ1BEa3ZzMmQvTkUvUTZm?=
 =?utf-8?B?NlNpWVBjd1RZWmtBTHdEZ1JkQ2VZQUJDOEhLK1hrOUwyVGQ4M3B2MDlrYUVL?=
 =?utf-8?B?b2JMK1RyNnRaa1gzaXIvZjNRN212UTNiR2JMZEhOYlIrdFRMSE5ZN3JiRmZU?=
 =?utf-8?B?b254cGx2bGhxM28ydXQ2NDA0VFMydEpxL25HcExlS2F1WU5QZnhWUUtyUVVS?=
 =?utf-8?B?a0MrT0NMWU5Da1I5U1REQUxMcC9Od2QvVmRpTWsxaURFaUxVbGlhSGFScjhM?=
 =?utf-8?B?a2xtQi9uK0xNOTg5UFN1cGdsRm5JV1FXbEdqVVNETnZpYlQ1VE9Ja1Faay9v?=
 =?utf-8?B?UDdLYlAya3lXNDR2aG9HMmRnYTJUT0hnWkVqMEZEczYyUHNmcHh4Ni9iQ01k?=
 =?utf-8?B?UklhVkc0K0tqbFB1aVZlZ3ZqMHUyVlZ2djZIODJacFlJYzg5NnBTdkVjN3k5?=
 =?utf-8?B?U2ljZzZxaGxlTlJEZFJLYTFrK3czU3pJT0g5YkZPVFZaNW51Qm9zQWZabVdu?=
 =?utf-8?B?NmFsbnNybU9jaUZLZ0wyOHduMTA3S2dxN0JQUlhJMnc1TngzSDlQbStzYzls?=
 =?utf-8?B?K1o1Z2FvaWYrWldINkxGWmxGbGRReHFNbm1GUUZ6cXlKT1MyV2F5T0hJOUd0?=
 =?utf-8?B?K25lYzJ4ZXRzUHVuN3VTdU45aTJUUk9NM1JCY25GNUpIdUVRQ3VKVnFVNDhX?=
 =?utf-8?B?MWdydGhJby9oUmJLM1NVUnFZa3RLdjR1SmE2ektSejg4OEp3cEcyMEVNNDlZ?=
 =?utf-8?B?aHd0SmRCV1Y4a21OME1BOVpQTTBLZXk2NEhXckVZNUR2ZTJheW1Pd3FlbGdE?=
 =?utf-8?B?WjFWajBVVGFvVVhFRE9XTUk5MU44bXNXdG9MeTZGYnhHbk9Hb3VYbkFpT3Yy?=
 =?utf-8?B?Z242V1ZzWWUvYlR2WUhFellVWmg4RC9taklRdmpaZmNXMVNpTzdjM0RPTWE4?=
 =?utf-8?B?cldaVnk1YWVpalFObEV3WkZIdnFsYy94c0FWNDM1dTNmQUxyTnVpOFpCZ29Z?=
 =?utf-8?B?cnQyMDNKS2pxSmxsWkhPWmNDRE5leDUxYWtCblZXaGlGU1N2cElSenIyYmdW?=
 =?utf-8?B?NE9XUTJIbE1FRjlBUGJ0S0RhUitLajRacWVMNFh5NmlpZllZM1NZaDZvYlZY?=
 =?utf-8?B?VmRIcXV0SXlRU2pYM09NdVRHOElIRUE3QmFXV2M2NVdLMEo2YmRIN0VyVnpP?=
 =?utf-8?B?TlBmVktMUzM2dDlxS1ViTDNxYlZnQXA4ckg5TGZQOUNrWkhHZEFFVUZJRWhJ?=
 =?utf-8?B?OHV1RlliNzE5SkdNOS85Wk5kZmpiSDhwYkxPak8vSEtZQkYrSXlDdnNlWHFh?=
 =?utf-8?B?SXpCeHpGdkdCNmFOMHN0dzBuOFdFbXdYNmsxaFVRamIzTVFIWElFbFZINVJy?=
 =?utf-8?B?Y0QyalIrbFRxTGVjeHlTeVAvM29HSWtmTHpuYlhxVkVlWlhOV05WOFo4Qm1Z?=
 =?utf-8?B?bGVxczRYSnZxcjVIbFpKbG1mdndNSGJhSG1LYzhIb3UvazdWOE5wVEZwc0NF?=
 =?utf-8?B?a2hKZW5razZWMEpNQSsxM3BHUWphRHRtVHl4T0tzSk9GNzNtSFVJNXJYNTJL?=
 =?utf-8?B?dmVqWWlkL3N4LytTYjY5bmdqS0JZNWx6eHZnemp4UnB5YlRPdnJ1U3BsZ0Zz?=
 =?utf-8?B?N0t6SjQ1eHFjZEx1eTA3WGlENWFjclpCSHZGdE9GOTlSSFNSUFBydE9sSVdL?=
 =?utf-8?B?WlorUERFTDBZVXBRQWQyR05oVzB6MzlwaGhaNWFFMXJFQ3d1bXFKaEtGWS9F?=
 =?utf-8?B?UWM3MmhhY2syNmNubjBIUmg4UnlWTTE5TUQzZmhiWnVOcm5OOUphdFdib2t6?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f502b03d-6269-4c3f-aa95-08db62cf91d5
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 18:39:44.8988 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S5nsM4A/qJoiUOWY+BzE+JN2hwICR+WmdhDwAsD6bsw0yWcpYWL8sl19Ft/f+DktiSQfum8+bPezML+wotBKD9SvX3uAFvLmvpDTUlDp2Tk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6774
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_ctx_persistence: Skip
 some subtests
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


On 5/25/2023 11:25 AM, Kamil Konieczny wrote:
> Hi Vinay,
>
> On 2023-05-24 at 12:19:06 -0700, Vinay Belgaumkar wrote:
>> Hang and heartbeat subtests are not supported with GuC submission
>> enabled.
>>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/i915/gem_ctx_persistence.c | 32 +++++++++++++++++++-------------
>>   1 file changed, 19 insertions(+), 13 deletions(-)
>>
>> diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
>> index 42cf96329..1e122535e 100644
>> --- a/tests/i915/gem_ctx_persistence.c
>> +++ b/tests/i915/gem_ctx_persistence.c
>> @@ -1366,19 +1366,25 @@ igt_main
>>   
>>   	igt_subtest("hostile")
>>   		test_nohangcheck_hostile(i915, &empty_cfg);
>> -	igt_subtest("hang")
>> -		test_nohangcheck_hang(i915, &empty_cfg);
>> -
>> -	igt_subtest("heartbeat-stop")
>> -		test_noheartbeat_many(i915, 1, 0);
>> -	igt_subtest("heartbeat-hang")
>> -		test_noheartbeat_many(i915, 1, IGT_SPIN_NO_PREEMPTION);
>> -	igt_subtest("heartbeat-many")
>> -		test_noheartbeat_many(i915, 16, 0);
>> -	igt_subtest("heartbeat-close")
>> -		test_noheartbeat_close(i915, 0);
>> -	igt_subtest("heartbeat-hostile")
>> -		test_noheartbeat_close(i915, IGT_SPIN_NO_PREEMPTION);
>> +
>> +	igt_subtest_group {
>> +		igt_fixture
>> +			igt_skip_on(gem_using_guc_submission(i915));
> ----------------------- ^^^^^^^^^^^
> You cannot put this in fixture as there is no test defined in it.
> Place skips at begin of test functions that need it.

Hi Kamil,

    That's why I created a subtest_group. Is that not sufficient?

Thanks,

Vinay.

>
> Regards,
> Kamil
>
>> +
>> +		igt_subtest("hang")
>> +			test_nohangcheck_hang(i915, &empty_cfg);
>> +
>> +		igt_subtest("heartbeat-stop")
>> +			test_noheartbeat_many(i915, 1, 0);
>> +		igt_subtest("heartbeat-hang")
>> +			test_noheartbeat_many(i915, 1, IGT_SPIN_NO_PREEMPTION);
>> +		igt_subtest("heartbeat-many")
>> +			test_noheartbeat_many(i915, 16, 0);
>> +		igt_subtest("heartbeat-close")
>> +			test_noheartbeat_close(i915, 0);
>> +		igt_subtest("heartbeat-hostile")
>> +			test_noheartbeat_close(i915, IGT_SPIN_NO_PREEMPTION);
>> +	}
>>   
>>   	igt_subtest_group {
>>   		igt_fixture
>> -- 
>> 2.38.1
>>
