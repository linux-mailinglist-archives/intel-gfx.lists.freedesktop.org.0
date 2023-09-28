Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5F27B24DB
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:09:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4075F10E6AD;
	Thu, 28 Sep 2023 18:09:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4427010E6A8
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695924564; x=1727460564;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lMSICBHzmT+e/H65CpJRsFLlyw03Vh4rbXODsRqJaGE=;
 b=Cyo7BwlJOIRc0uIUJXb8+y6bUGMUui9jXYweEZR//WI9mCpJ0lKL11+x
 FbvjJAAM62o3O17nT4p5F+N8y54kXncVF0IsFo8XTHNcOPpKGCtCrfjNX
 8lQke0dIJX7zwgG4vus3yiFd0pOpd5GdAqauakolXNpQEO6LE6xLC7Cc0
 IKYV8A/LegLKsCp2icQEgj2vax0iXBNB0CfSssgrojx/2HdTOi2YjK47S
 VL+aveK0iNsBWwyzWqk2ua+3Ye64zujJlKKdfnKOl2Coax4i2j3zqFhMI
 43l/l14j11pL4Wag0cVxVzIjlTYiH6xFi8BA2qF6DpQ6d7mgBn0EOnspu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="384949655"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="384949655"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="873356986"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="873356986"
Received: from danielba-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 21:08:44 +0300
Message-Id: <cover.1695924021.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/15] drm/i915: i915_drv.h and i915_gpu_error.h
 include diet
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

I've got a script that roughly answers the question, "If this header was
modified, how many object files would have to be rebuilt?"

We have a lot of headers that cause the rebuild of almost the entire
driver when modified.

Reduce includes in i915_drv.h and i915_gpu_error.h.

Here are the before (-) and after (+) stats. If you build the driver a
lot, save yourself a bunch of waiting time, and help get this merged.

BR,
Jani.


+drivers/gpu/drm/i915/gem/i915_gem_object.h: 316
-drivers/gpu/drm/i915/gem/i915_gem_object.h: 340
+drivers/gpu/drm/i915/gt/intel_engine.h: 180
-drivers/gpu/drm/i915/gt/intel_engine.h: 325
+drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h: 309
-drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h: 339
+drivers/gpu/drm/i915/gt/intel_gsc.h: 268
-drivers/gpu/drm/i915/gt/intel_gsc.h: 329
+drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h: 268
-drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h: 329
+drivers/gpu/drm/i915/gt/intel_gtt.h: 318
-drivers/gpu/drm/i915/gt/intel_gtt.h: 340
+drivers/gpu/drm/i915/gt/intel_gt_types.h: 268
-drivers/gpu/drm/i915/gt/intel_gt_types.h: 329
+drivers/gpu/drm/i915/gt/intel_hwconfig.h: 268
-drivers/gpu/drm/i915/gt/intel_hwconfig.h: 329
+drivers/gpu/drm/i915/gt/intel_llc_types.h: 268
-drivers/gpu/drm/i915/gt/intel_llc_types.h: 329
+drivers/gpu/drm/i915/gt/intel_migrate_types.h: 268
-drivers/gpu/drm/i915/gt/intel_migrate_types.h: 329
+drivers/gpu/drm/i915/gt/intel_rc6_types.h: 268
-drivers/gpu/drm/i915/gt/intel_rc6_types.h: 329
+drivers/gpu/drm/i915/gt/intel_reset.h: 318
-drivers/gpu/drm/i915/gt/intel_reset.h: 340
+drivers/gpu/drm/i915/gt/intel_reset_types.h: 318
-drivers/gpu/drm/i915/gt/intel_reset_types.h: 340
+drivers/gpu/drm/i915/gt/intel_rps_types.h: 270
-drivers/gpu/drm/i915/gt/intel_rps_types.h: 330
+drivers/gpu/drm/i915/gt/intel_timeline.h: 181
-drivers/gpu/drm/i915/gt/intel_timeline.h: 326
+drivers/gpu/drm/i915/gt/intel_wopcm.h: 268
-drivers/gpu/drm/i915/gt/intel_wopcm.h: 329
+drivers/gpu/drm/i915/gt/intel_workarounds.h: 180
-drivers/gpu/drm/i915/gt/intel_workarounds.h: 325
+drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h: 270
-drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h: 331
+drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h: 271
-drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h: 332
+drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h: 271
-drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h: 332
+drivers/gpu/drm/i915/gt/uc/intel_guc.h: 271
-drivers/gpu/drm/i915/gt/uc/intel_guc.h: 332
+drivers/gpu/drm/i915/gt/uc/intel_guc_log.h: 271
-drivers/gpu/drm/i915/gt/uc/intel_guc_log.h: 332
+drivers/gpu/drm/i915/gt/uc/intel_guc_rc.h: 270
-drivers/gpu/drm/i915/gt/uc/intel_guc_rc.h: 331
+drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h: 271
-drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h: 332
+drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h: 271
-drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h: 332
+drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h: 271
-drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h: 332
+drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h: 271
-drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h: 332
+drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h: 271
-drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h: 332
+drivers/gpu/drm/i915/gt/uc/intel_huc.h: 271
-drivers/gpu/drm/i915/gt/uc/intel_huc.h: 332
+drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h: 272
-drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h: 333
+drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h: 272
-drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h: 333
+drivers/gpu/drm/i915/gt/uc/intel_uc.h: 270
-drivers/gpu/drm/i915/gt/uc/intel_uc.h: 331
+drivers/gpu/drm/i915/i915_gem_gtt.h: 317
-drivers/gpu/drm/i915/i915_gem_gtt.h: 340
+drivers/gpu/drm/i915/i915_gem_ww.h: 320
-drivers/gpu/drm/i915/i915_gem_ww.h: 344
+drivers/gpu/drm/i915/i915_syncmap.h: 182
-drivers/gpu/drm/i915/i915_syncmap.h: 327
+drivers/gpu/drm/i915/i915_sysfs.h: 5
-drivers/gpu/drm/i915/i915_sysfs.h: 4
+drivers/gpu/drm/i915/i915_vma.h: 309
-drivers/gpu/drm/i915/i915_vma.h: 339
+drivers/gpu/drm/i915/i915_vma_types.h: 318
-drivers/gpu/drm/i915/i915_vma_types.h: 340


Jani Nikula (15):
  drm/i915: stop including i915_utils.h from intel_runtime_pm.h
  drm/i915/mocs: use to_gt() instead of direct &i915->gt
  drm/i915: allocate i915->gt0 dynamically
  drm/i915/gt: remove i915->gt0 in favour of i915->gt[0]
  drm/i915: make some error capture functions static
  drm/i915: move gpu error debugfs to i915_gpu_error.c
  drm/i915: move gpu error sysfs to i915_gpu_error.c
  drm/i915: convert i915_coredump_get/put() to proper functions
  drm/i915: do more in i915_gpu_coredump_alloc()
  drm/i915: move execlist capture to i915_gpu_error.c
  drm/i915/guc: don't look at gpu error guts in guc capture
  drm/i915: hide gpu error structures inside i915_gpu_error.c
  drm/i915: stop including gt/intel_engine.h and gt/intel_gt_types.h
    from i915_drv.h
  drm/i915: stop including gt/uc/intel_uc.h from i915_drv.h
  drm/i915: stop including gt/intel_workarounds.h from i915_drv.h

 .../drm/i915/display/intel_display_reset.c    |   1 +
 .../gpu/drm/i915/display/intel_display_rps.c  |   1 +
 drivers/gpu/drm/i915/display/intel_fbdev.c    |   1 +
 .../drm/i915/display/intel_plane_initial.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c      |   5 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |   1 +
 drivers/gpu/drm/i915/gt/gen7_renderclear.c    |   1 +
 .../drm/i915/gt/intel_execlists_submission.c  |  38 +-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |   3 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  10 +-
 drivers/gpu/drm/i915/gt/intel_gt_requests.c   |   1 +
 drivers/gpu/drm/i915/gt/intel_mocs.c          |   4 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   1 +
 drivers/gpu/drm/i915/gt/intel_sseu.c          |   1 +
 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c  |   2 +-
 drivers/gpu/drm/i915/gt/intel_wopcm.c         |   3 +-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c     |   5 +-
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    |  63 +--
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |  20 +-
 drivers/gpu/drm/i915/gvt/execlist.c           |   3 +-
 drivers/gpu/drm/i915/gvt/gvt.h                |   1 +
 drivers/gpu/drm/i915/i915_debugfs.c           | 108 +---
 drivers/gpu/drm/i915/i915_drv.h               |  14 +-
 drivers/gpu/drm/i915/i915_getparam.c          |   1 +
 drivers/gpu/drm/i915/i915_gpu_error.c         | 507 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_gpu_error.h         | 329 +-----------
 drivers/gpu/drm/i915/i915_mm.c                |   4 +-
 drivers/gpu/drm/i915/i915_pci.c               |   3 +-
 drivers/gpu/drm/i915/i915_query.c             |   6 +-
 drivers/gpu/drm/i915/i915_sysfs.c             |  81 +--
 drivers/gpu/drm/i915/i915_utils.h             |   1 +
 drivers/gpu/drm/i915/i915_vgpu.c              |   2 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 drivers/gpu/drm/i915/intel_region_ttm.c       |   2 +
 drivers/gpu/drm/i915/intel_runtime_pm.h       |   2 -
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |   3 +-
 .../i915/selftests/intel_scheduler_helpers.c  |   2 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |   1 -
 42 files changed, 612 insertions(+), 625 deletions(-)

-- 
2.39.2

