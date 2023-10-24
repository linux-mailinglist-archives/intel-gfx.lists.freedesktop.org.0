Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 824877D44A2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 132CC10E2CB;
	Tue, 24 Oct 2023 01:09:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D8B910E2B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109771; x=1729645771;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JQoyzKqUG/JGrJxgKc9sK/nRpaTX9iPno6sNi2qysno=;
 b=Ukd4Nyc849m3jWx6htGQI7q2aFSE9wwe9axGmyknhDgZPC7TCuXAQsAD
 1RPQlNIgc3x45BLa5/0J1VNgt9EY6B+wxJr8H/VV3eG2ihRVZfWaA87Z9
 c9IeEpv2TKqa5GJMR2nWdoTMjn29gmzlaLOToWMYEvo/m9uUyyaMe9Bmq
 2Z/bvAoLOaGbt/Fpj7VFoMTaCMg0u69Ya97ZHEyAv1CmxLlg+mlMYTlT+
 Zyd76MPFhtZEz9uYxd0c/hNkjtxk2hlXEhM0P7rshJqg/nZbXgxTO3KFv
 JU4HFqNPIQYaQCYpHH+wZdqU03raE5G+e9pyq2S7VObtK4GLVfC2PA7VP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304394"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304394"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870151"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870151"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:30 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:21 +0300
Message-Id: <20231024010925.3949910-26-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 25/29] drm/i915: Factor out function to clear
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 52 ++++++++++----------
 1 file changed, 27 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index de352d9c43439..22f88389035bd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5551,6 +5551,16 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 	return 0;
 }
 
+static void clear_pipe_update_flags_on_modeset_crtc(struct intel_crtc_state *crtc_state)
+{
+	if (!intel_crtc_needs_modeset(crtc_state))
+		return;
+
+	crtc_state->update_pipe = false;
+	crtc_state->update_m_n = false;
+	crtc_state->update_lrr = false;
+}
+
 /**
  * intel_modeset_all_pipes_late - force a full modeset on all pipes
  * @state: intel atomic state
@@ -5584,9 +5594,8 @@ int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
 		if (ret)
 			return ret;
 
-		crtc_state->update_pipe = false;
-		crtc_state->update_m_n = false;
-		crtc_state->update_lrr = false;
+		clear_pipe_update_flags_on_modeset_crtc(crtc_state);
+
 		crtc_state->update_planes |= crtc_state->active_planes;
 		crtc_state->async_flip_planes = 0;
 		crtc_state->do_async_flip = false;
@@ -5699,13 +5708,13 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 	else
 		new_crtc_state->uapi.mode_changed = false;
 
-	if (intel_crtc_needs_modeset(new_crtc_state) ||
-	    intel_compare_link_m_n(&old_crtc_state->dp_m_n,
+	clear_pipe_update_flags_on_modeset_crtc(new_crtc_state);
+
+	if (intel_compare_link_m_n(&old_crtc_state->dp_m_n,
 				   &new_crtc_state->dp_m_n))
 		new_crtc_state->update_m_n = false;
 
-	if (intel_crtc_needs_modeset(new_crtc_state) ||
-	    (old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&
+	if ((old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&
 	     old_crtc_state->hw.adjusted_mode.crtc_vblank_end == new_crtc_state->hw.adjusted_mode.crtc_vblank_end))
 		new_crtc_state->update_lrr = false;
 
@@ -6484,12 +6493,9 @@ int intel_atomic_check(struct drm_device *dev,
 		if (intel_dp_mst_is_slave_trans(new_crtc_state)) {
 			enum transcoder master = new_crtc_state->mst_master_transcoder;
 
-			if (intel_cpu_transcoders_need_modeset(state, BIT(master))) {
-				new_crtc_state->uapi.mode_changed = true;
-				new_crtc_state->update_pipe = false;
-				new_crtc_state->update_m_n = false;
-				new_crtc_state->update_lrr = false;
-			}
+			if (intel_cpu_transcoders_need_modeset(state, BIT(master)))
+				intel_modeset_pipes_in_mask_early(state, "MST master transcoder",
+								  BIT(crtc->pipe));
 		}
 
 		if (is_trans_port_sync_mode(new_crtc_state)) {
@@ -6498,22 +6504,18 @@ int intel_atomic_check(struct drm_device *dev,
 			if (new_crtc_state->master_transcoder != INVALID_TRANSCODER)
 				trans |= BIT(new_crtc_state->master_transcoder);
 
-			if (intel_cpu_transcoders_need_modeset(state, trans)) {
-				new_crtc_state->uapi.mode_changed = true;
-				new_crtc_state->update_pipe = false;
-				new_crtc_state->update_m_n = false;
-				new_crtc_state->update_lrr = false;
-			}
+			if (intel_cpu_transcoders_need_modeset(state, trans))
+				intel_modeset_pipes_in_mask_early(state, "port sync",
+								  BIT(crtc->pipe));
 		}
 
 		if (new_crtc_state->bigjoiner_pipes) {
-			if (intel_pipes_need_modeset(state, new_crtc_state->bigjoiner_pipes)) {
-				new_crtc_state->uapi.mode_changed = true;
-				new_crtc_state->update_pipe = false;
-				new_crtc_state->update_m_n = false;
-				new_crtc_state->update_lrr = false;
-			}
+			if (intel_pipes_need_modeset(state, new_crtc_state->bigjoiner_pipes))
+				intel_modeset_pipes_in_mask_early(state, "bigjoiner pipes",
+								  BIT(crtc->pipe));
 		}
+
+		clear_pipe_update_flags_on_modeset_crtc(new_crtc_state);
 	}
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-- 
2.39.2

