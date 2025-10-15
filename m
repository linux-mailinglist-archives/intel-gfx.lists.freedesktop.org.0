Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E598CBDC67A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:08:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6AC310E717;
	Wed, 15 Oct 2025 04:08:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IKLRu4UZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1E7010E6EE;
 Wed, 15 Oct 2025 04:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760501305; x=1792037305;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XoXCwpqGEdBjRY0fKitFF0L0zYvoR1eC19nV/vlzdAQ=;
 b=IKLRu4UZVxn5HdCCjckZCWVmFHUd3SCglBpZaKVrVQuKT12G1JkAsobn
 AGXCLXyEYt97bW6wacz2QYxvpSmHkgYd7mf82iboinHV69dqpzjAY/U8j
 qSDhhJEDYsdL5inmcwVj0qoSWnMl83Qx7fXoDDvPOJv5KvIESP/3GYfV0
 TFj7jhibNCQD4atkobvP/NnGYrzWYjPaIp3bbpZWY3aE30e6UJXlD65BY
 mOzAz2FZljw7UP9vfLv9rkxrYnscSkWPlb/0zFcpoAZToSW8MhKPHV9mG
 P8iYS7Js3XhSELMLjQ3WtbeUW4ebv4B4dx5CQ/fC/15mzdvSRZSpqlRdF w==;
X-CSE-ConnectionGUID: 88yeFgKrTyi6MCUq6or32A==
X-CSE-MsgGUID: H42pmuMQQG+lkcuPPgAIqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66318940"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208,223";a="66318940"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:08:25 -0700
X-CSE-ConnectionGUID: SdwPc4qISBSHElKSGqrUaQ==
X-CSE-MsgGUID: zWx4hFqKQaOWOZiZNhUcCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; 
 d="scan'208,223";a="219196069"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 14 Oct 2025 21:08:23 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 00/25] Enable LT PHY
Date: Wed, 15 Oct 2025 09:37:52 +0530
Message-Id: <20251015040817.3431297-1-suraj.kandpal@intel.com>
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
  drm/i915/ltphy: Modify the step that need to by skipped
  drm/i915/ltphy: Implement HDMI Algo for Pll state

 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   64 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   22 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   15 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   34 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |   81 +-
 .../drm/i915/display/intel_ddi_buf_trans.h    |    9 +
 drivers/gpu/drm/i915/display/intel_display.c  |   33 +-
 .../i915/display/intel_display_power_well.c   |   23 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   31 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   11 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 2303 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |   47 +
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  |   78 +
 .../drm/i915/display/intel_modeset_verify.c   |    2 +
 drivers/gpu/drm/xe/Makefile                   |    1 +
 16 files changed, 2708 insertions(+), 47 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy_regs.h

-- 
2.34.1

