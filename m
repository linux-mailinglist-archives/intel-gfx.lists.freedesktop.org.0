Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E64D1A789EE
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 10:32:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7883F10E6E7;
	Wed,  2 Apr 2025 08:31:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TAxoRJLr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DECD510E6E7;
 Wed,  2 Apr 2025 08:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743582719; x=1775118719;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7Nro3Kt5T98u2kBTp0Ke4xL8KpRhzraXAjkF9HcOezg=;
 b=TAxoRJLrtqkUR9AutPetQSVJ2qeztXtuwwk2qBVCyjqq6fXGFu8TLhwd
 Ov3bvQuqChh90d6gCeNKk4PiEkKNEfL/ahLSbs5oS9ygOe5B0wVd1deCs
 ju1p3u7tDBBhPeXn7AywLmz8A8QfPbqgk11eLFgBmwVLzGSo75oHxoadl
 Ywe/U/pTbp3folxRb6TaJO7+mUzd6TLPXxfWIsopd0xigJMJcFljQ1MTS
 1Ei0mWqsnOwfm9HqLEBAVQgSsSWTq3Dv48STs314QWSDVFom+N+X8F2qZ
 ZR9LDAZfeS6quTX4IZW2JipNzJ6MhgcNvmMoZ45QRa6nwpk16X96/RDVK A==;
X-CSE-ConnectionGUID: 26wh5nPiTNaXZUIkKAgcYQ==
X-CSE-MsgGUID: VtASP2s7TyuDSbql3JPsdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44828650"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="44828650"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 01:31:59 -0700
X-CSE-ConnectionGUID: vAMePBL1TnWp1p2ossy29w==
X-CSE-MsgGUID: YRwmTLk0Saem2JUvEnX6/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="126612266"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2025 01:31:55 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 00/16] DPLL framework redesign 
Date: Wed,  2 Apr 2025 14:01:48 +0530
Message-Id: <20250402083204.1523470-1-suraj.kandpal@intel.com>
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
We also rename some functions in intel_dpll_mgr to start with
intel_dpll_* in an effort to make sure all exported functions
have the filename at the start.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (16):
  drm/i915/dpll: Rename intel_shared_dpll_state
  drm/i915/dpll: Rename macro for_each_shared_dpll
  drm/i915/dpll: Rename intel_shared_dpll_funcs
  drm/i915/dpll: Rename intel_shared_dpll
  drm/i915/dpll: Move away from using shared dpll
  drm/i915/dpll: Rename crtc_get_shared_dpll
  drm/i915/dpll: Change argument for enable hook in
    intel_global_dpll_funcs
  drm/i915/drm: Rename disable hook in intel_dpll_global_func
  drm/i915/dpll: Introduce new hook in intel_dpll_global_func
  drm/i915/dpll: Add intel_encoder argument to get_hw_state hook
  drm/i915/dpll: Change arguments for get_freq hook
  drm/i915/dpll: Rename intel_[enable/disable]_global_dpll
  drm/i915/dpll: Rename intel_unreference_dpll_global_crtc
  drm/i915/dpll: Rename intel_<release/reserve>_dpll_globals
  drm/i915/dpll: Rename intel_compute_dpll_globals
  drm/i915/dpll: Rename intel_update_active_dpll

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  70 +-
 drivers/gpu/drm/i915/display/intel_ddi.h      |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  22 +-
 .../gpu/drm/i915/display/intel_display_core.h |   4 +-
 .../drm/i915/display/intel_display_debugfs.c  |   4 +-
 .../drm/i915/display/intel_display_driver.c   |   2 +-
 .../drm/i915/display/intel_display_types.h    |   8 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  30 +-
 drivers/gpu/drm/i915/display/intel_dpll.h     |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 707 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  79 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
 .../drm/i915/display/intel_modeset_setup.c    |  10 +-
 .../drm/i915/display/intel_modeset_verify.c   |   4 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  20 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   4 +-
 18 files changed, 500 insertions(+), 478 deletions(-)

-- 
2.34.1

