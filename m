Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5926B29B0B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 09:45:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 556FC10E3E2;
	Mon, 18 Aug 2025 07:45:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="etOJz3hF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A55F110E3E1;
 Mon, 18 Aug 2025 07:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755503132; x=1787039132;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Nr6eLR56M1luSdAzvhuW34oOQKWuUI6tLt999GUOicI=;
 b=etOJz3hFfb0sS1NUFKA9dJIRQFNA0plLeol4uKJja1LE3/e1IK6bzwYV
 LImfqwC75xL88oDtZsuKnsZrTm9AZiFoSla+GemhSTuyynCRokle9JTzq
 fuBXL2uLVUGEnG+QaGuTlDfiIetTfgajCpr5TKHxJtUkGVxZUXU9/F6w+
 i4sXOrAfz10zDllH88x3II8VAw7RpWwFI7yHAoogBbDOHM40XzeJpEi1s
 MxyhBMJcVuA26P/ti3kDAksdFKKQuB/AMIrSIEb5Fo9qM59+ByJMmXmAP
 DLcBURiE35t+qVrLJsuQyDn8Ta5KeLAyQQs+wp+P6WS2T11S2mI2kfTrG w==;
X-CSE-ConnectionGUID: zcRIdGeESrytTbAG7l+ZlA==
X-CSE-MsgGUID: Ji2HCgDvTpS6n/8c8Lr9NA==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="61347885"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="61347885"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 00:45:32 -0700
X-CSE-ConnectionGUID: 79Qq713lQm++5ricLHDbGw==
X-CSE-MsgGUID: s60swxDRRICOAH8VrjcNTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="167121915"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 00:45:31 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/12] Optimize vrr.guardband and fix LRR
Date: Mon, 18 Aug 2025 13:01:16 +0530
Message-ID: <20250818073128.2319762-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (12):
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
  drm/i915/vrr: Use static guardband to support seamless LRR switching
  drm/i915/panel: Refactor helper to get highest fixed mode
  drm/i915/vrr: Fix seamless_mn drrs for PTL

 drivers/gpu/drm/i915/display/intel_alpm.c     |  15 ++
 drivers/gpu/drm/i915/display/intel_alpm.h     |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  | 178 +++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h  |   8 +
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  63 ++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 drivers/gpu/drm/i915/display/intel_panel.c    |  11 +-
 drivers/gpu/drm/i915/display/intel_panel.h    |   3 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 227 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h      |   3 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |   5 +
 drivers/gpu/drm/i915/display/skl_scaler.h     |   3 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |  89 +------
 drivers/gpu/drm/i915/display/skl_watermark.h  |   1 +
 15 files changed, 495 insertions(+), 116 deletions(-)

-- 
2.45.2

