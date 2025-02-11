Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 157BEA3090E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 11:49:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A319910E650;
	Tue, 11 Feb 2025 10:49:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EbqbPlzM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3369110E64F;
 Tue, 11 Feb 2025 10:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739270945; x=1770806945;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LPERHKTcMy+nFSkY01tU3WSC499SapKk0WzEgzQwN7k=;
 b=EbqbPlzMnfU6LKAbr6lH4rtQVaNKtloomzATtD0Dkza/t0NEcWe9DYui
 RO5YV6Rl2odN/4CnjXYbzPOZ3W8rQrX8NiOdJbP1HYIF+iotOcSXHWV1q
 jXfi1iSlFjzVQR+lFOyvyd+1ATN0FIgNjy9TfSJiImci0fJm7H8Y0idqy
 KSG0sQFx/yyJPI6bri+uUs1gTE4RudtJJalqvQDKmzuebl+IS+eOJqTpo
 6zIsK1fYKDb5cOfrBrWna0+4sbvriwK0dYrxcTvx1mwD5eYN1eH0StHby
 9TR4g+6zscHb+Cn84ed5LyScIb/XqPeOa6xaP7//tta0+guFgsKwMjRpk w==;
X-CSE-ConnectionGUID: Rj0k/LdXRmS8BsHXxuIs7A==
X-CSE-MsgGUID: GEldeIN+SSyY5chV8VN2LA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="57293162"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="57293162"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 02:49:05 -0800
X-CSE-ConnectionGUID: ZGchKaidSsyTYzDM/1JY2Q==
X-CSE-MsgGUID: +t4+LeQIQH+JD5I/EHfxiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="112991318"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa010.fm.intel.com with ESMTP; 11 Feb 2025 02:49:03 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/9] drm_i915_private to intel_display cleanup
Date: Tue, 11 Feb 2025 16:18:48 +0530
Message-Id: <20250211104857.3501566-1-suraj.kandpal@intel.com>
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

Suraj Kandpal (9):
  drm/i915/display_debug_fs: Use intel_display wherever possible
  drm/i915/display_debug_fs: Prefer using display->platform
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
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1011 ++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   27 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   16 +-
 drivers/gpu/drm/i915/display/intel_fdi.h      |    7 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |    7 +-
 .../drm/i915/display/intel_modeset_setup.c    |    4 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   45 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   36 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |   12 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.h    |   10 +-
 20 files changed, 799 insertions(+), 808 deletions(-)

-- 
2.34.1

