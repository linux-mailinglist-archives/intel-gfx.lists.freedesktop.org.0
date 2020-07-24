Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E1F22D139
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 23:40:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86BF86EA1A;
	Fri, 24 Jul 2020 21:40:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A16A16E171
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 21:39:23 +0000 (UTC)
IronPort-SDR: popwLlKJqwVRdQfMmGwKbnt9+yptvBTOKfAJIwBXVJ+B/AWFfuymcQT9ira3Sa83Q/J+PFtQRh
 2nW6yADjge3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="149970002"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="149970002"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 14:39:22 -0700
IronPort-SDR: yYxis4t4almOpTB+we85Ew/b2ghwEkzMXAXn2TsXi25xh55plpQft2Ky3bKp+3fQK/VuI1GpdZ
 OzyLLCDxEp4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="329041928"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga007.jf.intel.com with ESMTP; 24 Jul 2020 14:39:22 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 14:38:56 -0700
Message-Id: <20200724213918.27424-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 00/22] Introduce DG1
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v4:
- Remove already applied patches and rebase the rest
- Add new workarounds
- Add change to DMC_DEBUG register

v3:
- Make sure we don't bind the driver to the device while the driver is
  not complete. This should unblock us to have these basic patches
  merged so the next parts can be developed/refactored/implemented,
  particularly related to lmem.

  When we have these patches applied and lmem part working for at least
  a display-only driver we can make it bind again. This guarantees we
  don't regress.

- Remove most of the RKL patches. The only one I'm still carrying is the
  one for WAs as they are very similar to the ones for DG1.
  Particularly the patch for PLL on RKL was making CI for this series to
  fail, so untangle both and let them both continue the review process
  in parallel.

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

Aditya Swarup (4):
  drm/i915/dg1: Add DPLL macros for DG1
  drm/i915/dg1: Add and setup DPLLs for DG1
  drm/i915/dg1: Enable DPLL for DG1
  drm/i915/dg1: Enable first 2 ports for DG1

Anshuman Gupta (2):
  drm/i915/dg1: DG1 does not support DC6
  drm/i915/dg1: Change DMC_DEBUG{1,2} registers

Clinton A Taylor (1):
  drm/i915/dg1: invert HPD pins

Lucas De Marchi (5):
  drm/i915/dg1: Define MOCS table for DG1
  drm/i915/dg1: add hpd interrupt handling
  drm/i915/dg1: gmbus pin mapping
  drm/i915/dg1: map/unmap pll clocks
  drm/i915/dg1: enable PORT C/D aka D/E

Matt Atwood (1):
  drm/i915/dg1: Load DMC

Matt Roper (6):
  drm/i915/dg1: Initialize RAWCLK properly
  drm/i915/dg1: Wait for pcode/uncore handshake at startup
  drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
  drm/i915/dg1: Update comp master/slave relationships for PHYs
  drm/i915/dg1: Update voltage swing tables for DP
  drm/i915/dg1: provide port/phy mapping for vbt

Stuart Summers (1):
  drm/i915/dg1: Add initial DG1 workarounds

Uma Shankar (1):
  drm/i915/dg1: Add DG1 power wells

Venkata Sandeep Dhanalakota (1):
  drm/i915/dg1: Increase mmio size to 4MB

 drivers/gpu/drm/i915/display/intel_bios.c     |  12 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  16 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    |   7 +-
 drivers/gpu/drm/i915/display/intel_csr.c      |  19 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 126 ++++++++++-
 drivers/gpu/drm/i915/display/intel_display.c  |  46 +++-
 .../drm/i915/display/intel_display_debugfs.c  |   9 +-
 .../drm/i915/display/intel_display_power.c    | 211 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  71 ++++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  17 ++
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  15 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   9 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |   3 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |   4 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  39 +++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 101 +++++++--
 drivers/gpu/drm/i915/i915_drv.c               |   3 +
 drivers/gpu/drm/i915/i915_irq.c               |  66 +++++-
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |  63 +++++-
 drivers/gpu/drm/i915/intel_pm.c               |  17 +-
 drivers/gpu/drm/i915/intel_sideband.c         |  15 ++
 drivers/gpu/drm/i915/intel_sideband.h         |   2 +
 drivers/gpu/drm/i915/intel_uncore.c           |   4 +
 24 files changed, 800 insertions(+), 77 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
