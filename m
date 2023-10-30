Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9FF7DBD34
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 16:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8779310E32B;
	Mon, 30 Oct 2023 15:58:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0738A10E324
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698681534; x=1730217534;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jVWlccz8iooENhMUxiXHZe7I3DkBICpPSZnZMmUOYno=;
 b=j6/AmzIpafqewohp2r4wBBnQJe9D6QnBsduhg+ZtSMILLmwpjq5VwprO
 UgbD65E3kwekaElIQafeZydiuJixzx0jAfVb/qiA+6Y5Nrd5anEIMonw+
 +3QHrtV+CtEtIY2bHBNHGmuna3xD3S8FuZ7NjHLtXRrfWQv8gvAqfvhBK
 15d2OhsEFjWneYPoCmeGfLH7VkXguKzNsxHosAYEDJXUjZZ/f/4kFPwvs
 hb/KEYhqtdHHEFAYzGJ35ux3sTaz33C/LIqbRj96OYF6n4mrFFANoP+h0
 JXWiLn3FlOHXxNdNlBoOz8/DngWZ5Ksf9yzFZRTdNlYp0UfcL0c/PUztb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="974526"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="974526"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789494053"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789494053"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:52 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Oct 2023 17:58:39 +0200
Message-Id: <20231030155843.2251023-27-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 26/30] drm/i915: Factor out function to clear
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

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> (v1)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 52 ++++++++++----------
 1 file changed, 27 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1133c2893bb38..d27afda0cfaa6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5551,6 +5551,14 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 	return 0;
 }
 
+static void
+clear_pipe_update_flags_on_modeset_crtc(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->update_pipe = false;
+	crtc_state->update_m_n = false;
+	crtc_state->update_lrr = false;
+}
+
 /**
  * intel_modeset_all_pipes_late - force a full modeset on all pipes
  * @state: intel atomic state
@@ -5584,9 +5592,8 @@ int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
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
@@ -5699,13 +5706,14 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 	else
 		new_crtc_state->uapi.mode_changed = false;
 
-	if (intel_crtc_needs_modeset(new_crtc_state) ||
-	    intel_compare_link_m_n(&old_crtc_state->dp_m_n,
+	if (intel_crtc_needs_modeset(new_crtc_state))
+		clear_pipe_update_flags_on_modeset_crtc(new_crtc_state);
+
+	if (intel_compare_link_m_n(&old_crtc_state->dp_m_n,
 				   &new_crtc_state->dp_m_n))
 		new_crtc_state->update_m_n = false;
 
-	if (intel_crtc_needs_modeset(new_crtc_state) ||
-	    (old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&
+	if ((old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&
 	     old_crtc_state->hw.adjusted_mode.crtc_vblank_end == new_crtc_state->hw.adjusted_mode.crtc_vblank_end))
 		new_crtc_state->update_lrr = false;
 
@@ -6484,12 +6492,9 @@ int intel_atomic_check(struct drm_device *dev,
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
@@ -6498,22 +6503,19 @@ int intel_atomic_check(struct drm_device *dev,
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
+		if (intel_crtc_needs_modeset(new_crtc_state))
+			clear_pipe_update_flags_on_modeset_crtc(new_crtc_state);
 	}
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-- 
2.39.2

