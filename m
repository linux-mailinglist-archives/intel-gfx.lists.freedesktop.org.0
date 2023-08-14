Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5589377C13F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 22:06:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFD9010E0DE;
	Mon, 14 Aug 2023 20:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E5D510E0D0
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 20:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692043601; x=1723579601;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=g/0WX+ao6dldC5J5CgUIaaD6Ct9N4tbf2BwnrJU9wmk=;
 b=eHeGLwmlMDKqQ+d92Jn1eHegcVuItb+Gl8FFlDmyr1tojPA3en+GFc5p
 xOB9Prm20Cd730iZ2gdDDfluF2h/YTo//RwLfB5OMNpjqhclI7JttomlE
 t1x4aZsewR3TuauvAlZT3pX4NC+tr5YP5aY9w/+dVm6oZeKTIInEQPLtk
 VvQ0RvgWCl7C66uWCEXAqLbPebWv6dSVsC34m/FORsImIA4ZwjWFC+Pyj
 /+DdRHS1sqRsPOeirBjNHyTzpq/rEpXzd4zaKBHSvXbhl5QGOU3uuCii4
 E5blP/QdOR4p6dEJ9bgYwLXJ47hQYM+K+T5EiCal/3rrE6R7mi+9RM4Oz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="369602860"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="369602860"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 13:06:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="683420476"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="683420476"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 13:06:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 13:06:33 -0700
Message-ID: <20230814200632.56105-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/9] Reduce MTL-specific platform checks
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
 .../drm/i915/display/intel_display_device.h   | 22 +++++
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
 drivers/gpu/drm/i915/gt/intel_gt.h            | 58 ++++++++++++
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
 32 files changed, 206 insertions(+), 150 deletions(-)

-- 
2.41.0

