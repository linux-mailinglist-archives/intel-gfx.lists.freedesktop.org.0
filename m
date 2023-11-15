Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8A07EBD20
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 07:36:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36CCB10E4F0;
	Wed, 15 Nov 2023 06:36:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 579FA10E4F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 06:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700030166; x=1731566166;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RxSJtpNwp3YEy2u3Pu3XRehy3aSkd1sCP0mifWf6D7E=;
 b=AxSQuivOlxBjKuMdOva6XrtXRn32a2UuHO4PxMpFdOJJObC+CXthb5lT
 I5f2ZnWELe8+kCgP3+u42lbEg0qiLY2qXuL+/KpaJr4PKyyMa5EQ5Jmqq
 TJmGk9CgK05fDPgpt3mP0vkaIvGCWRqaGXXzOQsedoC04j0a2HuDxQ0KR
 D+ycWbkmnPbIHL57ns/iTxOQzTn9q1OukemX+g5RefrrDa42m3bq37llg
 eb/E7SBMBIbi8DsV9VjbIyXodUBQkP7woIr/S5zD6/nMJb9NA8E4P04ka
 TtEEWbI6hVKca2thr4HwRtfvmpsuK3Z1S0ARQZZd/RSmkMg6NDZAnZti8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="421919606"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="421919606"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 22:36:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="741336192"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="741336192"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga006.jf.intel.com with ESMTP; 14 Nov 2023 22:36:04 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Nov 2023 12:00:53 +0530
Message-Id: <20231115063054.3754600-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231115063054.3754600-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20231115063054.3754600-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/3] drm/i915: Add Enable/Disable for CMRR based
 on VRR state
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add CMRR/Fixed Average Vtotal mode enable and disable
functions based on change in VRR mode of operation.
When Adaptive Sync Vtotal is enabled, Fixed Average Vtotal
mode is disabled and vice versa. With this commit setting
the stage for subsequent CMRR enablement.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 24 ++++++++++--
 drivers/gpu/drm/i915/display/intel_vrr.c      | 37 +++++++++++++------
 3 files changed, 48 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 2d15e82c0b3d..908a4c4ccb00 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -299,7 +299,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		intel_dump_buffer(i915, "ELD: ", pipe_config->eld,
 				  drm_eld_size(pipe_config->eld));
 
-	drm_dbg_kms(&i915->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
+	drm_dbg_kms(&i915->drm,
+		    "cmrr: %s, vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d, flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
+		    str_yes_no(pipe_config->cmrr.enable),
 		    str_yes_no(pipe_config->vrr.enable),
 		    pipe_config->vrr.vmin, pipe_config->vrr.vmax,
 		    pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f99d2de840bc..f5a69309e65a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -937,6 +937,12 @@ static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
 		  vrr_params_changed(old_crtc_state, new_crtc_state)));
 }
 
+static bool cmrr_enabling(const struct intel_crtc_state *old_crtc_state,
+			  const struct intel_crtc_state *new_crtc_state)
+{
+	return is_enabling(cmrr.enable, old_crtc_state, new_crtc_state);
+}
+
 static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
 			  const struct intel_crtc_state *new_crtc_state)
 {
@@ -946,6 +952,12 @@ static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
 		  vrr_params_changed(old_crtc_state, new_crtc_state)));
 }
 
+static bool cmrr_disabling(const struct intel_crtc_state *old_crtc_state,
+			   const struct intel_crtc_state *new_crtc_state)
+{
+	return is_disabling(cmrr.enable, old_crtc_state, new_crtc_state);
+}
+
 #undef is_disabling
 #undef is_enabling
 
@@ -1064,7 +1076,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
-	if (vrr_disabling(old_crtc_state, new_crtc_state)) {
+	if (vrr_disabling(old_crtc_state, new_crtc_state) ||
+	    cmrr_disabling(old_crtc_state, new_crtc_state)) {
 		intel_vrr_disable(old_crtc_state);
 		intel_crtc_update_active_timings(old_crtc_state, false);
 	}
@@ -6754,7 +6767,8 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 	    !intel_crtc_needs_modeset(new_crtc_state))
 		skl_detach_scalers(new_crtc_state);
 
-	if (vrr_enabling(old_crtc_state, new_crtc_state))
+	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
+	    cmrr_enabling(old_crtc_state, new_crtc_state))
 		intel_vrr_enable(new_crtc_state);
 }
 
@@ -6851,9 +6865,11 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	 * FIXME Should be synchronized with the start of vblank somehow...
 	 */
 	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
-	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
+	    new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
+	    cmrr_enabling(old_crtc_state, new_crtc_state))
 		intel_crtc_update_active_timings(new_crtc_state,
-						 new_crtc_state->vrr.enable);
+						 new_crtc_state->vrr.enable |
+						 new_crtc_state->cmrr.enable);
 
 	/*
 	 * We usually enable FIFO underrun interrupts as part of the
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 4aeccbbf1d2a..1e33661062b3 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -224,7 +224,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!(crtc_state->vrr.enable | crtc_state->cmrr.enable))
 		return;
 
 	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder),
@@ -237,7 +237,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!(crtc_state->vrr.enable | crtc_state->cmrr.enable))
 		return false;
 
 	return intel_de_read(dev_priv, TRANS_PUSH(cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -245,15 +245,30 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
-		return;
 
-	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
-	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
-		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+	if (!crtc_state->cmrr.enable && !crtc_state->vrr.enable) {
+		return;
+	} else if (crtc_state->vrr.enable && crtc_state->cmrr.enable) {
+		drm_WARN_ON(&dev_priv->drm, crtc_state->vrr.enable &&
+			    crtc_state->cmrr.enable);
+	} else {
+		if (!crtc_state->vrr.enable && crtc_state->cmrr.enable) {
+			intel_de_write(dev_priv,
+				       TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
+			intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
+				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
+				       trans_vrr_ctl(crtc_state));
+		} else {
+			intel_de_write(dev_priv,
+				       TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
+			intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
+				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+		}
+	}
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
@@ -262,7 +277,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
-	if (!old_crtc_state->vrr.enable)
+	if (!(old_crtc_state->vrr.enable | old_crtc_state->cmrr.enable))
 		return;
 
 	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
@@ -280,8 +295,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
 	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(cpu_transcoder));
 
-	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
-
 	if (crtc_state->cmrr.enable) {
 		cmrr_n_hi = intel_de_read(dev_priv, TRANS_CMRR_N_HI(cpu_transcoder));
 		cmrr_n_lo = intel_de_read(dev_priv, TRANS_CMRR_N_LO(cpu_transcoder));
@@ -306,6 +319,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->vrr.vmin = intel_de_read(dev_priv, TRANS_VRR_VMIN(cpu_transcoder)) + 1;
 	}
 
-	if (crtc_state->vrr.enable)
+	if (crtc_state->vrr.enable | crtc_state->cmrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
-- 
2.25.1

