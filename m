Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCECAC4C88
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 12:59:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B993210E425;
	Tue, 27 May 2025 10:59:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jeiPt1PB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45BCC10E425;
 Tue, 27 May 2025 10:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748343561; x=1779879561;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZC9DyoaPyeromQbodizUo9+tE9lK5+tbPeD7mEWlocY=;
 b=jeiPt1PBVwOMKWs/dM1YDkoCSHeF29N1KO/Ki8X1qmf7ddm1odgJrVoJ
 3a85jWr1GNfb03sudjhPpgEpT87Z2jiy9TpFk10cDPYu7AYwVUcyfsAXx
 UsHl8ab7S46EdWq3hnvRbugd7Z/K/nqEa2HWASf5MeG8amHmn7nwKZIXU
 GDdszz5g1CJ/+giTCufu7WmdBYtCbDRj9s+4ztjCP+5sP9+YL0U6dARfQ
 eDba3XU1R2kij2MzTrLv1W+sxgmvuEyxlp0DsSOP4j5jV6uXjyKGcBHVt
 jlA8ic/XBonLf0tDaNVuBvc3b4pxWqW8p4ZHFZCT/o30RApIbEaoZk2Rg A==;
X-CSE-ConnectionGUID: WeiE95suR/GJODOmKxd40Q==
X-CSE-MsgGUID: 5vO+ixkpS6+XcFByuLjcKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="72859848"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="72859848"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 03:59:20 -0700
X-CSE-ConnectionGUID: xkatmWhwQy6/v2MruSvH8w==
X-CSE-MsgGUID: ZWFtaaEJTYWC7hQ69jKvbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="142768836"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 03:59:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 0/8] drm/i915/sbi: move under display, cleanup
Date: Tue, 27 May 2025 13:59:06 +0300
Message-Id: <cover.1748343520.git.jani.nikula@intel.com>
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

Rebase and resend of [1].

[1] https://lore.kernel.org/r/cover.1747138550.git.jani.nikula@intel.com

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
 drivers/gpu/drm/i915/display/intel_sbi.c      |  90 +++++++++++
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
 21 files changed, 301 insertions(+), 294 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_sbi.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_sbi.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_sbi_regs.h
 delete mode 100644 drivers/gpu/drm/i915/intel_sbi.c
 delete mode 100644 drivers/gpu/drm/i915/intel_sbi.h

-- 
2.39.5

