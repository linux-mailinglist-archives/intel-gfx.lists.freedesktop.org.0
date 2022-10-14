Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D708B5FEE1E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 14:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66FB510EAD9;
	Fri, 14 Oct 2022 12:51:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F60E10E4C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 12:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665751912; x=1697287912;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pVP9znrSvxHSv+fXoYNeBlK3Qcw+X0vUryTTQ5LhDTg=;
 b=c4b4Chg1UCuUH1WMNM0hQWBL8SJ1ZNN/8Rp3E9WL1ZJRnb8DTMLDaMAN
 0/q5u43KCbbII7SraMCkhD3dKt2q82uD2TewHOThsLuaYQi8kmRJAEhLv
 Jo3Pj22rgz9XOenTMUUQzAadqgsSJWf/AAn8PosMzj0ih7dFpjvcEo2/R
 5mTEguuDvusz4k54mfMpelSPGYRMHKgzenp2n2sCQCJ+MwAdbldMinOAM
 PgFeIY5kWVVkmF9Kl2J8PqPNqhSG0R3f+gJI2nQoJYad1eWqS6pAeDmx6
 U8cwFuVmp/eQRPJCB+7r3gMEshqxMEBLK6aquiidToI8Q94vDYZBfPrgn g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="304104604"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="304104604"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 05:51:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="716739676"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="716739676"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2022 05:51:50 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 15:47:20 +0300
Message-Id: <20221014124740.774835-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/20] drm/i915/mtl: Add C10 and C20 phy support
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

PHY programming support for C10 and C20 Type-C chips. This series
includes fixes for previously sent C10 series.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Anusha Srivatsa (1):
  drm/i915/mtl: Pin assignment for TypeC

Clint Taylor (1):
  drm/i915/mtl: Initial DDI port setup

Gustavo Sousa (1):
  drm/i915/mtl: Define mask for DDI AUX interrupts

Mika Kahola (14):
  drm/i915/mtl: Add DP rates
  drm/i915/mtl: Create separate reg file for PICA registers
  drm/i915/mtl: Add support for PM DEMAND
  drm/i915/mtl: C20 PLL programming
  drm/i915/mtl: C20 HW readout
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
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 2286 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   57 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   26 +
 .../gpu/drm/i915/display/intel_cx0_reg_defs.h |  207 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |   37 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |   65 +-
 .../drm/i915/display/intel_ddi_buf_trans.h    |    6 +
 drivers/gpu/drm/i915/display/intel_display.c  |   26 +-
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
 drivers/gpu/drm/i915/display/intel_tc.c       |  145 +-
 drivers/gpu/drm/i915/i915_drv.h               |   12 +
 drivers/gpu/drm/i915/i915_irq.c               |  253 +-
 drivers/gpu/drm/i915/i915_reg.h               |   69 +-
 drivers/gpu/drm/i915/i915_reg_defs.h          |   57 +
 drivers/gpu/drm/i915/intel_pm.c               |  286 +++
 drivers/gpu/drm/i915/intel_pm.h               |   35 +
 28 files changed, 3641 insertions(+), 27 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h

-- 
2.34.1

