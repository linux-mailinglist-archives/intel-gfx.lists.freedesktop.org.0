Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 997B0CC1A0B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:46:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B45610E781;
	Tue, 16 Dec 2025 08:46:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fBL9UD85";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BF1410E781;
 Tue, 16 Dec 2025 08:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765874800; x=1797410800;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EIAUyIdPB36NJ7bslz0uFIeJSNEeUAHVEP6WGv4URYo=;
 b=fBL9UD85r8JOLVg53Vb8LuQ68dqsTgEUtniOkHatX31C6BnK7CYwx8ZM
 BNASY8xRZpTy914KLjxt6STgLIRepru9Rq3bKX+b9WFIUmvCQ9wpfWC09
 8yTaanIi+DFSdT/vWD+naYVX9MW6sNYVWfhY8riTYI62V6xnsqZYL0eld
 5t+b60NV2QVqJKAMMw/fj9vb8Aolio2HLtXc3Oixhf2ewF7Vx8N1kQuWz
 XV7NZ/M1zUi3RjvwOfxXcKiZBre+nsW1hbwCJQlBW4AiXajfkCs3W2JPn
 FjsJzf/RfCRYimAn7k8sVe2rwzR5WdgSOBUpCxv2QIQ39NRBERhjhxqOz g==;
X-CSE-ConnectionGUID: robAjfntTjaviYLy/Xoixw==
X-CSE-MsgGUID: yNKTAtmfSn+rxOCO0+AngQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71642296"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="71642296"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:46:39 -0800
X-CSE-ConnectionGUID: 6DOXO/z3QF2ShpMmAbboNg==
X-CSE-MsgGUID: mG2osd05SUqh/zaldKr8MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="198448736"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa009.fm.intel.com with ESMTP; 16 Dec 2025 00:46:38 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 00/13] drm/i915/pll: Verify pll dividers and remove redundant
 .clock member
Date: Tue, 16 Dec 2025 10:37:46 +0200
Message-Id: <20251216083759.383163-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add explicit port clock validation and simplify PLL state handling by
removing redundant cached clock data. The series improves robustness of
PLL divider handling, particularly for algorithmically derived clocks,
and makes port clock usage more consistent across the driver.

The driver derives port clocks from PLL divider configuration but does
not consistently verify that the calculated clock matches the requested
one. This is especially relevant for HDMI non-FRL modes, where PLL
dividers are selected algorithmically rather than via fixed mappings.

Introduce a fuzzy port clock check to compare calculated and requested
values within a small tolerance, and warn when mismatches are detected.
This allows early detection of invalid or unintended divider solutions
without changing functional behavior.

The PLL state currently caches a `.clock` value even though the port
clock is fully derivable from the divider configuration. Keeping this
cached value is redundant and risks divergence from the actual computed
clock. Remove `.clock` and convert all users to rely on on-demand
port clock calculation instead.

This series:
  - Introduces helper functions for port clock calculation with clear
    inputs, outputs, and units.
  - Adds a centralized fuzzy port-clock sanity check (±2 kHz tolerance)
    applied during boot and mode-setting.
  - Moves scattered port-clock calculations into common helpers.
  - Removes the `.clock` member from PLL state structures.

Mika Kahola (13):
  drm/i915/c10: Move C10 port clock calculation
  drm/i915/c20: Move C20 port clock calculation
  drm/i915/display: Drop crtc_state from clock calculation
  drm/i915/cx0: Fix HDMI FRL clock rates
  drm/i915/cx0: Create macro around pll tables
  drm/i915/lt_phy: Create macro for lt phy pll state
  drm/i915/display: Add helper function for fuzzy clock check
  drm/i915/cx0: Replace encoder with display
  drm/i915/cx0: Verify C10/C20 pll dividers
  drm/i915/lt_phy: Add verfication for lt phy pll dividers
  drm/i915/cx0: Drop C20 25.175 MHz rate
  drm/i915/lt_phy: Drop 27.2 MHz rate
  drm/i915/display: Remove .clock member from eDP/DP/HDMI pll tables

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 749 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   3 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  13 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   3 -
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 238 +++---
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |   5 +-
 .../drm/i915/display/intel_snps_hdmi_pll.c    |   3 -
 9 files changed, 539 insertions(+), 482 deletions(-)

-- 
2.34.1

