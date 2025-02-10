Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 753F9A2ECAF
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 13:40:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1377110E50B;
	Mon, 10 Feb 2025 12:40:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F5qE2EVw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D74F10E50A;
 Mon, 10 Feb 2025 12:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739191200; x=1770727200;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4pViEU12uOI0tY56bf1tzLgu7ukbNPvfD8mk+zsIsEI=;
 b=F5qE2EVwiQz0yA43RaoxISCeC6bNz86dl15gwseAt4ph6yjDPyQlfVYi
 zWfnoMJVPsK0GXE3/mPauCYO7FHBEyMviO6IvCER7jyW5tnoOF6krE3Q2
 zh9scfXGpEiuF1tsqoSq7MmFT2UagWyMXAaDAREtLSCPuThO/qfxuHSER
 5qwIC9mout3rN++FPYswR67nh7ymv+03IKX3J8liQPg+Wg/HkVzXEhl5H
 mds1kFK4yUJ+jFwAIRurtcTnPdKPlVKTpPMZSCnLksu1WY3N+rVhcLNxC
 Gs5TFZhmKzU3IlGV719ooDIzgdHUAA9p9OBRhWVB5RA65gI6zrtrLNC+K Q==;
X-CSE-ConnectionGUID: cg5xs8AfRHilUq1k9JHwVg==
X-CSE-MsgGUID: muB3NpzDS1+0HP7eSVDUfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="40038303"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="40038303"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 04:39:59 -0800
X-CSE-ConnectionGUID: APgimmx8RxWrDZIUyCnx3g==
X-CSE-MsgGUID: AC55uJFtQAWbDspI2DPk3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113063584"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 10 Feb 2025 04:39:58 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/9] drm_i915_private to intel_display cleanup
Date: Mon, 10 Feb 2025 18:09:41 +0530
Message-Id: <20250210123950.3476620-1-suraj.kandpal@intel.com>
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

This series started as a cleanup to convert as many drm_i915_private
to intel_display in intel_display_debug_fs but overflowed and ended up
cleaning intel_dpll_mgr.c part of the code too and some other places
calling these functions. This series also replaces IS_PLATFORM()
with display->platform.xx to reduce drm_i915_private usage.
Some stuff that kept me from removing i915_private altogether were
PCH checks and intel_display_power_get and put which will be a part of
subsequent patch series.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (9):
  drm/i915/display_debug_fs: Use intel_display wherever possible
  drm/i915/display_debug_fs: Prefer using display->platform
  drm/i915/dpll: Change param to intel_display in for_each_shared_dpll
  drm/i915/dpll: Use intel_display for dpll dump and compare hw state
  drm/i915/dpll: Use intel_display possible in shared_dpll_mgr hooks
  drm/i915/dpll: Use intel_display for asserting pll
  drm/i915/dpll: Use intel_display for update_refclk hook
  drm/i915/dpll: Accept intel_display as argument for shared_dpll_init
  drm/i915/dpll: Replace all other leftover drm_i915_private

 .../drm/i915/display/intel_crtc_state_dump.c  |    3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  130 +--
 drivers/gpu/drm/i915/display/intel_display.c  |   30 +-
 .../drm/i915/display/intel_display_debugfs.c  |  172 +--
 .../drm/i915/display/intel_display_driver.c   |    4 +-
 .../i915/display/intel_display_power_well.c   |   13 +-
 drivers/gpu/drm/i915/display/intel_dkl_phy.c  |   54 +-
 drivers/gpu/drm/i915/display/intel_dkl_phy.h  |    9 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   11 +-
 drivers/gpu/drm/i915/display/intel_dpll.h     |    5 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1006 +++++++++--------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   27 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   16 +-
 drivers/gpu/drm/i915/display/intel_fdi.h      |    7 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |    7 +-
 .../drm/i915/display/intel_modeset_setup.c    |    4 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   45 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   36 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |   12 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.h    |   10 +-
 20 files changed, 810 insertions(+), 791 deletions(-)

-- 
2.34.1

