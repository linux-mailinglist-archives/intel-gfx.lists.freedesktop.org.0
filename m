Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C259FC2767B
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:25:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB16F10EC28;
	Sat,  1 Nov 2025 03:25:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gtHS9Y4M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C804310EC23;
 Sat,  1 Nov 2025 03:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761967517; x=1793503517;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zEzztDSzRpXk4dFG4574LMeRFwVdMnXQNoucrzQvEwY=;
 b=gtHS9Y4MPdv3sc7DUK3iO+W5+P+dXxto1mP1HNJp54YglELQTj+Wo0sH
 AXsXe6kdMILIst56LNRyIRCmISrcWJFBUMkMVk0vXbC8PyIYuJJ1I2lYY
 j64QtyivyoiW5HSl8z5rgIqqX7sf88BJ7VOLTVrtNF/knCYXobLB+mD7V
 d78nb7nUShH76cvYqq+iFQs4dSAQXBq1QVEphSrQyIbGtYP+RxDjFK0Tp
 EmyGZIkVJl7uZ6VpD/rXl0cmzurVZp0CFixXGXunZ3SEHSoc7gP9Cnlzz
 fF7PrzVI0ybJBgf+Mg5tXidIrIIAGNYlZYkqnA+U5VeEhjjqp3yKLWlEv w==;
X-CSE-ConnectionGUID: IS8t1IAnS62Tsz/3V0IbBA==
X-CSE-MsgGUID: WcpCsxiaRm2fjFPlEaRfNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="64019839"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208,223";a="64019839"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:25:17 -0700
X-CSE-ConnectionGUID: EWeKe88sQpi+jpwKZ1/nDw==
X-CSE-MsgGUID: NudJNVBQRnC/f2ZgbQucVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; 
 d="scan'208,223";a="217037930"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 31 Oct 2025 20:25:16 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v5 00/25] Enable LT PHY
Date: Sat,  1 Nov 2025 08:54:48 +0530
Message-Id: <20251101032513.4171255-1-suraj.kandpal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 2000 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |   44 +
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  |   75 +
 .../drm/i915/display/intel_modeset_verify.c   |    2 +
 drivers/gpu/drm/xe/Makefile                   |    1 +
 18 files changed, 2410 insertions(+), 61 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy_regs.h

-- 
2.34.1

