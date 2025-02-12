Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1E5A32034
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 08:45:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D85D310E7D1;
	Wed, 12 Feb 2025 07:45:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iJH8UY/H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCDBC10E7CF;
 Wed, 12 Feb 2025 07:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739346353; x=1770882353;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qMFydMg8V9DkV2X6TpryIbZIL2JQlxSBFxAAvD4k0Zo=;
 b=iJH8UY/HyuVhVvOLz9kOv0sktIobdxiWzswbsKPpoyMVJV50GPw3THPo
 1G2bIXSbaAC4y6lmbT67ET3bF1GchC3cMwsZ8J+msq4XSM6a3y7TCnjC5
 8pwnAmCTb/taQcDniOkbYCWiLWkc3vsf9iJEdWUNXRfbjgcuCnGiqlRiY
 J9uX/Z5gqs+rMz7cpXsys0c75kZFmejhPStO68esk2YRPC7Am9Y63VcNq
 NfshqCo06Tb5plPS8krVnRZ/36obAjosKvh+fws8oGCgOQAPVt13EDBKZ
 h69e/4cfNFNkJCjijlwKORTF7wWbx2t7Q2NrrSZkVoQlbTk8tbGybST6e w==;
X-CSE-ConnectionGUID: 4aENkeLcSmuDcN81NFRFlw==
X-CSE-MsgGUID: PtPdq73ATZmeY4TLSfFeOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39906722"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="39906722"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:45:53 -0800
X-CSE-ConnectionGUID: XvvSvI93Q4SJmTAKVP1eBA==
X-CSE-MsgGUID: cM7G0lbaQZuljw17runk8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112601082"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 11 Feb 2025 23:45:51 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/8] drm_i915_private to intel_display cleanup
Date: Wed, 12 Feb 2025 13:15:34 +0530
Message-Id: <20250212074542.3569452-1-suraj.kandpal@intel.com>
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

This series started as a cleanup to convert as many drm_i915_private
to intel_display in intel_display_debug_fs but overflowed and ended up
cleaning intel_dpll_mgr.c part of the code too and some other places
calling these functions. This series also replaces IS_PLATFORM()
with display->platform.xx to reduce drm_i915_private usage.
Some stuff that kept me from removing i915_private altogether were
PCH checks.

--v2
-Rebase

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (8):
  drm/i915: Use intel_display wherever possible
  drm/i915/dpll: Change param to intel_display in for_each_shared_dpll
  drm/i915/dpll: Use intel_display for dpll dump and compare hw state
  drm/i915/dpll: Use intel_display possible in shared_dpll_mgr hooks
  drm/i915/dpll: Use intel_display for asserting pll
  drm/i915/dpll: Use intel_display for update_refclk hook
  drm/i915/dpll: Accept intel_display as argument for shared_dpll_init
  drm/i915/dpll: Replace all other leftover drm_i915_private

 .../drm/i915/display/intel_crtc_state_dump.c  |    3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  130 +--
 drivers/gpu/drm/i915/display/intel_display.c  |   30 +-
 .../drm/i915/display/intel_display_debugfs.c  |  173 +--
 .../drm/i915/display/intel_display_driver.c   |    4 +-
 .../i915/display/intel_display_power_well.c   |   13 +-
 drivers/gpu/drm/i915/display/intel_dkl_phy.c  |   54 +-
 drivers/gpu/drm/i915/display/intel_dkl_phy.h  |    9 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   11 +-
 drivers/gpu/drm/i915/display/intel_dpll.h     |    5 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1010 ++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   27 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   16 +-
 drivers/gpu/drm/i915/display/intel_fdi.h      |    7 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |    7 +-
 .../drm/i915/display/intel_modeset_setup.c    |    4 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   45 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   34 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |   12 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.h    |   10 +-
 20 files changed, 799 insertions(+), 805 deletions(-)

-- 
2.34.1

