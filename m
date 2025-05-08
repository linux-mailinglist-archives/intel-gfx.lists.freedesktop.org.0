Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AECA4AAF755
	for <lists+intel-gfx@lfdr.de>; Thu,  8 May 2025 12:03:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ADFE10E3BF;
	Thu,  8 May 2025 10:03:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GDRK5JZe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EB5610E3BE;
 Thu,  8 May 2025 10:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746698627; x=1778234627;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CXb6DxPVj4mhTct3jnTWOozPaKmyQsqU5Vv/WB7nP80=;
 b=GDRK5JZecUznbdHipYCh4/8qEoeV4zcHWMPB3/zq16fFDxdym943QVJF
 nhOTbbk8VLUx3aYKnUDDZgjIPhH6DD4cwsJ9Ea/LZJdkVXHp6PGBbZ8U5
 9Xbim9t2tuavQykl8y5uvmYoWmgO87vLr6UEQq4u9kXdtkRRMOu2V348j
 ffLEUGTtxvxtUD/rIsPZlSEJK2mcoF23sSDXWjLJ9FW8+rUJ9rDXBfwUb
 e8DYJsrTdJPQXky2agdLSwUdWQyNQzYlRZ89UJNB53LVYv/T3P3c3Zogi
 h7OSQo14XXNdqoXECm5eFlV3TbOHyAAXXpuRQhzvLPFnxe8GgZ7UcU/40 Q==;
X-CSE-ConnectionGUID: P6jGPLVFSB6+qzdawVXuyg==
X-CSE-MsgGUID: Sklg6DByROi1MA0A6wBbRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="48582130"
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="48582130"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 03:03:46 -0700
X-CSE-ConnectionGUID: kna5dQJ9T9SbLGEFYmFoIw==
X-CSE-MsgGUID: Jgb2SfbXSg+ls7Rz1zG1wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="167317123"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.176])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 03:03:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 0/8] drm/i915: refactor VLV IOSF SB for display usage
Date: Thu,  8 May 2025 13:03:34 +0300
Message-Id: <cover.1746698410.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
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

This is v2 of [1] fixing a pretty bad goof-up in patch 4, adding the
last two patches to clean up style and ensure such goof-ups don't occur
in the future, and a couple of checkpatch fixes.

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1745587049.git.jani.nikula@intel.com


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

