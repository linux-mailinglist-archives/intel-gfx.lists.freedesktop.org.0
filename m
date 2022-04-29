Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E771B514529
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 11:14:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 581C810FBA3;
	Fri, 29 Apr 2022 09:14:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0E8A10FBA3
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 09:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651223658; x=1682759658;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=DjLgrbI3aDDkK0u4Xnt1YBRT+aeUUqUTG8Sv6S1nhBs=;
 b=brhFQ6WJvAyJdcs08BRv/GYCqnEdeAGtB6KU3xoqEZvYiJyuOsew7YLc
 NPMR4Avs/WXkgEjGnkSbR1zp6gOCYd8EMQjXLHyqob5knJfd1U1dpWs3E
 f5uBvw7ZdHeBPz899STfIMhWPoJsPhrbmJ/YqZbRQVPEQ52RJORdfPi2C
 EFKsVRSjM3vV6nd+UPefkxcSM3FbNVG65jV0GF3LL/whgi1hIuifIe5w8
 /tcWIIsJwje6+ISUgiBD1MxAiXyc8Ow9lM55+xVHGzEqU0rTotBxOMKqq
 vLWk1p90CUmfVvVwbTUdNQqg1MASob2WbcvK8/DEoT2FNaUEZdAGCbn1K Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="353017842"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="353017842"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 02:14:17 -0700
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="560223614"
Received: from pfowens-mobl2.ger.corp.intel.com (HELO [10.213.234.194])
 ([10.213.234.194])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 02:14:16 -0700
Message-ID: <1aa3172b-edaa-a7c9-93ab-a9984a997557@linux.intel.com>
Date: Fri, 29 Apr 2022 10:14:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Adrian Larumbe <adrian.larumbe@collabora.com>, daniel@ffwll.ch,
 thomas.hellstrom@linux.intel.com, intel-gfx@lists.freedesktop.org
References: <20220427113404.401741-1-adrian.larumbe@collabora.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220427113404.401741-1-adrian.larumbe@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 0/1] Replace shmem memory region and object
 backend with TTM
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


On 27/04/2022 12:34, Adrian Larumbe wrote:
> This patch is an attempt at eliminating the old shmem memory region and GEM
> object backend, in favour of a TTM-based one that is able to manage objects
> placed on both system and local memory.
> 
> Known issues:
> 
> Many GPU hungs in machines of GEN <= 5. My assumption is this has something
>   to do with a caching issues, but everywhere across the TTM backend code
>   I've tried to handle object creation and getting its pages with the same
>   set of caching and coherency properties as in the old shmem backend.
> 
> Object passed to shmem_create_from_object somehow not being flushed after
>   being written into at lrc_init_state. Seems thatwith the new backend and
>   when pinning an intel_context, either i915_gem_object_pin_map is not
>   creating a kernel mapping with the right caching properties or else
>   flushing it afterwards doesn't do anything.
> 
>   This leads to a GPU hung because the engine's default state that is read
>   with shmem_read doesn't reflect what had been written into it previously
>   by vmap'ing the object's pages. The only workaround I could find was
>   manually setting the shmem file's pages dirty and putting them back, but
>   this looks hacky and wasteful for big BO's

Aside, sounds like RFC would be the appropriate classification for the 
series.

But anyway, the thing I need to mention - how is THP support in the TTM 
backend? If not there it is something we absolutely need to have in 
order to avoid serious perf regressions.

It's the i915_gemfs_init call your patch removes. Even though you do 
leave the unused file dangling.

Regards,

Tvrtko

> Besides all this, I haven't yet implemented the pread callback for TTM
> object backend, as it seems CI's BAT test list doesn't include it.
> 
> Adrian Larumbe (1):
>    drm/i915: Replace shmem memory region and object backend with TTM
> 
>   drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c   |  12 +-
>   drivers/gpu/drm/i915/gem/i915_gem_mman.c     |  32 +-
>   drivers/gpu/drm/i915/gem/i915_gem_object.h   |   2 +-
>   drivers/gpu/drm/i915/gem/i915_gem_phys.c     |   5 +-
>   drivers/gpu/drm/i915/gem/i915_gem_shmem.c    | 397 +------------------
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 212 +++++++++-
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.h      |   3 +
>   drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c |  11 +-
>   drivers/gpu/drm/i915/gt/shmem_utils.c        |  64 ++-
>   drivers/gpu/drm/i915/intel_memory_region.c   |   7 +-
>   10 files changed, 333 insertions(+), 412 deletions(-)
> 
