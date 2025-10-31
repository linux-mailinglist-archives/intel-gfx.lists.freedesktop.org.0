Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 906EDC24925
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:47:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26EFE10EB0D;
	Fri, 31 Oct 2025 10:47:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CMyO4vVP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F9D710EB0D;
 Fri, 31 Oct 2025 10:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907661; x=1793443661;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cw5VT61ZG6SIh8Q+MJGVm9sXyqxLpw0u18nN/vbvAvo=;
 b=CMyO4vVPfGdBeWV+e9pBoYgIl0ugRF8xKRBZSvTiIPOIuAlCVv7szCqk
 iffmjiU7beVGSgNgTJ0PTX14GND0WwTqhhcYFsmv+YmnVTy586ZiKXxqV
 +0F0gvFmFcIPayMCBWKLkxCeC/aadX8jtS+65o4S3U4ElCh3rInpD4o1r
 dUBjk+KlDkl6/BDUXuaetxQRnfbXO4xmNdPTWN6KbbqEEZoKxdHK8vn7T
 I+OYKhq/zoSTyIOSDvPD7E3iTTJiaN03wJDeh50pf5AJx+i2mt5vqjgOs
 3KjeLx2Bpi4az0LaV2WNfR6wqH3Qws07IFx/fYTNySy9gFA1fL3m2I5+B A==;
X-CSE-ConnectionGUID: 0i9LM35GS6iPwlPapzkBRw==
X-CSE-MsgGUID: owy5rckbT0Olzrs2DsznhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217539"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217539"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:47:41 -0700
X-CSE-ConnectionGUID: Ht7xIPM9SOGmwM70rTYrug==
X-CSE-MsgGUID: +HqcysWsQvCaatuvZ7vFTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441281"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:47:39 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [CI 00/32] [PATCH 00/32] drm/i915/display: Add MTL+ platforms to
 support dpll framework
Date: Fri, 31 Oct 2025 12:35:17 +0200
Message-Id: <20251031103549.173208-1-mika.kahola@intel.com>
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

- Add support for eDP on C20 phy pll on PantherLake.

- As required by the above point use the non_tc_phy instead of c10phy term
  for the PLL hooks computing the state for, getting/putting etc. the PLLs
  of the non TypeC ports/outputs (on port A and B). Use the tc_phy instead
  of the c20phy term for the PLLs of all the other TypeC ports/outputs
  (port TC1-4).Support for eDP on C20 phy pll on PantherLake.

[1] https://lore.kernel.org/intel-xe/20251001082839.2585559-1-mika.kahola@intel.com/

Imre Deak (15):
  drm/i915/display: Factor out C10 msgbus access start/end helpers
  drm/i915/display: Sanitize setting the Cx0 PLL use_c10 flag
  drm/i915/display: Sanitize calculating C20 PLL state from tables
  drm/i915/display: Track the C20 PHY VDR state in the PLL state
  drm/i915/display: Move definition of Cx0 PHY functions earlier
  drm/i915/display: Add macro to get DDI port width from a register
    value
  drm/i915/display: Track the Cx0 PHY enabled lane count in the PLL
    state
  drm/i915/display: Sanitize C10 PHY PLL SSC register setup
  drm/i915/display: Read out the Cx0 PHY SSC enabled state
  drm/i915/display: Determine Cx0 PLL DP mode from PLL state
  drm/i915/display: Determine Cx0 PLL port clock from PLL state
  drm/i915/display: Zero Cx0 PLL state before compute and HW readout
  drm/i915/display: Print additional Cx0 PLL HW state
  drm/i915/display: PLL verify debug state print
  drm/i915/display: Add Thunderbolt support

Mika Kahola (17):
  drm/i915/display: Rename TBT functions to be ICL specific
  drm/i915/display: Remove state verification
  drm/i915/display: PLL information for MTL+
  drm/i915/display: Update C10/C20 state calculation
  drm/i915/display: Compute plls for MTL+ platform
  drm/i915/display: MTL+ .get_dplls
  drm/i915/display: MTL+ .put_dplls
  drm/i915/display: Add .update_active_dpll
  drm/i915/display: Add .update_dpll_ref_clks
  drm/i915/display: Add .dump_hw_state
  drm/i915/display: Add .compare_hw_state
  drm/i915/display: Add .get_hw_state to MTL+ platforms
  drm/i915/display: Add .get_freq to MTL+ platforms
  drm/i915/display: Add .crtc_get_dpll hook
  drm/i915/display: Add .enable_clock on DDI for MTL+ platforms
  drm/i915/display: Get configuration for C10 and C20
  drm/i915/display: Enable dpll framework for MTL+

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 896 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  25 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  81 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  32 -
 .../gpu/drm/i915/display/intel_display_regs.h |   7 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  24 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 314 +++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   7 +
 .../drm/i915/display/intel_modeset_verify.c   |   1 -
 9 files changed, 893 insertions(+), 494 deletions(-)

-- 
2.34.1

