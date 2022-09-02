Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66ED35ABB6B
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Sep 2022 01:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B33C710E949;
	Fri,  2 Sep 2022 23:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0152C10E957
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 23:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662162789; x=1693698789;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lpMJ/06E+d2RTaDyhseLYv6cO5FKnR8e7ZNWVqxqsjU=;
 b=mF0vuE/eHXwekyPdAqvcBYAuLInf35bQ4FIG6209WRBBolAbknq6V7qv
 /9YUoiYvmfMMe4HEW+hHirr4mRDdzyqvhD0DK2BkFZNz/BgYxmY/nrXQp
 Lvd76s2SSOWvg7dZcev6iPdO3M1guevd2VMsYk/iWMdwAZWl9efGBHaIg
 h1rlEaFJc46sIlWyuMHBA4y75BSV8NIZRTJFIf244r4toL3t5kiARdpHr
 2RSDyqVZFS7vDantLn7T3UOEpLPOnbE/hHZpsV1c/NEqvBEBIbJEGpchZ
 gG5rmN/64WWkk01QQnMN9KGy6zUim++6+HjEyrN83ukUagcjf+uNjx1gO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="279125063"
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="279125063"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 16:53:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="564135542"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 16:53:08 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Sep 2022 16:52:56 -0700
Message-Id: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] i915: freq caps and perf_limit_reasons
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

We have included 3 patches from from the above series as part of this
series in order for this series to compile. These are the first 3 patches
authored by Matt Roper. Please do not review these first 3 patches. Only
patches 4 through 6 need review.

Cc: Badal Nilawar <badal.nilawar@intel.com>

Ashutosh Dixit (2):
  drm/i915/mtl: PERF_LIMIT_REASONS changes for MTL
  drm/i915/rps: Freq caps for MTL

Matt Roper (3):
  drm/i915: Prepare more multi-GT initialization
  drm/i915: Rename and expose common GT early init routine
  drm/i915/xelpmp: Expose media as another GT

Tilak Tangudu (1):
  drm/i915/debugfs: Add perf_limit_reasons in debugfs

 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            | 70 +++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_gt.h            | 10 ++-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 27 +++++++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  8 +++
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |  6 +-
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 +
 drivers/gpu/drm/i915/gt/intel_rps.c           | 20 ++++++
 drivers/gpu/drm/i915/gt/intel_sa_media.c      | 39 +++++++++++
 drivers/gpu/drm/i915/gt/intel_sa_media.h      | 15 ++++
 drivers/gpu/drm/i915/i915_drv.h               |  2 +
 drivers/gpu/drm/i915/i915_pci.c               | 15 ++++
 drivers/gpu/drm/i915/i915_reg.h               | 11 +++
 drivers/gpu/drm/i915/intel_device_info.h      | 19 +++++
 drivers/gpu/drm/i915/intel_uncore.c           | 16 ++++-
 drivers/gpu/drm/i915/intel_uncore.h           | 20 +++++-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  1 +
 18 files changed, 264 insertions(+), 21 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.h

-- 
2.34.1

