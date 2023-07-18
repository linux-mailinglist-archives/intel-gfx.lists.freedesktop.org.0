Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 411A7758864
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 00:28:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E05410E06C;
	Tue, 18 Jul 2023 22:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2012810E06C
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 22:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689719280; x=1721255280;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DDWgXc1VSjLJf1xE5YQPuS9cGz7fXJfnZtbaFfWtktw=;
 b=GeWI7q38BCkKRjWG1s/3peyv4yHEuzl2qP2ODf+5Cz5ZuEvaPOaH43As
 Hbm6gPI957aD7OUaUgg8lIr2qO+trEbeJu2VjSr0FqrIC3tIKGaeGAdis
 mlA0D44Ccl/j0EAlK0cZ+GXoKrhzb7E7+b1SmpXiVlQnnj+UTRm2J6FkK
 SKbfxKNR/G8G1ghWGhjhPQ0LIQ0namUJjWkUu565ChYDrU9ZHFMGk0O3V
 32c+VgAM+Bp92eFUo54kCne/TeJcpaUgiU5rCLYX+kWiED9Uy5G5UEvUx
 apu3nLqE7ArSyR1oAGgxvAY8rETn4VsNzJw80YxE0GfEGr3aF07x+4dPe A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="432508067"
X-IronPort-AV: E=Sophos;i="6.01,215,1684825200"; d="scan'208";a="432508067"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 15:27:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="970403878"
X-IronPort-AV: E=Sophos;i="6.01,215,1684825200"; d="scan'208";a="970403878"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 15:27:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 15:27:54 -0700
Message-ID: <20230718222753.1075713-10-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] Reduce MTL-specific platform checks
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
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 matthew.d.roper@intel.com
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

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Matt Roper (8):
  drm/i915: Consolidate condition for Wa_22011802037
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
 .../drm/i915/display/intel_display_device.h   |  5 ++
 drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  3 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 10 +--
 .../drm/i915/display/skl_universal_plane.c    |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     |  4 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  9 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  4 +-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  2 +-
 .../drm/i915/gt/intel_execlists_submission.c  |  4 +-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  8 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  3 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         | 21 ++++-
 drivers/gpu/drm/i915/gt/intel_reset.h         |  2 +
 drivers/gpu/drm/i915/gt/intel_rps.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 90 ++++++++++---------
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 10 +--
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  6 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               | 31 ++++---
 drivers/gpu/drm/i915/i915_perf.c              | 23 ++---
 drivers/gpu/drm/i915/intel_device_info.c      | 14 ---
 drivers/gpu/drm/i915/intel_device_info.h      |  4 -
 include/drm/i915_pciids.h                     | 11 +--
 31 files changed, 146 insertions(+), 148 deletions(-)

-- 
2.41.0

