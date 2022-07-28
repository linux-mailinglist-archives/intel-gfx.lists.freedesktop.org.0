Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F7158365F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:35:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7C010EB66;
	Thu, 28 Jul 2022 01:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DC9310E28F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972083; x=1690508083;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s6GYPeXNG97DmuNny6RLl5fURczHAc2du2TBraaAjMk=;
 b=fX8WWAy4G+ceAgtXfv8N0QFt651dG8JCHF7KRLvAZI8j8UauH2kG3CEd
 MkMRsjFfKMVpQx25QZrAMnG47sM198L+3QK2+3y60XquMY8XPc6TLAXfa
 s4yufeb6mZJayFey9t3/AH4eQ08fhDdp7lvQ3kpPdRyWThtKPDQoX/LXT
 L6HxKAGlFshNVj/lxFgokDbMaqNtcowtEhqBPd+rUtMWY6nvc3GkfoLNP
 uieQMj7+N7TMd5qAU0eM15u6zXiHXbvw8qNDHnUHtz2mA6JsQFuBhy8sT
 04/Z9A2E9kP+uPRdPZtU8eSSFZzhDDNteLOGu32JUqTG3WBIUsNuZypiz w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="288403222"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="288403222"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:38 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659456927"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:38 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:33:57 -0700
Message-Id: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/23] Initial Meteorlake Support
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

The PCI Id's and platform definition are posted earlier.
This series adds handful of early enablement patches including
support for display power wells, VBT and AUX Channel mapping,
PCH and gmbus support, dbus, mbus, sagv and memory bandwidth support.

This series also add the support for a new way to read Graphics,
Media and Display versions. 

Anusha Srivatsa (2):
  drm/i915/mtl: Add CDCLK Support
  drm/i915/dmc: MTL DMC debugfs entries

Clint Taylor (1):
  drm/i915/mtl: Fix rawclk for Meteorlake PCH

Imre Deak (3):
  drm/i915/mtl: Add VBT port and AUX_CH mapping
  drm/i915/mtl: Add display power wells
  drm/i915/mtl: Add DP AUX support on TypeC ports

José Roberto de Souza (2):
  drm/i915: Parse and set stepping for platforms with GMD
  drm/i915/display/mtl: Extend MBUS programming

Madhumitha Tolakanahalli Pradeep (2):
  drm/i915/dmc: Load DMC on MTL
  drm/i915/mtl: Update CHICKEN_TRANS* register addresses

Matt Roper (4):
  drm/i915: Read graphics/media/display arch version from hw
  drm/i915/mtl: MMIO range is now 4MB
  drm/i915/mtl: Don't mask off CCS according to DSS fusing
  drm/i915/mtl: Define engine context layouts

Radhakrishna Sripada (9):
  drm/i915/mtl: Add PCH support
  drm/i915/mtl: Add gmbus and gpio support
  drm/i915/mtl: Add support for MTL in Display Init sequences
  drm/i915/mtl: memory latency data from LATENCY_LPX_LPY for WM
  drm/i915/mtl: Obtain SAGV values from MMIO instead of GT pcode mailbox
  drm/i915/mtl: Update memory bandwidth parameters
  drm/i915/mtl: Update MBUS_DBOX credits
  drm/i915/mtl: DBUF handling is same as adlp
  drm/i915/mtl: Do not update GV point, mask value

 drivers/gpu/drm/i915/display/intel_bios.c     |  14 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |  87 ++++-
 drivers/gpu/drm/i915/display/intel_bw.h       |   9 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 351 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   7 +-
 .../drm/i915/display/intel_display_power.c    |   5 +-
 .../i915/display/intel_display_power_map.c    | 115 +++++-
 .../i915/display/intel_display_power_well.c   |  43 +++
 .../i915/display/intel_display_power_well.h   |   4 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  19 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  53 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  17 +
 drivers/gpu/drm/i915/display/intel_gmbus.h    |   1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |   6 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   2 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  47 ++-
 drivers/gpu/drm/i915/i915_driver.c            |  85 ++++-
 drivers/gpu/drm/i915/i915_drv.h               |  18 +-
 drivers/gpu/drm/i915/i915_pci.c               |   1 +
 drivers/gpu/drm/i915/i915_reg.h               |  91 ++++-
 drivers/gpu/drm/i915/intel_device_info.c      |  32 +-
 drivers/gpu/drm/i915/intel_device_info.h      |  14 +
 drivers/gpu/drm/i915/intel_dram.c             |  41 +-
 drivers/gpu/drm/i915/intel_pch.c              |   9 +-
 drivers/gpu/drm/i915/intel_pch.h              |   4 +
 drivers/gpu/drm/i915/intel_pm.c               | 180 ++++++---
 drivers/gpu/drm/i915/intel_step.c             |  60 +++
 drivers/gpu/drm/i915/intel_uncore.c           |  11 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |   1 +
 32 files changed, 1178 insertions(+), 155 deletions(-)

-- 
2.25.1

