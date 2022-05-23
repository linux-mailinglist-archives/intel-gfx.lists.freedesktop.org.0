Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D555311BF
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 17:57:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBE671122B9;
	Mon, 23 May 2022 15:57:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E201C112296
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 15:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653321460; x=1684857460;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k7r5zDQpYs3c7+U7Mmx/qNFjvVbJVGhP+WpbSuMGxME=;
 b=WOF0xy1hJ+rlutquuVwiPRqR+Y6sclcAXRC2aI87RpsfnS12nXhkLurS
 6O/+w9PF7PbrU8yYji9yvzMx5Rr4FAkJ05WEQyZkrrKZQ3RsVNkPmVlPv
 r/buRJhET5XM7YEXTL+X2s7eB10i+rGMAB8yGHS03RtG2KVhNe1Jgrlg2
 naOSzVuNnc80AipCy5PqCq/zrSGxURNkttRtLSxAx2ovBwMCg4fsKwSwm
 +PClnH6NtuLGqXoxAFSj5hYyO093knk2ihfrnLgc5ZQTOzyuQghWZOSnA
 V/TZWem0H6YFC90KgBCtWmR5gTgcLvaF38HvYr2L0fDW30JDLE3qg36/s A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10356"; a="273381637"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="273381637"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 08:57:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="548040674"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 08:57:23 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 May 2022 08:57:13 -0700
Message-Id: <cover.1653321034.git.ashutosh.dixit@intel.com>
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
v7: Rebase remaining patches after patches 1, 3 and 5 have been merged

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

