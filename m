Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A6FCADFB5
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:26:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77EA110E191;
	Mon,  8 Dec 2025 18:26:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DamI7vfH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 992C110E08D;
 Mon,  8 Dec 2025 18:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218403; x=1796754403;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eDLCMnvouJ6OQ/d4vO9Nwlk8+F9MXrwvkTsdstJk+es=;
 b=DamI7vfHSoQARWh8okmt4MWVe6uWz6sCJLeYaatzamU1e5bVwTiuXlyu
 z09b59c7qNDCgHxJi0zRWR5eKFENhfkKermMOBk5gTtcXTTiPB80F+ooD
 bOmmdleKvDKofZGCz5BSM+oeIf8BiTsVZY3E4rddBL9AUdmb4R7OqCZJB
 tMlGgsEmJ5JIJN9sJ+MtQ//t3mz7dcVaku/B2AaeXxryFi7aSlV6yZr1K
 C/rXqXBESuQLZEKK9qqsNOXnt5yf5cBN+iRbmETVG8kzY2YuawwczIup4
 pjAAZ9WdfUvGwCzlpJ9DbO2oHKTXzo8NU/rsl1TLeh8qpTugnxtIrI7mU A==;
X-CSE-ConnectionGUID: Aroxxm64QaC9MuHL0cFa5w==
X-CSE-MsgGUID: 1QQVn7nBSzqur8h/tTPKYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="66348074"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="66348074"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:26:42 -0800
X-CSE-ConnectionGUID: zsH/1nHXRcyU8blnRMYkwA==
X-CSE-MsgGUID: xZjyp6myQA6HqdLknkroGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="200169466"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:26:40 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/19] drm/i915/vga: Try to sort out the VGA decode mess
Date: Mon,  8 Dec 2025 20:26:18 +0200
Message-ID: <20251208182637.334-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Another attempt at fixing the mess around VGA deocode. The
current GMCH_CTRL based stuff is a complete lie as the register
is locked on ILK+.

My original plan was to simply disable all legacy decoding in
intel_vga_disable() but that turned out not to work thanks to
one laptop that hangs when trying to reboot/shutdown. So I had
to come up with something a bit more clever (or possibly insane).

This has more or less been smoke tested on most of my laptops
in the gen2 to SNB range (all just have the iGPU), and various
desktop boards (i845,g4x,HSW,CFL) with some random Matrox
cards (PCI and PCIe) or DG2.

For the destop boards I tried to test all the possibilities:
- iGPU only
- dGPU only
- iGPU as primary + dGPU as secondary
- dGPU as primary + iGPU as secondary

Some boards disable VGA decoding on the secondary iGPU via
GMCH_CTRL, others leave both GPUs with VGA decoding enabled.
I don't think I was any case where VGA decoding was disabled
for a secondary dGPU, possibly because the bridge controls
achieve the same result effectively anyway.

I think I managed to cover most of the combinations, with
enoguh board swapping.

I also smoke tested UEFI boot on the HSW and CFL boards. And in
fact the CFL board wouldn't even POST with CSM enabled so that's
the only thing I tested there.

Ville Syrjälä (19):
  drm/i915/vga: Register vgaarb client later
  drm/i915/vga: Get rid of intel_vga_reset_io_mem()
  drm/i915/power: Remove i915_power_well_desc::has_vga
  drm/i915/vga: Extract intel_gmch_ctrl_reg()
  drm/i915/vga: Don't touch VGA registers if VGA decode is fully
    disabled
  drm/i915/vga: Clean up VGA registers even if VGA plane is disabled
  drm/i915/vga: Avoid VGA arbiter during intel_vga_disable() for iGPUs
  drm/i915/vga: Stop trying to use GMCH_CTRL for VGA decode control
  drm/i915/vga: Assert that VGA register accesses are going to the
    right GPU
  drm/i915/de: Simplify intel_de_read8()
  drm/i915/de: Add intel_de_write8()
  drm/i915/vga: Introduce intel_vga_{read,write}()
  drm/i915/vga: Use MMIO for VGA registers on pre-g4x
  video/vga: Add VGA_IS0_R
  drm/i915/crt: Use IS0_R instead of VGA_MIS_W
  drm/i915/crt: Extract intel_crt_sense_above_threshold()
  drm/i915: Get rid of the INTEL_GMCH_CTRL alias
  drm/i915: Clean up PCI config space reg defines
  drm/i915: Document the GMCH_CTRL register a bit

 drivers/gpu/drm/i915/display/intel_crt.c      |  18 +-
 drivers/gpu/drm/i915/display/intel_crt_regs.h |   2 -
 drivers/gpu/drm/i915/display/intel_de.h       |  17 +-
 .../drm/i915/display/intel_display_driver.c   |  18 +-
 .../i915/display/intel_display_power_map.c    |  13 -
 .../i915/display/intel_display_power_well.c   |   8 +-
 .../i915/display/intel_display_power_well.h   |   2 -
 drivers/gpu/drm/i915/display/intel_vga.c      | 320 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vga.h      |   5 +-
 .../drm/xe/compat-i915-headers/intel_uncore.h |   8 +
 drivers/gpu/drm/xe/xe_mmio.c                  |   9 +
 drivers/gpu/drm/xe/xe_mmio.h                  |   1 +
 include/drm/intel/i915_drm.h                  |  82 ++---
 include/video/vga.h                           |   2 +
 14 files changed, 336 insertions(+), 169 deletions(-)

-- 
2.51.2

