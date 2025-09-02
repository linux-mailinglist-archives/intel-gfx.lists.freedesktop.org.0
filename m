Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37ECAB3F417
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 07:02:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88E9010E58D;
	Tue,  2 Sep 2025 05:02:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R4L8xZcN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCC0B10E57F;
 Tue,  2 Sep 2025 05:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756789369; x=1788325369;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kDZkTw1AXgZkoXyQNjRRoWA1bWT2ZzQxXQhD3PTLSUk=;
 b=R4L8xZcND1auw7WP6TaX3KX4ChWFNsNykCx/eQQWcYUBf6Nn/9xNDmgZ
 ve8KWG7eRqnODfMSLFNonsdTZ+OvgY6qdqCr+or8gZQOvsMxWLAsh6Yb7
 jcgwGS4Lr7DmGxx2sakER455AmHwlqTJ/AYP/XCE0Vilmo0nD51bWlb7q
 RcnBC4AyPsJLIGyH/QsFda7eIcseuE5e8lSs3DNhfMUsTKbfGFiPIyRM4
 HN6czp+eFQX1+ylUMr/BC+aYAJio0cFHnaZztkCN10+p+GebzpHXL4RQE
 PGOyPujbbzOuR1KBSzSiW/XUxWgwGTwZfWznDJ/d9WzBXq09T+agjAY8b A==;
X-CSE-ConnectionGUID: K8PnKmxAQIai3WjmXU47Iw==
X-CSE-MsgGUID: 1vmRw4WtSbGL+8hDVpq+9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="70151933"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="70151933"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 22:02:45 -0700
X-CSE-ConnectionGUID: DMFUsF3sRsyyork9HQ4aNw==
X-CSE-MsgGUID: J0HfA4I6T5Sh7a3i8Lb0FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="175537285"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 22:02:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/13] Optimize vrr.guardband and fix LRR
Date: Tue,  2 Sep 2025 10:18:52 +0530
Message-ID: <20250902044905.3446011-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Instead of setting vrr.guardband to vblank, use optimal guardband that
works for most of the cases. This will help in avoiding need of change
in guardband and fix the LRR feature that needs seamless switching to
a lower refresh rate.

First few patches fix/refactor and extract common functions required for
dsc/scaler prefill time computation. Later patches use these helpers to
compute an optimized guardband.

Also, for seamless_mn where vtotal is same but mode clock is changed to
seamlessly switch to lower rate, re-compute the vrr timings.

Few things that still need work:
-The timestamps corresponding with next start of vactive still need to be
fixed with the new scheme.
-Re-enabling CMRR

Rev2:
-Address comments from Mitul.
-Extract helpers for dsc/scaler prefill latencies.
-Fix downscaling factor for chroma subsampling.
-Use missing pkg C max latency.
-Fix guardband computation for seamless mn, always use vblank for
higher resolution.

Rev3:
-Drop patches for computing and storing PSR/Panel Replay wake times
latencies and use existing helpers to compute these in intel_alpm.c.
-Drop patch to change the Vmin as it was not required.

Rev4:
-Rebase
-Drop patch for checking bounds for scaler array access.
-Use a new flag for setting vrr timings for seamless drrs.

Rev5:
-Address comments from Mitul, Jani:
-Refactor few helpers for computing latencies.
-Rename the helper to check the guardband to intel_crtc_guardband_atomic_check()
-Refactor the helper intel_panel_highest_mode().

Rev6:
-Rebase
-Address review comments from Mitul.
-Improve documentation for and other minor fixes in Patch#12

Rev7:
-Address comments from Jani.
-Move the latency helpers from intel_display.c to intel_vrr.c and rename
the helpers appropriately.
-Drop redundant check for HAS_VRR with intel_vrr_possible().

Rev8:
-Fix CI issues.
-For fixed RR wait for delayed vblank before dsb interrupt.

Ankit Nautiyal (13):
  drm/i915/skl_watermark: Fix the scaling factor for chroma subsampling
  drm/i915/skl_watermark: Pass linetime as argument to latency helpers
  drm/i915/skl_scaler: Introduce helper for chroma downscale factor
  drm/i915/display: Extract helpers to set dsc/scaler prefill latencies
  drm/i915/dp: Add SDP latency computation helper
  drm/i915/alpm: Add function to compute max link-wake latency
  drm/i915/vrr: Use vrr.sync_start for getting vtotal
  drm/i915/display: Add guardband check for feature latencies
  drm/i915/skl_watermark: Remove redundant latency checks from vblank
    validation
  drm/i915/display: Wait for delayed vblank for fixed rr
  drm/i915/vrr: Use static guardband to support seamless LRR switching
  drm/i915/panel: Refactor helper to get highest fixed mode
  drm/i915/vrr: Fix seamless_mn drrs for PTL

 drivers/gpu/drm/i915/display/intel_alpm.c     |  15 +
 drivers/gpu/drm/i915/display/intel_alpm.h     |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  | 145 ++++++++-
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  63 +++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 drivers/gpu/drm/i915/display/intel_dsb.c      |  17 ++
 drivers/gpu/drm/i915/display/intel_dsb.h      |   3 +
 drivers/gpu/drm/i915/display/intel_panel.c    |  11 +-
 drivers/gpu/drm/i915/display/intel_panel.h    |   3 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 276 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vrr.h      |  11 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |   5 +
 drivers/gpu/drm/i915/display/skl_scaler.h     |   3 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |  89 +-----
 drivers/gpu/drm/i915/display/skl_watermark.h  |   1 +
 16 files changed, 528 insertions(+), 120 deletions(-)

-- 
2.45.2

