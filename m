Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF09C63A75
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6192410E1BE;
	Mon, 17 Nov 2025 10:59:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="irMr+jKZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D688A10E1BE;
 Mon, 17 Nov 2025 10:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377140; x=1794913140;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KvRloUhPusFHrIAXYWm4kL94EmltV/TtiZZUO9qh6wk=;
 b=irMr+jKZZqJJAD6YDa2I7gZxn6EShILPbaYEmTrtbMZySRy8jlbEAxbH
 QiDlvrIgnOJlgaaKD9kaRkWEPH0fYrp7H5I6Y3+QZulmY780fwRvO6d25
 H0Zz8vpumljAjqLdB2Df0YZuykHQQF1IobRv8LfvVMvbHucEQCW3T2J5l
 IblUs9fy26Z05wWdY/pjkqeBmj7QqYfw8J8aNjbOk3DPQnQ/N4bdN5vvY
 prXTtQGnicqx53Yg/7AYNqJqnT6LSiMlHTTTQxQOaeoGUNm5u97+BgKO4
 yvcugRVngzfg+8CI1taMwDsXtVkEOuUbzud8asDRBJgSy1i+O75vh42lH Q==;
X-CSE-ConnectionGUID: JHcZJs+0QZ6oS3WbsgESfg==
X-CSE-MsgGUID: LbdoUMEyQHy/bAoD0ejVcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475303"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475303"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:58:59 -0800
X-CSE-ConnectionGUID: K8x6fKiMSrSnAUDLYbuKTA==
X-CSE-MsgGUID: 3vhB/3RjSoCLOOhhQFCXVQ==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:58:58 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 00/32] drm/i915/cx0: Add MTL+ platforms to support dpll
 framework
Date: Mon, 17 Nov 2025 12:45:30 +0200
Message-Id: <20251117104602.2363671-1-mika.kahola@intel.com>
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

This is v2 of [1], with the following changes

- commit message updates
- Use of BUILD_BUGON() wherever possible instead of WARN_ON()

[1] https://lore.kernel.org/intel-gfx/20251031103549.173208-1-mika.kahola@intel.com/

Imre Deak (15):
  drm/i915/cx0: Factor out C10 msgbus access start/end helpers
  drm/i915/cx0: Sanitize setting the Cx0 PLL use_c10 flag
  drm/i915/cx0: Sanitize calculating C20 PLL state from tables
  drm/i915/cx0: Track the C20 PHY VDR state in the PLL state
  drm/i915/cx0: Move definition of Cx0 PHY functions earlier
  drm/i915/cx0: Add macro to get DDI port width from a register value
  drm/i915/cx0: Track the Cx0 PHY enabled lane count in the PLL state
  drm/i915/cx0: Sanitize C10 PHY PLL SSC register setup
  drm/i915/cx0: Read out the Cx0 PHY SSC enabled state
  drm/i915/cx0: Determine Cx0 PLL DP mode from PLL state
  drm/i915/cx0: Determine Cx0 PLL port clock from PLL state
  drm/i915/cx0: Zero Cx0 PLL state before compute and HW readout
  drm/i915/cx0: Print additional Cx0 PLL HW state
  drm/i915/cx0: PLL verify debug state print
  drm/i915/cx0: Add MTL+ Thunderbolt PLL hooks

Mika Kahola (17):
  drm/i915/cx0: Rename TBT functions to be ICL specific
  drm/i915/cx0: Remove state verification
  drm/i915/cx0: Add PLL information for MTL+
  drm/i915/cx0: Update C10/C20 state calculation
  drm/i915/cx0: Compute plls for MTL+ platform
  drm/i915/cx0: Add MTL+ .get_dplls hook
  drm/i915/cx0: Add MTL+ .put_dplls hook
  drm/i915/cx0: Add MTL+ .update_active_dpll hook
  drm/i915/cx0: Add MTL+ .update_dpll_ref_clks hook
  drm/i915/cx0: Add MTL+ .dump_hw_state hook
  drm/i915/cx0: Add .compare_hw_state hook
  drm/i915/cx0: Add MTL+ .get_hw_state hook
  drm/i915/cx0: Add MTL+ .get_freq hook
  drm/i915/cx0: Add MTL+ .crtc_get_dpll hook
  drm/i915/cx0: Add MTL+ .enable_clock/.disable clock hooks on DDI
  drm/i915/cx0: Get encoder configuration for C10 and C20 PHY PLLs
  drm/i915/cx0: Enable dpll framework for MTL+

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 870 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  29 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  87 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  30 -
 .../gpu/drm/i915/display/intel_display_regs.h |   7 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  24 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 315 ++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   7 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c   |   4 +-
 .../drm/i915/display/intel_modeset_verify.c   |   1 -
 10 files changed, 893 insertions(+), 481 deletions(-)

-- 
2.34.1

