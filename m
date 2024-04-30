Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D0F8B7E83
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:30:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A30D1112D7D;
	Tue, 30 Apr 2024 17:30:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fTHC59pa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72336112D73;
 Tue, 30 Apr 2024 17:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498219; x=1746034219;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y/ox8ad/06uMbDbOBI1rW6Az5G+uY01JbomfaLffmJE=;
 b=fTHC59paNBXUgHBlI0U7DZ9H3Z2lm7kUJ2/tF2RE9wh4p/Tw3F+9kmHO
 et1ZPqJYLXs/lu/y1rAljOfmS5PStrqY+1U+ngj+E8+n8HkInQ68FPne9
 tVN1Ro0A9pEltjPlxUnLVetAg89aU8luhoxMV2ilnCCa9+L9SY2Nktl6N
 mrA1zHCNhCgFRU8Pm2k+o18u2YsLcpOY3GtWhZvjCRY94yaOjCdTeeqyp
 76jxBRSS8oUT1mJ0aFn5s0nV4XBKyk57bgVDXhbvu1U1bJyKnaKQ0hKv3
 8/5nNOfoxA9EnngbliyK4umakM2vAL3ltjnIx36XHTWEWN1BnChy1CpGL Q==;
X-CSE-ConnectionGUID: QWJKqd3CQTy4ToHoDWrEqw==
X-CSE-MsgGUID: /67q9M19QTu1OhHTBioGlg==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27741982"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27741982"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:18 -0700
X-CSE-ConnectionGUID: VjS/3qRsTj+zQyWgOAx5Tg==
X-CSE-MsgGUID: kvIDt7FVQN+zBaK283VBjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617809"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:18 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 00/19] Enable display support for Battlemage
Date: Tue, 30 Apr 2024 10:28:31 -0700
Message-Id: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
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
v3: Rebase and fix a white space error(RK)

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
  drm/i915/bmg: Lane reversal requires writes to both context lanes
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
 drivers/gpu/drm/xe/xe_device.h                |   1 +
 drivers/gpu/drm/xe/xe_device_types.h          |   1 +
 drivers/gpu/drm/xe/xe_gt_printk.h             |   3 +
 drivers/gpu/drm/xe/xe_pci.c                   |   1 +
 24 files changed, 504 insertions(+), 57 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_tdf.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_tdf.c

-- 
2.34.1

