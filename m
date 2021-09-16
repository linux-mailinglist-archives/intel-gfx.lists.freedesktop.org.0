Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EAD40D696
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 11:48:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 407D16EB2F;
	Thu, 16 Sep 2021 09:48:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 475 seconds by postgrey-1.36 at gabe;
 Thu, 16 Sep 2021 09:48:40 UTC
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D936EB2F
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 09:48:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id CAF343F3E7;
 Thu, 16 Sep 2021 11:40:42 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IpmOW-D5c-kt; Thu, 16 Sep 2021 11:40:41 +0200 (CEST)
Received: by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 02DF63F2D8;
 Thu, 16 Sep 2021 11:40:40 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b="Cb2RPszU";
 dkim-atps=neutral
Received: from [192.168.0.209] (unknown [192.198.151.53])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 001453601AE;
 Thu, 16 Sep 2021 11:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1631785240; bh=AukGa+7vNuzOZ9mLnixSzzMgsLMMB6gVBmkMHhY6DkU=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=Cb2RPszU8QDwjrLdV98O2i9xRFlT2wERHxxYX1mRJx3BWUIrBEXY451fKgV+KFnGT
 13owyxlSHtcZIx+006xxghyAdQHYA2utsQ65m46fYkJLo/r5DtL5En+kpeP4jSQBZD
 E5dgWcSKeblyV0czCpqzRCmAIVARetL4olVo6ZUc=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <1baadb2d-6636-1fe1-a1a2-34600947c5e7@shipmail.org>
Date: Thu, 16 Sep 2021 11:40:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 00/19] drm/i915: Short-term pinning and
 async eviction.
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


On 8/30/21 2:09 PM, Maarten Lankhorst wrote:
> Remove some parts of the i915_vma api, ensure obj->vma always exists,
> and finally force the object lock to be taken when calling i915_vma_unbind
> is called.

Should this be vma->obj?



>
> With this, locking is a lot cleaner, and we no longer need all the if (!obj->vma) checks.
> We kill off the locking around i915_vma->set/get pages, and kill off the short-term
> pinning/unpinning in execbuf.
>
> After this, we go 1 step further, populate obj->moving where required, and add support
> for async eviction/clearing.

Does the async eviction / clearing depend on the vma cleanup? If not can 
we move that into a separate series?

Thanks,

Thomas



>
> Maarten Lankhorst (19):
>    drm/i915: Move __i915_gem_free_object to ttm_bo_destroy
>    drm/i915: Remove unused bits of i915_vma/active api
>    drm/i915: Slightly rework EXEC_OBJECT_CAPTURE handling
>    drm/i915: Remove gen6_ppgtt_unpin_all
>    drm/i915: Create a dummy object for gen6 ppgtt
>    drm/i915: Create a full object for mock_ring
>    drm/i915: vma is always backed by an object.
>    drm/i915: Fix runtime pm handling in i915_gem_shrink
>    drm/i915: Change shrink ordering to use locking around unbinding.
>    Move CONTEXT_VALID_BIT check
>    drm/i915: Remove resv from i915_vma
>    drm/i915: Remove pages_mutex and intel_gtt->vma_ops.set/clear_pages
>      members
>    drm/i915: Take object lock in i915_ggtt_pin if ww is not set
>    drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for
>      i915_vma_unbind
>    drm/i915: Remove support for unlocked i915_vma unbind
>    drm/i915: Remove short-term pins from execbuf
>    drm/i915: Add functions to set/get moving fence
>    drm/i915: Add support for asynchronous moving fence waiting
>    drm/i915: Add accelerated migration to ttm
>
>   drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
>   drivers/gpu/drm/i915/display/intel_dpt.c      |   2 -
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  94 ++--
>   drivers/gpu/drm/i915/gem/i915_gem_internal.c  |  44 +-
>   drivers/gpu/drm/i915/gem/i915_gem_object.c    |  15 +
>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |   6 +
>   drivers/gpu/drm/i915/gem/i915_gem_pages.c     |  10 +
>   drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  63 ++-
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 111 ++--
>   .../gpu/drm/i915/gem/selftests/huge_pages.c   |   4 +-
>   .../i915/gem/selftests/i915_gem_client_blt.c  |   2 +-
>   .../drm/i915/gem/selftests/i915_gem_mman.c    |   6 +
>   drivers/gpu/drm/i915/gt/gen6_ppgtt.c          | 148 +++--
>   drivers/gpu/drm/i915/gt/gen6_ppgtt.h          |   2 -
>   drivers/gpu/drm/i915/gt/intel_context.c       |   2 +-
>   drivers/gpu/drm/i915/gt/intel_engine_pm.c     |   5 +-
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          | 366 ++----------
>   drivers/gpu/drm/i915/gt/intel_gtt.c           |  13 -
>   drivers/gpu/drm/i915/gt/intel_gtt.h           |   7 -
>   drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  12 -
>   .../gpu/drm/i915/gt/intel_ring_submission.c   |   2 +-
>   drivers/gpu/drm/i915/gt/mock_engine.c         |  35 +-
>   drivers/gpu/drm/i915/i915_active.c            |  28 +-
>   drivers/gpu/drm/i915/i915_active.h            |  17 +-
>   drivers/gpu/drm/i915/i915_drv.h               |  11 +-
>   drivers/gpu/drm/i915/i915_gem.c               |  29 +-
>   drivers/gpu/drm/i915/i915_gem_evict.c         |  74 ++-
>   drivers/gpu/drm/i915/i915_gem_gtt.h           |   1 +
>   drivers/gpu/drm/i915/i915_gpu_error.c         |   9 +-
>   drivers/gpu/drm/i915/i915_request.c           |   9 +-
>   drivers/gpu/drm/i915/i915_request.h           |   7 +-
>   drivers/gpu/drm/i915/i915_vma.c               | 522 ++++++++++++++----
>   drivers/gpu/drm/i915/i915_vma.h               |  15 +-
>   drivers/gpu/drm/i915/i915_vma_types.h         |   2 -
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  34 +-
>   drivers/gpu/drm/i915/selftests/i915_vma.c     |   2 +-
>   drivers/gpu/drm/i915/selftests/mock_gtt.c     |   4 -
>   37 files changed, 899 insertions(+), 816 deletions(-)
>
