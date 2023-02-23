Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 121D66A0AF8
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 14:45:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99CA210E4ED;
	Thu, 23 Feb 2023 13:45:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B71D10E4ED
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 13:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677159930; x=1708695930;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+sumAKXgxk620CeI2B6KEE2pkT977p9OfI6HNH3E/Z8=;
 b=Kd9dyKYKBcHfliI9wDl3OfNyo7ctUqhRPaZW3rW6O5gQ8HiO8a8M8BEe
 Oz+9Kfn3vzgdiSaYsSD7FLyvvwxAqCmAdlh59mPzNgcIqrcprVK3H10ft
 LFc3EVw5/6owg4JaHCPy0TNyoWv/TML4n4AKZMsVYljZuZwUBeNyd9Orq
 I456XJ0xVBLj9XjgEREzCQ7Q/ds5sHsN2np8qb1R8J/e3XXiQhSNyYHb3
 iV2HI6iDuOrCNAK8SO3lpaGac8vaKPM6j4HCI2tj2deORa6YpvtABSm2c
 rIFAWE6/neaa/7L1SpTDSjfPUn8Cv/QdryWC/0ZAUB71woe8ktKbmNfU/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334581596"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="334581596"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 05:45:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="846562290"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="846562290"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 23 Feb 2023 05:45:28 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 15:39:59 +0200
Message-Id: <20230223134021.2236889-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 00/22] drm/i915/mtl: Add C10 and C20 phy
 support
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

PHY programming support for PICA C10 and C20 Type-C chips.

v2: Move intel_cx0_reg_defs.h to intel_cx0_phy_regs.h (Jani)
    Move pmdemand as part of intel_display structure
    PLL table updates
v3: Renaming C20 read/write functions (Gustavo)
    Code readibility fixes (Gustavo)
    HDMI PLL table updates
    PICA hotplug handling updates

Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Anusha Srivatsa (1):
  drm/i915/mtl: Pin assignment for TypeC

Clint Taylor (1):
  drm/i915/mtl: Initial DDI port setup

Gustavo Sousa (1):
  drm/i915/mtl: Define mask for DDI AUX interrupts

Imre Deak (1):
  drm/i915/mtl: TypeC HPD live status query

Mika Kahola (15):
  drm/i915/mtl: Add DP rates
  drm/i915/mtl: Create separate reg file for PICA registers
  drm/i915/mtl: Add support for PM DEMAND
  drm/i915/mtl: C20 PLL programming
  drm/i915/mtl: C20 HW readout
  drm/i915/mtl: Dump C20 pll hw state
  drm/i915/mtl: C20 port clock calculation
  drm/i915/mtl: C20 HDMI state calculations
  drm/i915/mtl: Add voltage swing sequence for C20
  drm/i915/mtl: For DP2.0 10G and 20G rates use MPLLA
  drm/i915/mtl: Enabling/disabling sequence Thunderbolt pll
  drm/i915/mtl: Readout Thunderbolt HW state
  drm/i915/mtl: Enable TC ports
  drm/i915/mtl: MTL PICA hotplug detection
  drm/i915/mtl: Power up TCSS

Radhakrishna Sripada (3):
  drm/i915/mtl: Add Support for C10 PHY message bus and pll programming
  drm/i915/mtl: Add C10 phy programming for HDMI
  drm/i915/mtl: Add vswing programming for C10 phys

 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/intel_bw.c       |    4 +-
 drivers/gpu/drm/i915/display/intel_bw.h       |    2 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 2796 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   57 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  220 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |   38 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |   85 +-
 .../drm/i915/display/intel_ddi_buf_trans.h    |    6 +
 drivers/gpu/drm/i915/display/intel_display.c  |   25 +-
 .../gpu/drm/i915/display/intel_display_core.h |    6 +
 .../drm/i915/display/intel_display_power.c    |   11 +-
 .../i915/display/intel_display_power_map.c    |    1 +
 .../i915/display/intel_display_power_well.c   |    2 +-
 .../drm/i915/display/intel_display_types.h    |   23 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   23 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   22 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |    7 +-
 drivers/gpu/drm/i915/display/intel_hdmi.h     |    1 +
 .../drm/i915/display/intel_modeset_verify.c   |    2 +
 drivers/gpu/drm/i915/display/intel_tc.c       |  177 +-
 drivers/gpu/drm/i915/i915_irq.c               |  276 +-
 drivers/gpu/drm/i915/i915_reg.h               |   69 +-
 drivers/gpu/drm/i915/i915_reg_defs.h          |   57 +
 drivers/gpu/drm/i915/intel_pm.c               |  286 ++
 drivers/gpu/drm/i915/intel_pm.h               |   34 +
 27 files changed, 4204 insertions(+), 29 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h

-- 
2.34.1

