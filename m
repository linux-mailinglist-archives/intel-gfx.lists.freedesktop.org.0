Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD78248DEDD
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:27:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5529A10E4BB;
	Thu, 13 Jan 2022 20:27:08 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B4110E12A;
 Thu, 13 Jan 2022 20:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642105626; x=1673641626;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+NI/RSNoWR8Rjh3/i2gjuJX8aMMknOwXEORbc0zzHWw=;
 b=azFRw/GvU9g/X3EGJO9Ufa22sCyAk4IFzEusACfOj1dx3efkHWLCra0O
 9/2u+rw40XyHwzW/mvhS8evNorCzDe2NfrAmnOEbE9ZfYUAkliC1FBKT3
 9F+tCKPXuHsVragfvtaLLmrZYRpympolwOLFiytQu9jTq54yldR2TDJrN
 5UoIoYn4Q+PwyK6bmwRXFkCoI83ZMiavHBu768o3VtHfYYbQ3BC1hIu3x
 F7f1Ige8HzpgrFcJr9FFVqbcLsKFRxG1svAoJHw+jVBi3Ai/v9kQXlTp5
 O0pAh4VJ90hlyeTEHta7IcC/kYIhIl9Yv0TvHV3rZ6tbK4/hjtvHjpfhT g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="243904337"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="243904337"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:27:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="529821644"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 13 Jan 2022 12:27:06 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 12:27:05 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 13 Jan 2022 12:27:05 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 13 Jan 2022 12:27:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BJAp/DjT+Bgy7pVxClzq0BhFc7yQ97fJ175utpHyfpE43sKxd51FC4QFXgGqEMPpLgs4W9NeP2e8kHnm0PM3mPYd+x0DaDMASK+FzUZrhOBu9pPh2S+6I6C5izQqsM85vcCppIAes1m1Y3/ZCp79dyglhZ/IHyhS/r2dWH3RhWjuiiaw588Y9lqJHUpkN15XojS//P+K9SKYxai9wUU+i5wpxC2u+NGyQcGN5KtPFpAUVNeWpQWmDTOHdvkWkGVJTRsHZyVYfTeNxbCKxANVwosiHsa5qnNgYLHgsl25wPADiKLPw2oyGZRGHVXcPHTK/vPToVWRaJu34DEXnf4lfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AU+F6YLzVni2DNCwJo1DeoRq5U2+FxW+LgtTqYTOfng=;
 b=l4E8/26L9pXA8bTCKFTyfNR/rEb+dknCvGYdOzIkY5wyhewZHrvSMVdJMrXqtSYBZ7g7sJJNwZ9olsSJCSm/m2uzrGBrIJuhb2PwU3o6q80ooU5hoJ2kyOZpCYlclBTPQODDg1nxfrScmuUJleLW51/kfZcHd7/FDx35aXyw9k9uPd/0xBJDBlUQ6iuNEhhjIqWC3BjnAuuiPXwjVuvB5OhquC1QjkEhbv7rgo+SJFPbBt1ytUVi2ud+0FR/fDlBYUek3lhg+KpU30BzqKjq5ooQTt7et3V4m0QeIJgKZ9IBQjcJ2sy2i1WVHKDDhKq94Q6JeLGn0bTyVdcx1aPYdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BL0PR11MB3172.namprd11.prod.outlook.com (2603:10b6:208:2e::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.10; Thu, 13 Jan
 2022 20:27:03 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5%5]) with mapi id 15.20.4888.011; Thu, 13 Jan 2022
 20:27:03 +0000
Message-ID: <c50ce63a-e280-b000-942f-84cae295a1e1@intel.com>
Date: Thu, 13 Jan 2022 12:27:00 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.1
Content-Language: en-GB
To: Matthew Brost <matthew.brost@intel.com>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-8-John.C.Harrison@Intel.com>
 <20220113201002.GA13315@jons-linux-dev-box>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220113201002.GA13315@jons-linux-dev-box>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MWHPR2201CA0037.namprd22.prod.outlook.com
 (2603:10b6:301:16::11) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3cbef06e-696e-4dfc-4348-08d9d6d30f03
X-MS-TrafficTypeDiagnostic: BL0PR11MB3172:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BL0PR11MB3172F6FEDB6FD6D0F87CB272BD539@BL0PR11MB3172.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:546;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lBYwrC0b9fjvKBktmw3EKzPFIgdnsjlxLD6iQhX2YgbQgTAYrgdVNlSZY7TIddICIoNTj/VNW1h5Dr4CvAQSRxeHL7NWS1WcYY4S8CiK3P5Spbgxvzi14gI2fsOAGRs3hmJdJ5SWqp+DhUACW8JRB1M/a9sewgxxkj+2zpSFEuhPtQCMZTeNwQcsfZy+k1VvS36Vd2aXela5MzMwpSICUHs3YVDCrFKKFlyYNAhCBlOJzMJ9rGGqbFDddsOTcm0rkeDDdI32DkoagQpj1KFDmUyfWdSn+UR8Z2SDxX1Wv7KIxUZ+DRwChC3DZXpMq5SxE2BSQrQ9ATJ+4WL8+H23R54o6+v2E5CxIbOkAFbq+7JluPoecsEnuiRZd1JnqsfdbDx2jvmcVgrzfPB3taOA6HXi1nJEeQJDoUPuIP8TqEtnLwiT1J/F20xF+Z9JRgd+FNWfV/UTd6uE07ZrCspMngseeol1GjZFacLcGreaaMzZBFWLNb4ht0/2bHxaGfMggoWa4ZZEMsKDwiZQ0UTxqkZZgd9dMVFy7IpV0ekPB18nIZwFgr46CaNvK3gKAR9qsEvmIePkvXtRL8UXFPnnLQZ278GhUOU/h42btVQErNNjMdy8V7rbZlucAzgrFZjILgfbIOSyHUAu8ibmSc0cMZ8uF5d+mDy75t50/ACxBIUqnF8k3M2GtmQf43VB07yoQq0mA318n1+Gw2vQ9a8RNC+kA+H1kUcvqOkYoUFz9uqibC8VDQzBm9BAAdskrpD1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8676002)(6486002)(4326008)(186003)(26005)(37006003)(2906002)(6506007)(38100700002)(82960400001)(316002)(31686004)(8936002)(53546011)(2616005)(6512007)(6862004)(450100002)(508600001)(86362001)(5660300002)(36756003)(6636002)(66476007)(83380400001)(66946007)(31696002)(66556008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b1Y3NC8zZ1ZWY0FXTkVXSjBqYXMwOVdxZVJpa3hSaXU4a1hzQXRoUTB3UXlj?=
 =?utf-8?B?T0xoTVFqK1JhelF4V3RZUFhueWMrbWZENXhZV2dCellDK29iYXNFTkc4VU9n?=
 =?utf-8?B?TytTSnQvQzBhZkVZaWxla3VEYXozYmVpOGtpd25GR29DRmgxejhRSENxMzFn?=
 =?utf-8?B?RWhMQkZ3T3RnZG1kRzJqN2M3ZXg3RXpjSXV2Y1VNV0dxWm9FKy9kYU1NQVlP?=
 =?utf-8?B?SHRZc2t1ZUVsbFNKVDVvYis1eVVHTFNNMTRmTjZtUDRuRHYwazVUUDQvL0pt?=
 =?utf-8?B?dXJqckRZclZMVUtrSEV5VTJRdTVmUnAwOXBkcUszWHJRSFduOHZYQnkyNjBz?=
 =?utf-8?B?NGplWHNMbjZwQWNoZ1QwQlJxNkRqcVlVSXNEckY1V21XWERXRThCWmUya3V4?=
 =?utf-8?B?eUJ0QnlkS05JbDdnNC9aMFl0NWtvM0U2SDBqSzVNT1k4eVdaaFdYcE9nczBG?=
 =?utf-8?B?bUxRdlE2RDZ2UGZPTUF4RGpDSVYvV1hBM2NycU5HMkFpUDlxeHJpNkJDSlR3?=
 =?utf-8?B?ang2WkJtUjZjVGUxVGdqZmU2b3doaGlJMithS3dYN3FlSHQyQTZ4RFd0V2t6?=
 =?utf-8?B?TjI5TXFxZkU0V28vVnNsTmJpalBpWVlJOStwU2tabVZFcVJrczkxaS9tRTNR?=
 =?utf-8?B?M1R0UTBLRDlHN2N5VFk3Qlc5TytuQXFpWUNQekZGWWJXM0NuZ3lWbm5NRGZ2?=
 =?utf-8?B?Ykttd0l1a0YzMDJEMjVlZzU3RldiSXh1VXloM0s2NnlkbVVjcVNlRXd6UlJG?=
 =?utf-8?B?amtBNXdWK1NIaXA1UGFKU1pSSy9NaSs1MHJTa1pyT1FINVV6R0hEWVNnalFp?=
 =?utf-8?B?Ymx5WUlVcG1YT0R6S3MrdisveFVoZCtrM1ZaVWM4MmdVTzlmTjdxL2dQcWdK?=
 =?utf-8?B?aFpEVWdSblk0eUsrVXYwZjZEWWhsS1BFTEsxN0g1N2E0QlJjbGE4YmR5MXE4?=
 =?utf-8?B?RlN5UTlpLzdyTGhydTBHYTcxcnpxVFVETUtLcDZvcEc3WFZxUW03T3ZYT0kz?=
 =?utf-8?B?b2YyQWhpNVRuSzNKY3lvMnlZZ2xSdExRMG1WSjVLOUpNR2VTTWZIZ2pYMTgw?=
 =?utf-8?B?anR0QzNEaHErQ2MwM3hjd2xJUnBOZXVqcWt2dHA4LzUvTkYwS3hVaGlOWTNN?=
 =?utf-8?B?Z1E0djdtUE4zVUpqMjVUK0hsWEhtTTB6YmZqUnR2Z3hrZCtRcjY5UUJJOVB5?=
 =?utf-8?B?UVdLQ0Z5VXJzajRRY09UVHYzaisxSWl0Nm1VT1J1T3pVUzRRY3p6djFvNGhJ?=
 =?utf-8?B?d0pHbktEZHlCYmJBd0M2SER3MUUwMC9ybzZzclJWaE5SdWQ1ZGVtMTljVEJ3?=
 =?utf-8?B?eXdPZG1lTHI0UDlSaTZrMW1TSWVZNjM4M0E1WWdZcXo0SXlGQ25sNjQvcWI4?=
 =?utf-8?B?MHFoOExRdUxyN2ZXaVdpM1ZkNFpPYndMdll4N3lKQlJQNXpZbnZDbmlKdWd1?=
 =?utf-8?B?MDFHcmdxQXZkczVUMVluZWYwdzU3d2xBd2FhbHYzakxGN0syRzFqUjl1eFZT?=
 =?utf-8?B?QjlzUmRyYmdtQ0ZEQnluQm9JUzNMSy9nUHBFT25FaVNwa1VOMW1nOEdjWERY?=
 =?utf-8?B?UWZhNXQzUDJrMVZ4b09ZRGhub3p3amdIL0NaTFkzcXd6dlZSQXBrYTVSUmtj?=
 =?utf-8?B?dE1UT1VSMi9HbFNMMFQyeVVzNGZKd3VDNThLVkprTjBNdVVPS0o5NXUrbjN5?=
 =?utf-8?B?KzBqazA4ZnRHZjhxTlZzamZzWUhwNHdhcEx2UGE2N0RVdHFCK29jM0I5dytJ?=
 =?utf-8?B?QmFUQ1NEekJkM0M5U3dmeTdlaEdGa1dGeXBkQ3g5RStFMkhzTStMOGVFVHVt?=
 =?utf-8?B?ZmlkRFJvMDdhZndXQXZsSHJKV09vUit2TnN3UWZBL1BkWUZvNHh0NmdPS2xw?=
 =?utf-8?B?QXBZVnlpTnVMWUhlSFRGRkg5RjlscVNwa0NRU3p5aVJ1MEhnYUVTWTBkaDJ2?=
 =?utf-8?B?VFFHaElFUFRXNTB1dzMwZFUvSXRRK2xCbnBGZm1rcHpGT2poWHhNbG9Uc1JC?=
 =?utf-8?B?ZlpYbmZPR0wzYS84bTdaTUZwUExJRytET3hkaWpLTzhoK2FIMHpTNXdEREIv?=
 =?utf-8?B?enBkbWFQcWJFT003cWZIYTJNemtVZlo2L1V2Q1VjMnoyRFJ3RWZxMFlHczdW?=
 =?utf-8?B?VWsrWDd3R2UxOUdRN0tHa2JTZnBWMWhtemlVdUZjUnJLc3Q4M3RKbDgyeWVN?=
 =?utf-8?B?NXErb01jYXhMSDN2WFppNk5mbUZ3Ujd0cnF1dk12aUpTVFJFd3lLek9OSkY4?=
 =?utf-8?Q?nwJmMRzYVqKDI7wBF6zxAGzdZXpA472hayKdnziD3U=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cbef06e-696e-4dfc-4348-08d9d6d30f03
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2022 20:27:03.0295 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aGnyVS6qPTALSs4WMN26TXHEk44vzN/T9ESqvdwdHWTnen0xDcM2Q4/I090eo3pIqhIBtybbP3OVd9NTeenvqDLbxO0HBr1n6yaicGYDDXU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3172
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v3 i-g-t 07/15] lib/store:
 Refactor common store code into helper function
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

On 1/13/2022 12:10, Matthew Brost wrote:
> On Thu, Jan 13, 2022 at 11:59:39AM -0800, John.C.Harrison@Intel.com wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> A lot of tests use almost identical code for creating a batch buffer
>> which does a single write to memory and another is about to be added.
>> Instead, move the most generic version into a common helper function.
>> Unfortunately, the other instances are all subtly different enough to
>> make it not so trivial to try to use the helper. It could be done but
>> it is unclear if it is worth the effort at this point. This patch
>> proves the concept, if people like it enough then it can be extended.
>>
>> v2: Fix up object address vs store offset confusion (with help from
>> Zbigniew K).
>>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>   lib/igt_store.c             | 96 +++++++++++++++++++++++++++++++++++++
>>   lib/igt_store.h             | 12 +++++
>>   lib/meson.build             |  1 +
>>   tests/i915/gem_exec_fence.c | 77 ++---------------------------
>>   tests/i915/i915_hangman.c   |  1 +
>>   5 files changed, 115 insertions(+), 72 deletions(-)
>>   create mode 100644 lib/igt_store.c
>>   create mode 100644 lib/igt_store.h
>>
>> diff --git a/lib/igt_store.c b/lib/igt_store.c
>> new file mode 100644
>> index 000000000..42c888b55
>> --- /dev/null
>> +++ b/lib/igt_store.c
>> @@ -0,0 +1,96 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright © 2021 Intel Corporation
>> + */
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
>> +		    uint64_t target_gpu_addr,
>> +		    uint64_t store_offset, uint32_t store_value)
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
>> +	delta = sizeof(uint32_t) * store_offset;
> Can't this overflow the delta as store_offset is a u64?
Oops.

Yeah, this code was a right mess of data words being used as addresses 
and random copies supporting 64bit or only 32bit offsets. I believe it's 
currently fine as even platforms which can theoretically support >32bits 
don't actually use it. But yes, will repost with a 64bit version of delta.

>
>> +	if (!ahnd) {
>> +		reloc.target_handle = obj[SCRATCH].handle;
>> +		reloc.presumed_offset = -1;
>> +		reloc.offset = sizeof(uint32_t) * (i + 1);
>> +		reloc.delta = delta;
>> +		reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
>> +		reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
>> +	} else {
>> +		obj[SCRATCH].offset = target_gpu_addr;
>> +		obj[SCRATCH].flags |= EXEC_OBJECT_PINNED | EXEC_OBJECT_WRITE;
>> +		obj[BATCH].offset = bb_offset;
>> +		obj[BATCH].flags |= EXEC_OBJECT_PINNED;
>> +	}
>> +	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
>> +	if (gen >= 8) {
>> +		batch[++i] = target_gpu_addr + delta;
>> +		batch[++i] = (target_gpu_addr + delta) >> 32;
> This is different from the previous code, presumably this is fixing a
> bug where delta + bits 31:0 of target_gpu_addr overflows into the upper
> 32 bits?
>
> Matt
Yeah, some copies of this code were definitely broken for >32bit addresses.

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
>> +	batch[++i] = store_value;
>> +	batch[++i] = MI_BATCH_BUFFER_END;
>> +	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
>> +	gem_execbuf(fd, &execbuf);
>> +	gem_close(fd, obj[BATCH].handle);
>> +	put_offset(ahnd, obj[BATCH].handle);
>> +}
>> diff --git a/lib/igt_store.h b/lib/igt_store.h
>> new file mode 100644
>> index 000000000..5c6c8263c
>> --- /dev/null
>> +++ b/lib/igt_store.h
>> @@ -0,0 +1,12 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright © 2021 Intel Corporation
>> + */
>> +
>> +#include "igt_gt.h"
>> +
>> +void igt_store_word(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>> +		    const struct intel_execution_engine2 *e,
>> +		    int fence, uint32_t target_handle,
>> +		    uint64_t target_gpu_addr,
>> +		    uint64_t store_offset, uint32_t store_value);
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
>> index 9a6336ce9..196236b27 100644
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
>> +				       scratch, scratch_offset, i, i);
>>   		} else {
>>   			igt_fork(child, 1) {
>>   				ahnd = get_reloc_ahnd(fd, ctx->id);
>> -				store(fd, ahnd, ctx, e2, spin->out_fence,
>> -				      scratch, scratch_offset, i);
>> +				igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
>> +					       scratch, scratch_offset, i, i);
>>   				put_ahnd(ahnd);
>>   			}
>>   		}
>> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
>> index 6656b3fcd..5a0c9497c 100644
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
>> -- 
>> 2.25.1
>>

