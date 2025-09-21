Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEC8B8D50A
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Sep 2025 06:49:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CBAD10E33D;
	Sun, 21 Sep 2025 04:49:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S6UqSbgX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0864C10E33C;
 Sun, 21 Sep 2025 04:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758430149; x=1789966149;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VILKq3sikG2mxNpndt4V1/pJhFj3Bp1oYCRVSBb8Vl4=;
 b=S6UqSbgXkCKuWcYkWK5Hy1BakWTuzmJRpx8uHYqwjwyveXRfK269F533
 SgDnygLFvF7FZnqK2j7FAjwqFM6peyBkbtVsoOda2oWyoFkIO/oqe6gFj
 aDbhIrgwjLnOvhO29QURZPA+ZHdDEfeA3kHOtIjAT9CKju4u6/LuYUxuM
 JTDkr4SylXSjYqkf7RelJqraGJVcqSH6XpKIoVjWuOASOZPlKFs/eJwh/
 ews2/AbVEaiBglz9YS85M+u2EYKorpQZeeV9LkZzkWQe/deB7kVLVSFRv
 gBIR/U3ErqJ+Fit8QCQUetBJucZondpMW5A6XySMB59J/z6wTK5naJvz2 A==;
X-CSE-ConnectionGUID: WHOuqgfVSLi161tGylEgrQ==
X-CSE-MsgGUID: zJ81PGQ2SkOZEdFpCwtT4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11559"; a="72154740"
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="72154740"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:08 -0700
X-CSE-ConnectionGUID: pGHAbTZSQ4qVPP6Hgyg4Hw==
X-CSE-MsgGUID: RV6iURjwTRu0wxCW6nqvgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="176097718"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:06 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 5/9] drm/i915/vrr: s/intel_vrr_vblank_delay/intel_vrr_scl_delay
Date: Sun, 21 Sep 2025 10:05:31 +0530
Message-ID: <20250921043535.2012978-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
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

The helper intel_vrr_vblank_delay() is used to account for scl lines
+ extra_vblank_delay (for ICL/TGL case) for:
- evasion logic for vrr case
- to wait for SCL+ lines after send push operation.

Rename the helper to intel_vrr_scl_delay since we are interested in the
SCL+ lines for the VRR cases.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
 drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_vrr.h    | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index dee44d45b668..ca31e928ecb0 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -128,7 +128,7 @@ static int dsb_vblank_delay(struct intel_atomic_state *state,
 		 * scanline until the delayed vblank occurs after
 		 * TRANS_PUSH has been written.
 		 */
-		return intel_vrr_vblank_delay(crtc_state) + 1;
+		return intel_vrr_scl_delay(crtc_state) + 1;
 	else
 		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
 }
@@ -723,7 +723,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
 
 	if (pre_commit_is_vrr_active(state, crtc)) {
-		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
+		int vblank_delay = intel_vrr_scl_delay(crtc_state);
 
 		end = intel_vrr_vmin_vblank_start(crtc_state);
 		start = end - vblank_delay - latency;
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index c15234c1d96e..9441b7bacd27 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -681,7 +681,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 		else
 			evade->vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
 
-		vblank_delay = intel_vrr_vblank_delay(crtc_state);
+		vblank_delay = intel_vrr_scl_delay(crtc_state);
 	} else {
 		evade->vblank_start = intel_mode_vblank_start(adjusted_mode);
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 698b33b5b326..5fa86356a791 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -92,7 +92,7 @@ static int intel_vrr_extra_vblank_delay(struct intel_display *display)
 	return DISPLAY_VER(display) < 13 ? 1 : 0;
 }
 
-int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
+int intel_vrr_scl_delay(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 38bf9996b883..b72e90b4abe5 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -35,7 +35,7 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
-int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
+int intel_vrr_scl_delay(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
-- 
2.45.2

