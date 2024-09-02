Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0C0968149
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 10:05:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94AE810E15D;
	Mon,  2 Sep 2024 08:05:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NUAPNSAf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B975910E066
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 08:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725264300; x=1756800300;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FDiym3FfsGhrKB1hQasqLwuvr8vOPOZZZjZ4Fm5nabM=;
 b=NUAPNSAfqleSb+ht7Ka6GafeNkvPrhSlYQAxLt1L0AOXtl+I8PFFMwWW
 EmkVkCh0M2sX/QnqM/98gQ7g5pwrH3d1bmyLZsBXDprxPZxVgxuGCtedA
 6qTok9K50LWkQ3lCOuLR9NEYSu3mTepLGMOO4Zhu5cWo64IomugwrhGig
 +jL0QrnZhJZZMVDbsSf3kwRWPMLS5CzBAkBIQTqc4OHQXfizXCnnk2mDM
 6dRasEKNGv1+16tte5br67Z8Ovfu7AqVvpwdw+zaDx6/NuSI7MZ7fn6+j
 E8teWsvdYGkwUBtijGbhOC/ePn+otlJnI1Ou7YDeIv1yPaykkYbmcfHqM g==;
X-CSE-ConnectionGUID: vlcEayQtTbiwaUAB651Zlw==
X-CSE-MsgGUID: s+WIqj2oRomYXAVt4xsEMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23967376"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23967376"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:00 -0700
X-CSE-ConnectionGUID: +nVIdAY+SIavkJwkor7GWg==
X-CSE-MsgGUID: 9mS4yuESRaiP8BJkuLEY6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="65039788"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:04:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 00/13] Use VRR timing generator for fixed refresh rate modes
Date: Mon,  2 Sep 2024 13:36:21 +0530
Message-ID: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
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

Even though the VRR timing generator (TG) is primarily used for
variable refresh rates, it can be used for fixed refresh rates as
well. For a fixed refresh rate the Flip Line and Vmax must be equal
(TRANS_VRR_FLIPLINE = TRANS_VRR_VMAX). Beyond that, there are some
dependencies between the VRR timings and the legacy timing generator
registers.

This series is an attempt to use VRR TG for fixed refresh rate.
For platforms XELPD+, always go with VRR timing generator for both fixed and
variable refresh rate cases.

Rev2:
-Added support from MTL+ and for HDMI too.
-Changed VRR VSYNC programming which is required for HDMI.
-Modified vrr compute config for bigjoiner case. (Still to be tested).

Rev3:
-Start support from XELPD+ as MTL needs a WA to have PSR +VRR (fixed
refresh rate)
-Add changes to enable PSR with VRR with fixed refresh rate.

Rev4:
-Addressed review comments from Mitul and rebased.

Rev5:
-Avoid MSA Ignore PAR timing enable bit for fixed refresh rate
with VRR TG.
-Skip VRR compute config for HDMI connected via DP-HDMI2.1 PCON.
-Print fixed_rr along with other VRR parameters in crtc state dump.
-Rebase

Ankit Nautiyal (13):
  drm/i915/dp: Avoid vrr compute config for HDMI sink
  drm/i915/dp: fix the Adaptive sync Operation mode for SDP
  drm/i915/display: Add member fixed_rr to denote Fixed refresh rate
    with VRRTG
  drm/i915/display: Enable MSA Ignore Timing PAR only when in not
    fixed_rr mode
  drm/i915/dp: Set FAVT mode in DP SDP with fixed refresh rate
  drm/i915/vrr: Compute vrr vsync if platforms support it
  drm/i915/hdmi: Use VRR Timing generator for HDMI
  drm/i915/display: Disable PSR before disabling VRR
  drm/i915/psr: Allow PSR for fixed refrsh rate with VRR TG
  drm/i915/vrr: Avoid sending PUSH when VRR TG is used with Fixed
    refresh rate
  drm/i915/vrr: Handle joiner with vrr
  drm/i915/vrr: Always use VRR timing generator for XELPD+
  drm/i915/display: Add fixed_rr to crtc_state_dump

 .../drm/i915/display/intel_crtc_state_dump.c  |  3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  8 +-
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 14 ++-
 .../drm/i915/display/intel_dp_link_training.c |  8 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  3 +
 drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 91 ++++++++++++-------
 9 files changed, 88 insertions(+), 45 deletions(-)

-- 
2.45.2

