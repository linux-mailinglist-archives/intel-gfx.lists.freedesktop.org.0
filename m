Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0175D5242BB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 04:32:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E7C10FF33;
	Thu, 12 May 2022 02:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C73510FF33
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 02:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652322752; x=1683858752;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9ZfvRGFeZliJyAuL49/kM86Nck3p87vt2cNaE/Sy90I=;
 b=Ttj63fZhSYg9PEQ2j8c9b9EOa7wjvdAs80phnFBj28K8TnhiYgWOPamh
 dfSlHDapVhsbOrNWx42czyxjQHSq4nW8/VP/Njzw5afu+JAlL7ShUsYnD
 a5mGRuhrW9nA1yLDJcZZGGVX9TnS/5JAlCqq1r3YmHBm8RL3qY3AKjDOE
 E5y0rKKSKaLUjM3hOJrI3xfv0O8/Ei+4MTwqC2apSzjtzu2I0FAS7cQLv
 HN7eBZ3cfmVtaAZ/duC7Yk/0V1RknV25GHCGUtKjymlM71Bin7RPzsxBF
 uAtduo6gMiVh2ljwlbVgFL2RwKPyCt+qWt2QIriFlvMYNrGhLv0He4wlP g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="269540408"
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="269540408"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 19:32:30 -0700
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="739484186"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 19:32:30 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 May 2022 19:32:13 -0700
Message-Id: <cover.1652320806.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/7] drm/i915: Media freq factor and per-gt
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some recent Intel dGfx platforms allow media IP to work at a different
frequency from the base GT. This patch series exposes sysfs controls for
this functionality in the new per-gt sysfs. Some enhancements and fixes to
previous per-gt functionality are also included to complete the new
functionality:
* Patches 1 and 2 implement basic sysfs controls for media freq
* Patch 3 extends previous pcode functions for multiple gt's
* Patch 4 inits pcode on different gt's
* Patch 5 adds a couple of pcode helpers
* Patch 6 uses the new pcode functions to retrieve media RP0/RPn freq
* Patch 7 fixes memory leaks in the previous per-gt sysfs implementation
  and some code refactoring

IGT tests for this new functionality have also been posted at:

  https://patchwork.freedesktop.org/series/103175/

Test-with: 20220426194111.5990-1-ashutosh.dixit@intel.com

v2: Fixed commit author on patches 5 and 6 (Rodrigo)
    Added new patch 4
v3: Expose pcode functions in terms of uncore rather than gt (Jani/Rodrigo)
v4: Retain previous pcode function names to eliminate
    needless #defines (Rodrigo)
v5: Add new patch 4 and remove last two patches in the v4 series which will
    be submitted later. Other mostly minor fixes from code review.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

Ashutosh Dixit (5):
  drm/i915: Introduce has_media_ratio_mode
  drm/i915/gt: Add media freq factor to per-gt sysfs
  drm/i915/pcode: Extend pcode functions for multiple gt's
  drm/i915/pcode: Init pcode on different gt's
  drm/i915/gt: Fix memory leaks in per-gt sysfs

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
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c      |  29 ++-
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h      |   6 +-
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 177 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
 drivers/gpu/drm/i915/gt/intel_llc.c           |   3 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |   4 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   4 +-
 drivers/gpu/drm/i915/gt/selftest_llc.c        |   2 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c        |   2 +-
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |   6 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  20 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |   3 +
 drivers/gpu/drm/i915/i915_driver.c            |  20 +-
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |  11 ++
 drivers/gpu/drm/i915/i915_sysfs.c             |   2 +
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 drivers/gpu/drm/i915/intel_dram.c             |   2 +-
 drivers/gpu/drm/i915/intel_pcode.c            |  93 +++++----
 drivers/gpu/drm/i915/intel_pcode.h            |  20 +-
 drivers/gpu/drm/i915/intel_pm.c               |  10 +-
 32 files changed, 363 insertions(+), 100 deletions(-)

-- 
2.34.1

