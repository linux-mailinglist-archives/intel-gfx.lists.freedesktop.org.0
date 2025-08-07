Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E7AB1D6BA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 13:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3924510E816;
	Thu,  7 Aug 2025 11:32:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nw5VTPY3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3408810E7C9;
 Thu,  7 Aug 2025 11:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754566335; x=1786102335;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9NN/dgEsD/Mv4yGpwqknAbe0h5Yt6A/UXCDCkWtPajU=;
 b=Nw5VTPY3JGfWx68H6JsnbfKjTtDlazonZqr+3UaI5HeByIZgFeCaiy/6
 cQSCRrAw8feSAhFvLt57r00ct0ifIiwbylejS/eU4l8JdTWkeoR9y5Eus
 MZeF36pR80HokEKIfyxS4Et8lbPbh6qJKpL7Mli6oDZsTeIXm1/QpIIZ9
 GNe9jjoqiDqlmqhVt7aMgkWyH0SblstxBjaYdcC8KCyUFwQoFmfZK6rx1
 ZGTTDxIYE7Agvqjk+EflAFxVoj7PVeXAgxaSWHxKRxdD4Fn4Dw2vgBt/z
 45ZgPB+Nr3D3bZVKo1Qjhfl/ZbO0CcFEvfaUZVTyPkJmu907VapoZNh13 w==;
X-CSE-ConnectionGUID: tF7+TuRvTa6ROb0HCi0mVQ==
X-CSE-MsgGUID: pJcZqJokSIGofwQsw1fGyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67166668"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="67166668"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:29:45 -0700
X-CSE-ConnectionGUID: +L0RY7/mQ1SBUeL9TOPuyg==
X-CSE-MsgGUID: qFaALGy6S0OzgPXRNwDvvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="188716440"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:29:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/12] Optimize vrr.guardband and fix LRR
Date: Thu,  7 Aug 2025 16:45:36 +0530
Message-ID: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
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

Ankit 12):
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
  drm/i915/panel: Add helper to get highest fixed mode
  drm/i915/vrr: Fix seamless_mn drrs for PTL

 drivers/gpu/drm/i915/display/intel_alpm.c     |  15 ++
 drivers/gpu/drm/i915/display/intel_alpm.h     |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  | 174 +++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h  |   8 +
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  49 +++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 drivers/gpu/drm/i915/display/intel_panel.c    |  13 +
 drivers/gpu/drm/i915/display/intel_panel.h    |   2 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 227 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h      |   3 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |   5 +
 drivers/gpu/drm/i915/display/skl_scaler.h     |   3 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |  89 +------
 drivers/gpu/drm/i915/display/skl_watermark.h  |   1 +
 15 files changed, 491 insertions(+), 103 deletions(-)

-- 
2.45.2

