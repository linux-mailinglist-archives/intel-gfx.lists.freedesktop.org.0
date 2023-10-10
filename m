Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E4C7BF6AF
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 11:00:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591B310E330;
	Tue, 10 Oct 2023 09:00:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92BF710E330
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 09:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696928446; x=1728464446;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=X8HOLmE0Hp+tg0jTbzueHZQ2zc6I0rlTS0GSphSlbDU=;
 b=j+sUdO3ZZPwfPRe0gL0sixe5rF7i02J3N552EqGM66XC4buutNpV51KW
 PFfM0nFXZK7B4KaIx2FQD0TQsRu6RXRyPix8AsD8+1MaNP4MN2Oc6eoRD
 SLoKJZRBwVXkLvvftOhfOZb4I/H8BG5kG/Neo/2dID/dO7z5FS1uhi5ZH
 d9TlLG8YTvGmUoLGE+W/DfKRn/xiCpge0nYeE/UcFsQrmoOoBXA8tryVh
 2/Hge2Dwj0H9oNAn2FhBUoWeAUlmXBTPwst4Ra3koX1bdh2sHlChLCwZu
 CdxHZw4hmhaU5fgYSuytIM7TBN/w3j6E4FQtDEJKq7M0weRGwgs3r8UGj w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="364640217"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="364640217"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 02:00:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="757044149"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="757044149"
Received: from emikisch-mobl.amr.corp.intel.com (HELO [10.213.174.67])
 ([10.213.174.67])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 02:00:43 -0700
Message-ID: <8d3db6e2-9456-7e4d-3262-034e48435a09@linux.intel.com>
Date: Tue, 10 Oct 2023 10:00:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: John Harrison <john.c.harrison@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
 <20231006182051.1599923-4-jonathan.cavitt@intel.com>
 <d6051b4f-dc0a-2df7-71ca-5bf9ec209d27@linux.intel.com>
 <ad5e3e47-aa7a-4c96-8dac-42691390ce4e@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ad5e3e47-aa7a-4c96-8dac-42691390ce4e@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v8 3/7] drm/i915: Define and use GuC and CTB
 TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/10/2023 20:14, John Harrison wrote:
> On 10/9/2023 01:56, Tvrtko Ursulin wrote:
>> On 06/10/2023 19:20, Jonathan Cavitt wrote:
>>> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>>>
>>> The GuC firmware had defined the interface for Translation Look-Aside
>>> Buffer (TLB) invalidation.  We should use this interface when
>>> invalidating the engine and GuC TLBs.
>>> Add additional functionality to intel_gt_invalidate_tlb, invalidating
>>> the GuC TLBs and falling back to GT invalidation when the GuC is
>>> disabled.
>>> The invalidation is done by sending a request directly to the GuC
>>> tlb_lookup that invalidates the table.  The invalidation is submitted as
>>> a wait request and is performed in the CT event handler.  This means we
>>> cannot perform this TLB invalidation path if the CT is not enabled.
>>> If the request isn't fulfilled in two seconds, this would constitute
>>> an error in the invalidation as that would constitute either a lost
>>> request or a severe GuC overload.
>>>
>>> With this new invalidation routine, we can perform GuC-based GGTT
>>> invalidations.  GuC-based GGTT invalidation is incompatible with
>>> MMIO invalidation so we should not perform MMIO invalidation when
>>> GuC-based GGTT invalidation is expected.
>>>
>>> Purpose of xarray:
>>> The tlb_lookup table is allocated as an xarray because the set of
>>> pending TLB invalidations may have no upper bound.  The consequence of
>>> this is that all actions interfacing with this table need to use the
>>> xarray functions, such as xa_alloc_cyclic_irq for array insertion.
>>>
>>> Purpose of must_wait_woken:
>>> Our wait for the G2H ack for the completion of a TLB invalidation is
>>> mandatory; we must wait for the HW to confirm that the physical
>>> addresses are no longer accessible before we return those to the system.
>>>
>>> On switching to using the wait_woken() convenience routine, we
>>> introduced ourselves to an issue where wait_woken() may complete early
>>> under a kthread that is stopped. Since we send a TLB invalidation when
>>> we try to release pages from the shrinker, we can be called from any
>>> process; including kthreads.
>>>
>>> Using wait_woken() from any process context causes another issue. The
>>> use of is_kthread_should_stop() assumes that any task with PF_KTHREAD
>>> set was made by kthread_create() and has called set_kthread_struct().
>>> This is not true for the raw kernel_thread():
>>
>> This explanation misses the main point of my ask - which is to explain 
>> why a simpler scheme isn't sufficient. Simpler scheme aka not needed 
>> the xarray or any flavour of wait_token().
>>
>> In other words it is obvious we have to wait for the invalidation ack, 
>> but not obvious why we need a complicated scheme.
> The alternative being to simply serialise all TLB invalidation requests? 
> Thus, no complex tracking required as there is only one in flight at a 
> time? That seems inefficient and a potential performance impact if a 
> bunch of invalidations are required back to back. But given that the 
> current scheme is global invalidation only (no support for ranges / per 
> page invalidation yet), is it possible to get multiple back-to-back 
> requests?

It is possible to get a stream of invalidation requests but all that 
come with put_pages() are serialized on the gt->tlb.invalidate_lock 
anyway. So for them only benefit with the complicated approach versus 
the dumb single wait queue is avoiding wake up storms.

Then the second source of TLB invalidations is ggtt->invalidate(). I am 
not sure if those are frequent enough to warrant parallelism. Definitely 
shouldn't be for things like context images and ringbuffers. So I was 
asking if maybe framebuffers but don't know.

Regards,

Tvrtko
