Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2E1C64343
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 13:55:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8942810E0A7;
	Mon, 17 Nov 2025 12:55:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MxbnnACJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5693C10E0A7;
 Mon, 17 Nov 2025 12:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763384105; x=1794920105;
 h=message-id:date:mime-version:cc:subject:to:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rgFkKHH11qVMhMqSBcSWzBvpo3MTJaH2NetAY/TypaY=;
 b=MxbnnACJXy7sUKbV2LC6QU66mapVvMsn44ij3Dy8s/PXoandsRV8P+tF
 PPbjJ4ELgq/jBSv8MhVZLTtgDUyVjyceQ3ddWhAgQwgfPYSZs2KMEOpaf
 XNJYsc7YLPfhE8oREnBTl5/O8MWQPK4XP8go5g6OxnwOIpE3rrHFL/Aw8
 /AiUK3B/7ZAxDf60w7jT9vIB01NCAhSJ/lyl8l8aWbjSfpNa08X+GYmJZ
 mQ4NhnzPejWx1Ht42vQZm/1mW9Nf4XYfWrZm5vzaxZd3dCKeTkkRrYisu
 rAGmRClwzNUwv6+rkYq3KJfSwZVyZyJnj3aSk6+76xhz9z+txLBz8vDwE w==;
X-CSE-ConnectionGUID: 5abV79WZQoOZyM421VcpVA==
X-CSE-MsgGUID: 2TUSax3BQoq8srF6ZlzWdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="64382900"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="64382900"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 04:55:05 -0800
X-CSE-ConnectionGUID: /oEv5M5FTo++8/L2GF8YUQ==
X-CSE-MsgGUID: ibLS56sBQAGikFZdceUqgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="221087043"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.124.246.21])
 ([10.124.246.21])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 04:55:02 -0800
Message-ID: <c0f614d6-cf41-4585-963f-bb6081c3f39f@linux.intel.com>
Date: Mon, 17 Nov 2025 20:54:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: baolu.lu@linux.intel.com,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, matthew.auld@intel.com,
 iommu@lists.linux.dev
Subject: Re: REGRESSION on linux-next (next-20251106)
To: Jason Gunthorpe <jgg@nvidia.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Kevin Tian <kevin.tian@intel.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <aRUK8vDZ3dE1zNxL@nvidia.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <aRUK8vDZ3dE1zNxL@nvidia.com>
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

On 11/13/2025 6:32 AM, Jason Gunthorpe wrote:
> On Mon, Nov 10, 2025 at 12:06:30PM +0530, Borah, Chaitanya Kumar wrote:
>> Hello Jason,
>>
>> Hope you are doing well. I am Chaitanya from the linux graphics team in
>> Intel.
>>
>> This mail is regarding a regression we are seeing in our CI runs[1] on
>> linux-next repository.
>>
>> Since the version next-20251106 [2], we are seeing our tests timing out
>> presumably caused by a GPU Hang.
> 
> Thank you for reporting this.
> 
> I don't have any immediate theory, so I think it will need some
> debug. Maybe Kevin or Lu have some idea?
> 
> Some general thoughts to check
> 
> 1) Is there an iommu fault report? I did not see one in your dmesg,
>     but maybe it was truncated? It is more puzzling to see an iommu
>     related error and not see a fault report..
> 
> 2) Could it be one of the special iommu behaviors to support iGPU that
>     is not working? Maybe we missed one?
> 
> 3) I seem to recall Lu tested the coherent cache flushing, but that
>     would also be a good question, is this iGPU cache incoherent with
>     the CPU? Could this be a cache flushing bug? It is very hard to
>     test that so it would not be such a surprise if it has a bug..

I had the chance to remotely access the test machine. The test device is
00:02.0. It has a dedicated IOMMU with the capabilities listed below:

CAP                     0x08            0xc9de008cee690462
ECAP                    0x10            0x0012ca9a00f0ef5e

ECAP.SMPWC=0, which means this IOMMU unit hardware has a non-coherent
page walker. Kernel v6.18-rc5 works, but when merge the changes in the
iommu/next branch, the test case failed with GPU hang.

The PASID table entry with v6.18-rc5 kernel:
0x00000001067fc000:0x0000000000000002:0x0000000000000049
The PASID table entry with iommu-next kernel:
0x0000000105a86000:0x0000000000000002:0x0000000000000049

They are the same, except for the page table pointer.

On another machine, I opt-out of the ECAP.SMPWC capability and find that
the clflush works for an idxd device as shown below:

# dmesg | grep clflush_cache_range | grep "idxd 0000:00:02.0"
[   45.199811] idxd 0000:00:02.0: DMAR: clflush_cache_range: 
0xffff9ff04eaaf000, 1000
[   45.200923] idxd 0000:00:02.0: DMAR: clflush_cache_range: 
0xffff9ff046352000, 8
[   45.202082] idxd 0000:00:02.0: DMAR: clflush_cache_range: 
0xffff9ff052bd3000, 1000
[   45.203184] idxd 0000:00:02.0: DMAR: clflush_cache_range: 
0xffff9ff04eaaf000, 8
[   45.204236] idxd 0000:00:02.0: DMAR: clflush_cache_range: 
0xffff9ff052bd2000, 1000
[   45.205318] idxd 0000:00:02.0: DMAR: clflush_cache_range: 
0xffff9ff052bd3018, 8
[   45.206370] idxd 0000:00:02.0: DMAR: clflush_cache_range: 
0xffff9ff052bd1000, 1000
[   45.207451] idxd 0000:00:02.0: DMAR: clflush_cache_range: 
0xffff9ff052bd2ff8, 8
[   45.208503] idxd 0000:00:02.0: DMAR: clflush_cache_range: 
0xffff9ff052bd1ff0, 8
[   45.209555] idxd 0000:00:02.0: DMAR: clflush_cache_range: 
0xffff9ff052bd1ff8, 8

It appears that new page table allocation, page table entry modification
are all followed by a clflush_cache_range().

> 
> 4) Nobody has reported any other problems so far, so I'm inclined to
>     think the map/unmap is working - but maybe there is some edge case
>     the gpu driver is tripping up on?
> 
> The lack of a fault report is very puzzling, even if it was #3 I would
> think a fault would be the most likely outcome of missing
> flushing.. The lack of a fault report suggests the wrong physical
> address was mapped as present which points to #4.
> 
> Can you investigate a bit further and maybe see if we can get a bit
> more detail what that GPU thinks went wrong?
> 
> Jason
> 

Thanks,
baolu
