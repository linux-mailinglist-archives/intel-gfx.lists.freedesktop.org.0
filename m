Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18149AB0921
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 06:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6120C10E29E;
	Fri,  9 May 2025 04:28:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="noXGg7MX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E29CF10E21A;
 Fri,  9 May 2025 04:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746764882; x=1778300882;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NWy8t0L7+AgoMGVOZiMm1+yvelgnl2pH15wEWomm5Jg=;
 b=noXGg7MX0w+TjIX/zXDjzB2da9kG/sENjd73AOLAM9Q4zqkgaV0Dp3sk
 3s8wotTx0OBBM9DuKuTtWPJ5sw/lzrj/pQJwMDSP1r4eTYUxJLA3tQkVz
 rCj/iuE2j7NhSZukroQQrnt+w7L6iotJxAH0DJEdqbpck0aSLSK7Sfi91
 jG+NTmAMnFNhs0dWIyhG5TVccP78Ar1ovqWpcRWTg+cuUmZE3YmEW6c7o
 k6zFAHz8yTjM11HIYRkkpVHQ0r3g3TkAvx2ScrRkJHgkZsMtoZyAdUccl
 e+eE0/w3MZGItmHdvkTCbvfZAz5+wpQ0Zj5vLkTBIUJf/1B77FY2+hK5e w==;
X-CSE-ConnectionGUID: aOTh+kg3RRW4+LRulqoZLA==
X-CSE-MsgGUID: 47QEoCEeTd2kclEvdnL+MQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="58793984"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="58793984"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:28:02 -0700
X-CSE-ConnectionGUID: BMm0MOhSR8apn5UrWAVXag==
X-CSE-MsgGUID: sbwFUIsnRGut4FvLRbIn7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="137430472"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 08 May 2025 21:28:00 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 00/18] DPLL framework redesign 
Date: Fri,  9 May 2025 09:57:11 +0530
Message-Id: <20250509042729.1152004-1-suraj.kandpal@intel.com>
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

--v4
-Rebase

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (18):
  drm/i915/dpll: Rename intel_dpll
  drm/i915/dpll: Rename intel_dpll_funcs
  drm/i915/dpll: Rename intel_shared_dpll_state
  drm/i915/dpll: Rename macro for_each_shared_dpll
  drm/i915/dpll: Rename intel_shared_dpll_funcs
  drm/i915/dpll: Rename intel_shared_dpll
  drm/i915/dpll: Move away from using shared dpll
  drm/i915/dpll: Rename crtc_get_shared_dpll
  drm/i915/dpll: Change argument for enable hook in intel_dpll_funcs
  drm/i915/drm: Rename disable hook in intel_dpll_global_func
  drm/i915/dpll: Introduce new hook in intel_dpll_funcs
  drm/i915/dpll: Add intel_encoder argument to get_hw_state hook
  drm/i915/dpll: Change arguments for get_freq hook
  drm/i915/dpll: Rename intel_[enable/disable]_dpll
  drm/i915/dpll: Rename intel_unreference_dpll__crtc
  drm/i915/dpll: Rename intel_<release/reserve>_dpll
  drm/i915/dpll: Rename intel_compute_dpll
  drm/i915/dpll: Rename intel_update_active_dpll

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  70 +-
 drivers/gpu/drm/i915/display/intel_ddi.h      |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  22 +-
 .../gpu/drm/i915/display/intel_display_core.h |  12 +-
 .../drm/i915/display/intel_display_debugfs.c  |   4 +-
 .../drm/i915/display/intel_display_driver.c   |   2 +-
 .../drm/i915/display/intel_display_types.h    |   8 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  60 +-
 drivers/gpu/drm/i915/display/intel_dpll.h     |   4 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 768 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  83 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
 .../drm/i915/display/intel_modeset_setup.c    |  10 +-
 .../drm/i915/display/intel_modeset_verify.c   |   4 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  20 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   4 +-
 18 files changed, 552 insertions(+), 531 deletions(-)

-- 
2.34.1

