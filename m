Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC8E874EF2
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 13:25:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAAC410F0CF;
	Thu,  7 Mar 2024 12:25:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="pTlcyF4t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2084.outbound.protection.outlook.com [40.107.94.84])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4D4310ECF4;
 Thu,  7 Mar 2024 12:25:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cz0nEx4VyIk86SbBV0JobMeE+a+b05H6YQ3+Rth5BRttS7MmVF1hOsEj41xbD39+sASryLJfFC5iNEhGrlglFpJGjjoGW+Rn0tCejONYq8IfPPvrSebcDdNyEZPFN0n/11mRZE26pWULYPU50HRcO5BICmQQ+bdxUJAqtUYl1kfCzb/HwINZzgsekYIGr5pZZLV4ZdnjbRoRetD2iVomKlmf3Xvk29MvvJomHTD4whtaDxXPBJoJP1YEYyA8zydLNrEVwx4kEqOKtMhGZGDYyeEMCPSLVDXZrW1yonMXTQS5cUl8qXbtDwibIhyeKmpkXTcbIWqsQFGUBM9jaI32LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q29t3McDArV3iOqhyFslzna3zk65q2eGIgvQDQ26xzk=;
 b=L+5kjom2dscUqsxF3dmakNWPndAbcUOjUWmsTSm9FF27XHWxzG+cxUfOeP7Hd0kSwhE/z7Ji8fW1H/qI9ZOuM2+ELAwuQp0qemNZMsjS5zgizqU2V297do7OoaGQ9taUlOVi3Y/iVlmlaNhbf03kWEQW0pAQT8ZrZWCmFPcjx8gfcD8UUmPyyp8Byr2grJI0fMQVXEf2Ag1Jq12fLfwbprUKRe9qkNKvyJVRK0JrTvU3vMReixegphCF98f1E7t8TeGuxzhxSrtz7ONrlpPR0t5l37idEnFnTlGAlayNDkFLOVxi3wgQFdlYm00+czWCkqB+j/CiNO/uiUf9E8CBhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q29t3McDArV3iOqhyFslzna3zk65q2eGIgvQDQ26xzk=;
 b=pTlcyF4tZ2Dt4hftM3Ske337R+MrnPlAshBrj3TBZb86byHO008Hh9oXTLcSv7KJUH0u1uf5BsY61yV29xC2lmIx6jwmHgeqXjzu0mYHUBDNz3qeqwdQNLCw+u49i5mco3ZMFgHApvgb605X5UkO+o4/UcaUde3nS7HW37UewVo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB4342.namprd12.prod.outlook.com (2603:10b6:208:264::7)
 by IA0PR12MB8085.namprd12.prod.outlook.com (2603:10b6:208:400::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Thu, 7 Mar
 2024 12:25:19 +0000
Received: from MN2PR12MB4342.namprd12.prod.outlook.com
 ([fe80::6610:4b4b:1f3a:151b]) by MN2PR12MB4342.namprd12.prod.outlook.com
 ([fe80::6610:4b4b:1f3a:151b%6]) with mapi id 15.20.7362.024; Thu, 7 Mar 2024
 12:25:19 +0000
Message-ID: <01e51a1d-73ff-489f-a517-f67915764ac3@amd.com>
Date: Thu, 7 Mar 2024 17:55:11 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/3] drm/buddy: Implement tracking clear page feature
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Cc: christian.koenig@amd.com, alexander.deucher@amd.com,
 felix.kuehling@amd.com, mario.limonciello@amd.com
References: <20240304163220.3093-1-Arunpravin.PaneerSelvam@amd.com>
 <fe992d24-f789-4659-8903-feef0154ed8d@intel.com>
From: "Paneer Selvam, Arunpravin" <arunpravin.paneerselvam@amd.com>
In-Reply-To: <fe992d24-f789-4659-8903-feef0154ed8d@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0137.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::22) To MN2PR12MB4342.namprd12.prod.outlook.com
 (2603:10b6:208:264::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB4342:EE_|IA0PR12MB8085:EE_
X-MS-Office365-Filtering-Correlation-Id: e434aa7a-40c1-449c-b7bc-08dc3ea1a6f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PH5wv1whbD3VxWkF6lfrOZRQVRRpPZtvCkl2sFvF26eqlcnuISebC3o8/vjNQDOd/JkcVC3zzWsYrfM6yZxhQ2vD1wCvwqiK0cSzUj8FQLGPSFGHIINZotC43S/XSnE14oV2Nhe06ee6I+sCjf3RkjlWNdEQEn3u47qME9/S9CMGaBs4butD72ayULNisoqV6ff1cp6+nhPrPBV9nbcC7mKGtFzoVQzL0qzMfxZlm+vtkaOeDf91dVCYpSLLCx524uVY2nm6o16v+7EhMGUF3KaWDflMAUwf6O2BCrVLTQ2MM+wYYYzEKPmImh3oEBfzi+Ssa5B5Ez4ldCnoouRr1GS+AquNZhC/fD14OemSHEDGi1kNMPvbpGj5h6P8FLFOxk7uF2aPb2btW+5y2dvSpOJm9plk3Q59WboLjx1577q2Chikmm8QhxN0nn47GNWmK1fIJSbq8ZPGVooIFuc3dOQnLVUqoTphiPYnsZqqe4OSX0MUbi4DCXNCLGFDiJwLVlncpy6CG2NeFlN0NTXkGTxy5tB64Bh2+P0rIeCyqbFHVloCFUAF5GX28dAZg/q/EQlNLe+oorL+ad8KqK+MN7ovzkWD1Fm0XxZJrPy/0zhhOAcBVts9ryHjAY26+8VvfE4R1ZPjL1Ch+HjA4HkVjW6GFnP2+Rm7fbZPy+wpmec=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB4342.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0FleVBEM2NYSnZRZEVhYmNic1lRMUxvVndENmttSGJ2OGZWTEhtYjBKUVhE?=
 =?utf-8?B?TUJQRFd5VDRkNmdWeHVVL0R6NHZ5Z1hKaUtyVVlsR3Y1RzhvQ0tqVXJSR01p?=
 =?utf-8?B?TEFTYklXSVJkMTBTYlNUR0x2UVU0YWZRMGgzVFlVR2tZQk0zR1doL1NmL1BG?=
 =?utf-8?B?TGh1bC92U3J6RHZ6QU03enR5djBRK3Vlb0RiN21vUXF3Nkl0SGxOUHdYSzFP?=
 =?utf-8?B?Z0tHc1Urck1NQjhFVzlSK29DMVcrRDNUejFIQng4eDJkSytxSzRjRFJhd0pI?=
 =?utf-8?B?aE12dkJzZEVOSXZSYkx4d1RKbU40Qm9QUUtDZFJZWXRES1RyRlV3eDNiTmh4?=
 =?utf-8?B?aWVpd1JOckRNM0tGKytLUmpjVUJHQVFXdFNWVnNmUVBRbHdsQTJwRVdGWGZD?=
 =?utf-8?B?ZEgveWM5MHNmdjZOUVpXNW5oSTg0MWFLZS9NUkkzQm5pMndCMVpGU0o5bzQ5?=
 =?utf-8?B?WEF6Sys4VG0ySFhmeXd4anEvbzAvWG1jWkhqM2sxZFNnWmNoOCs4d1dJdVU5?=
 =?utf-8?B?SE5BZWRuYnhOUEF5RjN6YlF0bmVLcHp3VWtidU93N1k0Ry9ycE0zN25LbGNp?=
 =?utf-8?B?Z3RxNDBhenVIdjRVUlA3WnpaMDUxMFZYL2M4VzVYTkZTQVFzMFN5NFJtRmo2?=
 =?utf-8?B?MG0wVFpVeE5PWjBUa0E4TmJCZkplWm9WNGY3RU9QL05paGpwUFVzVlBIczAx?=
 =?utf-8?B?aTF6QjVKREoyczE2djFxaHN1VDVzeWorVUM4M3NoMHQzTmpMMzlObCsxNUpL?=
 =?utf-8?B?ZDNSd1Zvd1psakZPK2JtcStUSW5CM1BjRUNjajljQWpoS21yQjhJdy8wNTFF?=
 =?utf-8?B?UjRUTnVjcGpXMTdlcmZFcWlwWG5iVXc5citIeGt5UzFab1VwVlJ4c1YrYTRx?=
 =?utf-8?B?akhrMEwzV1pXUVIvalFpU3BNYVUycEtYb1pWVlRQeE1DTkQ2NjNjci9UYW5x?=
 =?utf-8?B?SzNXSUNCRW9za0c5NkJ0a1BSUmsvU09ZT1dmSXhsaEtoWm9iN1JXUU1XZDVQ?=
 =?utf-8?B?UFZkL1FmL0hUSVBMa200N2Z4a3hVTkFNdzhFSVRvMkc5ZVhSeld6MTMyNitB?=
 =?utf-8?B?T2xkd2lWb2R4cjNXSmlMcGlKN3QwZE5DUFNydlFhRTNoUXRSVmtRQk0xQzlD?=
 =?utf-8?B?QzlHWHNDcTNWVi9hSyt5ZXF5cU1adGZ4M1UxQWIxY0ptMkYxMEdmcUJhenpL?=
 =?utf-8?B?N1VjWlM2ZWw3ckxtQjVIVjVXU1FocDNEbjA1Und2bnFNNWtnUmQxLzFJYmJK?=
 =?utf-8?B?VnNmN01oRjB0TmZrVmNwOW9EVlNvakNFWkZUVDlOeDBNUFcwSFdsNTcvZzBw?=
 =?utf-8?B?Z0ZlSkNiUzFIRHRpcXdkc0xQdUV1bEowTkxTNXlGTlJxWXJ2TmVFVGJoTDVs?=
 =?utf-8?B?SW5pd0k5Y05ZUTFYdnhvRXpvL2VoQkt5WFdnZTJ1cStqUWlaM2EzbVV5d3RG?=
 =?utf-8?B?UE9xRGJtejhZMC9HaUE1RnZsMVlQYjhsTnVKcXlMRmhFbm8xRThiV2s4dncv?=
 =?utf-8?B?RlB5S3BMWXlSbVNJUHo3Qmp5Sk1VUUVQZmhQYkJsemJqQ0NkckFOUWpQd1lL?=
 =?utf-8?B?djd2VTl3N04zUWhWL2VMLys4WDlDb09PN1Fpb3owTThhTjN4ekhHS3kzMmxZ?=
 =?utf-8?B?N3FyckdnRk1xL0tvd24vUllqb3dEeEYyUmExOGQ5a3VJZEJvUFJJYWh6Q3U5?=
 =?utf-8?B?Vzhhcms3VWV2aFVDNHFCRkdFM1R2V2pZeUR1NDJUb2h4djdORlVVUzRVUlR0?=
 =?utf-8?B?ekZmUlJTRlEwaC9keEgxTjRYU2N2a1c0WUFhczRjRkJQUjlyS2VLdG5jU2Fh?=
 =?utf-8?B?TEdPL3dlMm1sOXl5NjhtVVJUa2w2U1ZYWXd4azBuNTNnaFBtdm5sMURmcEdJ?=
 =?utf-8?B?aUJqRmRLU1N3VUIzQWQweis5dHBNejZhNTJYUXljUThGZ2FKYkZyN0swUHNq?=
 =?utf-8?B?cWQ3RnhwektjL3pncktLUUcxZWRZdXZRQnhZWjJGSEs5dEFjOFlvM1h5bUYv?=
 =?utf-8?B?Sjc3Y3QyTjJrd2JZVjB5MEI3MDRQT0xvZm4yalo3c3RrS1dJR2lLeGZxek1F?=
 =?utf-8?B?NzV5U3FsbFpKWXlmZDI5ZnI3ZDVLNVpBKzdaWDJtTWpSZUpyVWxTV3RTYVlV?=
 =?utf-8?Q?SUEMY/MU9IPZW0yG9IlcRjbg8?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e434aa7a-40c1-449c-b7bc-08dc3ea1a6f4
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB4342.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2024 12:25:19.4526 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S82/0yfUq/uoHpzEqv6I3hguCkZIqVoVSlZpP+SS6OAOFwrWw1ZY4t9kx7CFr/uXXYdiKP55PSXPd61XMV63TQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8085
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

Hi Matthew,

On 3/6/2024 11:19 PM, Matthew Auld wrote:
> On 04/03/2024 16:32, Arunpravin Paneer Selvam wrote:
>> - Add tracking clear page feature.
>>
>> - Driver should enable the DRM_BUDDY_CLEARED flag if it
>>    successfully clears the blocks in the free path. On the otherhand,
>>    DRM buddy marks each block as cleared.
>>
>> - Track the available cleared pages size
>>
>> - If driver requests cleared memory we prefer cleared memory
>>    but fallback to uncleared if we can't find the cleared blocks.
>>    when driver requests uncleared memory we try to use uncleared but
>>    fallback to cleared memory if necessary.
>>
>> - When a block gets freed we clear it and mark the freed block as 
>> cleared,
>>    when there are buddies which are cleared as well we can merge them.
>>    Otherwise, we prefer to keep the blocks as separated.
>>
>> - Add a function to support defragmentation.
>>
>> v1:
>>    - Depends on the flag check DRM_BUDDY_CLEARED, enable the block as
>>      cleared. Else, reset the clear flag for each block in the 
>> list(Christian)
>>    - For merging the 2 cleared blocks compare as below,
>>      drm_buddy_is_clear(block) != drm_buddy_is_clear(buddy)(Christian)
>>    - Defragment the memory beginning from min_order
>>      till the required memory space is available.
>>
>> v2: (Matthew)
>>    - Add a wrapper drm_buddy_free_list_internal for the freeing of 
>> blocks
>>      operation within drm buddy.
>>    - Write a macro block_incompatible() to allocate the required blocks.
>>    - Update the xe driver for the drm_buddy_free_list change in 
>> arguments.
>>    - add a warning if the two blocks are incompatible on
>>      defragmentation
>>    - call full defragmentation in the fini() function
>>    - place a condition to test if min_order is equal to 0
>>    - replace the list with safe_reverse() variant as we might
>>      remove the block from the list.
>>
>> v3:
>>    - fix Gitlab user reported lockup issue.
>>    - Keep DRM_BUDDY_HEADER_CLEAR define sorted(Matthew)
>>    - modify to pass the root order instead max_order in fini()
>>      function(Matthew)
>>    - change bool 1 to true(Matthew)
>>    - add check if min_block_size is power of 2(Matthew)
>>    - modify the min_block_size datatype to u64(Matthew)
>>
>> Signed-off-by: Arunpravin Paneer Selvam 
>> <Arunpravin.PaneerSelvam@amd.com>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Suggested-by: Christian König <christian.koenig@amd.com>
>> Suggested-by: Matthew Auld <matthew.auld@intel.com>
>
> Is there a unit test for this? What about maybe something roughly like:
>
> - Pick small random mm_size which is not always power-of-two.
> - Allocate and free some random portion of the address space, 
> returning those pages as non-dirty. Then do another cycle and randomly 
> alternate between requesting dirty and non-dirty pages (not going over 
> the limit you freed as non-dirty), putting that into two separate 
> lists. Loop over both lists at the end checking that the dirty list is 
> indeed all dirty pages and vice versa. Free it all again, keeping the 
> dirty/clear status.
> - Also try to go over the clear limit for some allocation. The 
> allocation should never fail with reasonable page-size.
> - Test the defrag/force_merge interface. Clean the mm or create new 
> one. Intentionally fragment the address space, by creating two 
> alternating lists. Free both lists, one as dirty the other as clean. 
> Try to allocate double the previous size with matching min_page_size. 
> Should fail. Call force_merge. Should now succeed. Also check that the 
> page is always dirty after force_merge. Free the page as dirty, then 
> repeat the whole thing, doubling the page-size until you hit max_order.
> - Make sure we also call fini() with some part of the address space 
> left as non-dirty. Should not trigger any warnings.
>
> I think would be good to consider, but not a blocker or anything. Some 
> comments below, otherwise I think looks good.
Yes. It is good to have a unit test for this feature. I will send the patch.
>
>> ---
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c  |   6 +-
>>   drivers/gpu/drm/drm_buddy.c                   | 294 +++++++++++++++---
>>   drivers/gpu/drm/i915/i915_ttm_buddy_manager.c |   6 +-
>>   drivers/gpu/drm/tests/drm_buddy_test.c        |  18 +-
>>   drivers/gpu/drm/xe/xe_ttm_vram_mgr.c          |   4 +-
>>   include/drm/drm_buddy.h                       |  22 +-
>>   6 files changed, 290 insertions(+), 60 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c 
>> b/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
>> index 8db880244324..c0c851409241 100644
>> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
>> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
>> @@ -571,7 +571,7 @@ static int amdgpu_vram_mgr_new(struct 
>> ttm_resource_manager *man,
>>       return 0;
>>     error_free_blocks:
>> -    drm_buddy_free_list(mm, &vres->blocks);
>> +    drm_buddy_free_list(mm, &vres->blocks, 0);
>>       mutex_unlock(&mgr->lock);
>>   error_fini:
>>       ttm_resource_fini(man, &vres->base);
>> @@ -604,7 +604,7 @@ static void amdgpu_vram_mgr_del(struct 
>> ttm_resource_manager *man,
>>         amdgpu_vram_mgr_do_reserve(man);
>>   -    drm_buddy_free_list(mm, &vres->blocks);
>> +    drm_buddy_free_list(mm, &vres->blocks, 0);
>>       mutex_unlock(&mgr->lock);
>>         atomic64_sub(vis_usage, &mgr->vis_usage);
>> @@ -912,7 +912,7 @@ void amdgpu_vram_mgr_fini(struct amdgpu_device 
>> *adev)
>>           kfree(rsv);
>>         list_for_each_entry_safe(rsv, temp, &mgr->reserved_pages, 
>> blocks) {
>> -        drm_buddy_free_list(&mgr->mm, &rsv->allocated);
>> +        drm_buddy_free_list(&mgr->mm, &rsv->allocated, 0);
>>           kfree(rsv);
>>       }
>>       if (!adev->gmc.is_app_apu)
>> diff --git a/drivers/gpu/drm/drm_buddy.c b/drivers/gpu/drm/drm_buddy.c
>> index c4222b886db7..40131ed9b0cd 100644
>> --- a/drivers/gpu/drm/drm_buddy.c
>> +++ b/drivers/gpu/drm/drm_buddy.c
>> @@ -57,6 +57,16 @@ static void list_insert_sorted(struct drm_buddy *mm,
>>       __list_add(&block->link, node->link.prev, &node->link);
>>   }
>>   +static void clear_reset(struct drm_buddy_block *block)
>> +{
>> +    block->header &= ~DRM_BUDDY_HEADER_CLEAR;
>> +}
>> +
>> +static void mark_cleared(struct drm_buddy_block *block)
>> +{
>> +    block->header |= DRM_BUDDY_HEADER_CLEAR;
>> +}
>> +
>>   static void mark_allocated(struct drm_buddy_block *block)
>>   {
>>       block->header &= ~DRM_BUDDY_HEADER_STATE;
>> @@ -186,11 +196,21 @@ EXPORT_SYMBOL(drm_buddy_init);
>>    */
>>   void drm_buddy_fini(struct drm_buddy *mm)
>>   {
>> +    u64 root_size, size;
>> +    unsigned int order;
>>       int i;
>>   +    size = mm->size;
>> +
>>       for (i = 0; i < mm->n_roots; ++i) {
>> +        order = ilog2(size) - ilog2(mm->chunk_size);
>> +        root_size = mm->chunk_size << order;
>> +        drm_buddy_defrag(mm, root_size);
>> +
>>           WARN_ON(!drm_buddy_block_is_free(mm->roots[i]));
>>           drm_block_free(mm, mm->roots[i]);
>> +
>> +        size -= root_size;
>>       }
>>         WARN_ON(mm->avail != mm->size);
>> @@ -223,6 +243,12 @@ static int split_block(struct drm_buddy *mm,
>>       mark_free(mm, block->left);
>>       mark_free(mm, block->right);
>>   +    if (drm_buddy_block_is_clear(block)) {
>> +        mark_cleared(block->left);
>> +        mark_cleared(block->right);
>> +        clear_reset(block);
>> +    }
>> +
>>       mark_split(block);
>>         return 0;
>> @@ -260,10 +286,12 @@ drm_get_buddy(struct drm_buddy_block *block)
>>   }
>>   EXPORT_SYMBOL(drm_get_buddy);
>>   -static void __drm_buddy_free(struct drm_buddy *mm,
>> -                 struct drm_buddy_block *block)
>> +static unsigned int __drm_buddy_free(struct drm_buddy *mm,
>> +                     struct drm_buddy_block *block,
>> +                     bool defrag)
>>   {
>>       struct drm_buddy_block *parent;
>> +    unsigned int order;
>>         while ((parent = block->parent)) {
>>           struct drm_buddy_block *buddy;
>> @@ -273,6 +301,23 @@ static void __drm_buddy_free(struct drm_buddy *mm,
>>           if (!drm_buddy_block_is_free(buddy))
>>               break;
>>   +        if (!defrag) {
>> +            /*
>> +             * Check the block and its buddy clear state and exit
>> +             * the loop if they both have the dissimilar state.
>> +             */
>> +            if (drm_buddy_block_is_clear(block) !=
>> +                drm_buddy_block_is_clear(buddy))
>> +                break;
>> +
>> +            if (drm_buddy_block_is_clear(block))
>> +                mark_cleared(parent);
>> +        }
>> +
>> +        WARN_ON(defrag &&
>> +            (drm_buddy_block_is_clear(block) ==
>> +             drm_buddy_block_is_clear(buddy)));
>> +
>>           list_del(&buddy->link);
>>             drm_block_free(mm, block);
>> @@ -281,7 +326,75 @@ static void __drm_buddy_free(struct drm_buddy *mm,
>>           block = parent;
>>       }
>>   +    order = drm_buddy_block_order(block);
>>       mark_free(mm, block);
>> +
>> +    return order;
>> +}
>> +
>> +/**
>> + * drm_buddy_defrag - Defragmentation routine
>> + *
>> + * @mm: DRM buddy manager
>> + * @min_block_size: minimum size in bytes to begin
>> + * the defragmentation process
>> + *
>> + * Driver calls the defragmentation function when the
>> + * requested memory allocation returns -ENOSPC.
>> + */
>> +void drm_buddy_defrag(struct drm_buddy *mm,
>> +              u64 min_block_size)
>> +{
>> +    struct drm_buddy_block *block;
>> +    unsigned int order, min_order;
>> +    struct list_head *list;
>> +    unsigned long pages;
>> +    int i;
>> +
>> +    if (min_block_size <= mm->chunk_size)
>> +        return;
>> +
>> +    if (!is_power_of_2(min_block_size))
>> +        return;
>
> Just a question if caller expects us to round this up? I'm not sure...
yeah, we can round up and proceed for the force merge.
>
>> +
>> +    pages = min_block_size >> ilog2(mm->chunk_size);
>> +    min_order = fls(pages) - 1;
>
> min_order = ilog2(min_block_size) - ilog2(mm->chunk_size);
>
>> +
>> +    if (min_order > mm->max_order)
>> +        return;
>> +
>> +    for (i = min_order - 1; i >= 0; i--) {
>> +        struct drm_buddy_block *prev;
>
> Nit: I guess move the block here:
>
> struct drm_buddy_block *block, *prev;
>
>> +
>> +        list = &mm->free_list[i];
>> +        if (list_empty(list))
>> +            continue;
>
> No need for the list_empty() check here?
yes, we can remove it.
>
>> +
>> +        list_for_each_entry_safe_reverse(block, prev, list, link) {
>> +            struct drm_buddy_block *buddy;
>> +
>> +            if (!block->parent)
>> +                continue;
>> +
>> +            buddy = __get_buddy(block);
>> +            if (!drm_buddy_block_is_free(buddy))
>> +                continue;
>> +
>> +            /*
>> +             * If the prev block is same as buddy, don't access the
>> +             * block in the next iteration as we would free the
>> +             * buddy block as part of the free function.
>> +             */
>> +            if (prev == buddy)
>> +                prev = list_prev_entry(prev, link);
>> +
>> +            list_del(&block->link);
>> +
>> +            order = __drm_buddy_free(mm, block, true);
>> +            if (order >= min_order)
>> +                return;
>> +        }
>> +    }
>>   }
can we call the above function in drm_buddy_alloc_blocks()
int drm_buddy_alloc_blocks(...) {
...
...
...
if (order-- ==  min_order) {
     if (flags & DRM_BUDDY_CONTIGUOUS_ALLOCATION)...) {
     ...
     }
     else {
     drm_buddy_defrag(min_order);
     block = alloc_from_freelist(mm, order, flags);
     if (!IS_ERR(block))
     break;
}
I think drm_buddy_defrag or force_merge function will not be an overhead 
since we return immediately as soon as we merge the
blocks that form the required order. This will eliminate adding 
drm_buddy_defrag(defragmentation support) in amdgpu or i915 driver?
Thoughts?
>>     /**
>> @@ -295,26 +408,59 @@ void drm_buddy_free_block(struct drm_buddy *mm,
>>   {
>>       BUG_ON(!drm_buddy_block_is_allocated(block));
>>       mm->avail += drm_buddy_block_size(mm, block);
>> -    __drm_buddy_free(mm, block);
>> +    if (drm_buddy_block_is_clear(block))
>> +        mm->clear_avail += drm_buddy_block_size(mm, block);
>> +
>> +    __drm_buddy_free(mm, block, false);
>>   }
>>   EXPORT_SYMBOL(drm_buddy_free_block);
>>   -/**
>> - * drm_buddy_free_list - free blocks
>> - *
>> - * @mm: DRM buddy manager
>> - * @objects: input list head to free blocks
>> - */
>> -void drm_buddy_free_list(struct drm_buddy *mm, struct list_head 
>> *objects)
>> +static void __drm_buddy_free_list(struct drm_buddy *mm,
>> +                  struct list_head *objects,
>> +                  bool mark_clear,
>> +                  bool mark_dirty)
>>   {
>>       struct drm_buddy_block *block, *on;
>>   +    WARN_ON(mark_dirty && mark_clear);
>> +
>>       list_for_each_entry_safe(block, on, objects, link) {
>> +        if (mark_clear)
>> +            mark_cleared(block);
>> +        else if (mark_dirty)
>> +            clear_reset(block);
>>           drm_buddy_free_block(mm, block);
>>           cond_resched();
>>       }
>>       INIT_LIST_HEAD(objects);
>>   }
>> +
>> +static void drm_buddy_free_list_internal(struct drm_buddy *mm,
>> +                     struct list_head *objects)
>> +{
>> +    /*
>> +     * Don't touch the clear/dirty bit, since allocation is still 
>> internal
>> +     * at this point. For example we might have just failed part of the
>> +     * allocation.
>> +     */
>> +    __drm_buddy_free_list(mm, objects, false, false);
>> +}
>> +
>> +/**
>> + * drm_buddy_free_list - free blocks
>> + *
>> + * @mm: DRM buddy manager
>> + * @objects: input list head to free blocks
>> + * @flags: optional flags like DRM_BUDDY_CLEARED
>> + */
>> +void drm_buddy_free_list(struct drm_buddy *mm,
>> +             struct list_head *objects,
>> +             unsigned int flags)
>> +{
>> +    bool mark_clear = flags & DRM_BUDDY_CLEARED;
>> +
>> +    __drm_buddy_free_list(mm, objects, mark_clear, !mark_clear);
>> +}
>>   EXPORT_SYMBOL(drm_buddy_free_list);
>>     static inline bool overlaps(u64 s1, u64 e1, u64 s2, u64 e2)
>> @@ -327,10 +473,19 @@ static inline bool contains(u64 s1, u64 e1, u64 
>> s2, u64 e2)
>>       return s1 <= s2 && e1 >= e2;
>>   }
>>   +static bool block_incompatible(struct drm_buddy_block *block, 
>> unsigned int flags)
>> +{
>> +    bool needs_clear = flags & DRM_BUDDY_CLEAR_ALLOCATION;
>> +
>> +    return needs_clear != drm_buddy_block_is_clear(block);
>> +}
>> +
>>   static struct drm_buddy_block *
>> -alloc_range_bias(struct drm_buddy *mm,
>> -         u64 start, u64 end,
>> -         unsigned int order)
>> +__alloc_range_bias(struct drm_buddy *mm,
>> +           u64 start, u64 end,
>> +           unsigned int order,
>> +           unsigned long flags,
>> +           bool fallback)
>>   {
>>       struct drm_buddy_block *block;
>>       struct drm_buddy_block *buddy;
>> @@ -369,6 +524,9 @@ alloc_range_bias(struct drm_buddy *mm,
>>             if (contains(start, end, block_start, block_end) &&
>>               order == drm_buddy_block_order(block)) {
>> +            if (!fallback && block_incompatible(block, flags))
>> +                continue;
>> +
>>               /*
>>                * Find the free block within the range.
>>                */
>> @@ -400,30 +558,57 @@ alloc_range_bias(struct drm_buddy *mm,
>>       if (buddy &&
>>           (drm_buddy_block_is_free(block) &&
>>            drm_buddy_block_is_free(buddy)))
>> -        __drm_buddy_free(mm, block);
>> +        __drm_buddy_free(mm, block, false);
>>       return ERR_PTR(err);
>>   }
>>     static struct drm_buddy_block *
>> -get_maxblock(struct drm_buddy *mm, unsigned int order)
>> +__drm_buddy_alloc_range_bias(struct drm_buddy *mm,
>> +                 u64 start, u64 end,
>> +                 unsigned int order,
>> +                 unsigned long flags)
>
> Is the caller also using unsigned long for the flags? I think unsigned 
> int is more common for flags, since it will have same size on 32b?
yes, the caller also using unsigned long for the flags. If we change 
here, we need to modify everywhere. I think we can create a separate
patch for this change?
>
>> +{
>> +    struct drm_buddy_block *block;
>> +    bool fallback = 0;
>
> fallback = false;
>
>> +
>> +    block = __alloc_range_bias(mm, start, end, order,
>> +                   flags, fallback);
>> +    if (IS_ERR(block))
>> +        return __alloc_range_bias(mm, start, end, order,
>> +                      flags, !fallback);
>> +
>> +    return block;
>> +}
>> +
>> +static struct drm_buddy_block *
>> +get_maxblock(struct drm_buddy *mm, unsigned int order,
>> +         unsigned long flags)
>>   {
>> -    struct drm_buddy_block *max_block = NULL, *node;
>> +    struct drm_buddy_block *max_block = NULL, *block = NULL;
>>       unsigned int i;
>>         for (i = order; i <= mm->max_order; ++i) {
>> -        if (!list_empty(&mm->free_list[i])) {
>> -            node = list_last_entry(&mm->free_list[i],
>> -                           struct drm_buddy_block,
>> -                           link);
>> -            if (!max_block) {
>> -                max_block = node;
>> +        struct drm_buddy_block *tmp_block;
>> +
>> +        list_for_each_entry_reverse(tmp_block, &mm->free_list[i], 
>> link) {
>> +            if (block_incompatible(tmp_block, flags))
>>                   continue;
>> -            }
>>   -            if (drm_buddy_block_offset(node) >
>> -                drm_buddy_block_offset(max_block)) {
>> -                max_block = node;
>> -            }
>> +            block = tmp_block;
>> +            break;
>> +        }
>> +
>> +        if (!block)
>> +            continue;
>> +
>> +        if (!max_block) {
>> +            max_block = block;
>> +            continue;
>> +        }
>> +
>> +        if (drm_buddy_block_offset(block) >
>> +            drm_buddy_block_offset(max_block)) {
>> +            max_block = block;
>>           }
>>       }
>>   @@ -440,11 +625,29 @@ alloc_from_freelist(struct drm_buddy *mm,
>>       int err;
>>         if (flags & DRM_BUDDY_TOPDOWN_ALLOCATION) {
>> -        block = get_maxblock(mm, order);
>> +        block = get_maxblock(mm, order, flags);
>>           if (block)
>>               /* Store the obtained block order */
>>               tmp = drm_buddy_block_order(block);
>>       } else {
>> +        for (tmp = order; tmp <= mm->max_order; ++tmp) {
>> +            struct drm_buddy_block *tmp_block;
>> +
>> +            list_for_each_entry_reverse(tmp_block, 
>> &mm->free_list[tmp], link) {
>> +                if (block_incompatible(tmp_block, flags))
>> +                    continue;
>> +
>> +                block = tmp_block;
>> +                break;
>> +            }
>> +
>> +            if (block)
>> +                break;
>> +        }
>> +    }
>> +
>> +    if (!block) {
>> +        /* Fallback method */
>>           for (tmp = order; tmp <= mm->max_order; ++tmp) {
>>               if (!list_empty(&mm->free_list[tmp])) {
>>                   block = list_last_entry(&mm->free_list[tmp],
>> @@ -454,10 +657,10 @@ alloc_from_freelist(struct drm_buddy *mm,
>>                       break;
>>               }
>>           }
>> -    }
>>   -    if (!block)
>> -        return ERR_PTR(-ENOSPC);
>> +        if (!block)
>> +            return ERR_PTR(-ENOSPC);
>> +    }
>>         BUG_ON(!drm_buddy_block_is_free(block));
>>   @@ -473,7 +676,7 @@ alloc_from_freelist(struct drm_buddy *mm,
>>     err_undo:
>>       if (tmp != order)
>> -        __drm_buddy_free(mm, block);
>> +        __drm_buddy_free(mm, block, false);
>>       return ERR_PTR(err);
>>   }
>>   @@ -524,6 +727,8 @@ static int __alloc_range(struct drm_buddy *mm,
>>               mark_allocated(block);
>>               total_allocated += drm_buddy_block_size(mm, block);
>>               mm->avail -= drm_buddy_block_size(mm, block);
>> +            if (drm_buddy_block_is_clear(block))
>> +                mm->clear_avail -= drm_buddy_block_size(mm, block);
>>               list_add_tail(&block->link, &allocated);
>>               continue;
>>           }
>> @@ -557,14 +762,14 @@ static int __alloc_range(struct drm_buddy *mm,
>>       if (buddy &&
>>           (drm_buddy_block_is_free(block) &&
>>            drm_buddy_block_is_free(buddy)))
>> -        __drm_buddy_free(mm, block);
>> +        __drm_buddy_free(mm, block, false);
>>     err_free:
>>       if (err == -ENOSPC && total_allocated_on_err) {
>>           list_splice_tail(&allocated, blocks);
>>           *total_allocated_on_err = total_allocated;
>>       } else {
>> -        drm_buddy_free_list(mm, &allocated);
>> +        drm_buddy_free_list_internal(mm, &allocated);
>>       }
>>         return err;
>> @@ -630,11 +835,11 @@ static int __alloc_contig_try_harder(struct 
>> drm_buddy *mm,
>>               list_splice(&blocks_lhs, blocks);
>>               return 0;
>>           } else if (err != -ENOSPC) {
>> -            drm_buddy_free_list(mm, blocks);
>> +            drm_buddy_free_list_internal(mm, blocks);
>>               return err;
>>           }
>>           /* Free blocks for the next iteration */
>> -        drm_buddy_free_list(mm, blocks);
>> +        drm_buddy_free_list_internal(mm, blocks);
>>       }
>>         return -ENOSPC;
>> @@ -690,6 +895,8 @@ int drm_buddy_block_trim(struct drm_buddy *mm,
>>       list_del(&block->link);
>>       mark_free(mm, block);
>>       mm->avail += drm_buddy_block_size(mm, block);
>> +    if (drm_buddy_block_is_clear(block))
>> +        mm->clear_avail += drm_buddy_block_size(mm, block);
>>         /* Prevent recursively freeing this node */
>>       parent = block->parent;
>> @@ -701,6 +908,8 @@ int drm_buddy_block_trim(struct drm_buddy *mm,
>>       if (err) {
>>           mark_allocated(block);
>>           mm->avail -= drm_buddy_block_size(mm, block);
>> +        if (drm_buddy_block_is_clear(block))
>> +            mm->clear_avail -= drm_buddy_block_size(mm, block);
>>           list_add(&block->link, blocks);
>>       }
>>   @@ -715,7 +924,7 @@ EXPORT_SYMBOL(drm_buddy_block_trim);
>>    * @mm: DRM buddy manager to allocate from
>>    * @start: start of the allowed range for this block
>>    * @end: end of the allowed range for this block
>> - * @size: size of the allocation
>> + * @size: size of the allocation in bytes
>>    * @min_block_size: alignment of the allocation
>>    * @blocks: output list head to add allocated blocks
>>    * @flags: DRM_BUDDY_*_ALLOCATION flags
>> @@ -788,7 +997,8 @@ int drm_buddy_alloc_blocks(struct drm_buddy *mm,
>>           do {
>>               if (flags & DRM_BUDDY_RANGE_ALLOCATION)
>>                   /* Allocate traversing within the range */
>> -                block = alloc_range_bias(mm, start, end, order);
>> +                block = __drm_buddy_alloc_range_bias(mm, start, end,
>> +                                     order, flags);
>>               else
>>                   /* Allocate from freelist */
>>                   block = alloc_from_freelist(mm, order, flags);
>> @@ -814,6 +1024,8 @@ int drm_buddy_alloc_blocks(struct drm_buddy *mm,
>>             mark_allocated(block);
>>           mm->avail -= drm_buddy_block_size(mm, block);
>> +        if (drm_buddy_block_is_clear(block))
>> +            mm->clear_avail -= drm_buddy_block_size(mm, block);
>>           kmemleak_update_trace(block);
>>           list_add_tail(&block->link, &allocated);
>>   @@ -852,7 +1064,7 @@ int drm_buddy_alloc_blocks(struct drm_buddy *mm,
>>       return 0;
>>     err_free:
>> -    drm_buddy_free_list(mm, &allocated);
>> +    drm_buddy_free_list_internal(mm, &allocated);
>>       return err;
>>   }
>>   EXPORT_SYMBOL(drm_buddy_alloc_blocks);
>> @@ -885,8 +1097,8 @@ void drm_buddy_print(struct drm_buddy *mm, 
>> struct drm_printer *p)
>>   {
>>       int order;
>>   -    drm_printf(p, "chunk_size: %lluKiB, total: %lluMiB, free: 
>> %lluMiB\n",
>> -           mm->chunk_size >> 10, mm->size >> 20, mm->avail >> 20);
>> +    drm_printf(p, "chunk_size: %lluKiB, total: %lluMiB, free: 
>> %lluMiB, clear_free: %lluMiB\n",
>> +           mm->chunk_size >> 10, mm->size >> 20, mm->avail >> 20, 
>> mm->clear_avail >> 20);
>>         for (order = mm->max_order; order >= 0; order--) {
>>           struct drm_buddy_block *block;
>> diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c 
>> b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
>> index 0d735d5c2b35..942345548bc3 100644
>> --- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
>> +++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
>> @@ -126,7 +126,7 @@ static int i915_ttm_buddy_man_alloc(struct 
>> ttm_resource_manager *man,
>>       return 0;
>>     err_free_blocks:
>> -    drm_buddy_free_list(mm, &bman_res->blocks);
>> +    drm_buddy_free_list(mm, &bman_res->blocks, 0);
>>       mutex_unlock(&bman->lock);
>>   err_free_res:
>>       ttm_resource_fini(man, &bman_res->base);
>> @@ -141,7 +141,7 @@ static void i915_ttm_buddy_man_free(struct 
>> ttm_resource_manager *man,
>>       struct i915_ttm_buddy_manager *bman = to_buddy_manager(man);
>>         mutex_lock(&bman->lock);
>> -    drm_buddy_free_list(&bman->mm, &bman_res->blocks);
>> +    drm_buddy_free_list(&bman->mm, &bman_res->blocks, 0);
>>       bman->visible_avail += bman_res->used_visible_size;
>>       mutex_unlock(&bman->lock);
>>   @@ -345,7 +345,7 @@ int i915_ttm_buddy_man_fini(struct ttm_device 
>> *bdev, unsigned int type)
>>       ttm_set_driver_manager(bdev, type, NULL);
>>         mutex_lock(&bman->lock);
>> -    drm_buddy_free_list(mm, &bman->reserved);
>> +    drm_buddy_free_list(mm, &bman->reserved, 0);
>>       drm_buddy_fini(mm);
>>       bman->visible_avail += bman->visible_reserved;
>>       WARN_ON_ONCE(bman->visible_avail != bman->visible_size);
>> diff --git a/drivers/gpu/drm/tests/drm_buddy_test.c 
>> b/drivers/gpu/drm/tests/drm_buddy_test.c
>> index 2f32fb2f12e7..454ad9952f56 100644
>> --- a/drivers/gpu/drm/tests/drm_buddy_test.c
>> +++ b/drivers/gpu/drm/tests/drm_buddy_test.c
>> @@ -64,7 +64,7 @@ static void drm_test_buddy_alloc_contiguous(struct 
>> kunit *test)
>> DRM_BUDDY_CONTIGUOUS_ALLOCATION),
>>                      "buddy_alloc didn't error size=%u\n", 3 * ps);
>>   -    drm_buddy_free_list(&mm, &middle);
>> +    drm_buddy_free_list(&mm, &middle, 0);
>>       KUNIT_ASSERT_TRUE_MSG(test, drm_buddy_alloc_blocks(&mm, 0, 
>> mm_size,
>>                                  3 * ps, ps, &allocated,
>> DRM_BUDDY_CONTIGUOUS_ALLOCATION),
>> @@ -74,7 +74,7 @@ static void drm_test_buddy_alloc_contiguous(struct 
>> kunit *test)
>> DRM_BUDDY_CONTIGUOUS_ALLOCATION),
>>                      "buddy_alloc didn't error size=%u\n", 2 * ps);
>>   -    drm_buddy_free_list(&mm, &right);
>> +    drm_buddy_free_list(&mm, &right, 0);
>>       KUNIT_ASSERT_TRUE_MSG(test, drm_buddy_alloc_blocks(&mm, 0, 
>> mm_size,
>>                                  3 * ps, ps, &allocated,
>> DRM_BUDDY_CONTIGUOUS_ALLOCATION),
>> @@ -89,7 +89,7 @@ static void drm_test_buddy_alloc_contiguous(struct 
>> kunit *test)
>> DRM_BUDDY_CONTIGUOUS_ALLOCATION),
>>                      "buddy_alloc hit an error size=%u\n", 2 * ps);
>>   -    drm_buddy_free_list(&mm, &left);
>> +    drm_buddy_free_list(&mm, &left, 0);
>>       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, 0, 
>> mm_size,
>>                                   3 * ps, ps, &allocated,
>> DRM_BUDDY_CONTIGUOUS_ALLOCATION),
>> @@ -101,7 +101,7 @@ static void 
>> drm_test_buddy_alloc_contiguous(struct kunit *test)
>>         KUNIT_ASSERT_EQ(test, total, ps * 2 + ps * 3);
>>   -    drm_buddy_free_list(&mm, &allocated);
>> +    drm_buddy_free_list(&mm, &allocated, 0);
>>       drm_buddy_fini(&mm);
>>   }
>>   @@ -170,7 +170,7 @@ static void 
>> drm_test_buddy_alloc_pathological(struct kunit *test)
>>                                 top, max_order);
>>       }
>>   -    drm_buddy_free_list(&mm, &holes);
>> +    drm_buddy_free_list(&mm, &holes, 0);
>>         /* Nothing larger than blocks of chunk_size now available */
>>       for (order = 1; order <= max_order; order++) {
>> @@ -182,7 +182,7 @@ static void 
>> drm_test_buddy_alloc_pathological(struct kunit *test)
>>       }
>>         list_splice_tail(&holes, &blocks);
>> -    drm_buddy_free_list(&mm, &blocks);
>> +    drm_buddy_free_list(&mm, &blocks, 0);
>>       drm_buddy_fini(&mm);
>>   }
>>   @@ -277,7 +277,7 @@ static void 
>> drm_test_buddy_alloc_pessimistic(struct kunit *test)
>>         list_del(&block->link);
>>       drm_buddy_free_block(&mm, block);
>> -    drm_buddy_free_list(&mm, &blocks);
>> +    drm_buddy_free_list(&mm, &blocks, 0);
>>       drm_buddy_fini(&mm);
>>   }
>>   @@ -323,7 +323,7 @@ static void 
>> drm_test_buddy_alloc_optimistic(struct kunit *test)
>>                                  size, size, &tmp, flags),
>>                             "buddy_alloc unexpectedly succeeded, it 
>> should be full!");
>>   -    drm_buddy_free_list(&mm, &blocks);
>> +    drm_buddy_free_list(&mm, &blocks, 0);
>>       drm_buddy_fini(&mm);
>>   }
>>   @@ -358,7 +358,7 @@ static void drm_test_buddy_alloc_limit(struct 
>> kunit *test)
>>                           drm_buddy_block_size(&mm, block),
>>                           BIT_ULL(mm.max_order) * PAGE_SIZE);
>>   -    drm_buddy_free_list(&mm, &allocated);
>> +    drm_buddy_free_list(&mm, &allocated, 0);
>>       drm_buddy_fini(&mm);
>>   }
>>   diff --git a/drivers/gpu/drm/xe/xe_ttm_vram_mgr.c 
>> b/drivers/gpu/drm/xe/xe_ttm_vram_mgr.c
>> index 115ec745e502..1ad678b62c4a 100644
>> --- a/drivers/gpu/drm/xe/xe_ttm_vram_mgr.c
>> +++ b/drivers/gpu/drm/xe/xe_ttm_vram_mgr.c
>> @@ -196,7 +196,7 @@ static int xe_ttm_vram_mgr_new(struct 
>> ttm_resource_manager *man,
>>       return 0;
>>     error_free_blocks:
>> -    drm_buddy_free_list(mm, &vres->blocks);
>> +    drm_buddy_free_list(mm, &vres->blocks, 0);
>>       mutex_unlock(&mgr->lock);
>>   error_fini:
>>       ttm_resource_fini(man, &vres->base);
>> @@ -214,7 +214,7 @@ static void xe_ttm_vram_mgr_del(struct 
>> ttm_resource_manager *man,
>>       struct drm_buddy *mm = &mgr->mm;
>>         mutex_lock(&mgr->lock);
>> -    drm_buddy_free_list(mm, &vres->blocks);
>> +    drm_buddy_free_list(mm, &vres->blocks, 0);
>>       mgr->visible_avail += vres->used_visible_size;
>>       mutex_unlock(&mgr->lock);
>>   diff --git a/include/drm/drm_buddy.h b/include/drm/drm_buddy.h
>> index a5b39fc01003..7393e6ca0fd6 100644
>> --- a/include/drm/drm_buddy.h
>> +++ b/include/drm/drm_buddy.h
>> @@ -6,6 +6,7 @@
>>   #ifndef __DRM_BUDDY_H__
>>   #define __DRM_BUDDY_H__
>>   +#include <linux/bitfield.h>
>
> We need this?
Not required. we can remove
>
>>   #include <linux/bitops.h>
>>   #include <linux/list.h>
>>   #include <linux/slab.h>
>> @@ -25,15 +26,20 @@
>>   #define DRM_BUDDY_RANGE_ALLOCATION        BIT(0)
>>   #define DRM_BUDDY_TOPDOWN_ALLOCATION        BIT(1)
>>   #define DRM_BUDDY_CONTIGUOUS_ALLOCATION        BIT(2)
>> +#define DRM_BUDDY_CLEAR_ALLOCATION        BIT(3)
>> +#define DRM_BUDDY_CLEARED            BIT(4)
>>     struct drm_buddy_block {
>>   #define DRM_BUDDY_HEADER_OFFSET GENMASK_ULL(63, 12)
>>   #define DRM_BUDDY_HEADER_STATE  GENMASK_ULL(11, 10)
>> +
>
> No need for the newline.
>
>>   #define   DRM_BUDDY_ALLOCATED       (1 << 10)
>>   #define   DRM_BUDDY_FREE       (2 << 10)
>>   #define   DRM_BUDDY_SPLIT       (3 << 10)
>> +
>
> And here.
>
>> +#define DRM_BUDDY_HEADER_CLEAR GENMASK_ULL(9, 9)
>>   /* Free to be used, if needed in the future */
>> -#define DRM_BUDDY_HEADER_UNUSED GENMASK_ULL(9, 6)
>> +#define DRM_BUDDY_HEADER_UNUSED GENMASK_ULL(8, 6)
>>   #define DRM_BUDDY_HEADER_ORDER  GENMASK_ULL(5, 0)
>>       u64 header;
>>   @@ -86,6 +92,7 @@ struct drm_buddy {
>>       u64 chunk_size;
>>       u64 size;
>>       u64 avail;
>> +    u64 clear_avail;
>>   };
>>     static inline u64
>> @@ -112,6 +119,12 @@ drm_buddy_block_is_allocated(struct 
>> drm_buddy_block *block)
>>       return drm_buddy_block_state(block) == DRM_BUDDY_ALLOCATED;
>>   }
>>   +static inline bool
>> +drm_buddy_block_is_clear(struct drm_buddy_block *block)
>> +{
>> +    return block->header & DRM_BUDDY_HEADER_CLEAR;
>> +}
>> +
>>   static inline bool
>>   drm_buddy_block_is_free(struct drm_buddy_block *block)
>>   {
>> @@ -150,7 +163,12 @@ int drm_buddy_block_trim(struct drm_buddy *mm,
>>     void drm_buddy_free_block(struct drm_buddy *mm, struct 
>> drm_buddy_block *block);
>>   -void drm_buddy_free_list(struct drm_buddy *mm, struct list_head 
>> *objects);
>> +void drm_buddy_free_list(struct drm_buddy *mm,
>> +             struct list_head *objects,
>> +             unsigned int flags);
>> +
>> +void drm_buddy_defrag(struct drm_buddy *mm,
>> +              u64 min_order);
>>     void drm_buddy_print(struct drm_buddy *mm, struct drm_printer *p);
>>   void drm_buddy_block_print(struct drm_buddy *mm,
>>
>> base-commit: 216c1282dde38ca87ebdf1ccacee5a0682901574

