Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B794B11F2
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:46:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C8E610E898;
	Thu, 10 Feb 2022 15:46:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50BB610E898
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 15:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644507959; x=1676043959;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Jc4IcsOy5Bl0i+LT4V32Sx2Af1QbhS1rxvKfkXlm9JY=;
 b=kpXZZjVu6oE+FOy7GCG3OlFjQvO5Vz9M0f6S8aAMeyQhCxbkxzluaxGc
 BjwFyTHt/Tu8Jyo6Qb2e5Sj38leHL/SbrjSr2F6AkDFNViMVs8PM4fJWa
 Gt4jJq2CEePgkrRZ31KmQpPwp3spQ+JFRTFgjCtHyhlCxgcykiFSjybPD
 DIGRgONArzXACFhyeSjX3pByc8ID7HFHmFc38d2ZBBELbYvVAZ2fIzcCg
 posFtvkggGC4QpApVeWlneRUWzV2X4bRrAI+OCKIkI5y4iZdTsYEKwuNn
 SJWJjNFAz1KOSMSp+zX7X7v5RGORTBLOuhxupCWGHLavovlyF1t2zV6/i w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="233077092"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="233077092"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:45:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="585992564"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:45:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 17:45:38 +0200
Message-Id: <cover.1644507885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 00/14] drm/i915: drm_i915.h cleanup
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I've sent parts of this before. Another rebase round.

Jani Nikula (14):
  drm/i915: split out i915_gem_internal.h from i915_drv.h
  drm/i915: remove leftover i915_gem_pm.h declarations from i915_drv.h
  drm/i915: split out gem/i915_gem_dmabuf.h from i915_drv.h
  drm/i915: split out gem/i915_gem_create.h from i915_drv.h
  drm/i915: split out gem/i915_gem_domain.h from i915_drv.h
  drm/i915: move i915_cache_level_str() static in i915_debugfs.c
  drm/i915: move i915_gem_vm_lookup() where it's used
  drm/i915: move i915_reset_count()/i915_reset_engine_count() out of
    i915_drv.h
  drm/i915: split out i915_file_private.h from i915_drv.h
  drm/i915: don't include drm_cache.h in i915_drv.h
  drm/i915: include shmem_fs.h only where needed
  drm/i915: include some drm headers only where needed
  drm/i915: axe lots of unnecessary includes from i915_drv.h
  drm/i915: fix drm_i915.h include grouping and sorting

 drivers/gpu/drm/i915/display/intel_dpt.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |   2 +
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |   1 +
 drivers/gpu/drm/i915/display/intel_overlay.c  |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |   2 +
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  17 ++
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |   3 +
 drivers/gpu/drm/i915/gem/i915_gem_create.h    |  17 ++
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h    |  18 ++
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |   5 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.h    |  15 ++
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_internal.c  |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_internal.h  |  23 +++
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   2 +
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   5 +
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     |   2 +
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c     |   3 +
 drivers/gpu/drm/i915/gem/i915_gem_throttle.c  |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |   2 +
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |   3 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |   1 +
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   4 +-
 .../drm/i915/gem/selftests/igt_gem_utils.c    |   1 +
 .../gpu/drm/i915/gem/selftests/mock_context.c |   1 +
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   2 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  12 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |   7 +-
 .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    |   1 +
 drivers/gpu/drm/i915/gt/intel_gtt.c           |   1 +
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |   2 +
 drivers/gpu/drm/i915/gt/intel_reset.c         |   1 +
 drivers/gpu/drm/i915/gt/intel_ring.c          |   1 +
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   4 +
 drivers/gpu/drm/i915/gt/intel_timeline.c      |   5 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |   1 +
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   1 +
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |   2 +
 drivers/gpu/drm/i915/gt/selftest_migrate.c    |   2 +
 drivers/gpu/drm/i915/gt/selftest_rps.c        |   2 +
 .../gpu/drm/i915/gt/selftest_workarounds.c    |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |   2 +
 drivers/gpu/drm/i915/gvt/dmabuf.c             |   5 +
 drivers/gpu/drm/i915/i915_cmd_parser.c        |   2 +
 drivers/gpu/drm/i915/i915_debugfs.c           |  11 ++
 drivers/gpu/drm/i915/i915_driver.c            |   3 +
 drivers/gpu/drm/i915/i915_drv.h               | 184 +-----------------
 drivers/gpu/drm/i915/i915_file_private.h      | 108 ++++++++++
 drivers/gpu/drm/i915/i915_gem.c               |   7 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |   1 +
 drivers/gpu/drm/i915/i915_gpu_error.h         |  11 ++
 drivers/gpu/drm/i915/i915_pci.c               |   1 +
 drivers/gpu/drm/i915/i915_perf.c              |   2 +
 drivers/gpu/drm/i915/selftests/i915_gem.c     |   3 +-
 .../gpu/drm/i915/selftests/i915_gem_evict.c   |   1 +
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   1 +
 drivers/gpu/drm/i915/selftests/i915_request.c |   1 +
 drivers/gpu/drm/i915/selftests/i915_vma.c     |   1 +
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |   1 +
 61 files changed, 329 insertions(+), 199 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_create.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_domain.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_internal.h
 create mode 100644 drivers/gpu/drm/i915/i915_file_private.h

-- 
2.30.2

