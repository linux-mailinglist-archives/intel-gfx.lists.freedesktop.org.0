Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A37707782FA
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 23:58:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CAC010E186;
	Thu, 10 Aug 2023 21:58:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C60410E186
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 21:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691704683; x=1723240683;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OmReyKgDkSYjbtEd6kLoINrE+E9MA4VT8zTyWRN6Wkc=;
 b=RT6r44lrayE125SyJhbB4LbIPyfn6Z7Y3jkJthOdCoMB9AJq+lGHWsdo
 H117iCTp4oHBD0fVkg12bX7/WLr+QfFoKw4DViraRSR4cgtr9vBqFXuuD
 j3DKmXDHOrNd/MlmvjXVKCrGwRUT7QYEMU9p9QW2pycVWix0ZM4RjfMfM
 wa1i0aLQLzEoa/4zjGrYOMbGlvFU/pWQE5lVFxDZjPB3piOKqy0tZV0c3
 Ah2ssgXoUOBbn3qbY2cJN84uBYRcHYu7lw8JboTJDAtPUcVD299Brxg/9
 u9JEev2V++XQs80eaMs9z4Y3oheqOWvk8Tyktb+4JK5UwihLsOAyXNpHY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="369004768"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="369004768"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 14:58:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="875905521"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 14:58:05 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 14:57:51 -0700
Message-ID: <20230810215750.3609161-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/9] Reduce MTL-specific platform checks
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Starting with MTL, the hardware moved to a disaggregated IP design where
graphics, media, and display are supposed to be treated independently of
the base platform that they're incorporated into.  For driver logic that
is conditional on these IPs, the code should be checking the IP versions
(as read from the GMD_ID registers) rather than trying to match on a
specific platform (e.g., MTL).  It's possible that these IPs could show
up again, without changes, on future non-MTL platforms, or that the
current MTL platform could be extended to include new IP versions in
future SKUs or refreshes; making sure our driver's conditions are
handled appropriately future-proofs for both of these cases.

Going forward, conditions like IS_METEORLAKE should be very rare in the
driver; in most places our logic will be conditional upon the IP rather
than the base platform.

v2:
 - Rework macros slightly; new IP range and stepping range macros can be
   used with both GFX or MEDIA rather than needing separate macros for
   each IP.  (Tvrtko, Gustavo)
 - Fix a > that should have been a >=.  (Gustavo)
 - Split non-inheritance of media workarounds by future platforms into
   its own patch.  (Gustavo)
 - Extra documentation comments

v3:
 - Switch back to separate long-form gfx and media macros with no macro
   pasting.  (Jani)
 - Move GT-specific macros from intel_drv.h to intel_gt.h.  (Andi)
 - Replace two more IS_METEORLAKE() conditions with IP version checks.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>

Matt Roper (9):
  drm/i915: Consolidate condition for Wa_22011802037
  drm/i915/xelpmp: Don't assume workarounds extend to future platforms
  drm/i915/xelpg: Call Xe_LPG workaround functions based on IP version
  drm/i915: Eliminate IS_MTL_GRAPHICS_STEP
  drm/i915: Eliminate IS_MTL_MEDIA_STEP
  drm/i915: Eliminate IS_MTL_DISPLAY_STEP
  drm/i915/mtl: Eliminate subplatforms
  drm/i915/display: Eliminate IS_METEORLAKE checks
  drm/i915: Replace several IS_METEORLAKE with proper IP version checks

 drivers/gpu/drm/i915/display/intel_cdclk.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../drm/i915/display/intel_display_device.h   | 17 ++++
 drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  3 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 10 +-
 .../drm/i915/display/skl_universal_plane.c    |  5 +-
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  4 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      | 11 ++-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  4 +-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  2 +-
 .../drm/i915/gt/intel_execlists_submission.c  |  4 +-
 drivers/gpu/drm/i915/gt/intel_gt.h            | 50 ++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  7 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  5 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         | 20 +++-
 drivers/gpu/drm/i915/gt/intel_reset.h         |  2 +
 drivers/gpu/drm/i915/gt/intel_rps.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 92 ++++++++++---------
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  6 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  6 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  3 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               | 18 +---
 drivers/gpu/drm/i915/i915_perf.c              | 23 ++---
 drivers/gpu/drm/i915/intel_device_info.c      | 14 ---
 drivers/gpu/drm/i915/intel_device_info.h      |  4 -
 include/drm/i915_pciids.h                     | 11 +--
 32 files changed, 193 insertions(+), 150 deletions(-)

-- 
2.41.0

