Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id S3txJzcsKWrJRwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 11:19:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C691667C0F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 11:19:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Z2LH+sX8;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9226F10E836;
	Wed, 10 Jun 2026 09:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3032510E836;
 Wed, 10 Jun 2026 09:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781083189; x=1812619189;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Y85qMLreVI0AHAcqUW1hyXsv77cphQzeMfTzLfhgTmc=;
 b=Z2LH+sX8uZRn+GmS3yolV0UDs+tPb1fzV6xTUvgLTtz/nE2+eU2BKS/M
 wdNuvKt0GDPsjw+0k+Vh+VPujIWHipkke3+/WQDzG+KYSd6jNbxXWbwkm
 9NEbbNJvqlHxaUlHXyvkZUoSGIT59ojLXTBQO+06JDrRUi+lb6bSkTLFV
 +HIhGg+mLUCFbXNvUOWAnnYI/XA1MM1bzJuWSYC+yV5/kdIJcSq1w1ATe
 C8JwEGx0VOdqD63Kihm1DTlzre+hf8ZDhzbnh67VRDYvZARPuDEJgVur8
 0sCACg9ZZi9qEyOgtO45X1cZrQTCQ3r/5oEMKguHpSNVH3E/sBq5gN2e+ g==;
X-CSE-ConnectionGUID: lB/shqSOSbOFYr1ZmBjCUw==
X-CSE-MsgGUID: oO1mg9I9RtqAQz2kCj6r/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="104536293"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="104536293"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 02:19:49 -0700
X-CSE-ConnectionGUID: tuJW+hsWT0KKsIk6XLFOyg==
X-CSE-MsgGUID: Ew732dcuRYawJeoLlRNvEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="250055004"
Received: from amilburn-desk.amilburn-desk (HELO [10.245.244.17])
 ([10.245.244.17])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 02:19:47 -0700
Message-ID: <3ba98ec2-ea1f-4074-b1cc-456fca283ef8@intel.com>
Date: Wed, 10 Jun 2026 10:19:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] gpu/buddy: replace dual-tree/force_merge with
 decoupled clear tracker
To: Arunpravin Paneer Selvam <arunpravin.paneerselvam@amd.com>,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Cc: alexander.deucher@amd.com
References: <20260527112902.3815-1-Arunpravin.PaneerSelvam@amd.com>
 <c9cdcf8a-d531-4e79-a238-97fd39b8c108@intel.com>
 <9b0add60-9bca-44dc-a95d-be289ea2d3c1@amd.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <9b0add60-9bca-44dc-a95d-be289ea2d3c1@amd.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.auld@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:mid,intel.com:from_mime];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0C691667C0F

On 01/06/2026 11:51, Arunpravin Paneer Selvam wrote:
> 
> 
> On 5/29/2026 11:11 PM, Matthew Auld wrote:
>> Hi,
>>
>> On 27/05/2026 12:29, Arunpravin Paneer Selvam wrote:
>>> The current buddy allocator maintains separate clear_tree[] and
>>> dirty_tree[] rbtrees per order, preventing coalescing between cleared
>>> and dirty buddies. Under mixed workloads, this creates a merge barrier:
>>> adjacent buddies frequently end up split across trees, forcing reliance
>>> on __force_merge() during allocation.
>>>
>>> __force_merge() performs an O(N x max_order) scan under the VRAM manager
>>> lock, leading to allocation stalls and failures for large contiguous
>>> requests even when sufficient total free memory is available.
>>
>> So is this contig with non power-of-two sizes?
> Both power-of-two and non-power-of-two contiguous requests are affected 
> - in either case, the required higher-order block can't form when its 
> lower-order buddies are separated by clear/dirty state across the dual 
> trees. But the core issue we are seeing is VRAM fragmentation caused by 
> massive small allocations (e.g., thousands of 4 KiB–8 KiB buffers) that 
> end up split across clear and dirty trees, preventing buddy coalescing. 
> This leads to allocation failures and OOM in later workloads even when 
> sufficient total free VRAM is available.
>>
>> Do we know if we could force_merge everything in one go or somehow be 
>> more aggressive and do more than needed now, at the first sign of 
>> contention here, instead of doing it piecemeal? Downside would be 
>> losing more of the clear tracking, when this happens, but more re- 
>> merging.
>>
>> Could we have another per-order list, of all blocks that we failed to 
>> merge, when we did the free step? When doing the force merge step, we 
>> maybe don't need to search blindly and can focus instead on the stuff 
>> tracked in those lists? Maybe it doesn't need to be a list, but could 
>> be another rb-tree?
>>
>> We know the size of the total allocation, if we trigger force_merge, 
>> could we try to merge enough in one go for the entire allocation, 
>> instead of restarting the entire thing on the next iteration? Would 
>> that help at all?
>>
>> But I guess these are more for the stalling side, and won't help much 
>> with the contig angle?
> The memory is highly fragmented into mostly 4 KiB chunks and small 
> scattered blocks across the dual trees, so although total free memory 
> exists, it is split into low-order fragments. The workload then requests 
> very large contiguous allocations (tens of GBs, e.g., ~64 GiB), which 
> fail with OOM because the allocator cannot form sufficiently large high- 
> order blocks from the fragmented space. We could go with more aggressive 
> merging or merge-in-one-go approaches, but this might waste more cleared 
> memory. I think fundamentally the buddy allocator should be allowed to 
> merge unconditionally - the single-tree approach with unconditional 
> coalescing would improve the fragmentation and benefit contiguous 
> allocations along with addressing the stalling and latency issues.
>>
>> For the extent idea, is there any merit in maybe doing this for all 
>> contig blobs, and not just cleared stuff? Or is the workload you are 
>> seeing only benefit users that want cleared stuff? Wondering if this 
>> would benefit all users that want contig? Like if we hypothetically 
>> kept clear and dirty separate, like we do now, but with an improved 
>> force_merge, and then have extent tracking for all contig blobs and 
>> replace the try_harder stuff? When you do a contig alloc, the 
>> individual clear/dirty is still all there within the range, so you can 
>> skip re-clearing in some cases. I guess downside is overall more fuzzy 
>> contig + clear/free path, but I guess you would never get allocation 
>> failures, when there is sufficient contig space?
> Yes, extending extent tracking to all contig allocations has merit, but 
> the core problem remains - with the dual-tree design, we still need 
> force_merge to undo the clear/dirty split before those extents can form. 
> In cases like heavy small-allocation workloads (thousands of 4 KiB 
> buffers) running first, the memory ends up massively fragmented across 
> both trees. When a very large contiguous allocation (e.g., ~64 GiB) 
> comes in later, the allocator fails with OOM even though sufficient 
> total free memory exists, because the extent tracker can't find a 
> contiguous range that was never allowed to merge in the first place. I 
> think the dirty/clear split is fundamentally the problem - allowing the 
> buddy allocator to merge unconditionally removes this barrier, and the 
> clear tracker can then be layered on top as an optimization without 
> blocking coalescing.
>>
>>>
>>> Solution
>>>
>>> Replace the dual-tree design with:
>>> - A single free_tree[order] rbtree for dirty and mixed free blocks
>>>    (fully cleared free blocks float outside this tree)
>>> - A lightweight out-of-band clear tracker (gpu_clear_tracker)
>>>
>>> Fully cleared free blocks are tracked outside the buddy trees using an
>>> augmented interval rbtree, enabling O(log E) lookup of the largest
>>> cleared extents.
>>>
>>> Buddy coalescing is now unconditional in __gpu_buddy_free(), regardless
>>> of clear/dirty state. This removes the merge barrier and eliminates the
>>> need for __force_merge().
>>>
>>> Benefits
>>>
>>> - Correct high-order allocations after mixed clear/dirty workloads
>>> - Elimination of O(N x max_order) merge cost from the allocation path
>>> - O(log E) cleared-extent lookup replacing O(N) scans
>>> - Predictable allocation latency under fragmentation
>>> - Reduced complexity with a single tree per order
>>
>> Since there is no separate tracking for dirty stuff, is the non- 
>> cleared alloc path a bit more "fuzzy" now, with it potentially 
>> stealing cleared memory, or is it the same behaviour still?
> Right, on v4, the dirty and mixed (partially cleared) blocks are 
> allocated for the non-cleared alloc path, which can end up stealing 
> cleared memory. On v5, I plan to address this with a three-tier dirty 
> allocation fallback: dirty → mixed → clear, driven by rbtree augment 
> bits (subtree_has_dirty, subtree_has_mixed), each pass O(log N). The 
> split-descent also applies the same preference at every level when 
> carving a higher-order block, so cleared memory is preserved as much as 
> possible and only used as a last resort.
> Thoughts ?

No objections from me. Do you want me to still look at v4 in depth, or 
wait for v5? I only really looked at this from high level.

>>
>> For drivers that don't use free tracking, is there some benefit? Are 
>> there any downsides there? I assume that clear tracker is always empty.
> Correct, for drivers that don't clear memory, the clear tracker is 
> always empty and they simply allocate from the free_tree[]. Benefits:
> 
> Single tree per order instead of dual trees (fewer rbtree operations)
> No force_merge path at all (unconditional coalescing at free time)
> Simpler code path overall
> 
> No real downsides - the clear tracker adds zero overhead when empty, and 
> the augment bits would simply show all blocks as dirty, so the walk 
> degenerates to a normal rbtree lookup with no extra cost.
> 
> Regards,
> Arun.
> 
> 

