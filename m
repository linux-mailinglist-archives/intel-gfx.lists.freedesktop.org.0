Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D629B9987D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 13:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E243610E6FC;
	Wed, 24 Sep 2025 11:05:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jdhAKhNC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BFE810E6EF;
 Wed, 24 Sep 2025 11:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758711935; x=1790247935;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sYx9RUdDxSk/iOMFvHRtPy/Dphh9EPsESQkYsd9kNG4=;
 b=jdhAKhNCoef8O/N2AL7Ubp4Nh2bXsZvYHWCID6LyksH9DWuBkaxHczlN
 HPxNHnPuI0UbCbYYuHzITkEXc8HW4x6bMEa9x0mAcIuBQ3K1Rvea9WmdX
 FieFtzXS4j9q/H/CD6/tvIdo4RsXPLItyl9soYEr/20pXG/SxiDQn0Qzf
 4cx1mPy6PbjTgcBZSrfwtSwofYfwdHODxriv50EBPHWDcrwfhQu3kSO+X
 KzpV3zRoeff/uVycltm0S2b9CUl2bxogoPmTcWW0Z3Ji2iL7V2LoHppHr
 IcsSxjVVgPAEMejqDcbsogdNsox+KLi7g9BYOaZhN1u9tlWKnRhFNpFpr Q==;
X-CSE-ConnectionGUID: D0VEAzPMT5SbWIOdP4UHpA==
X-CSE-MsgGUID: mT7SuXAxRO6BtRJqRxsYdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71247823"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="71247823"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:04:52 -0700
X-CSE-ConnectionGUID: hWI62uNaTEi8b9ytBW30uw==
X-CSE-MsgGUID: 5LFpjjzQSAS/+5DgE75rpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176944076"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:04:49 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/9] Introduce set_context_latency and refactor VRR/DSB timing
 logic
Date: Wed, 24 Sep 2025 16:21:20 +0530
Message-ID: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
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

This patch series refactors VRR and DSB timing logic by introducing
explicit handling of Set Context Latency (SCL) the number of lines required
before double buffering to safely program display registers, aka W2 Window.

Previously, SCL was handled implicitly via vblank delay calculations. This
was a hinderance for later work to optimize guardband length. This series
formalizes SCL as `set_context_latency` in `intel_crtc_state`, enabling
consistent tracking and timing/delay computation across platforms.

- Introduces `set_context_latency` to track SCL explicitly.
- Refactors VRR evasion and DSB wait logic to use SCL directly.
- Clamps guardband values based on hardware limits and timing constraints.
- Renames helpers for clarity and removes legacy delay logic.

Rev2: Address comments from Ville:
- Handle SCL for TGL better and meld patch with previous patch.
- Drop patch to use set context latency in evasion logic.
- Add patch to introduce REG_FIELD_MAX based on FIELD_MAX.
- Added new helper to wait for SCL start and end lines.
- Other minor refactoring suggested in comments.

Rev3:
- Drop patch to rename vrr_vblank_delay and instead add a patch to
  replace it directly with crtc_state->set_context_latency. (Ville)
- Fix few places where adjusted_mode->crtc_vdisplay was missed. (Ville)
- Minor refactoring to make the helpers consistent with other parts.

Ankit Nautiyal (9):
  drm/i915/psr:
    s/intel_psr_min_vblank_delay/intel_psr_min_set_context_latency
  drm/i915/display: Add set_context_latency to crtc_state
  drm/i915/vrr: Use set_context_latency instead of
    intel_vrr_real_vblank_delay()
  drm/i915/vrr: Use SCL for computing guardband
  drm/i915/dsb:
    s/intel_dsb_wait_vblank_delay/intel_dsb_wait_for_delayed_vblank
  drm/i915/display: Wait for scl start instead of dsb_wait_vblanks
  drm/i915/reg_defs: Add REG_FIELD_MAX wrapper for FIELD_MAX()
  drm/i915/vrr: Clamp guardband as per hardware and timing constraints
  drm/i915/display: Drop intel_vrr_vblank_delay and use
    set_context_latency

 drivers/gpu/drm/i915/display/intel_color.c    |  2 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |  5 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 58 +++++++++----
 .../drm/i915/display/intel_display_types.h    |  3 +
 drivers/gpu/drm/i915/display/intel_dsb.c      | 24 +++++-
 drivers/gpu/drm/i915/display/intel_dsb.h      |  4 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  6 +-
 drivers/gpu/drm/i915/display/intel_psr.h      |  2 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 86 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_vrr.h      |  3 +-
 drivers/gpu/drm/i915/i915_reg_defs.h          | 10 +++
 12 files changed, 143 insertions(+), 62 deletions(-)

-- 
2.45.2

