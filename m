Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7639B1DC3C7
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:38:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 579696E8C9;
	Thu, 21 May 2020 00:38:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36D7C6E8C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:07 +0000 (UTC)
IronPort-SDR: Jbbf80d5+clAUbcUjHRijLvUJZxfL6DCxdN6yhO3c31j5nxPsOrvkkK+a6WGyjz6/BnbGDUfkG
 hkqhaMAruy6w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:06 -0700
IronPort-SDR: Lrw/yXUVkV0opXZZbKMGnJJUqQxqRVA2wxywWgsSzGGTF5Jyk8/QbQXn+N66JnxhxhnB3NMyTU
 vRXqXspgag9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720845"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:26 -0700
Message-Id: <20200521003803.18936-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/37] Introduce DG1
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
Cc: fernando.pacheco@intel.com, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

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

Anusha Srivatsa (1):
  drm/i915/dg1: Remove SHPD_FILTER_CNT register programming

Clinton A Taylor (1):
  drm/i915/dg1: invert HPD pins

Fernando Pacheco (2):
  drm/i915/dg1: Handle GRF/IC ECC error irq
  drm/i915/dg1: Log counter on SLM ECC error

Lucas De Marchi (9):
  drm/i915/rkl: provide port/phy mapping for vbt
  drm/i915: make intel_{uncore,de}_rmw() more useful
  drm/i915/dg1: Add fake PCH
  drm/i915/dg1: Define MOCS table for DG1
  drm/i915/dg1: add support for the master unit interrupt
  drm/i915/dg1: add hpd interrupt handling
  drm/i915/dg1: gmbus pin mapping
  drm/i915/dg1: map/unmap pll clocks
  drm/i915/dg1: enable PORT C/D aka D/E

Matt Atwood (1):
  drm/i915/dg1: Load DMC

Matt Roper (12):
  drm/i915/rkl: Add DPLL4 support
  drm/i915/rkl: Add DDC pin mapping
  drm/i915/rkl: Setup ports/phys
  drm/i915/rkl: Handle HTI
  drm/i915/rkl: Handle comp master/slave relationships for PHYs
  drm/i915/rkl: Add initial workarounds
  drm/i915/dg1: Initialize RAWCLK properly
  drm/i915/dg1: Wait for pcode/uncore handshake at startup
  drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
  drm/i915/dg1: Update comp master/slave relationships for PHYs
  drm/i915/dg1: Update voltage swing tables for DP
  drm/i915/dg1: provide port/phy mapping for vbt

Matthew Auld (1):
  drm/i915: add pcie snoop flag

Stuart Summers (2):
  drm/i915: Add has_master_unit_irq flag
  drm/i915/dg1: Add initial DG1 workarounds

Uma Shankar (1):
  drm/i915/dg1: Add DG1 power wells

Venkata Sandeep Dhanalakota (1):
  drm/i915/dg1: Increase mmio size to 4MB

 drivers/gpu/drm/i915/display/intel_bios.c     |  78 ++++--
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  15 ++
 .../gpu/drm/i915/display/intel_combo_phy.c    |  28 +-
 drivers/gpu/drm/i915/display/intel_csr.c      |  19 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 126 ++++++++-
 drivers/gpu/drm/i915/display/intel_de.h       |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  94 ++++++-
 .../drm/i915/display/intel_display_power.c    | 206 ++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 117 ++++++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  18 ++
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  15 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  29 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |   5 +-
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |   3 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  39 ++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 159 ++++++++---
 drivers/gpu/drm/i915/i915_debugfs.c           |   4 +
 drivers/gpu/drm/i915/i915_drv.c               |   3 +
 drivers/gpu/drm/i915/i915_drv.h               |  13 +
 drivers/gpu/drm/i915/i915_irq.c               | 249 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_pci.c               |  16 +-
 drivers/gpu/drm/i915/i915_reg.h               | 110 +++++++-
 drivers/gpu/drm/i915/intel_device_info.c      |   1 +
 drivers/gpu/drm/i915/intel_device_info.h      |   3 +
 drivers/gpu/drm/i915/intel_pch.c              |   6 +
 drivers/gpu/drm/i915/intel_pch.h              |   4 +
 drivers/gpu/drm/i915/intel_pm.c               |  17 +-
 drivers/gpu/drm/i915/intel_sideband.c         |  15 ++
 drivers/gpu/drm/i915/intel_sideband.h         |   2 +
 drivers/gpu/drm/i915/intel_uncore.c           |   4 +
 drivers/gpu/drm/i915/intel_uncore.h           |  10 +-
 include/drm/i915_pciids.h                     |   4 +
 32 files changed, 1285 insertions(+), 131 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
