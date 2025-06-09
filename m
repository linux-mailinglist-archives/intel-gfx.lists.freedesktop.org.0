Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B56AD1CB3
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 13:53:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A575F10E20B;
	Mon,  9 Jun 2025 11:53:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N9KgusXX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5F3389317;
 Mon,  9 Jun 2025 11:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749470024; x=1781006024;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DhlYxpbOGVpsmgbD5tqbwr6+QT/NBYuMPVnw7JfGJjI=;
 b=N9KgusXXiAz6sBZ4aW0eshb9sAFtV7caZzOOl1oF5dMvyi9v3bqlKpZt
 LgXUicLOFqNhRNfrgHL9ceB+yU2SxTYyz0/Bxz2Dpcwlq6ERmSvEmY64W
 0FgpNUQC9vu5pgWWskijnlzt4sVdbouCO51UtTpa+zmgLXY3Bjqamc3rl
 G2MYnUf0s40IwfJhSTyx9dPIO4ObapIGtupeJmM25z7ghjGpTbckOgScX
 dk0jStHXx1W0ON9UrU5W3dzTgBbvEJQQoTvOp185T7NmFuJMovwoOL/yF
 fx3lbinAX4vR9INdWzFJk2MU1hwT2RHtVzKkuc6xtd4sk6+app5JQjGDL Q==;
X-CSE-ConnectionGUID: RSTVCAlNQGOfnCvqmoVsrg==
X-CSE-MsgGUID: qkVOTOmERUGWXGvRoAc7Vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11458"; a="61808375"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="61808375"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 04:53:43 -0700
X-CSE-ConnectionGUID: PteNzGCPTCWIEon3BY/MBA==
X-CSE-MsgGUID: j3c+HQifT8uRmQ1sap0NFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151367098"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 04:53:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/2] drm/i915/display: register include cleanups
Date: Mon,  9 Jun 2025 14:53:35 +0300
Message-Id: <cover.1749469962.git.jani.nikula@intel.com>
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

Prefer intel_display_reg_defs.h, and drop unnecessary i915_reg.h
includes.

Jani Nikula (2):
  drm/i915/display: include intel_display_reg_defs.h from display regs
    files
  drm/i915/display: drop i915_reg.h include where possible

 drivers/gpu/drm/i915/display/i9xx_display_sr.c         | 1 -
 drivers/gpu/drm/i915/display/intel_cmtg.c              | 1 -
 drivers/gpu/drm/i915/display/intel_cmtg_regs.h         | 2 +-
 drivers/gpu/drm/i915/display/intel_combo_phy.c         | 1 -
 drivers/gpu/drm/i915/display/intel_combo_phy_regs.h    | 2 +-
 drivers/gpu/drm/i915/display/intel_crt.c               | 1 -
 drivers/gpu/drm/i915/display/intel_cursor.c            | 1 -
 drivers/gpu/drm/i915/display/intel_cx0_phy.c           | 1 -
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h      | 2 +-
 drivers/gpu/drm/i915/display/intel_display_power_map.c | 1 -
 drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h      | 2 ++
 drivers/gpu/drm/i915/display/intel_dmc_regs.h          | 2 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c            | 1 -
 drivers/gpu/drm/i915/display/intel_dp.c                | 1 -
 drivers/gpu/drm/i915/display/intel_dp_aux.c            | 1 -
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c           | 1 -
 drivers/gpu/drm/i915/display/intel_dp_mst.c            | 1 -
 drivers/gpu/drm/i915/display/intel_dp_test.c           | 1 -
 drivers/gpu/drm/i915/display/intel_dpio_phy.c          | 1 -
 drivers/gpu/drm/i915/display/intel_dpll.c              | 1 -
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c          | 1 -
 drivers/gpu/drm/i915/display/intel_dpt_common.c        | 1 -
 drivers/gpu/drm/i915/display/intel_drrs.c              | 1 -
 drivers/gpu/drm/i915/display/intel_dsb.c               | 1 -
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c           | 1 -
 drivers/gpu/drm/i915/display/intel_dvo.c               | 1 -
 drivers/gpu/drm/i915/display/intel_fbc.c               | 1 -
 drivers/gpu/drm/i915/display/intel_gmbus_regs.h        | 2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c              | 1 -
 drivers/gpu/drm/i915/display/intel_hti_regs.h          | 2 +-
 drivers/gpu/drm/i915/display/intel_lspcon.c            | 1 -
 drivers/gpu/drm/i915/display/intel_lvds.c              | 1 -
 drivers/gpu/drm/i915/display/intel_pfit.c              | 1 -
 drivers/gpu/drm/i915/display/intel_pipe_crc.c          | 1 -
 drivers/gpu/drm/i915/display/intel_pmdemand.c          | 1 -
 drivers/gpu/drm/i915/display/intel_sbi_regs.h          | 2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c              | 1 -
 drivers/gpu/drm/i915/display/intel_snps_phy.c          | 1 -
 drivers/gpu/drm/i915/display/intel_tv.c                | 1 -
 drivers/gpu/drm/i915/display/intel_vblank.c            | 1 -
 drivers/gpu/drm/i915/display/intel_vga.c               | 1 -
 drivers/gpu/drm/i915/display/intel_vrr.c               | 1 -
 drivers/gpu/drm/i915/display/skl_scaler.c              | 1 -
 drivers/gpu/drm/i915/display/skl_universal_plane.c     | 1 -
 drivers/gpu/drm/xe/display/xe_plane_initial.c          | 1 -
 45 files changed, 9 insertions(+), 44 deletions(-)

-- 
2.39.5

