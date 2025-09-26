Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 937ABBA27FB
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 08:12:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D07D10E331;
	Fri, 26 Sep 2025 06:12:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TjOPJg2o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E504410E327;
 Fri, 26 Sep 2025 06:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758867176; x=1790403176;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UFsRg7IsugnupSex5rR/e1gmOJuQwRPR1rMcPYmWczY=;
 b=TjOPJg2oy3Kduxlby4q7IkxY2ey0vGy5pHld1vgkHmI9OxikdunzV9eS
 D7Krz/90LV4xGIOls9wuCedbyZ2j2gklh2IWmTz1Wwgo+zVKurLJgHcfP
 iYu1x2gS2nDCnROLeELEv0XllM8LdHeSH2nd94yNUR4ZfgVoJX2By3z4e
 olkbSoz6n5xzYvOxJ2qVTVPXokTIHeRgwboaWDZ39Ufr8pIpRy6tCIvSX
 V4k5ZeX89NPZVBBn5NlRv249QgG8ubd224U7qGYDSCoI/iaGYbzvF63U9
 RrUtE+NI7g/7t7Pp+SBp8djLTpqEUupIntKv2JvZDpvuhd2f1kwhjhJ3E Q==;
X-CSE-ConnectionGUID: N5tBIsdVRpKYPB3FFqjJTw==
X-CSE-MsgGUID: /47SC4K1TyqEwCMWnpxB2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65007582"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65007582"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:12:56 -0700
X-CSE-ConnectionGUID: 4DIEBjpXQGS4POeSXL4jtg==
X-CSE-MsgGUID: pKOZ/pXDSECWifXvZvE8iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="177092809"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:12:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/14] Optimize vrr.guardband and fix LRR
Date: Fri, 26 Sep 2025 11:29:21 +0530
Message-ID: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
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

Rev9:
-Fix vrr.vsync_start/end timings for 3D modes (patch#1)
-Rewrite the patch to wait for delayed vblank before dsb interrupt
(patch #11)
-Fix the flipline and vmin timings with optimized guardband (patch#12)

Rev10:
-Address comments from Ville: Use min guardband computation for setting
the vblank delay and set the crtc_vblank_start to delayed vblank.
(Patch#13)
-Modify the TRANS_SET_CONTEXT_LATENCY as per new guardband and use
vrr.guardband to readback vblank_start. (Patch#11)

-From previous revision:
->Drop patch#11 "drm/i915/dsb: Align flipdone with delayed vblank using
guardband wait", as this is no longer required.
->Modify Patch#12 "drm/i915/vrr: Use static guardband to support seamless
LRR switching" to only introduce a helper to compute the fix guardband.
Modify the commit message and the subject.

Rev11:
-Drop patches that are no longer required:
 -Patch for clamping SCL.
 -Patch to use vrr.vsync to compute vtotal
-Use guardband check for all platforms supporting VRR. (Patch#8)
-Add new patch to determine when to use optimized guardband. (Patch#11)
 Use optimized guardband whenever the VRR TG is active.
-Separate out patch to recompute the vblank start for optimized
 guardband. (Patch#12)

Ankit Nautiyal (14):
  drm/i915/vrr: Use crtc_vsync_start/end for computing
    vrr.vsync_start/end
  drm/i915/skl_watermark: Fix the scaling factor for chroma subsampling
  drm/i915/skl_watermark: Pass linetime as argument to latency helpers
  drm/i915/skl_scaler: Introduce helper for chroma downscale factor
  drm/i915/display: Extract helpers to set dsc/scaler prefill latencies
  drm/i915/dp: Add SDP latency computation helper
  drm/i915/alpm: Add function to compute max link-wake latency
  drm/i915/display: Add guardband check for feature latencies
  drm/i915/skl_watermark: Remove redundant latency checks from vblank
    validation
  drm/i915/vrr: Introduce helper to compute min static guardband
  drm/i915/vrr: Use optimized guardband when VRR TG is active
  drm/i915/vrr: Prepare for movement of vblank start for optimized
    guardband
  drm/i915/display: Recompute crtc_vblank_start for optimized guardband
  drm/i915/display: Use optimized guardband to set vblank start

 drivers/gpu/drm/i915/display/intel_alpm.c    |  15 ++
 drivers/gpu/drm/i915/display/intel_alpm.h    |   2 +
 drivers/gpu/drm/i915/display/intel_display.c | 211 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.c      |  47 +++++
 drivers/gpu/drm/i915/display/intel_dp.h      |   2 +
 drivers/gpu/drm/i915/display/intel_vdsc.c    |  17 ++
 drivers/gpu/drm/i915/display/intel_vdsc.h    |   4 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 149 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h     |   3 +
 drivers/gpu/drm/i915/display/skl_scaler.c    |  21 ++
 drivers/gpu/drm/i915/display/skl_scaler.h    |  10 +
 drivers/gpu/drm/i915/display/skl_watermark.c |  89 +-------
 drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
 13 files changed, 478 insertions(+), 93 deletions(-)

-- 
2.45.2

