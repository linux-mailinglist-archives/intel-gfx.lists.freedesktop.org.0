Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iL5pCbYO/mm2mQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 18:26:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 777A64F96C8
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 18:26:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B80F10F558;
	Fri,  8 May 2026 16:26:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="x5iUk9QC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011045.outbound.protection.outlook.com [52.101.57.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A92C10F558;
 Fri,  8 May 2026 16:26:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MWsY1Ita3vagt6GnC40oxGdUtb6K4hJTPvI+sVuNrEknIjaBWDhMOUsn+F+iccY26dhxoAo9dwP548JW0VJ4W3zFRqlJqEFBDnWbaMhlZ73IR+JsxHB3RP0/9uYfh+J2ZDknK5eaEr5AXBuNhuFQhIN/WIL+H6JAQtNoiuIIJCKDi+oSjTdgIdvi69k9ptrFHHdKFpJr8XK1QQkmbT0+cFR9Vsf66FnkcORYVKRqwMTP1aO/uhvbQOh4WJNbZBlaq/sYQD9gPzt0l4uXJu7MXPsaOqcxkqAINEX6x079ECo61TgV6XjPjKrJj6TkpLmQCi+FBbK7GnXk8SCFYKUZVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+8Npaa/iscXqhahM2pCg/dN2oWJozDUC3ibuPT6gjSk=;
 b=faAUmTENgQ/CuRYU+BMiFuX3WCaAE7hQiBz++fHa6GYFhFBogYOyoPLpcWrsvkDMACqkn/nLPZyD/DOUVF7Xq9DQ21lvivJBU1Wp2dy6NuLupymz5rc6ru+6xCtWbyKflMyuH31/8Ww3xAD+aAQ8jCKAb2aYVWHxFFLQaxM/omteMuGW5FbrSU9beX/1SiPkBEaenbmjbGNe3dlfYWN1q66dDyiTtNaawY0vamwX/xqAx9LYsJ48fMAU7lAIsFLFaGU6HWBJ0S2VdVlU0BE1bwH/BOyp/YaFAmURmUlaruE0Md5dsG+WYpkTC+OdR1lvNQkqo2DOcFqxsChMzl4gqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+8Npaa/iscXqhahM2pCg/dN2oWJozDUC3ibuPT6gjSk=;
 b=x5iUk9QCdYdAQMOVGj6qPLjVps1J2xnrGzry6zwZeoV0MPYPPCtcrTw5eM7MWA7NObChZIcQFE5GOC3LSPIrsyof2JssXTwzk5X/ETAysTxXq/i4auKOEdSwJQwvnGvWl51KwnM5SJdP/Mh1BoeXT6NfM/P/BVBC/laH35khNak=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH8PR12MB7301.namprd12.prod.outlook.com (2603:10b6:510:222::12)
 by DS5PPFB297DAF97.namprd12.prod.outlook.com (2603:10b6:f:fc00::65d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.26; Fri, 8 May
 2026 16:26:21 +0000
Received: from PH8PR12MB7301.namprd12.prod.outlook.com
 ([fe80::8434:dc50:a68d:7bdd]) by PH8PR12MB7301.namprd12.prod.outlook.com
 ([fe80::8434:dc50:a68d:7bdd%2]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 16:26:21 +0000
Message-ID: <099f171a-2aa2-46f3-8a82-5360cf24a2f5@amd.com>
Date: Fri, 8 May 2026 21:56:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] gpu/buddy: replace dual-tree/force_merge with
 decoupled clear tracker
To: Matthew Auld <matthew.auld@intel.com>, christian.koenig@amd.com,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Cc: alexander.deucher@amd.com
References: <20260504111055.262964-1-Arunpravin.PaneerSelvam@amd.com>
 <75bcbaac-c5f9-4dc6-af1e-4d9ed66d5f16@intel.com>
Content-Language: en-US
From: Arunpravin Paneer Selvam <arunpravin.paneerselvam@amd.com>
In-Reply-To: <75bcbaac-c5f9-4dc6-af1e-4d9ed66d5f16@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0067.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b7::6) To PH8PR12MB7301.namprd12.prod.outlook.com
 (2603:10b6:510:222::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR12MB7301:EE_|DS5PPFB297DAF97:EE_
X-MS-Office365-Filtering-Correlation-Id: 25ca03b2-3e81-4d9d-6f1e-08dead1e89fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: LL75Twm+YIcZXIn7C7/eS9cDiPPCGCbg0nNTSNyUsoV8eeh5//Nvhn7iP/2CMmUhu31ZR8fZesypnNXGdWEuc1dYL80odsZHq86Hf9n8qPGjbde3lLAR2tKjhRs0DzlBMzGqXb6c7ix0untV9ccvxUfsrKD8cP3HWLzVAw+K+d03D9CbnIKqzSq5JUrl31agtRr7DLc0+5XaTyrXulVrB2faZCbe7ghQ1g0aihHVVZ0HNFV3QGRWCjJAOGeckl/grx5s2HBKzyboF2MUlYaUtCy1mPIKid3jio3eugWRDJkRmPcPIEX4lITvzNOWLeqUt6NW24zwlHPAIBIOmeu4NJ/9ttvOrK3UJwIP8le5wd9YHaR76T8lPvPltrsRvJQubm5N3vaTbzydbh52WkojdGBQ9ujENNU2RaOPeqDdIdGeJlfKBwoMN3Q26AExC5aCWl22aFszdQiIYAFhBA6YGhaAKjLl2zxQnW8XLATpG6+Xt+PtnofJowpCJKXkTVPu4gI4wUGBG56VKxw7o2UJ/63CoLOIQwzikRdyShKLIJUcRBtVEKEXe1iVxW0Q1GXboLqgWB1b31hEN1+Em+LONdfa0R+NnJj2ndY+Kzr+/igVK/StvimbUckkmo/3AL0vu6c0AyDrBaokE+eGlRVxjg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR12MB7301.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RlUxclhuY2V0ZkRQZ0t6blFSRzRUQlFlQXN1TXEzNUUwUklaMFNicGRZVlhL?=
 =?utf-8?B?MzRlK1ZVVGFvaFVyYkNXdmlWemNzMTlKbkN1cHFmbW1GeEh5YjZlSk1OdSt0?=
 =?utf-8?B?TkFUcGpGdzRCemNubWhtSGFxY0FzR3BpL0JmdW0yU1dtTjRxbmFpaVhEdHFV?=
 =?utf-8?B?Y0c5WTBNWUJYK3lzaGtCTHBmOWN5dENEVkpFc2szSFJUMUlFaFdXcC9lY3pP?=
 =?utf-8?B?dEtsS0RJZkJDUCtUWlhKRytoYk9HVFhxcTVLT3FRQld0cXpvYndHb2JFdGlL?=
 =?utf-8?B?Z1J3ZmEwVDU4alNFbnNwK096cFlyUy9JOU5SdnhqUWVCYmNRSldqaDduMUR5?=
 =?utf-8?B?T1JMOXBCU2NNcnlqanhGYWZITngrUDQ0TUF2cUc5cTh5SVkvem9uNVJKdHRI?=
 =?utf-8?B?MHNqeFdPc1hGZEFXUFV6d3E4UWg5bnhBOVBsTEdXL09sTExuY3NnWUNyREht?=
 =?utf-8?B?K0F1VEVUcjlxVUs5UktCVGw2OGFiVVJSSTU4d0dObFBHTWxocGJ4Qit6MW9Y?=
 =?utf-8?B?eFVWQXByUHJKNGVzTC9PQ2dLVFd1SHZUWVZTU0dFY3FkQTJnNHlOQ1h2VGFa?=
 =?utf-8?B?elYxSUdKZjFuM1pDN3BENGZaRHVqaE9pTUdidmQ3ZTRPRkFPa1BOVEl5b0xo?=
 =?utf-8?B?Tmh5eW5VY2lGTTRIMDZzWmQvOEpDMXhmSitRMlRTTGVhVXV1bWRReXBnQks4?=
 =?utf-8?B?Q2E1RHNSem96NEVNbE9MTE50WDRnaEVQZXEvY1pscUFNYVQvRjc3V0pvWVM5?=
 =?utf-8?B?WFFMUmFqaG1nS1Bldkd3Q1VPc0lYS0ZxekdiemZ4blVmWmJKcisxWUtqelgy?=
 =?utf-8?B?NG9ydGMwZ0tDZERHdW1qUXNMTlhaZXFuRTdxSG5IaHFseEpKeCtLczRpYW8x?=
 =?utf-8?B?K0RxSHNieU9HS2lNTGp4MnZ0dWlZTEFBNU5vTWFvWjBSU2RtVVNBcXF1Z3A1?=
 =?utf-8?B?QUorYWdJZXZsZFJCK0dYSU1Lb283MGQ2eVQ1Q2VYK0lacXhYc2R3cHd2SjNo?=
 =?utf-8?B?T0hmN25oK3JqUll3ZEVqRzdsMlpOOHdidzhSZ2RLWFNhMDJ1anB4VTA0VGcy?=
 =?utf-8?B?RGZuUGFEcmFwYllwMlUrWHA4K2t4QkFXOHFZWkRaWndKM0FQUHVzMlRvZlI2?=
 =?utf-8?B?ZDg0ZTBpUU5rbTRWU2FUaW5aV1BLS1pINjkrQ0MwVVU1VlE5VDQ3eWxKMTF0?=
 =?utf-8?B?ZEU4OEQ4bDgrcXVMVjc2Q1lMMW1uSHN5TWFBVHlJb0FHdktqSk42MDZxWGFH?=
 =?utf-8?B?Z04vNjNSL2tmVXF0YjN0ZExpOGhVWUVHV2pIMnVPNGFwNndWT0xRNS9CRHVB?=
 =?utf-8?B?ZFNyUUxoZVRPNEpXSk12LzA4cnh5UWNxbVhMc1YvM2hzbkVDYTVoZVo5MjR6?=
 =?utf-8?B?bEhDc0wrcWFxY0J3K2FCYUtncUlUOTFRZjlsTzBpOGZwWWtBUjN0V1BPMU83?=
 =?utf-8?B?L2swODNqRC9BV3hUYlVGdkVhdHBKenFuVXBJTk00dmNNckxhOW1wcC9iMm9T?=
 =?utf-8?B?Nm5GMnFGN0hIOHgwNnU2SEczdzRGNWJaSGF0OVVKMEsvcFo2VFdmUkt4U2VN?=
 =?utf-8?B?REVMUG53b1JMeGd5SytSMlJHSEtFY0M4aGRIMmllOGZheDNldklVU3oyNTVV?=
 =?utf-8?B?eFlNTHE3THUzL3pHKzZxcnVaem8xOTdWUVVqaHkxVFlJaGNPYXlFWkdDNVBF?=
 =?utf-8?B?R3Q4NVZwT1F4NHhHN2piWUxGRmQvNFRnRmJQS21QYkkwSklzQUxrUGxtRWw0?=
 =?utf-8?B?S0c5UTZ1M25WdW42dXdHaTlrRHBEMml3NUJBa0U3MzFlVkFQTHVUZXNweXNF?=
 =?utf-8?B?SUZ4R1dwK1hIWXRubjlTb0p6U3J0bHJYNS9tSmQyTmVpMzlrMTBpWSs5d0Q4?=
 =?utf-8?B?L3FKOVczSE5Xcy9HbXdONDB0cFJZWlpaakNGcmJOWUhEbG00bHJoZWJaS0FD?=
 =?utf-8?B?YWxKeTN5OGJJbkpUYmxDN0YwY3dsaGhtekxqN3pZRWE1TXd3bERFaVQ2OFpx?=
 =?utf-8?B?ZUZtWVdkZ1gyTWhYOHhFcVpYLzd4a05GK2Z0TUdGNVIyT2lIZU1xY0tkTzlU?=
 =?utf-8?B?TzF4VDNJR3BwSXJYUEQzNnU1SkpVVXJmYmhWaFBhRjdSUU03d1k1ZXJGS1A1?=
 =?utf-8?B?RjdxeWJUMDVQN0dxT1dFMzEvVWN5Zk8vNWJ2TDNOeE1mYnM3SDVJOWVKVFJp?=
 =?utf-8?B?MXEwMkZDRUhrRjBINDd1WU9CYktjQnFGckhvaXliTCs4bzhPZkFpdEpUZnBS?=
 =?utf-8?B?RkR3OWU3Yk9XSzFxMDFpSnVRVWlNQ2FBakdZeUZnZU5oOEJzaUJJZ0pZemJL?=
 =?utf-8?B?TGtFMHIwQTFHWUViNE5HOHJ4SXZVcXBRUk02eEZSUXlXd2gvMGpDUT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25ca03b2-3e81-4d9d-6f1e-08dead1e89fc
X-MS-Exchange-CrossTenant-AuthSource: PH8PR12MB7301.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 16:26:21.0697 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hiy7kAiICXE3/KP4XA2D2WhXcPIbSfOmMWnaGhEIgJGaExHAxzfxEziWQFCChqjCdYZaxFszTFHrKdOUmXhpAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS5PPFB297DAF97
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
X-Rspamd-Queue-Id: 777A64F96C8
X-Rspamd-Server: lfdr
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
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arunpravin.paneerselvam@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,amd.com:email,amd.com:mid,amd.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action

Hi Matthew,

On 5/8/2026 8:49 PM, Matthew Auld wrote:
> On 04/05/2026 12:10, Arunpravin Paneer Selvam wrote:
>> The current buddy allocator maintains separate clear_tree[] and
>> dirty_tree[] rbtrees per order, preventing coalescing between cleared
>> and dirty buddies. Under mixed workloads, this creates a merge barrier:
>> adjacent buddies frequently end up split across trees, forcing reliance
>> on __force_merge() during allocation.
>>
>> __force_merge() performs an O(N x max_order) scan under the VRAM manager
>> lock, leading to allocation stalls and failures for large contiguous
>> requests even when sufficient total free memory is available.
>>
>> Solution
>>
>> Replace the dual-tree design with:
>> - A single free_tree[order] rbtree for dirty and mixed free blocks
>>    (fully cleared free blocks float outside this tree)
>> - A lightweight out-of-band clear tracker (gpu_clear_tracker)
>>
>> Fully cleared free blocks are tracked outside the buddy trees using an
>> augmented interval rbtree, enabling O(log E) lookup of the largest
>> cleared extents.
>>
>> Buddy coalescing is now unconditional in __gpu_buddy_free(), regardless
>> of clear/dirty state. This removes the merge barrier and eliminates the
>> need for __force_merge().
>>
>> Benefits
>>
>> - Correct high-order allocations after mixed clear/dirty workloads
>> - Elimination of O(N x max_order) merge cost from the allocation path
>> - O(log E) cleared-extent lookup replacing O(N) scans
>> - Predictable allocation latency under fragmentation
>> - Reduced complexity with a single tree per order
>>
>> Test:
>> dEQP-VK.memory.allocation.basic.size_8KiB.reverse.count_4000
>>
>> Below data is from /sys/kernel/debug/dri/1/amdgpu_vram_mm:
>>
>> Base (dual-tree), before VKCTS test:
>>    order- 6 free:   6 MiB,  blocks: 26
>>    order- 5 free:   1 MiB,  blocks: 15
>>    order- 4 free: 960 KiB,  blocks: 15
>>    order- 3 free:   5 MiB,  blocks: 171
>>    order- 2 free:   2 MiB,  blocks: 176
>>    order- 1 free:   1 MiB,  blocks: 165
>>    order- 0 free:  16 KiB,  blocks: 4
>>
>> Base (dual-tree), after VKCTS test:
>>    order- 6 free: 768 KiB,  blocks: 3
>>    order- 5 free: 499 MiB,  blocks: 3999
>>    order- 4 free: 250 MiB,  blocks: 4001
>>    order- 3 free: 129 MiB,  blocks: 4157
>>    order- 2 free:  65 MiB,  blocks: 4161
>>    order- 1 free:  63 MiB,  blocks: 8138
>>    order- 0 free:  20 KiB,  blocks: 5
>>
>> Clear tracker, before VKCTS test:
>>    order- 6 free:   4 MiB,  blocks: 19
>>    order- 5 free:   2 MiB,  blocks: 18
>>    order- 4 free: 704 KiB,  blocks: 11
>>    order- 3 free:   5 MiB,  blocks: 168
>>    order- 2 free:   2 MiB,  blocks: 174
>>    order- 1 free:   1 MiB,  blocks: 167
>>    order- 0 free:  32 KiB,  blocks: 8
>>
>> Clear tracker, after VKCTS test:
>>    order- 6 free:   4 MiB,  blocks: 19
>>    order- 5 free:   2 MiB,  blocks: 18
>>    order- 4 free: 704 KiB,  blocks: 11
>>    order- 3 free:   5 MiB,  blocks: 168
>>    order- 2 free:   2 MiB,  blocks: 174
>>    order- 1 free:   1 MiB,  blocks: 167
>>    order- 0 free:  28 KiB,  blocks: 7
>>
>> v2:
>>   - Code-style cleanup and minor refactoring
>>   - Renamed locals for clarity
>>
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Christian König <christian.koenig@amd.com>
>> Signed-off-by: Arunpravin Paneer Selvam 
>> <Arunpravin.PaneerSelvam@amd.com>
>
> Still need some more time to fully go over this, but in the meantime 
> there is some feedback here from sashiko, which might be worth a look:
>
> https://sashiko.dev/#/patchset/20260504111055.262964-1-Arunpravin.PaneerSelvam%40amd.com 
>
I have sent the v3. Please go through it. I will check the Sashiko 
review comments.

Regards,
Arun.

