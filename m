Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD224B1486
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 18:48:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FA2110E8B7;
	Thu, 10 Feb 2022 17:48:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE61410E8B4
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 17:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644515289; x=1676051289;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=xAKaSl89G0o2ACiCV6CGJIimgFmaIxdy6HUsDGRtVZI=;
 b=n8N4YlUNzQVIZTmcdeLG35WROldtu913CVIyYwE7mQTky3JlonGDzaqc
 YjUKXraeV/01NFfmYKF0+uu9uGcCZy1DphLXRLFv5d9OJ7I52nQeyTl95
 zhcG28kOz2wA1W2q6S63PdHCwhkV0oPARgeo8Uoks1LI1MmysMpZhBs3i
 Qs0n5/7hySHoJyZM7u1/G0HLQa9Tjhnv1IhMWUfDP8p3dKp1RzTv4Mszu
 mp93VF/7Jx+9EXBXWclSrbUzEJSLQBrnoHsj0JvDVFVBmzwakeJfq/JlU
 3dpSRBUkyPbm1gv0ZB3PTAGsk/dPE8XdW4MEc0KCSH6aL0ujFFq8p4ERF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="274101691"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="274101691"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 09:48:09 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="485774260"
Received: from scurtin-mobl1.ger.corp.intel.com (HELO [10.213.201.86])
 ([10.213.201.86])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 09:48:08 -0800
Message-ID: <cf5d9c10-e70e-3904-868c-4398d4a4359c@linux.intel.com>
Date: Thu, 10 Feb 2022 17:48:06 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1644507885.git.jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 00/14] drm/i915: drm_i915.h cleanup
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


On 10/02/2022 15:45, Jani Nikula wrote:
> I've sent parts of this before. Another rebase round.

All look good to me.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Going forward you can maybe impress the readers even more by including 
the before/after of your header tree / depth counter script. :)

Regards,

Tvrtko

> Jani Nikula (14):
>    drm/i915: split out i915_gem_internal.h from i915_drv.h
>    drm/i915: remove leftover i915_gem_pm.h declarations from i915_drv.h
>    drm/i915: split out gem/i915_gem_dmabuf.h from i915_drv.h
>    drm/i915: split out gem/i915_gem_create.h from i915_drv.h
>    drm/i915: split out gem/i915_gem_domain.h from i915_drv.h
>    drm/i915: move i915_cache_level_str() static in i915_debugfs.c
>    drm/i915: move i915_gem_vm_lookup() where it's used
>    drm/i915: move i915_reset_count()/i915_reset_engine_count() out of
>      i915_drv.h
>    drm/i915: split out i915_file_private.h from i915_drv.h
>    drm/i915: don't include drm_cache.h in i915_drv.h
>    drm/i915: include shmem_fs.h only where needed
>    drm/i915: include some drm headers only where needed
>    drm/i915: axe lots of unnecessary includes from i915_drv.h
>    drm/i915: fix drm_i915.h include grouping and sorting
> 
>   drivers/gpu/drm/i915/display/intel_dpt.c      |   4 +-
>   drivers/gpu/drm/i915/display/intel_dsb.c      |   2 +
>   drivers/gpu/drm/i915/display/intel_fb_pin.c   |   1 +
>   drivers/gpu/drm/i915/display/intel_overlay.c  |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |   2 +
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   |  17 ++
>   drivers/gpu/drm/i915/gem/i915_gem_create.c    |   3 +
>   drivers/gpu/drm/i915/gem/i915_gem_create.h    |  17 ++
>   drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h    |  18 ++
>   drivers/gpu/drm/i915/gem/i915_gem_domain.c    |   5 +-
>   drivers/gpu/drm/i915/gem/i915_gem_domain.h    |  15 ++
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_internal.c  |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_internal.h  |  23 +++
>   drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   2 +
>   drivers/gpu/drm/i915/gem/i915_gem_object.c    |   5 +
>   drivers/gpu/drm/i915/gem/i915_gem_pages.c     |   2 +
>   drivers/gpu/drm/i915/gem/i915_gem_shmem.c     |   3 +
>   drivers/gpu/drm/i915/gem/i915_gem_throttle.c  |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |   2 +
>   .../gpu/drm/i915/gem/selftests/huge_pages.c   |   3 +-
>   .../drm/i915/gem/selftests/i915_gem_context.c |   1 +
>   .../drm/i915/gem/selftests/i915_gem_mman.c    |   4 +-
>   .../drm/i915/gem/selftests/igt_gem_utils.c    |   1 +
>   .../gpu/drm/i915/gem/selftests/mock_context.c |   1 +
>   drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   2 +
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  12 +-
>   drivers/gpu/drm/i915/gt/intel_gt.c            |   7 +-
>   .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    |   1 +
>   drivers/gpu/drm/i915/gt/intel_gtt.c           |   1 +
>   drivers/gpu/drm/i915/gt/intel_renderstate.c   |   2 +
>   drivers/gpu/drm/i915/gt/intel_reset.c         |   1 +
>   drivers/gpu/drm/i915/gt/intel_ring.c          |   1 +
>   .../gpu/drm/i915/gt/intel_ring_submission.c   |   4 +
>   drivers/gpu/drm/i915/gt/intel_timeline.c      |   5 +-
>   drivers/gpu/drm/i915/gt/selftest_execlists.c  |   1 +
>   drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   1 +
>   drivers/gpu/drm/i915/gt/selftest_lrc.c        |   2 +
>   drivers/gpu/drm/i915/gt/selftest_migrate.c    |   2 +
>   drivers/gpu/drm/i915/gt/selftest_rps.c        |   2 +
>   .../gpu/drm/i915/gt/selftest_workarounds.c    |   1 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |   2 +
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |   2 +
>   drivers/gpu/drm/i915/gvt/dmabuf.c             |   5 +
>   drivers/gpu/drm/i915/i915_cmd_parser.c        |   2 +
>   drivers/gpu/drm/i915/i915_debugfs.c           |  11 ++
>   drivers/gpu/drm/i915/i915_driver.c            |   3 +
>   drivers/gpu/drm/i915/i915_drv.h               | 184 +-----------------
>   drivers/gpu/drm/i915/i915_file_private.h      | 108 ++++++++++
>   drivers/gpu/drm/i915/i915_gem.c               |   7 +-
>   drivers/gpu/drm/i915/i915_gpu_error.c         |   1 +
>   drivers/gpu/drm/i915/i915_gpu_error.h         |  11 ++
>   drivers/gpu/drm/i915/i915_pci.c               |   1 +
>   drivers/gpu/drm/i915/i915_perf.c              |   2 +
>   drivers/gpu/drm/i915/selftests/i915_gem.c     |   3 +-
>   .../gpu/drm/i915/selftests/i915_gem_evict.c   |   1 +
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   1 +
>   drivers/gpu/drm/i915/selftests/i915_request.c |   1 +
>   drivers/gpu/drm/i915/selftests/i915_vma.c     |   1 +
>   drivers/gpu/drm/i915/selftests/igt_spinner.c  |   1 +
>   61 files changed, 329 insertions(+), 199 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_create.h
>   create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h
>   create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_domain.h
>   create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_internal.h
>   create mode 100644 drivers/gpu/drm/i915/i915_file_private.h
> 
