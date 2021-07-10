Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9953C2C59
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 03:21:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 278C06EAB0;
	Sat, 10 Jul 2021 01:21:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54E9B6EAB0;
 Sat, 10 Jul 2021 01:21:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="209842161"
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="209842161"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 18:21:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="411439539"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2021 18:21:11 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri,  9 Jul 2021 18:20:10 -0700
Message-Id: <20210710012026.19705-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/16] Enable GuC based power management features
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

This series enables Single Loop Power Control (SLPC) feature in GuC.
GuC implements various power management algorithms as part of it's
operation. These need to be specifically enabled by KMD. They replace
the legacy host based management of these features.

With this series, we will enable two PM features - GTPerf and GuCRC. These
are the Turbo and RC6 equivalents of the host based version. GuC provides
various interfaces via host-to-guc messaging, which allows KMD to enable
these features after GuC is loaded and GuC submission is enabled. We will
specifically disable the IA/GT Balancer and Duty Cycle control features in
SLPC.

To enable GTPerf, KMD sends a specific h2g message after setting up
some shared data structures. As part of this, we will gate host RPS as 
well. GuC takes over the duties of requesting frequencies by monitoring
GPU busyness. We can influence what GuC requests by modifying the min 
and max frequencies setup by SLPC through the sysfs interfaces that have
been exposed by legacy Turbo. SLPC typically requests efficient frequency
instead of minimum frequency to optimize performance. It also does not
necessarily stick to platform max, and can request frequencies that are
much higher since pcode will ultimately grant the appropriate values.
However, we will force it to adhere to platform min and max values so as
to maintain legacy behavior. SLPC does not have the concept of waitboost,
so the boost_freq sysfs will show a '0' value for now. There is a patch
forthcoming to ensure the interface is not exposed when slpc is enabled.

GuCRC is enabled similarly through a h2g message. We still need to enable
RC6 feature bit (GEN6_RC_CTL_RC6_ENABLE) before we send this out.
Render/Media power gating still needs to be enabled by host as before.
GuC will take care of setting up the hysterisis values for RC6, host
does not need to set this up anymore.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Matthew Brost (1):
  drm/i915/guc: Squashed patch - DO NOT REVIEW

Vinay Belgaumkar (15):
  drm/i915/guc/slpc: Initial definitions for slpc
  drm/i915/guc/slpc: Gate Host RPS when slpc is enabled
  drm/i915/guc/slpc: Lay out slpc init/enable/disable/fini
  drm/i915/guc/slpc: Adding slpc communication interfaces
  drm/i915/guc/slpc: Allocate, initialize and release slpc
  drm/i915/guc/slpc: Enable slpc and add related H2G events
  drm/i915/guc/slpc: Add methods to set min/max frequency
  drm/i915/guc/slpc: Add get max/min freq hooks
  drm/i915/guc/slpc: Add debugfs for slpc info
  drm/i915/guc/slpc: Enable ARAT timer interrupt
  drm/i915/guc/slpc: Cache platform frequency limits for slpc
  drm/i915/guc/slpc: Update slpc to use platform min/max
  drm/i915/guc/slpc: Sysfs hooks for slpc
  drm/i915/guc/slpc: slpc selftest
  drm/i915/guc/rc: Setup and enable GUCRC feature

 drivers/gpu/drm/i915/Makefile                 |    3 +
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   21 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |    1 +
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |    3 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |    6 +-
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   |   41 +-
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.h   |   14 +-
 .../gpu/drm/i915/gt/intel_breadcrumbs_types.h |    7 +
 drivers/gpu/drm/i915/gt/intel_context.c       |   50 +-
 drivers/gpu/drm/i915/gt/intel_context.h       |   50 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h |   54 +
 drivers/gpu/drm/i915/gt/intel_engine.h        |   54 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  182 +-
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |   71 +-
 .../gpu/drm/i915/gt/intel_engine_heartbeat.h  |    4 +
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |   12 +-
 .../drm/i915/gt/intel_execlists_submission.c  |   95 +-
 .../drm/i915/gt/intel_execlists_submission.h  |    4 -
 drivers/gpu/drm/i915/gt/intel_gt.c            |   23 +-
 drivers/gpu/drm/i915/gt/intel_gt.h            |    2 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |    6 +-
 drivers/gpu/drm/i915/gt/intel_gt_requests.c   |   23 +-
 drivers/gpu/drm/i915/gt/intel_gt_requests.h   |    9 +-
 drivers/gpu/drm/i915/gt/intel_lrc_reg.h       |    1 -
 drivers/gpu/drm/i915/gt/intel_rc6.c           |   22 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |   50 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   48 +
 drivers/gpu/drm/i915/gt/intel_rps.c           |  160 ++
 drivers/gpu/drm/i915/gt/intel_rps.h           |    5 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |   46 +-
 .../gpu/drm/i915/gt/intel_workarounds_types.h |    1 +
 drivers/gpu/drm/i915/gt/mock_engine.c         |   41 +-
 drivers/gpu/drm/i915/gt/selftest_context.c    |   10 +
 .../drm/i915/gt/selftest_engine_heartbeat.c   |   22 +
 .../drm/i915/gt/selftest_engine_heartbeat.h   |    2 +
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |   12 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  314 +-
 drivers/gpu/drm/i915/gt/selftest_mocs.c       |   50 +-
 drivers/gpu/drm/i915/gt/selftest_slpc.c       |  333 +++
 drivers/gpu/drm/i915/gt/selftest_slpc.h       |   12 +
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  132 +-
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   21 +
 .../gt/uc/abi/guc_communication_ctb_abi.h     |    3 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   99 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  114 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  460 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h    |    3 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  368 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |   28 +-
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |   41 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   90 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c     |   79 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_rc.h     |   32 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  606 ++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   47 +
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_fwif.h  |  255 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 2528 +++++++++++++++--
 .../gpu/drm/i915/gt/uc/intel_guc_submission.h |   33 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  126 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.h         |   14 +
 drivers/gpu/drm/i915/i915_debugfs.c           |    2 +
 drivers/gpu/drm/i915/i915_debugfs_params.c    |   31 +
 drivers/gpu/drm/i915/i915_gem_evict.c         |    1 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |   25 +-
 drivers/gpu/drm/i915/i915_pmu.c               |    2 +-
 drivers/gpu/drm/i915/i915_reg.h               |    4 +
 drivers/gpu/drm/i915/i915_request.c           |  168 +-
 drivers/gpu/drm/i915/i915_request.h           |   21 +
 drivers/gpu/drm/i915/i915_scheduler.c         |    9 +-
 drivers/gpu/drm/i915/i915_scheduler.h         |   10 +-
 drivers/gpu/drm/i915/i915_scheduler_types.h   |   10 +
 drivers/gpu/drm/i915/i915_sysfs.c             |   71 +-
 drivers/gpu/drm/i915/i915_trace.h             |  207 +-
 .../drm/i915/selftests/i915_live_selftests.h  |    1 +
 drivers/gpu/drm/i915/selftests/i915_request.c |    4 +-
 .../gpu/drm/i915/selftests/igt_flush_test.c   |    2 +-
 .../gpu/drm/i915/selftests/igt_live_test.c    |    2 +-
 .../i915/selftests/intel_scheduler_helpers.c  |   89 +
 .../i915/selftests/intel_scheduler_helpers.h  |   35 +
 .../gpu/drm/i915/selftests/mock_gem_device.c  |    3 +-
 80 files changed, 6705 insertions(+), 935 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/selftest_slpc.c
 create mode 100644 drivers/gpu/drm/i915/gt/selftest_slpc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_rc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_fwif.h
 create mode 100644 drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c
 create mode 100644 drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.h

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
