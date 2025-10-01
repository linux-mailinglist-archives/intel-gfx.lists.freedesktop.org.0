Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A59ABAFAAE
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:38:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3047C10E347;
	Wed,  1 Oct 2025 08:38:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SXd3aF1Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B874C10E0B1;
 Wed,  1 Oct 2025 08:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307917; x=1790843917;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=slkbW+6xSuRzWOec+sGz+6mN/MvBUyGBmaSdbUUpmR4=;
 b=SXd3aF1QyXHuXUX8iH8XhSB3iHq7CmEsBAG1lsUHLxb3mizoPHCTLrvl
 C1kI3NShpAnqQdrVb6X7GMU4z1hL+McRPuRXR5hSu9LO239wYi2e+B3Gn
 /H45Wm/b577QoI6rpSEsAllrETxWDI9oe/emAtFs76E9c3Fe22pSiipsV
 hd4/EgZpWPI/y73E9C4tEA4DOlaPaLLP49qIO6RRr8JVI7BxPgMLVcusH
 zbcRQqG6xTLD1MVKkN3wLTyJhMdFTusNttNy6cb4zTA1qXjk1BYV0Ixwi
 M/Mbg9Npxo+nUtW1831tQnMvdR4T0jMdwCev52AZHht03OCWWv3nXEXyC w==;
X-CSE-ConnectionGUID: AsnlmmlkTbqdsgceVZXNQw==
X-CSE-MsgGUID: TQh7idkCTk2p6WYkJFvAhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742679"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742679"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:38:37 -0700
X-CSE-ConnectionGUID: IdKeV8SnS9yly2C+Ijeasg==
X-CSE-MsgGUID: Bx4tXu3zR2qTyGn0SIGi8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142475"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:34 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [RFC PATCH 00/39] drm/i915/display: Add MTL+ platforms to support
 dpll framework
Date: Wed,  1 Oct 2025 11:28:00 +0300
Message-Id: <20251001082839.2585559-1-mika.kahola@intel.com>
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

This series introduces support for the DPLL framework on MTL+ platforms.
It begins with a set of cleanups and helper refactors, then gradually
adds the necessary infrastructure for dpll framework, followed by
extensions to support additional platforms. The final patch enables the
DPLL framework for MTL+.

The patches are organized as follows:

* Fixes and refactoring
* Tracking additional PLL/PHY HW state in the PLL SW state
* Align the Cx0 PHY PLL state compute/readout and enabling functions on MTL+
  as expected by the PLL manager
* Add the Cx0 PHY PLL manager/PLL hooks for MTL+
* Enable the PLL manager for MTL+ platforms

Note:
This series does not include the following features that would
require attention as a follow up series

* Add support for:
  - CMTG
  - C20 PHY PLL on port B
* Decouple PLL code from encoders for better isolation of PLL code internals

Imre Deak (22):
  drm/i915/display: Sanitize PHY_C20_VDR_CUSTOM_SERDES_RATE/DP_RATE
    field macros
  drm/i915/display: Sanitize PHY_C20_VDR_CUSTOM_SERDES_RATE/IS_DP flag
    macro
  drm/i915/display: Sanitize
    PHY_C20_VDR_CUSTOM_SERDES_RATE/CONTEXT_TOGGLE flag macro
  drm/i915/display: Sanitize PHY_C20_VDR_CUSTOM_SERDES_RATE/IS_HDMI_FRL
    flag macro
  drm/i915/display: Fix PHY_C20_VDR_CUSTOM_SERDES_RATE programming
  drm/i915/display: Fix PHY_C20_VDR_HDMI_RATE programming
  drm/i915/display: Add missing clock to C10 PHY state compute/HW
    readout
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

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 897 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  25 +-
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  10 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  76 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  32 -
 .../gpu/drm/i915/display/intel_display_regs.h |   7 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  24 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 297 +++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   7 +
 .../drm/i915/display/intel_modeset_verify.c   |   1 -
 .../drm/i915/display/intel_snps_hdmi_pll.c    |   2 +
 11 files changed, 884 insertions(+), 494 deletions(-)

-- 
2.34.1

