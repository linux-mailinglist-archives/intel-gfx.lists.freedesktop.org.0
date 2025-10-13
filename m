Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D9DBD30DD
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 14:49:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 544E410E455;
	Mon, 13 Oct 2025 12:49:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SGWP1g5k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5C5510E455;
 Mon, 13 Oct 2025 12:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760359754; x=1791895754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BKDJs6gAl/Fx6aJ7rTGAHtUEH6IYuMVYBadOYd413DE=;
 b=SGWP1g5kS4PwU3V49twjzHqVQ1BuNiYWmKA4Wb25VpnJDfvSob7Xomy/
 WRAtF0AlhFMrQ6cc48wB6JLi7kkhmyI41dnlwaQqoYQFEPeUsGabIPG5T
 LdPmoOtce8mYsSqIFE2TLj4qNY4LC9Od7u1QcGCHufUFpd9CO028pSMn5
 UfBILglyK+hGnzOp5ry1V4XeZiCjstYy2qxu6hFwpaOHDrgVKBjEsJl0X
 dt3a+yYfQWYxJ6w9N7bqfK3OBBHY20Z4rsoFRz8mBqG7ie1ggc8/gSArH
 kicccjwj+NZn9b33yiJlwdtv3YOmLii8xoXwQurty10SSk5vQyKQyRzMe g==;
X-CSE-ConnectionGUID: hANH+JpwTkuzJ9V3bCXczg==
X-CSE-MsgGUID: n2i3idWnSfKgCd7HiQj3yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11580"; a="85121154"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="85121154"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 05:49:14 -0700
X-CSE-ConnectionGUID: O3wkLwS9RE2ExtJv2oTu2w==
X-CSE-MsgGUID: O+3cugqKQxWbwZJaiWEeXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="182026857"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 05:49:11 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/8] drm/i915/vrr:
 s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
Date: Mon, 13 Oct 2025 18:05:54 +0530
Message-ID: <20251013123559.1055429-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251013123559.1055429-1-ankit.k.nautiyal@intel.com>
References: <20251013123559.1055429-1-ankit.k.nautiyal@intel.com>
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

v2: Move the function at the last after clocks, pipe_mode etc. are all
set. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_vrr.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_vrr.h     | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3f725553599e..ceee5ae99c2c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2431,6 +2431,8 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 	if (crtc_state->has_pch_encoder)
 		return ilk_fdi_compute_config(crtc, crtc_state);
 
+	intel_vrr_compute_guardband(crtc_state);
+
 	return 0;
 }
 
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

