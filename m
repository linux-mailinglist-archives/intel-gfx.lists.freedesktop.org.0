Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A53CD3D973D
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 23:12:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 950BA6E49F;
	Wed, 28 Jul 2021 21:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8C6D6E2B8;
 Wed, 28 Jul 2021 21:12:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="212740379"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212740379"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 14:11:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="580995309"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga001.fm.intel.com with ESMTP; 28 Jul 2021 14:11:53 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 28 Jul 2021 14:11:30 -0700
Message-Id: <20210728211144.15322-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 00/14] drm/i915/guc/slpc: Enable GuC based
 power management features
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
forthcoming to ensure the interface is not exposed when SLPC is enabled.

GuCRC is enabled similarly through a h2g message. We still need to enable
RC6 feature bit (GEN6_RC_CTL_RC6_ENABLE) before we send this out.
Render/Media power gating still needs to be enabled by host as before.
GuC will take care of setting up the hysterisis values for RC6, host
does not need to set this up anymore.

v2: Address review comments (Michal W)
v3: More comments, optimizations (Michal W)
v4: Address comments (Michal W, Matt Roper, Matthew Brost)

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (14):
  drm/i915/guc/slpc: Initial definitions for SLPC
  drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled
  drm/i915/guc/slpc: Adding SLPC communication interfaces
  drm/i915/guc/slpc: Allocate, initialize and release SLPC
  drm/i915/guc/slpc: Enable SLPC and add related H2G events
  drm/i915/guc/slpc: Remove BUG_ON in guc_submission_disable
  drm/i915/guc/slpc: Add methods to set min/max frequency
  drm/i915/guc/slpc: Add get max/min freq hooks
  drm/i915/guc/slpc: Add debugfs for SLPC info
  drm/i915/guc/slpc: Enable ARAT timer interrupt
  drm/i915/guc/slpc: Cache platform frequency limits
  drm/i915/guc/slpc: Sysfs hooks for SLPC
  drm/i915/guc/slpc: Add SLPC selftest
  drm/i915/guc/rc: Setup and enable GuCRC feature

 drivers/gpu/drm/i915/Makefile                 |   2 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |   2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  47 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           | 198 ++++++
 drivers/gpu/drm/i915/gt/intel_rps.h           |  10 +
 drivers/gpu/drm/i915/gt/selftest_slpc.c       | 309 +++++++++
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   7 +-
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h | 234 +++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  17 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   4 +
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  22 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   7 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c     |  80 +++
 drivers/gpu/drm/i915/gt/uc/intel_guc_rc.h     |  31 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 609 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |  42 ++
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |  29 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   4 -
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  25 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.h         |   4 +
 drivers/gpu/drm/i915/i915_pmu.c               |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |   5 +
 drivers/gpu/drm/i915/i915_sysfs.c             |  83 +--
 .../drm/i915/selftests/i915_live_selftests.h  |   1 +
 24 files changed, 1684 insertions(+), 90 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/selftest_slpc.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_rc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
