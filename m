Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB704C9663
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 21:22:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F89710E1A1;
	Tue,  1 Mar 2022 20:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2049.outbound.protection.outlook.com [40.107.92.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E42C310E138;
 Tue,  1 Mar 2022 20:22:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XS4T3vWCrIVP3/dYaQlDxXT95B699eRGl/qWiyXp4/XAhXgjZEEyV2Fk9pchDbai9/RcxtFKMwVujHK7RZRzwAi5lr/Pz+03DdPU5Tt78fi1mlqSi4yVpz4tax9V4EcPkM3d8d6287JfKU/Sy3rKYGQCuzBx1bzzkJ7S0491z1Gp1RMJrjLplGi6+OliH0YxePLNeyFXCI9F/xhirl0FeDrfrDs/hW+lsOHSSHOh+bMMMn4W8Bp2tmqCxkMrpGe5RpcOjO3hk+UpRCIwZ0t4SQqUk8h/oG5yj0PibyvFebItIriiwUB0QAhy7hhOwgvzbhhj5YpoBF73bIJY4a62Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=irjnVIVBcZ5gf9BAsvONNu8NRmX6t0FNBfSOFP5K/Jg=;
 b=BPM5VvxiCFGGuEwiRSo93fXJ0+TAQ791uka9EoxlsJ2TNalGYCOPu3yu3hT+2m4IUDgMkZmGm7W37cbmt8jaUtDK+9feQ8VtiTix47bpOlP+uciGM/JMnnhli7ve+L4Rhqh7076U2y1nYChhT6cpv7Xad1UNv9u4QN/nCVUji3LJB1CDF/R5oORa/puLTCVGzQR+UhTQDf+56jWbJ1qEc/3F5jG4m/8v14V/LbT2FcvJE0BVa4btbFyMLYHK/ztqsNNpvAMLld3zcIJJn25Jz92fEWxn/McSwIWsUarpMAj1F99UddjC4/xI++vsvsmKVmO6uK50uflwNHlFdXQKqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=irjnVIVBcZ5gf9BAsvONNu8NRmX6t0FNBfSOFP5K/Jg=;
 b=jF3KYRApAyQhJY89WU5SLZtEx2POShi3/6Wm1FE0ZE8XoUjmDFDolhuRYVwxXEXgRiwj9StPY8oP+HagcNQs/WYGkBYGNUmz926nAhaf3MwzsZzeBiyGPk8leG79qCpdm/IdFs1A2RWb+cUS+WJnjWQOFJFHWaHHxhEeo/pvQ9I=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB4342.namprd12.prod.outlook.com (2603:10b6:208:264::7)
 by DM5PR12MB4679.namprd12.prod.outlook.com (2603:10b6:4:a2::37) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.26; Tue, 1 Mar
 2022 20:22:09 +0000
Received: from MN2PR12MB4342.namprd12.prod.outlook.com
 ([fe80::48e2:1306:25a3:5f14]) by MN2PR12MB4342.namprd12.prod.outlook.com
 ([fe80::48e2:1306:25a3:5f14%5]) with mapi id 15.20.5017.027; Tue, 1 Mar 2022
 20:22:09 +0000
Message-ID: <e44cdd26-c858-9a49-a470-2b4b678bba1d@amd.com>
Date: Wed, 2 Mar 2022 02:03:10 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
References: <20220221164552.2434-1-Arunpravin.PaneerSelvam@amd.com>
 <20220221164552.2434-5-Arunpravin.PaneerSelvam@amd.com>
 <e6f7e38d-edae-de88-2527-1ea33aef990c@gmail.com>
From: Arunpravin <arunpravin.paneerselvam@amd.com>
In-Reply-To: <e6f7e38d-edae-de88-2527-1ea33aef990c@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BM1PR0101CA0015.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:18::25) To MN2PR12MB4342.namprd12.prod.outlook.com
 (2603:10b6:208:264::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 13aee73c-af1b-488e-8176-08d9fbc1294b
X-MS-TrafficTypeDiagnostic: DM5PR12MB4679:EE_
X-Microsoft-Antispam-PRVS: <DM5PR12MB46794D5970E41028CA553542E4029@DM5PR12MB4679.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XkUgYWGoJ3sR1q3CAkAL7vXPJ8syFyAxgjxp0SNi4RLMgzHDIOrYPpe8WZMZYvAekcph93DBee5imi4HQHRdjtm+llc2Cj4DzUNFrmt5SOEnkIZWe/ZYiex/gCAWdRYM20DG0Qm1n1IXEeIldceJYnw7n+UZlFFeXvukZUyQJtqm/g6qRoWKClXZywo+iWJUHEob4oGNCr6q2EjJON9QyVN8v1tbvv02+KKETuCXUFonRlDwVW62ord1eGSXFP6CTg7o/ioyDoZVUwUYqhvs/vNVeRMLfxFt+JGZvJd35qVdRyYt+EVe3eTSoc+jxk/kys0DZuLsXU/IMgcLAbH+tquekErVw6hEbX6wmrUD5mq9BER6/BROGlrNOQgUDvqyLD862YOo31NTk4KqPBcJ0CNjDK6Dtkt2MKqYHgNWf71FkF3nr2zj1gHq/xPQ7eRbhPpeSRl2UhTY1tS2Wh2jynHo0uvTwayjjVcgDtwF+RtyvjiTkvOQOlSDbaKL6xMLkS3kAGsMlJqV+oo5ccA56nvEhK1hQU/rvTgU64R/rcjk1IIWNPtZ3KbK7H+fmTajBVSeZ3O/hg7yv2Q+tJkvpklGYhwppvDy7oh1a+RlwTk9I0D/PML2See2FZim44sBRrMRgu4cdBB1S67EvSWqayEntznsFeNllfQ5dv5gJmsKJeh7QNRqdr4MttmuPRBG5UOOJa2DlZE4meVSNA58iLVAeaAMhdK3wWl2ssonLVQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB4342.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(66574015)(30864003)(8936002)(2906002)(2616005)(316002)(186003)(26005)(38100700002)(6506007)(53546011)(4326008)(8676002)(6666004)(5660300002)(86362001)(66556008)(66476007)(66946007)(6512007)(83380400001)(6486002)(31686004)(508600001)(36756003)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TmRaVUJ4aWFWdWRjUVR0TForN2NBSE9lQWVXOE5BYmJpdDVaNG5BT3F4L1ZT?=
 =?utf-8?B?T2UvemM5R0hDVk95d0FQTGhwcnp5L25kbWFuTWNJSHY1cmw1Ym44b25JOGU4?=
 =?utf-8?B?RlBoOGxOZGJURXoxbzU2S3UxbFpUV2lMRndUbW5oaW1VcnhhcUw3Mi96TXJG?=
 =?utf-8?B?ZlJLY2dwL2FzVUN6NHJLZWRONk43WjR0Z1NDY1V6a1BRU0VCZEVIa1dGRUVG?=
 =?utf-8?B?c1I5M3RpT1VsVU1jOFZqaHl2d2UwamZJM0Ivbk5acytBK0lLZWxjd3ZQNlNY?=
 =?utf-8?B?TW1EK293bk9EeUJ6eTQxRUYrUC82YWh1ZjEyWGg0UVNFdE8zVEs5d1A2d1pM?=
 =?utf-8?B?M1BUNHY5RXJPU1RWYlMzcU53MU1GelFaL0JjdXUxVEtZLzUwUU0zLy9CcC9M?=
 =?utf-8?B?ZUFueTY1WndCRU5TemhTSElwaFdwckc1NjNodjF2WEpnaUJTYVkrWEdlbW90?=
 =?utf-8?B?N0RPVU1YN2dmNDZPZjlFVWRzSm5lVFFLSzJJUWhpTmlLa3p4QUYvWUZTQmU1?=
 =?utf-8?B?R1hYYjZldkRCRGoxT3pleG9GSEVacjZFNjMrTGpCSVgwUUw5S1FNTExxYlJQ?=
 =?utf-8?B?SnJkVTQ0K0Q1WnUxcnJhbUU4RU5qQ3JvZmYxcUFTK3JmR21zcW8ybStrNzNB?=
 =?utf-8?B?WTNMWEpzd1dLRTZEOEU4eUVVMXlYN1g4TWpEMzRMdEpxcGpQWlA2ckswM3FN?=
 =?utf-8?B?SW9sQWhYK2RXTWpDZ09xQmVvSytzN29xakZ3ckt2ZmVERHhhb0dnSGxzOVI2?=
 =?utf-8?B?T3NSZkRqZmx2NDJoZ1N1YXRxanZKT0Q4akdobnkrMUFkMHJPSFZ6Y1ZERWZ5?=
 =?utf-8?B?dklySHRBVUlxR29QUWVUcGpEcFF6OTlrdHlhV09STmMzN21yZzRQcTZSUUl1?=
 =?utf-8?B?M1ZvbTUzUWx0OHkrWTF4M3h4UFBtVHVidjdZS1NSVU9LcThwdFhaK0lMTHRQ?=
 =?utf-8?B?c0dSMGhaZzVSbVhJVi9qUmFBMCszSzZwbFNXallrSzM1cU0xL09TMko2ZE9m?=
 =?utf-8?B?UG5teWpQNXZXaE9wcUttTHVjbTMrTFV6TDZTeFkxTEpEZXJzaHluZmhFTWpo?=
 =?utf-8?B?N1RlRDNCaXpTM3RKcDNPYml0RkJScUZCWFE4T01yK09HL0praWcwcnlnci9a?=
 =?utf-8?B?YWlBZmNFRlNrN0wwaGo2V0lkMEFEOHRWNENrQ1AvUkJsNEtxYUlZTit1Z09S?=
 =?utf-8?B?a1UvMyt0L2JpVzJDNVZZSmcxRmZSQlAvM2FmWEl1Kyttb1RRYkFYN2RiTjBI?=
 =?utf-8?B?RDNiSHp0RDlHYUllbllhTHZZaDBuSXRVUUs5Y2VseE1mVXRkK1NSQzZjWVJ0?=
 =?utf-8?B?REREZ1lHQW9UYjVldFhTUUdZM29yVnltWHd0b3ArYXZXK0wxQUJlcFFOY3VI?=
 =?utf-8?B?K2xoSkl2Nkdqdkt2S1hqRkpzWjJpelZ6YzFvcVYvRW54U2RSWDdLR0NpYzVm?=
 =?utf-8?B?dDRiT3B2YzNTWjVFeTlPc3ZkeEw0TE9CdkptR1U5dURWb2RGZGR0bDdQb2FI?=
 =?utf-8?B?bDVhb3pNWDRQZjhIVzlJN0VqUEk2UWYzWkc3RWRTeG1SRGxnMlh4V054NXVu?=
 =?utf-8?B?bm5EaHpHdEdpTHFPaTBoaDc2TUhNK3lKcUhNbEVJam1tMk84ZkJDNnduT3A2?=
 =?utf-8?B?bk9tQkFSREdIYU1FcWpSUlJ0bGQzQWY2azUrS2hOKzh2QmpNdkVDZTV3LzR4?=
 =?utf-8?B?N1hxRHorMm5DSE9KTGswNkVKemVMZm16WFdDTkFKdTNYMVpoeHpsbzR5bEZo?=
 =?utf-8?B?MC9GZWJjc0RFTmlXTlhqdjRMWUU0MXloRWRzOW5QSTMrMkUweTdoOW4zSzBN?=
 =?utf-8?B?b2tZV1dFUklYN1pIeW5aUjNwUU8vMFdnRWlyVmwwdFpqT1lMVDJYdEc3Tk8r?=
 =?utf-8?B?K3c5V2tIbzZWc01BNWQ2aVZ2WktaOEZTNUNXQ0s0UldjeFd3N2JkQ1NYMlJl?=
 =?utf-8?B?T3NVTVlFSndvYzFMN1AwOTUwVTVxZGxJVWUzRFY4QW9ONVFVeGhDanVPaitR?=
 =?utf-8?B?aEJWWTE4TDkxdllNaFNSSW1lcmF6WTRYaVpsNnFuRVpvZC9sNHBlSUM5d3pD?=
 =?utf-8?B?Ri9TZS9VWmZKSDQxMnpoY0g1QWM5OUxxNm9lUXhEUm5iSHVhdHNxdE95ZllD?=
 =?utf-8?B?d3YzM21qZW55QVBrSUx4WUhVUEgrZXBmYjVCTUg0LzVZalZHT2h3VlpvMXdZ?=
 =?utf-8?Q?XU+2efJgF2NVJUfuyDfnIKs=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13aee73c-af1b-488e-8176-08d9fbc1294b
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB4342.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2022 20:22:09.3146 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y+fP5toyXQjZ/6m94Db34OAYOE8SAlAiIYT7iTm0u3OuQXKsBUAfagEgMs6GohWgtDsY19eG6o4HT2drHzLeuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB4679
Subject: Re: [Intel-gfx] [PATCH v13 5/5] drm/amdgpu: add drm buddy support
 to amdgpu
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
Cc: matthew.auld@intel.com, tzimmermann@suse.de, alexander.deucher@amd.com,
 christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 22/02/22 6:24 pm, Christian König wrote:
> Am 21.02.22 um 17:45 schrieb Arunpravin:
>> - Remove drm_mm references and replace with drm buddy functionalities
>> - Add res cursor support for drm buddy
>>
>> v2(Matthew Auld):
>>    - replace spinlock with mutex as we call kmem_cache_zalloc
>>      (..., GFP_KERNEL) in drm_buddy_alloc() function
>>
>>    - lock drm_buddy_block_trim() function as it calls
>>      mark_free/mark_split are all globally visible
>>
>> v3(Matthew Auld):
>>    - remove trim method error handling as we address the failure case
>>      at drm_buddy_block_trim() function
>>
>> v4:
>>    - fix warnings reported by kernel test robot <lkp@intel.com>
>>
>> v5:
>>    - fix merge conflict issue
>>
>> v6:
>>    - fix warnings reported by kernel test robot <lkp@intel.com>
>>
>> v7:
>>    - remove DRM_BUDDY_RANGE_ALLOCATION flag usage
>>
>> v8:
>>    - keep DRM_BUDDY_RANGE_ALLOCATION flag usage
>>    - resolve conflicts created by drm/amdgpu: remove VRAM accounting v2
>>
>> Signed-off-by: Arunpravin <Arunpravin.PaneerSelvam@amd.com>
>> ---
>>   drivers/gpu/drm/Kconfig                       |   1 +
>>   .../gpu/drm/amd/amdgpu/amdgpu_res_cursor.h    |  97 +++++--
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h       |   7 +-
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c  | 256 ++++++++++--------
>>   4 files changed, 229 insertions(+), 132 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
>> index 763355330b17..019ec0440ced 100644
>> --- a/drivers/gpu/drm/Kconfig
>> +++ b/drivers/gpu/drm/Kconfig
>> @@ -279,6 +279,7 @@ config DRM_AMDGPU
>>   	select HWMON
>>   	select BACKLIGHT_CLASS_DEVICE
>>   	select INTERVAL_TREE
>> +	select DRM_BUDDY
>>   	help
>>   	  Choose this option if you have a recent AMD Radeon graphics card.
>>   
>> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h b/drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h
>> index acfa207cf970..da12b4ff2e45 100644
>> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h
>> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h
>> @@ -30,12 +30,15 @@
>>   #include <drm/ttm/ttm_resource.h>
>>   #include <drm/ttm/ttm_range_manager.h>
>>   
>> +#include "amdgpu_vram_mgr.h"
>> +
>>   /* state back for walking over vram_mgr and gtt_mgr allocations */
>>   struct amdgpu_res_cursor {
>>   	uint64_t		start;
>>   	uint64_t		size;
>>   	uint64_t		remaining;
>> -	struct drm_mm_node	*node;
>> +	void			*node;
>> +	uint32_t		mem_type;
>>   };
>>   
>>   /**
>> @@ -52,27 +55,63 @@ static inline void amdgpu_res_first(struct ttm_resource *res,
>>   				    uint64_t start, uint64_t size,
>>   				    struct amdgpu_res_cursor *cur)
>>   {
>> +	struct drm_buddy_block *block;
>> +	struct list_head *head, *next;
>>   	struct drm_mm_node *node;
>>   
>> -	if (!res || res->mem_type == TTM_PL_SYSTEM) {
>> -		cur->start = start;
>> -		cur->size = size;
>> -		cur->remaining = size;
>> -		cur->node = NULL;
>> -		WARN_ON(res && start + size > res->num_pages << PAGE_SHIFT);
>> -		return;
>> -	}
>> +	if (!res)
>> +		goto err_out;
> 
> It's not really an error to not have a resource. So I would rather name 
> the label fallback or something like that.
> 
>>   
>>   	BUG_ON(start + size > res->num_pages << PAGE_SHIFT);
>>   
>> -	node = to_ttm_range_mgr_node(res)->mm_nodes;
>> -	while (start >= node->size << PAGE_SHIFT)
>> -		start -= node++->size << PAGE_SHIFT;
>> +	cur->mem_type = res->mem_type;
>> +
>> +	switch (cur->mem_type) {
>> +	case TTM_PL_VRAM:
>> +		head = &to_amdgpu_vram_mgr_node(res)->blocks;
>> +
>> +		block = list_first_entry_or_null(head,
>> +						 struct drm_buddy_block,
>> +						 link);
>> +		if (!block)
>> +			goto err_out;
>> +
>> +		while (start >= amdgpu_node_size(block)) {
>> +			start -= amdgpu_node_size(block);
>> +
>> +			next = block->link.next;
>> +			if (next != head)
>> +				block = list_entry(next, struct drm_buddy_block, link);
>> +		}
>> +
>> +		cur->start = amdgpu_node_start(block) + start;
>> +		cur->size = min(amdgpu_node_size(block) - start, size);
>> +		cur->remaining = size;
>> +		cur->node = block;
>> +		break;
>> +	case TTM_PL_TT:
>> +		node = to_ttm_range_mgr_node(res)->mm_nodes;
>> +		while (start >= node->size << PAGE_SHIFT)
>> +			start -= node++->size << PAGE_SHIFT;
>> +
>> +		cur->start = (node->start << PAGE_SHIFT) + start;
>> +		cur->size = min((node->size << PAGE_SHIFT) - start, size);
>> +		cur->remaining = size;
>> +		cur->node = node;
>> +		break;
>> +	default:
>> +		goto err_out;
>> +	}
>>   
>> -	cur->start = (node->start << PAGE_SHIFT) + start;
>> -	cur->size = min((node->size << PAGE_SHIFT) - start, size);
>> +	return;
>> +
>> +err_out:
>> +	cur->start = start;
>> +	cur->size = size;
>>   	cur->remaining = size;
>> -	cur->node = node;
>> +	cur->node = NULL;
>> +	WARN_ON(res && start + size > res->num_pages << PAGE_SHIFT);
>> +	return;
>>   }
>>   
>>   /**
>> @@ -85,7 +124,9 @@ static inline void amdgpu_res_first(struct ttm_resource *res,
>>    */
>>   static inline void amdgpu_res_next(struct amdgpu_res_cursor *cur, uint64_t size)
>>   {
>> -	struct drm_mm_node *node = cur->node;
>> +	struct drm_buddy_block *block;
>> +	struct drm_mm_node *node;
>> +	struct list_head *next;
>>   
>>   	BUG_ON(size > cur->remaining);
>>   
>> @@ -99,9 +140,27 @@ static inline void amdgpu_res_next(struct amdgpu_res_cursor *cur, uint64_t size)
>>   		return;
>>   	}
>>   
>> -	cur->node = ++node;
>> -	cur->start = node->start << PAGE_SHIFT;
>> -	cur->size = min(node->size << PAGE_SHIFT, cur->remaining);
>> +	switch (cur->mem_type) {
>> +	case TTM_PL_VRAM:
>> +		block = cur->node;
>> +
>> +		next = block->link.next;
>> +		block = list_entry(next, struct drm_buddy_block, link);
>> +
>> +		cur->node = block;
>> +		cur->start = amdgpu_node_start(block);
>> +		cur->size = min(amdgpu_node_size(block), cur->remaining);
>> +		break;
>> +	case TTM_PL_TT:
>> +		node = cur->node;
>> +
>> +		cur->node = ++node;
>> +		cur->start = node->start << PAGE_SHIFT;
>> +		cur->size = min(node->size << PAGE_SHIFT, cur->remaining);
>> +		break;
>> +	default:
>> +		return;
>> +	}
>>   }
>>   
>>   #endif
>> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h
>> index 9120ae80ef52..8acdb2fb3a23 100644
>> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h
>> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h
>> @@ -26,6 +26,7 @@
>>   
>>   #include <linux/dma-direction.h>
>>   #include <drm/gpu_scheduler.h>
>> +#include <drm/drm_buddy.h>
>>   #include "amdgpu.h"
>>   
>>   #define AMDGPU_PL_GDS		(TTM_PL_PRIV + 0)
>> @@ -40,11 +41,13 @@
>>   
>>   struct amdgpu_vram_mgr {
>>   	struct ttm_resource_manager manager;
>> -	struct drm_mm mm;
>> -	spinlock_t lock;
>> +	struct drm_buddy mm;
>> +	/* protects access to buffer objects */
>> +	struct mutex lock;
>>   	struct list_head reservations_pending;
>>   	struct list_head reserved_pages;
>>   	atomic64_t vis_usage;
>> +	u64 default_page_size;
>>   };
> 
> Can we move that to amdgpu_vram_mgr.h as well?
> 
>>   
>>   struct amdgpu_gtt_mgr {
>> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
>> index 0a7611648573..6b2a5879e985 100644
>> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
>> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
>> @@ -32,8 +32,11 @@
>>   #include "atom.h"
>>   
>>   struct amdgpu_vram_reservation {
>> +	u64 start;
>> +	u64 size;
>> +	unsigned long flags;
> 
> Looks like we will always use the same flags and that can be dropped.
> 
>> +	struct list_head block;
>>   	struct list_head node;
>> -	struct drm_mm_node mm_node;
>>   };
>>   
>>   static inline struct amdgpu_vram_mgr *
>> @@ -194,10 +197,10 @@ const struct attribute_group amdgpu_vram_mgr_attr_group = {
>>    * Calculate how many bytes of the MM node are inside visible VRAM
>>    */
>>   static u64 amdgpu_vram_mgr_vis_size(struct amdgpu_device *adev,
>> -				    struct drm_mm_node *node)
>> +				    struct drm_buddy_block *block)
>>   {
>> -	uint64_t start = node->start << PAGE_SHIFT;
>> -	uint64_t end = (node->size + node->start) << PAGE_SHIFT;
>> +	u64 start = amdgpu_node_start(block);
>> +	u64 end = start + amdgpu_node_size(block);
>>   
>>   	if (start >= adev->gmc.visible_vram_size)
>>   		return 0;
>> @@ -218,9 +221,9 @@ u64 amdgpu_vram_mgr_bo_visible_size(struct amdgpu_bo *bo)
>>   {
>>   	struct amdgpu_device *adev = amdgpu_ttm_adev(bo->tbo.bdev);
>>   	struct ttm_resource *res = bo->tbo.resource;
>> -	unsigned pages = res->num_pages;
>> -	struct drm_mm_node *mm;
>> -	u64 usage;
>> +	struct amdgpu_vram_mgr_node *node = to_amdgpu_vram_mgr_node(res);
>> +	struct drm_buddy_block *block;
>> +	u64 usage = 0;
>>   
>>   	if (amdgpu_gmc_vram_full_visible(&adev->gmc))
>>   		return amdgpu_bo_size(bo);
>> @@ -228,9 +231,8 @@ u64 amdgpu_vram_mgr_bo_visible_size(struct amdgpu_bo *bo)
>>   	if (res->start >= adev->gmc.visible_vram_size >> PAGE_SHIFT)
>>   		return 0;
>>   
>> -	mm = &container_of(res, struct ttm_range_mgr_node, base)->mm_nodes[0];
>> -	for (usage = 0; pages; pages -= mm->size, mm++)
>> -		usage += amdgpu_vram_mgr_vis_size(adev, mm);
>> +	list_for_each_entry(block, &node->blocks, link)
>> +		usage += amdgpu_vram_mgr_vis_size(adev, block);
>>   
>>   	return usage;
>>   }
>> @@ -240,23 +242,31 @@ static void amdgpu_vram_mgr_do_reserve(struct ttm_resource_manager *man)
>>   {
>>   	struct amdgpu_vram_mgr *mgr = to_vram_mgr(man);
>>   	struct amdgpu_device *adev = to_amdgpu_device(mgr);
>> -	struct drm_mm *mm = &mgr->mm;
>> +	struct drm_buddy *mm = &mgr->mm;
>>   	struct amdgpu_vram_reservation *rsv, *temp;
>> +	struct drm_buddy_block *block;
>>   	uint64_t vis_usage;
>>   
>>   	list_for_each_entry_safe(rsv, temp, &mgr->reservations_pending, node) {
>> -		if (drm_mm_reserve_node(mm, &rsv->mm_node))
>> +		if (drm_buddy_alloc_blocks(mm, rsv->start, rsv->start + rsv->size,
>> +					   rsv->size, mm->chunk_size, &rsv->block,
>> +					   rsv->flags))
>>   			continue;
>>   
>> -		dev_dbg(adev->dev, "Reservation 0x%llx - %lld, Succeeded\n",
>> -			rsv->mm_node.start, rsv->mm_node.size);
>> -
>> -		vis_usage = amdgpu_vram_mgr_vis_size(adev, &rsv->mm_node);
>> -		atomic64_add(vis_usage, &mgr->vis_usage);
>> -		spin_lock(&man->bdev->lru_lock);
>> -		man->usage += rsv->mm_node.size << PAGE_SHIFT;
>> -		spin_unlock(&man->bdev->lru_lock);
>> -		list_move(&rsv->node, &mgr->reserved_pages);
>> +		block = list_first_entry_or_null(&rsv->block,
>> +						 struct drm_buddy_block,
>> +						 link);
>> +		if (block) {
> 
> Rather make that an "if (!block) continue;".
> 
>> +			dev_dbg(adev->dev, "Reservation 0x%llx - %lld, Succeeded\n",
>> +				rsv->start, rsv->size);
>> +
>> +			vis_usage = amdgpu_vram_mgr_vis_size(adev, block);
>> +			atomic64_add(vis_usage, &mgr->vis_usage);
>> +			spin_lock(&man->bdev->lru_lock);
>> +			man->usage += rsv->size;
>> +			spin_unlock(&man->bdev->lru_lock);
>> +			list_move(&rsv->node, &mgr->reserved_pages);
>> +		}
>>   	}
>>   }
>>   
>> @@ -279,13 +289,16 @@ int amdgpu_vram_mgr_reserve_range(struct amdgpu_vram_mgr *mgr,
>>   		return -ENOMEM;
>>   
>>   	INIT_LIST_HEAD(&rsv->node);
>> -	rsv->mm_node.start = start >> PAGE_SHIFT;
>> -	rsv->mm_node.size = size >> PAGE_SHIFT;
>> +	INIT_LIST_HEAD(&rsv->block);
>> +
>> +	rsv->start = start;
>> +	rsv->size = size;
>> +	rsv->flags |= DRM_BUDDY_RANGE_ALLOCATION;
>>   
>> -	spin_lock(&mgr->lock);
>> +	mutex_lock(&mgr->lock);
>>   	list_add_tail(&rsv->node, &mgr->reservations_pending);
>>   	amdgpu_vram_mgr_do_reserve(&mgr->manager);
>> -	spin_unlock(&mgr->lock);
>> +	mutex_unlock(&mgr->lock);
>>   
>>   	return 0;
>>   }
>> @@ -307,19 +320,19 @@ int amdgpu_vram_mgr_query_page_status(struct amdgpu_vram_mgr *mgr,
>>   	struct amdgpu_vram_reservation *rsv;
>>   	int ret;
>>   
>> -	spin_lock(&mgr->lock);
>> +	mutex_lock(&mgr->lock);
>>   
>>   	list_for_each_entry(rsv, &mgr->reservations_pending, node) {
>> -		if ((rsv->mm_node.start <= start) &&
>> -		    (start < (rsv->mm_node.start + rsv->mm_node.size))) {
>> +		if (rsv->start <= start &&
>> +		    (start < (rsv->start + rsv->size))) {
>>   			ret = -EBUSY;
>>   			goto out;
>>   		}
>>   	}
>>   
>>   	list_for_each_entry(rsv, &mgr->reserved_pages, node) {
>> -		if ((rsv->mm_node.start <= start) &&
>> -		    (start < (rsv->mm_node.start + rsv->mm_node.size))) {
>> +		if (rsv->start <= start &&
>> +		    (start < (rsv->start + rsv->size))) {
>>   			ret = 0;
>>   			goto out;
>>   		}
>> @@ -327,32 +340,10 @@ int amdgpu_vram_mgr_query_page_status(struct amdgpu_vram_mgr *mgr,
>>   
>>   	ret = -ENOENT;
>>   out:
>> -	spin_unlock(&mgr->lock);
>> +	mutex_unlock(&mgr->lock);
>>   	return ret;
>>   }
>>   
>> -/**
>> - * amdgpu_vram_mgr_virt_start - update virtual start address
>> - *
>> - * @mem: ttm_resource to update
>> - * @node: just allocated node
>> - *
>> - * Calculate a virtual BO start address to easily check if everything is CPU
>> - * accessible.
>> - */
>> -static void amdgpu_vram_mgr_virt_start(struct ttm_resource *mem,
>> -				       struct drm_mm_node *node)
>> -{
>> -	unsigned long start;
>> -
>> -	start = node->start + node->size;
>> -	if (start > mem->num_pages)
>> -		start -= mem->num_pages;
>> -	else
>> -		start = 0;
>> -	mem->start = max(mem->start, start);
>> -}
>> -
>>   /**
>>    * amdgpu_vram_mgr_new - allocate new ranges
>>    *
>> @@ -368,13 +359,13 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_manager *man,
>>   			       const struct ttm_place *place,
>>   			       struct ttm_resource **res)
>>   {
>> -	unsigned long lpfn, num_nodes, pages_per_node, pages_left, pages;
>> +	unsigned long lpfn, pages_per_node, pages_left, pages, n_pages;
>> +	u64 vis_usage = 0, mem_bytes, max_bytes, min_page_size;
>>   	struct amdgpu_vram_mgr *mgr = to_vram_mgr(man);
>>   	struct amdgpu_device *adev = to_amdgpu_device(mgr);
>> -	uint64_t vis_usage = 0, mem_bytes, max_bytes;
>> -	struct ttm_range_mgr_node *node;
>> -	struct drm_mm *mm = &mgr->mm;
>> -	enum drm_mm_insert_mode mode;
>> +	struct amdgpu_vram_mgr_node *node;
>> +	struct drm_buddy *mm = &mgr->mm;
>> +	struct drm_buddy_block *block;
>>   	unsigned i;
>>   	int r;
>>   
>> @@ -387,10 +378,9 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_manager *man,
>>   		max_bytes -= AMDGPU_VM_RESERVED_VRAM;
>>   
>>   	mem_bytes = tbo->base.size;
>> -	if (place->flags & TTM_PL_FLAG_CONTIGUOUS) {
>> +	if (place->flags & TTM_PL_FLAG_CONTIGUOUS)
>>   		pages_per_node = ~0ul;
>> -		num_nodes = 1;
>> -	} else {
>> +	else {
> 
> Please keep the } else { here, see coding style rules.
> 
>>   #ifdef CONFIG_TRANSPARENT_HUGEPAGE
>>   		pages_per_node = HPAGE_PMD_NR;
>>   #else
>> @@ -399,11 +389,9 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_manager *man,
>>   #endif
>>   		pages_per_node = max_t(uint32_t, pages_per_node,
>>   				       tbo->page_alignment);
>> -		num_nodes = DIV_ROUND_UP_ULL(PFN_UP(mem_bytes), pages_per_node);
>>   	}
>>   
>> -	node = kvmalloc(struct_size(node, mm_nodes, num_nodes),
>> -			GFP_KERNEL | __GFP_ZERO);
>> +	node = kzalloc(sizeof(*node), GFP_KERNEL);
>>   	if (!node)
>>   		return -ENOMEM;
>>   
>> @@ -415,9 +403,17 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_manager *man,
>>   		goto error_fini;
>>   	}
>>   
>> -	mode = DRM_MM_INSERT_BEST;
>> +	INIT_LIST_HEAD(&node->blocks);
>> +
>>   	if (place->flags & TTM_PL_FLAG_TOPDOWN)
>> -		mode = DRM_MM_INSERT_HIGH;
>> +		node->flags |= DRM_BUDDY_TOPDOWN_ALLOCATION;
>> +
>> +	if (place->fpfn || lpfn != man->size >> PAGE_SHIFT)
>> +		/* Allocate blocks in desired range */
>> +		node->flags |= DRM_BUDDY_RANGE_ALLOCATION;
>> +
>> +	min_page_size = mgr->default_page_size;
>> +	BUG_ON(min_page_size < mm->chunk_size);
>>   
>>   	pages_left = node->base.num_pages;
>>   
>> @@ -425,36 +421,61 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_manager *man,
>>   	pages = min(pages_left, 2UL << (30 - PAGE_SHIFT));
>>   
>>   	i = 0;
>> -	spin_lock(&mgr->lock);
>>   	while (pages_left) {
>> -		uint32_t alignment = tbo->page_alignment;
>> -
>>   		if (pages >= pages_per_node)
>> -			alignment = pages_per_node;
>> -
>> -		r = drm_mm_insert_node_in_range(mm, &node->mm_nodes[i], pages,
>> -						alignment, 0, place->fpfn,
>> -						lpfn, mode);
>> -		if (unlikely(r)) {
>> -			if (pages > pages_per_node) {
>> -				if (is_power_of_2(pages))
>> -					pages = pages / 2;
>> -				else
>> -					pages = rounddown_pow_of_two(pages);
>> -				continue;
>> -			}
>> -			goto error_free;
>> +			pages = pages_per_node;
> 
> When I see that correctly then this is a rather bad idea.
> 
> That would limit each allocated block to only 2MiB, but we really want 
> allocations up to 1GiB!
> 
Hi Christian,
please review the new patch which has the following changes

* Each node maximum size is 2GiB

* Alignment design
how min_page_size is determined? min_page_size is the argument passed to
drm_buddy, If we dont find a node equivalent to min_page_size, drm_buddy
returns -ENOSPC

First we determine pages_per_node, it is the alignment size within the
required total size, If huge page enabled pages_per_node = HPAGE_PMD_NR;
Else, pages_per_node = 2MB, finally we take pages_per_node = max of
(pages_per_node, tbo->page_alignment)

case 1 : If required pages > pages_per_node, then min_page_size =
pages_per_node

case 2 : If required pages < pages_per_node, then min_page_size =
tbo->page_alignment if available , else defaults to 4KB

case 3: If CONTIGUOUS flag enabled, min_page_size = size;

pages_per_node is the alignment size within the required total size
min_page_size is the argument passed to drm_buddy
If we dont find a node equivalent to min_page_size, drm_buddy returns
-ENOSPC

* when required size is > 2GB
say for example required size = 3GB, since the max node size is 2GB, we
don't get continuous 3GB of allocation if required, we get 2GB
contiguous and 1GB contiguous

Thanks,
Arun
>> +
>> +		n_pages = pages;
>> +
>> +		if (place->flags & TTM_PL_FLAG_CONTIGUOUS) {
>> +			n_pages = roundup_pow_of_two(n_pages);
>> +			min_page_size = (u64)n_pages << PAGE_SHIFT;
>> +
>> +			if (n_pages > lpfn)
>> +				lpfn = n_pages;
>>   		}
>>   
>> -		vis_usage += amdgpu_vram_mgr_vis_size(adev, &node->mm_nodes[i]);
>> -		amdgpu_vram_mgr_virt_start(&node->base, &node->mm_nodes[i]);
>> +		mutex_lock(&mgr->lock);
>> +		r = drm_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT,
>> +					   (u64)lpfn << PAGE_SHIFT,
>> +					   (u64)n_pages << PAGE_SHIFT,
>> +					   min_page_size,
>> +					   &node->blocks,
>> +					   node->flags);
>> +		mutex_unlock(&mgr->lock);
>> +		if (unlikely(r))
>> +			goto error_free_blocks;
>> +
>>   		pages_left -= pages;
>>   		++i;
>>   
>>   		if (pages > pages_left)
>>   			pages = pages_left;
>>   	}
>> -	spin_unlock(&mgr->lock);
>> +
>> +	/* Free unused pages for contiguous allocation */
>> +	if (place->flags & TTM_PL_FLAG_CONTIGUOUS) {
>> +		u64 actual_size = (u64)node->base.num_pages << PAGE_SHIFT;
>> +
>> +		mutex_lock(&mgr->lock);
>> +		drm_buddy_block_trim(mm,
>> +				     actual_size,
>> +				     &node->blocks);
>> +		mutex_unlock(&mgr->lock);
>> +	}
>> +
>> +	list_for_each_entry(block, &node->blocks, link)
>> +		vis_usage += amdgpu_vram_mgr_vis_size(adev, block);
>> +
>> +	block = list_first_entry_or_null(&node->blocks,
>> +					 struct drm_buddy_block,
>> +					 link);
> 
> This is a repeating patter, you should probably add a helper function 
> for it.
> 
> Regards,
> Christian.
> 
>> +	if (!block) {
>> +		r = -EINVAL;
>> +		goto error_fini;
>> +	}
>> +
>> +	node->base.start = amdgpu_node_start(block) >> PAGE_SHIFT;
>>   
>>   	if (i == 1)
>>   		node->base.placement |= TTM_PL_FLAG_CONTIGUOUS;
>> @@ -468,13 +489,13 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_manager *man,
>>   	*res = &node->base;
>>   	return 0;
>>   
>> -error_free:
>> -	while (i--)
>> -		drm_mm_remove_node(&node->mm_nodes[i]);
>> -	spin_unlock(&mgr->lock);
>> +error_free_blocks:
>> +	mutex_lock(&mgr->lock);
>> +	drm_buddy_free_list(mm, &node->blocks);
>> +	mutex_unlock(&mgr->lock);
>>   error_fini:
>>   	ttm_resource_fini(man, &node->base);
>> -	kvfree(node);
>> +	kfree(node);
>>   
>>   	return r;
>>   }
>> @@ -490,27 +511,26 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_manager *man,
>>   static void amdgpu_vram_mgr_del(struct ttm_resource_manager *man,
>>   				struct ttm_resource *res)
>>   {
>> -	struct ttm_range_mgr_node *node = to_ttm_range_mgr_node(res);
>> +	struct amdgpu_vram_mgr_node *node = to_amdgpu_vram_mgr_node(res);
>>   	struct amdgpu_vram_mgr *mgr = to_vram_mgr(man);
>>   	struct amdgpu_device *adev = to_amdgpu_device(mgr);
>> +	struct drm_buddy *mm = &mgr->mm;
>> +	struct drm_buddy_block *block;
>>   	uint64_t vis_usage = 0;
>> -	unsigned i, pages;
>>   
>> -	spin_lock(&mgr->lock);
>> -	for (i = 0, pages = res->num_pages; pages;
>> -	     pages -= node->mm_nodes[i].size, ++i) {
>> -		struct drm_mm_node *mm = &node->mm_nodes[i];
>> +	mutex_lock(&mgr->lock);
>> +	list_for_each_entry(block, &node->blocks, link)
>> +		vis_usage += amdgpu_vram_mgr_vis_size(adev, block);
>>   
>> -		drm_mm_remove_node(mm);
>> -		vis_usage += amdgpu_vram_mgr_vis_size(adev, mm);
>> -	}
>>   	amdgpu_vram_mgr_do_reserve(man);
>> -	spin_unlock(&mgr->lock);
>> +
>> +	drm_buddy_free_list(mm, &node->blocks);
>> +	mutex_unlock(&mgr->lock);
>>   
>>   	atomic64_sub(vis_usage, &mgr->vis_usage);
>>   
>>   	ttm_resource_fini(man, res);
>> -	kvfree(node);
>> +	kfree(node);
>>   }
>>   
>>   /**
>> @@ -648,13 +668,22 @@ static void amdgpu_vram_mgr_debug(struct ttm_resource_manager *man,
>>   				  struct drm_printer *printer)
>>   {
>>   	struct amdgpu_vram_mgr *mgr = to_vram_mgr(man);
>> +	struct drm_buddy *mm = &mgr->mm;
>> +	struct drm_buddy_block *block;
>>   
>>   	drm_printf(printer, "  vis usage:%llu\n",
>>   		   amdgpu_vram_mgr_vis_usage(mgr));
>>   
>> -	spin_lock(&mgr->lock);
>> -	drm_mm_print(&mgr->mm, printer);
>> -	spin_unlock(&mgr->lock);
>> +	mutex_lock(&mgr->lock);
>> +	drm_printf(printer, "default_page_size: %lluKiB\n",
>> +		   mgr->default_page_size >> 10);
>> +
>> +	drm_buddy_print(mm, printer);
>> +
>> +	drm_printf(printer, "reserved:\n");
>> +	list_for_each_entry(block, &mgr->reserved_pages, link)
>> +		drm_buddy_block_print(mm, block, printer);
>> +	mutex_unlock(&mgr->lock);
>>   }
>>   
>>   static const struct ttm_resource_manager_func amdgpu_vram_mgr_func = {
>> @@ -674,16 +703,21 @@ int amdgpu_vram_mgr_init(struct amdgpu_device *adev)
>>   {
>>   	struct amdgpu_vram_mgr *mgr = &adev->mman.vram_mgr;
>>   	struct ttm_resource_manager *man = &mgr->manager;
>> +	int err;
>>   
>>   	ttm_resource_manager_init(man, &adev->mman.bdev,
>>   				  adev->gmc.real_vram_size);
>>   
>>   	man->func = &amdgpu_vram_mgr_func;
>>   
>> -	drm_mm_init(&mgr->mm, 0, man->size >> PAGE_SHIFT);
>> -	spin_lock_init(&mgr->lock);
>> +	err = drm_buddy_init(&mgr->mm, man->size, PAGE_SIZE);
>> +	if (err)
>> +		return err;
>> +
>> +	mutex_init(&mgr->lock);
>>   	INIT_LIST_HEAD(&mgr->reservations_pending);
>>   	INIT_LIST_HEAD(&mgr->reserved_pages);
>> +	mgr->default_page_size = PAGE_SIZE;
>>   
>>   	ttm_set_driver_manager(&adev->mman.bdev, TTM_PL_VRAM, &mgr->manager);
>>   	ttm_resource_manager_set_used(man, true);
>> @@ -711,16 +745,16 @@ void amdgpu_vram_mgr_fini(struct amdgpu_device *adev)
>>   	if (ret)
>>   		return;
>>   
>> -	spin_lock(&mgr->lock);
>> +	mutex_lock(&mgr->lock);
>>   	list_for_each_entry_safe(rsv, temp, &mgr->reservations_pending, node)
>>   		kfree(rsv);
>>   
>>   	list_for_each_entry_safe(rsv, temp, &mgr->reserved_pages, node) {
>> -		drm_mm_remove_node(&rsv->mm_node);
>> +		drm_buddy_free_list(&mgr->mm, &rsv->block);
>>   		kfree(rsv);
>>   	}
>> -	drm_mm_takedown(&mgr->mm);
>> -	spin_unlock(&mgr->lock);
>> +	drm_buddy_fini(&mgr->mm);
>> +	mutex_unlock(&mgr->lock);
>>   
>>   	ttm_resource_manager_cleanup(man);
>>   	ttm_set_driver_manager(&adev->mman.bdev, TTM_PL_VRAM, NULL);
> 
