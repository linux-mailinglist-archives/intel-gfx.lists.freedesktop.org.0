Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9288AA259DC
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37CAA10E4B9;
	Mon,  3 Feb 2025 12:50:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hu+6J1Of";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34BFE10E4B9;
 Mon,  3 Feb 2025 12:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587012; x=1770123012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=43GqReod1yU3k4q+ID+2IMS47Vh8UBlyVmbLR4dmNxQ=;
 b=Hu+6J1OffqLeZV0abSZ782iPln7BNd42xbpIgiB2celUxhluMBs8yRmP
 Gbk9sunahpN8BAaQb2TTuZJTdvHxn22M5E5B/OMmXqrBqRVg7Yjyp0R8M
 tuLViCv5vtIGLF8CsTxc+eO/jZWbLVy9m+lGmUVx7GLJaj5nLRopnUi2f
 XPkdgh1l5cA05L/aBWytGtnaWOPhtRpLE3rEGYp0T1QSwsG3HEH12jpxn
 shbaKpL6CQoeXtVHL+ejyvxQoZq+gdYrJsM5GlXo0Q3m6lj/oQMRSzKRm
 PFdvRbLqrPE5e3mMalg3qMvxBZuqjRGbEJZMyw/re2V0Iw0K8oBnbFkF1 A==;
X-CSE-ConnectionGUID: NFxvyoC7Se+TcBl5dwQqjw==
X-CSE-MsgGUID: k3QsOyPQT7q48KdskZpSsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548060"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548060"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:12 -0800
X-CSE-ConnectionGUID: 4E/pFF94QFaiCatTYgt2rQ==
X-CSE-MsgGUID: 9UDx2k7HT8iDHWUNe8763Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133528950"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:10 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 11/28] drm/i915/display: Update intel_crtc_vrr_{enable/disable}
Date: Mon,  3 Feb 2025 18:08:23 +0530
Message-ID: <20250203123840.3855874-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

With CMRR the vrr.enable was tracking the vrr timing generator, which made
the helpers intel_crtc_vrr_{enable/disable} also track the
vrr timing generator.
Since we don not have CMRR now, the crtc_vrr_{enable/disable} should now
track the vrr mode of operation of the vrr timing generator.

Update the helpers intel_crtc_vrr_{enable/disable} to track the vrr mode
of the vrr timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_vrr.c     |  5 ++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  1 +
 3 files changed, 22 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3f2c07693ae6..d70e19beef4b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1121,14 +1121,18 @@ static bool intel_crtc_vrr_enabling(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	bool old_mode_is_vrr = intel_vrr_is_mode_vrr(old_crtc_state);
+	bool new_mode_is_vrr = intel_vrr_is_mode_vrr(new_crtc_state);
+	bool needs_modeset = intel_crtc_needs_modeset(new_crtc_state);
+	bool update_m_n = new_crtc_state->update_m_n;
+	bool update_lrr = new_crtc_state->update_lrr;
+	bool params_changed = vrr_params_changed(old_crtc_state, new_crtc_state);
 
 	if (!new_crtc_state->hw.active)
 		return false;
 
-	return is_enabling(vrr.mode, old_crtc_state, new_crtc_state) ||
-		(intel_vrr_is_enabled(new_crtc_state) &&
-		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
-		  vrr_params_changed(old_crtc_state, new_crtc_state)));
+	return (new_mode_is_vrr && (!old_mode_is_vrr || needs_modeset)) ||
+	       (new_mode_is_vrr && (update_m_n || update_lrr || params_changed));
 }
 
 bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
@@ -1138,14 +1142,18 @@ bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	bool old_mode_is_vrr = intel_vrr_is_mode_vrr(old_crtc_state);
+	bool new_mode_is_vrr = intel_vrr_is_mode_vrr(new_crtc_state);
+	bool needs_modeset = intel_crtc_needs_modeset(new_crtc_state);
+	bool update_m_n = new_crtc_state->update_m_n;
+	bool update_lrr = new_crtc_state->update_lrr;
+	bool params_changed = vrr_params_changed(old_crtc_state, new_crtc_state);
 
 	if (!old_crtc_state->hw.active)
 		return false;
 
-	return is_disabling(vrr.mode, old_crtc_state, new_crtc_state) ||
-		(intel_vrr_is_enabled(old_crtc_state) &&
-		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
-		  vrr_params_changed(old_crtc_state, new_crtc_state)));
+	return (old_mode_is_vrr && (!new_mode_is_vrr || needs_modeset)) ||
+	       (old_mode_is_vrr && (update_m_n || update_lrr || params_changed));
 }
 
 static bool audio_enabling(const struct intel_crtc_state *old_crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 56830513c10d..48cfcc3ba7b4 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -280,6 +280,11 @@ bool intel_vrr_is_enabled(const struct intel_crtc_state *crtc_state)
 	return crtc_state->vrr.mode != INTEL_VRRTG_MODE_NONE;
 }
 
+bool intel_vrr_is_mode_vrr(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->vrr.mode == INTEL_VRRTG_MODE_VRR;
+}
+
 void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 736bf7777abe..5ae8d6409f1a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -34,5 +34,6 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_enabled(const struct intel_crtc_state *crtc_state);
+bool intel_vrr_is_mode_vrr(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

