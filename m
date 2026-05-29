Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 9jFxILvPGWr/zAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 19:41:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFE0606B40
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 19:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18565112341;
	Fri, 29 May 2026 17:41:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jDW8ApJD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AFF111233E;
 Fri, 29 May 2026 17:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780076470; x=1811612470;
 h=message-id:date:mime-version:from:subject:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=K9pLffMFCqJp1006okxYERprdr0XSFWhIpHQqySsqPQ=;
 b=jDW8ApJD9cwxWtaeVmkDBNDYtHFjRCcZ/yHsQNjwVo1BLH5++L5YCJPj
 vcg5c9rzSADkk5dAgGurXFbkpAnd2m2gpw1JwqmO/j4UAaTMDTwpGpsQ7
 1x0v4dWr1p3+3rAgEsvGmy+cWtQRC8ueabMZ/eO0oOqqavD0/9urSaftG
 1QDzcczSJhshyLLWKJ7sQTcIjrfm5K/l8MfTfSVWldj7AOHhur8MFtXqB
 eekQ+DJ0eCej9MkT8PMntsiUfuLcOpu5zaNGnzcyFMd9IeIl3XtNkTxeT
 Vx2FYXbxRwP4ZFQ4QOjd3kY7iGJZqD3RBl9IDj4Q+ujrAi7wnn+ewPnYn w==;
X-CSE-ConnectionGUID: WRSjdSssSFK4SU0WzHLhUw==
X-CSE-MsgGUID: TeUqshRtRt+V1fkNqRA0kw==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="98508578"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="98508578"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:41:09 -0700
X-CSE-ConnectionGUID: w2XtUBaTRgGZgJINMp6xpQ==
X-CSE-MsgGUID: eXOYA3E6SN2XFa/+d+SFxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="240365175"
Received: from amilburn-desk.amilburn-desk (HELO [10.245.244.139])
 ([10.245.244.139])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:41:07 -0700
Message-ID: <c9cdcf8a-d531-4e79-a238-97fd39b8c108@intel.com>
Date: Fri, 29 May 2026 18:41:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Matthew Auld <matthew.auld@intel.com>
Subject: Re: [PATCH v4 1/2] gpu/buddy: replace dual-tree/force_merge with
 decoupled clear tracker
To: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Cc: alexander.deucher@amd.com
References: <20260527112902.3815-1-Arunpravin.PaneerSelvam@amd.com>
Content-Language: en-GB
In-Reply-To: <20260527112902.3815-1-Arunpravin.PaneerSelvam@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1EFE0606B40
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On 27/05/2026 12:29, Arunpravin Paneer Selvam wrote:
> The current buddy allocator maintains separate clear_tree[] and
> dirty_tree[] rbtrees per order, preventing coalescing between cleared
> and dirty buddies. Under mixed workloads, this creates a merge barrier:
> adjacent buddies frequently end up split across trees, forcing reliance
> on __force_merge() during allocation.
> 
> __force_merge() performs an O(N x max_order) scan under the VRAM manager
> lock, leading to allocation stalls and failures for large contiguous
> requests even when sufficient total free memory is available.

So is this contig with non power-of-two sizes?

Do we know if we could force_merge everything in one go or somehow be 
more aggressive and do more than needed now, at the first sign of 
contention here, instead of doing it piecemeal? Downside would be losing 
more of the clear tracking, when this happens, but more re-merging.

Could we have another per-order list, of all blocks that we failed to 
merge, when we did the free step? When doing the force merge step, we 
maybe don't need to search blindly and can focus instead on the stuff 
tracked in those lists? Maybe it doesn't need to be a list, but could be 
another rb-tree?

We know the size of the total allocation, if we trigger force_merge, 
could we try to merge enough in one go for the entire allocation, 
instead of restarting the entire thing on the next iteration? Would that 
help at all?

But I guess these are more for the stalling side, and won't help much 
with the contig angle?

For the extent idea, is there any merit in maybe doing this for all 
contig blobs, and not just cleared stuff? Or is the workload you are 
seeing only benefit users that want cleared stuff? Wondering if this 
would benefit all users that want contig? Like if we hypothetically kept 
clear and dirty separate, like we do now, but with an improved 
force_merge, and then have extent tracking for all contig blobs and 
replace the try_harder stuff? When you do a contig alloc, the individual 
clear/dirty is still all there within the range, so you can skip 
re-clearing in some cases. I guess downside is overall more fuzzy contig 
+ clear/free path, but I guess you would never get allocation failures, 
when there is sufficient contig space?

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

Since there is no separate tracking for dirty stuff, is the non-cleared 
alloc path a bit more "fuzzy" now, with it potentially stealing cleared 
memory, or is it the same behaviour still?

For drivers that don't use free tracking, is there some benefit? Are 
there any downsides there? I assume that clear tracker is always empty.

