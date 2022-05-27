Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE039535D95
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 11:46:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E993210E72E;
	Fri, 27 May 2022 09:46:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68FD810E452
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 09:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653644813; x=1685180813;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DyJcVYAPFNKR+vEYD8PbkrvViyEEitLVTyJmx/nfwpw=;
 b=LnSa6q4LKbXAb89oFDvpCAhtva6CkBFWUbJp2fufD5oLONLoAP0amlxO
 PyibULrYPqC3zRyKsDJI2eahvyeMJAjVa5v+lsUtWkjOSm0/AvibvDfps
 PlciJw8HJPxvidyOFdcGARIM7enhfKZ1tDAR/1dnMsbnEkkxLLvIjmITZ
 k8646xXnHu0661L5xrRqf/VaPNbyOdHiTm60Bu44HGHJlfQJgVg36dJOR
 8c8KgCuKAKaPdJG7bH9pV/wqLN4HeMce595fVa17Z1SfEyupBDvjHptRF
 mLXNuYOqk7Iyv7HLnl88KwT84cwGbfyP9fV3gbDUBUeGJF13YSr3XSb3c A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="272007417"
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="272007417"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 02:46:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="718816927"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 27 May 2022 02:46:53 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 27 May 2022 02:46:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 27 May 2022 02:46:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 27 May 2022 02:46:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jXq2PVj1HQCi+dh0RYFXg6kTRb29B8zFbeQQPCToklGYm8C+D/hBt/v/CJZ+oR3xUpMtsp3eO3qpf6Ujsm6um6InP1lPZvn/Zra/UW23y0PTvs0t1fT+96O7p8eQzLi0CNC38Z5nOXAUdMYuPP+kCCbcxi63EIDDt+5zZ8m4i/7sK5yIR6VlQL+3QEdl/19sE/V4dfYORfQRMWDXrywqSlC2cAPBzieCqOrqc6oDo2aMd9sONwWs4NwJay6ABEd1b/z9asBpEjOFALqeRFvR7UQy8m8dZTcdbiUgW5WuEuEtVWllQyaUvUlGG9s+axa59ONxwM5YCu9rial1hO6ZLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YvVovoiR6jsAQOuR4WL9Nv7sXEzVc3A1yP1TKydXxRE=;
 b=XgFcrrbbaZKqa+eMrPZDTselGQ5UPhBjj0SZZ4CM2FMewSLZMVfFayUNZhsHnuGyFDUyfR6BG6ML+ky0URjwbFuUa4jVmDBVCJ5C1gU7l2bRWDwxoMUeoKTo/Ng7LUdXkFuuv/XZzmVYRBfZq2KxJnENznSihXZy+ExAz1IsmcGOYUViY9nym5pcwjnz58gkAIcS6Gs8KsOoNd6DiEDc3H13nNSC9yQVKFFbh7vZjMYUX4vAYyz6/jX5OHbBHrXohkrs2ZtHazMzST0nMhddyuZzCnMzod9M6UmsEFxJ0MH6gv6vDbHKqlumG//PaCwERZcgSTqeDjIkB0850A1Chg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by CY4PR11MB1464.namprd11.prod.outlook.com (2603:10b6:910:7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.15; Fri, 27 May
 2022 09:46:49 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe%6]) with mapi id 15.20.5293.015; Fri, 27 May 2022
 09:46:43 +0000
Message-ID: <2c1400c1-d255-5485-f3c4-e85e9a20d63c@intel.com>
Date: Fri, 27 May 2022 11:46:38 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220525095955.15371-1-nirmoy.das@intel.com>
 <2c138486-fa2e-867c-33ac-3e7837a8481a@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <2c138486-fa2e-867c-33ac-3e7837a8481a@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM6PR0502CA0047.eurprd05.prod.outlook.com
 (2603:10a6:20b:56::24) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f154f10a-1d64-450d-c1a6-08da3fc5ce4e
X-MS-TrafficTypeDiagnostic: CY4PR11MB1464:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <CY4PR11MB146433EE49845C44148B112D99D89@CY4PR11MB1464.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bS+fzSUCMT13eisdAKzFr0cbA1/IrZW02fS8wpVvykAGIyrY5zAyzwtqvG8297mpa3w85AKRh47KRst05PPkpnwuA4wO85OxHy30csnzeQZpkZW2tXmcORCb6Udyxt82A3jjr4P0DxYCB7s38RMXW0bOGLlNOkwE0mfUXvxxoVXCevn+PHryS9MUIUSEuLfGa7WbtbBUmBLnaxjxCOIHQf2Z9Xuc9wfwOR/+0Po1o26jeobcnoopgp9yCKL8SNtbvu5p6R1mBYClepwhN7ZAMuLDv1rglO6efgowF3+UXwwY4vzsxXOMZZpU3kFo/5KOu4vfcWtYh4fanSMUrLgxXoI8Ur0MeQk1UpEQ5eJtOlez5gnHKd2PD2ukPNFtuaPckAyKBnDZXTpi1qf1irr4j7+7AChvfpiZfQsRRzSFjpoM/mMx0pZeFqziRdwV8yHPepfAJgOiuveqYVXKqLLT5i1GO47DCb/hRuLYzrN7DmKKKTeZXHcqkr7YcJ6hns8NqQV6lsOBguJZZ8IoDZXoDSo8duEFhlaXVMcsAmPicg5Se82/DA5d/7RF6/yvlLTg+WttuvzWahmQopf4YpWxyG7qAZdPFZ/ir7VKf+cRc/rCFsGxIc2cBBtDeBX6YrsLTHmxGzfqSKCxVJI9XF1lKpNGDcFx94paVZ3zVl0Kq/DunKJDQGdI8IbWQ7kW9PsAwQiy8HpqZy2FerMeyED8g+ifBASZlEW+IsLxVAIpRoA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4326008)(66476007)(8676002)(66556008)(66946007)(38100700002)(2616005)(6666004)(8936002)(508600001)(966005)(86362001)(2906002)(6486002)(31696002)(26005)(82960400001)(6512007)(5660300002)(6506007)(53546011)(316002)(186003)(36756003)(31686004)(107886003)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGNxY0dQYVZzeTdJTnRSY3F0c0RZckpLT3F1VWM3SGp6K1N3ODhSQ0xwUmZB?=
 =?utf-8?B?cTJOcG1OaGdmZU9wNTI1NDYrR0tGdUU2eVUvMDhUYWNBaS9xL3hBTnpSOUwr?=
 =?utf-8?B?TStRZjdiUmxWWktMK05QNnlvWHpOUjNOYjNXOThNSkYxKzYrVGpSdmQ3aFZz?=
 =?utf-8?B?UlJNSzdiUzJnWUY5TFA3ak12TzBweHF5dlZQL2RYUVkza0pRQ2poMXZZNkI5?=
 =?utf-8?B?MTB6ajJrdWpUQkF1dFYzNFZtM1FtZTljWHFvZ2luZTlqS0w3Q29nRFB0bXl3?=
 =?utf-8?B?anJTTWc5RlZxejJ3dkxCZlQ3dithT3FseGQ5RDBaMlNJYVJ6VnYxd0E2dXZB?=
 =?utf-8?B?OFZLdkxmRlo5VGIrYTBPOUtIQjRLQXp6VkM4WXl4RDFaMVVBMlhBdVd1a2hk?=
 =?utf-8?B?MWd6MDFWZm9TNUNnQjYxdTRUbmdZK1FzSWhXb3llUjFYOERNZ2lXclk2VnZJ?=
 =?utf-8?B?cHh5RlRLTTMwbGtBU1NGTnpiaTNPQ3c3Qm9RK1NFU2RxNGl1OXRyL0hEa1BJ?=
 =?utf-8?B?U3JxdUlBZGNBSXhhU0Zxam1IUi9KZ3prT0ZoazZ1SWt4cTgzWGF0cjNNNjUw?=
 =?utf-8?B?clQ4cXd5RjJOWkJXaUN1Y0t3eE9JUlptR0NGdHZPQlllQ2tpMkN5TEFybEJv?=
 =?utf-8?B?RkVnYXVSN2lHc1ZEWmhsWFFZVk1WKy8xODM0RzdYd3NhZnlDZDhPSjdqcEtU?=
 =?utf-8?B?QzBjZ3F3Z0oxakYvc2hubU5OYk9xODUyUkZBVkhsMzlab2VzWENtUEY4Y1JV?=
 =?utf-8?B?YnhDSUNXNGtUUnZJRUw1c1BpbTloOVpmbDEra28xQzJxTE1SZWJTb21hbUN2?=
 =?utf-8?B?dnFDKzNraGFkV29HOXp1SDhzTTdhQXQrMEJqcnRPc1NIUDJwaGszODBYVEdj?=
 =?utf-8?B?dGw2SGNTYUpVbzhGL3JQdHY0UjFndGk4UkhLSk1tMnR2N0E5RE5BWW9qcVV1?=
 =?utf-8?B?TGtJcnEwNnpTYVpuVXUrZTdhT0FGSGFheGJ3S3l6T3VWNXdreUZEZVJMV3BF?=
 =?utf-8?B?YWlWWjV3emV2NzJreEZaUXQrTkNKQjBTeHFEQ0VjNEFjcUh2T0ZtcXpteHlk?=
 =?utf-8?B?ZHA2MmZsbUpxbnlGVFhHZnBES25QNFJSMGhQUmxBU0Q1THhoK1g4SE53Ymgz?=
 =?utf-8?B?NFRCZVRuSWd5WWVaU2lDeWJIMEQvRGJ2azlydG93aWJKUWg2Znorc2JleFl1?=
 =?utf-8?B?cTVQUTFnVjFnZVlXelRqSk0rWGowTEMzSFpWZVdlbWFuS0I0NEhwaTZtd0I0?=
 =?utf-8?B?ZDA1NUZTRC9IRWNRQkdXR2ZpNy9TeEpxbHN0dXN5WHBrbGpEUlRNTHVUZkRu?=
 =?utf-8?B?Vm56OXlxSzZpaEQrT2Fod04wUEZMWXYyZmlRdCtocjRGcVh4RVRMMWpyMy94?=
 =?utf-8?B?NWJuc3d3eHFmbTI5cWJYUFBOZ0VPQ2tZb1JZTy93dUlGSmxBVThwRzVYekFj?=
 =?utf-8?B?dGdSZHZmZEZmOHFXd05FbEZTYUliSmg3aCtHZ00zQUt6ZVFBdjZ0SXREcVN6?=
 =?utf-8?B?OGVDbXA4ekgzbkVGNG10MFFxMW1Vak9nYWxSUW15UDhMR0o5akJRcE1JMGsw?=
 =?utf-8?B?SnNkSW1tY1hoODJCOUx4U3d5U25LbDJrQU1OenV2SWVUN0poVUh1L3l0ZVFW?=
 =?utf-8?B?dmhJT2RvQmI3cmxxMEhVaXFUanVFVHJIYktpV2Z5cHcrNm5iMVhlQzU4eXI2?=
 =?utf-8?B?OHRxZy9ldzBmdStJUzZMZVlJVDJOekdDLzNLNndBRHpLWjVLNkJCT0dPWkhP?=
 =?utf-8?B?NzhxTG14VG42VmlETFB6RjJlL0ViY3YwNmVIMnhBcHlLRTdWYS83am5YM2Nh?=
 =?utf-8?B?cVhNQXg2ZWdaVFkwNUJHUHV3WEtud2VxWER1SWFMWkl4VnJnZDBnSWhRWmIy?=
 =?utf-8?B?RVM4dHVEbmJuUjlwcVVtOFRzM0FaZ29jdlpJUzBMTDI4bUJqUHlQcnBHSnNo?=
 =?utf-8?B?Z2NNWWdTZmJEa21seUxHK3JEMnVETXROSFphNzFjUlZ5b2ptOUFqTUpFdnkr?=
 =?utf-8?B?UG9WZEJ6Q0w0czh5aG1BUjNuaVV3cCtqdWc3enhlTG0rQ2l0V0Z1amk5ZjVo?=
 =?utf-8?B?ODd3aU9UWXUyT3ZHSG1PWElPTUtTS09icUV0LzhRajBkZU5SZGFMM3daWnkv?=
 =?utf-8?B?M0NtaHRhdE93OXFZNEs3YWpCOEljMkFhV282QjM1QlBEZElrVHdsN1doVkY4?=
 =?utf-8?B?QnNPZjBWQTFOWDdQNU9KbVEreHVFY0doYTd3Qmdad05vNCttMWczbG0vTk5D?=
 =?utf-8?B?azdaNElVekVzWk4wUkZQS0FuQ0h6NU5vVUJvaE9La1BvdlRmQXZnQ0N0ckZD?=
 =?utf-8?B?VGRRbVpHU0xrOVNZRG5IaGhpMlp5M2o3Y09NRXpkMW1nMGNITGsrQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f154f10a-1d64-450d-c1a6-08da3fc5ce4e
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2022 09:46:43.0752 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RzB42hoOCOdwgG/Q9W2JeHJCS14SOTYWaWC4aalNX1sQUWbAjaEmyQ+xtQg6Bxdw6wylYs7v+XylkUiDyeTloQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1464
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915: Individualize fences before
 adding to dma_resv obj
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
Cc: thomas.hellstrom@intel.com, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 5/26/2022 11:27 AM, Matthew Auld wrote:
> On 25/05/2022 10:59, Nirmoy Das wrote:
>> _i915_vma_move_to_active() can receive > 1 fences for
>> multiple batch buffers submission. Because dma_resv_add_fence()
>> can only accept one fence at a time, change _i915_vma_move_to_active()
>> to be aware of multiple fences so that it can add individual
>> fences to the dma resv object.
>>
>> v6: fix multi-line comment.
>> v5: remove double fence reservation for batch VMAs.
>> v4: Reserve fences for composite_fence on multi-batch contexts and
>>      also reserve fence slots to composite_fence for each VMAs.
>> v3: dma_resv_reserve_fences is not cumulative so pass num_fences.
>> v2: make sure to reserve enough fence slots before adding.
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5614
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>
> Do we need Fixes: ?


We can add:

Fixes: 544460c33821 ("drm/i915: Multi-BB execbuf")


Regards,

Nirmoy


>
>> ---
>>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  3 +-
>>   drivers/gpu/drm/i915/i915_vma.c               | 48 +++++++++++--------
>>   2 files changed, 30 insertions(+), 21 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> index b279588c0672..8880d38d36b6 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -1010,7 +1010,8 @@ static int eb_validate_vmas(struct 
>> i915_execbuffer *eb)
>>               }
>>           }
>>   -        err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
>> +        /* Reserve enough slots to accommodate composite fences */
>> +        err = dma_resv_reserve_fences(vma->obj->base.resv, 
>> eb->num_batches);
>>           if (err)
>>               return err;
>>   diff --git a/drivers/gpu/drm/i915/i915_vma.c 
>> b/drivers/gpu/drm/i915/i915_vma.c
>> index 4f6db539571a..0bffb70b3c5f 100644
>> --- a/drivers/gpu/drm/i915/i915_vma.c
>> +++ b/drivers/gpu/drm/i915/i915_vma.c
>> @@ -23,6 +23,7 @@
>>    */
>>     #include <linux/sched/mm.h>
>> +#include <linux/dma-fence-array.h>
>>   #include <drm/drm_gem.h>
>>     #include "display/intel_frontbuffer.h"
>> @@ -1823,6 +1824,21 @@ int _i915_vma_move_to_active(struct i915_vma 
>> *vma,
>>       if (unlikely(err))
>>           return err;
>>   +    /*
>> +     * Reserve fences slot early to prevent an allocation after 
>> preparing
>> +     * the workload and associating fences with dma_resv.
>> +     */
>> +    if (fence && !(flags & __EXEC_OBJECT_NO_RESERVE)) {
>> +        struct dma_fence *curr;
>> +        int idx;
>> +
>> +        dma_fence_array_for_each(curr, idx, fence)
>> +            ;
>> +        err = dma_resv_reserve_fences(vma->obj->base.resv, idx);
>> +        if (unlikely(err))
>> +            return err;
>> +    }
>> +
>>       if (flags & EXEC_OBJECT_WRITE) {
>>           struct intel_frontbuffer *front;
>>   @@ -1832,31 +1848,23 @@ int _i915_vma_move_to_active(struct 
>> i915_vma *vma,
>>                   i915_active_add_request(&front->write, rq);
>>               intel_frontbuffer_put(front);
>>           }
>> +    }
>>   -        if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
>> -            err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
>> -            if (unlikely(err))
>> -                return err;
>> -        }
>> +    if (fence) {
>> +        struct dma_fence *curr;
>> +        enum dma_resv_usage usage;
>> +        int idx;
>>   -        if (fence) {
>> -            dma_resv_add_fence(vma->obj->base.resv, fence,
>> -                       DMA_RESV_USAGE_WRITE);
>> +        obj->read_domains = 0;
>> +        if (flags & EXEC_OBJECT_WRITE) {
>> +            usage = DMA_RESV_USAGE_WRITE;
>>               obj->write_domain = I915_GEM_DOMAIN_RENDER;
>> -            obj->read_domains = 0;
>> -        }
>> -    } else {
>> -        if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
>> -            err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
>> -            if (unlikely(err))
>> -                return err;
>> +        } else {
>> +            usage = DMA_RESV_USAGE_READ;
>>           }
>>   -        if (fence) {
>> -            dma_resv_add_fence(vma->obj->base.resv, fence,
>> -                       DMA_RESV_USAGE_READ);
>> -            obj->write_domain = 0;
>> -        }
>> +        dma_fence_array_for_each(curr, idx, fence)
>> +            dma_resv_add_fence(vma->obj->base.resv, curr, usage);
>>       }
>>         if (flags & EXEC_OBJECT_NEEDS_FENCE && vma->fence)
