Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EED7B8D4FB
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Sep 2025 06:49:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45D1E10E331;
	Sun, 21 Sep 2025 04:49:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aPpm8elq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3C1A10E325;
 Sun, 21 Sep 2025 04:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758430140; x=1789966140;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=x+qRx5j2Jla0NlcvpTcBqk+3BL6rOCjcEZOx4uFaaDw=;
 b=aPpm8elqAtjZnOD5NS8QSz4lKtNoZhQdkummGj+sJ6Y9lZDW7/5hCQCC
 nl3/h9RvSjGvsUQPh5D6GIG1xpAzUTgxd+HvFdqCsxU+tSqwKBwY312c1
 pv1ZZTfGnJugNIAGVJE2LSXzrLh2CLiA3hQe70t3zXwxx31WzjBqJFNFT
 LQdKCz7MplhhsS5+GSpNJxgUZ8bjQO/gzIqYGyaUWooS+kPg4gnVp778P
 Tk5uQRPpv0ONiajE2S7CRhBKPQNs2CkoOgRGL1323ghmgKKf0z+MIScFg
 Ue/wZ3JWBJKTxlBX41Xsjs9SsIvPsv2b/WfEWMX0ukW+/d2voub2j0BTK Q==;
X-CSE-ConnectionGUID: l4B3TCTMS2aBBx7haB49/Q==
X-CSE-MsgGUID: 24pUds2lS6iSXgzClF6rIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11559"; a="72154725"
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="72154725"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:00 -0700
X-CSE-ConnectionGUID: 4hv8AcrUSniIDMFWzuju4A==
X-CSE-MsgGUID: Bg+8I1D0S8+/AkjUQdsLbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="176097691"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:48:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/9] Introduce set_context_latency and refactor VRR/DSB timing
 logic
Date: Sun, 21 Sep 2025 10:05:26 +0530
Message-ID: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (9):
  drm/i915/psr:
    s/intel_psr_min_vblank_delay/intel_psr_min_set_context_latency
  drm/i915/display: Add set_context_latency to crtc_state->vrr
  drm/i915/display: Use VBLANK_START to get the vblank delay for TGL
  drm/i915/vrr: Use set_context_latency instead of
    intel_vrr_real_vblank_delay()
  drm/i915/vrr: s/intel_vrr_vblank_delay/intel_vrr_scl_delay
  drm/i915/display: Use set context latency in evasion logic
  drm/i915/dsb:
    s/intel_dsb_wait_vblank_delay/intel_dsb_wait_for_scl_lines
  drm/i915/display: Wait for scl start instead of dsb_wait_vblanks
  drm/i915/vrr: Clamp guardband as per hardware and timing constraints

 drivers/gpu/drm/i915/display/intel_color.c    |  2 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |  5 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 43 ++++++++++-----
 .../drm/i915/display/intel_display_types.h    |  3 ++
 drivers/gpu/drm/i915/display/intel_dsb.c      | 35 ++++++++----
 drivers/gpu/drm/i915/display/intel_dsb.h      |  6 ++-
 drivers/gpu/drm/i915/display/intel_psr.c      |  6 +--
 drivers/gpu/drm/i915/display/intel_psr.h      |  2 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  9 +---
 drivers/gpu/drm/i915/display/intel_vblank.h   |  1 -
 drivers/gpu/drm/i915/display/intel_vrr.c      | 54 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_vrr.h      |  2 +-
 12 files changed, 109 insertions(+), 59 deletions(-)

-- 
2.45.2

