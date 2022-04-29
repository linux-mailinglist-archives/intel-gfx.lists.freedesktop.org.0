Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 563CA5154EB
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 21:56:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6037C10EEB7;
	Fri, 29 Apr 2022 19:56:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B52B10EEB7
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 19:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651262197; x=1682798197;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=63V1nSRdu9uMLgWKncfHwu4ysv0NzdyiajDXm3rTMV8=;
 b=jzTsvW6ZI3L2Xj6j/7kNlsLU6Qau5Jg2IIPYd0mROfkfqZt1bZmTCcW/
 n/N7wyB2GaQ6kk0bcLR3kign0kKlk1cgh/PVdJaSWmoM22+Jk+F0I1jRE
 /beYs47C3tgx8DgTZGz8GdBn1wn5Iah67z4t5nMoJX3MFUmPjxhVQ24Cd
 O+BLBysCUce8N/Z9AqsHonAcUMuqSD/smvlFjcHEU+AF1p68ZmcKMFK+f
 v6YcPWdJkFsEn2VduwcG6ibLkIdOoUtwBOrKu9B5Ts6kGNFocEqVBPj/f
 7dE68danwEwQyZ/9DMB6UMIpftgEGjfbVAS89krYLtPi4yW7+rSJx8SJ2 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10332"; a="246674394"
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="246674394"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 12:56:36 -0700
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="685282441"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 12:56:36 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Apr 2022 12:56:21 -0700
Message-Id: <cover.1651261886.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/8] drm/i915: Media freq factor and per-gt
 enhancements/fixes
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some recent Intel dGfx platforms allow media IP to work at a different
frequency from the base GT. This patch series exposes sysfs controls for
this functionality in the new per-gt sysfs. Some enhancements and fixes to
previous per-gt functionality are also included to complete the new
functionality:
* Patches 1 and 2 implement basic sysfs controls for media freq
* Patch 3 extends previous pcode functions for multiple gt's and
  patch 4 adds a couple of pcode helpers
* Patch 5 uses the new pcode functions to retrieve media RP0/RPn freq
* Patch 6 fixes memory leaks in the previous per-gt sysfs implementation
  and some code refactoring
* Patch 7 creates a gt/gtN/.defaults directory to expose default RPS
  parameter values in the per-gt sysfs
* Patch 8 adds the default value for media_freq_factor to gt/gtN/.defaults

IGT tests for this new functionality have also been posted at:

  https://patchwork.freedesktop.org/series/103107/

Test-with: 20220426000337.9367-1-ashutosh.dixit@intel.com

v2: Fixed commit author on patches 5 and 6 (Rodrigo)
    Added new patch 4
v3: Expose pcode functions in terms of uncore rather than gt (Jani/Rodrigo)
v4: Retain previous pcode function names to eliminate
    needless #defines (Rodrigo)

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>

Ashutosh Dixit (6):
  drm/i915: Introduce has_media_ratio_mode
  drm/i915/gt: Add media freq factor to per-gt sysfs
  drm/i915/pcode: Extend pcode functions for multiple gt's
  drm/i915/gt: Fix memory leaks in per-gt sysfs
  drm/i915/gt: Expose per-gt RPS defaults in sysfs
  drm/i915/gt: Expose default value for media_freq_factor in per-gt
    sysfs

Dale B Stimson (2):
  drm/i915/pcode: Add a couple of pcode helpers
  drm/i915/gt: Add media RP0/RPn to per-gt sysfs

 drivers/gpu/drm/i915/display/hsw_ips.c        |   4 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |   6 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  16 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 .../i915/display/intel_display_power_well.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   4 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c      |  35 ++-
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h      |  12 +-
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 246 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  14 +
 drivers/gpu/drm/i915/gt/intel_llc.c           |   3 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |   4 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   7 +-
 drivers/gpu/drm/i915/gt/selftest_llc.c        |   2 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c        |   2 +-
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |   6 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  39 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |   3 +
 drivers/gpu/drm/i915/i915_driver.c            |  20 +-
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |  11 +
 drivers/gpu/drm/i915/i915_sysfs.c             |   2 +
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 drivers/gpu/drm/i915/intel_dram.c             |   2 +-
 drivers/gpu/drm/i915/intel_pcode.c            |  92 ++++---
 drivers/gpu/drm/i915/intel_pcode.h            |  20 +-
 drivers/gpu/drm/i915/intel_pm.c               |  10 +-
 32 files changed, 473 insertions(+), 103 deletions(-)

-- 
2.34.1

