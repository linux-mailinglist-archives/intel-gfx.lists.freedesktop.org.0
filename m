Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B28A4FFD88
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 20:11:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E9AD10E18A;
	Wed, 13 Apr 2022 18:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45F6410E18A
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 18:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649873476; x=1681409476;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VOktdRyNZf/GbKfAiza/UHPBlu7+TvzOt7qqf/VK5gA=;
 b=A3pZ7W03HyOlzlsNVmTISkKxBzm8HJu2XDiXP/akO79zNrc3n0gMVZMC
 h22vEcRtfeBLBkH7lWgO8Jlctf6M93+YjHgspXiJJ7BYkg5vhF9Wo13K4
 PYIZ8YM3awnI54ZMdOxk/tjCgdIY33u95XHJFlDBk+mB0wLm+PjQoPNEq
 uQEVBGrpEXSj8doaFjQXmY7+jaDnUvNOnWsKJF7F3TJFu/cPcFwt9+rIQ
 QMNZ90Ci4lvx2gJ/G+/iGgojNHDjPmWD8/Qr1wLMbO5/FUAQIoPfGc9No
 M9+lC3g5LnMIccCyxqj+kWmvgxTFaQhXenzqHWLxWLoHAPIZLc2OfU6bq A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="323181896"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="323181896"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 11:11:15 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="802788699"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 11:11:15 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Apr 2022 11:11:01 -0700
Message-Id: <cover.1649871650.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] drm/i915: Media freq factor and per-gt
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
Cc: Andi Shyti <andi.shyti@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some recent Intel dGfx platforms allow media IP to work at a different
frequency from the base GT. This patch series exposes sysfs controls for
this functionality in the new per-gt sysfs. Some enhancements and fixes to
previous per-gt functionality are also included to complete the new
functionality:
* Patches 1 and 2 implement basic sysfs controls for media freq
* Patch 3 extends previous pcode functions for multiple gt's and patch 4 adds
  a couple of pcode helpers
* Patch 5 uses the new pcode functions to retrieve media RP0/RPn frequencies
* Patch 6 fixes memory leaks in the previous per-gt sysfs implementation and
  some code refactoring
* Patch 7 creates a gt/gtN/.defaults directory to expose default RPS
  parameter values in the per-gt sysfs
* Patch 8 adds the default value for media_freq_factor to gt/gtN/.defaults

IGT tests for this new functionality have also been posted at:

  https://patchwork.freedesktop.org/series/102664/

Test-with: deb07be64c3930945a0e7bd17989fda4ed2e5ece.1649870633.git.ashutosh.dixit@intel.com

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>

Ashutosh Dixit (8):
  drm/i915: Introduce has_media_ratio_mode
  drm/i915/gt: Add media freq factor to per-gt sysfs
  drm/i915/pcode: Extend pcode functions for multiple gt's
  drm/i915/pcode: Add a couple of pcode helpers
  drm/i915/gt: Add media RP0/RPn to per-gt sysfs
  drm/i915/gt: Fix memory leaks in per-gt sysfs
  drm/i915/gt: Expose per-gt RPS defaults in sysfs
  drm/i915/gt: Expose default value for media_freq_factor in per-gt
    sysfs

 drivers/gpu/drm/i915/gt/intel_gt.c            |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c      |  41 ++-
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h      |  12 +-
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 246 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  14 +
 drivers/gpu/drm/i915/gt/intel_rps.c           |   3 +
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |   6 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  39 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |   3 +
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |  18 ++
 drivers/gpu/drm/i915/i915_sysfs.c             |   2 +
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 drivers/gpu/drm/i915/intel_pcode.c            | 136 ++++++----
 drivers/gpu/drm/i915/intel_pcode.h            |  39 ++-
 18 files changed, 483 insertions(+), 84 deletions(-)

-- 
2.34.1

