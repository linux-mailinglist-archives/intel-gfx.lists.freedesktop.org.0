Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA26AB3B70
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 16:57:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 807B010E420;
	Mon, 12 May 2025 14:57:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CWTf7UKD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0138010E36D;
 Mon, 12 May 2025 14:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747061825; x=1778597825;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Csb4Z+H6OYrQm0Wdhb6YoY42GgGCaCCpNrKnDlonIg0=;
 b=CWTf7UKD+gA7faLv+UtFEYbaAk0Jtxf/X2W6UcpF3nr9yUcb97qspYOD
 GqoBDj2Ckgf7MkHjzh/+UWPI2ALHI3bABtKGO8FIQhvaof9jPv9r7Nyuw
 vrc8ZuzTliXOnkNL2br9JkblGju+9vR0v49lUt29KxUp2mXenqCGpFAw8
 H594Zmu7i5TkCSi7PKqoHTfj2OO34fJxtcFxQrtwY4zj74nzP66LTpqpt
 Iek68CX1zP0OfUug5b5JuxI51DM3+MNilwwCmy36j9UCajYWmKeXz0PiB
 262QUO45a/kzI3WiZCmyatJ5t4RT1seyomuXnKHZMAtZ0p7jK2TtQmddC Q==;
X-CSE-ConnectionGUID: fB9sXlHpS7W6abKTwluScA==
X-CSE-MsgGUID: RG2bGCuET9eIHfSJ6OuK0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="59865080"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="59865080"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:57:05 -0700
X-CSE-ConnectionGUID: +Lf2WypxQg2WUxuFTM7AQg==
X-CSE-MsgGUID: zjMXec80SIS0/vp9wZ2MXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="142501996"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.186])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:57:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 0/8] drm/i915: refactor VLV IOSF SB for display usage
Date: Mon, 12 May 2025 17:56:51 +0300
Message-Id: <cover.1747061743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

v3 of [1] fixing dpio 1 vs 2 sanity checks.

[1] https://lore.kernel.org/r/cover.1746698410.git.jani.nikula@intel.com

Jani Nikula (8):
  drm/i915: rename vlv_sideband*.[ch] to vlv_iosf_sb*.[ch]
  drm/i915: add generic read/write functions for VLV IOSF SB
  drm/i915: rewrite VLV IOSF SB unit specific read/write functions
  drm/i915: switch i915 core to generic VLV IOSF SB functions
  drm/i915: move VLV IOSF SB unit specific helpers under display
  drm/i915: convert VLV IOSF SB interface to struct drm_device
  drm/i915: rename VLV IOSF SB ports parameter to unit_mask
  drm/i915: ensure correct VLV IOSF SB units have been get/put

 drivers/gpu/drm/i915/Makefile                 |   5 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  35 ++-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  47 ++---
 drivers/gpu/drm/i915/display/intel_display.c  |  23 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   7 +-
 .../drm/i915/display/intel_display_power.c    |   7 +-
 .../i915/display/intel_display_power_map.c    |   2 +-
 .../i915/display/intel_display_power_well.c   |  71 +++----
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 199 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll.c     | 135 ++++++------
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  26 ++-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |  46 ++--
 drivers/gpu/drm/i915/display/vlv_sideband.c   |  50 +++++
 drivers/gpu/drm/i915/display/vlv_sideband.h   | 156 ++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   8 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  58 ++---
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |   1 +
 drivers/gpu/drm/i915/intel_clock_gating.c     |   2 +-
 drivers/gpu/drm/i915/soc/intel_dram.c         |  14 +-
 .../i915/{vlv_sideband.c => vlv_iosf_sb.c}    | 176 ++++++----------
 drivers/gpu/drm/i915/vlv_iosf_sb.h            |  37 ++++
 .../{vlv_sideband_reg.h => vlv_iosf_sb_reg.h} |   6 +-
 drivers/gpu/drm/i915/vlv_sideband.h           | 125 -----------
 .../drm/xe/compat-i915-headers/vlv_iosf_sb.h  |  42 ++++
 .../{vlv_sideband_reg.h => vlv_iosf_sb_reg.h} |   2 +-
 .../drm/xe/compat-i915-headers/vlv_sideband.h | 132 ------------
 27 files changed, 689 insertions(+), 725 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/vlv_sideband.c
 create mode 100644 drivers/gpu/drm/i915/display/vlv_sideband.h
 rename drivers/gpu/drm/i915/{vlv_sideband.c => vlv_iosf_sb.c} (55%)
 create mode 100644 drivers/gpu/drm/i915/vlv_iosf_sb.h
 rename drivers/gpu/drm/i915/{vlv_sideband_reg.h => vlv_iosf_sb_reg.h} (98%)
 delete mode 100644 drivers/gpu/drm/i915/vlv_sideband.h
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
 rename drivers/gpu/drm/xe/compat-i915-headers/{vlv_sideband_reg.h => vlv_iosf_sb_reg.h} (66%)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_sideband.h

-- 
2.39.5

