Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A704ABA69AF
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Sep 2025 09:19:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6725510E1E4;
	Sun, 28 Sep 2025 07:19:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LXlvxvwI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBDFB10E0E3;
 Sun, 28 Sep 2025 07:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759043943; x=1790579943;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=q7Gw20Q7EqsE6AyK0VD8wHKqVxnVKOSAY/LHYxKCLxI=;
 b=LXlvxvwIAfMYpSu6g7/tecIoRjAxNIO9T4bfrqkofZLtMAoUhk+F+dOt
 W1xaCews9ZxVFXzVpmveKbvo8Ch2ecVEmK/vYPQVajs1S00JEEbhwPftL
 iV+Mia5xU3clG7amdIOMn3gv1TaNjaZQCz1Jt1QN6CquCxDf49MpoRFLN
 XChAkZvIY650PjTce6C5tF5IofYJ/FKoYSgcQ3Ax/eKZoWKiYsAAztP8/
 djIr4ucOlJ8LL43I2qlWlBGSE31Paw7Q1/RadrdhV+lDACyiHMuads0PM
 pvfzqwFZki3+OEu/whfH23xZ4RXF8c0rfzEYhrKUKv5J++5idyX4IIdr8 Q==;
X-CSE-ConnectionGUID: 9lmVty6yS82GR+E6WZpz7w==
X-CSE-MsgGUID: +Co4m2RXRIKBZw6stPxXFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11566"; a="60528472"
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="60528472"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 00:19:01 -0700
X-CSE-ConnectionGUID: EKiagC5NRvWTIu/NFAHwtA==
X-CSE-MsgGUID: MG4N5UZzQnyXIeP7NZxS+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="215093997"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 00:19:00 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/15] Optimize vrr.guardband and fix LRR
Date: Sun, 28 Sep 2025 12:35:25 +0530
Message-ID: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
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

Rev12:
-Address issue with VRR for platforms which do not have VRR TG always
 active. For such platforms when switching to VRR, the vblank start is
 shifted for optimizing/reducing the guardband. This causes mismatch
 between old and new CRTC states and triggering unnecessary full modesets.
-Rename allow_vblank_delay_fastset() to allow_vblank_delay_fastset_lrr() to
 clarify its role in handling vblank delay via LRR codepaths. (Patch#14)
-Introduce allow_vblank_delay_fastset() to extend the logic and allow
 vblank delay when optimized guardband is used. (Patch#15)

Ankit Nautiyal (15):
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
  drm/i915/display:
    s/allow_vblank_delay_fastset/allow_vblank_delay_fastset_lrr
  drm/i915/display: Use optimized guardband to set vblank start

 drivers/gpu/drm/i915/display/intel_alpm.c    |  15 ++
 drivers/gpu/drm/i915/display/intel_alpm.h    |   2 +
 drivers/gpu/drm/i915/display/intel_display.c | 230 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.c      |  47 ++++
 drivers/gpu/drm/i915/display/intel_dp.h      |   2 +
 drivers/gpu/drm/i915/display/intel_vdsc.c    |  17 ++
 drivers/gpu/drm/i915/display/intel_vdsc.h    |   4 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 146 +++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h     |   3 +
 drivers/gpu/drm/i915/display/skl_scaler.c    |  21 ++
 drivers/gpu/drm/i915/display/skl_scaler.h    |  10 +
 drivers/gpu/drm/i915/display/skl_watermark.c |  89 +------
 drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
 13 files changed, 491 insertions(+), 96 deletions(-)

-- 
2.45.2

