Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C00168A34E9
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 19:38:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E35610E720;
	Fri, 12 Apr 2024 17:38:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RQxVeCiv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F50E10E43E
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 17:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712943488; x=1744479488;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6XmlGVLC6wl3Lep1KinGi4H9tzhVOeycQjbZVzb+wU4=;
 b=RQxVeCivzcgoVN3FYdESk7fbMiwcQt4pupeku+6Z4Ac9BW3kbOWgzRZA
 L9Z7t5tkWtxu819K1G4pHw9B+R/pCi8qc4TJNOhQ5pWKs49V5b9EsgoV8
 b40Mr0wD6IjcU970agJ6nqSDgP7OJXYt+4Oa3IAKcB1XkLKYYwiGxtrkg
 OINmC8w0KWJEHCehyGKj45RaG6AYa/VNx/K3BknhoGvJrSTjOuTDkpwZT
 psSBC0NMqTDWGidYLXMQSHbD3i7TdZTuexJ8F/WyemeAurVhS2xAMarxB
 xaWpsssrShd2b7M6sRS8WCI8fQ3y7NEMzFpYwxrL1K/MZjZFvr5sstZXp A==;
X-CSE-ConnectionGUID: HJg8M3yfQhyCST9MXFkOCQ==
X-CSE-MsgGUID: LY9K/ONtQku9wWEWqA7BGw==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8513854"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8513854"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 10:38:08 -0700
X-CSE-ConnectionGUID: ZSSj6kmiReuzlE4+0/BV8Q==
X-CSE-MsgGUID: f9bsDkofRde2NWWyxyW+gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21366074"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 12 Apr 2024 10:38:07 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915: Add Enable/Disable for CMRR based on VRR state
Date: Fri, 12 Apr 2024 23:01:52 +0530
Message-Id: <20240412173153.722804-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240412173153.722804-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240412173153.722804-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add CMRR/Fixed Average Vtotal mode enable and disable
functions based on change in VRR mode of operation.
When Adaptive Sync Vtotal is enabled, Fixed Average Vtotal
mode is disabled and vice versa. With this commit setting
the stage for subsequent CMRR enablement.

--v2:
- Check pipe active state in cmrr enabling. [Jani]
- Remove usage of bitwise OR on booleans. [Jani]
- Revert unrelated changes. [Jani]
- Update intel_vrr_enable, vrr and cmrr enable conditions. [Jani]
- Simplify whole if-ladder in intel_vrr_enable. [Jani]
- Revert patch restructuring mistakes in intel_vrr_get_config. [Jani]

--v3:
- Check pipe active state in cmrr disabling.[Jani]
- Correct messed up condition in intel_vrr_enable. [Jani]

--v4:
- Removing RFC tag.

--v5:
- CMRR handling in co-existatnce of LRR and DRRS.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 37 +++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_vrr.c     | 34 +++++++++++-------
 2 files changed, 54 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c4f212e8177b..78d7d2505c15 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1019,6 +1019,18 @@ static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
 		  vrr_params_changed(old_crtc_state, new_crtc_state)));
 }
 
+static bool cmrr_enabling(const struct intel_crtc_state *old_crtc_state,
+			  const struct intel_crtc_state *new_crtc_state)
+{
+	if (!new_crtc_state->hw.active)
+		return false;
+
+	return is_enabling(cmrr.enable, old_crtc_state, new_crtc_state) ||
+		(new_crtc_state->cmrr.enable &&
+		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
+		  cmrr_params_changed(old_crtc_state, new_crtc_state)));
+}
+
 static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
 			  const struct intel_crtc_state *new_crtc_state)
 {
@@ -1031,6 +1043,18 @@ static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
 		  vrr_params_changed(old_crtc_state, new_crtc_state)));
 }
 
+static bool cmrr_disabling(const struct intel_crtc_state *old_crtc_state,
+			   const struct intel_crtc_state *new_crtc_state)
+{
+	if (!old_crtc_state->hw.active)
+		return false;
+
+	return is_disabling(cmrr.enable, old_crtc_state, new_crtc_state) ||
+		(old_crtc_state->cmrr.enable &&
+		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
+		  cmrr_params_changed(old_crtc_state, new_crtc_state)));
+}
+
 static bool audio_enabling(const struct intel_crtc_state *old_crtc_state,
 			   const struct intel_crtc_state *new_crtc_state)
 {
@@ -1052,7 +1076,6 @@ static bool audio_disabling(const struct intel_crtc_state *old_crtc_state,
 		(old_crtc_state->has_audio &&
 		 memcmp(old_crtc_state->eld, new_crtc_state->eld, MAX_ELD_BYTES) != 0);
 }
-
 #undef is_disabling
 #undef is_enabling
 
@@ -1174,7 +1197,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
-	if (vrr_disabling(old_crtc_state, new_crtc_state)) {
+	if (vrr_disabling(old_crtc_state, new_crtc_state) ||
+	    cmrr_disabling(old_crtc_state, new_crtc_state)) {
 		intel_vrr_disable(old_crtc_state);
 		intel_crtc_update_active_timings(old_crtc_state, false);
 	}
@@ -6776,7 +6800,8 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 	    !intel_crtc_needs_modeset(new_crtc_state))
 		skl_detach_scalers(new_crtc_state);
 
-	if (vrr_enabling(old_crtc_state, new_crtc_state))
+	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
+	    cmrr_enabling(old_crtc_state, new_crtc_state))
 		intel_vrr_enable(new_crtc_state);
 }
 
@@ -6877,9 +6902,11 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	 * FIXME Should be synchronized with the start of vblank somehow...
 	 */
 	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
-	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
+	    new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
+	    cmrr_enabling(old_crtc_state, new_crtc_state))
 		intel_crtc_update_active_timings(new_crtc_state,
-						 new_crtc_state->vrr.enable);
+						 new_crtc_state->vrr.enable ||
+						 new_crtc_state->cmrr.enable);
 
 	/*
 	 * We usually enable FIFO underrun interrupts as part of the
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 831554ea46b2..369769e46c8d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -242,7 +242,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!(crtc_state->vrr.enable || crtc_state->cmrr.enable))
 		return;
 
 	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder),
@@ -255,7 +255,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!(crtc_state->vrr.enable || crtc_state->cmrr.enable))
 		return false;
 
 	return intel_de_read(dev_priv, TRANS_PUSH(cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -266,18 +266,28 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (drm_WARN_ON(&dev_priv->drm, crtc_state->vrr.enable &&
+			crtc_state->cmrr.enable))
 		return;
 
-	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
-
-	if (HAS_AS_SDP(dev_priv))
-		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
+	if (crtc_state->vrr.enable) {
+		intel_de_write(dev_priv,
+			       TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
+		if (HAS_AS_SDP(dev_priv))
+			intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
 			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
 			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
+		intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
+			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+	}
 
-	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
-		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+	if (crtc_state->cmrr.enable) {
+		intel_de_write(dev_priv,
+			       TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
+		intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
+			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
+			       trans_vrr_ctl(crtc_state));
+	}
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
@@ -286,7 +296,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
-	if (!old_crtc_state->vrr.enable)
+	if (!(old_crtc_state->vrr.enable || old_crtc_state->cmrr.enable))
 		return;
 
 	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
@@ -332,10 +342,10 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->vrr.vmin = intel_de_read(dev_priv, TRANS_VRR_VMIN(cpu_transcoder)) + 1;
 	}
 
-	if (crtc_state->vrr.enable) {
+	if (crtc_state->vrr.enable || crtc_state->cmrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 
-		if (HAS_AS_SDP(dev_priv)) {
+		if (HAS_AS_SDP(dev_priv) && crtc_state->vrr.enable) {
 			trans_vrr_vsync =
 				intel_de_read(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder));
 			crtc_state->vrr.vsync_start =
-- 
2.25.1

