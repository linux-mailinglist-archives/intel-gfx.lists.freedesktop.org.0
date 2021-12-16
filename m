Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5688747800E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 23:40:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9541F10EB13;
	Thu, 16 Dec 2021 22:40:31 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A64310EB12;
 Thu, 16 Dec 2021 22:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639694430; x=1671230430;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hrNTThiWbRHxLgfVjEXB1m4FJxvjauLm2K+KzdX29LA=;
 b=EBkAs7r6zTOdyw7lGlWY+rH+bqQnIc7XsXqlVOKtdmZueYqyY6Swq6uK
 Fnug0FWBRvVC4kMWRUxfDEVYeoW+eQO0528TRyS/AWgvKzZSEbTg9WcDN
 DdZYPTBoffCFycGMudK2doVxsXeDAJWNXDswur1e7DQ26UIAghk6UdIW0
 kgNFJXJXjRTrRjICMHSIYhggMJqlwMtUJ6qu+Knxw3mJ3kas+Y3ol2eHY
 Hj6fiFQUZIwhtlJCGXIan/RaeSQiKAvkCodCFgz5uVN7lV0vFfxGAJ7lP
 8fWiRe1PWUlx4kATRwQ0qIhjIZeBA/fUXfVJVpOVLXZB43S4kQc7ikUp2 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="239843757"
X-IronPort-AV: E=Sophos;i="5.88,212,1635231600"; d="scan'208";a="239843757"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 14:40:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,212,1635231600"; d="scan'208";a="506522557"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga007.jf.intel.com with ESMTP; 16 Dec 2021 14:40:29 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 16 Dec 2021 14:40:27 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 16 Dec 2021 14:40:27 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 16 Dec 2021 14:40:27 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 16 Dec 2021 14:40:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cp53+lE1dAuWMyjxPlQPOWS8Zvkpu65Mta2zpXFC9P0Xu47iLSq6MA4BxaMlS95KW+9/O/jz5Bm+h8gYc5lzGkj9Q/vS6z31c8BUVXIGm41d4Cz4ub+OyMK4wNhuT6LjNInj7OzzRvkH4WgISZ6hyj6+kZuBr8MoSQ3bwHgBoXsXSwvfnGHn4G9yNK5d4mN4ccdX+bj7N7tOtYHTVsy1vQLdZ8/mbWbVFdrGUIbTXB245Vf+aOxKJAoNfXVn5yEU8ijF8MA2/Lt9LJLuCt3DAuczJ7P05bbX71GXPuwU2omTV32JKrXr+HreMfzD4LDpUck0nkRjG4mAZ0RWwa0mdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lPPx6fkFoEe51qEW6YHclqD7hYXNJEPY/0XsGN9e8b8=;
 b=IszF814LI1KBCx0WU+lJx3BqoOMq7uzgS1CrTCn+mKovpu8zV1H6VBrgjS6AnuE8HaYwqNV17wpEJc8DCKNCndv6U2CsLpbDDWReSPM/qgUr45Yl13rA4o+51r8syy+Ya0Q3pxBoWn2RFjzFQPxG/806XCHGuefcUEk9ZhqwPFebhqrfpEVGdy6NKVs5WyrXgtdlnrugZhNiMZOBhbRE2Oiqaau7fIO2vFv+UQZ7GzJZHnPoXA4pWNXp9k5JNE10paUC2gX0i5dZvz9fwUnvA6Z1fPEK52+r6Qh39Knj2uo5vNjUJxzrYbeDTRICPTJsXeSIKV9mpNWEXFocEZxdlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BYAPR11MB2597.namprd11.prod.outlook.com (2603:10b6:a02:c0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.14; Thu, 16 Dec
 2021 22:40:24 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::8460:d836:4335:641e]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::8460:d836:4335:641e%6]) with mapi id 15.20.4801.014; Thu, 16 Dec 2021
 22:40:24 +0000
Message-ID: <dd455cdc-a667-b4c6-a354-d44aca4a74d9@intel.com>
Date: Thu, 16 Dec 2021 14:40:21 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.0
Content-Language: en-GB
To: =?UTF-8?Q?Zbigniew_Kempczy=c5=84ski?= <zbigniew.kempczynski@intel.com>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
 <20211213232914.2523139-9-John.C.Harrison@Intel.com>
 <YbruxWHUL7+Mrkze@zkempczy-mobl2>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <YbruxWHUL7+Mrkze@zkempczy-mobl2>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P222CA0026.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::31) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e219dad8-ddf2-4e4c-c93d-08d9c0e50c85
X-MS-TrafficTypeDiagnostic: BYAPR11MB2597:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BYAPR11MB2597C187C2099B49CFBC8583BD779@BYAPR11MB2597.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bOF0CaPGFDKPiHDAj6V42Zxpcu1cZY3OO8uPjI0BLAxx1iHqzwSrd62b9VJJZ5gwbgXRJYMGrOdQYvOTuStDO9cK/pfBhvrnCis5u2/Q8RZOYCN1nsPa+xcqrdrg5L7ZGSpZXN8s6K0VSct8WCXDF/bTwDi3zAlBzOeKEQMYRz5Bup2WpTvSDqcr5KoUzy2rez4j44tIzfatuPXjj5WZ9gr8rRY+miLjBYanF3ZtwibDaKf3xyhi2aSoUbkuKynwJcHXU/fXAcYO8AxeocmsTRUF1ToRhBY30BaQ1/jGS02ll7egoW0vXe+KHsiGhsrByNxa5zOLWfKi8JhwJ5UMX/iHt5OIhiBFEEpu04KrspnopamhYwny0FRb9bwHnaBYkQtfjUivjQYzO2S1Diy1+TzL2LbADfPQII9IDC9nPYQ/Bfb2UQTfmLLwi+Yof8TK44VZwIil77i5b7t2AZlyCMBoPwaua9pYdEvWOKEzevw/KS4bpp7QiCnEzkWeX4AOFCY3DaDB1gY9R5ToEGnre88J9OgXIWJMHIXOPi9LXOYgtPSlg12bXAMCmcxhOXSWp3bsL26JNMt8rsOBfizYySVsPWTSurvyIwel6lGz2bCM181PpBQmNEJ7MA9MPlAIOHRq9qDXrouhPxuUMj4BeEw57UDZdlJdbHdNXpryFQf4cBwOLfd66C3yqppO6S5AWW6iWQQaf5WqX2b+47B3H343g3PmPirlzlAlriRjMqq9OevXYZ7f50tMdv7yzuvF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(8676002)(26005)(38100700002)(316002)(6862004)(6506007)(186003)(31696002)(37006003)(4326008)(6512007)(6486002)(2616005)(31686004)(508600001)(86362001)(450100002)(8936002)(6636002)(6666004)(53546011)(30864003)(66946007)(5660300002)(66476007)(2906002)(36756003)(82960400001)(66556008)(66574015)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2F1UmpZejJ5NHNBdk1jd3doRDdiU212NjdDVFd4RlVLTDREbzlnazM5V0E5?=
 =?utf-8?B?ZjBlWWltNG9aeWpkTjBseml4UEhlR040VGdtcnE1QnNCVzUzcXJmR2V3cXlP?=
 =?utf-8?B?dy9ZVTNWYk00KzdkSEZoOHcrVVk1bnQxcmlWNmtnTlArV1dFbzJhdjJDNHIv?=
 =?utf-8?B?WGJDVzBQUk9WbVJjV1R2NDliWUZnbWwrRTFUQ3p0SmV2ZzNlNXRDQlVselZG?=
 =?utf-8?B?ajFyQnhmNkpxRU5kVW5maXJVY0VpTjZtY3FWOFZMckY1dG9qWXBJNG4xSGhQ?=
 =?utf-8?B?LzVFaDloK01Hc2FuWUJqYUFNdk1yajVwM1loSzBNK3p5bFFwM2VGVlRpc3dN?=
 =?utf-8?B?cVhWbEZMclg0Ty8yNVB4dk9qc25KWFMyNFhDZEM0aVRTamw3Y1NBNUpYdm96?=
 =?utf-8?B?VlBWdXVNWjhza0NXZloyMm1xeDdpLzBUZEhrZUV5L3NaYldoZ2JGbUlLdzZF?=
 =?utf-8?B?a2ZNWVZiUGYrSE95T1VMRlVqdTZ4OW9xRG9XNTh6VldKelZuZVBVa21ldm9Y?=
 =?utf-8?B?dkYzd3IrWUNtWmp5alNKV1BwckpTVXU4NmNXQ0Fyd21hRmkzejY1WE1mMEVT?=
 =?utf-8?B?TENZdng3ZGlSWXJIUStqNTZJYzdCNk5uRGdUa0dUWGFqSERSRkczalpVLzYx?=
 =?utf-8?B?R1hUdUNhUGNPdVBSTXZCKzQ4Z1JqbWx2SlpUTnowWUlCSStwS3M3cWxFYlRR?=
 =?utf-8?B?U2o5S0dESXJURTdzWkh2VXI4Zk56SEJKLzJXV3BJbFRMVCtReHdBOWR1NjY1?=
 =?utf-8?B?N0svcDZMSzNHUVFiclZKY0FQcU1wSExQY21ZUlJUZXNEY3lXZ0E2UzZwZVhC?=
 =?utf-8?B?UUh1d09wZ0pNc3RaN0tST1JUM1l1YW9RM3RCS0o4WWRvMi9LNFpDVWlCMzhk?=
 =?utf-8?B?Yk5wVTRoQlNZZ3RRcSswSTVrM0JwOFF3cE1wdG1UQS9QSWg5c3NLUXZSV2x0?=
 =?utf-8?B?b2J6c1M1MndJVlRzb3ExamVWY0dyOUhIVDNPUWI5ZjBiUytSM2xwRWVaV0Ny?=
 =?utf-8?B?cXJIMnAydUJadW40Nm14TzBRZTlqTGJ4ZHl2TWFqRC9PalRvRGgrejRVMHRj?=
 =?utf-8?B?eGRlQmw4Q0ZVazJ3NjFWOUJldHZhTDVnNnRGeFRXY1EwUGsvWFI0SWZCT2tm?=
 =?utf-8?B?QVhxUlA1akkydGJ4RXdGckhlYUhHNzMxb0poRU4yd0pUclkrRjFLNXA3Um9n?=
 =?utf-8?B?UzFWcjRBOHJIV1UvRlZnckhJcTE0UjNRV2V4dUJZbEFqVVRzaG5qaXRBMDNx?=
 =?utf-8?B?WlZzVmIyVWhCa2pUTW5keDF1Qkg5QStsOXY1SzE2R0FuUU1Hc2ZoMXIxYVls?=
 =?utf-8?B?ZjlJR2pkSzFEQ0dKYlhTQlBmMytvN0IvZlZ3WDVjN2RuM3NsLzV1bGdSdzRS?=
 =?utf-8?B?bTFwbC9LWkMwcERmMW40cWlTa0xHYkNHMDBJTmpGSHVHWW9RMDlsNjlyUmVN?=
 =?utf-8?B?bzBBR2NOWmliT3FobFpnQlcyL2haeTV3bG42bUV1NmovcVlJSUxQMytwcTdI?=
 =?utf-8?B?ZklXWklBeFphNm5KdnJYR3Yzei90MEM2RG9teFVJenBBQXVYNmxvOW9VRGR0?=
 =?utf-8?B?WWtidFhmRnY5YStoSE9JQjF5SWhiV08yYjlWMFY4RytRd1FTbDNOVjNOYTNX?=
 =?utf-8?B?cGloRjFuMFR2SHhtVUw1YktpcUdCSmdFQkpoaE42dVFER1VXdWFmWU9zWmVt?=
 =?utf-8?B?YVFQT09OcmM3NG5TQXdQQkJ3eUVsdzk1RUNBOHVjODE3d096MHByeU1VS2Vz?=
 =?utf-8?B?SndRMlAyWU9kVzFhNDBobEpDTnFQaXIrL21SZUJZTW96SXdGMm83V29lY21n?=
 =?utf-8?B?Y0V1akJmcnQxSHJkcjVvclljWlRxNlNBMlB6WXBHRFdlcFRiU3dhY2ZDV2dU?=
 =?utf-8?B?Y3NOQk1nUnVtVmx4TDhlQzhDWkY3M1Nrc0RWSDlnSy9aa2dmMENYSXE1ODFp?=
 =?utf-8?B?dTVqYjJmUjJ3Qnk5SkNMTjUvRWc1aWRVNEdzazVMWU8wb1V4bStkSGRjbXJj?=
 =?utf-8?B?K0dlSGI2aDN0dU13NDVPQk5MWEZVdjlrWXQrOXlhK0VXQzBndmtwZHZmajl0?=
 =?utf-8?B?M0V5OTFVeFpiRlNzcTF4UVZvWXFWZ01OSzUzdXJpTnBmcUZibzB3N0Vab29L?=
 =?utf-8?B?a0M3ZVlUMy9nVVMzd3FmSjZnWXF3U2VXSHVuRW03eGJRUmsvODh3eWdWc3lJ?=
 =?utf-8?B?eTRPeXk5VFlqME1ZVjBQTWw1RjJ0S2twdzRFbFNnelhBenovemFaTFJQbU1x?=
 =?utf-8?Q?3X+krL5hD33HtwraEyDCRYoehiehfbelCiMgmiTS/k=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e219dad8-ddf2-4e4c-c93d-08d9c0e50c85
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2021 22:40:24.2586 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mP1gEPDhrfAUK3D+uISV1fLsGiN+pzQ2iffJYdQh4qEpX+Q9QUDBLCs9uKdDjw5KgPXOnG7eDJ0gCF4V896HfHMxCXhwMt5BJOGeTY0plJI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2597
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 08/11] lib/store: Refactor
 common store code into helper function
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
Cc: IGT-Dev@lists.freedesktop.org, Intel-GFX@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/15/2021 23:46, Zbigniew Kempczyński wrote:
> On Mon, Dec 13, 2021 at 03:29:11PM -0800, John.C.Harrison@Intel.com wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> A lot of tests use almost identical code for creating a batch buffer
>> which does a single write to memory. This patch collects two such
>> instances into a common helper function. Unfortunately, the other
>> instances are all subtly different enough to make it not so trivial to
>> try to use the helper. It could be done but it is unclear if it is
>> worth the effort at this point. This patch proves the concept, if
>> people like it enough then it can be extended.
>>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>   lib/igt_store.c             | 114 ++++++++++++++++++++++++++++++++++++
>>   lib/igt_store.h             |  30 ++++++++++
>>   lib/meson.build             |   1 +
>>   tests/i915/gem_exec_fence.c |  77 ++----------------------
>>   tests/i915/i915_hangman.c   |  61 +------------------
>>   5 files changed, 152 insertions(+), 131 deletions(-)
>>   create mode 100644 lib/igt_store.c
>>   create mode 100644 lib/igt_store.h
>>
>> diff --git a/lib/igt_store.c b/lib/igt_store.c
>> new file mode 100644
>> index 000000000..6d9869b58
>> --- /dev/null
>> +++ b/lib/igt_store.c
>> @@ -0,0 +1,114 @@
>> +/*
>> + * Copyright © 2020 Intel Corporation
>> + *
>> + * Permission is hereby granted, free of charge, to any person obtaining a
>> + * copy of this software and associated documentation files (the "Software"),
>> + * to deal in the Software without restriction, including without limitation
>> + * the rights to use, copy, modify, merge, publish, distribute, sublicense,
>> + * and/or sell copies of the Software, and to permit persons to whom the
>> + * Software is furnished to do so, subject to the following conditions:
>> + *
>> + * The above copyright notice and this permission notice (including the next
>> + * paragraph) shall be included in all copies or substantial portions of the
>> + * Software.
>> + *
>> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
>> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
>> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
>> + * IN THE SOFTWARE.
>> + *
>> + */
> Use SPDX. I like idea of extracting this.
>
>> +
>> +#include "i915/gem_create.h"
>> +#include "igt_core.h"
>> +#include "drmtest.h"
>> +#include "igt_store.h"
>> +#include "intel_chipset.h"
>> +#include "intel_reg.h"
>> +#include "ioctl_wrappers.h"
>> +#include "lib/intel_allocator.h"
>> +
>> +/**
>> + * SECTION:igt_store_word
>> + * @short_description: Library for writing a value to memory
>> + * @title: StoreWord
>> + * @include: igt.h
>> + *
>> + * A lot of igt testcases need some mechanism for writing a value to memory
>> + * as a test that a batch buffer has executed.
>> + *
>> + * NB: Requires master for STORE_DWORD on gen4/5.
>> + */
>> +void igt_store_word(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>> +		    const struct intel_execution_engine2 *e,
>> +		    int fence, uint32_t target_handle,
>> +		    uint64_t target_offset, uint32_t target_value)
>> +{
>> +	const int SCRATCH = 0;
>> +	const int BATCH = 1;
>> +	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
>> +	struct drm_i915_gem_exec_object2 obj[2];
>> +	struct drm_i915_gem_relocation_entry reloc;
>> +	struct drm_i915_gem_execbuffer2 execbuf;
>> +	uint32_t batch[16], delta;
>> +	uint64_t bb_offset;
>> +	int i;
>> +
>> +	memset(&execbuf, 0, sizeof(execbuf));
>> +	execbuf.buffers_ptr = to_user_pointer(obj);
>> +	execbuf.buffer_count = ARRAY_SIZE(obj);
>> +	execbuf.flags = e->flags;
>> +	execbuf.rsvd1 = ctx->id;
>> +	if (fence != -1) {
>> +		execbuf.flags |= I915_EXEC_FENCE_IN;
>> +		execbuf.rsvd2 = fence;
>> +	}
>> +	if (gen < 6)
>> +		execbuf.flags |= I915_EXEC_SECURE;
>> +
>> +	memset(obj, 0, sizeof(obj));
>> +	obj[SCRATCH].handle = target_handle;
>> +
>> +	obj[BATCH].handle = gem_create(fd, 4096);
>> +	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
>> +	obj[BATCH].relocation_count = !ahnd ? 1 : 0;
>> +	bb_offset = get_offset(ahnd, obj[BATCH].handle, 4096, 0);
>> +	memset(&reloc, 0, sizeof(reloc));
>> +
>> +	i = 0;
>> +	delta = sizeof(uint32_t) * target_value;	/* why value not offset??? */
> I guess I know why there's problem here. target_offset is address in vm
> passed by the caller. This is regarding to some limitations of allocator
> infrastructure - for "reloc" pseudo-allocator you would get new offset
> (internally it returns offset and then add size for new "allocation").
> With this we don't need to wait for rebind offset for new execbuf.
> With "simple" allocator put will release offset so new allocation will
> reuse same offset. Ashutosh proposed how to join both functionalities
> (stepping as with reloc, stateful like in simple) but I got no time to
> code this.
>
> Regarding issue here, target_offset passed from the caller is to avoid
> rebind if get_offset() would be called for "reloc" allocator.
> So there's not real value offset within bo. I would add separate
> value_offset (shift) to allow caller to put place where it wants to
> write the value.
If you understand what is going on here and how to improve it then feel 
free to either send me an updated version or post an extra patch after 
this is merged. I don't get how any of the new reloc (or anti-reloc?) 
code is meant to work. These patches were all written as part of the GuC 
support a long time ago - before there was any such thing as an AHND 
(what does that stand for?) or intel_ctx_t. All I'm doing in this patch 
is moving the existing code to a helper and trying to make it generic 
enough to be used by another test. And right now, the two tests are 
passing on both GuC and execlist platforms for me. So the code can't be 
all that broken.


>
>
>> +	if (!ahnd) {
>> +		reloc.target_handle = obj[SCRATCH].handle;
>> +		reloc.presumed_offset = -1;
>> +		reloc.offset = sizeof(uint32_t) * (i + 1);
>> +		reloc.delta = delta;
>> +		reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
>> +		reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
>> +	} else {
>> +		obj[SCRATCH].offset = target_offset;
>> +		obj[SCRATCH].flags |= EXEC_OBJECT_PINNED | EXEC_OBJECT_WRITE;
>> +		obj[BATCH].offset = bb_offset;
>> +		obj[BATCH].flags |= EXEC_OBJECT_PINNED;
>> +	}
>> +	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
>> +	if (gen >= 8) {
>> +		batch[++i] = target_offset + delta;
>> +		batch[++i] = target_offset >> 32;
> Probably I've added this in previous code, for being safe I would
> add (target_offset + delta) >> 32 for avoid risk passing invalid higher
> offset part on 32b boundary.
Pretty sure we don't have any addresses larger than 32 bits yet, but 
yes, delta should be added in.

Thanks,
John.

>
>> +	} else if (gen >= 4) {
>> +		batch[++i] = 0;
>> +		batch[++i] = delta;
>> +		reloc.offset += sizeof(uint32_t);
>> +	} else {
>> +		batch[i]--;
>> +		batch[++i] = delta;
>> +	}
>> +	batch[++i] = target_value;
>> +	batch[++i] = MI_BATCH_BUFFER_END;
>> +	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
>> +	gem_execbuf(fd, &execbuf);
>> +	gem_close(fd, obj[BATCH].handle);
>> +	put_offset(ahnd, obj[BATCH].handle);
>> +}
>> diff --git a/lib/igt_store.h b/lib/igt_store.h
>> new file mode 100644
>> index 000000000..4d5979e07
>> --- /dev/null
>> +++ b/lib/igt_store.h
>> @@ -0,0 +1,30 @@
>> +/*
>> + * Copyright © 2020 Intel Corporation
>> + *
>> + * Permission is hereby granted, free of charge, to any person obtaining a
>> + * copy of this software and associated documentation files (the "Software"),
>> + * to deal in the Software without restriction, including without limitation
>> + * the rights to use, copy, modify, merge, publish, distribute, sublicense,
>> + * and/or sell copies of the Software, and to permit persons to whom the
>> + * Software is furnished to do so, subject to the following conditions:
>> + *
>> + * The above copyright notice and this permission notice (including the next
>> + * paragraph) shall be included in all copies or substantial portions of the
>> + * Software.
>> + *
>> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
>> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
>> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
>> + * IN THE SOFTWARE.
>> + *
>> + */
> Use SPDX and 2021.
>
> --
> Zbigniew
>
>> +
>> +#include "igt_gt.h"
>> +
>> +void igt_store_word(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>> +		    const struct intel_execution_engine2 *e,
>> +		    int fence, uint32_t target_handle,
>> +		    uint64_t target_offset, uint32_t target_value);
>> diff --git a/lib/meson.build b/lib/meson.build
>> index b9568a71b..3e43316d1 100644
>> --- a/lib/meson.build
>> +++ b/lib/meson.build
>> @@ -72,6 +72,7 @@ lib_sources = [
>>   	'igt_map.c',
>>   	'igt_pm.c',
>>   	'igt_dummyload.c',
>> +	'igt_store.c',
>>   	'uwildmat/uwildmat.c',
>>   	'igt_kmod.c',
>>   	'igt_panfrost.c',
>> diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
>> index 9a6336ce9..c4091a454 100644
>> --- a/tests/i915/gem_exec_fence.c
>> +++ b/tests/i915/gem_exec_fence.c
>> @@ -28,6 +28,7 @@
>>   #include "i915/gem.h"
>>   #include "i915/gem_create.h"
>>   #include "igt.h"
>> +#include "igt_store.h"
>>   #include "igt_syncobj.h"
>>   #include "igt_sysfs.h"
>>   #include "igt_vgem.h"
>> @@ -57,74 +58,6 @@ struct sync_merge_data {
>>   #define   MI_SEMAPHORE_SAD_EQ_SDD       (4 << 12)
>>   #define   MI_SEMAPHORE_SAD_NEQ_SDD      (5 << 12)
>>   
>> -static void store(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>> -		  const struct intel_execution_engine2 *e,
>> -		  int fence, uint32_t target, uint64_t target_offset,
>> -		  unsigned offset_value)
>> -{
>> -	const int SCRATCH = 0;
>> -	const int BATCH = 1;
>> -	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
>> -	struct drm_i915_gem_exec_object2 obj[2];
>> -	struct drm_i915_gem_relocation_entry reloc;
>> -	struct drm_i915_gem_execbuffer2 execbuf;
>> -	uint32_t batch[16], delta;
>> -	uint64_t bb_offset;
>> -	int i;
>> -
>> -	memset(&execbuf, 0, sizeof(execbuf));
>> -	execbuf.buffers_ptr = to_user_pointer(obj);
>> -	execbuf.buffer_count = 2;
>> -	execbuf.flags = e->flags | I915_EXEC_FENCE_IN;
>> -	execbuf.rsvd1 = ctx->id;
>> -	execbuf.rsvd2 = fence;
>> -	if (gen < 6)
>> -		execbuf.flags |= I915_EXEC_SECURE;
>> -
>> -	memset(obj, 0, sizeof(obj));
>> -	obj[SCRATCH].handle = target;
>> -
>> -	obj[BATCH].handle = gem_create(fd, 4096);
>> -	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
>> -	obj[BATCH].relocation_count = !ahnd ? 1 : 0;
>> -	bb_offset = get_offset(ahnd, obj[BATCH].handle, 4096, 0);
>> -	memset(&reloc, 0, sizeof(reloc));
>> -
>> -	i = 0;
>> -	delta = sizeof(uint32_t) * offset_value;
>> -	if (!ahnd) {
>> -		reloc.target_handle = obj[SCRATCH].handle;
>> -		reloc.presumed_offset = -1;
>> -		reloc.offset = sizeof(uint32_t) * (i + 1);
>> -		reloc.delta = delta;
>> -		reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
>> -		reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
>> -	} else {
>> -		obj[SCRATCH].offset = target_offset;
>> -		obj[SCRATCH].flags |= EXEC_OBJECT_PINNED | EXEC_OBJECT_WRITE;
>> -		obj[BATCH].offset = bb_offset;
>> -		obj[BATCH].flags |= EXEC_OBJECT_PINNED;
>> -	}
>> -	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
>> -	if (gen >= 8) {
>> -		batch[++i] = target_offset + delta;
>> -		batch[++i] = target_offset >> 32;
>> -	} else if (gen >= 4) {
>> -		batch[++i] = 0;
>> -		batch[++i] = delta;
>> -		reloc.offset += sizeof(uint32_t);
>> -	} else {
>> -		batch[i]--;
>> -		batch[++i] = delta;
>> -	}
>> -	batch[++i] = offset_value;
>> -	batch[++i] = MI_BATCH_BUFFER_END;
>> -	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
>> -	gem_execbuf(fd, &execbuf);
>> -	gem_close(fd, obj[BATCH].handle);
>> -	put_offset(ahnd, obj[BATCH].handle);
>> -}
>> -
>>   static bool fence_busy(int fence)
>>   {
>>   	return poll(&(struct pollfd){fence, POLLIN}, 1, 0) == 0;
>> @@ -400,13 +333,13 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
>>   			continue;
>>   
>>   		if (flags & NONBLOCK) {
>> -			store(fd, ahnd, ctx, e2, spin->out_fence,
>> -			      scratch, scratch_offset, i);
>> +			igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
>> +				       scratch, scratch_offset, i);
>>   		} else {
>>   			igt_fork(child, 1) {
>>   				ahnd = get_reloc_ahnd(fd, ctx->id);
>> -				store(fd, ahnd, ctx, e2, spin->out_fence,
>> -				      scratch, scratch_offset, i);
>> +				igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
>> +					       scratch, scratch_offset, i);
>>   				put_ahnd(ahnd);
>>   			}
>>   		}
>> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
>> index 20653b479..4cb9b8b85 100644
>> --- a/tests/i915/i915_hangman.c
>> +++ b/tests/i915/i915_hangman.c
>> @@ -36,6 +36,7 @@
>>   #include "i915/gem.h"
>>   #include "i915/gem_create.h"
>>   #include "igt.h"
>> +#include "igt_store.h"
>>   #include "igt_sysfs.h"
>>   #include "igt_debugfs.h"
>>   #include "sw_sync.h"
>> @@ -51,64 +52,6 @@ static int sysfs = -1;
>>   
>>   IGT_TEST_DESCRIPTION("Tests for hang detection and recovery");
>>   
>> -/* Requires master for STORE_DWORD on gen4/5 */
>> -static void store(int fd, const struct intel_execution_engine2 *e,
>> -		  int fence, uint32_t target, unsigned offset_value)
>> -{
>> -	const int SCRATCH = 0;
>> -	const int BATCH = 1;
>> -	const int gen = intel_gen(intel_get_drm_devid(fd));
>> -	struct drm_i915_gem_exec_object2 obj[2];
>> -	struct drm_i915_gem_relocation_entry reloc;
>> -	struct drm_i915_gem_execbuffer2 execbuf;
>> -	uint32_t batch[16];
>> -	int i;
>> -
>> -	memset(&execbuf, 0, sizeof(execbuf));
>> -	execbuf.buffers_ptr = to_user_pointer(obj);
>> -	execbuf.buffer_count = ARRAY_SIZE(obj);
>> -	execbuf.flags = e->flags;
>> -	if (fence != -1) {
>> -		execbuf.flags |= I915_EXEC_FENCE_IN;
>> -		execbuf.rsvd2 = fence;
>> -	}
>> -	if (gen < 6)
>> -		execbuf.flags |= I915_EXEC_SECURE;
>> -
>> -	memset(obj, 0, sizeof(obj));
>> -	obj[SCRATCH].handle = target;
>> -
>> -	obj[BATCH].handle = gem_create(fd, 4096);
>> -	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
>> -	obj[BATCH].relocation_count = 1;
>> -	memset(&reloc, 0, sizeof(reloc));
>> -
>> -	i = 0;
>> -	reloc.target_handle = obj[SCRATCH].handle;
>> -	reloc.presumed_offset = -1;
>> -	reloc.offset = sizeof(uint32_t) * (i + 1);
>> -	reloc.delta = sizeof(uint32_t) * offset_value;
>> -	reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
>> -	reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
>> -	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
>> -	if (gen >= 8) {
>> -		batch[++i] = reloc.delta;
>> -		batch[++i] = 0;
>> -	} else if (gen >= 4) {
>> -		batch[++i] = 0;
>> -		batch[++i] = reloc.delta;
>> -		reloc.offset += sizeof(uint32_t);
>> -	} else {
>> -		batch[i]--;
>> -		batch[++i] = reloc.delta;
>> -	}
>> -	batch[++i] = offset_value;
>> -	batch[++i] = MI_BATCH_BUFFER_END;
>> -	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
>> -	gem_execbuf(fd, &execbuf);
>> -	gem_close(fd, obj[BATCH].handle);
>> -}
>> -
>>   static void check_alive(void)
>>   {
>>   	const struct intel_execution_engine2 *engine;
>> @@ -138,7 +81,7 @@ static void check_alive(void)
>>   			continue;
>>   
>>   		/* +OFFSET_ALIVE to ensure engine zero doesn't get a false negative */
>> -		store(fd, engine, -1, scratch, i + OFFSET_ALIVE);
>> +		igt_store_word(fd, ahnd, ctx, engine, -1, scratch, i + OFFSET_ALIVE, i + OFFSET_ALIVE);
>>   		i++;
>>   	}
>>   
>> -- 
>> 2.25.1
>>

