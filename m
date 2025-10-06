Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DAFBBD0A5
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 06:42:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAE3210E298;
	Mon,  6 Oct 2025 04:42:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gex+4hLw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A45A410E298;
 Mon,  6 Oct 2025 04:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759725727; x=1791261727;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ftOrusE/pyXjxytN2lw8eGy1/Pcf2wpjG481A8BaySI=;
 b=Gex+4hLwaIjezhdtYtewRLRRs86tuniTJWxzltfHuN/42e6hP9aeOFe/
 ZdKT7/+t6VukLNLdvSvECQ7gAo1aW3P0kIxr1MkOl+BmFSAoADyqaRfS5
 q/UnnSxD1+acjmK49lIyoNZgrpPQMWCBBFyc9rHbqvHfTynWQI8SFr2sB
 YkiOZ8hmnFEFHVr/mZDgtyYBq++rICimvJN4yem0fEGYVO0OZwZ1Nb8OW
 2Q4BB11QSYxhCZwOOiu4D6NitL7LlbViKPQPQf8dZZI72GumbvMU9jEtK
 Uo87dTA8mZZbMLG1CqPSyShvdoXvIDnXhg9eHQ/hZsSclndpdVYcbnzO/ g==;
X-CSE-ConnectionGUID: UxcadX1OQ/qebLHaHcmDkg==
X-CSE-MsgGUID: VltV1ek8QQ6EUSAZnW0PnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11573"; a="61996407"
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="61996407"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:06 -0700
X-CSE-ConnectionGUID: 6B7TJf0VQ32JhHYeYQzXow==
X-CSE-MsgGUID: 68233WzfQLmD7CsH86HGZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="179062990"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 00/16] Optimize vrr.guardband and fix LRR
Date: Mon,  6 Oct 2025 09:58:36 +0530
Message-ID: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
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

Rev13:
-Address review comments from Ville.
-Change vblank_start only for platforms that have
 intel_vrr_always_use_vrr_tg == true. For others add the adjustement.
-Separate the patches to enable optimized guardband:
 - Patch#15 enables the optimized guardband only for
   intel_vrr_always_use_vrr_tg == true.
 - Patch#16 enables it for all relavant platforms.

Ankit Nautiyal (16):
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
  drm/i915/vrr:
    s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
  drm/i915/vblank: Add helper to get correct vblank length
  drm/i915/vrr: Recompute vblank_start for platforms with always-on VRR
    TG
  drm/i915/display: Add vblank_start adjustment logic for always-on VRR
    TG
  drm/i915/vrr: Introduce helper to compute min static guardband
  drm/i915/display: Use optimized guardband for always-on VRR TG
  drm/i915/vrr: Use optimized guardband when VRR TG is active

 drivers/gpu/drm/i915/display/intel_alpm.c    |  15 ++
 drivers/gpu/drm/i915/display/intel_alpm.h    |   2 +
 drivers/gpu/drm/i915/display/intel_display.c | 195 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.c      |  47 +++++
 drivers/gpu/drm/i915/display/intel_dp.h      |   2 +
 drivers/gpu/drm/i915/display/intel_pfit.c    |  11 +-
 drivers/gpu/drm/i915/display/intel_psr.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_vblank.c  |  10 +
 drivers/gpu/drm/i915/display/intel_vblank.h  |   2 +
 drivers/gpu/drm/i915/display/intel_vdsc.c    |  17 ++
 drivers/gpu/drm/i915/display/intel_vdsc.h    |   4 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 154 ++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h     |   3 +-
 drivers/gpu/drm/i915/display/skl_scaler.c    |  21 ++
 drivers/gpu/drm/i915/display/skl_scaler.h    |  10 +
 drivers/gpu/drm/i915/display/skl_watermark.c |  92 +--------
 drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
 17 files changed, 485 insertions(+), 104 deletions(-)

-- 
2.45.2

