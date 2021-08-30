Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBBE3FBA17
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 18:26:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD09E89C9A;
	Mon, 30 Aug 2021 16:25:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B36EC89C9A
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 16:25:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10092"; a="279318015"
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="279318015"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 09:25:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="497802497"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga008.fm.intel.com with ESMTP; 30 Aug 2021 09:25:55 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Date: Mon, 30 Aug 2021 21:52:32 +0530
Message-Id: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V3 0/8] drm/i915/gt: Initialize unused MOCS
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

Apoorva Singh (1):
  drm/i915/gt: Set BLIT_CCTL reg to un-cached

Ayaz A Siddiqui (5):
  drm/i915/gt: Add support of mocs propagation
  drm/i915/gt: Set CMD_CCTL to UC for Gen12 Onward
  drm/i915/gt: Initialize unused MOCS entries with device specific
    values
  drm/i95/adl: Define MOCS table for Alderlake
  drm/i915/selftest: Remove Renderer class check for l3cc table read

Sreedhar Telukuntla (1):
  drm/i915/gt: Initialize L3CC table in mocs init

Srinivasan Shanmugam (1):
  drm/i915/gt: Add support of mocs auxiliary registers programming

 drivers/gpu/drm/i915/gt/intel_gt.c         |   5 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h   |   4 +
 drivers/gpu/drm/i915/gt/intel_mocs.c       | 314 +++++++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_mocs.h       |   5 +
 drivers/gpu/drm/i915/gt/selftest_mocs.c    |  53 +++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c |  17 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h |  15 +
 drivers/gpu/drm/i915/i915_reg.h            |  23 ++
 8 files changed, 399 insertions(+), 37 deletions(-)

-- 
2.26.2

