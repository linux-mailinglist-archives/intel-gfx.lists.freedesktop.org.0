Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D19F357921
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 02:42:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43EE26E9B7;
	Thu,  8 Apr 2021 00:42:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2E76E3D6
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 00:42:10 +0000 (UTC)
IronPort-SDR: 5vBw166rXXr0ewHE0W4k9TmWtMEfM2utT9W0Mg0oeN94W3Mv3CCnTI+Od55x9EHpweHkhuHRUa
 VlressYy9rzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="172900151"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="172900151"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 17:42:09 -0700
IronPort-SDR: lbUZG4fzb4W//l/aV7BE9XsiLKcVmA3F5EJcBnlnvVmXlsE+B15u6Yt2JpeBgaPn+YVedh0qX1
 A9RJadYV/RRA==
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="519634205"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 17:42:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Apr 2021 17:41:48 -0700
Message-Id: <20210408004200.984176-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/12] drm/i915: Extend GEN renames to the rest
 of the driver
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Like was done for the display part that parted ways with INTEL_GEN(),
replacing with DISPLAY_VER(), do a similar conversion for the rest of
the driver.

Lucas De Marchi (12):
  drm/i915: rename display.version to display.ver
  drm/i915: add macros for graphics and media versions
  drm/i915/gt: replace gen use in intel_engine_cs
  drm/i915/selftests: replace unused mask with simple version
  drm/i915/selftests: eliminate use of gen_mask
  drm/i915: finish removal of gen_mask
  drm/i915: eliminate remaining uses of intel_device_info->gen
  drm/i915: finish removal of gen from intel_device_info
  drm/i915: add media and display versions to device_info print
  drm/i915/display: use DISPLAY_VER() on remaining users
  drm/i915: replace IS_GEN and friends with IS_GRAPHICS_VER
  drm/i915: split dgfx features from gen 12

 drivers/gpu/drm/i915/display/intel_audio.c    |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   6 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  33 +++---
 .../gpu/drm/i915/gem/i915_gem_object_blt.c    |   8 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  16 +--
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |  12 +--
 .../i915/gem/selftests/i915_gem_client_blt.c  |  10 +-
 .../i915/gem/selftests/i915_gem_coherency.c   |   4 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |  16 +--
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  14 +--
 .../drm/i915/gem/selftests/igt_gem_utils.c    |  10 +-
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c       |  38 +++----
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c      |   2 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |   2 +-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |   2 +-
 drivers/gpu/drm/i915/gt/intel_context_sseu.c  |   2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  94 +++++++++---------
 .../drm/i915/gt/intel_execlists_submission.c  |  18 ++--
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  18 ++--
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  34 +++----
 drivers/gpu/drm/i915/gt/intel_gt.c            |  27 ++---
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |  12 +--
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |   6 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c     |  10 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  14 +--
 drivers/gpu/drm/i915/gt/intel_llc.c           |   6 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  46 ++++-----
 drivers/gpu/drm/i915/gt/intel_mocs.c          |   8 +-
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |   6 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  16 +--
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |   2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |  12 +--
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  64 ++++++------
 drivers/gpu/drm/i915/gt/intel_rps.c           |  60 +++++------
 drivers/gpu/drm/i915/gt/intel_sseu.c          |  14 +--
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  66 ++++++------
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c  |  24 ++---
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c  |   2 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |   4 +-
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c      |   8 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   8 +-
 drivers/gpu/drm/i915/gt/selftest_llc.c        |   4 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |   8 +-
 drivers/gpu/drm/i915/gt/selftest_mocs.c       |   2 +-
 drivers/gpu/drm/i915/gt/selftest_rc6.c        |   4 +-
 .../drm/i915/gt/selftest_ring_submission.c    |   6 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c        |  16 +--
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |   6 +-
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  18 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |   2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |   2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        |   2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   4 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |   8 +-
 drivers/gpu/drm/i915/gvt/dmabuf.c             |   2 +-
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |  10 +-
 drivers/gpu/drm/i915/gvt/gtt.c                |   4 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |   6 +-
 drivers/gpu/drm/i915/gvt/interrupt.c          |   2 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c       |  10 +-
 drivers/gpu/drm/i915/gvt/scheduler.c          |   4 +-
 drivers/gpu/drm/i915/gvt/vgpu.c               |   4 +-
 drivers/gpu/drm/i915/i915.ko.new              | Bin 0 -> 43517120 bytes
 drivers/gpu/drm/i915/i915.ko.old              | Bin 0 -> 43517912 bytes
 drivers/gpu/drm/i915/i915_cmd_parser.c        |  10 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |  32 +++---
 drivers/gpu/drm/i915/i915_drv.c               |  24 ++---
 drivers/gpu/drm/i915/i915_drv.h               |  40 +++++---
 drivers/gpu/drm/i915/i915_gem.c               |   4 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  80 +++++++--------
 drivers/gpu/drm/i915/i915_irq.c               |  34 +++----
 drivers/gpu/drm/i915/i915_pci.c               |  13 ++-
 drivers/gpu/drm/i915/i915_perf.c              |  44 ++++----
 drivers/gpu/drm/i915/i915_pmu.c               |   8 +-
 drivers/gpu/drm/i915/i915_request.c           |   4 +-
 drivers/gpu/drm/i915/i915_suspend.c           |  16 +--
 drivers/gpu/drm/i915/i915_sysfs.c             |   2 +-
 drivers/gpu/drm/i915/i915_vgpu.c              |   2 +-
 drivers/gpu/drm/i915/intel_device_info.c      |  26 ++---
 drivers/gpu/drm/i915/intel_device_info.h      |   6 +-
 drivers/gpu/drm/i915/intel_dram.c             |  14 +--
 drivers/gpu/drm/i915/intel_pch.c              |  10 +-
 drivers/gpu/drm/i915/intel_pm.c               |  14 +--
 drivers/gpu/drm/i915/intel_sideband.c         |   2 +-
 drivers/gpu/drm/i915/intel_uncore.c           |  34 ++++---
 drivers/gpu/drm/i915/intel_wopcm.c            |  10 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   4 +-
 drivers/gpu/drm/i915/selftests/i915_perf.c    |   6 +-
 drivers/gpu/drm/i915/selftests/i915_request.c |   8 +-
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |  12 +--
 drivers/gpu/drm/i915/selftests/intel_uncore.c |  10 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |   2 +-
 94 files changed, 692 insertions(+), 673 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915.ko.new
 create mode 100644 drivers/gpu/drm/i915/i915.ko.old

-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
