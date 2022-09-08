Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D00CC5B13EF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 07:18:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E37310E94A;
	Thu,  8 Sep 2022 05:18:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE40410E94A
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 05:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662614309; x=1694150309;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CZP6OSEnwv2HAV6ZGzZT6Tbv8GZM6nyvzLJhKdLUjr4=;
 b=MbHQ8uJ1nBSot6LRfs40de2GdZv/QaxggsoP2So+rXCqL9CxA9Mvl3rV
 lRf6RRkmo+iQt+RvacDx8MjkOuRAI/eZYJWLjRXO9+amjrSFTjUUgM7y+
 iU3czMXFKFMKDLhSAKqiU1sMJtmiL++Y4JqL5nz6jZuBUtCt35aoTEIUk
 c4JQ479HaMKWkYqFWwxTQdZCId6dq4ONhf8dXNNjeNUaMnozIblGVCmvT
 DU5wBnYJSC4uimtAteH9P4DS9Qqnu+KCfopxWFseHcZ7TbHcKeueAo7zV
 FeAPm5tIq60iDxbgY9df3ldMNXgKU5evk8bdoRepnAhbdVHxxNZIPQHAw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="361033325"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="361033325"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 22:18:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="703872693"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 22:18:28 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 22:18:24 -0700
Message-Id: <cover.1662613377.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] i915: freq caps and perf_limit_reasons
 changes for MTL
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

This series includes freq caps and perf_limit_reasons changes for MTL. The
series depends on:

https://patchwork.freedesktop.org/series/107908/

We have included 4 patches from from the above series as part of this
series in order for this series to compile. These are the first 4 patches
authored by Matt Roper. Please do not review these first 4 patches. Only
patches 5 through 8 need review.

Cc: Badal Nilawar <badal.nilawar@intel.com>

Ashutosh Dixit (3):
  drm/i915/gt: Fix perf limit reasons bit positions
  drm/i915/mtl: PERF_LIMIT_REASONS changes for MTL
  drm/i915/rps: Freq caps for MTL

Matt Roper (4):
  drm/i915: Prepare more multi-GT initialization
  drm/i915: Rename and expose common GT early init routine
  drm/i915/uncore: Add GSI offset to uncore
  drm/i915/xelpmp: Expose media as another GT

Tilak Tangudu (1):
  drm/i915/debugfs: Add perf_limit_reasons in debugfs

 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            | 77 ++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_gt.h            |  3 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 31 ++++++++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  8 ++
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |  6 +-
 drivers/gpu/drm/i915/gt/intel_gt_types.h      | 17 ++++
 drivers/gpu/drm/i915/gt/intel_rps.c           | 46 ++++++++---
 drivers/gpu/drm/i915/gt/intel_sa_media.c      | 39 ++++++++++
 drivers/gpu/drm/i915/gt/intel_sa_media.h      | 15 ++++
 drivers/gpu/drm/i915/i915_drv.h               |  2 +
 drivers/gpu/drm/i915/i915_pci.c               | 14 ++++
 drivers/gpu/drm/i915/i915_reg.h               | 27 +++++--
 drivers/gpu/drm/i915/intel_device_info.h      |  3 +
 drivers/gpu/drm/i915/intel_uncore.c           | 10 ++-
 drivers/gpu/drm/i915/intel_uncore.h           | 22 +++++-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  1 +
 18 files changed, 294 insertions(+), 30 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.h

-- 
2.34.1

