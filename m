Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F017F533DA0
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 15:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6B4210EDF2;
	Wed, 25 May 2022 13:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9804710F349
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 13:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653484764; x=1685020764;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Cgz9Dqo4+R3nbletDI90Neyjw+hUXM88wIwcfvxEpK0=;
 b=R6QmfT44cL228BUXjbAJ9XXDtDoK3nNl/eKad9nY6FHnREOUtSoYW0HV
 8tWN2FeRXC+Yu3eGyuPXgCrSb57y+UafZonqoXH+68mo2r7C462pqpkfv
 dULL0IPk/ADOq9V+cHCfbdAkUGqqVjaGkE/mLzqQ/Y+OGKH1dP67SNfwE
 9dwIeJ6qp7K1/R8W+2SkEgVS9+nDzeK5FaDkH1nNco0DB3UnDpRxWde9f
 SpS3fZNUwR9+s5m1e+IvLpHthWgP1Zul81VGNSCAnhRyHPXY+eG17T1TK
 CbUzeEew0AC78Nk2gU1gX9Orv3sS5vlQP/edmLF5wVA4vAC5/WqVU03Pi w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="334454928"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="334454928"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 06:19:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="676864798"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 06:19:23 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 May 2022 06:19:16 -0700
Message-Id: <cover.1653484574.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: Media freq factor and per-gt
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

v2: Fixed commit author on patches 5 and 6 (Rodrigo)
    Added new patch 4
v3: Expose pcode functions in terms of uncore rather than gt (Jani/Rodrigo)
v4: Retain previous pcode function names to eliminate
    needless #defines (Rodrigo)
v5: Add new patch 4 and remove last two patches in the v4 series which will
    be submitted later. Other mostly minor fixes from code review
v6: Identical to v5, only update "Test-with:" since CI did not pick up
    previous "Test-with:" probably because it was old
v7: Rebase remaining patches after patches 1, 3 and 5 have been merged
v8-v10: CI retests, no code changes

Ashutosh Dixit (3):
  drm/i915/gt: Add media freq factor to per-gt sysfs
  drm/i915/pcode: Init pcode on different gt's
  drm/i915/gt: Fix memory leaks in per-gt sysfs

Dale B Stimson (1):
  drm/i915/gt: Add media RP0/RPn to per-gt sysfs

 drivers/gpu/drm/i915/gt/intel_gt.c            |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c      |  29 ++-
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h      |   6 +-
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 177 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |   6 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  20 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |   3 +
 drivers/gpu/drm/i915/i915_driver.c            |  20 +-
 drivers/gpu/drm/i915/i915_reg.h               |   8 +
 drivers/gpu/drm/i915/i915_sysfs.c             |   2 +
 13 files changed, 253 insertions(+), 24 deletions(-)

-- 
2.34.1

