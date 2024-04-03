Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5727C896D2E
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E5D211263C;
	Wed,  3 Apr 2024 10:51:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IH4GqCQ0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1717511263C;
 Wed,  3 Apr 2024 10:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141505; x=1743677505;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KmaOrYy4ZksNXYyql+GFoVkLWugqPOVXu6qkwV7OLbI=;
 b=IH4GqCQ0ngAC7n/q+DxnOVcGjbeMS3IsynwsGfz5nBRp9uyON3nG9LFW
 I5V5OywWDGHdv/P7DiQaIAeVBZoz9vybDRfo+Qg5cixYY/lbntgjHOAkf
 PKFu0S7WAOiKP3Aca3kr9Qzlz+T5dGhmtGC/TYTvVeud9G/6XBB+0N5wV
 g5IfkTgvvFzTY3VacxoIXB7qD9t/pIEZUSFLV09X1wZj9TD8cuT7vJcoX
 JTOqqAN63YKdLqfxq7Qomxg4aNQF7pqNoae5r4FZdBA7QJ+S2E+f+SWvh
 rksIBGL44ITILk6f4Whz+HaitGNMCbSd3HFAF57jzCK6VLNbmzh6s+hWc g==;
X-CSE-ConnectionGUID: dbqn99r4RhWia3S8qVI+Uw==
X-CSE-MsgGUID: KcI2zKxKTpyihz7Kv3Aubg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212100"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212100"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:12 -0700
X-CSE-ConnectionGUID: p71Dm6Y1RO62lyLay2xGnw==
X-CSE-MsgGUID: qBnYk8bxRye6u3bb+0sj/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493320"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:10 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 00/25] Enable dislay support for Battlemage
Date: Wed,  3 Apr 2024 16:20:58 +0530
Message-Id: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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
 drivers/gpu/drm/xe/xe_device.c                |  49 +++
 drivers/gpu/drm/xe/xe_device.h                |   2 +
 drivers/gpu/drm/xe/xe_device_types.h          |   1 +
 drivers/gpu/drm/xe/xe_gt_printk.h             |   3 +
 drivers/gpu/drm/xe/xe_pci.c                   |   8 +
 drivers/gpu/drm/xe/xe_platform_types.h        |   1 +
 include/drm/xe_pciids.h                       |   7 +
 29 files changed, 571 insertions(+), 52 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_tdf.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_tdf.c

-- 
2.25.1

