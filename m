Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94908B47966
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Sep 2025 09:46:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F401010E194;
	Sun,  7 Sep 2025 07:46:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P1y2N1k0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E74310E01F;
 Sun,  7 Sep 2025 07:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757231189; x=1788767189;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5oJe7JghhyzquHioHTnopfGe7g388WPZ93/SUAMRUgs=;
 b=P1y2N1k0pOKLLGA34Po/7eJf+1vaj6FnXh/SDy+KwF6gt/qjTBSREa70
 2Vo165o+UTUTX2UyWPi6pLma0gTbjWAr9hJVJKUSTsiFkLzUsbJWfXcz1
 xTBRoSZFvGq+IovDhUyW0+gUN7JCkdL7KxB6Hw2u896S4XZkj4/AVVXJ0
 XjgGpe1ePE4hibMbODqctbfMOQ85ABU+7YmF4yuDC0c7ecf+pfIJ/DNMP
 C7KxavYWqLWVGWwvun0RimI9fFt1YgGI6B3gti3jYMmJwWMOnSvLi3wi2
 tBKwyM1HOLiYN+kZmKXM4aXhLW89GCbe0Z/p6L3OY8px7aEw13NIX3xmS g==;
X-CSE-ConnectionGUID: Hx8+OcgWS5m+iWe8Kett1A==
X-CSE-MsgGUID: wz45pxP5SoK9U+Ebzp9jNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11545"; a="70220280"
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="70220280"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 00:46:15 -0700
X-CSE-ConnectionGUID: Fxi9m6d0T/6OlKUl8vf/4A==
X-CSE-MsgGUID: FFMxZnGvRpe4ZbTviaEceQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="176873915"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 00:46:13 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/14] Optimize vrr.guardband and fix LRR
Date: Sun,  7 Sep 2025 13:02:27 +0530
Message-ID: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (14):
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
  drm/i915/dsb: Align flipdone with delayed vblank using guardband wait
  drm/i915/vrr: Use static guardband to support seamless LRR switching
  drm/i915/panel: Refactor helper to get highest fixed mode
  drm/i915/vrr: Fix seamless_mn drrs for PTL

 drivers/gpu/drm/i915/display/intel_alpm.c     |  15 +
 drivers/gpu/drm/i915/display/intel_alpm.h     |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  | 145 ++++++++-
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  63 +++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 drivers/gpu/drm/i915/display/intel_dsb.c      |  16 +
 drivers/gpu/drm/i915/display/intel_dsb.h      |   3 +
 drivers/gpu/drm/i915/display/intel_panel.c    |  11 +-
 drivers/gpu/drm/i915/display/intel_panel.h    |   3 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 275 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vrr.h      |  11 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |   5 +
 drivers/gpu/drm/i915/display/skl_scaler.h     |   3 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |  89 +-----
 drivers/gpu/drm/i915/display/skl_watermark.h  |   1 +
 16 files changed, 524 insertions(+), 122 deletions(-)

-- 
2.45.2

