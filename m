Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D215B526BE
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 04:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87DF010E165;
	Thu, 11 Sep 2025 02:59:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VcPDcP9G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41C7F10E065;
 Thu, 11 Sep 2025 02:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757559565; x=1789095565;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WOrCpWTA9G8jqzeXUHnvdUsCrs4FI9cgowXOUM46cg8=;
 b=VcPDcP9GpL5p+NkC2YidMEkua/66bABbY5OTmkXYLnArcsIo0rmBr0Kc
 2IU90UVRL6uDS1/euUt4r8ZEmOey3DzVh8KipfTnRhe2OuWFw9hMRLUho
 7fsp1ivEskEHd5MmL/bdvJ4wXXbYt9J4rqROyoJI+Uv5PAB3a+Om9F+3J
 nPAeLTg7fInsMZWdeCOOUAgF3ndFsVUdtIyPTxepY5DwxcJ0cTD2nTGMz
 HYhBvMeA/Qi2VpDhsyvJxLtt2tLwoDpBOqQBlyc/2vey60G2xjsIPZZOO
 2VcVGgLwT9d7T9rw5L3P05VXhs5MkQIoivgZyd36g07Q4wqw1FgJDSDhH Q==;
X-CSE-ConnectionGUID: 1LFWt14qRq2FTKh4z35v4A==
X-CSE-MsgGUID: NHcwB9nxRfauUgjvj1tA1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="85327049"
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="85327049"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 19:59:25 -0700
X-CSE-ConnectionGUID: rpX1rsYeQ7ijL0qEtjS1rg==
X-CSE-MsgGUID: PZYnC6LBSWq3ia1u0Xez0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="173955484"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 19:59:23 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/15] Optimize vrr.guardband and fix LRR
Date: Thu, 11 Sep 2025 08:15:39 +0530
Message-ID: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (15):
  drm/i915/vrr: Use crtc_vsync_start/end for computing
    vrr.vsync_start/end
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
  drm/i915/display: Use vrr.guardband to derive vblank_start
  drm/i915/vrr: Introduce helper to compute min static guardband
  drm/i915/display: Use optimized guardband to set vblank start
  drm/i915/panel: Refactor helper to get highest fixed mode
  drm/i915/vrr: Fix seamless_mn drrs for PTL

 drivers/gpu/drm/i915/display/intel_alpm.c     |  15 +
 drivers/gpu/drm/i915/display/intel_alpm.h     |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  | 236 ++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  63 +++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   3 +
 drivers/gpu/drm/i915/display/intel_panel.c    |  11 +-
 drivers/gpu/drm/i915/display/intel_panel.h    |   3 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 272 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vrr.h      |  10 +
 drivers/gpu/drm/i915/display/skl_scaler.c     |   5 +
 drivers/gpu/drm/i915/display/skl_scaler.h     |   3 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |  89 +-----
 drivers/gpu/drm/i915/display/skl_watermark.h  |   1 +
 14 files changed, 586 insertions(+), 129 deletions(-)

-- 
2.45.2

