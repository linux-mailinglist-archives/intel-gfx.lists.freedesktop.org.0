Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5E1896E08
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:22:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BF9B11265D;
	Wed,  3 Apr 2024 11:22:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XbW+e8BN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C43610EF3B;
 Wed,  3 Apr 2024 11:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143368; x=1743679368;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+slylTHDJXX01Qg+DwDmynh35MlgFUMp6O3VCS7VzC8=;
 b=XbW+e8BNQcn36jvapYiintOfVJGLfgqamlCEN60KS1+x8gtgL54Zr2vk
 pHBZXlID3u5U4aqUtvQqu0zoPxifbKk0z16VghDaW2o3gcR9viWJDQDod
 K/rR7hURhKyhniBHX+ODFCsWvMWinWPW65L+PanwUaBgzFcVYpQn4ClVW
 Y798lz9YN5vPgouWvb21xJcHYjcfIvB+/An/pzh/d9qrlly1yp4rtT/dK
 2HYARWFMuKQn6R1AMhoDXC3KQLQKXHA8acCCkRKUCzFhBDQCh8/NT1ENq
 bixUB1jMEEw1WrgNXnLCVecXctuNILU0dno7za06KpgSulXJrlWYikTOU w==;
X-CSE-ConnectionGUID: N1yxjGNdR7iX0DZmsMdsmQ==
X-CSE-MsgGUID: pjXAWEeZTEyhosuLoOwR4g==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24823976"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24823976"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:22:47 -0700
X-CSE-ConnectionGUID: JTlzke1aSZCqgMrY0ibszw==
X-CSE-MsgGUID: Ytt8zP+gRp+N6aeXPTc79g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358482"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:22:45 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 00/25] Enable dislay support for Battlemage
Date: Wed,  3 Apr 2024 16:52:28 +0530
Message-Id: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Adds display support for Battlemage.
Reuses the patch "drm/xe/bmg: Add BMG platform definition" from the
patch series <link> to help build this series. So that review on this
series can continue without blocking on <link>.

v2: Rebased on latest drm-tip

Ankit Nautiyal (1):
  Revert "drm/i915/dgfx: DGFX uses direct VBT pin mapping"

Anusha Srivatsa (1):
  drm/i915/xe2hpd: Add missing chicken bit register programming

Balasubramani Vivekanandan (9):
  drm/i915/display: Prepare to handle new C20 PLL register address
  drm/xe/bmg: Define IS_BATTLEMAGE macro
  drm/i915/bmg: Define IS_BATTLEMAGE macro
  drm/i915/xe2: Skip CCS modifiers for Xe2 platforms
  drm/i915/xe2hpd: Add new C20 PLL register address
  drm/i915/xe2hpd: Add support for eDP PLL configuration
  drm/xe/xe2hpd: Define a new DRAM type INTEL_DRAM_GDDR
  drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5
  drm/xe/bmg: Enable the display support

Clint Taylor (2):
  drm/i915/xe2hpd: Initial cdclk table
  drm/xe/display: Lane reversal requires writes to both context lanes

José Roberto de Souza (2):
  drm/i915/xe2hpd: Properly disable power in port A
  drm/i915/xe2hpd: Do not program MBUS_DBOX BW credits

Lucas De Marchi (1):
  drm/i915/xe2hpd: Add display info

Matt Roper (3):
  drm/xe/bmg: Add BMG platform definition
  drm/i915/xe2hpd: Add max memory bandwidth algorithm
  drm/i915/bmg: BMG should re-use MTL's south display logic

Matthew Auld (2):
  drm/xe/gt_print: add xe_gt_err_once()
  drm/i915/display: perform transient flush

Mitul Golani (1):
  drm/i915/display: Enable RM timeout detection

Nirmoy Das (1):
  drm/xe/device: implement transient flush

Radhakrishna Sripada (1):
  drm/i915/bmg: Extend DG2 tc check to future

Ravi Kumar Vodapalli (1):
  drm/i915/xe2hpd: update pll values in sync with Bspec

 drivers/gpu/drm/i915/display/intel_bios.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |  65 +++-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  11 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 297 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  45 ++-
 drivers/gpu/drm/i915/display/intel_display.c  |  10 +-
 .../drm/i915/display/intel_display_device.c   |  16 +
 .../gpu/drm/i915/display/intel_display_irq.c  |  10 +
 .../drm/i915/display/intel_display_power.c    |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   3 +
 drivers/gpu/drm/i915/display/intel_fb.c       |  14 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  |   2 +
 drivers/gpu/drm/i915/display/intel_tdf.h      |  25 ++
 drivers/gpu/drm/i915/display/skl_watermark.c  |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  11 +-
 drivers/gpu/drm/i915/i915_reg.h               |   4 +
 drivers/gpu/drm/i915/soc/intel_dram.c         |   4 +
 drivers/gpu/drm/i915/soc/intel_pch.c          |   4 +-
 drivers/gpu/drm/xe/Makefile                   |   3 +-
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |   1 +
 drivers/gpu/drm/xe/display/xe_tdf.c           |  13 +
 drivers/gpu/drm/xe/regs/xe_gt_regs.h          |   3 +
 drivers/gpu/drm/xe/xe_device.c                |  52 +++
 drivers/gpu/drm/xe/xe_device.h                |   2 +
 drivers/gpu/drm/xe/xe_device_types.h          |   1 +
 drivers/gpu/drm/xe/xe_gt_printk.h             |   3 +
 drivers/gpu/drm/xe/xe_pci.c                   |   8 +
 drivers/gpu/drm/xe/xe_platform_types.h        |   1 +
 include/drm/xe_pciids.h                       |   7 +
 29 files changed, 574 insertions(+), 52 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_tdf.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_tdf.c

-- 
2.25.1

