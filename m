Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F48AA436F4
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:09:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578BB10E5A6;
	Tue, 25 Feb 2025 08:09:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S1+wGCFg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F29210E5A6;
 Tue, 25 Feb 2025 08:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740470973; x=1772006973;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pHiylMINcxoUkAE1LcsyFBF8pEHraRUG6KXj8vn/sjY=;
 b=S1+wGCFguuMCdPBeVthl5jLypBx1YL/ApNaYGi887BXm8tJYJNL/SnO/
 7BrxKbZPlP8JXvg5B25ym3Hao0sYwRWjLPMIWz/+u7DO//z4zp7HclOtT
 FE46manTnrWcQHyC4yTi2o+6dCwHOm3zdcwe2xYPWFHaz1Ia31VcERmn2
 3tu2uKvypu3iOQo3pwTiXSpO/NMEwViQYHBzrmbe1NBfz7P/re4oSPPyD
 kJs9fFyVYI24RHIRR3Q2wDK24mHgePDy62HazqeQxU3TxooqR6H1n5zho
 Zkeojn9xCQ8pJiQ9pZ+yHFSGEyq783l73fs0ObHF+/uRu8ud5jH8KwOhk g==;
X-CSE-ConnectionGUID: Xoe1kEdCTfmzVmLrYpzbpQ==
X-CSE-MsgGUID: Ld6ZftrsRjWDZexmb7aX0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="66634499"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="66634499"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:09:32 -0800
X-CSE-ConnectionGUID: CDT1rK1WRpGRH5uM8yqf5A==
X-CSE-MsgGUID: u+3nQaFhTmS35uf3+OAG6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116519206"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 25 Feb 2025 00:09:30 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 00/11] DPLL framework redesign 
Date: Tue, 25 Feb 2025 13:39:16 +0530
Message-Id: <20250225080927.157437-1-suraj.kandpal@intel.com>
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

Since MTL we moved away from using our existing DPLL framework this
was done since the existing API didnt really work for us.
This Redesing is a first part of two part series which will
redesign the current framework so that it can be used for
PLL/PHY enablement going forward.
Here we move away from the shared_dpll naming and also
change arguments for some functions which are needed for PLL
which have individual PHY keeping in mind that we don't break
any of the legacy stuff. When this gets approved and merged a
second series hooking up the SNPS PHY PLL API to this framework
will be posted. This is done to reduce the rework in case the
current design floated ends up getting changed during the review
process.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (11):
  drm/i915/dpll: Rename intel_shared_dpll_state
  drm/i915/dpll: Rename macro for_each_shared_dpll
  drm/i915/dpll: Rename intel_shared_dpll_funcs
  drm/i915/dpll: Rename intel_shared_dpll
  drm/i915/dpll: Move away from using shared dpll
  drm/i915/dpll: Rename crtc_get_shared_dpll
  drm/i915/dpll: Change argument for enable hook in
    intel_global_dpll_funcs
  drm/i915/drm: Rename disable hook in intel_dpll_global_func
  drm/i915/dpll: Introduce new hook in intel_global_dpll_func
  drm/i915/dpll: Add intel_encoder argument to get_hw_state hook
  drm/i915/dpll: Change arguments for get_freq hook

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  68 +-
 drivers/gpu/drm/i915/display/intel_ddi.h      |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  30 +-
 .../gpu/drm/i915/display/intel_display_core.h |   4 +-
 .../drm/i915/display/intel_display_debugfs.c  |   4 +-
 .../drm/i915/display/intel_display_driver.c   |   2 +-
 .../drm/i915/display/intel_display_types.h    |   8 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  30 +-
 drivers/gpu/drm/i915/display/intel_dpll.h     |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 693 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  67 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
 .../drm/i915/display/intel_modeset_setup.c    |  10 +-
 .../drm/i915/display/intel_modeset_verify.c   |   4 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  18 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   4 +-
 18 files changed, 489 insertions(+), 467 deletions(-)

-- 
2.34.1

