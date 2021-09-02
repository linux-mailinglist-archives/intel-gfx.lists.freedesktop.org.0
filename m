Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9873FF3B7
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 21:00:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E43B16E7FA;
	Thu,  2 Sep 2021 19:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C78606E7EC
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 19:00:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="217357009"
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="217357009"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 11:59:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="689262643"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga006.fm.intel.com with ESMTP; 02 Sep 2021 11:59:46 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Date: Fri,  3 Sep 2021 00:26:29 +0530
Message-Id: <20210902185635.290538-1-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V4 0/6] drm/i915/gt: Initialize unused MOCS
 entries to L3_WB
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

Gen >= 12 onwards MOCS table doesn't have a setting for PTE
so I915_MOCS_PTE is not a valid index and it will have different
MOCS values are based on the platform.

To detect these kinds of misprogramming, all the unspecified and
reserved MOCS indexes are set to WB_L3. TGL/RKL unspecified MOCS
indexes are pointing to L3 UC are kept intact to avoid API break.

This series also contains patches to program BLIT_CCTL and
CMD_CCTL registers to UC.
Since we are quite late to update MOCS table for TGL so added
a new MOCS table for ADL family.

V2:
  1. Added CMD_CCTL to GUC regset list so that it can be restored
     after engine reset.
  2. Checkpatch warning removal.

V3:
 1. Changed implementation to have a framework only.
 2. Added register type for proper application.
 3. moved CMD_CCTL programming to a separate patch.
 4. Added L3CC initialization during gt reset so that MOCS indexes are
    set before GuC initialization.
 5. Removed Renderer check for L3CC verification in selftest.

V4:
 1. Moved register programming in Workaorund section as fake workaround.
 2. Removed seperate ADL mocs table, new logic is to set unused index as
 L3_WB for gen12 platform except TGL/RKL.  

Ayaz A Siddiqui (5):
  drm/i915/gt: Add support of mocs propagation
  drm/i915/gt: Set CMD_CCTL to UC for Gen12 Onward
  drm/i915/gt: Set BLIT_CCTL reg to un-cached
  drm/i915/gt: Initialize unused MOCS entries with device specific
    values
  drm/i915/selftest: Remove Renderer class check for l3cc table read

Sreedhar Telukuntla (1):
  drm/i915/gt: Initialize L3CC table in mocs init

 drivers/gpu/drm/i915/gt/intel_gt.c          |  2 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |  4 ++
 drivers/gpu/drm/i915/gt/intel_mocs.c        | 72 ++++++++++++++-------
 drivers/gpu/drm/i915/gt/intel_mocs.h        |  1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 69 +++++++++++++++++++-
 drivers/gpu/drm/i915/gt/selftest_mocs.c     |  4 +-
 drivers/gpu/drm/i915/i915_reg.h             | 26 ++++++++
 7 files changed, 152 insertions(+), 26 deletions(-)

-- 
2.26.2

