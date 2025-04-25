Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6B5A9C9FE
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 15:19:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 216E510E981;
	Fri, 25 Apr 2025 13:19:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="heA+IKoE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBB6310E2A1;
 Fri, 25 Apr 2025 13:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745587171; x=1777123171;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QGBeBsB+8I9au5D/RRKqKgyNAmqJ4lmmxtbsdX6E1wA=;
 b=heA+IKoEkpzIgc9V7orqcAyasMPDusxq/oAKMYyFphhYx5vK8GkwEhiU
 W74oB4/wzGf2G0gSZ6xzNTGSbkJ00D/NA5vEmgKCmpEWeBm7y/iTpJWec
 9toQKTaRCQYpGEPULiwMi67Hp/Zl7Cn2Oij8ZagfhGPBSVeuza4ZYP5SQ
 cTo7g79QPp7UqgL/yqt0gZyMQPfXUROeh056eHEh4ZGSQDICwBEcXICCF
 If/k45A6k8+x/9+Ndb9NKo/VDTL1hW/lQ6f6uYjZ8noEs8kq5crfzLhKj
 6bU/3M4RbhVQKjrzkg9fAMm2UzC1NObUsP9fcyuPJJQ56BMb2AN4h2M31 w==;
X-CSE-ConnectionGUID: gvw5ro02RcCDbOgJGMQB2Q==
X-CSE-MsgGUID: PujsU41jQtGgCTTSzxSL6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11414"; a="46479457"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="46479457"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 06:19:29 -0700
X-CSE-ConnectionGUID: OenEvDfJRsiImyLIRAPoQA==
X-CSE-MsgGUID: TMmw1jBMTN6qPcFvzAqADA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="132777956"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.83])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 06:19:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 0/6] drm/i915: refactor VLV IOSF SB for display usage
Date: Fri, 25 Apr 2025 16:19:18 +0300
Message-Id: <cover.1745587049.git.jani.nikula@intel.com>
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

In short, add and use generic (not unit specific) read/write/get/put for
i915 core, move the unit specific helpers to display, and convert all of
them to use drm_display instead of drm_i915_private. This reduces the
display<->i915 interface to just a handful of functions, while keeping
the simple helpers in display where they are most commonly used.


Jani Nikula (6):
  drm/i915: rename vlv_sideband*.[ch] to vlv_iosf_sb*.[ch]
  drm/i915: add generic read/write functions for VLV IOSF SB
  drm/i915: rewrite VLV IOSF SB unit specific read/write functions
  drm/i915: switch i915 core to generic VLV IOSF SB functions
  drm/i915: move VLV IOSF SB unit specific helpers under display
  drm/i915: convert VLV IOSF SB interface to struct drm_device

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
 drivers/gpu/drm/i915/intel_clock_gating.c     |   2 +-
 drivers/gpu/drm/i915/soc/intel_dram.c         |  14 +-
 .../i915/{vlv_sideband.c => vlv_iosf_sb.c}    | 166 ++++++---------
 drivers/gpu/drm/i915/vlv_iosf_sb.h            |  37 ++++
 .../{vlv_sideband_reg.h => vlv_iosf_sb_reg.h} |   6 +-
 drivers/gpu/drm/i915/vlv_sideband.h           | 125 -----------
 .../drm/xe/compat-i915-headers/vlv_iosf_sb.h  |  42 ++++
 .../{vlv_sideband_reg.h => vlv_iosf_sb_reg.h} |   2 +-
 .../drm/xe/compat-i915-headers/vlv_sideband.h | 132 ------------
 26 files changed, 678 insertions(+), 725 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/vlv_sideband.c
 create mode 100644 drivers/gpu/drm/i915/display/vlv_sideband.h
 rename drivers/gpu/drm/i915/{vlv_sideband.c => vlv_iosf_sb.c} (56%)
 create mode 100644 drivers/gpu/drm/i915/vlv_iosf_sb.h
 rename drivers/gpu/drm/i915/{vlv_sideband_reg.h => vlv_iosf_sb_reg.h} (98%)
 delete mode 100644 drivers/gpu/drm/i915/vlv_sideband.h
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
 rename drivers/gpu/drm/xe/compat-i915-headers/{vlv_sideband_reg.h => vlv_iosf_sb_reg.h} (66%)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_sideband.h

-- 
2.39.5

