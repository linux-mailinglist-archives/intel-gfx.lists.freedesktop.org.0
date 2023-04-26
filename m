Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC306EF229
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 12:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA2610E8F7;
	Wed, 26 Apr 2023 10:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F5B810E8F7;
 Wed, 26 Apr 2023 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682505496; x=1714041496;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=leTNLiuHbsNCoNWgMp049ZQ1hIs4dkuKNSbInu2f0NM=;
 b=kQAzzLYIIkCVrvkzVWllSY3/xRTuzXytB4s28eICvjsUVm1O8rlCT2m+
 S1Z3pLpN2qZ+CKhrGy2KzhTUp8uD0pWzLc4LmL/txPFG9xVEsEKbEe9kj
 C23jmcYJ1HND5o7F8OPEBxZ6t+2fHn4L4NKQAKzGXv7vbM2yFm6DodR/p
 81ldW1bKyRF1rHEA+f12SmIcu2wwATUR8zmFWjOz6NJT93NNlKPWwvpZ9
 MOIb2yZfXeH8eA8ApVh+V2VuC8TyyjjY1k58qx54BJph7Xl5p7Hm0QyPb
 x5ltSYmFp8sM5zcXpQ/vpG7VxmYi0bsxsTvtWoLgRBToT2kU2rcdRQVvr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="412380690"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="412380690"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 03:38:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="805452291"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="805452291"
Received: from abreheny-mobl1.ger.corp.intel.com (HELO [10.213.209.108])
 ([10.213.209.108])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 03:38:13 -0700
Message-ID: <c7cb1466-e698-ff3f-0572-4693c4b0025c@linux.intel.com>
Date: Wed, 26 Apr 2023 11:38:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: fei.yang@intel.com, intel-gfx@lists.freedesktop.org
References: <20230426062423.320519-1-fei.yang@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230426062423.320519-1-fei.yang@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 0/5] drm/i915: Allow user to set cache at
 BO creation
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 26/04/2023 07:24, fei.yang@intel.com wrote:
> From: Fei Yang <fei.yang@intel.com>
> 
> The first three patches in this series are taken from
> https://patchwork.freedesktop.org/series/116868/
> These patches are included here because the last patch
> has dependency on the pat_index refactor.
> 
> This series is focusing on uAPI changes,
> 1. end support for set caching ioctl [PATCH 4/5]
> 2. add set_pat extension for gem_create [PATCH 5/5]
> 
> v2: drop one patch that was merged separately
>      341ad0e8e254 drm/i915/mtl: Add PTE encode function

Are the re-sends for stabilizing the series, or focusing on merge?

If the latter then opens are:

1) Link to Mesa MR reviewed and ready to merge.

2) IGT reviewed.

3) I raised an open that get/set_caching should not "lie" but return an 
error if set pat extension has been used. I don't see a good reason not 
to do that.

+ Joonas on this one.

4) Refactoring as done is not very pretty and I proposed an idea for a 
nicer approach. Feasible or not, open for discussion.

At a push I can look past that and someone can attempt to tidy the 
driver later.

But without 1-3 we cannot merge this.

Regards,

Tvrtko

> 
> Fei Yang (5):
>    drm/i915: preparation for using PAT index
>    drm/i915: use pat_index instead of cache_level
>    drm/i915: make sure correct pte encode is used
>    drm/i915/mtl: end support for set caching ioctl
>    drm/i915: Allow user to set cache at BO creation
> 
>   drivers/gpu/drm/i915/display/intel_dpt.c      | 12 +--
>   drivers/gpu/drm/i915/gem/i915_gem_create.c    | 36 +++++++++
>   drivers/gpu/drm/i915/gem/i915_gem_domain.c    | 30 +++----
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 10 ++-
>   drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  3 +-
>   drivers/gpu/drm/i915/gem/i915_gem_object.c    | 67 +++++++++++++++-
>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |  8 ++
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  | 26 +++++-
>   drivers/gpu/drm/i915/gem/i915_gem_shmem.c     |  9 ++-
>   drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  2 -
>   drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  4 +-
>   drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  | 16 ++--
>   .../gpu/drm/i915/gem/selftests/huge_pages.c   |  2 +-
>   .../drm/i915/gem/selftests/i915_gem_migrate.c |  2 +-
>   .../drm/i915/gem/selftests/i915_gem_mman.c    |  2 +-
>   drivers/gpu/drm/i915/gt/gen6_ppgtt.c          | 10 ++-
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 73 +++++++++--------
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.h          |  3 +-
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          | 76 +++++++++---------
>   drivers/gpu/drm/i915/gt/intel_gtt.h           | 20 +++--
>   drivers/gpu/drm/i915/gt/intel_migrate.c       | 47 ++++++-----
>   drivers/gpu/drm/i915/gt/intel_migrate.h       | 13 ++-
>   drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  6 +-
>   drivers/gpu/drm/i915/gt/selftest_migrate.c    | 47 +++++------
>   drivers/gpu/drm/i915/gt/selftest_reset.c      |  8 +-
>   drivers/gpu/drm/i915/gt/selftest_timeline.c   |  2 +-
>   drivers/gpu/drm/i915/gt/selftest_tlb.c        |  4 +-
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      | 10 ++-
>   drivers/gpu/drm/i915/i915_debugfs.c           | 55 ++++++++++---
>   drivers/gpu/drm/i915/i915_gem.c               | 16 +++-
>   drivers/gpu/drm/i915/i915_gpu_error.c         |  8 +-
>   drivers/gpu/drm/i915/i915_pci.c               | 79 ++++++++++++++++---
>   drivers/gpu/drm/i915/i915_vma.c               | 16 ++--
>   drivers/gpu/drm/i915/i915_vma.h               |  2 +-
>   drivers/gpu/drm/i915/i915_vma_types.h         |  2 -
>   drivers/gpu/drm/i915/intel_device_info.h      |  5 ++
>   drivers/gpu/drm/i915/selftests/i915_gem.c     |  5 +-
>   .../gpu/drm/i915/selftests/i915_gem_evict.c   |  4 +-
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 15 ++--
>   .../drm/i915/selftests/intel_memory_region.c  |  4 +-
>   .../gpu/drm/i915/selftests/mock_gem_device.c  |  9 +++
>   drivers/gpu/drm/i915/selftests/mock_gtt.c     |  8 +-
>   include/uapi/drm/i915_drm.h                   | 36 +++++++++
>   tools/include/uapi/drm/i915_drm.h             | 36 +++++++++
>   44 files changed, 605 insertions(+), 243 deletions(-)
> 
