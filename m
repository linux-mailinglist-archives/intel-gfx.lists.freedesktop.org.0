Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F370C247D5
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:36:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD30810EB0A;
	Fri, 31 Oct 2025 10:36:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KOApqaJR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D96DD10EB00;
 Fri, 31 Oct 2025 10:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907011; x=1793443011;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T7uET2jfaccmsuqSpy3PlWkfOtFPyTAqp/MxCT+obBc=;
 b=KOApqaJR3fnMUhoriScKVdAWgAl9oVqMgFs8ZwvZ5vrfM+Iy+2GU0kVQ
 rHr+RTwCPD3CEey5cnPkd4Srxep4O7yiFOiSkWRw97f2+IpRhISmzBlWx
 Fc4SSwOOQ+FslMeiiViDKiLvd9Dr71izz1DDTq9p5JzsKBpDP9yyytqTH
 juheqrG/NNeRr16vdGWLbUhx0TmBnRNMPmbNzfFm5rWMhZSJ39zPdS7b1
 kKTVMAo5U/BesQlhnCIciymFV82sjikNroENR+bn1baRTJ29B2IQuoFYe
 4tr8aD6mbGKWX9NEfL5iPI8i3ZGcsAoKc6NX4f9OFYn0TXp/9Cq8bbTKQ A==;
X-CSE-ConnectionGUID: ZTayXdutTlyy2abwiZlK8g==
X-CSE-MsgGUID: jFeBkSapTRKuzCPUnI1P0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="86690840"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208,223";a="86690840"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:36:50 -0700
X-CSE-ConnectionGUID: VcX45KQTT0C7nLYbz8uc3Q==
X-CSE-MsgGUID: x1VJVqEpR56JdCcoOfmGyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; 
 d="scan'208,223";a="190554531"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 31 Oct 2025 03:36:46 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 00/25] Enable LT PHY
Date: Fri, 31 Oct 2025 16:06:18 +0530
Message-Id: <20251031103643.4147868-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From Xe3p we move on to LT PHY from CX0 PHY. This series implements
all the required enable/disable sequences, DP/HDMI PLL state calculation
using tables, HDMI Algorithm to calculate PLL state and the reverse Algo
where we use the state to calculate the portclock, new Vswing tables and
programming required to get everything up and running.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (25):
  drm/i915/ltphy: Add LT Phy related VDR and Pipe Registers
  drm/i915/cx0: Change register bit naming for powerdown values
  drm/i915/ltphy: Phy lane reset for LT Phy
  drm/i915/cx0: Move the HDMI FRL function to intel_hdmi
  drm/i915/ltphy: Program sequence for PORT_CLOCK_CTL for LT Phy
  drm/i915/ltphy: Add a wrapper for LT Phy powerdown change sequence
  drm/i915/ltphy: Read PHY_VDR_0_CONFIG register
  drm/i915/ltphy: Add LT Phy Programming recipe tables
  drm/i915/ltphy: Program the VDR PLL registers for LT PHY
  drm/i915/ltphy: Update the ltpll config table value for eDP
  drm/i915/ltphy: Enable SSC during port clock programming
  drm/i915/ltphy: Add function to calculate LT PHY port clock
  drm/i915/ltphy: Program the P2P Transaction flow for LT Phy
  drm/i915/ltphy: Program the rest of the PORT_CLOCK_CTL steps
  drm/i915/ltphy: Program the rest of the LT Phy Enable sequence
  drm/i915/ltphy: Program LT Phy Non-TBT PLL disable sequence
  drm/i915/ltphy: Hook up LT Phy Enable & Disable sequences
  drm/i915/ddi: Define LT Phy Swing tables
  drm/i915/ltphy: Program LT Phy Voltage Swing
  drm/i915/ltphy: Enable/Disable Tx after Non TBT Enable sequence
  drm/i915/ltphy: Define the LT Phy state compare function
  drm/i915/ltphy: Define function to readout LT Phy PLL state
  drm/i915/ltphy: Define LT PHY PLL state verify function
  drm/i915/display: Aux Enable and Display powerwell timeouts
  drm/i915/ltphy: Modify the step that need to be skipped

 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   76 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   21 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   15 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   34 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |   81 +-
 .../drm/i915/display/intel_ddi_buf_trans.h    |    9 +
 drivers/gpu/drm/i915/display/intel_display.c  |   33 +-
 .../i915/display/intel_display_power_well.c   |   22 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   31 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   11 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   14 +
 drivers/gpu/drm/i915/display/intel_hdmi.h     |    1 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 1997 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |   44 +
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  |   75 +
 .../drm/i915/display/intel_modeset_verify.c   |    2 +
 drivers/gpu/drm/xe/Makefile                   |    1 +
 18 files changed, 2407 insertions(+), 61 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy_regs.h

-- 
2.34.1

