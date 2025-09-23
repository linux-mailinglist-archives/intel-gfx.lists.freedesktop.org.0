Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B874B95FF2
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 15:24:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3AC10E17F;
	Tue, 23 Sep 2025 13:24:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TuS/rMph";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24C1510E13C;
 Tue, 23 Sep 2025 13:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758633845; x=1790169845;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f233mUdntWINaVC4At77uIsA3YDP7hLiJwVV6IoQRsw=;
 b=TuS/rMphZeNksCYOkQbbetdNF5r6Nwisv3XPBYXLP5NoHQtutlDiB6Jd
 Q8B3kmye/b6TYWArmoEhXDiTIufCNkP0bPEKOJP0TULbz5PvOnOMwIZDE
 Ja8tXizQ+ETOlvGKkQ/t5N6sIusWPVNtQg0bOkgLEugjRf6kF2PeiZZa8
 FJEMwj+vXVfsmOF8kxrsEUeMJcaBDVeYXoxf4ujJdAJeK99uxGeS7quU+
 Xxv12VEnYDMvxzSTIhz8SaHU0g3x4v9hAFKl0kHUdu77/skYtw9WjUjQ0
 JXvT5loF0zOEisUjdirNrifknq5v2/Rv5ZihPtwp87evIqBdV/jPexQ5C Q==;
X-CSE-ConnectionGUID: s8yJ297YQiSxmnagDQ+e2A==
X-CSE-MsgGUID: +6u+MiI5TCykfnt2NmL6ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="48480522"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="48480522"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:05 -0700
X-CSE-ConnectionGUID: ZuONi9jeRJqY0xZpA5ZUWg==
X-CSE-MsgGUID: 6GQb6tNASqymPYUNj7sHiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207689539"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/9] Introduce set_context_latency and refactor VRR/DSB timing
 logic
Date: Tue, 23 Sep 2025 18:40:34 +0530
Message-ID: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (9):
  drm/i915/psr:
    s/intel_psr_min_vblank_delay/intel_psr_min_set_context_latency
  drm/i915/display: Add set_context_latency to crtc_state
  drm/i915/vrr: Use set_context_latency instead of
    intel_vrr_real_vblank_delay()
  drm/i915/vrr: Use SCL for computing guardband
  drm/i915/vrr: s/intel_vrr_vblank_delay/intel_vrr_scl_delay
  drm/i915/dsb:
    s/intel_dsb_wait_vblank_delay/intel_dsb_wait_for_delayed_vblank
  drm/i915/display: Wait for scl start instead of dsb_wait_vblanks
  drm/i915/reg_defs: Add REG_FIELD_MAX wrapper for FIELD_MAX()
  drm/i915/vrr: Clamp guardband as per hardware and timing constraints

 drivers/gpu/drm/i915/display/intel_color.c    |  2 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |  5 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 55 ++++++++-----
 .../drm/i915/display/intel_display_types.h    |  3 +
 drivers/gpu/drm/i915/display/intel_dsb.c      | 26 ++++++-
 drivers/gpu/drm/i915/display/intel_dsb.h      |  4 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  6 +-
 drivers/gpu/drm/i915/display/intel_psr.h      |  2 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 77 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_vrr.h      |  4 +-
 drivers/gpu/drm/i915/i915_reg_defs.h          | 10 +++
 12 files changed, 140 insertions(+), 56 deletions(-)

-- 
2.45.2

