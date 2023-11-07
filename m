Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C487E321D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 01:15:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 112F510E48E;
	Tue,  7 Nov 2023 00:15:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E5BD10E48E
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 00:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699316118; x=1730852118;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+cBlnwRlJOnT0Bjd0o96H2tEfQnFHAvTFDUIqluHBQo=;
 b=lccmc2CcSxH8/jO5ADw6leeED/YK6ye2E4Sd+j7UGEgGjCx4ADu327KX
 3Ah8Ci8SpgiDkn3pymkmhUiCnuVhDVSz9FMqqssxjKrYGg4p+5Fk6VWC7
 oLC7iCLxYPwqSu2QaamKO44g867c1FlwzrVIid/Yy115Xtu/PhbKFUiGj
 NrG9XXfw8wj3oJrNAb6SI83+O5jL7Evxo4r+ALy0K82IWlHrkviIu2900
 iSg78M3qGVZLUcD/Mz8ofjx0YIUuflEG6+YGAxHc+ZUxgb7CspOPOuRZ+
 pWhiszF7EsQLaRy4w3aw80Gc6GJ3CQIFpmZeIcA6eTTpUnmkpq4XbJ340 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="369596209"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="369596209"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 16:15:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="853178013"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="853178013"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 16:15:16 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Nov 2023 02:15:04 +0200
Message-Id: <20231107001505.3370108-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-27-imre.deak@intel.com>
References: <20231030155843.2251023-27-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 26/30] drm/i915: Factor out function to clear
 pipe update flags
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

Factor out a helper to clear the pipe update flags, used by a follow-up
patch to modeset an MST topology.

v2:
- Move the intel_crtc_needs_modeset() check to the callers. (Ville)
v3 (Ville):
- Rename clear_pipe_update_flags_on_modeset_crtc() to
  intel_crtc_flag_modeset().
- Also set crtc_state->uapi.mode_changed in the function.
- Leave out the unrelated change to use
  intel_modeset_pipes_in_mask_early().

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> (v1)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 49 +++++++++-----------
 1 file changed, 23 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3c7ef2cc3b8b1..afa5613fd847c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5542,6 +5542,16 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 	return 0;
 }
 
+static void
+intel_crtc_flag_modeset(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->uapi.mode_changed = true;
+
+	crtc_state->update_pipe = false;
+	crtc_state->update_m_n = false;
+	crtc_state->update_lrr = false;
+}
+
 /**
  * intel_modeset_all_pipes_late - force a full modeset on all pipes
  * @state: intel atomic state
@@ -5575,9 +5585,8 @@ int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
 		if (ret)
 			return ret;
 
-		crtc_state->update_pipe = false;
-		crtc_state->update_m_n = false;
-		crtc_state->update_lrr = false;
+		intel_crtc_flag_modeset(crtc_state);
+
 		crtc_state->update_planes |= crtc_state->active_planes;
 		crtc_state->async_flip_planes = 0;
 		crtc_state->do_async_flip = false;
@@ -5690,17 +5699,17 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 	else
 		new_crtc_state->uapi.mode_changed = false;
 
-	if (intel_crtc_needs_modeset(new_crtc_state) ||
-	    intel_compare_link_m_n(&old_crtc_state->dp_m_n,
+	if (intel_compare_link_m_n(&old_crtc_state->dp_m_n,
 				   &new_crtc_state->dp_m_n))
 		new_crtc_state->update_m_n = false;
 
-	if (intel_crtc_needs_modeset(new_crtc_state) ||
-	    (old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&
+	if ((old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&
 	     old_crtc_state->hw.adjusted_mode.crtc_vblank_end == new_crtc_state->hw.adjusted_mode.crtc_vblank_end))
 		new_crtc_state->update_lrr = false;
 
-	if (!intel_crtc_needs_modeset(new_crtc_state))
+	if (intel_crtc_needs_modeset(new_crtc_state))
+		intel_crtc_flag_modeset(new_crtc_state);
+	else
 		new_crtc_state->update_pipe = true;
 }
 
@@ -6475,12 +6484,8 @@ int intel_atomic_check(struct drm_device *dev,
 		if (intel_dp_mst_is_slave_trans(new_crtc_state)) {
 			enum transcoder master = new_crtc_state->mst_master_transcoder;
 
-			if (intel_cpu_transcoders_need_modeset(state, BIT(master))) {
-				new_crtc_state->uapi.mode_changed = true;
-				new_crtc_state->update_pipe = false;
-				new_crtc_state->update_m_n = false;
-				new_crtc_state->update_lrr = false;
-			}
+			if (intel_cpu_transcoders_need_modeset(state, BIT(master)))
+				intel_crtc_flag_modeset(new_crtc_state);
 		}
 
 		if (is_trans_port_sync_mode(new_crtc_state)) {
@@ -6489,21 +6494,13 @@ int intel_atomic_check(struct drm_device *dev,
 			if (new_crtc_state->master_transcoder != INVALID_TRANSCODER)
 				trans |= BIT(new_crtc_state->master_transcoder);
 
-			if (intel_cpu_transcoders_need_modeset(state, trans)) {
-				new_crtc_state->uapi.mode_changed = true;
-				new_crtc_state->update_pipe = false;
-				new_crtc_state->update_m_n = false;
-				new_crtc_state->update_lrr = false;
-			}
+			if (intel_cpu_transcoders_need_modeset(state, trans))
+				intel_crtc_flag_modeset(new_crtc_state);
 		}
 
 		if (new_crtc_state->bigjoiner_pipes) {
-			if (intel_pipes_need_modeset(state, new_crtc_state->bigjoiner_pipes)) {
-				new_crtc_state->uapi.mode_changed = true;
-				new_crtc_state->update_pipe = false;
-				new_crtc_state->update_m_n = false;
-				new_crtc_state->update_lrr = false;
-			}
+			if (intel_pipes_need_modeset(state, new_crtc_state->bigjoiner_pipes))
+				intel_crtc_flag_modeset(new_crtc_state);
 		}
 	}
 
-- 
2.39.2

