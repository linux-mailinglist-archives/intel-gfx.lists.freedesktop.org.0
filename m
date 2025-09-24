Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F40B9A3D1
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 16:29:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE59610E22F;
	Wed, 24 Sep 2025 14:29:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jL6sQHSc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 697BB10E22F;
 Wed, 24 Sep 2025 14:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758724148; x=1790260148;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WqzD/CIgeV8zdv2paOZAWS+2BpQdWuIZhf3sdgkwdPQ=;
 b=jL6sQHScWeEGcJrRPtnwTGk/OhKLyQD+sxnQ2QeVommPdgYvIY1LgcR2
 HZa8swIn+SbGI5qLIVucjirP0E5g/R2dBSjdQoIph09kZhA6hb4T5lXIQ
 ZNAxX4avJ7DLuN4M3zQBHT+STe2bxCkkz7aL//3kXADDdz2IzYKaZZ+dh
 Ea4Is4W+rQ51DYEle4QrGfGZv3GbxObWN1SpE3xwYuv6N+iUnCw3ZVze+
 9LzcHXpor5+sioN8hf7e89wO4AuHTizx03lwQHU1CVRAYznU202jwVHSY
 v4RAX6ea2iV7YzTuXc1C9+XTxhejUXMAgyY7OdvZ/IHOLyJsSmxoO0ZGf w==;
X-CSE-ConnectionGUID: x/t1rGyDSqOZzb3fzlOc4w==
X-CSE-MsgGUID: 1Od9YzZASaapmMWY3FgGAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="61075905"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="61075905"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:29:07 -0700
X-CSE-ConnectionGUID: DQGTUlqnQButdvEcwdDNMw==
X-CSE-MsgGUID: LxGGpq9KQ4GEDyMngiED9w==
X-ExtLoop1: 1
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:29:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/10] Introduce set_context_latency and refactor VRR/DSB
 timing logic
Date: Wed, 24 Sep 2025 19:45:32 +0530
Message-ID: <20250924141542.3122126-1-ankit.k.nautiyal@intel.com>
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

Rev4:
- Add new Patch#10 to drop the single-use dsb_vblank_delay(). (Ville)
- Minor changes as suggested in comments in Patch#8.

Ankit Nautiyal (10):
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
  drm/i915/dsb: Inline dsb_vblank_delay() into
    intel_dsb_wait_for_delayed_vblank()

 drivers/gpu/drm/i915/display/intel_color.c    |  2 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |  5 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 58 ++++++++-----
 .../drm/i915/display/intel_display_types.h    |  3 +
 drivers/gpu/drm/i915/display/intel_dsb.c      | 54 +++++++-----
 drivers/gpu/drm/i915/display/intel_dsb.h      |  4 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  6 +-
 drivers/gpu/drm/i915/display/intel_psr.h      |  2 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 84 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_vrr.h      |  3 +-
 drivers/gpu/drm/i915/i915_reg_defs.h          | 10 +++
 12 files changed, 152 insertions(+), 81 deletions(-)

-- 
2.45.2

