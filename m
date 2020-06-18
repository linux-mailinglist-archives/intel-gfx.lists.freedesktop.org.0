Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B8B1FDA5C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:42:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E39E46E25B;
	Thu, 18 Jun 2020 00:42:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3AB36E150
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 00:42:50 +0000 (UTC)
IronPort-SDR: XPgBJq6VoWsg1uvKCMZDxOcuTejxQrC1pdiUVWiBwrVVP5phs8cO6a3FVjFeof7rudH17nfsF9
 SMjZ87UCio8Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 17:42:50 -0700
IronPort-SDR: FBP/WK+5JMmbWFBDd0/KKNoPA1uDJSqurX4NwjfnPuHntRgLmY+xQHadWIcomOy6FOorHZcxz1
 CyERJRnXw43g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; d="scan'208";a="477011827"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2020 17:42:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:42:08 -0700
Message-Id: <20200618004240.16263-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/32] Introduce DG1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2:
- Remove some wrong/unneeded patches
- Collect R-b
- Rebase

As in previous version, the RKL patches are here only for completeness
and avoid future conflicts, not to be reviewed/applied.

Original cover:
DG1 is a gen12 dgfx platform. This is the first batch of patches to
support it. It also depends on some in-flight patches adding RKL. In
order for this series to be compiled, I'm including them here.

While converting some of these patches to the current
intel_uncore/intel_de APIs I thought it could be useful to return the
previous value. The patch for that is included here, but I ended up
not using and it can be dropped if there is no interest.

Abdiel Janulgue (2):
  drm/i915/dg1: add initial DG-1 definitions
  drm/i915/dg1: Add DG1 PCI IDs

Aditya Swarup (4):
  drm/i915/dg1: Add DPLL macros for DG1
  drm/i915/dg1: Add and setup DPLLs for DG1
  drm/i915/dg1: Enable DPLL for DG1
  drm/i915/dg1: Enable first 2 ports for DG1

Anshuman Gupta (1):
  drm/i915/dg1: DG1 does not support DC6

Anusha Srivatsa (1):
  drm/i915/dg1: Remove SHPD_FILTER_CNT register programming

Clinton A Taylor (1):
  drm/i915/dg1: invert HPD pins

Lucas De Marchi (7):
  drm/i915/dg1: add support for the master unit interrupt
  drm/i915/dg1: Add fake PCH
  drm/i915/dg1: Define MOCS table for DG1
  drm/i915/dg1: add hpd interrupt handling
  drm/i915/dg1: gmbus pin mapping
  drm/i915/dg1: map/unmap pll clocks
  drm/i915/dg1: enable PORT C/D aka D/E

Matt Atwood (1):
  drm/i915/dg1: Load DMC

Matt Roper (11):
  drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout
  drm/i915/rkl: Add DPLL4 support
  drm/i915/rkl: Handle HTI
  drm/i915/rkl: Add initial workarounds
  drm/i915/rkl: Add Wa_14011224835 for PHY B initialization
  drm/i915/dg1: Initialize RAWCLK properly
  drm/i915/dg1: Wait for pcode/uncore handshake at startup
  drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
  drm/i915/dg1: Update comp master/slave relationships for PHYs
  drm/i915/dg1: Update voltage swing tables for DP
  drm/i915/dg1: provide port/phy mapping for vbt

Stuart Summers (2):
  drm/i915: Add has_master_unit_irq flag
  drm/i915/dg1: Add initial DG1 workarounds

Uma Shankar (1):
  drm/i915/dg1: Add DG1 power wells

Venkata Sandeep Dhanalakota (1):
  drm/i915/dg1: Increase mmio size to 4MB

 drivers/gpu/drm/i915/display/intel_bios.c     |  12 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  16 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    |  33 ++-
 drivers/gpu/drm/i915/display/intel_csr.c      |  19 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 144 +++++++++++-
 drivers/gpu/drm/i915/display/intel_display.c  |  87 +++++++-
 .../drm/i915/display/intel_display_power.c    | 211 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 117 ++++++++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  32 ++-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  15 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   9 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |   5 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  39 +++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 159 ++++++++++---
 drivers/gpu/drm/i915/i915_debugfs.c           |   4 +
 drivers/gpu/drm/i915/i915_drv.c               |   3 +
 drivers/gpu/drm/i915/i915_drv.h               |  12 +
 drivers/gpu/drm/i915/i915_irq.c               | 120 +++++++++-
 drivers/gpu/drm/i915/i915_pci.c               |  13 ++
 drivers/gpu/drm/i915/i915_reg.h               | 101 +++++++--
 drivers/gpu/drm/i915/intel_device_info.c      |   1 +
 drivers/gpu/drm/i915/intel_device_info.h      |   2 +
 drivers/gpu/drm/i915/intel_pch.c              |   6 +
 drivers/gpu/drm/i915/intel_pch.h              |   4 +
 drivers/gpu/drm/i915/intel_pm.c               |  17 +-
 drivers/gpu/drm/i915/intel_sideband.c         |  15 ++
 drivers/gpu/drm/i915/intel_sideband.h         |   2 +
 drivers/gpu/drm/i915/intel_uncore.c           |   4 +
 include/drm/i915_pciids.h                     |   4 +
 29 files changed, 1083 insertions(+), 123 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
