Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EEF5AA79C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 08:04:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECB7010E74C;
	Fri,  2 Sep 2022 06:04:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 549A610E746;
 Fri,  2 Sep 2022 06:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662098665; x=1693634665;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/0g+hY/55cd1wWaJzgt2es7yGCL/x353A3GilhpUuWc=;
 b=WiuaSyCC58kYkazN0D+zWtZYG3KgOAZLTLkWLqoWk3Uw287Gi5kHYMIk
 cgPKmpo000wg9kzNQnPvqm8OL5BEDtHmwT/OoTjVOZ4jxF8A3KnexXF4z
 VQAr5mcBlyaDVETcf14u7k/+vPgP6T8MHSQJ5ZyF2Qwr/HU9WIqnxcdzv
 cFv7prHuf067EZcQukPGAbRT3dlXHBWyMe45ssX+9ouotZ9wliC5hxcPk
 H7rWczTWHLKU8bU4RTi+wPIQ5aYFrFyLEPwbasSmpqyJfx4ODRbyUjTvu
 5+E+mqG45CxWUOk0l7+zcxd4W+5bkkEKhLifNFCtTn/d7/bX/T+4IRtEP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="282889124"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="282889124"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 23:04:24 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="755144579"
Received: from invictus.jf.intel.com ([10.165.21.188])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 23:04:24 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Sep 2022 23:03:31 -0700
Message-Id: <20220902060342.151824-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 00/11] Initial Meteorlake Support
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The PCI Id's and platform definition are posted earlier.
This series adds handful of early enablement patches including
support for display power wells, VBT and AUX Channel mapping,
PCH and gmbus support, dbus, mbus, sagv and memory bandwidth support.

This series also add the support for a new way to read Graphics,
Media and Display versions

This is based out of the earlier series posted at [1]. Several
of the patches from the earlier series got merged. This version is
rebased on top of the earlier patches that got merged.

[1] https://patchwork.freedesktop.org/series/106786/

Imre Deak (2):
  drm/i915/mtl: Add display power wells
  drm/i915/mtl: Add DP AUX support on TypeC ports

José Roberto de Souza (1):
  drm/i915: Parse and set stepping for platforms with GMD

Madhumitha Tolakanahalli Pradeep (1):
  drm/i915/mtl: Update CHICKEN_TRANS* register addresses

Matt Roper (2):
  drm/i915: Read graphics/media/display arch version from hw
  drm/i915/mtl: Define engine context layouts

Radhakrishna Sripada (5):
  drm/i915: Move display and media IP version to runtime info
  drm/i915/mtl: Add gmbus and gpio support
  drm/i915/mtl: Obtain SAGV values from MMIO instead of GT pcode mailbox
  drm/i915/mtl: Update MBUS_DBOX credits
  drm/i915/mtl: Do not update GV point, mask value

 drivers/gpu/drm/i915/display/intel_bw.c       |  42 ++++++-
 drivers/gpu/drm/i915/display/intel_display.c  |  14 ++-
 .../i915/display/intel_display_power_map.c    | 115 +++++++++++++++++-
 .../i915/display/intel_display_power_well.c   |  44 +++++++
 .../i915/display/intel_display_power_well.h   |   4 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  53 +++++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   5 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  15 +++
 drivers/gpu/drm/i915/display/intel_gmbus.h    |   1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |   6 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   2 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  81 +++++++++++-
 drivers/gpu/drm/i915/i915_driver.c            |   3 +-
 drivers/gpu/drm/i915/i915_drv.h               |  16 +--
 drivers/gpu/drm/i915/i915_pci.c               |  39 +++---
 drivers/gpu/drm/i915/i915_reg.h               |  83 ++++++++++++-
 drivers/gpu/drm/i915/intel_device_info.c      | 102 ++++++++++++++--
 drivers/gpu/drm/i915/intel_device_info.h      |  27 ++--
 drivers/gpu/drm/i915/intel_dram.c             |  41 ++++++-
 drivers/gpu/drm/i915/intel_pm.c               |  73 ++++++++++-
 drivers/gpu/drm/i915/intel_step.c             |  60 +++++++++
 21 files changed, 754 insertions(+), 72 deletions(-)

-- 
2.34.1

