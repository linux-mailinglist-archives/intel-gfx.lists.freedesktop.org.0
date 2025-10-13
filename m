Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F59BD30D4
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 14:49:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48CC710E0C2;
	Mon, 13 Oct 2025 12:49:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mqguW9+c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A578210E0C2;
 Mon, 13 Oct 2025 12:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760359748; x=1791895748;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uKO/xpIOaCG4nRvIBQnQe0dFw6RZFtnwshPUShAdsw4=;
 b=mqguW9+cScmkGEou2VFKELiXj0JW7PcxkR3apYHi5sspp1eggm0Y+tPt
 yYqaRvn12NTUlIRvEJ3H+6eHFxhJRKcvcQLWv1t0cKq9N/4YfvBoMhefw
 yxLYbU+8ewfb3BEOg7EtYhgDnTMW+SAOiaaozHxoq4jkHkrV4bpZgWBOQ
 FJd3fX3+FTX8a922Jqy7B5cuNwyYrOLqBxqRg94X7xNzk+RIUYZkSVCp+
 zM8CBpO4mzBK3BmJkD5T2sKEifMzfwkEezkHGYx6vltKm4BMX2RRBAZE0
 1S/dThb46XsklbtrtxeH8LfsdhbSUvP6e3eU/2vbQDMRhxDi782k6UQod g==;
X-CSE-ConnectionGUID: WocqUN5aThaAMBsx3HcwpA==
X-CSE-MsgGUID: 2H4asKnuSFuBd869J1vNUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11580"; a="85121147"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="85121147"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 05:49:08 -0700
X-CSE-ConnectionGUID: urEHRU5uRxC+AsXjK9d+dg==
X-CSE-MsgGUID: y5nUEzGoSyeh8WeO7VEFIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="182026832"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 05:49:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/8] Preparatory patches for guardband optimization
Date: Mon, 13 Oct 2025 18:05:51 +0530
Message-ID: <20251013123559.1055429-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Handle few cases which will need changes when guardband will no longer
be matched to vblank length.
- Fix the vblank_start evaluation.
- Fix PSR wake latency checks wrt to guradband.

Rev 2: PSR went through some changes recently, rebase the patches on latest
PSR changes.

Rev 3: Address comments from Ville and Jouni:
- Add a patch to move intel_dpll_crtc_compute_clock() early in the
  function.
- Merge patch to adjust vblank_start and the readout changes.
- Fix agument to alpm_config_valid()
- Add documentation for retionale behind PSR late-stage configuration.

Ankit Nautiyal (8):
  drm/i915/vrr: Use crtc_vsync_start/end for computing
    vrr.vsync_start/end
  drm/i915/display: Move intel_dpll_crtc_compute_clock early
  drm/i915/vrr:
    s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
  drm/i915/vblank: Add helper to get correct vblank length
  drm/i915/psr: Consider SCL lines when validating vblank for wake
    latency
  drm/i915/display: Check if final vblank is sufficient for PSR features
  drm/i915/vrr: Recompute vblank_start for platforms with always-on VRR
    TG
  drm/i915/display: Add vblank_start adjustment logic for always-on VRR
    TG

 drivers/gpu/drm/i915/display/intel_ddi.c     |   3 +
 drivers/gpu/drm/i915/display/intel_display.c |  18 +-
 drivers/gpu/drm/i915/display/intel_dp.c      |   9 +
 drivers/gpu/drm/i915/display/intel_dp.h      |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c     | 167 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h     |   2 +
 drivers/gpu/drm/i915/display/intel_vblank.c  |  10 ++
 drivers/gpu/drm/i915/display/intel_vblank.h  |   2 +
 drivers/gpu/drm/i915/display/intel_vrr.c     |  26 ++-
 drivers/gpu/drm/i915/display/intel_vrr.h     |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c |   3 +-
 11 files changed, 184 insertions(+), 61 deletions(-)

-- 
2.45.2

