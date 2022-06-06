Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E75A53E433
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jun 2022 13:27:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7E8E10E01F;
	Mon,  6 Jun 2022 11:27:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E7E10E01F
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jun 2022 11:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654514845; x=1686050845;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=fLmdelMDMNgE3CJEPalJEuZNbniJXVG1/KJR31JxbcE=;
 b=bw9FIB5gCBXuSvD4llr1D+8GKzI/4DSLbfLeSWxRR8kusCRPiANNpt2L
 Fgwn+2/Ostr5xMaIFI++6/L0LZJPBQNhpOWNYbtfFzO6oXUOLB6q1ipsH
 KLzFi3GE3RcXsj/jcXmPN1uR0Sev2ke/HlCCmqV1yFtHKEhgDZ33vmvWe
 5OdW1RmbRUkDe85reGQU4C+02boWVB1GOM3W2ihpRsI8sMuv/SXL0aWPi
 mmh6Qqx+v/UdNCA8Ns5ytqXjpUnqbA6Cnakg8BUU4uexW6dOuIJFFZp4W
 lSyHmiz3o1UFlX2OZ8m0D4RF7B47EZr0VaJ4AzeWA/zDZqQH4GcyL2RDd Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10369"; a="339911385"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="339911385"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 04:27:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="647498845"
Received: from emerobri-mobl.ger.corp.intel.com (HELO [10.213.235.100])
 ([10.213.235.100])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 04:27:23 -0700
Message-ID: <e264365e-7f1c-66e4-8d41-9cd37f87b390@linux.intel.com>
Date: Mon, 6 Jun 2022 12:27:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1654261471.git.jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <cover.1654261471.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 0/7] drm/i915: i915_drv.h & i915_gem.h
 header refactoring
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


On 03/06/2022 14:05, Jani Nikula wrote:
> Turn i915_gem.h into a useful header that contains stuff the name
> implies, and clean up i915_drv.h a bit.
> 
> Jani Nikula (7):
>    drm/i915/tasklet: separate local hacks around struct tasklet_struct
>    drm/i915/debug: add new i915_debug.h for debug asserts
>    drm/i915: un-inline i915_gem_drain_* functions
>    drm/i915/gem: split out the gem stuff from i915_drv.h
>    drm/i915/drv: drop intel_bios.h include
>    drm/i915/client: only include what's needed
>    drm/i915/utils: throw out unused stuff

Read through it all and it looks good. For the series:

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

>   drivers/gpu/drm/i915/TODO.txt                 |   2 +-
>   drivers/gpu/drm/i915/display/intel_dpt.c      |   1 +
>   drivers/gpu/drm/i915/display/intel_dsb.c      |   1 +
>   drivers/gpu/drm/i915/display/intel_overlay.c  |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_context.h   |   1 -
>   drivers/gpu/drm/i915/gem/i915_gem_domain.c    |   1 +
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_internal.c  |   1 -
>   drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   5 +-
>   drivers/gpu/drm/i915/gem/i915_gem_object.c    |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |   5 +-
>   drivers/gpu/drm/i915/gem/i915_gem_phys.c      |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_pm.c        |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |   1 -
>   drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |   1 +
>   .../i915/gem/selftests/i915_gem_coherency.c   |   1 +
>   .../drm/i915/gem/selftests/i915_gem_context.c |   1 +
>   .../drm/i915/gem/selftests/i915_gem_mman.c    |   1 +
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.h      |   2 +-
>   drivers/gpu/drm/i915/gt/intel_engine_stats.h  |   2 +-
>   drivers/gpu/drm/i915/gt/intel_engine_types.h  |   1 -
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  10 +-
>   drivers/gpu/drm/i915/gt/intel_gt.c            |   1 +
>   drivers/gpu/drm/i915/gt/intel_gt_sysfs.h      |   2 -
>   drivers/gpu/drm/i915/gt/intel_renderstate.h   |   2 +-
>   drivers/gpu/drm/i915/gt/intel_ring.h          |   2 +-
>   drivers/gpu/drm/i915/gt/intel_sseu.h          |   5 +-
>   drivers/gpu/drm/i915/gt/selftest_migrate.c    |   2 +
>   drivers/gpu/drm/i915/gt/selftest_timeline.c   |   1 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   2 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |   1 -
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h      |   1 -
>   drivers/gpu/drm/i915/gvt/scheduler.c          |   1 +
>   drivers/gpu/drm/i915/i915_debug.h             |  63 ++++++++++
>   drivers/gpu/drm/i915/i915_debugfs.c           |   1 +
>   drivers/gpu/drm/i915/i915_driver.c            |   3 +-
>   drivers/gpu/drm/i915/i915_drm_client.c        |   1 -
>   drivers/gpu/drm/i915/i915_drm_client.h        |   2 +-
>   drivers/gpu/drm/i915/i915_drv.h               |  75 ------------
>   drivers/gpu/drm/i915/i915_gem.c               |  39 ++++++
>   drivers/gpu/drm/i915/i915_gem.h               | 114 ++++++------------
>   drivers/gpu/drm/i915/i915_gpu_error.h         |   1 -
>   drivers/gpu/drm/i915/i915_ioctl.c             |   1 -
>   drivers/gpu/drm/i915/i915_perf.c              |   1 +
>   drivers/gpu/drm/i915/i915_request.h           |   1 -
>   drivers/gpu/drm/i915/i915_scatterlist.h       |   2 +-
>   drivers/gpu/drm/i915/i915_scheduler.h         |   1 +
>   drivers/gpu/drm/i915/i915_syncmap.c           |   5 +-
>   drivers/gpu/drm/i915/i915_tasklet.h           |  43 +++++++
>   drivers/gpu/drm/i915/i915_ttm_buddy_manager.c |   3 +-
>   drivers/gpu/drm/i915/i915_utils.h             |  40 ------
>   drivers/gpu/drm/i915/i915_vma_resource.h      |   1 -
>   drivers/gpu/drm/i915/intel_gvt.c              |   1 +
>   .../gpu/drm/i915/selftests/i915_gem_evict.c   |   2 +-
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   4 +-
>   .../gpu/drm/i915/selftests/i915_selftest.c    |   1 +
>   drivers/gpu/drm/i915/selftests/i915_vma.c     |   2 +-
>   .../drm/i915/selftests/intel_memory_region.c  |   1 +
>   60 files changed, 236 insertions(+), 236 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/i915_debug.h
>   create mode 100644 drivers/gpu/drm/i915/i915_tasklet.h
> 
