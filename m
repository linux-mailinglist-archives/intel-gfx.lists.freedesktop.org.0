Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B40D513F98
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 02:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8397210F47B;
	Fri, 29 Apr 2022 00:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D574F10F36A
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651192794; x=1682728794;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zZTQjWW33lCrBCTg3yO+hpl4wCCopCLvVP03YClvnpc=;
 b=l+hJvs6YuFE+NXhE/alCWSIxtXisxkD6NYqXaypp1nU5YmIUuBmK3IlW
 cCJfK3/OO4r6x3h2rhSiz83zY4Z4VzrebVwQRID1eNzRuGrg8E4jubAG+
 ZFgZBZMk7tVVW2XPq/suvH8RnzfF9qnQDCpAprigMaloQFlrvgCGyK4ts
 E+CdvmaE/E78uOVAuAyFY/SfQTU5H5nmLarWRiN6aP8mcWZI1uRWCxgva
 EuiQRhTqdr4CsAnPCTdV8yNrWLHSq1eTH66AahXUDWW3cI63A4Uo4O/bv
 vjNocpZowX3YItPrxEd4Nj8JOqjdC2Ii9PQW+U1MjpynwjV6+J9wB73cm g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="329419330"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="329419330"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 17:39:52 -0700
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="662069845"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 17:39:51 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Apr 2022 17:39:34 -0700
Message-Id: <cover.1651192357.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/9] drm/i915: Media freq factor and per-gt
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
* Patches 3 and 4 extend previous pcode functions for multiple gt's and
  patch 5 adds a couple of pcode helpers
* Patch 6 uses the new pcode functions to retrieve media RP0/RPn freq
* Patch 7 fixes memory leaks in the previous per-gt sysfs implementation
  and some code refactoring
* Patch 8 creates a gt/gtN/.defaults directory to expose default RPS
  parameter values in the per-gt sysfs
* Patch 9 adds the default value for media_freq_factor to gt/gtN/.defaults

IGT tests for this new functionality have also been posted at:

  https://patchwork.freedesktop.org/series/103107/

Test-with: 20220426000337.9367-1-ashutosh.dixit@intel.com

v2: Fixed commit author on patches 5 and 6 (Rodrigo)
    Added new patch 4
v3: Expose pcode functions in terms of uncore rather than gt (Jani/Rodrigo)

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>

Ashutosh Dixit (7):
  drm/i915: Introduce has_media_ratio_mode
  drm/i915/gt: Add media freq factor to per-gt sysfs
  drm/i915/pcode: Extend pcode functions for multiple gt's
  drm/i915/gt: Convert callers to use per-gt pcode functions
  drm/i915/gt: Fix memory leaks in per-gt sysfs
  drm/i915/gt: Expose per-gt RPS defaults in sysfs
  drm/i915/gt: Expose default value for media_freq_factor in per-gt
    sysfs

Dale B Stimson (2):
  drm/i915/pcode: Add a couple of pcode helpers
  drm/i915/gt: Add media RP0/RPn to per-gt sysfs

 drivers/gpu/drm/i915/gt/intel_gt.c            |  18 ++
 drivers/gpu/drm/i915/gt/intel_gt.h            |   2 +
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   6 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c      |  35 ++-
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h      |  12 +-
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 246 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  14 +
 drivers/gpu/drm/i915/gt/intel_llc.c           |   9 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |   4 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   9 +-
 drivers/gpu/drm/i915/gt/selftest_llc.c        |   4 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c        |   4 +-
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |   6 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  39 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |   3 +
 drivers/gpu/drm/i915/i915_driver.c            |   4 +-
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |  11 +
 drivers/gpu/drm/i915/i915_sysfs.c             |   2 +
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 drivers/gpu/drm/i915/intel_pcode.c            | 108 +++++---
 drivers/gpu/drm/i915/intel_pcode.h            |  35 ++-
 25 files changed, 483 insertions(+), 95 deletions(-)

-- 
2.34.1

