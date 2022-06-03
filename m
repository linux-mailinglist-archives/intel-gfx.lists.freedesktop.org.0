Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1E453CA5D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 15:06:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49C921134C1;
	Fri,  3 Jun 2022 13:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5DFE1134C0
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 13:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654261569; x=1685797569;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O8e3ocan5bLN7qADsjAyt29Q05zAdiJ1gKOTOGy35hA=;
 b=IWQwf+J+aaW9z89ZkQfjPzdRJRDtFPWW2qqITGBCYSGtAhSHACZRmnI1
 us+b1HOdYxC19P1u5FD1xFo3fahXRPqXnCuDT+4FQFMhNP4RiNi/xABbp
 E9PaTfcUSnhqiZj35MIWMN/W+NzB+48qCQKqpdWscCcu1iRUwXvqFfmVD
 CkuzzCRMNSix9TbUkctsGU9OxMjeq4RDPT+YvUQtYTWnfTnzpBHhHr8k1
 zMVGRP2IeYl3fLfxFeLOk2K+03mzkNzlzPOE/tyszzRPGUOu4inMGUa4m
 P50HZagLqsh+83bgIvRScSKlN5FgvODra4qQZ9IU9kBNHmIYyQma+CUnq g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="301617853"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="301617853"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:06:05 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="578015381"
Received: from richardf-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:06:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jun 2022 16:05:53 +0300
Message-Id: <cover.1654261471.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: i915_drv.h & i915_gem.h header
 refactoring
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

Turn i915_gem.h into a useful header that contains stuff the name
implies, and clean up i915_drv.h a bit.

Jani Nikula (7):
  drm/i915/tasklet: separate local hacks around struct tasklet_struct
  drm/i915/debug: add new i915_debug.h for debug asserts
  drm/i915: un-inline i915_gem_drain_* functions
  drm/i915/gem: split out the gem stuff from i915_drv.h
  drm/i915/drv: drop intel_bios.h include
  drm/i915/client: only include what's needed
  drm/i915/utils: throw out unused stuff

 drivers/gpu/drm/i915/TODO.txt                 |   2 +-
 drivers/gpu/drm/i915/display/intel_dpt.c      |   1 +
 drivers/gpu/drm/i915/display/intel_dsb.c      |   1 +
 drivers/gpu/drm/i915/display/intel_overlay.c  |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |   1 -
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |   1 +
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_internal.c  |   1 -
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   5 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |   5 +-
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |   1 -
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |   1 +
 .../i915/gem/selftests/i915_gem_coherency.c   |   1 +
 .../drm/i915/gem/selftests/i915_gem_context.c |   1 +
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   1 +
 drivers/gpu/drm/i915/gt/gen8_engine_cs.h      |   2 +-
 drivers/gpu/drm/i915/gt/intel_engine_stats.h  |   2 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |   1 -
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  10 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h      |   2 -
 drivers/gpu/drm/i915/gt/intel_renderstate.h   |   2 +-
 drivers/gpu/drm/i915/gt/intel_ring.h          |   2 +-
 drivers/gpu/drm/i915/gt/intel_sseu.h          |   5 +-
 drivers/gpu/drm/i915/gt/selftest_migrate.c    |   2 +
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |   1 -
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h      |   1 -
 drivers/gpu/drm/i915/gvt/scheduler.c          |   1 +
 drivers/gpu/drm/i915/i915_debug.h             |  63 ++++++++++
 drivers/gpu/drm/i915/i915_debugfs.c           |   1 +
 drivers/gpu/drm/i915/i915_driver.c            |   3 +-
 drivers/gpu/drm/i915/i915_drm_client.c        |   1 -
 drivers/gpu/drm/i915/i915_drm_client.h        |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  75 ------------
 drivers/gpu/drm/i915/i915_gem.c               |  39 ++++++
 drivers/gpu/drm/i915/i915_gem.h               | 114 ++++++------------
 drivers/gpu/drm/i915/i915_gpu_error.h         |   1 -
 drivers/gpu/drm/i915/i915_ioctl.c             |   1 -
 drivers/gpu/drm/i915/i915_perf.c              |   1 +
 drivers/gpu/drm/i915/i915_request.h           |   1 -
 drivers/gpu/drm/i915/i915_scatterlist.h       |   2 +-
 drivers/gpu/drm/i915/i915_scheduler.h         |   1 +
 drivers/gpu/drm/i915/i915_syncmap.c           |   5 +-
 drivers/gpu/drm/i915/i915_tasklet.h           |  43 +++++++
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.c |   3 +-
 drivers/gpu/drm/i915/i915_utils.h             |  40 ------
 drivers/gpu/drm/i915/i915_vma_resource.h      |   1 -
 drivers/gpu/drm/i915/intel_gvt.c              |   1 +
 .../gpu/drm/i915/selftests/i915_gem_evict.c   |   2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   4 +-
 .../gpu/drm/i915/selftests/i915_selftest.c    |   1 +
 drivers/gpu/drm/i915/selftests/i915_vma.c     |   2 +-
 .../drm/i915/selftests/intel_memory_region.c  |   1 +
 60 files changed, 236 insertions(+), 236 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_debug.h
 create mode 100644 drivers/gpu/drm/i915/i915_tasklet.h

-- 
2.30.2

