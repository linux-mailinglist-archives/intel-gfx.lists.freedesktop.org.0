Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFs/DRL//WmklgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 17:19:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFADF4F896B
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 17:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35E5E10E5DB;
	Fri,  8 May 2026 15:19:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NckGHrEy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB5B610E289;
 Fri,  8 May 2026 15:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778253581; x=1809789581;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Tv/Cw4u7pVl4/kSQALPfBmIqsTWGj28nLjaKkNqI4UI=;
 b=NckGHrEyE9gOWO2ZVFRZi99oEQHpFXJUwYJ0f+IiKOpJ7ZCo1jd06OOa
 fo3895Dbcv79hkyYzCxDdV6cYlMtm7IQMHar3pwOxwp2IuMYqfmvaDYnC
 KlW8Rlyb04e8y+CBkzdB3ULB8hqw/zh+CQB+qIPB8otci2THuNMorWGu6
 +yizdrrLGXzZ+BZuK06VUb6bVzhhSz22chjTHBm5OrwmCElncP0VDUiV2
 pRH0SSTDH/5EhPCZPYtiEWBJASMRkWiamN98awrmQlIFDCY+6Cz5FQinR
 HzgJhbWkBqXJKBk+maHAOAX6jqyATmdlqBiYILLtirG0kMrERvq8YGXoh g==;
X-CSE-ConnectionGUID: RQXfyaYnS2GYnRfDAEdMxg==
X-CSE-MsgGUID: SPgqJMhZTr+QsE3pMQH9BQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="83094432"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="83094432"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:19:40 -0700
X-CSE-ConnectionGUID: cJ/DhAQpSMiEDlpqnevhtA==
X-CSE-MsgGUID: 3fKq1iO5SeGBrwgNByLP5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241753473"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO [10.245.244.63])
 ([10.245.244.63])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:19:38 -0700
Message-ID: <75bcbaac-c5f9-4dc6-af1e-4d9ed66d5f16@intel.com>
Date: Fri, 8 May 2026 16:19:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] gpu/buddy: replace dual-tree/force_merge with
 decoupled clear tracker
To: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Cc: alexander.deucher@amd.com
References: <20260504111055.262964-1-Arunpravin.PaneerSelvam@amd.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20260504111055.262964-1-Arunpravin.PaneerSelvam@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Queue-Id: CFADF4F896B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.auld@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,amd.com:email,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

On 04/05/2026 12:10, Arunpravin Paneer Selvam wrote:
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
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Christian König <christian.koenig@amd.com>
> Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>

Still need some more time to fully go over this, but in the meantime 
there is some feedback here from sashiko, which might be worth a look:

https://sashiko.dev/#/patchset/20260504111055.262964-1-Arunpravin.PaneerSelvam%40amd.com

