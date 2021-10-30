Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D811E44066B
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Oct 2021 02:33:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71A5C6EA9A;
	Sat, 30 Oct 2021 00:33:08 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F19486EA97;
 Sat, 30 Oct 2021 00:33:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="254367117"
X-IronPort-AV: E=Sophos;i="5.87,194,1631602800"; d="scan'208";a="254367117"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 17:32:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,194,1631602800"; d="scan'208";a="499126087"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 29 Oct 2021 17:32:54 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 17:32:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 17:32:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 17:32:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BSaAgZ3ZnyVAZSaor/cMxSfRxhZJfR0y2FLEEDbgpvyYvqet1xpeo5qOq4ff4bCMOVrHz+RC9NiHeL9js5LUungHw8a1dkBMlrd5f0ZklUH36leAjQSdTrmts3f9KlmD1oevsPRPXXdRnfny4UJlbaewkeXD7gfUzvtIrH/wTxCa2HjsyRaMERgYo9QYKPcyNmcWXGQNewnL5z84MSW6op37aAHJaUph2Psii3NfYD4IB3Hacfl8wMX5bNSYG9CeEOWiRFWxXAcxttbZ9r9bT6PFqUIPR6NuZeOSd2Ccm09oG71A05TCPCdTFZNUJ5r6LdaUzEohx5SeEtQuCd3paQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ROOGU4dgalHkqWsvOgZG0uK2IyQ1mUTxJJ2kQ5nU/Yg=;
 b=A+7d6RTGS1MDy4Z0Bm8Teead7WTAoh1Y+QDcjc74+4oQ/WDsLXNOstDRmrHLlEXyClm1Aye84siZX4d4gZCe2eb1JduUde9IBps+GQ38L+hjzGbwrPnXfubOgeU3djXiASUcLQsdAbp2LRGvfT1N8limZqARS8g7K+95hwJ1LHlyNJoE7ELOnNE4iXzxjT202/s6QuGMR9wx5FD7Thm6F74uIPNyUoru/5hOQEVccUJh1VvxKuJ3r+vatdgTdUSTfBQJXV2B2kZqSiMrv10ewZMNumhHXTMfT7UxpyQdATwAB5X1g0oyBuo3I3Gzp0Oalh4QcADU9v0OGqMuNYDjGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ROOGU4dgalHkqWsvOgZG0uK2IyQ1mUTxJJ2kQ5nU/Yg=;
 b=Trqx+4vbEu/sw+v6Eict9sqjGNAvo2lVingEoxA6B0CHgvZWfxMZHL0QeKGtVMJ5Il8m+zN1W+P9WL7C/LSXrpmKXsaWCWYiHuxnyRdMGuXw+2LmIg20p9241MLmNDhTNz+6SWkpYJxM5c+bXNRFligV+A0mIUQpsBYOnLZmhpE=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5609.namprd11.prod.outlook.com (2603:10b6:510:e0::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Sat, 30 Oct
 2021 00:32:43 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::ad26:6540:dce1:9f81]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::ad26:6540:dce1:9f81%3]) with mapi id 15.20.4649.015; Sat, 30 Oct 2021
 00:32:43 +0000
Message-ID: <98fe41ea-75fc-463c-23fd-25156a975b53@intel.com>
Date: Fri, 29 Oct 2021 17:32:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.2.1
Content-Language: en-GB
To: Matthew Brost <matthew.brost@intel.com>
CC: <IGT-Dev@Lists.FreeDesktop.Org>, <Intel-GFX@Lists.FreeDesktop.Org>
References: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
 <20211021234044.3071069-3-John.C.Harrison@Intel.com>
 <20211029173905.GA35332@jons-linux-dev-box>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20211029173905.GA35332@jons-linux-dev-box>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MWHPR12CA0046.namprd12.prod.outlook.com
 (2603:10b6:301:2::32) To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
Received: from [192.168.1.106] (73.157.192.58) by
 MWHPR12CA0046.namprd12.prod.outlook.com (2603:10b6:301:2::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.14 via Frontend Transport; Sat, 30 Oct 2021 00:32:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c7a0a433-2df0-4f0b-5a3e-08d99b3cc961
X-MS-TrafficTypeDiagnostic: PH0PR11MB5609:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <PH0PR11MB5609515448B8570EC125E2FDBD889@PH0PR11MB5609.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 65PJi44A7rvarZdXjIx8MqodjtJcCYBq/okyqNKjQYGnwZCFT7RzS9feNWA/ccUtiYB9REeWBe0b+crJIROOtcLCBZlecpQY6jfQ+6MtuYcCUrRXBqb+Px0HqmM25kpB5iuJQk/lse6q70GnhGyQCGVZ1KXaB6XN/6OLULKfEu/taUdB7/Td+Q1PZYmzr8iNsWtYfEyPP0TWlQ+13CNpz/7b0KuHOEzg5V1t2HUevno8dobjKvYnJs8Jj04N2/vSd3jxsLjpuDq5PE17+uNJoM2lReeGVQuFUPlkepF6QJeoT/tuSpMEA+Lti06K2aNp7W4q3Eiqj47zzMdUPJQoRbTFi6Riy0DXJ7LsjZ3e83NLOVkqtIM99ZnUOwfSrrqoi4E4DZKMMP/QQasHLqXLNCJBIPeo6Q1FtLooa/CLebMMJ1B09LX6YyUh2UVRg5ZFYCU7zfbpswoBmBmBc4u5hKpCkkVJZklZ3Rl6XaaXawwSVCecHelBHFPRyDnHNIxPY2Qn1avV69u6lmfIemqrTsp6JVOXU6sM1H6BFlXK0XrK3cSf6OM1Cu36WcXAAcrFsVbFouf3Yym8qit5qxr8xOJ+0O8gDVXeId7Z5VuVRyGjXtx/2svBBQTFmenIYcTOA7rASqZ1AwkCoG4bDAHudyb50pjrDlRiL464nv4kGpgUCh5dp6ZRtGp/e0CckGV8v5frp4KZoAfd7ezb1Pf5PTIVOiumPV/wgfg5dENytcQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(508600001)(6862004)(36756003)(26005)(186003)(31696002)(5660300002)(53546011)(4326008)(8676002)(450100002)(86362001)(8936002)(83380400001)(37006003)(6636002)(16576012)(6486002)(2616005)(316002)(31686004)(66556008)(82960400001)(66476007)(66946007)(956004)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVV4ejY4eFZXbWtCdlVlY0dPRGk4aFV6bzZiT29odWFMUlBqUEhucnZOdFJR?=
 =?utf-8?B?L3lPNVVLUkJvYWd6T2MzR01pbDl1WTRHSU41cCtXU3k2Y2gxUmVCSnRoNzNj?=
 =?utf-8?B?RkNSQ2pVSXozallVTm53N1ZrMG5EM2hNem01NG1LbzZnVDk4TGEzRzI5Y1Ar?=
 =?utf-8?B?R2tSYklEckNlN3dmSzJ3TUFvMEFNcDB1Z3hlSWhlZzlmaUJobndmVG9tUGVr?=
 =?utf-8?B?cWZVSkkrdHc3RkcyalNIdGdyNk10SjlTY0lIMy9QSnpqLy9ERWRIL2RvT2cz?=
 =?utf-8?B?UVIyT1NGK3RZcERCdVlCSjZXZWFKWk9PKzdVNldjc3A1REFySkxEeXNrY2hv?=
 =?utf-8?B?T3d4QWdPbnJSK3ZmbEs2UG1ocXdWcVZ6S3loSzhyTE1DeVNMYmFzTzNhOTls?=
 =?utf-8?B?YkpPNmloRGd1dmJTci9kZUIzNmZVck44c3pYbWRGOHB2dlJGOGcwZ1pVWFox?=
 =?utf-8?B?cUQ3WUx0UHZvVko4cm5meS9RdVlRZXltc0xxV21YQm1iVS9rb1Q0N3Azck5K?=
 =?utf-8?B?TXpCUWFCLzFoNnZtRnBuaFg1MlNvbk5NZkJoZmFUbDZkckJZeTN6SUx1UFJk?=
 =?utf-8?B?ZVpOWExzdE1uUy9DWjFuZnM3YmMvRlBCcjExenNPRXVlbS9naFpZd212eXY1?=
 =?utf-8?B?czBlWGNjOS9VLzltV1NmUFNPdWlKQzVKM3JzTk1UWkRibmVLZmYxY1hVV1ZM?=
 =?utf-8?B?V2tubXV5ejZFOHp2YXhhWWlwaEh6cjJFQWRIaTJ2bkxQVjRJR2VETWdSQ1hE?=
 =?utf-8?B?S2pDWUd1U0phT21pdU9lOGFwOFZIVm9raUcvWnpkSTR3Q3VvWHRXaVo4WEhn?=
 =?utf-8?B?TWZPdko0N1lzTXE4SHhsTU9Xdy80RHYwZnM2UnhiVWJyMk1hNDhTZkZpU1FK?=
 =?utf-8?B?VklBWGZhRzNlTkVlbUJBb2FrQzF3eXFlVmN1czgzenZmQm4zZi96UmlOM0d2?=
 =?utf-8?B?aFFtaFpESkk2Y2ZndGlxcndIT3hWaWpRTWE1elRtdFcyMm9ZREVUdXgwb1hX?=
 =?utf-8?B?MkVnL1M2TUR6NTU1amhTcUlxd2h4NHA2cUYzaWdyWlhCNWZ2WjdrWFVrU2Jj?=
 =?utf-8?B?em10MjBhdHVTdmZRdDE3clU2QmZ0alh4ZTgxY21oV1pOWkk2S0xha0FCekVh?=
 =?utf-8?B?SFpZSlp1S1NOenFZWkhJNk9GMXRVMTUvNVRFR0Z2Yk81dU5PUEtJcnBEZVhE?=
 =?utf-8?B?cmZjRVRpYnd2bmxSV0l3SHIzdFVLckZpbjJ4dlhPWEZXMExOUjBQWUtZNERt?=
 =?utf-8?B?cUtqYVhjNllrYVZZVkJ2cnhxcmRxWnVEWDg1MXpqR011STZLaU9tTkZobzNX?=
 =?utf-8?B?R2tsMFpUYmFjS09neDI5K3M1SHkvaWpFa0FIcGtESnRjRHY4TFNESHRJMitD?=
 =?utf-8?B?QlliS2paNWRaTmJ3R3BKNU5PQnZpUnY5WmNoR05penIrT0Q5bVA2YVVNR05Y?=
 =?utf-8?B?RWJvR1ZLbjViS0tDMmFNZDBpWjJCZUEveUR3aGs0bjRvNm5ndHo2ZTlHZEI3?=
 =?utf-8?B?SkxqRktmR1dOTm5kTWh6clRnVkdobmdGdHZLOTJNUHIwSEV2N2lqZzFRMkhK?=
 =?utf-8?B?N0xmTEFRQjlUOHN3ZC9CMU45OHZGWko4bGQ0ajNvS25DNnlLSEZtcUY1aDA0?=
 =?utf-8?B?U0d6OGpDcWNBVjJPV0FvL1Z0bUtPQklVbEYwSG1nM25jaE5xNGR2bTMrMk10?=
 =?utf-8?B?aG03ZnEvUW5SZmNLdWZuWG1YaFpEZi9RNUZDNnhvLy9HUm01UWlsb1hmSVZu?=
 =?utf-8?B?UlRnc0tqNWFlbi9WeVVJU1Nrc1lHeGlTVWNrOHdCendseHFMRWhHSFF2ZUVo?=
 =?utf-8?B?bzRCbS8rRktLZkk4ajAxQTJKbVozTUNBUUdrWVE5dU9ueWZvVTkwM2xya2tm?=
 =?utf-8?B?UVpldGY0RkJqY3FuNWtmSlR1UkZHWjZKZFJEU1NScWQ3OW15WUU2NXFscmw0?=
 =?utf-8?B?L0tUV2NVbHZTeisxK2pkOTA0OHgzMlJKdjd4TnV2aXArYnRUaW5CTFFSUGEy?=
 =?utf-8?B?UHVCUTRhcEE0Q21FbUQ0OTdRSHlBcFRmNDJHbzJEYzRjczkyNGZ3VXlROTlr?=
 =?utf-8?B?MERqbXlXemtER0FTRTJISjFRZEs3eFowdjNvMFhUSW1LUG5WRkJESmY4TVVJ?=
 =?utf-8?B?VDVpS2p2a3d6Yjdjb05BSlJFVUU5RmY4emsxUmdoR1JxNFlxVHh4clBrREhJ?=
 =?utf-8?B?SUtQdDFPaWdVWE1UYVNNWnVJZ2VwNEk3Mm5GQ1ppdGVoeW5hVU9rb0s3N2hj?=
 =?utf-8?B?RlRqbVpEcVpoSTJEb0hKR1V4Vm5RPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c7a0a433-2df0-4f0b-5a3e-08d99b3cc961
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2021 00:32:43.0431 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9f26GmFJUJjIpfL5uv+HXHvwpidHzt3yg//07aIdo59YDp1wmD4feLJK92uDI1ei/GTB85wucb3I9PWyTWUrbjUIg0JukWyUrlW3sfVN/Ps=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5609
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/8]
 tests/i915/gem_exec_capture: Cope with larger page sizes
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

On 10/29/2021 10:39, Matthew Brost wrote:
> On Thu, Oct 21, 2021 at 04:40:38PM -0700, John.C.Harrison@Intel.com wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> At some point, larger than 4KB page sizes were added to the i915
>> driver. This included adding an informational line to the buffer
>> entries in error capture logs. However, the error capture test was not
>> updated to skip this string, thus it would silently abort processing.
>>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>   tests/i915/gem_exec_capture.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
>> index 53649cdb2..47ca64dd6 100644
>> --- a/tests/i915/gem_exec_capture.c
>> +++ b/tests/i915/gem_exec_capture.c
>> @@ -484,6 +484,12 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
>>   		addr |= strtoul(str + 1, &str, 16);
>>   		igt_assert(*str++ == '\n');
>>   
>> +		/* gtt_page_sizes = 0x00010000 */
>> +		if (strncmp(str, "gtt_page_sizes = 0x", 19) == 0) {
>> +			str += 19 + 8;
>> +			igt_assert(*str++ == '\n');
>> +		}
> Can you explain this logic to me, for the life of me I can't figure out
> what this doing. That probably warrent's a more detailed comment too.
It's no different to the rest of the processing that this code was 
already doing.

if( start_of_current_line == "gtt_page_sizes = 0x") {
     current_line += strlen(above_string) + strlen(8-digit hex string);
     assert( next_character_of_current_line == end_of_line);
}

I.e. skip over any line that just contains the page size message.

John.

>
> Matt
>
>> +
>>   		if (!(*str == ':' || *str == '~'))
>>   			continue;
>>   
>> -- 
>> 2.25.1
>>

