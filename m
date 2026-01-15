Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6E6D22EF4
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 08:51:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CC5410E6D2;
	Thu, 15 Jan 2026 07:51:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VDbIx0qz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1F1810E6D2;
 Thu, 15 Jan 2026 07:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768463466; x=1799999466;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GIsfVSxRjprOlLS5Zpb084RF9gxtf/afYAVrEeRXa2g=;
 b=VDbIx0qzUrx9lyDvzl5r8iYF8Leqc5r7rpWIZIfBG9WCoR2SJE7eyyDg
 DcXncUqlsABZL35Ep18ZnXUpscnAAzMV6R+J1KY9Blyh3zMQJrF9r937V
 WV95QnnCoZTqul5rOksVqoa0sPXERIPfzL9Iy0VTESNJtD/JT3Bv1ApS2
 zir6DH614cDdEPbCOJ6+2HxZKJpAPr4lncdAphOG4dSxa3A84W6CiRTbc
 IwtHrl2rRDatB58uCqZfLBrsDzy7Zq7L9w9xLsUgO80vGjN5Ewnu0jfyX
 58R1R+bNG6bl2qoRswk/7EF1X10cCNfdoeSHGWNncrLFSKLPBVv0izrc+ g==;
X-CSE-ConnectionGUID: xiT0sdeUQTuhbR4hEqk1/A==
X-CSE-MsgGUID: 2yPnwOy7QoiKIYOCa+221Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="92436200"
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="92436200"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 23:51:06 -0800
X-CSE-ConnectionGUID: GJEfLFGmSEeV5mvL/2vPUw==
X-CSE-MsgGUID: yoVGYBuyQXCeVdyq2OY4Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="204101689"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa010.jf.intel.com with ESMTP; 14 Jan 2026 23:51:05 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>, Imre Deak <imre.deak@intel.com>
Subject: [PATCH v3 00/15] drm/i915/pll: Verify pll dividers and remove
 redundant .clock member
Date: Thu, 15 Jan 2026 07:50:46 +0000
Message-ID: <20260115075101.2214842-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
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

This is v2 of [1], with the updates on commit messages and
fuzzy clock check.

[1] https://lore.kernel.org/intel-xe/20251217151955.1690202-1-mika.kahola@intel.com/

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Imre Deak <imre.deak@intel.com>

Mika Kahola (15):
  drm/i915/cx0: Move C10 port clock calculation
  drm/i915/cx0: Move C20 port clock calculation
  drm/i915/cx0: Drop Cx0 crtc_state from HDMI TMDS pll divider
    calculation
  drm/i915/lt_phy: Drop LT PHY crtc_state for port calculation
  drm/i915/cx0: Drop encoder from port clock calculation
  drm/i915/cx0: Create macro around PLL tables
  drm/i915/lt_phy: Create macro for LT PHY PLL state
  drm/i915/display: Add helper function for fuzzy clock check
  drm/i915/cx0: Fix HDMI FRL clock rates
  drm/i915/cx0: Add a fuzzy check for DP/HDMI clock rates during
    programming
  drm/i915/cx0: Verify C10/C20 pll dividers
  drm/i915/lt_phy: Add verification for lt phy pll dividers
  drm/i915/cx0: Drop C20 25.175 MHz rate
  drm/i915/lt_phy: Drop 27.2 MHz rate
  drm/i915/display: Remove .clock member from eDP/DP/HDMI pll tables

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 727 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   8 +-
 drivers/gpu/drm/i915/display/intel_dpll.h     |   1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  11 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   3 -
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  19 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 239 +++---
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |   5 +-
 .../drm/i915/display/intel_snps_hdmi_pll.c    |   2 -
 11 files changed, 553 insertions(+), 467 deletions(-)

-- 
2.43.0

