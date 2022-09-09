Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 606455B2C40
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 04:54:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 936E510E226;
	Fri,  9 Sep 2022 02:54:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B848510E18C
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 02:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662692063; x=1694228063;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PVfaz+Va4W7BLQS9oQ4Fau/lItpcsGhSg5i5Yx4OzEI=;
 b=jJ79HeDxKhvzgbQryQGy2Z7U2eoRgAY1H0oVq0x9vXtLgvDwhwcnVQu3
 1DNYJXq7SVvF6x7h4VatdaP3InryReq5Y3HQLt+A+eJKGd+nRuVnv7k7O
 TVwrUl25UoII2KLzbzH271+fjuplQnXWCjW0e2clwnbSWz2qaXen6pqhr
 VqbbmUAH5MC9U98IbboG5oYkAWksdCKOMAysBcTwK/+xb8AniROGKj1x8
 b1bTSrB1yAIxLR+eEamASds0TZiJoN8KmgzGBgNtAkXlxFljQH4bbE1sq
 GhUloR/jskgOTjQ6CAaPQBjo7gXtSWQM7V1BxgRTkH9U/z/yM2F9/WFPO A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="280407090"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="280407090"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 19:54:23 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="943609554"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 19:54:21 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Sep 2022 08:26:40 +0530
Message-Id: <20220909025646.3397620-1-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] i915: CAGF and RC6 changes for MTL
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

This series includes the code changes to get CAGF, RC State and 
C6 Residency of MTL. The series depends on:

https://patchwork.freedesktop.org/series/107908/

We have included 3 patches from from the above series as part of this
series in order for this series to compile. These are the first 3 patches
authored by Matt Roper. Please do not review these first 3 patches. Only
patch 4 and 6 needs review.

v2: Included "Use GEN12 RPSTAT register" patch 

Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>

Badal Nilawar (2):
  drm/i915/mtl: Modify CAGF functions for MTL
  drm/i915/mtl: Add C6 residency support for MTL SAMedia

Don Hiatt (1):
  drm/i915: Use GEN12 RPSTAT register

Matt Roper (3):
  drm/i915: Prepare more multi-GT initialization
  drm/i915: Rename and expose common GT early init routine
  drm/i915/xelpmp: Expose media as another GT

 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            | 70 +++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_gt.h            |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 58 ++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 31 ++++++++
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |  9 ++-
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 +
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  5 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           | 22 +++++-
 drivers/gpu/drm/i915/gt/intel_rps.h           |  1 +
 drivers/gpu/drm/i915/gt/intel_sa_media.c      | 39 +++++++++++
 drivers/gpu/drm/i915/gt/intel_sa_media.h      | 15 ++++
 drivers/gpu/drm/i915/gt/selftest_rc6.c        |  9 ++-
 drivers/gpu/drm/i915/i915_drv.h               |  2 +
 drivers/gpu/drm/i915/i915_pci.c               | 15 ++++
 drivers/gpu/drm/i915/i915_pmu.c               | 11 ++-
 drivers/gpu/drm/i915/intel_device_info.h      | 19 +++++
 drivers/gpu/drm/i915/intel_uncore.c           | 16 ++++-
 drivers/gpu/drm/i915/intel_uncore.h           | 20 +++++-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  1 +
 21 files changed, 325 insertions(+), 26 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.h

-- 
2.25.1

