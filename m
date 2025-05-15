Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF2CAB7EA2
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 09:18:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C303210E770;
	Thu, 15 May 2025 07:18:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="APtKUtYg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AE7910E06C;
 Thu, 15 May 2025 07:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747293509; x=1778829509;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nx2Z2fz7XOKdND3H//usvs6zowRQPmkBf4ksgFya8YI=;
 b=APtKUtYg9agMhLbTf+y+bGaE1fVYkER+5hxDpZUwq89GYbsSQzpr4+u0
 276IJOHNqAyoqGr6cY4EZICrPcFpsW2AYIp+AmUen2RAjexptcqRZn8Af
 iHv3MtIqWh+aOq8At0Zg3vKIwpaiCujvC2I0p4hHXUXtYxmjjcVlLhbjG
 LtgvaAtSqMDxQDjwKdu05DYZCai7Ud0GNwcJc79hRBgQykfUoZ7bGPK6h
 pFIYLxQ6c8O3jqUeO5A0YNU+muRkwcuPwQ0NLSfz63n75M1bodv57whoj
 xJwmzRkl9/BTQK6ZuHAkE10cJvtkp+84ZkOzG4GajqAP/Fw/OQWRXAZWs g==;
X-CSE-ConnectionGUID: EXSzO6AqR8SwBgHLSKOwVQ==
X-CSE-MsgGUID: ZWD1bDVWTW+3s5QcQoPFqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="48901318"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="48901318"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 00:18:28 -0700
X-CSE-ConnectionGUID: E5DRW1OBT3apPFaSbqaomw==
X-CSE-MsgGUID: /QbwG4K6S9u38qeUjG68GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="142290285"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa003.fm.intel.com with ESMTP; 15 May 2025 00:18:25 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 00/14] DPLL framework redesign 
Date: Thu, 15 May 2025 12:47:47 +0530
Message-Id: <20250515071801.2221120-1-suraj.kandpal@intel.com>
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
was done since the existing API didn't really work for us.
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
We also rename some functions in intel_dpll_mgr to start with
intel_dpll_* in an effort to make sure all exported functions
have the filename at the start.

--v4
-Rebase

--v5
-Break series and send the controvertial patch next patch series
of this redesign

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (14):
  drm/i915/dpll: Rename intel_dpll
  drm/i915/dpll: Rename intel_dpll_funcs
  drm/i915/dpll: Rename intel_shared_dpll_state
  drm/i915/dpll: Rename macro for_each_shared_dpll
  drm/i915/dpll: Rename intel_shared_dpll_funcs
  drm/i915/dpll: Rename intel_shared_dpll
  drm/i915/dpll: Move away from using shared dpll
  drm/i915/dpll: Rename crtc_get_shared_dpll
  drm/i915/dpll: Rename intel_[enable/disable]_dpll
  drm/i915/dpll: Rename intel_unreference_dpll_crtc
  drm/i915/dpll: Rename intel_reference_dpll_crtc
  drm/i915/dpll: Rename intel_<release/reserve>_dpll
  drm/i915/dpll: Rename intel_compute_dpll
  drm/i915/dpll: Rename intel_update_active_dpll

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  68 +--
 drivers/gpu/drm/i915/display/intel_ddi.h      |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  22 +-
 .../gpu/drm/i915/display/intel_display_core.h |  12 +-
 .../drm/i915/display/intel_display_debugfs.c  |   4 +-
 .../drm/i915/display/intel_display_driver.c   |   2 +-
 .../drm/i915/display/intel_display_types.h    |   8 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  60 +-
 drivers/gpu/drm/i915/display/intel_dpll.h     |   4 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 537 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  80 +--
 drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
 .../drm/i915/display/intel_modeset_setup.c    |  10 +-
 .../drm/i915/display/intel_modeset_verify.c   |   4 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  20 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   4 +-
 18 files changed, 423 insertions(+), 424 deletions(-)

-- 
2.34.1

