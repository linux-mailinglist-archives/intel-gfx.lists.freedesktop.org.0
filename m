Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5FDB1A380
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 15:38:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82F4610E536;
	Mon,  4 Aug 2025 13:38:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eo8T+9WW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F64C10E525;
 Mon,  4 Aug 2025 13:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754314722; x=1785850722;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k/Z0JCbEE4r6x/ENMcCfWy213EHuG8fSMrolKR3tj1Q=;
 b=eo8T+9WWw3LCQ0ZymbvKaBENFHztu/biL/1iiPwlJ60QL/5Xiyzt4PPu
 JEeN0APVHJdSsfHrdolhQrpVcozAMe4PfGEfwMGslblFTg3hcaCFJDNXy
 BJ9mgiBvsKiRetc9tEHvxrm7l2vIj5yzfkkU2bGrZttPVLsOrz33tWGvS
 JJEXCOf5w6uMqM9QLEh9w5g8b+1oWGZZwv58CTHE2oYJ8iHLVQDhceFsT
 fYaqgR72P0urCaZWXxOuP860zyT25H2eyQCUQjb7pZKxKAW2ys6CKd0v2
 +0wc6w/LrjHDRG1uyghsqnmNfCmBV2P1DX8fFv+J1ug5F3hkjar+iaoYk A==;
X-CSE-ConnectionGUID: XRrszuIsQ3CBKYLxM1+K9A==
X-CSE-MsgGUID: zBG5ddtrQgaetO3dZR9PSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56447369"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56447369"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:40 -0700
X-CSE-ConnectionGUID: DNNl8FIHQFaDvPSMnMZA7g==
X-CSE-MsgGUID: xvdBMUhIS/u4twlICXm+bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163430627"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:38 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/15] Optimize vrr.guardband and fix LRR
Date: Mon,  4 Aug 2025 18:54:25 +0530
Message-ID: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (15):
  drm/i915/skl_watermark: Fix the scaling factor for chroma subsampling
  drm/i915/skl_watermark: Add bounds check for scaler array access
  drm/i915/skl_watermark: Pass linetime as argument to latency helpers
  drm/i915/skl_scaler: Introduce helper for chroma downscale factor
  drm/i915/display: Extract helpers to set dsc/scaler prefill latencies
  drm/i915/dp: Add SDP latency computation helper
  drm/i915/psr: Add function to compute max link-wake latency
  drm/i915/psr: Store max PSR2/Panel Replay latency in crtc_state
  drm/i915/vrr: Use vrr.sync_start for getting vtotal
  drm/i915/display: Add guardband check for feature latencies
  drm/i915/skl_watermark: Remove redundant latency checks from vblank
    validation
  drm/i915/vrr: Use static guardband to support seamless LRR switching
  drm/i915/vrr: Set vrr.vmin to min Vtotal
  drm/i915/panel: Add helper to get highest fixed mode
  drm/i915/vrr: Fix seamless_mn drrs for PTL

 drivers/gpu/drm/i915/display/intel_display.c  | 174 +++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h  |   8 +
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  53 +++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 drivers/gpu/drm/i915/display/intel_panel.c    |  13 +
 drivers/gpu/drm/i915/display/intel_panel.h    |   2 +
 drivers/gpu/drm/i915/display/intel_psr.c      |  64 +++++
 drivers/gpu/drm/i915/display/intel_psr.h      |   3 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 265 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vrr.h      |   3 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |   5 +
 drivers/gpu/drm/i915/display/skl_scaler.h     |   2 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |  89 +-----
 drivers/gpu/drm/i915/display/skl_watermark.h  |   1 +
 15 files changed, 570 insertions(+), 115 deletions(-)

-- 
2.45.2

