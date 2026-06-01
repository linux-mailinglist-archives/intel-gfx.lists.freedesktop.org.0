Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8zWJDk5kHWqwaAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:51:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CCA61DE4B
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:51:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE5521131BD;
	Mon,  1 Jun 2026 10:51:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="sdKc82uX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH0PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11011012.outbound.protection.outlook.com [40.107.208.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A2731131B7;
 Mon,  1 Jun 2026 10:51:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BRJJ6F3p7GzJd5nYWsBSXklfJWjGN1EJEKaJb14inqhoIMbxcLxGlk+MK1802s2iCOV5ONNVQHr710wCwPrrwsLPahDEEvovgto883iX770L/6cz4PVrRoitgTXvVQxd++XTfp+65MeIdMWV47hseXZUaTZQPMQiZKYnNFCnZfLC4YKgSOzMv5+85DaAH0u3A1WmtJsXUtvrA5PkZBvlAVT+gfqow+tmezbiGM7ObUYZTpKUFuLvZTXDPbJZR+X5iwVmyksx/j9fwT+NBOPI5a8nRwYr/xthQDndV0bdU0Sp4TVTPbuN8VurZwsssHRlu7AP3r8N2CBXFn6lgFy1ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7E+3jZz7Fpk+Wg+j7EwmTA1FXvaUUbrtvPq0t2js1HM=;
 b=iv1fEZVtsEO+qE7HJk3cRGNevFlgohpSwSnSNIVsJTTnbM3Sdr9bwCp2axCtRbwGQjhm2Ki17Z9Wk5eaTUKPP1q3Mf2BvFbxc7WgM+tPjgJ2t2mJZa74CiIs8yX6i8Kk4jkr0PqzVsUBRkwR/KREnb6aT+f54c6LAgAhrEh77rTNo8fgBY+0mK5cg5VXCOpkaVIHaPB69eqlTAXtnB8vSWvAjXSPSk5QAJMSvBbrEdT5HQi0D6aY2JOg8FeCsoROEUtNGTlze7wu18PYFbIKOZjtsbaZYITZH5dXK/aeq6uwNQisvY5RI55sMmhE+6LpyIwDoBBLXJIlpj470PzySw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7E+3jZz7Fpk+Wg+j7EwmTA1FXvaUUbrtvPq0t2js1HM=;
 b=sdKc82uX7XfAF1egPP+daQv3NNxoVO4yVbCiV9ng8gRL3bmnkLTyNzBbZofd2NCHWfGABLhTg+/2OEm5YkvBpl7Q5mML2wiFA3h4e2KDJG3NQXE58nDNswld1UAl2lFLmf8w7rQuCbCl2rcLXZuhIENDn2vIXtbAOoLeM9ZBtyw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from EAYPR12MB999132.namprd12.prod.outlook.com
 (2603:10b6:303:2c2::11) by DM4PR12MB8557.namprd12.prod.outlook.com
 (2603:10b6:8:18b::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 10:51:50 +0000
Received: from EAYPR12MB999132.namprd12.prod.outlook.com
 ([fe80::7798:60c4:e3f0:d3f8]) by EAYPR12MB999132.namprd12.prod.outlook.com
 ([fe80::7798:60c4:e3f0:d3f8%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 10:51:50 +0000
Message-ID: <9b0add60-9bca-44dc-a95d-be289ea2d3c1@amd.com>
Date: Mon, 1 Jun 2026 16:21:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] gpu/buddy: replace dual-tree/force_merge with
 decoupled clear tracker
To: Matthew Auld <matthew.auld@intel.com>, christian.koenig@amd.com,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Cc: alexander.deucher@amd.com
References: <20260527112902.3815-1-Arunpravin.PaneerSelvam@amd.com>
 <c9cdcf8a-d531-4e79-a238-97fd39b8c108@intel.com>
Content-Language: en-US
From: Arunpravin Paneer Selvam <arunpravin.paneerselvam@amd.com>
In-Reply-To: <c9cdcf8a-d531-4e79-a238-97fd39b8c108@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0360.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:219::11) To EAYPR12MB999132.namprd12.prod.outlook.com
 (2603:10b6:303:2c2::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: EAYPR12MB999132:EE_|DM4PR12MB8557:EE_
X-MS-Office365-Filtering-Correlation-Id: c588108b-ab16-4cc6-0639-08debfcbc8d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|6133799003|18002099003|22082099003|56012099006|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: B74slyQP2F1yrS7qfFEEke7fI6W/UweMlxS/bCTaVy1R/6hFU2OGtT2CJmkcyhKhbsEORoemf97gmN+Ym0DJ++lSG6WvLcKCzgcEL2LepHsbjDU+RX8/b130+ZYdlO/gAZWdA0VaDV6NMMbOUSjbfwku2Pl3Dg4QDMINRbkZj3EKjS/lpA2yePDJna3yZrBl/FMC/Ufb1uJw/t2pHvyeKdcS4E+9nnghe6rQjbzBcbf2yrRWaal6Eb7QvLrFZK27QwMPY0WHGBfX8lizLO0IXtxAc2NBXbrDfImtsJFInNP1R3pA4KvJ1N2e4enITcZUIERa7epx2d0Ha2hQqPLRhu0uxeeluA5TyDrZq7O5ULQq4PE3mv1Nl3y33rD68xFKZ3O3mbPG4u8E5zDDj7j2MrFJlRfKXFbsZHKnYFPvt5H48/5ZKv7ze2nNiTX0zOVz5rzF0RMAOxfRmSRnTyf9xVD0iiPVo46RRYMpjmvbUrZFJJ/ZIenBUEwE0ExP89TdIjKdqF+KU8fkqmphSkt7E03bftE6w6yT7QFTkdVq/yl/oRxFySjiqVOwOgkhPJs0jI2VivU4+R3knCKhVQb4GEJFbW3RvokLjqdp6PDR1E/s5UDLnJyYI+6FLxR97hMcw1dn6hi2wL9GR0c6Mb62bRQHPPWJlmN53ACxbSsr6znhcVOx9JtlcWvQn1nrE+aC0js3ouGgY4jcj62SBnI7KQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:EAYPR12MB999132.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(6133799003)(18002099003)(22082099003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cEhkaEcyUVNHSGJtck5Yc2xLNTY5VVJ4bWxGOVJjMko2WnJqUlllVUZkc1Jp?=
 =?utf-8?B?TXp2Q1YvbzBQcUdIYXJFWWNRMzZTVExoTXlwbXhoQTZxNVp3NVBveTFpaEF4?=
 =?utf-8?B?VHIxWjFSVyt3NU9IZ3poRm9jVHJwTUFLelVYanhPRUMwMTJpOG9CcTFJenFS?=
 =?utf-8?B?YXFyUHV2emxNNDI2UUVjTXVuWG9RMEEwSXJMUzRQNll0SktScysrYUpVdnc3?=
 =?utf-8?B?bWZ1cG1STE55ZWpWV0ltMTNRcUdoVmVkd0VsZ0tGMHJmb0FaOHdLb1FHL1Nm?=
 =?utf-8?B?SWoxQXVRcUxIUFFZMldRczFZN2N2Vm5uWGJLWEtqdkE0bFRyZU5rNG9FUTFa?=
 =?utf-8?B?Y3RuZWxpSEp3OXRCRHlwVitSTGNERmFFM3ZQTklvMXRYSU5TVnRRc1lJVGw1?=
 =?utf-8?B?Mm5PWGtBYTlwZm8xK1VHZURWWEJFRlZZcklVS081akFmMFlsaDB3NXNOQ3N4?=
 =?utf-8?B?Rk1RRzM1U0t1dEs3STFDa0ZtdEZJb1ZHVVl5bjBaN1ZYSDNtMHJyR2RqTkps?=
 =?utf-8?B?dVZyanJBSWRPYjFXOFUwNkU3MzBtTjhtdWtybXk3RVJPQ0FaOFJNYVI1SExQ?=
 =?utf-8?B?NXA1MVFHdElaMjNkNFRNamxaRG51Z3UwaFRnVnlVODZuOG1QL3gycE5aclBm?=
 =?utf-8?B?TmFObktZdWZwaHJidXoyZzgwUThVOGZiZDlOQ3l2dndkRGdrSTFwMk9KRld4?=
 =?utf-8?B?RWp2K0U2Z3JFUXV6dkhyVUdZWXFYS1F2OXUxY21jMU96R2UzbXJpMzVWSitM?=
 =?utf-8?B?ajNSc1dYbldOY1Bidk9IWW9DTUN3SXJLL1d6bGwydWM2WFRiZnRGd05LVkFv?=
 =?utf-8?B?cDdMQWtWblY5NjRqY0dqczRGOEJlZk41ZHNVdTlaejlPTTBoTmw4d1ZjWjRj?=
 =?utf-8?B?RmVuWHJycmZONXhKaHpmRTJwZk1hL3hGS1dFS3dyeGk5b0FuOGN1TVhzNGZy?=
 =?utf-8?B?OGNDY0ZlMndTVm5ud2k2TWtibVUxNHpxRkJkMy94N1JlUlpnd0dSNGMwcE5Z?=
 =?utf-8?B?REJyRCtaYVhManJYNWliL2NzNVNrQStKTm9GZjQwTFhDQmpzdnh5ZFhoWFJq?=
 =?utf-8?B?S2VBY2lUTFZCVXpWckQ0Z2JHQmc3YVp5WDJEQ3JTdDF5bmZOQ2ttb2JJUG5Y?=
 =?utf-8?B?NkZVRy8wREJiSjJML0FzZWZBRVU4NmFaMFloUnlLc25PRTRpNGlyanpja0I5?=
 =?utf-8?B?T3ZobFI4OXp1Sk4rMkdscDBKQnZLOWhITE5nZ2N5TW1ZWGs2OHZ6eVVmN1Jv?=
 =?utf-8?B?bWZBYW5ENE52Z3NpRHZrMzBHRHJsL1BpcXVMN1Z0TDFwTDA5T01uTWVFaVky?=
 =?utf-8?B?QU01ME1ySVQrZ0dselYvTHNRSWQ0cUhFUW8zUElZYU9iTjhJYWJoQ0ZnSGli?=
 =?utf-8?B?N1AyTzY3SnErdzgxMTNQWkh1MldFTkFyUVVma1RzUjV1TzN3K2plMHJWUldP?=
 =?utf-8?B?VnVqUlRLUmhodk9ZMnN4SGczNlRwbDAzNSs5NXlJdzRLUlpENU1vUXpVay9B?=
 =?utf-8?B?YjNxWjNRN2ExWkY2T0paSFNtUmhIeEY3TWVhT3cwaSs3ckhiMGxwQ1drZ28y?=
 =?utf-8?B?Z2FrMzczVk1xR0VqV1k0cmFTQ3RMUm9CYTZ2VTZQRmtseHRBdUE4S3ZZREk5?=
 =?utf-8?B?YUd6ekxKalpDbzl4Nld4ck9zUXVBZEJ3c0toSmRGakd6YWQ1MDhVNjR2YU1C?=
 =?utf-8?B?YmNoRlo3Z3d6NjJLRHVod0s2M25lb09sTldkSGR3bWpjS2pLa3FUNUpucGs2?=
 =?utf-8?B?ckk2aE1CS3V1MVp3V1ZrN0NpMHRrNkdxL3NpeG94WEpxbXljblhHL1NZcWlo?=
 =?utf-8?B?VTNic3NkWW14RTVuM2o0bVQrenVrR2ljUGxoOXdCWDlra3U0bStxcHV2Ly9Q?=
 =?utf-8?B?ZXlWemIwaWxaRXhsbXNZTk1WNXNIMkhUTytWS3pMU2F5NUgwN3F1Y2VTRXZN?=
 =?utf-8?B?ZTVjNzlZMVFmYU1XaUVSakxIYUtCNXhpT3hVdnJ6Wmk0VU02eGpLaEpsbSsx?=
 =?utf-8?B?Nk1GN3BOa1dCeFBFclo1VlhXSS9HQnNwaFF4ZytCUkdXMnFReHBWd0VwVU04?=
 =?utf-8?B?L1UrejROTGU2MG5NeWs1OEZQY3kwdlBqczJtR1VWRlZpUmdWcy9IbVYxcDNG?=
 =?utf-8?B?Z1B0MmFQdlVqSm5JS3paamFWZmhnRzEzOEFCOUJUbUlQeDBiWkJSS0dUNTFP?=
 =?utf-8?B?K2Z4R2RXNVV3U1dtTjh5Z2ZJS0xoTnZ5Y3V6RERNd1AxN0NGRGZ5WExzSHlB?=
 =?utf-8?B?N0pWdFVhUWJhVXlFMXpJK3FOZEMvd2lBb21WTjV0b2lzWXV6eTVMUU05d2Y1?=
 =?utf-8?B?OTlWU3JZdVV0b3RPSzNRejNpdHJ6aTJ5bExmT2Jiemh4QWxnOTVldz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c588108b-ab16-4cc6-0639-08debfcbc8d3
X-MS-Exchange-CrossTenant-AuthSource: EAYPR12MB999132.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 10:51:50.5575 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 44sP1Fk9O5ll3D8yVgDcee7cEEzH4LZbNUCpJ+G5ZyLZ8gxFtY2kyW/R8v9NsUIQBJP0Ym/WigZQZs8KhndiWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB8557
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
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arunpravin.paneerselvam@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: B8CCA61DE4B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 5/29/2026 11:11 PM, Matthew Auld wrote:
> Hi,
>
> On 27/05/2026 12:29, Arunpravin Paneer Selvam wrote:
>> The current buddy allocator maintains separate clear_tree[] and
>> dirty_tree[] rbtrees per order, preventing coalescing between cleared
>> and dirty buddies. Under mixed workloads, this creates a merge barrier:
>> adjacent buddies frequently end up split across trees, forcing reliance
>> on __force_merge() during allocation.
>>
>> __force_merge() performs an O(N x max_order) scan under the VRAM manager
>> lock, leading to allocation stalls and failures for large contiguous
>> requests even when sufficient total free memory is available.
>
> So is this contig with non power-of-two sizes?
Both power-of-two and non-power-of-two contiguous requests are affected 
- in either case, the required higher-order block can't form when its 
lower-order buddies are separated by clear/dirty state across the dual 
trees. But the core issue we are seeing is VRAM fragmentation caused by 
massive small allocations (e.g., thousands of 4 KiB–8 KiB buffers) that 
end up split across clear and dirty trees, preventing buddy coalescing. 
This leads to allocation failures and OOM in later workloads even when 
sufficient total free VRAM is available.
>
> Do we know if we could force_merge everything in one go or somehow be 
> more aggressive and do more than needed now, at the first sign of 
> contention here, instead of doing it piecemeal? Downside would be 
> losing more of the clear tracking, when this happens, but more 
> re-merging.
>
> Could we have another per-order list, of all blocks that we failed to 
> merge, when we did the free step? When doing the force merge step, we 
> maybe don't need to search blindly and can focus instead on the stuff 
> tracked in those lists? Maybe it doesn't need to be a list, but could 
> be another rb-tree?
>
> We know the size of the total allocation, if we trigger force_merge, 
> could we try to merge enough in one go for the entire allocation, 
> instead of restarting the entire thing on the next iteration? Would 
> that help at all?
>
> But I guess these are more for the stalling side, and won't help much 
> with the contig angle?
The memory is highly fragmented into mostly 4 KiB chunks and small 
scattered blocks across the dual trees, so although total free memory 
exists, it is split into low-order fragments. The workload then requests 
very large contiguous allocations (tens of GBs, e.g., ~64 GiB), which 
fail with OOM because the allocator cannot form sufficiently large 
high-order blocks from the fragmented space. We could go with more 
aggressive merging or merge-in-one-go approaches, but this might waste 
more cleared memory. I think fundamentally the buddy allocator should be 
allowed to merge unconditionally - the single-tree approach with 
unconditional coalescing would improve the fragmentation and benefit 
contiguous allocations along with addressing the stalling and latency 
issues.
>
> For the extent idea, is there any merit in maybe doing this for all 
> contig blobs, and not just cleared stuff? Or is the workload you are 
> seeing only benefit users that want cleared stuff? Wondering if this 
> would benefit all users that want contig? Like if we hypothetically 
> kept clear and dirty separate, like we do now, but with an improved 
> force_merge, and then have extent tracking for all contig blobs and 
> replace the try_harder stuff? When you do a contig alloc, the 
> individual clear/dirty is still all there within the range, so you can 
> skip re-clearing in some cases. I guess downside is overall more fuzzy 
> contig + clear/free path, but I guess you would never get allocation 
> failures, when there is sufficient contig space?
Yes, extending extent tracking to all contig allocations has merit, but 
the core problem remains - with the dual-tree design, we still need 
force_merge to undo the clear/dirty split before those extents can form. 
In cases like heavy small-allocation workloads (thousands of 4 KiB 
buffers) running first, the memory ends up massively fragmented across 
both trees. When a very large contiguous allocation (e.g., ~64 GiB) 
comes in later, the allocator fails with OOM even though sufficient 
total free memory exists, because the extent tracker can't find a 
contiguous range that was never allowed to merge in the first place. I 
think the dirty/clear split is fundamentally the problem - allowing the 
buddy allocator to merge unconditionally removes this barrier, and the 
clear tracker can then be layered on top as an optimization without 
blocking coalescing.
>
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
>
> Since there is no separate tracking for dirty stuff, is the 
> non-cleared alloc path a bit more "fuzzy" now, with it potentially 
> stealing cleared memory, or is it the same behaviour still?
Right, on v4, the dirty and mixed (partially cleared) blocks are 
allocated for the non-cleared alloc path, which can end up stealing 
cleared memory. On v5, I plan to address this with a three-tier dirty 
allocation fallback: dirty → mixed → clear, driven by rbtree augment 
bits (subtree_has_dirty, subtree_has_mixed), each pass O(log N). The 
split-descent also applies the same preference at every level when 
carving a higher-order block, so cleared memory is preserved as much as 
possible and only used as a last resort.
Thoughts ?
>
> For drivers that don't use free tracking, is there some benefit? Are 
> there any downsides there? I assume that clear tracker is always empty.
Correct, for drivers that don't clear memory, the clear tracker is 
always empty and they simply allocate from the free_tree[]. Benefits:

Single tree per order instead of dual trees (fewer rbtree operations)
No force_merge path at all (unconditional coalescing at free time)
Simpler code path overall

No real downsides - the clear tracker adds zero overhead when empty, and 
the augment bits would simply show all blocks as dirty, so the walk 
degenerates to a normal rbtree lookup with no extra cost.

Regards,
Arun.


