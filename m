Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B56E5AD8A9
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 20:00:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97DF710E472;
	Mon,  5 Sep 2022 18:00:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A66AB10E472
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 18:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662400804; x=1693936804;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OAZEfDD3vZJHPDtuqa4JQxAEWes+QMszFA/CvZV6Dv4=;
 b=lYY0O29S/YKnOgaFBh2/25IHoYWMSssxscA+Qlsej92cI2q96XQ/46zK
 DWWz+hmA3R6rtRe/P9rJO4Hexp5u3KZnmJZtsQDkDajfFMbTJbH+YJ7oO
 4BP5m5Gs9Ygocu6nYa0bhdW74Pqvr97V0Pj/Q2i/ZTwYUMU3fDCfV4WB3
 x2Y/UEpDnQ88P4TbnyNFQGHCXTG9BojQmz3sE0/Hd806RflnXqs0tpL/A
 bhBUys2ban56iHhtbLQPQ17vX+wtQdTnXO/mHIcmHbc2/s5ZC7/rfA81v
 rZ5tIPo6/EeDpsPSX6Z0oWKo7ukMZfOT9HG7qGogzpO+tyLcsX0movPmP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="295171015"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="295171015"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:00:03 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="942178916"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:00:02 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 23:32:14 +0530
Message-Id: <20220905180219.1971119-1-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] i915: CAGF and RC6 changes for MTL
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
patch 4 and 5 needs review.

Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>

Badal Nilawar (2):
  INTEL_DII: drm/i915/mtl: Modify CAGF functions for MTL
  INTEL_DII: drm/i915/mtl: Add C6 residency support for MTL SAMedia

Matt Roper (3):
  drm/i915: Prepare more multi-GT initialization
  drm/i915: Rename and expose common GT early init routine
  drm/i915/xelpmp: Expose media as another GT

 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            | 70 +++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_gt.h            |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 56 +++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 26 +++++++
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |  9 ++-
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 +
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  5 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  5 ++
 drivers/gpu/drm/i915/gt/intel_sa_media.c      | 39 +++++++++++
 drivers/gpu/drm/i915/gt/intel_sa_media.h      | 15 ++++
 drivers/gpu/drm/i915/gt/selftest_rc6.c        |  9 ++-
 drivers/gpu/drm/i915/i915_drv.h               |  2 +
 drivers/gpu/drm/i915/i915_pci.c               | 15 ++++
 drivers/gpu/drm/i915/i915_pmu.c               |  8 ++-
 drivers/gpu/drm/i915/intel_device_info.h      | 19 +++++
 drivers/gpu/drm/i915/intel_uncore.c           | 16 ++++-
 drivers/gpu/drm/i915/intel_uncore.h           | 20 +++++-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  1 +
 20 files changed, 301 insertions(+), 22 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.h

-- 
2.25.1

