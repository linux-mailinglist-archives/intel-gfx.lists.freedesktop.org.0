Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A03352596C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 03:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8395D10FA8D;
	Fri, 13 May 2022 01:37:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 552A110FA7C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 01:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652405825; x=1683941825;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=20hbXSbI7vg7Qj+CInEhLG0Rsu5hOwDbH5FGy6FpBHc=;
 b=gJ/KYXmHoovKTyOmaBf502UtHDAMNFTS1jlBStUOJVzLXFL7o1dbv1d9
 sPGXs4Gt+xtpiNqR0J5y76XkgHr3fTrHUO7MNO/UbDpxO13+/oGyW4TM9
 MUiowu4pEXax5+KEeIQzxHuC2OfvUBYPJjVt30NF3I0xIl5Pv8WcVVxg/
 holHf8FMrfUbk0cCEbTRiOA82iYhcpvg4AT4NViCgy88Ie6rlgYOk7OXq
 IBUxJ7ISWaq7+ELB/xyk3pvY9zgBZHhbNR3BigiFFnlZ793Behelrpc8x
 vWvtauKYzcWjgTLX61Flp3n3C5QUIuCRRtS2LXWOexN8NZvkYefuDuHju g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="257728755"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="257728755"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 18:37:04 -0700
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="671111014"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 18:37:04 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 May 2022 18:36:52 -0700
Message-Id: <cover.1652405421.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/7] drm/i915: Media freq factor and per-gt
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

Test-with: 20220513011500.73460-1-ashutosh.dixit@intel.com

v2: Fixed commit author on patches 5 and 6 (Rodrigo)
    Added new patch 4
v3: Expose pcode functions in terms of uncore rather than gt (Jani/Rodrigo)
v4: Retain previous pcode function names to eliminate
    needless #defines (Rodrigo)
v5: Add new patch 4 and remove last two patches in the v4 series which will
    be submitted later. Other mostly minor fixes from code review
v6: Identical to v5, only update "Test-with:" since CI did not pick up
    previous "Test-with:" probably because it was old

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

