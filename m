Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6915843CB
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 18:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D530D113E7B;
	Thu, 28 Jul 2022 16:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF1E611300D
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 16:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659024431; x=1690560431;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to:content-transfer-encoding;
 bh=UgyzNxF9P294RpRS+5SaiIAKbRmvYGtYayaYg3cxzXY=;
 b=CxankS0q97MPk2xFtNHTBZJeFcx0yGct2pJukqQLWYfjspZToHKlsdOk
 an4mDzBBw9oqe0+4aWJP7wgxjUHTjTB2HrRi53lTzzkjWnGaWb8cMJxrB
 4995uzAxe9PNvAnjyIjJ9pCKNr7I0RUukP1/r/M5NVtzxaVQHQS2+2QX0
 5EGTIR51E08yZUXQScMbj8uydz1vvMcYtygPO1xESefsRqUnWDD4XlIw0
 LsTOuKxJ5p6cZ5EF0LTP9u+DfWI7qRXJ4S1ZgvenF/aMJdnibj4zNkg7R
 K+0L9m5PRfbP0ksTqrzqml+LYbQ0a5Hv9wdmF31CfMdpUB1lEwB8wB7WM A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="287305119"
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="287305119"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 09:07:11 -0700
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="633752455"
Received: from niviojax-mobl2.ger.corp.intel.com (HELO [10.213.204.129])
 ([10.213.204.129])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 09:07:09 -0700
Message-ID: <7f64bec3-cc8f-a33c-cf11-34b1332ea39a@linux.intel.com>
Date: Thu, 28 Jul 2022 17:07:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Robert Beckett <bob.beckett@collabora.com>,
 intel-gfx@lists.freedesktop.org, Patchwork <patchwork@emeril.freedesktop.org>
References: <20220726153935.2272777-1-bob.beckett@collabora.com>
 <165899531215.21236.2568971216791916773@emeril.freedesktop.org>
 <23d3fdcb-fa6e-5e77-34fe-940f65530589@linux.intel.com>
 <29517b48-77e7-8124-44d5-43276b316f11@collabora.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <29517b48-77e7-8124-44d5-43276b316f11@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_stop_using_swiotlb_=28rev6=29?=
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
Cc: Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 28/07/2022 16:54, Robert Beckett wrote:
> On 28/07/2022 15:03, Tvrtko Ursulin wrote:
>>
>> On 28/07/2022 09:01, Patchwork wrote:
>>
>> [snip]
>>
>>>         Possible regressions
>>>
>>>   * igt@gem_mmap_offset@clear:
>>>       o shard-iclb: PASS
>>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb6/igt@gem_mmap_offset@clear.html> 
>>>
>>>         -> INCOMPLETE
>>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v6/shard-iclb1/igt@gem_mmap_offset@clear.html> 
>>>
>>
>> What was supposed to be a simple patch.. a storm of errors like:
> 
> yeah, them's the breaks sometimes ....
> 
>>
>>   DMAR: ERROR: DMA PTE for vPFN 0x3d00000 already set (to 2fd7ff003 
>> not 2fd7ff003)
>>   ------------[ cut here ]------------
>>   WARNING: CPU: 6 PID: 1254 at drivers/iommu/intel/iommu.c:2278 
>> __domain_mapping.cold.93+0x32/0x39<>
>>   Modules linked in: vgem drm_shmem_helper snd_hda_codec_hdmi 
>> snd_hda_codec_realtek snd_hda_cod>
>>   CPU: 6 PID: 1254 Comm: gem_mmap_offset Not tainted 
>> 5.19.0-rc8-Patchwork_106589v6-g0e9c43d76a14+ #>
>>   Hardware name: Intel Corporation Ice Lake Client Platform/IceLake U 
>> DDR4 SODIMM PD RVP TLC, BIOS >
>>   RIP: 0010:__domain_mapping.cold.93+0x32/0x39
>>   Code: fe 48 c7 c7 28 32 37 82 4c 89 5c 24 08 e8 e4 61 fd ff 8b 05 bf 
>> 8e c9 00 4c 8b 5c 24 08 85 c>
>>   RSP: 0000:ffffc9000037f9c0 EFLAGS: 00010202
>>   RAX: 0000000000000004 RBX: ffff8881117b4000 RCX: 0000000000000001
>>   RDX: 0000000000000000 RSI: ffffffff82320b25 RDI: 00000000ffffffff
>>   RBP: 0000000000000001 R08: 0000000000000000 R09: c0000000ffff7fff
>>   R10: 0000000000000001 R11: 00000000002fd7ff R12: 00000002fd7ff003
>>   R13: 0000000000076c01 R14: ffff8881039ee800 R15: 0000000003d00000
>>   FS:  00007f2863c1d700(0000) GS:ffff88849fd00000(0000) 
>> knlGS:0000000000000000
>>   CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>>   CR2: 00007f2692c53000 CR3: 000000011c440006 CR4: 0000000000770ee0
>>   PKRU: 55555554
>>   Call Trace:
>>    &lt;TASK&gt;
>>    intel_iommu_map_pages+0xb7/0xe0
>>    __iommu_map+0xe0/0x310
>>    __iommu_map_sg+0xa2/0x140
>>    iommu_dma_map_sg+0x2ef/0x4e0
>>    __dma_map_sg_attrs+0x64/0x70
>>    dma_map_sg_attrs+0x5/0x20
>>    i915_gem_gtt_prepare_pages+0x56/0x70 [i915]
>>    shmem_get_pages+0xe3/0x360 [i915]
>>    ____i915_gem_object_get_pages+0x32/0x100 [i915]
>>    __i915_gem_object_get_pages+0x8d/0xa0 [i915]
>>    vm_fault_gtt+0x3d0/0x940 [i915]
>>    ? ptlock_alloc+0x15/0x40
>>    ? rt_mutex_debug_task_free+0x91/0xa0
>>    __do_fault+0x30/0x180
>>    do_fault+0x1c4/0x4c0
>>    __handle_mm_fault+0x615/0xbe0
>>    handle_mm_fault+0x75/0x1c0
>>    do_user_addr_fault+0x1e7/0x670
>>    exc_page_fault+0x62/0x230
>>    asm_exc_page_fault+0x22/0x30
>>
>> No idea. Maybe try CI kernel config on your Tigerlake?
> 
> I have an idea of what could be happening:
> 
> The warning is due to a pte already existing. We can see from the 
> warning that it is the same value, which indicates that the same page 
> has been mapped to the same iova before.
> 
> This map shrink loop will keep mapping the same sg, shrinking if it 
> fails to hopefully free up iova space.
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/i915/i915_gem_gtt.c?h=v5.19-rc8#n32 
> 
> 
> If we now look at the intel iommu driver's mapping function:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/iommu/intel/iommu.c?h=v5.19-rc8#n2248 
> 
> 
> If that -ENOMEM loop breaking return is hit (presumably running out of 
> pte space, though I have not delved deeper), then it will return back up 
> the stack, eventually returning 0 from dma_map_sg_attrs() indicating the 
> error. This will cause a shrink and retry.
> 
> The problem is that the iommu does not undo it's partial mapping on 
> error. So the next time round, it will map the same page to the same 
> address giving the same pte encoding, which would give the warning 
> observed.
> 
> I would need to get some time to try to repro and debug to confirm, but 
> this looks like it might be exposing an iommu driver issue due to us 
> changing our mapping patterns because the segment sizes are now different.
> 
> I'll see if I can get some time allotted to debug it further, but for 
> now, I don't have the bandwidth, so this may need to go on hold until I 
> or someone else can get time to look in to it.

Yeah that's understandable. I also currently don't have any free 
bandwidth unfortunately.

+ Christoph FYI, as per above, swiotlb API usage removal is currently a 
bit stuck until we find someone with some spare time to debug this further.

Regards,

Tvrtko
