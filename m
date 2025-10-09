Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28920BC7B8F
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 09:30:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 997D110E945;
	Thu,  9 Oct 2025 07:30:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fRCSLbnx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EEE710E941;
 Thu,  9 Oct 2025 07:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759995051; x=1791531051;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JPEFzKO3aOqlyaDFzQ7Upt1VYZjv6/km+Pfjruy4CSg=;
 b=fRCSLbnxgGCkNPirDXOtx2AwLYvfBj1IRtotJIyOG43QjfHEs7HdA9WH
 7P7tH7NzmLPmD25aGt8O1qpPXn9zAFPQeMCz8nHm7XOW5w1OklJOp9KCa
 ZXSwbNPcRc09iw5ertFfI62hqwHnu6L//DVwDLNSixwPewML2oPLy3bSL
 jU2WEA8CfsqWyRhQhf1Kh6zssF+jYHmN6B/1FuX95588whR5We5FZBGQx
 jO8pLHOkf3qqU3bJUdVtimLsdEfLkrGKa3NW2BVcUuTQs4mqJIFXkjXNG
 oJw3XMU/VSyxgpGmw2qXLWNeC0NQ/tMrINXaOfLOUkmXM2lP/fQdQnWL2 g==;
X-CSE-ConnectionGUID: N9T27ayuScSA2y9i4awP8Q==
X-CSE-MsgGUID: SAqIzlQXTci4HZrxh//EYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="66050818"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="66050818"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:30:51 -0700
X-CSE-ConnectionGUID: SMAzvakkT4utz+4TuBQb1g==
X-CSE-MsgGUID: tvVJ+fVFSGqjW+PqIYGXSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="181073420"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:30:49 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/8] drm/i915/vrr:
 s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
Date: Thu,  9 Oct 2025 12:47:30 +0530
Message-ID: <20251009071736.800248-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251009071736.800248-1-ankit.k.nautiyal@intel.com>
References: <20251009071736.800248-1-ankit.k.nautiyal@intel.com>
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

The helper intel_vrr_compute_config_late() practically just computes the
guardband. Rename intel_vrr_compute_config_late() to
intel_vrr_compute_guardband().

Since we are going to compute the guardband and then move the
vblank_start for optmizing guardband move it to
intel_crtc_compute_config() which handles such changes.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_vrr.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_vrr.h     | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b57efd870774..cd499e58bed3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2414,6 +2414,8 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	intel_vrr_compute_guardband(crtc_state);
+
 	ret = intel_dpll_crtc_compute_clock(state, crtc);
 	if (ret)
 		return ret;
@@ -4722,8 +4724,6 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
 	struct drm_connector *connector;
 	int i;
 
-	intel_vrr_compute_config_late(crtc_state);
-
 	for_each_new_connector_in_state(&state->base, connector,
 					conn_state, i) {
 		struct intel_encoder *encoder =
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 4bc14b5e685f..8d71d7dc9d12 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -433,7 +433,7 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
 		   intel_vrr_max_vblank_guardband(crtc_state));
 }
 
-void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
+void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 7317f8730089..bc9044621635 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -21,7 +21,7 @@ bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
 void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
-void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
+void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state);
 void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_send_push(struct intel_dsb *dsb,
-- 
2.45.2

