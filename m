Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7759B27E170
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 08:42:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9A3C6E4FF;
	Wed, 30 Sep 2020 06:42:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E03D26E4F8
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 06:42:43 +0000 (UTC)
IronPort-SDR: VJywPiasRxTgxDbB5I9vwzydR8uufIIEgMK0DiDT4I7QaSpMUG+LUc2PWliZ/KF7B+3xfkTPql
 S6YGXWlWjdTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="142387745"
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="142387745"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:42 -0700
IronPort-SDR: IiL921Y6Fp2DniXnY1aOrvYXeA5jGfP7qJx9oq50ZuL2SNTYkmqz444omnSVy3o3HGiDnF1Ftz
 PlRtXkPru3PA==
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="312487672"
Received: from cdgarci1-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.213.164.152])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:42 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 23:42:10 -0700
Message-Id: <20200930064234.85769-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 00/24] Introduce DG1
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

v6:
- Remove already applied patches and rebase the rest, particularly on
  top of DPLL and hotplug changes
- Add new workarounds
- Reword commit messages regarding DDIA, DDIB, TC1 and TC2 ports
- Colletc R-b

The DPLL and hotplug changes are not tested as testing depends on
the lmem patches. They are still wip and do not apply cleanly in
drm-tip.

Aditya Swarup (3):
  drm/i915/dg1: Add DPLL macros for DG1
  drm/i915/dg1: Add and setup DPLLs for DG1
  drm/i915/dg1: Enable first 2 ports for DG1

Anshuman Gupta (2):
  drm/i915/dg1: DG1 does not support DC6
  drm/i915/dg1: Change DMC_DEBUG{1, 2} registers

Clinton A Taylor (1):
  drm/i915/dg1: invert HPD pins

Lucas De Marchi (7):
  drm/i915/dg1: add more PCI ids
  drm/i915/dg1: Define MOCS table for DG1
  drm/i915/dg1: Enable DPLL for DG1
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

Michel Thierry (1):
  drm/i915/dgfx: define llc and snooping behaviour

Stuart Summers (1):
  drm/i915/dg1: Add initial DG1 workarounds

Uma Shankar (1):
  drm/i915/dg1: Add DG1 power wells

Venkata Sandeep Dhanalakota (1):
  drm/i915/dg1: Increase mmio size to 4MB

 drivers/gpu/drm/i915/display/intel_bios.c     |  12 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  16 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    |   7 +-
 drivers/gpu/drm/i915/display/intel_csr.c      |  12 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 126 ++++++++++-
 drivers/gpu/drm/i915/display/intel_display.c  |  46 +++-
 .../drm/i915/display/intel_display_debugfs.c  |   9 +-
 .../drm/i915/display/intel_display_power.c    | 211 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  54 ++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  17 ++
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  15 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   9 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |   4 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  41 +++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 111 +++++++--
 drivers/gpu/drm/i915/i915_drv.c               |   3 +
 drivers/gpu/drm/i915/i915_irq.c               |  67 +++++-
 drivers/gpu/drm/i915/i915_pci.c               |   4 +
 drivers/gpu/drm/i915/i915_reg.h               |  62 ++++-
 drivers/gpu/drm/i915/intel_pm.c               |  39 ++--
 drivers/gpu/drm/i915/intel_sideband.c         |  15 ++
 drivers/gpu/drm/i915/intel_sideband.h         |   2 +
 drivers/gpu/drm/i915/intel_uncore.c           |   4 +
 include/drm/i915_pciids.h                     |   5 +-
 24 files changed, 802 insertions(+), 89 deletions(-)

-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
