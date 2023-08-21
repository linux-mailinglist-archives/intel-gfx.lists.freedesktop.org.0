Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C0B782FE8
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 20:06:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26EF410E111;
	Mon, 21 Aug 2023 18:06:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8311910E111
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 18:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692641190; x=1724177190;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xP8gqY/NMzLxKHr1P6nbUaUBRu1ccLXVac7Dv8Du1n0=;
 b=DNi3K/c84dQQPDsF3CwDqfCWyj1tx9tfSul/R3HxBRBi3qhqZAGeLy2O
 1hdOv+ARxEIW4y64cKqBwA9jKG6acJiWMRiDL12xWrhNWXcwvcaba75Sk
 dUuAdf1Bw1BF3AFxGh0VTuKt86GgrNvn+9PpXp6ScvjT+6uAvIkpxobrg
 WNm+XB7OWcDaPzqQKC4uVM0rVJRuy9HFAGvAYh1oqIXLFtyejo71CIUJz
 b5TvKJHduUq8U9W7NknlNRvmrwYdUHxwaJ7g3zjY0gVWyW9viPPIX75Sm
 1n/AztE4L2qpyeACxHmaiO8EKls8aJXr5pA7Dai4vVBMTUJj5giG6QQfv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="353236443"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="353236443"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 11:06:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="738995537"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="738995537"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 11:06:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Aug 2023 11:06:20 -0700
Message-ID: <20230821180619.650007-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/9] Reduce MTL-specific platform checks
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

v4:
 - Build IS_*_IP_STEP macros on top of existing range check and stepping
   check building blocks.  (Jani)
 - Fix parameters in comment examples.

v5:
 - Rebase on top of latest drm-tip changes.
 - Add NULL check to IS_MEDIA_GT_IP_RANGE() so that it can be used
   safely on i915->media_gt, even on platforms where that pointer may be
   NULL.  (Gustavo)
 - Leave the GuC/HuC compatibility check as MTL-specific since that
   seems to truly be a platform rather than IP limitation.  (Gustavo)
 - Tweak some macro comment documentation.  (Gustavo)

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
 .../drm/i915/display/intel_display_device.h   | 25 ++++++
 drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  3 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 10 +--
 .../drm/i915/display/skl_universal_plane.c    |  5 +-
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  4 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      | 11 +--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  4 +-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  2 +-
 .../drm/i915/gt/intel_execlists_submission.c  |  4 +-
 drivers/gpu/drm/i915/gt/intel_gt.h            | 63 +++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  7 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  5 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         | 20 ++++-
 drivers/gpu/drm/i915/gt/intel_reset.h         |  2 +
 drivers/gpu/drm/i915/gt/intel_rps.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 88 ++++++++++---------
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  6 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  6 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               | 18 +---
 drivers/gpu/drm/i915/i915_perf.c              | 26 ++----
 drivers/gpu/drm/i915/intel_device_info.c      | 14 ---
 drivers/gpu/drm/i915/intel_device_info.h      |  4 -
 include/drm/i915_pciids.h                     | 11 +--
 31 files changed, 210 insertions(+), 150 deletions(-)

-- 
2.41.0

