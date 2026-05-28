Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CaWKDg2GGqkgwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 14:34:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCD55F21AF
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 14:34:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4109110F110;
	Thu, 28 May 2026 12:33:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="HmnzzV/D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR2101CU001.outbound.protection.outlook.com
 (mail-southcentralusazon11012046.outbound.protection.outlook.com
 [40.93.195.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35D5710F10D;
 Thu, 28 May 2026 12:33:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WkdeEC4HtK/1eXvIl24NafwSuponwmcAgN6QWGC+Iv+zsG3O8gVQ/qJVT5dEbuXWk5dbJ09skF0npVk0TCV2OJO9VE1Xn9yWLUx0sgZDPffc/vtjWpkanZ1BxYnkkh2MhTZTNsdcMkXw+2SYVIHEOmzNstxs4vd1nPCZzwlgIcBnOrzok5oGAvEFC+Luzy64RMQo+Ezfd21cRlVgVYs8vsKzPzJa9Uboc/LE+NBJvWjs7IY4DvHf332jZMeyceDQ5DYn0LN+UBneJ5872hjCaa2dTwyL2AQQqptrG5oek0Vjy/yvRd2Ij6ys9w+ZsJMQ6SV4K4HkqrsB1G3Andu34A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=er/SXmWQilTbstD9YFtx+btYwNGUwHISZQO5N/TMOAA=;
 b=i4+X/MCAt2R4qQIpL1ckyT2czQpyMDQP1FIeoQHP3ZJEG514XDz6sXs05iuJMyBB/1scI0cUqvnN/axy9FeGWnLMiXC/ewYXcUoBE7WIk9KwfJ/N0I6gJmCotmvnUYGE5pJ1IL1mjDJAyo1r86mYkt/B/leOW8KfeI/qxqi3kG0RFdCnBLRPhQQAnK7NJ49vh/bJl6MAfZxJ3bvRru0DzTvmdxlFX0flVS9wc25GkrvZ3qyavDG2L2iT1jeI6+Yv7zNZjUzNvVi1oJdXHohMHTiaNSii+0daPzbI9ecCoYvONgpTFMBRI5p3aYsTtBqaLfv9Ayei7tOlgpbnGRYp0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=er/SXmWQilTbstD9YFtx+btYwNGUwHISZQO5N/TMOAA=;
 b=HmnzzV/Drk4Ei9bBamWxblqo/OftFu4RND6azKOCCpcO8mtvU0VGuhwx+F4mgPYpMRnBxNhW6Rb3rDu/5pHd2gKrhBMtRitrWYEPi3gu7D5BzrFGQ4JVuWAR9G/ieDAfZ0RNKJLNxUpkWsCndiHSzEakV01ONvrmOxAugVtb4SY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from EAYPR12MB999132.namprd12.prod.outlook.com
 (2603:10b6:303:2c2::11) by MW3PR12MB4377.namprd12.prod.outlook.com
 (2603:10b6:303:55::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.18; Thu, 28 May
 2026 12:33:52 +0000
Received: from EAYPR12MB999132.namprd12.prod.outlook.com
 ([fe80::7798:60c4:e3f0:d3f8]) by EAYPR12MB999132.namprd12.prod.outlook.com
 ([fe80::7798:60c4:e3f0:d3f8%4]) with mapi id 15.20.9891.021; Thu, 28 May 2026
 12:33:52 +0000
Message-ID: <c415c3e5-74cd-4bce-8c5a-88d504d7803c@amd.com>
Date: Thu, 28 May 2026 18:03:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] gpu/buddy: replace dual-tree/force_merge with
 decoupled clear tracker
To: matthew.auld@intel.com, christian.koenig@amd.com,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Cc: alexander.deucher@amd.com
References: <20260527112902.3815-1-Arunpravin.PaneerSelvam@amd.com>
Content-Language: en-US
From: Arunpravin Paneer Selvam <arunpravin.paneerselvam@amd.com>
In-Reply-To: <20260527112902.3815-1-Arunpravin.PaneerSelvam@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0255.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f1::8) To EAYPR12MB999132.namprd12.prod.outlook.com
 (2603:10b6:303:2c2::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: EAYPR12MB999132:EE_|MW3PR12MB4377:EE_
X-MS-Office365-Filtering-Correlation-Id: a5e9114c-a98e-43af-7b0a-08debcb55f82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|11063799006|22082099003|18002099003|56012099006;
X-Microsoft-Antispam-Message-Info: lCfTUN6DMal6kX1t1ROtFHf5dawCqmTuMTBHn6TKqHivqJB3wn80FJ1eQ0P6/oLmqxIQ15NayxJZxQbQWjuqnAJ/9tT80QEXRTy3IqT98zGRDc9TtbGp2yG1TzuQ7UdzVzsPgNZgAqUu20MmmE0exkhIEY2/YpWcrUS4SkUVIB12uswQ/c1OaUd+Gt3oMq6r1V5V5ehtfgN2MdiqHPZBXwKdTE4opvtz5HoGW9rz918nX/cGcpCEA/oOITYx2pGY1+MU2+Xt7FMrarqH+5i/RX+zdGQymALy/IFCABh887rEjoT5ra4NyvReLeBeHECDRajl9xlMgLhJmRUueks2K1BJrGh76x81Oo6FF3WSwwLHQ+f5nDEv1bf4ZcOevYwFe4L5pBbR6mYiSo/Yc4RsLsclpT6OgnIU0uamWA5FrbDhF6lsAwihTpclx+S4p5OoZdjBKpw2vqa22FuoGT6HrWq7AVT/f3++VXr1yQrllVS1wJnc0r89d4Avhka3m6dib59fRKywuYbHKdP9f+MRcG8VS1btxq2ottFbxlkwexOmAbVHbeXYL3nOBOCvq3tSutGI8XuP2aQSBYQwAI8mBRsTCz/AQnGtv/U5vBMIHWGTUDkzBfw3A/Cv2SHmZE2TKkki1/FHv/0M/bLd17mARfioglubjw2+9R+lu909Vv5BpecRrwdcw5YgMQkl/JwA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:EAYPR12MB999132.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(11063799006)(22082099003)(18002099003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RG1nR2xhWmd2YmlsSnllajlpbTY0RU5WUVI1UGVjYXZxRXVSa2R2cllzZWtD?=
 =?utf-8?B?eFM0TnJUV1BrMi9NbkNvcERGWlFDc3JNVWs2a210L0NwNkwzODhleThxb09W?=
 =?utf-8?B?U2loQ2YvQWRSVkNHY2c2VlVKNjdjTVdZTC96NkRzYlVTZTErbWxBUUROUjc2?=
 =?utf-8?B?ZGxFelB4Z0tpRXpzNXlkUU8wRDNEdkNXRno5TXp2QWprOTVuOHJObUVPditV?=
 =?utf-8?B?MWpJbWxSQUdaV2tKNFJQN0Y0QVVVZFZtV1FCaDZaaWt5UFR6dXQ5bFZKRkdH?=
 =?utf-8?B?UnpRR01LcWlVSi9yamh3cnhIM3dDY1JvK0cvakFTMlh5M1B2QUFoaFlmazZ1?=
 =?utf-8?B?b0lTRmovNUxGOGxHYklPOEYxSnhUMmljMm90cWowV1ZiSHJNSUhXamlnVVlI?=
 =?utf-8?B?VW9oaFhNTEJWUDJTZWF0ZjlWNWJpKzFwWVhza0g3T2VwZDBkd3F2bVlFRy9x?=
 =?utf-8?B?TkM2azZMekw1TkJac1lQelArczZwVHhwakJ5OHBZbFdUKzdqUGZ0Sit5YUhD?=
 =?utf-8?B?ckRRZDJadEJleU5JTTZtNlhualZQUENSa0xKNTVybk93VXVhKy80Zkx5RFdo?=
 =?utf-8?B?K2c4STRWeUhlVUJOWXdidjR4WXduS1drYnhLamoxU0x2a0tucmhrZXpIQkJZ?=
 =?utf-8?B?LzY2TkhwVXNUeFl3ZDVtQm9NcVZZWE5MKzAxallsd1MvVkgrTUI1RTkwcHJ6?=
 =?utf-8?B?ZHNLcWFZUGtHMVRybGN0MlN4Nk1LM2ppYmV3dWFOUGVOWlRGcDFIRkJsK0hG?=
 =?utf-8?B?dDN4aXE5RndheEtvTWtzbEp3TFJ1Q2tpQXNCdVlJaFdpQkJ3WmN5Qm0yNE56?=
 =?utf-8?B?UlQ4azhyS3pZOVkyaWZNZzFienI1VENTbkl4aDBuc2NGN1I0SGREZmVzLy9j?=
 =?utf-8?B?VFMxOW1NU2N5Rko5UXlybDZPTW1xOStyTlEzWXltUWFRMG5lcC93TkJOR25Y?=
 =?utf-8?B?Zk9VWmduSUE3NHo0V0VGL1ZYYTRaWTdtdXE1Yy9BK2RiZzRCSzQ2K0gySHNX?=
 =?utf-8?B?U1VVbzdNZE1KZ3BOOEd0M2ZGVStVdGVHMXU3MEZhZTgrbCtYOVNiNVpZejNo?=
 =?utf-8?B?bHM4RUdnYjl5N1VOZkJzQVRsdjVHVHdDZTRJQmg3bXUzWEMwSTVQWjdXS1V5?=
 =?utf-8?B?bTBnUkpQMFJiVUhqZ2N2SjRidjcxdVEyUlZ2a2R3cloyVmpBUDFZWFJLR3lB?=
 =?utf-8?B?S3VVTUMxVzl6d2Z4OSszOTZWQko1VkYwUm5qU3N4dXFnK0RiVG5nWmdVSTdX?=
 =?utf-8?B?Q01wYzRlS215dkVjaDBhT25sRjZ0K2dvclBxajBGNnZ2Z2VYREhHanRac09S?=
 =?utf-8?B?ZXJIZjI5TnVINXI3Uzc3SnlnN0RKQ1ZmRUVFdmgvWVBvYXJ4K1RFbmwzTEdC?=
 =?utf-8?B?a0VON3dTdmhGcmRMWDh6QUZLeC9BbFIrelhZczcrYTJ0M0pZYjNlTDZpODlQ?=
 =?utf-8?B?cHhQa0xKdGlRZlB6MUlnTG1wc0VEeVp1L2toS1dMbzkwN0dzcmt4K0ZqZ3Rl?=
 =?utf-8?B?OU1tZ0kraW5GRG5iK0dWQ0dzZVlvd1NDV2d1WTRNbWEvNXJRY2FGRU10bUNP?=
 =?utf-8?B?NUllY3Z2MnkrRnRBS2s4b00xUC82OTdtU3pxUkt0ZWVBd1h0amI3V2s3b0NB?=
 =?utf-8?B?aVVaZ2liR05YYjVFc1dMZERqSFN5cDFXcU51MEF1V3RZa0thbk9lclE4WTZw?=
 =?utf-8?B?M1NWNTFWalZVbmVRRnNJakNZUytlWG9LdE1LYnI2OVg1ODAxKzJYb1ZKeGgr?=
 =?utf-8?B?RHpaTDN6cDBFdXJrdy8rdnNOUGFIcDM1UFhFbklVU0UvKzI4WVExSEJneHhV?=
 =?utf-8?B?N2xQTC9NbUg0WHJYczM3RjMwYmhTSkQrVlJzeExPZUJCZ1NNQU1DZldZUzBl?=
 =?utf-8?B?NTQyQTVVblh6VXZnbzgvZEFUL1FGMHZ1VXlXM0NzQmFkV2ZGL1R6OFNZV0tH?=
 =?utf-8?B?T2YrbUpLeFkyRjMxTXYrTktQWEFmWDBtRHRTMlM2Rk1MdU1lNFM4UVhDb3M4?=
 =?utf-8?B?NWpYMk5BVE54dk94RERTdlJIMk9raW5GUDNkNFJXYVMxMVlZRTI2dzFEMjFU?=
 =?utf-8?B?dHJnL0pNQW1iUnF5RFUrMWpvTllwcjVSRHFneGVzQ3I3TUlWNkUrNDU5QzRx?=
 =?utf-8?B?QUoyYjVxcmszb2pTMEIydjNTOUxKc3oxRS9nekY2NGlvcEZMQWd6VEp4UzFu?=
 =?utf-8?B?OFh3WldPMU8wM2RoM1lCMzFnUUtoYStLS3RzNlNMTFFZa2NvUnZTQVErYjFX?=
 =?utf-8?B?emxNUWdqY2JEVzErNStIKzhSY3pxZmFLdllPUVFhTC9rUml4dkhTS1dEVmdm?=
 =?utf-8?B?RWxLNjh1aklOZGVwSHdUMmxkNGdGcm81U0FVU0hJbk1rUnVpZngzZz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5e9114c-a98e-43af-7b0a-08debcb55f82
X-MS-Exchange-CrossTenant-AuthSource: EAYPR12MB999132.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 12:33:52.3258 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EgTZYeZxhZ8Xc++ymSU014dAsVj6C+/EosorXz0CZc3NXe52OFIfha7ZXUcj1A0ogG2JlSwdfhjq5tGm74+sqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4377
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,amd.com:email,amd.com:mid,amd.com:dkim];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arunpravin.paneerselvam@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: 2BCD55F21AF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Matthew,

We are targeting this series for inclusion in the next merge window.
Please let me know if there are any comments or concerns that need to be 
addressed.

Thanks,
Arun.

On 5/27/2026 4:59 PM, Arunpravin Paneer Selvam wrote:
> The current buddy allocator maintains separate clear_tree[] and
> dirty_tree[] rbtrees per order, preventing coalescing between cleared
> and dirty buddies. Under mixed workloads, this creates a merge barrier:
> adjacent buddies frequently end up split across trees, forcing reliance
> on __force_merge() during allocation.
>
> __force_merge() performs an O(N x max_order) scan under the VRAM manager
> lock, leading to allocation stalls and failures for large contiguous
> requests even when sufficient total free memory is available.
>
> Solution
>
> Replace the dual-tree design with:
> - A single free_tree[order] rbtree for dirty and mixed free blocks
>    (fully cleared free blocks float outside this tree)
> - A lightweight out-of-band clear tracker (gpu_clear_tracker)
>
> Fully cleared free blocks are tracked outside the buddy trees using an
> augmented interval rbtree, enabling O(log E) lookup of the largest
> cleared extents.
>
> Buddy coalescing is now unconditional in __gpu_buddy_free(), regardless
> of clear/dirty state. This removes the merge barrier and eliminates the
> need for __force_merge().
>
> Benefits
>
> - Correct high-order allocations after mixed clear/dirty workloads
> - Elimination of O(N x max_order) merge cost from the allocation path
> - O(log E) cleared-extent lookup replacing O(N) scans
> - Predictable allocation latency under fragmentation
> - Reduced complexity with a single tree per order
>
> Test:
> dEQP-VK.memory.allocation.basic.size_8KiB.reverse.count_4000
>
> Below data is from /sys/kernel/debug/dri/1/amdgpu_vram_mm:
>
> Base (dual-tree), before VKCTS test:
>    order- 6 free:   6 MiB,  blocks: 26
>    order- 5 free:   1 MiB,  blocks: 15
>    order- 4 free: 960 KiB,  blocks: 15
>    order- 3 free:   5 MiB,  blocks: 171
>    order- 2 free:   2 MiB,  blocks: 176
>    order- 1 free:   1 MiB,  blocks: 165
>    order- 0 free:  16 KiB,  blocks: 4
>
> Base (dual-tree), after VKCTS test:
>    order- 6 free: 768 KiB,  blocks: 3
>    order- 5 free: 499 MiB,  blocks: 3999
>    order- 4 free: 250 MiB,  blocks: 4001
>    order- 3 free: 129 MiB,  blocks: 4157
>    order- 2 free:  65 MiB,  blocks: 4161
>    order- 1 free:  63 MiB,  blocks: 8138
>    order- 0 free:  20 KiB,  blocks: 5
>
> Clear tracker, before VKCTS test:
>    order- 6 free:   4 MiB,  blocks: 19
>    order- 5 free:   2 MiB,  blocks: 18
>    order- 4 free: 704 KiB,  blocks: 11
>    order- 3 free:   5 MiB,  blocks: 168
>    order- 2 free:   2 MiB,  blocks: 174
>    order- 1 free:   1 MiB,  blocks: 167
>    order- 0 free:  32 KiB,  blocks: 8
>
> Clear tracker, after VKCTS test:
>    order- 6 free:   4 MiB,  blocks: 19
>    order- 5 free:   2 MiB,  blocks: 18
>    order- 4 free: 704 KiB,  blocks: 11
>    order- 3 free:   5 MiB,  blocks: 168
>    order- 2 free:   2 MiB,  blocks: 174
>    order- 1 free:   1 MiB,  blocks: 167
>    order- 0 free:  28 KiB,  blocks: 7
>
> v2:
>   - Code-style cleanup and minor refactoring
>   - Renamed locals for clarity
>
> v3:
>   - Keep cleared blocks inside free_tree[] instead of floating them.
>   - Add subtree_has_dirty rbtree augment for O(log N) dirty-first walk.
>
> v4:
>   - Fixed checkpatch warnings.
>   - Optimized gpu_buddy_reset_clear() to a single post-order walk that
>     flips block headers and recomputes the rbtree augment in one pass.
>   - Propagate subtree_max_size top-down in insert_extent() so ancestors
>     are not left with stale values on no-rotation inserts. (sashiko)
>   - Drop the whole extent in gpu_clear_tracker_mark_dirty() when the
>     inside-split allocation fails, avoiding a stale clear claim. (sashiko)
>   - Make gpu_clear_tracker_find() alignment-aware and fall back to the
>     dirty tree on steered failure to avoid spurious -ENOSPC. (sashiko)
>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Christian König <christian.koenig@amd.com>
> Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
> ---
>   drivers/gpu/buddy.c                | 1164 ++++++++++++++++++----------
>   drivers/gpu/drm/drm_buddy.c        |   12 +-
>   drivers/gpu/tests/gpu_buddy_test.c |   18 +-
>   include/linux/gpu_buddy.h          |   64 +-
>   4 files changed, 829 insertions(+), 429 deletions(-)
>
> diff --git a/drivers/gpu/buddy.c b/drivers/gpu/buddy.c
> index eb1457376307..dca66cc43959 100644
> --- a/drivers/gpu/buddy.c
> +++ b/drivers/gpu/buddy.c
> @@ -8,6 +8,7 @@
>   #include <linux/kmemleak.h>
>   #include <linux/module.h>
>   #include <linux/sizes.h>
> +#include <linux/slab.h>
>   
>   #include <linux/gpu_buddy.h>
>   
> @@ -35,6 +36,364 @@
>   
>   static struct kmem_cache *slab_blocks;
>   
> +static struct kmem_cache *slab_extents;
> +
> +/*
> + * Clear tracker
> + * -------------
> + *
> + * The clear tracker maintains an augmented interval rbtree of contiguous
> + * cleared (zeroed) address ranges, decoupled from the buddy free trees.
> + * Each node covers a maximal coalesced run; adjacent extents are merged
> + * on insertion so the tree always holds the smallest possible number of
> + * extents.  The augmentation field @subtree_max_size lets the allocator
> + * locate the largest cleared extent in O(log E).
> + */
> +
> +static u64 extent_size(struct gpu_clear_extent *clear_extent)
> +{
> +	return clear_extent->end - clear_extent->start;
> +}
> +
> +RB_DECLARE_CALLBACKS_MAX(static, gpu_clear_augment_cb,
> +			 struct gpu_clear_extent, rb,
> +			 u64, subtree_max_size,
> +			 extent_size)
> +
> +static struct gpu_clear_extent *extent_alloc(void)
> +{
> +	return kmem_cache_zalloc(slab_extents, GFP_KERNEL);
> +}
> +
> +static void extent_free(struct gpu_clear_extent *clear_extent)
> +{
> +	kmem_cache_free(slab_extents, clear_extent);
> +}
> +
> +/* Return the rightmost extent whose start is strictly below @offset. */
> +static struct gpu_clear_extent *
> +prev_extent(struct gpu_clear_tracker *clear_tracker, u64 offset)
> +{
> +	struct rb_node *rb = clear_tracker->root.rb_node;
> +	struct gpu_clear_extent *clear_extent = NULL;
> +
> +	while (rb) {
> +		struct gpu_clear_extent *tmp_extent =
> +			rb_entry(rb, struct gpu_clear_extent, rb);
> +
> +		if (tmp_extent->start < offset) {
> +			clear_extent = tmp_extent;
> +			rb = rb->rb_right;
> +		} else {
> +			rb = rb->rb_left;
> +		}
> +	}
> +
> +	return clear_extent;
> +}
> +
> +/* Return the leftmost extent whose start is at or above @offset. */
> +static struct gpu_clear_extent *
> +next_extent(struct gpu_clear_tracker *clear_tracker, u64 offset)
> +{
> +	struct rb_node *rb = clear_tracker->root.rb_node;
> +	struct gpu_clear_extent *clear_extent = NULL;
> +
> +	while (rb) {
> +		struct gpu_clear_extent *tmp_extent =
> +			rb_entry(rb, struct gpu_clear_extent, rb);
> +
> +		if (tmp_extent->start >= offset) {
> +			clear_extent = tmp_extent;
> +			rb = rb->rb_left;
> +		} else {
> +			rb = rb->rb_right;
> +		}
> +	}
> +
> +	return clear_extent;
> +}
> +
> +static void insert_extent(struct gpu_clear_tracker *clear_tracker,
> +			  struct gpu_clear_extent *clear_extent)
> +{
> +	struct rb_node **link = &clear_tracker->root.rb_node;
> +	struct rb_node *parent = NULL;
> +	u64 size = extent_size(clear_extent);
> +
> +	while (*link) {
> +		struct gpu_clear_extent *tmp_extent;
> +
> +		parent = *link;
> +		tmp_extent = rb_entry(parent, struct gpu_clear_extent, rb);
> +
> +		if (tmp_extent->subtree_max_size < size)
> +			tmp_extent->subtree_max_size = size;
> +
> +		if (clear_extent->start < tmp_extent->start)
> +			link = &parent->rb_left;
> +		else
> +			link = &parent->rb_right;
> +	}
> +
> +	clear_extent->subtree_max_size = size;
> +	rb_link_node(&clear_extent->rb, parent, link);
> +	rb_insert_augmented(&clear_extent->rb, &clear_tracker->root, &gpu_clear_augment_cb);
> +}
> +
> +static void remove_extent(struct gpu_clear_tracker *clear_tracker,
> +			  struct gpu_clear_extent *clear_extent)
> +{
> +	rb_erase_augmented(&clear_extent->rb, &clear_tracker->root, &gpu_clear_augment_cb);
> +	RB_CLEAR_NODE(&clear_extent->rb);
> +}
> +
> +static void gpu_clear_tracker_init(struct gpu_clear_tracker *clear_tracker)
> +{
> +	clear_tracker->root = RB_ROOT;
> +	clear_tracker->total_clear = 0;
> +}
> +
> +static void gpu_clear_tracker_fini(struct gpu_clear_tracker *clear_tracker)
> +{
> +	struct rb_node *rb;
> +
> +	while ((rb = rb_first(&clear_tracker->root))) {
> +		struct gpu_clear_extent *clear_extent =
> +			rb_entry(rb, struct gpu_clear_extent, rb);
> +
> +		remove_extent(clear_tracker, clear_extent);
> +		extent_free(clear_extent);
> +	}
> +
> +	clear_tracker->total_clear = 0;
> +}
> +
> +/*
> + * Mark the range [start, start + size] as cleared. Merge with the neighbour on
> + * each side if they are contiguous, so the tree never holds two adjacent ranges.
> + */
> +static void gpu_clear_tracker_mark_clear(struct gpu_clear_tracker *clear_tracker,
> +					 u64 start, u64 size)
> +{
> +	struct gpu_clear_extent *left, *right, *clear_extent;
> +	u64 end = start + size;
> +
> +	if (!size)
> +		return;
> +
> +	/* Find contiguous neighbours, if any. */
> +	left = prev_extent(clear_tracker, start);
> +	if (left && left->end != start)
> +		left = NULL;
> +
> +	right = next_extent(clear_tracker, end);
> +	if (right && right->start != end)
> +		right = NULL;
> +
> +	if (left && right) {
> +		/* Merge left + new + right into a single extent. */
> +		remove_extent(clear_tracker, left);
> +		remove_extent(clear_tracker, right);
> +		left->end = right->end;
> +		extent_free(right);
> +		insert_extent(clear_tracker, left);
> +	} else if (left) {
> +		/* Extend left neighbour rightwards. */
> +		remove_extent(clear_tracker, left);
> +		left->end = end;
> +		insert_extent(clear_tracker, left);
> +	} else if (right) {
> +		/* Extend right neighbour leftwards. */
> +		remove_extent(clear_tracker, right);
> +		right->start = start;
> +		insert_extent(clear_tracker, right);
> +	} else {
> +		/* Standalone extent. */
> +		clear_extent = extent_alloc();
> +		if (!clear_extent)
> +			return;
> +
> +		clear_extent->start = start;
> +		clear_extent->end   = end;
> +		insert_extent(clear_tracker, clear_extent);
> +	}
> +
> +	clear_tracker->total_clear += size;
> +}
> +
> +/*
> + * Mark the range [start, start + size] as dirty. Remove the range from every
> + * overlapping clear extent, splitting one extent in two if the dirty range
> + * falls strictly inside it.
> + */
> +static void gpu_clear_tracker_mark_dirty(struct gpu_clear_tracker *clear_tracker,
> +					 u64 start, u64 size)
> +{
> +	struct gpu_clear_extent *clear_extent, *next;
> +	u64 end = start + size;
> +
> +	if (!size)
> +		return;
> +
> +	clear_extent = prev_extent(clear_tracker, start + 1);
> +	if (!clear_extent)
> +		clear_extent = next_extent(clear_tracker, start);
> +
> +	while (clear_extent && clear_extent->start < end) {
> +		struct rb_node *next_node = rb_next(&clear_extent->rb);
> +		u64 extent_start = clear_extent->start;
> +		u64 extent_end = clear_extent->end;
> +
> +		if (next_node)
> +			next = rb_entry(next_node, struct gpu_clear_extent, rb);
> +		else
> +			next = NULL;
> +
> +		/* Skip a non-overlapping neighbour returned by prev_extent(). */
> +		if (extent_end <= start) {
> +			clear_extent = next;
> +			continue;
> +		}
> +
> +		if (extent_start < start && extent_end > end) {
> +			/* Dirty range falls strictly inside: split into left + right. */
> +			struct gpu_clear_extent *right = extent_alloc();
> +
> +			if (!right) {
> +				remove_extent(clear_tracker, clear_extent);
> +				extent_free(clear_extent);
> +
> +				clear_tracker->total_clear -=
> +					(extent_end - extent_start);
> +
> +				clear_extent = next;
> +				continue;
> +			}
> +
> +			remove_extent(clear_tracker, clear_extent);
> +
> +			clear_extent->end = start;
> +			right->start = end;
> +			right->end   = extent_end;
> +
> +			insert_extent(clear_tracker, clear_extent);
> +			insert_extent(clear_tracker, right);
> +
> +			clear_tracker->total_clear -= size;
> +		} else if (extent_start >= start && extent_end <= end) {
> +			/* Extent fully covered: drop it. */
> +			remove_extent(clear_tracker, clear_extent);
> +			extent_free(clear_extent);
> +
> +			clear_tracker->total_clear -= (extent_end - extent_start);
> +		} else if (extent_start < start) {
> +			/* Extent overlaps from the left: trim its right end. */
> +			remove_extent(clear_tracker, clear_extent);
> +			clear_extent->end = start;
> +			insert_extent(clear_tracker, clear_extent);
> +
> +			clear_tracker->total_clear -= (extent_end - start);
> +		} else {
> +			/* Extent overlaps from the right: trim its left end. */
> +			remove_extent(clear_tracker, clear_extent);
> +			clear_extent->start = end;
> +			insert_extent(clear_tracker, clear_extent);
> +
> +			clear_tracker->total_clear -= (end - extent_start);
> +		}
> +
> +		clear_extent = next;
> +	}
> +}
> +
> +/*
> + * Returns true if the range [start, start + size] lies entirely within
> + * a single clear extent in the tracker, i.e. the whole range is known
> + * to be cleared.
> + */
> +static bool gpu_clear_tracker_is_clear(struct gpu_clear_tracker *clear_tracker,
> +				       u64 start, u64 size)
> +{
> +	struct gpu_clear_extent *clear_extent;
> +	u64 end = start + size;
> +
> +	clear_extent = prev_extent(clear_tracker, start + 1);
> +	if (!clear_extent)
> +		return false;
> +
> +	return clear_extent->start <= start && clear_extent->end >= end;
> +}
> +
> +static struct rb_node *
> +clear_tracker_descend_right(struct rb_node *node, u64 min_size)
> +{
> +	while (node->rb_right) {
> +		struct gpu_clear_extent *tmp_extent;
> +
> +		tmp_extent = rb_entry(node->rb_right, struct gpu_clear_extent, rb);
> +
> +		if (tmp_extent->subtree_max_size < min_size)
> +			break;
> +		node = node->rb_right;
> +	}
> +
> +	return node;
> +}
> +
> +static struct gpu_clear_extent *
> +gpu_clear_tracker_find(struct gpu_clear_tracker *clear_tracker, u64 min_size)
> +{
> +	struct rb_node *rb = clear_tracker->root.rb_node;
> +	struct gpu_clear_extent *root_extent;
> +	struct rb_node *parent;
> +
> +	if (WARN_ON(!min_size || !is_power_of_2(min_size)))
> +		return NULL;
> +
> +	if (!rb)
> +		return NULL;
> +
> +	root_extent = rb_entry(rb, struct gpu_clear_extent, rb);
> +	if (root_extent->subtree_max_size < min_size)
> +		return NULL;
> +
> +	rb = clear_tracker_descend_right(rb, min_size);
> +
> +	while (rb) {
> +		struct gpu_clear_extent *clear_extent;
> +		u64 aligned_start;
> +
> +		clear_extent = rb_entry(rb, struct gpu_clear_extent, rb);
> +		aligned_start = ALIGN(clear_extent->start, min_size);
> +
> +		/* Check if a naturally aligned min_size block fits. */
> +		if (aligned_start <= clear_extent->end &&
> +		    clear_extent->end - aligned_start >= min_size)
> +			return clear_extent;
> +
> +		if (rb->rb_left) {
> +			struct gpu_clear_extent *tmp_extent;
> +
> +			tmp_extent = rb_entry(rb->rb_left, struct gpu_clear_extent, rb);
> +			if (tmp_extent->subtree_max_size >= min_size) {
> +				rb = clear_tracker_descend_right(rb->rb_left, min_size);
> +				continue;
> +			}
> +		}
> +
> +		/* Walk up until we exit a node via its right child. */
> +		parent = rb_parent(rb);
> +		while (parent && parent->rb_right != rb) {
> +			rb = parent;
> +			parent = rb_parent(rb);
> +		}
> +		rb = parent;
> +	}
> +
> +	return NULL;
> +}
> +
>   static unsigned int
>   gpu_buddy_block_state(struct gpu_buddy_block *block)
>   {
> @@ -67,10 +426,93 @@ static unsigned int gpu_buddy_block_offset_alignment(struct gpu_buddy_block *blo
>   	return __ffs64(offset);
>   }
>   
> -RB_DECLARE_CALLBACKS_MAX(static, gpu_buddy_augment_cb,
> -			 struct gpu_buddy_block, rb,
> -			 unsigned int, subtree_max_alignment,
> -			 gpu_buddy_block_offset_alignment);
> +static inline bool
> +gpu_buddy_block_is_dirty(struct gpu_buddy_block *block)
> +{
> +	return !gpu_buddy_block_is_clear(block);
> +}
> +
> +static inline void gpu_buddy_augment_compute(struct gpu_buddy_block *block)
> +{
> +	struct gpu_buddy_block *right;
> +	struct gpu_buddy_block *left;
> +	unsigned int max_align;
> +	bool has_dirty;
> +
> +	max_align = gpu_buddy_block_offset_alignment(block);
> +	has_dirty = gpu_buddy_block_is_dirty(block);
> +
> +	left = rb_entry_safe(block->rb.rb_left, struct gpu_buddy_block, rb);
> +	if (left) {
> +		if (left->subtree_max_alignment > max_align)
> +			max_align = left->subtree_max_alignment;
> +
> +		has_dirty |= left->subtree_has_dirty;
> +	}
> +
> +	right = rb_entry_safe(block->rb.rb_right, struct gpu_buddy_block, rb);
> +	if (right) {
> +		if (right->subtree_max_alignment > max_align)
> +			max_align = right->subtree_max_alignment;
> +
> +		has_dirty |= right->subtree_has_dirty;
> +	}
> +
> +	block->subtree_max_alignment = max_align;
> +	block->subtree_has_dirty = has_dirty;
> +}
> +
> +static void gpu_buddy_augment_propagate(struct rb_node *rb, struct rb_node *stop)
> +{
> +	while (rb != stop) {
> +		struct gpu_buddy_block *block;
> +		unsigned int old_align;
> +		bool old_has_dirty;
> +
> +		block = rb_entry(rb, struct gpu_buddy_block, rb);
> +		old_align = block->subtree_max_alignment;
> +		old_has_dirty = block->subtree_has_dirty;
> +
> +		gpu_buddy_augment_compute(block);
> +		if (block->subtree_max_alignment == old_align &&
> +		    block->subtree_has_dirty == old_has_dirty)
> +			break;
> +
> +		rb = rb_parent(&block->rb);
> +	}
> +}
> +
> +static void gpu_buddy_augment_copy(struct rb_node *rb_old, struct rb_node *rb_new)
> +{
> +	struct gpu_buddy_block *old;
> +	struct gpu_buddy_block *new;
> +
> +	old = rb_entry(rb_old, struct gpu_buddy_block, rb);
> +	new = rb_entry(rb_new, struct gpu_buddy_block, rb);
> +
> +	new->subtree_max_alignment = old->subtree_max_alignment;
> +	new->subtree_has_dirty = old->subtree_has_dirty;
> +}
> +
> +static void gpu_buddy_augment_rotate(struct rb_node *rb_old, struct rb_node *rb_new)
> +{
> +	struct gpu_buddy_block *old;
> +	struct gpu_buddy_block *new;
> +
> +	old = rb_entry(rb_old, struct gpu_buddy_block, rb);
> +	new = rb_entry(rb_new, struct gpu_buddy_block, rb);
> +
> +	new->subtree_max_alignment = old->subtree_max_alignment;
> +	new->subtree_has_dirty = old->subtree_has_dirty;
> +
> +	gpu_buddy_augment_compute(old);
> +}
> +
> +static const struct rb_augment_callbacks gpu_buddy_augment_cb = {
> +	.propagate = gpu_buddy_augment_propagate,
> +	.copy      = gpu_buddy_augment_copy,
> +	.rotate    = gpu_buddy_augment_rotate,
> +};
>   
>   static struct gpu_buddy_block *gpu_block_alloc(struct gpu_buddy *mm,
>   					       struct gpu_buddy_block *parent,
> @@ -101,13 +543,6 @@ static void gpu_block_free(struct gpu_buddy *mm,
>   	kmem_cache_free(slab_blocks, block);
>   }
>   
> -static enum gpu_buddy_free_tree
> -get_block_tree(struct gpu_buddy_block *block)
> -{
> -	return gpu_buddy_block_is_clear(block) ?
> -	       GPU_BUDDY_CLEAR_TREE : GPU_BUDDY_DIRTY_TREE;
> -}
> -
>   static struct gpu_buddy_block *
>   rbtree_get_free_block(const struct rb_node *node)
>   {
> @@ -120,24 +555,61 @@ rbtree_last_free_block(struct rb_root *root)
>   	return rbtree_get_free_block(rb_last(root));
>   }
>   
> -static bool rbtree_is_empty(struct rb_root *root)
> +/*
> + * Find the rightmost (highest-offset) free block in @root that is itself
> + * dirty, by descending the tree using the subtree_has_dirty augment to
> + * skip subtrees that contain only cleared blocks.  Returns NULL if no
> + * dirty block exists in the tree.
> + */
> +static struct gpu_buddy_block *
> +rbtree_last_dirty_free_block(struct rb_root *root)
>   {
> -	return RB_EMPTY_ROOT(root);
> +	struct gpu_buddy_block *block = NULL;
> +	struct rb_node *node = root->rb_node;
> +
> +	while (node) {
> +		struct gpu_buddy_block *right_block;
> +		struct gpu_buddy_block *node_block;
> +
> +		node_block = rbtree_get_free_block(node);
> +		right_block = rbtree_get_free_block(node->rb_right);
> +
> +		/*
> +		 * Prefer the rightmost subtree that contains a dirty block;
> +		 * fall back to the current node if it is itself dirty;
> +		 * otherwise descend left.
> +		 */
> +		if (right_block && right_block->subtree_has_dirty) {
> +			node = node->rb_right;
> +			continue;
> +		}
> +
> +		if (gpu_buddy_block_is_dirty(node_block)) {
> +			block = node_block;
> +			break;
> +		}
> +
> +		node = node->rb_left;
> +	}
> +
> +	return block;
>   }
>   
>   static void rbtree_insert(struct gpu_buddy *mm,
> -			  struct gpu_buddy_block *block,
> -			  enum gpu_buddy_free_tree tree)
> +			  struct gpu_buddy_block *block)
>   {
>   	struct rb_node **link, *parent = NULL;
> -	unsigned int block_alignment, order;
>   	struct gpu_buddy_block *node;
> +	unsigned int block_alignment;
>   	struct rb_root *root;
> +	unsigned int order;
> +	bool block_dirty;
>   
>   	order = gpu_buddy_block_order(block);
>   	block_alignment = gpu_buddy_block_offset_alignment(block);
> +	block_dirty = gpu_buddy_block_is_dirty(block);
>   
> -	root = &mm->free_trees[tree][order];
> +	root = &mm->free_tree[order];
>   	link = &root->rb_node;
>   
>   	while (*link) {
> @@ -147,10 +619,12 @@ static void rbtree_insert(struct gpu_buddy *mm,
>   		 * Manual augmentation update during insertion traversal. Required
>   		 * because rb_insert_augmented() only calls rotate callback during
>   		 * rotations. This ensures all ancestors on the insertion path have
> -		 * correct subtree_max_alignment values.
> +		 * correct subtree_max_alignment / subtree_has_dirty values.
>   		 */
>   		if (node->subtree_max_alignment < block_alignment)
>   			node->subtree_max_alignment = block_alignment;
> +		if (block_dirty)
> +			node->subtree_has_dirty = true;
>   
>   		if (gpu_buddy_block_offset(block) < gpu_buddy_block_offset(node))
>   			link = &parent->rb_left;
> @@ -159,6 +633,7 @@ static void rbtree_insert(struct gpu_buddy *mm,
>   	}
>   
>   	block->subtree_max_alignment = block_alignment;
> +	block->subtree_has_dirty = block_dirty;
>   	rb_link_node(&block->rb, parent, link);
>   	rb_insert_augmented(&block->rb, root, &gpu_buddy_augment_cb);
>   }
> @@ -167,26 +642,11 @@ static void rbtree_remove(struct gpu_buddy *mm,
>   			  struct gpu_buddy_block *block)
>   {
>   	unsigned int order = gpu_buddy_block_order(block);
> -	enum gpu_buddy_free_tree tree;
> -	struct rb_root *root;
> -
> -	tree = get_block_tree(block);
> -	root = &mm->free_trees[tree][order];
>   
> -	rb_erase_augmented(&block->rb, root, &gpu_buddy_augment_cb);
> +	rb_erase_augmented(&block->rb, &mm->free_tree[order], &gpu_buddy_augment_cb);
>   	RB_CLEAR_NODE(&block->rb);
>   }
>   
> -static void clear_reset(struct gpu_buddy_block *block)
> -{
> -	block->header &= ~GPU_BUDDY_HEADER_CLEAR;
> -}
> -
> -static void mark_cleared(struct gpu_buddy_block *block)
> -{
> -	block->header |= GPU_BUDDY_HEADER_CLEAR;
> -}
> -
>   static void mark_allocated(struct gpu_buddy *mm,
>   			   struct gpu_buddy_block *block)
>   {
> @@ -199,13 +659,17 @@ static void mark_allocated(struct gpu_buddy *mm,
>   static void mark_free(struct gpu_buddy *mm,
>   		      struct gpu_buddy_block *block)
>   {
> -	enum gpu_buddy_free_tree tree;
> -
>   	block->header &= ~GPU_BUDDY_HEADER_STATE;
>   	block->header |= GPU_BUDDY_FREE;
>   
> -	tree = get_block_tree(block);
> -	rbtree_insert(mm, block, tree);
> +	if (gpu_clear_tracker_is_clear(&mm->clear,
> +				       gpu_buddy_block_offset(block),
> +				       gpu_buddy_block_size(mm, block)))
> +		block->header |= GPU_BUDDY_HEADER_CLEAR;
> +	else
> +		block->header &= ~GPU_BUDDY_HEADER_CLEAR;
> +
> +	rbtree_insert(mm, block);
>   }
>   
>   static void mark_split(struct gpu_buddy *mm,
> @@ -243,36 +707,18 @@ __get_buddy(struct gpu_buddy_block *block)
>   }
>   
>   static unsigned int __gpu_buddy_free(struct gpu_buddy *mm,
> -				     struct gpu_buddy_block *block,
> -				     bool force_merge)
> +				     struct gpu_buddy_block *block)
>   {
>   	struct gpu_buddy_block *parent;
>   	unsigned int order;
>   
>   	while ((parent = block->parent)) {
> -		struct gpu_buddy_block *buddy;
> -
> -		buddy = __get_buddy(block);
> +		struct gpu_buddy_block *buddy = __get_buddy(block);
>   
>   		if (!gpu_buddy_block_is_free(buddy))
>   			break;
>   
> -		if (!force_merge) {
> -			/*
> -			 * Check the block and its buddy clear state and exit
> -			 * the loop if they both have the dissimilar state.
> -			 */
> -			if (gpu_buddy_block_is_clear(block) !=
> -			    gpu_buddy_block_is_clear(buddy))
> -				break;
> -
> -			if (gpu_buddy_block_is_clear(block))
> -				mark_cleared(parent);
> -		}
> -
>   		rbtree_remove(mm, buddy);
> -		if (force_merge && gpu_buddy_block_is_clear(buddy))
> -			mm->clear_avail -= gpu_buddy_block_size(mm, buddy);
>   
>   		gpu_block_free(mm, block);
>   		gpu_block_free(mm, buddy);
> @@ -286,66 +732,15 @@ static unsigned int __gpu_buddy_free(struct gpu_buddy *mm,
>   	return order;
>   }
>   
> -static int __force_merge(struct gpu_buddy *mm,
> -			 u64 start,
> -			 u64 end,
> -			 unsigned int min_order)
> +static void undo_partial_split(struct gpu_buddy *mm,
> +			       struct gpu_buddy_block *block)
>   {
> -	unsigned int tree, order;
> -	int i;
> +	struct gpu_buddy_block *buddy = __get_buddy(block);
>   
> -	if (!min_order)
> -		return -ENOMEM;
> -
> -	if (min_order > mm->max_order)
> -		return -EINVAL;
> -
> -	for_each_free_tree(tree) {
> -		for (i = min_order - 1; i >= 0; i--) {
> -			struct rb_node *iter = rb_last(&mm->free_trees[tree][i]);
> -
> -			while (iter) {
> -				struct gpu_buddy_block *block, *buddy;
> -				u64 block_start, block_end;
> -
> -				block = rbtree_get_free_block(iter);
> -				iter = rb_prev(iter);
> -
> -				if (!block || !block->parent)
> -					continue;
> -
> -				block_start = gpu_buddy_block_offset(block);
> -				block_end = block_start + gpu_buddy_block_size(mm, block) - 1;
> -
> -				if (!contains(start, end, block_start, block_end))
> -					continue;
> -
> -				buddy = __get_buddy(block);
> -				if (!gpu_buddy_block_is_free(buddy))
> -					continue;
> -
> -				gpu_buddy_assert(gpu_buddy_block_is_clear(block) !=
> -						 gpu_buddy_block_is_clear(buddy));
> -
> -				/*
> -				 * Advance to the next node when the current node is the buddy,
> -				 * as freeing the block will also remove its buddy from the tree.
> -				 */
> -				if (iter == &buddy->rb)
> -					iter = rb_prev(iter);
> -
> -				rbtree_remove(mm, block);
> -				if (gpu_buddy_block_is_clear(block))
> -					mm->clear_avail -= gpu_buddy_block_size(mm, block);
> -
> -				order = __gpu_buddy_free(mm, block, true);
> -				if (order >= min_order)
> -					return 0;
> -			}
> -		}
> -	}
> -
> -	return -ENOMEM;
> +	if (buddy &&
> +	    gpu_buddy_block_is_free(block) &&
> +	    gpu_buddy_block_is_free(buddy))
> +		__gpu_buddy_free(mm, block);
>   }
>   
>   /**
> @@ -362,7 +757,7 @@ static int __force_merge(struct gpu_buddy *mm,
>    */
>   int gpu_buddy_init(struct gpu_buddy *mm, u64 size, u64 chunk_size)
>   {
> -	unsigned int i, j, root_count = 0;
> +	unsigned int root_count = 0;
>   	u64 offset = 0;
>   
>   	if (size < chunk_size)
> @@ -384,22 +779,13 @@ int gpu_buddy_init(struct gpu_buddy *mm, u64 size, u64 chunk_size)
>   
>   	BUG_ON(mm->max_order > GPU_BUDDY_MAX_ORDER);
>   
> -	mm->free_trees = kmalloc_array(GPU_BUDDY_MAX_FREE_TREES,
> -				       sizeof(*mm->free_trees),
> -				       GFP_KERNEL);
> -	if (!mm->free_trees)
> +	mm->free_tree = kcalloc(mm->max_order + 1,
> +				sizeof(struct rb_root),
> +				GFP_KERNEL);
> +	if (!mm->free_tree)
>   		return -ENOMEM;
>   
> -	for_each_free_tree(i) {
> -		mm->free_trees[i] = kmalloc_array(mm->max_order + 1,
> -						  sizeof(struct rb_root),
> -						  GFP_KERNEL);
> -		if (!mm->free_trees[i])
> -			goto out_free_tree;
> -
> -		for (j = 0; j <= mm->max_order; ++j)
> -			mm->free_trees[i][j] = RB_ROOT;
> -	}
> +	gpu_clear_tracker_init(&mm->clear);
>   
>   	mm->n_roots = hweight64(size);
>   
> @@ -447,9 +833,8 @@ int gpu_buddy_init(struct gpu_buddy *mm, u64 size, u64 chunk_size)
>   		gpu_block_free(mm, mm->roots[root_count]);
>   	kfree(mm->roots);
>   out_free_tree:
> -	while (i--)
> -		kfree(mm->free_trees[i]);
> -	kfree(mm->free_trees);
> +	gpu_clear_tracker_fini(&mm->clear);
> +	kfree(mm->free_tree);
>   	return -ENOMEM;
>   }
>   EXPORT_SYMBOL(gpu_buddy_init);
> @@ -463,7 +848,7 @@ EXPORT_SYMBOL(gpu_buddy_init);
>    */
>   void gpu_buddy_fini(struct gpu_buddy *mm)
>   {
> -	u64 root_size, size, start;
> +	u64 root_size, size;
>   	unsigned int order;
>   	int i;
>   
> @@ -471,22 +856,17 @@ void gpu_buddy_fini(struct gpu_buddy *mm)
>   
>   	for (i = 0; i < mm->n_roots; ++i) {
>   		order = ilog2(size) - ilog2(mm->chunk_size);
> -		start = gpu_buddy_block_offset(mm->roots[i]);
> -		__force_merge(mm, start, start + size, order);
> +		root_size = mm->chunk_size << order;
>   
>   		gpu_buddy_assert(gpu_buddy_block_is_free(mm->roots[i]));
> -
>   		gpu_block_free(mm, mm->roots[i]);
> -
> -		root_size = mm->chunk_size << order;
>   		size -= root_size;
>   	}
>   
>   	gpu_buddy_assert(mm->avail == mm->size);
>   
> -	for_each_free_tree(i)
> -		kfree(mm->free_trees[i]);
> -	kfree(mm->free_trees);
> +	gpu_clear_tracker_fini(&mm->clear);
> +	kfree(mm->free_tree);
>   	kfree(mm->roots);
>   }
>   EXPORT_SYMBOL(gpu_buddy_fini);
> @@ -512,13 +892,6 @@ static int split_block(struct gpu_buddy *mm,
>   	}
>   
>   	mark_split(mm, block);
> -
> -	if (gpu_buddy_block_is_clear(block)) {
> -		mark_cleared(block->left);
> -		mark_cleared(block->right);
> -		clear_reset(block);
> -	}
> -
>   	mark_free(mm, block->left);
>   	mark_free(mm, block->right);
>   
> @@ -536,42 +909,33 @@ static int split_block(struct gpu_buddy *mm,
>    */
>   void gpu_buddy_reset_clear(struct gpu_buddy *mm, bool is_clear)
>   {
> -	enum gpu_buddy_free_tree src_tree, dst_tree;
> -	u64 root_size, size, start;
> -	unsigned int order;
> -	int i;
> +	unsigned int i;
>   
>   	gpu_buddy_driver_lock_held(mm);
> -	size = mm->size;
> -	for (i = 0; i < mm->n_roots; ++i) {
> -		order = ilog2(size) - ilog2(mm->chunk_size);
> -		start = gpu_buddy_block_offset(mm->roots[i]);
> -		__force_merge(mm, start, start + size, order);
> -
> -		root_size = mm->chunk_size << order;
> -		size -= root_size;
> -	}
>   
> -	src_tree = is_clear ? GPU_BUDDY_DIRTY_TREE : GPU_BUDDY_CLEAR_TREE;
> -	dst_tree = is_clear ? GPU_BUDDY_CLEAR_TREE : GPU_BUDDY_DIRTY_TREE;
> +	gpu_clear_tracker_fini(&mm->clear);
> +	gpu_clear_tracker_init(&mm->clear);
>   
>   	for (i = 0; i <= mm->max_order; ++i) {
> -		struct rb_root *root = &mm->free_trees[src_tree][i];
>   		struct gpu_buddy_block *block, *tmp;
>   
> -		rbtree_postorder_for_each_entry_safe(block, tmp, root, rb) {
> -			rbtree_remove(mm, block);
> +		rbtree_postorder_for_each_entry_safe(block, tmp,
> +						     &mm->free_tree[i], rb) {
>   			if (is_clear) {
> -				mark_cleared(block);
> -				mm->clear_avail += gpu_buddy_block_size(mm, block);
> -			} else {
> -				clear_reset(block);
> -				mm->clear_avail -= gpu_buddy_block_size(mm, block);
> +				if (!gpu_buddy_block_is_clear(block))
> +					block->header |= GPU_BUDDY_HEADER_CLEAR;
> +				gpu_clear_tracker_mark_clear(&mm->clear,
> +							     gpu_buddy_block_offset(block),
> +							     gpu_buddy_block_size(mm, block));
> +			} else if (gpu_buddy_block_is_clear(block)) {
> +				block->header &= ~GPU_BUDDY_HEADER_CLEAR;
>   			}
>   
> -			rbtree_insert(mm, block, dst_tree);
> +			gpu_buddy_augment_compute(block);
>   		}
>   	}
> +
> +	mm->clear_avail = mm->clear.total_clear;
>   }
>   EXPORT_SYMBOL(gpu_buddy_reset_clear);
>   
> @@ -584,13 +948,23 @@ EXPORT_SYMBOL(gpu_buddy_reset_clear);
>   void gpu_buddy_free_block(struct gpu_buddy *mm,
>   			  struct gpu_buddy_block *block)
>   {
> +	bool was_clear = gpu_buddy_block_is_clear(block);
> +	u64 size   = gpu_buddy_block_size(mm, block);
> +	u64 offset = gpu_buddy_block_offset(block);
> +
>   	gpu_buddy_driver_lock_held(mm);
> +
>   	BUG_ON(!gpu_buddy_block_is_allocated(block));
> -	mm->avail += gpu_buddy_block_size(mm, block);
> -	if (gpu_buddy_block_is_clear(block))
> -		mm->clear_avail += gpu_buddy_block_size(mm, block);
>   
> -	__gpu_buddy_free(mm, block, false);
> +	block->header &= ~GPU_BUDDY_HEADER_CLEAR;
> +	mm->avail += size;
> +
> +	if (was_clear) {
> +		gpu_clear_tracker_mark_clear(&mm->clear, offset, size);
> +		mm->clear_avail = mm->clear.total_clear;
> +	}
> +
> +	__gpu_buddy_free(mm, block);
>   }
>   EXPORT_SYMBOL(gpu_buddy_free_block);
>   
> @@ -604,10 +978,15 @@ static void __gpu_buddy_free_list(struct gpu_buddy *mm,
>   	gpu_buddy_assert(!(mark_dirty && mark_clear));
>   
>   	list_for_each_entry_safe(block, on, objects, link) {
> +		/*
> +		 * Propagate the caller's clear/dirty intent onto the block header
> +		 * before handing it to gpu_buddy_free_block(), which will then
> +		 * update the clear tracker accordingly.
> +		 */
>   		if (mark_clear)
> -			mark_cleared(block);
> +			block->header |= GPU_BUDDY_HEADER_CLEAR;
>   		else if (mark_dirty)
> -			clear_reset(block);
> +			block->header &= ~GPU_BUDDY_HEADER_CLEAR;
>   		gpu_buddy_free_block(mm, block);
>   		cond_resched();
>   	}
> @@ -643,23 +1022,14 @@ void gpu_buddy_free_list(struct gpu_buddy *mm,
>   }
>   EXPORT_SYMBOL(gpu_buddy_free_list);
>   
> -static bool block_incompatible(struct gpu_buddy_block *block, unsigned int flags)
> -{
> -	bool needs_clear = flags & GPU_BUDDY_CLEAR_ALLOCATION;
> -
> -	return needs_clear != gpu_buddy_block_is_clear(block);
> -}
> -
>   static struct gpu_buddy_block *
>   __alloc_range_bias(struct gpu_buddy *mm,
>   		   u64 start, u64 end,
>   		   unsigned int order,
> -		   unsigned long flags,
> -		   bool fallback)
> +		   unsigned long flags)
>   {
>   	u64 req_size = mm->chunk_size << order;
>   	struct gpu_buddy_block *block;
> -	struct gpu_buddy_block *buddy;
>   	LIST_HEAD(dfs);
>   	int err;
>   	int i;
> @@ -702,9 +1072,6 @@ __alloc_range_bias(struct gpu_buddy *mm,
>   				continue;
>   		}
>   
> -		if (!fallback && block_incompatible(block, flags))
> -			continue;
> -
>   		if (contains(start, end, block_start, block_end) &&
>   		    order == gpu_buddy_block_order(block)) {
>   			/*
> @@ -722,68 +1089,55 @@ __alloc_range_bias(struct gpu_buddy *mm,
>   				goto err_undo;
>   		}
>   
> -		list_add(&block->right->tmp_link, &dfs);
>   		list_add(&block->left->tmp_link, &dfs);
> +		list_add(&block->right->tmp_link, &dfs);
>   	} while (1);
>   
>   	return ERR_PTR(-ENOSPC);
>   
>   err_undo:
> -	/*
> -	 * We really don't want to leave around a bunch of split blocks, since
> -	 * bigger is better, so make sure we merge everything back before we
> -	 * free the allocated blocks.
> -	 */
> -	buddy = __get_buddy(block);
> -	if (buddy &&
> -	    (gpu_buddy_block_is_free(block) &&
> -	     gpu_buddy_block_is_free(buddy)))
> -		__gpu_buddy_free(mm, block, false);
> +	undo_partial_split(mm, block);
>   	return ERR_PTR(err);
>   }
>   
> -static struct gpu_buddy_block *
> -__gpu_buddy_alloc_range_bias(struct gpu_buddy *mm,
> -			     u64 start, u64 end,
> -			     unsigned int order,
> -			     unsigned long flags)
> -{
> -	struct gpu_buddy_block *block;
> -	bool fallback = false;
> -
> -	block = __alloc_range_bias(mm, start, end, order,
> -				   flags, fallback);
> -	if (IS_ERR(block))
> -		return __alloc_range_bias(mm, start, end, order,
> -					  flags, !fallback);
> -
> -	return block;
> -}
> -
>   static struct gpu_buddy_block *
>   get_maxblock(struct gpu_buddy *mm,
>   	     unsigned int order,
> -	     enum gpu_buddy_free_tree tree)
> +	     unsigned long flags)
>   {
> -	struct gpu_buddy_block *max_block = NULL, *block = NULL;
> -	struct rb_root *root;
> +	struct gpu_buddy_block *max_block;
> +	struct gpu_buddy_block *block;
> +	bool prefer_clear;
>   	unsigned int i;
>   
> +	max_block = NULL;
> +	prefer_clear = flags & GPU_BUDDY_CLEAR_ALLOCATION;
> +
>   	for (i = order; i <= mm->max_order; ++i) {
> -		root = &mm->free_trees[tree][i];
> -		block = rbtree_last_free_block(root);
> +		if (prefer_clear)
> +			block = rbtree_last_free_block(&mm->free_tree[i]);
> +		else
> +			block = rbtree_last_dirty_free_block(&mm->free_tree[i]);
> +
>   		if (!block)
>   			continue;
>   
> -		if (!max_block) {
> +		if (!max_block ||
> +		    gpu_buddy_block_offset(block) > gpu_buddy_block_offset(max_block))
>   			max_block = block;
> +	}
> +
> +	if (max_block || prefer_clear)
> +		return max_block;
> +
> +	for (i = order; i <= mm->max_order; ++i) {
> +		block = rbtree_last_free_block(&mm->free_tree[i]);
> +		if (!block)
>   			continue;
> -		}
>   
> -		if (gpu_buddy_block_offset(block) >
> -		    gpu_buddy_block_offset(max_block)) {
> +		if (!max_block ||
> +		    gpu_buddy_block_offset(block) > gpu_buddy_block_offset(max_block))
>   			max_block = block;
> -		}
>   	}
>   
>   	return max_block;
> @@ -795,45 +1149,37 @@ alloc_from_freetree(struct gpu_buddy *mm,
>   		    unsigned long flags)
>   {
>   	struct gpu_buddy_block *block = NULL;
> -	struct rb_root *root;
> -	enum gpu_buddy_free_tree tree;
>   	unsigned int tmp;
>   	int err;
>   
> -	tree = (flags & GPU_BUDDY_CLEAR_ALLOCATION) ?
> -		GPU_BUDDY_CLEAR_TREE : GPU_BUDDY_DIRTY_TREE;
> -
>   	if (flags & GPU_BUDDY_TOPDOWN_ALLOCATION) {
> -		block = get_maxblock(mm, order, tree);
> +		block = get_maxblock(mm, order, flags);
>   		if (block)
> -			/* Store the obtained block order */
>   			tmp = gpu_buddy_block_order(block);
> -	} else {
> +	} else if (!(flags & GPU_BUDDY_CLEAR_ALLOCATION)) {
>   		for (tmp = order; tmp <= mm->max_order; ++tmp) {
> -			/* Get RB tree root for this order and tree */
> -			root = &mm->free_trees[tree][tmp];
> -			block = rbtree_last_free_block(root);
> +			block = rbtree_last_dirty_free_block(&mm->free_tree[tmp]);
>   			if (block)
>   				break;
>   		}
> -	}
> -
> -	if (!block) {
> -		/* Try allocating from the other tree */
> -		tree = (tree == GPU_BUDDY_CLEAR_TREE) ?
> -			GPU_BUDDY_DIRTY_TREE : GPU_BUDDY_CLEAR_TREE;
> -
> +		if (!block) {
> +			for (tmp = order; tmp <= mm->max_order; ++tmp) {
> +				block = rbtree_last_free_block(&mm->free_tree[tmp]);
> +				if (block)
> +					break;
> +			}
> +		}
> +	} else {
>   		for (tmp = order; tmp <= mm->max_order; ++tmp) {
> -			root = &mm->free_trees[tree][tmp];
> -			block = rbtree_last_free_block(root);
> +			block = rbtree_last_free_block(&mm->free_tree[tmp]);
>   			if (block)
>   				break;
>   		}
> -
> -		if (!block)
> -			return ERR_PTR(-ENOSPC);
>   	}
>   
> +	if (!block)
> +		return ERR_PTR(-ENOSPC);
> +
>   	BUG_ON(!gpu_buddy_block_is_free(block));
>   
>   	while (tmp != order) {
> @@ -841,14 +1187,18 @@ alloc_from_freetree(struct gpu_buddy *mm,
>   		if (unlikely(err))
>   			goto err_undo;
>   
> -		block = block->right;
> +		if (!(flags & GPU_BUDDY_CLEAR_ALLOCATION) &&
> +		    gpu_buddy_block_is_clear(block->right))
> +			block = block->left;
> +		else
> +			block = block->right;
>   		tmp--;
>   	}
>   	return block;
>   
>   err_undo:
>   	if (tmp != order)
> -		__gpu_buddy_free(mm, block, false);
> +		__gpu_buddy_free(mm, block);
>   	return ERR_PTR(err);
>   }
>   
> @@ -869,12 +1219,11 @@ static bool gpu_buddy_subtree_can_satisfy(struct rb_node *node,
>   
>   static struct gpu_buddy_block *
>   gpu_buddy_find_block_aligned(struct gpu_buddy *mm,
> -			     enum gpu_buddy_free_tree tree,
>   			     unsigned int order,
>   			     unsigned int alignment,
>   			     unsigned long flags)
>   {
> -	struct rb_root *root = &mm->free_trees[tree][order];
> +	struct rb_root *root = &mm->free_tree[order];
>   	struct rb_node *rb = root->rb_node;
>   
>   	while (rb) {
> @@ -912,8 +1261,6 @@ gpu_buddy_offset_aligned_allocation(struct gpu_buddy *mm,
>   {
>   	struct gpu_buddy_block *block = NULL;
>   	unsigned int order, tmp, alignment;
> -	struct gpu_buddy_block *buddy;
> -	enum gpu_buddy_free_tree tree;
>   	unsigned long pages;
>   	int err;
>   
> @@ -921,19 +1268,8 @@ gpu_buddy_offset_aligned_allocation(struct gpu_buddy *mm,
>   	pages = size >> ilog2(mm->chunk_size);
>   	order = fls(pages) - 1;
>   
> -	tree = (flags & GPU_BUDDY_CLEAR_ALLOCATION) ?
> -		GPU_BUDDY_CLEAR_TREE : GPU_BUDDY_DIRTY_TREE;
> -
>   	for (tmp = order; tmp <= mm->max_order; ++tmp) {
> -		block = gpu_buddy_find_block_aligned(mm, tree, tmp,
> -						     alignment, flags);
> -		if (!block) {
> -			tree = (tree == GPU_BUDDY_CLEAR_TREE) ?
> -				GPU_BUDDY_DIRTY_TREE : GPU_BUDDY_CLEAR_TREE;
> -			block = gpu_buddy_find_block_aligned(mm, tree, tmp,
> -							     alignment, flags);
> -		}
> -
> +		block = gpu_buddy_find_block_aligned(mm, tmp, alignment, flags);
>   		if (block)
>   			break;
>   	}
> @@ -960,27 +1296,18 @@ gpu_buddy_offset_aligned_allocation(struct gpu_buddy *mm,
>   	return block;
>   
>   err_undo:
> -	/*
> -	 * We really don't want to leave around a bunch of split blocks, since
> -	 * bigger is better, so make sure we merge everything back before we
> -	 * free the allocated blocks.
> -	 */
> -	buddy = __get_buddy(block);
> -	if (buddy &&
> -	    (gpu_buddy_block_is_free(block) &&
> -	     gpu_buddy_block_is_free(buddy)))
> -		__gpu_buddy_free(mm, block, false);
> +	undo_partial_split(mm, block);
>   	return ERR_PTR(err);
>   }
>   
>   static int __alloc_range(struct gpu_buddy *mm,
>   			 struct list_head *dfs,
>   			 u64 start, u64 size,
> +			 unsigned long flags,
>   			 struct list_head *blocks,
>   			 u64 *total_allocated_on_err)
>   {
>   	struct gpu_buddy_block *block;
> -	struct gpu_buddy_block *buddy;
>   	u64 total_allocated = 0;
>   	LIST_HEAD(allocated);
>   	u64 end;
> @@ -1013,16 +1340,25 @@ static int __alloc_range(struct gpu_buddy *mm,
>   
>   		if (contains(start, end, block_start, block_end)) {
>   			if (gpu_buddy_block_is_free(block)) {
> +				u64 bsize = gpu_buddy_block_size(mm, block);
> +				u64 boff  = gpu_buddy_block_offset(block);
> +
>   				mark_allocated(mm, block);
> -				total_allocated += gpu_buddy_block_size(mm, block);
> -				mm->avail -= gpu_buddy_block_size(mm, block);
> -				if (gpu_buddy_block_is_clear(block))
> -					mm->clear_avail -= gpu_buddy_block_size(mm, block);
> +				total_allocated += bsize;
> +				mm->avail -= bsize;
> +
> +				block->header &= ~GPU_BUDDY_HEADER_CLEAR;
> +				if (gpu_clear_tracker_is_clear(&mm->clear,
> +							       boff, bsize)) {
> +					if (flags & GPU_BUDDY_CLEAR_ALLOCATION)
> +						block->header |= GPU_BUDDY_HEADER_CLEAR;
> +				}
> +				gpu_clear_tracker_mark_dirty(&mm->clear,
> +							     boff, bsize);
> +				mm->clear_avail = mm->clear.total_clear;
> +
>   				list_add_tail(&block->link, &allocated);
>   				continue;
> -			} else if (!mm->clear_avail) {
> -				err = -ENOSPC;
> -				goto err_free;
>   			}
>   		}
>   
> @@ -1046,16 +1382,7 @@ static int __alloc_range(struct gpu_buddy *mm,
>   	return 0;
>   
>   err_undo:
> -	/*
> -	 * We really don't want to leave around a bunch of split blocks, since
> -	 * bigger is better, so make sure we merge everything back before we
> -	 * free the allocated blocks.
> -	 */
> -	buddy = __get_buddy(block);
> -	if (buddy &&
> -	    (gpu_buddy_block_is_free(block) &&
> -	     gpu_buddy_block_is_free(buddy)))
> -		__gpu_buddy_free(mm, block, false);
> +	undo_partial_split(mm, block);
>   
>   err_free:
>   	if (err == -ENOSPC && total_allocated_on_err) {
> @@ -1071,6 +1398,7 @@ static int __alloc_range(struct gpu_buddy *mm,
>   static int __gpu_buddy_alloc_range(struct gpu_buddy *mm,
>   				   u64 start,
>   				   u64 size,
> +				   unsigned long flags,
>   				   u64 *total_allocated_on_err,
>   				   struct list_head *blocks)
>   {
> @@ -1080,20 +1408,23 @@ static int __gpu_buddy_alloc_range(struct gpu_buddy *mm,
>   	for (i = 0; i < mm->n_roots; ++i)
>   		list_add_tail(&mm->roots[i]->tmp_link, &dfs);
>   
> -	return __alloc_range(mm, &dfs, start, size,
> +	return __alloc_range(mm, &dfs, start, size, flags,
>   			     blocks, total_allocated_on_err);
>   }
>   
>   static int __alloc_contig_try_harder(struct gpu_buddy *mm,
>   				     u64 size,
>   				     u64 min_block_size,
> +				     unsigned long flags,
>   				     struct list_head *blocks)
>   {
>   	u64 rhs_offset, lhs_offset, lhs_size, filled;
>   	struct gpu_buddy_block *block;
> -	unsigned int tree, order;
>   	LIST_HEAD(blocks_lhs);
> +	struct rb_root *root;
> +	struct rb_node *iter;
>   	unsigned long pages;
> +	unsigned int order;
>   	u64 modify_size;
>   	int err;
>   
> @@ -1103,45 +1434,40 @@ static int __alloc_contig_try_harder(struct gpu_buddy *mm,
>   	if (order == 0)
>   		return -ENOSPC;
>   
> -	for_each_free_tree(tree) {
> -		struct rb_root *root;
> -		struct rb_node *iter;
> -
> -		root = &mm->free_trees[tree][order];
> -		if (rbtree_is_empty(root))
> -			continue;
> +	root = &mm->free_tree[order];
> +	if (RB_EMPTY_ROOT(root))
> +		return -ENOSPC;
>   
> -		iter = rb_last(root);
> -		while (iter) {
> -			block = rbtree_get_free_block(iter);
> -
> -			/* Allocate blocks traversing RHS */
> -			rhs_offset = gpu_buddy_block_offset(block);
> -			err =  __gpu_buddy_alloc_range(mm, rhs_offset, size,
> -						       &filled, blocks);
> -			if (!err || err != -ENOSPC)
> -				return err;
> -
> -			lhs_size = max((size - filled), min_block_size);
> -			if (!IS_ALIGNED(lhs_size, min_block_size))
> -				lhs_size = round_up(lhs_size, min_block_size);
> -
> -			/* Allocate blocks traversing LHS */
> -			lhs_offset = gpu_buddy_block_offset(block) - lhs_size;
> -			err =  __gpu_buddy_alloc_range(mm, lhs_offset, lhs_size,
> -						       NULL, &blocks_lhs);
> -			if (!err) {
> -				list_splice(&blocks_lhs, blocks);
> -				return 0;
> -			} else if (err != -ENOSPC) {
> -				gpu_buddy_free_list_internal(mm, blocks);
> -				return err;
> -			}
> -			/* Free blocks for the next iteration */
> +	iter = rb_last(root);
> +	while (iter) {
> +		block = rbtree_get_free_block(iter);
> +
> +		/* Allocate blocks traversing RHS */
> +		rhs_offset = gpu_buddy_block_offset(block);
> +		err =  __gpu_buddy_alloc_range(mm, rhs_offset, size,
> +					       flags, &filled, blocks);
> +		if (!err || err != -ENOSPC)
> +			return err;
> +
> +		lhs_size = max((size - filled), min_block_size);
> +		if (!IS_ALIGNED(lhs_size, min_block_size))
> +			lhs_size = round_up(lhs_size, min_block_size);
> +
> +		/* Allocate blocks traversing LHS */
> +		lhs_offset = gpu_buddy_block_offset(block) - lhs_size;
> +		err =  __gpu_buddy_alloc_range(mm, lhs_offset, lhs_size,
> +					       flags, NULL, &blocks_lhs);
> +		if (!err) {
> +			list_splice(&blocks_lhs, blocks);
> +			return 0;
> +		} else if (err != -ENOSPC) {
>   			gpu_buddy_free_list_internal(mm, blocks);
> -
> -			iter = rb_prev(iter);
> +			return err;
>   		}
> +		/* Free blocks for the next iteration */
> +		gpu_buddy_free_list_internal(mm, blocks);
> +
> +		iter = rb_prev(iter);
>   	}
>   
>   	return -ENOSPC;
> @@ -1175,6 +1501,7 @@ int gpu_buddy_block_trim(struct gpu_buddy *mm,
>   	struct gpu_buddy_block *block;
>   	u64 block_start, block_end;
>   	LIST_HEAD(dfs);
> +	bool was_clear;
>   	u64 new_start;
>   	int err;
>   
> @@ -1217,22 +1544,38 @@ int gpu_buddy_block_trim(struct gpu_buddy *mm,
>   	}
>   
>   	list_del(&block->link);
> +
> +	was_clear = gpu_buddy_block_is_clear(block);
> +	block->header &= ~GPU_BUDDY_HEADER_CLEAR;
> +
> +	if (was_clear) {
> +		gpu_clear_tracker_mark_clear(&mm->clear,
> +					     gpu_buddy_block_offset(block),
> +					     gpu_buddy_block_size(mm, block));
> +		mm->clear_avail = mm->clear.total_clear;
> +	}
> +
>   	mark_free(mm, block);
>   	mm->avail += gpu_buddy_block_size(mm, block);
> -	if (gpu_buddy_block_is_clear(block))
> -		mm->clear_avail += gpu_buddy_block_size(mm, block);
>   
>   	/* Prevent recursively freeing this node */
>   	parent = block->parent;
>   	block->parent = NULL;
>   
>   	list_add(&block->tmp_link, &dfs);
> -	err =  __alloc_range(mm, &dfs, new_start, new_size, blocks, NULL);
> +	err =  __alloc_range(mm, &dfs, new_start, new_size,
> +			     was_clear ? GPU_BUDDY_CLEAR_ALLOCATION : 0,
> +			     blocks, NULL);
>   	if (err) {
>   		mark_allocated(mm, block);
>   		mm->avail -= gpu_buddy_block_size(mm, block);
> -		if (gpu_buddy_block_is_clear(block))
> -			mm->clear_avail -= gpu_buddy_block_size(mm, block);
> +		if (was_clear) {
> +			gpu_clear_tracker_mark_dirty(&mm->clear,
> +						     gpu_buddy_block_offset(block),
> +						     gpu_buddy_block_size(mm, block));
> +			mm->clear_avail = mm->clear.total_clear;
> +			block->header |= GPU_BUDDY_HEADER_CLEAR;
> +		}
>   		list_add(&block->link, blocks);
>   	}
>   
> @@ -1241,6 +1584,21 @@ int gpu_buddy_block_trim(struct gpu_buddy *mm,
>   }
>   EXPORT_SYMBOL(gpu_buddy_block_trim);
>   
> +static bool clear_steer_window(struct gpu_buddy *mm, u64 min_sz,
> +			       u64 *start, u64 *end, unsigned long *flags)
> +{
> +	struct gpu_clear_extent *ext =
> +		gpu_clear_tracker_find(&mm->clear, min_sz);
> +
> +	if (!ext)
> +		return false;
> +
> +	*start  = ext->start;
> +	*end    = ext->end;
> +	*flags |= GPU_BUDDY_RANGE_ALLOCATION;
> +	return true;
> +}
> +
>   static struct gpu_buddy_block *
>   __gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
>   			 u64 start, u64 end,
> @@ -1248,18 +1606,32 @@ __gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
>   			 unsigned int order,
>   			 unsigned long flags)
>   {
> -	if (flags & GPU_BUDDY_RANGE_ALLOCATION)
> +	struct gpu_buddy_block *block;
> +	bool steered = false;
> +
> +	/* Steer cleared allocations to a cleared extent that fits the order */
> +	if (!(flags & GPU_BUDDY_RANGE_ALLOCATION) &&
> +	    (flags & GPU_BUDDY_CLEAR_ALLOCATION) && mm->clear_avail)
> +		steered = clear_steer_window(mm, mm->chunk_size << order,
> +					     &start, &end, &flags);
> +
> +	if (flags & GPU_BUDDY_RANGE_ALLOCATION) {
>   		/* Allocate traversing within the range */
> -		return  __gpu_buddy_alloc_range_bias(mm, start, end,
> -						     order, flags);
> -	else if (size < min_block_size)
> +		block = __alloc_range_bias(mm, start, end, order, flags);
> +		if (!IS_ERR(block) || !steered)
> +			return block;
> +
> +		flags &= ~GPU_BUDDY_RANGE_ALLOCATION;
> +	}
> +
> +	if (size < min_block_size)
>   		/* Allocate from an offset-aligned region without size rounding */
>   		return gpu_buddy_offset_aligned_allocation(mm, size,
>   							   min_block_size,
>   							   flags);
> -	else
> -		/* Allocate from freetree */
> -		return alloc_from_freetree(mm, order, flags);
> +
> +	/* Allocate from freetree */
> +	return alloc_from_freetree(mm, order, flags);
>   }
>   
>   /**
> @@ -1320,7 +1692,7 @@ int gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
>   		if (!IS_ALIGNED(start | end, min_block_size))
>   			return -EINVAL;
>   
> -		return __gpu_buddy_alloc_range(mm, start, size, NULL, blocks);
> +		return __gpu_buddy_alloc_range(mm, start, size, flags, NULL, blocks);
>   	}
>   
>   	original_size = size;
> @@ -1346,7 +1718,8 @@ int gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
>   		if ((flags & GPU_BUDDY_CONTIGUOUS_ALLOCATION) &&
>   		    !(flags & GPU_BUDDY_RANGE_ALLOCATION))
>   			return __alloc_contig_try_harder(mm, original_size,
> -							 original_min_size, blocks);
> +							 original_min_size,
> +							 flags, blocks);
>   
>   		return -EINVAL;
>   	}
> @@ -1361,8 +1734,6 @@ int gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
>   		BUG_ON(size >= min_block_size && order < min_order);
>   
>   		do {
> -			unsigned int fallback_order;
> -
>   			block = __gpu_buddy_alloc_blocks(mm, start,
>   							 end,
>   							 size,
> @@ -1372,48 +1743,46 @@ int gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
>   			if (!IS_ERR(block))
>   				break;
>   
> -			if (size < min_block_size) {
> -				fallback_order = order;
> -			} else if (order == min_order) {
> -				fallback_order = min_order;
> -			} else {
> +			if (size >= min_block_size && order > min_order) {
>   				order--;
>   				continue;
>   			}
>   
> -			/* Try allocation through force merge method */
> -			if (mm->clear_avail &&
> -			    !__force_merge(mm, start, end, fallback_order)) {
> -				block = __gpu_buddy_alloc_blocks(mm, start,
> -								 end,
> -								 size,
> -								 min_block_size,
> -								 fallback_order,
> -								 flags);
> -				if (!IS_ERR(block)) {
> -					order = fallback_order;
> -					break;
> -				}
> -			}
> -
>   			/*
>   			 * Try contiguous block allocation through
>   			 * try harder method.
>   			 */
>   			if (flags & GPU_BUDDY_CONTIGUOUS_ALLOCATION &&
> -			    !(flags & GPU_BUDDY_RANGE_ALLOCATION))
> -				return __alloc_contig_try_harder(mm,
> -								 original_size,
> -								 original_min_size,
> -								 blocks);
> +			    !(flags & GPU_BUDDY_RANGE_ALLOCATION)) {
> +				err = __alloc_contig_try_harder(mm,
> +								original_size,
> +								original_min_size,
> +								flags,
> +								blocks);
> +				if (!err)
> +					return 0;
> +				if (err != -ENOSPC)
> +					return err;
> +				goto err_free;
> +			}
>   			err = -ENOSPC;
>   			goto err_free;
>   		} while (1);
>   
>   		mark_allocated(mm, block);
>   		mm->avail -= gpu_buddy_block_size(mm, block);
> -		if (gpu_buddy_block_is_clear(block))
> -			mm->clear_avail -= gpu_buddy_block_size(mm, block);
> +
> +		block->header &= ~GPU_BUDDY_HEADER_CLEAR;
> +		if (flags & GPU_BUDDY_CLEAR_ALLOCATION &&
> +		    gpu_clear_tracker_is_clear(&mm->clear,
> +					       gpu_buddy_block_offset(block),
> +					       gpu_buddy_block_size(mm, block)))
> +			block->header |= GPU_BUDDY_HEADER_CLEAR;
> +
> +		gpu_clear_tracker_mark_dirty(&mm->clear,
> +					     gpu_buddy_block_offset(block),
> +					     gpu_buddy_block_size(mm, block));
> +		mm->clear_avail = mm->clear.total_clear;
>   		kmemleak_update_trace(block);
>   		list_add_tail(&block->link, &allocated);
>   
> @@ -1492,31 +1861,30 @@ void gpu_buddy_print(struct gpu_buddy *mm)
>   	for (order = mm->max_order; order >= 0; order--) {
>   		struct gpu_buddy_block *block, *tmp;
>   		struct rb_root *root;
> -		u64 count = 0, free;
> -		unsigned int tree;
> -
> -		for_each_free_tree(tree) {
> -			root = &mm->free_trees[tree][order];
> +		u64 count = 0, clear = 0, free;
>   
> -			rbtree_postorder_for_each_entry_safe(block, tmp, root, rb) {
> -				BUG_ON(!gpu_buddy_block_is_free(block));
> -				count++;
> -			}
> +		root = &mm->free_tree[order];
> +		rbtree_postorder_for_each_entry_safe(block, tmp, root, rb) {
> +			BUG_ON(!gpu_buddy_block_is_free(block));
> +			count++;
> +			if (gpu_buddy_block_is_clear(block))
> +				clear++;
>   		}
>   
>   		free = count * (mm->chunk_size << order);
>   		if (free < SZ_1M)
> -			pr_info("order-%2d free: %8llu KiB, blocks: %llu\n",
> -				order, free >> 10, count);
> +			pr_info("order-%2d free: %8llu KiB, blocks: %llu (clear: %llu)\n",
> +				order, free >> 10, count, clear);
>   		else
> -			pr_info("order-%2d free: %8llu MiB, blocks: %llu\n",
> -				order, free >> 20, count);
> +			pr_info("order-%2d free: %8llu MiB, blocks: %llu (clear: %llu)\n",
> +				order, free >> 20, count, clear);
>   	}
>   }
>   EXPORT_SYMBOL(gpu_buddy_print);
>   
>   static void gpu_buddy_module_exit(void)
>   {
> +	kmem_cache_destroy(slab_extents);
>   	kmem_cache_destroy(slab_blocks);
>   }
>   
> @@ -1526,6 +1894,12 @@ static int __init gpu_buddy_module_init(void)
>   	if (!slab_blocks)
>   		return -ENOMEM;
>   
> +	slab_extents = KMEM_CACHE(gpu_clear_extent, 0);
> +	if (!slab_extents) {
> +		kmem_cache_destroy(slab_blocks);
> +		return -ENOMEM;
> +	}
> +
>   	return 0;
>   }
>   
> diff --git a/drivers/gpu/drm/drm_buddy.c b/drivers/gpu/drm/drm_buddy.c
> index faa025498de4..a89c392a155a 100644
> --- a/drivers/gpu/drm/drm_buddy.c
> +++ b/drivers/gpu/drm/drm_buddy.c
> @@ -50,15 +50,11 @@ void drm_buddy_print(struct gpu_buddy *mm, struct drm_printer *p)
>   		struct gpu_buddy_block *block, *tmp;
>   		struct rb_root *root;
>   		u64 count = 0, free;
> -		unsigned int tree;
>   
> -		for_each_free_tree(tree) {
> -			root = &mm->free_trees[tree][order];
> -
> -			rbtree_postorder_for_each_entry_safe(block, tmp, root, rb) {
> -				BUG_ON(!gpu_buddy_block_is_free(block));
> -				count++;
> -			}
> +		root = &mm->free_tree[order];
> +		rbtree_postorder_for_each_entry_safe(block, tmp, root, rb) {
> +			BUG_ON(!gpu_buddy_block_is_free(block));
> +			count++;
>   		}
>   
>   		drm_printf(p, "order-%2d ", order);
> diff --git a/drivers/gpu/tests/gpu_buddy_test.c b/drivers/gpu/tests/gpu_buddy_test.c
> index 7df5c2ae83bb..e0d24a4542b2 100644
> --- a/drivers/gpu/tests/gpu_buddy_test.c
> +++ b/drivers/gpu/tests/gpu_buddy_test.c
> @@ -78,15 +78,11 @@ static void gpu_test_buddy_subtree_offset_alignment_stress(struct kunit *test)
>   		}
>   
>   		for (order = mm.max_order; order >= 0 && !root; order--) {
> -			for (tree = 0; tree < 2; tree++) {
> -				node = mm.free_trees[tree][order].rb_node;
> -				if (node) {
> -					root = container_of(node,
> -							    struct gpu_buddy_block,
> -							    rb);
> -					break;
> -				}
> -			}
> +			node = mm.free_tree[order].rb_node;
> +			if (node)
> +				root = container_of(node,
> +						    struct gpu_buddy_block,
> +						    rb);
>   		}
>   
>   		KUNIT_ASSERT_NOT_NULL(test, root);
> @@ -97,8 +93,8 @@ static void gpu_test_buddy_subtree_offset_alignment_stress(struct kunit *test)
>   		gpu_buddy_free_list(&mm, &allocated[i], 0);
>   
>   		for (order = 0; order <= mm.max_order; order++) {
> -			for (tree = 0; tree < 2; tree++) {
> -				node = mm.free_trees[tree][order].rb_node;
> +			{
> +				node = mm.free_tree[order].rb_node;
>   				if (!node)
>   					continue;
>   
> diff --git a/include/linux/gpu_buddy.h b/include/linux/gpu_buddy.h
> index 71941a039648..07da1aa4865b 100644
> --- a/include/linux/gpu_buddy.h
> +++ b/include/linux/gpu_buddy.h
> @@ -67,15 +67,6 @@
>    */
>   #define GPU_BUDDY_TRIM_DISABLE			BIT(5)
>   
> -enum gpu_buddy_free_tree {
> -	GPU_BUDDY_CLEAR_TREE = 0,
> -	GPU_BUDDY_DIRTY_TREE,
> -	GPU_BUDDY_MAX_FREE_TREES,
> -};
> -
> -#define for_each_free_tree(tree) \
> -	for ((tree) = 0; (tree) < GPU_BUDDY_MAX_FREE_TREES; (tree)++)
> -
>   /**
>    * struct gpu_buddy_block - Block within a buddy allocator
>    *
> @@ -103,6 +94,14 @@ struct gpu_buddy_block {
>   #define   GPU_BUDDY_ALLOCATED	   (1 << 10)
>   #define   GPU_BUDDY_FREE	   (2 << 10)
>   #define   GPU_BUDDY_SPLIT	   (3 << 10)
> +/*
> + * GPU_BUDDY_HEADER_CLEAR has two roles:
> + *  - FREE state:      set when the block's full range is cleared (tracker
> + *                     confirmed).  Cleared free blocks float in the buddy
> + *                     tree and are NOT inserted into free_tree[].
> + *  - ALLOCATED state: set when the block was served from cleared memory,
> + *                     informing the caller that no GPU clear pass is needed.
> + */
>   #define GPU_BUDDY_HEADER_CLEAR  GENMASK_ULL(9, 9)
>   /* Free to be used, if needed in the future */
>   #define GPU_BUDDY_HEADER_UNUSED GENMASK_ULL(8, 6)
> @@ -130,11 +129,44 @@ struct gpu_buddy_block {
>   /* private: */
>   	struct list_head tmp_link;
>   	unsigned int subtree_max_alignment;
> +	bool subtree_has_dirty;
>   };
>   
>   /* Order-zero must be at least SZ_4K */
>   #define GPU_BUDDY_MAX_ORDER (63 - 12)
>   
> +/**
> + * struct gpu_clear_extent - a contiguous cleared (zeroed) address range
> + *
> + * Tracks a single contiguous address range whose memory content is known
> + * to be zeroed.  Extents are non-overlapping and stored in an augmented
> + * red-black tree sorted by @start.  The augmented value @subtree_max_size
> + * allows O(log N) search for an extent of at least a given size.
> + */
> +struct gpu_clear_extent {
> +/* private: */
> +	struct rb_node	rb;
> +	u64		start;
> +	u64		end;
> +	u64		subtree_max_size;
> +};
> +
> +/**
> + * struct gpu_clear_tracker - tracks cleared (zeroed) address intervals
> + *
> + * Maintains a set of non-overlapping cleared extents as an augmented
> + * red-black tree.  The tracker is embedded inside struct gpu_buddy and
> + * replaces the former dual (clear/dirty) free-tree scheme.
> + *
> + * @total_clear: Total bytes of cleared memory currently tracked.
> + */
> +struct gpu_clear_tracker {
> +/* private: */
> +	struct rb_root	root;
> +/* public: */
> +	u64		total_clear;
> +};
> +
>   /**
>    * struct gpu_buddy - GPU binary buddy allocator
>    *
> @@ -154,18 +186,20 @@ struct gpu_buddy_block {
>    * @avail: Total free space currently available for allocation in bytes.
>    * @clear_avail: Free space available in the clear tree (zeroed memory) in bytes.
>    *               This is a subset of @avail.
> + * @clear: Tracker of cleared address ranges (decoupled from free_tree).
>    * @lock_dep_map: Annotates gpu_buddy API with a driver provided lock.
>    */
>   struct gpu_buddy {
>   /* private: */
> +	struct gpu_clear_tracker clear;
>   	/*
> -	 * Array of red-black trees for free block management.
> -	 * Indexed as free_trees[clear/dirty][order] where:
> -	 * - Index 0 (GPU_BUDDY_CLEAR_TREE): blocks with zeroed content
> -	 * - Index 1 (GPU_BUDDY_DIRTY_TREE): blocks with unknown content
> -	 * Each tree holds free blocks of the corresponding order.
> +	 * One RB-tree per order containing all free blocks (clear and
> +	 * dirty alike).  The augment field subtree_has_dirty lets dirty
> +	 * allocations skip subtrees with no dirty inventory in O(log N).
> +	 * Cleared free blocks coexist here but are also indexed by the
> +	 * @clear tracker for fast CLEAR_ALLOCATION lookups.
>   	 */
> -	struct rb_root **free_trees;
> +	struct rb_root *free_tree;
>   	/*
>   	 * Array of root blocks representing the top-level blocks of the
>   	 * binary tree(s). Multiple roots exist when the total size is not
>
> base-commit: 3c3c5fb9b36836d279ebe370189d68a0a3387362

