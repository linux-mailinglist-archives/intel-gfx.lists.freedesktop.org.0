Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E70C70B34
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:53:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48E9310E25C;
	Wed, 19 Nov 2025 18:52:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KAF7dMPr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A47FE10E259;
 Wed, 19 Nov 2025 18:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763578377; x=1795114377;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bkr/9blAUMrBuHBhmnzgb3w8133PtUq4Wa35ZJOi7B8=;
 b=KAF7dMPrVvUCnnSlsnZ4s3I8D2cMnIpFBchfcu/dqxmtS6NoxKfQ70iA
 ESCLzyXRoZQxn3llUf/PEEl0/5tFEd5bVcAwsew6u/aLosVhISttrlt79
 ABTtl6KCdCgR3PD0RHaFodvecYHsKfjWvbrza1rA9VA84sbFL36wb9ERs
 6S/xlp638Pm+qY4BTPE8NOpLiznOx851Z8MnEjZiOHD6aj1GEn+bo35Z/
 1PO5xsL4JQyvvFolgntcmt985AzNvRwNNSGdWKhx4DjyYvf0uCtUdjFhK
 JxMZ0Va296JM28sRpFMBqwGTSRfeKvzG+9E/HylQe/JthIQHIN0xMYR5j g==;
X-CSE-ConnectionGUID: /NYTA+ObTSO2vFuXTi7xBQ==
X-CSE-MsgGUID: u5dtrgXZTbWpxIkamD25sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65334614"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="65334614"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:52:57 -0800
X-CSE-ConnectionGUID: bfO5bYcoRBGyaLQJrEiOYA==
X-CSE-MsgGUID: gTWzh5MPSRmZx6st2h6VQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190948409"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.187])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:52:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 00/13] drm/i915: dissolve soc/
Date: Wed, 19 Nov 2025 20:52:39 +0200
Message-ID: <cover.1763578288.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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

Split soc/ to i915 and display specific parts, and relocate code
accordingly.

In v2, cover all of soc/.

BR,
Jani.

Jani Nikula (13):
  drm/i915/edram: extract i915_edram.[ch] for edram detection
  drm/i915: split out i915_freq.[ch]
  drm/i915: move intel_dram.[ch] from soc/ to display/
  drm/xe: remove MISSING_CASE() from compat i915_utils.h
  drm/i915/dram: convert to struct intel_display
  drm/i915: move dram_info to struct intel_display
  drm/i915: move intel_rom.[ch] from soc/ to display/
  drm/xe: remove remaining platform checks from compat i915_drv.h
  drm/i915/gmch: split out i915_gmch.[ch] from soc
  drm/i915/gmch: switch to use pci_bus_{read,write}_config_word()
  drm/i915/gmch: convert intel_gmch.c to struct intel_display
  drm/i915: merge soc/intel_gmch.[ch] to display/intel_vga.c
  drm/xe/vga: use the same intel_gmch_vga_set_decode() as i915

 drivers/gpu/drm/i915/Makefile                 |  11 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c        |   5 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |   5 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   7 +-
 .../gpu/drm/i915/display/intel_display_core.h |   4 +
 .../drm/i915/display/intel_display_power.c    |   5 +-
 .../drm/i915/{soc => display}/intel_dram.c    | 249 ++++++++----------
 .../drm/i915/{soc => display}/intel_dram.h    |  12 +-
 .../gpu/drm/i915/{soc => display}/intel_rom.c |   0
 .../gpu/drm/i915/{soc => display}/intel_rom.h |   0
 drivers/gpu/drm/i915/display/intel_vga.c      |  44 +++-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   6 +-
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |   4 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   6 +-
 drivers/gpu/drm/i915/i915_driver.c            |  18 +-
 drivers/gpu/drm/i915/i915_drv.h               |   3 -
 drivers/gpu/drm/i915/i915_edram.c             |  44 ++++
 drivers/gpu/drm/i915/i915_edram.h             |  11 +
 drivers/gpu/drm/i915/i915_freq.c              | 111 ++++++++
 drivers/gpu/drm/i915/i915_freq.h              |  13 +
 .../i915/{soc/intel_gmch.c => i915_gmch.c}    |  61 +----
 drivers/gpu/drm/i915/i915_gmch.h              |  13 +
 drivers/gpu/drm/i915/soc/intel_gmch.h         |  20 --
 drivers/gpu/drm/xe/Makefile                   |  13 +-
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  15 --
 .../drm/xe/compat-i915-headers/i915_utils.h   |   6 -
 .../xe/compat-i915-headers/soc/intel_dram.h   |   6 -
 .../xe/compat-i915-headers/soc/intel_gmch.h   |   6 -
 .../xe/compat-i915-headers/soc/intel_rom.h    |   6 -
 drivers/gpu/drm/xe/display/xe_display.c       |   4 +-
 drivers/gpu/drm/xe/display/xe_display_misc.c  |  16 --
 drivers/gpu/drm/xe/xe_device_types.h          |   8 -
 33 files changed, 394 insertions(+), 341 deletions(-)
 rename drivers/gpu/drm/i915/{soc => display}/intel_dram.c (70%)
 rename drivers/gpu/drm/i915/{soc => display}/intel_dram.h (68%)
 rename drivers/gpu/drm/i915/{soc => display}/intel_rom.c (100%)
 rename drivers/gpu/drm/i915/{soc => display}/intel_rom.h (100%)
 create mode 100644 drivers/gpu/drm/i915/i915_edram.c
 create mode 100644 drivers/gpu/drm/i915/i915_edram.h
 create mode 100644 drivers/gpu/drm/i915/i915_freq.c
 create mode 100644 drivers/gpu/drm/i915/i915_freq.h
 rename drivers/gpu/drm/i915/{soc/intel_gmch.c => i915_gmch.c} (68%)
 create mode 100644 drivers/gpu/drm/i915/i915_gmch.h
 delete mode 100644 drivers/gpu/drm/i915/soc/intel_gmch.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_dram.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_gmch.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h
 delete mode 100644 drivers/gpu/drm/xe/display/xe_display_misc.c

-- 
2.47.3

