Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BD9AB5487
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 14:17:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC95910E38C;
	Tue, 13 May 2025 12:17:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HQFIc9wi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C34510E1F7;
 Tue, 13 May 2025 12:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747138634; x=1778674634;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2mRZzsvB9NqeMixku5VQxv0uOavBvHHSpYNbGw18sk8=;
 b=HQFIc9wis+GxT0B1WtDvP7Ll+nexcmwPKF5/JsrptcXJzCnPtYco/w8l
 a0vzBoDXkLwM95bwv8yUJXEsNgQXFMCydaZGjfjZeI7rnhzsOwdVYNaMP
 64b16xsC9K7cGYtoyrbkfGpsAW+yEzZh17FeL3cFhDGl7M92mdfVxu/xz
 WDi2ofyQrXtkPrC46+tbQ3QV5Sl9WAysgzPkDLQqx0uQGgDL8Tde+vI5F
 K/Q0q5Lsll5SwB8tpdQXxHNCH04C4SLrttERwFfsozLqshhYCoaRLRTuV
 bgIeF8Gu/TCDLlr2GrzT6rkWV7N5LYN3RsiuMLewoGn2FOuiLI/7KBlm6 A==;
X-CSE-ConnectionGUID: +1ahikiEQMqb+VZCuBvfvg==
X-CSE-MsgGUID: RkpJCMm7TVGtD5Sy3PHt5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="48235848"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="48235848"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:13 -0700
X-CSE-ConnectionGUID: YMvJ3lKgTxOkZI3OYuW6uA==
X-CSE-MsgGUID: yM6fwjEQTgmlBGWYNCKtqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="138205783"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/8] drm/i915/sbi: move under display, cleanup
Date: Tue, 13 May 2025 15:16:59 +0300
Message-Id: <cover.1747138550.git.jani.nikula@intel.com>
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

Move SBI under display, and convert to display structures and
interfaces.

TODO: Also find places for sbi init/fini within display.

BR,
Jani.


Jani Nikula (8):
  drm/i915/sbi: move intel_sbi.[ch] under display/
  drm/i915/sbi: convert intel_sbi.[ch] to struct intel_display
  drm/i915/sbi: move sbi_lock under struct intel_display
  drm/i915/de: rename timeout parameters timeout_ms to highlight unit
  drm/i915: add out_value to intel_wait_for_register_fw() and
    intel_de_wait_fw()
  drm/i915/sbi: convert to intel_de_*()
  drm/i915/sbi: split out intel_sbi_regs.h
  drm/i915/sbi: clean up SBI register macro definitions and usage

 drivers/gpu/drm/i915/Makefile                 |   2 +-
 drivers/gpu/drm/i915/display/intel_de.h       |  20 +--
 .../gpu/drm/i915/display/intel_display_core.h |   5 +
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |   2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |   2 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 149 +++++++++---------
 drivers/gpu/drm/i915/display/intel_sbi.c      |  89 +++++++++++
 drivers/gpu/drm/i915/display/intel_sbi.h      |  27 ++++
 drivers/gpu/drm/i915/display/intel_sbi_regs.h |  65 ++++++++
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |   2 +-
 drivers/gpu/drm/i915/gvt/display.h            |  13 --
 drivers/gpu/drm/i915/gvt/handlers.c           |  30 ++--
 drivers/gpu/drm/i915/i915_driver.c            |   6 +-
 drivers/gpu/drm/i915/i915_drv.h               |   3 -
 drivers/gpu/drm/i915/i915_reg.h               |  41 -----
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 drivers/gpu/drm/i915/intel_sbi.c              |  94 -----------
 drivers/gpu/drm/i915/intel_sbi.h              |  27 ----
 drivers/gpu/drm/i915/intel_uncore.c           |   6 +-
 drivers/gpu/drm/i915/intel_uncore.h           |   5 +-
 .../drm/xe/compat-i915-headers/intel_uncore.h |   5 +-
 21 files changed, 300 insertions(+), 294 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_sbi.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_sbi.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_sbi_regs.h
 delete mode 100644 drivers/gpu/drm/i915/intel_sbi.c
 delete mode 100644 drivers/gpu/drm/i915/intel_sbi.h

-- 
2.39.5

