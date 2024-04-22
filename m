Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 502A08AC44F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 08:40:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45ECA1127E7;
	Mon, 22 Apr 2024 06:40:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g5VQKKIK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ECF41127E7;
 Mon, 22 Apr 2024 06:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713768002; x=1745304002;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=41clEgc6M52Bm9dpk90gN+62WO9y7ySjkfYd1RmE7B4=;
 b=g5VQKKIKwPuaHd60RGONrImWqL4W3wfmSmaw0z7R4DH2hW0R3yEdVyYd
 EyJlHWYGhKwSMPPp9byx6AKXE/sG5eekqEq5cCcj3KXVOUD7cVWN/Yv2k
 gzm/ZsjqSBys2oF6kjTdycX7dDd6FcgSmGlHjVCt9dd3jqTUR5S8vedrj
 kAIrnoso5hYC/VwS0+EV4Q+Tz1cdMK71MDRS6W1lkC/RLS38zeZba0kH2
 /EAbwtEDn2JdyQpEVEtLU/KBo9ZS10fSluRWeA6V7R5/aKCjRIshcWj6j
 47Vb1AMP6zt0WnAEXnhs4uFYRJrnjJRH5mNxuA61lxuE5O/c2wzoUpUuM A==;
X-CSE-ConnectionGUID: esBxSW8URQeNJpS1967d0g==
X-CSE-MsgGUID: nXbWQf2mQ4yErqGxcELjbg==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9208484"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9208484"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:02 -0700
X-CSE-ConnectionGUID: PceHdn9WTHe6ANaNFmX+KQ==
X-CSE-MsgGUID: 2QKL+EmATqKN78KzT8UVew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23896267"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:00 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v4 00/19] Enable display support for Battlemage
Date: Mon, 22 Apr 2024 12:10:19 +0530
Message-Id: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
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

v4:
* Dropped patch "drm/i915/xe2hpd: Skip CCS modifiers" as there is 
  already a patch merged taking care of this fix.
* Dropped patch "drm/i915/display: Enable RM timeout detection" as it 
  is not really a BMG enablement patch. Will be posted as a separate 
  series.
* Macros renamed and rearranged to match the existing style in the
  file for patch "Add new C20 PHY SRAM address"

v3:
* use s/XE_LPDP_FEATURES/XE_LPD_FEATURE as base for BMG display info
  structure
* Limit "BW Credits" programming only to xelpdp
* Removed UHBR20 support
* Commit description improved for patch - "Skip CCS modifiers for Xe2 platforms"
* Still retained the patch "Enable RM timeout detection" in this series
  hoping there are no further comments and could be merged with this
  series.
* Removed the check where RM timeout interrupt was enabled only for
  xe2hpd
* Redesigned how the right C20 PHY offsets are selected for different
  display IP versions

v2: Rebased on latest drm-tip

Ankit Nautiyal (1):
  Revert "drm/i915/dgfx: DGFX uses direct VBT pin mapping"

Anusha Srivatsa (1):
  drm/i915/xe2hpd: Configure CHICKEN_MISC_2 before enabling planes

Balasubramani Vivekanandan (5):
  drm/i915/bmg: Define IS_BATTLEMAGE macro
  drm/i915/xe2hpd: Add new C20 PHY SRAM address
  drm/i915/xe2hpd: Add support for eDP PLL configuration
  drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5
  drm/xe/bmg: Enable the display support

Clint Taylor (2):
  drm/xe/display: Lane reversal requires writes to both context lanes
  drm/i915/xe2hpd: Initial cdclk table

José Roberto de Souza (2):
  drm/i915/xe2hpd: Properly disable power in port A
  drm/i915/xe2hpd: Do not program MBUS_DBOX BW credits

Lucas De Marchi (1):
  drm/i915/xe2hpd: Add display info

Matt Roper (2):
  drm/i915/xe2hpd: Add max memory bandwidth algorithm
  drm/i915/bmg: BMG should re-use MTL's south display logic

Matthew Auld (2):
  drm/xe/gt_print: add xe_gt_err_once()
  drm/i915/display: perform transient flush

Nirmoy Das (1):
  drm/xe/device: implement transient flush

Radhakrishna Sripada (1):
  drm/i915/bmg: Extend DG2 tc check to future

Ravi Kumar Vodapalli (1):
  drm/i915/xe2hpd: update pll values in sync with Bspec

 drivers/gpu/drm/i915/display/intel_bios.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |  65 +++-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  11 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 285 +++++++++++++++---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  48 ++-
 drivers/gpu/drm/i915/display/intel_display.c  |  10 +-
 .../drm/i915/display/intel_display_device.c   |   7 +
 .../drm/i915/display/intel_display_power.c    |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   3 +
 .../gpu/drm/i915/display/intel_frontbuffer.c  |   2 +
 drivers/gpu/drm/i915/display/intel_tdf.h      |  25 ++
 drivers/gpu/drm/i915/display/skl_watermark.c  |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  11 +-
 drivers/gpu/drm/i915/i915_reg.h               |   1 +
 drivers/gpu/drm/i915/soc/intel_dram.c         |   4 +
 drivers/gpu/drm/i915/soc/intel_pch.c          |   4 +-
 drivers/gpu/drm/xe/Makefile                   |   3 +-
 drivers/gpu/drm/xe/display/xe_tdf.c           |  13 +
 drivers/gpu/drm/xe/regs/xe_gt_regs.h          |   3 +
 drivers/gpu/drm/xe/xe_device.c                |  49 +++
 drivers/gpu/drm/xe/xe_device.h                |   2 +
 drivers/gpu/drm/xe/xe_device_types.h          |   1 +
 drivers/gpu/drm/xe/xe_gt_printk.h             |   3 +
 drivers/gpu/drm/xe/xe_pci.c                   |   1 +
 24 files changed, 505 insertions(+), 57 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_tdf.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_tdf.c

-- 
2.25.1

