Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E79B1B4FA
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 15:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8246010E47A;
	Tue,  5 Aug 2025 13:34:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gfgdIUnN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A8FF10E455;
 Tue,  5 Aug 2025 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754400863; x=1785936863;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dYQ88Dqfmg41RzaR52pwQbKnGMuvi8UYzk2dNxt25Bg=;
 b=gfgdIUnNt4AgmDRKpZR8iB4/7M5CbdTqTozywdMsImwm6OWVWBrmAgl1
 6r71xNuo9TmCcipM7JAcG1UlVingCqVVIBb7jQ29/3JVCHEjHK28+AR+W
 +NCGC33IHB3iNVCZbXYaF/RHBKbY1Izr49JfflJo3sAm66C1Lr2LbVbcl
 N/MWSei/7mgUqwWI8P7V7vmx4YlRd7AL8L7TC2fFqjLcg/FvuFshh+req
 izQZzZYio89U1MmKrh+2XJQvhE+EWJN2lFJIcyoEECV3ALJoFMCUtknzW
 e6rO3/2AN3Z18plLhpV88BzvuURzcdPmKLlz9v+9UwGDavhhz1g0lWCG1 g==;
X-CSE-ConnectionGUID: 3Kx3MFhNStWfEz/XKImbkQ==
X-CSE-MsgGUID: CCPAnIqmSP+GjrIroCkqzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="67768927"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="67768927"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:34:22 -0700
X-CSE-ConnectionGUID: VC3qa/41RcyyMnk1OcdFwQ==
X-CSE-MsgGUID: DrH4zinKQqiN4q4RRE8/qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164915363"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:34:13 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/13] Optimize vrr.guardband and fix LRR
Date: Tue,  5 Aug 2025 18:50:03 +0530
Message-ID: <20250805132016.1250202-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (13):
  drm/i915/skl_watermark: Fix the scaling factor for chroma subsampling
  drm/i915/skl_watermark: Add bounds check for scaler array access
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
  drm/i915/panel: Add helper to get highest fixed mode
  drm/i915/vrr: Fix seamless_mn drrs for PTL

 drivers/gpu/drm/i915/display/intel_alpm.c    |  15 ++
 drivers/gpu/drm/i915/display/intel_alpm.h    |   2 +
 drivers/gpu/drm/i915/display/intel_display.c | 174 +++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h |   8 +
 drivers/gpu/drm/i915/display/intel_dp.c      |  49 +++-
 drivers/gpu/drm/i915/display/intel_dp.h      |   2 +
 drivers/gpu/drm/i915/display/intel_panel.c   |  13 ++
 drivers/gpu/drm/i915/display/intel_panel.h   |   2 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 226 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vrr.h     |   3 +-
 drivers/gpu/drm/i915/display/skl_scaler.c    |   5 +
 drivers/gpu/drm/i915/display/skl_scaler.h    |   3 +
 drivers/gpu/drm/i915/display/skl_watermark.c |  89 +-------
 drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
 14 files changed, 489 insertions(+), 103 deletions(-)

-- 
2.45.2

