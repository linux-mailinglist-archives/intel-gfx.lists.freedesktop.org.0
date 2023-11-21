Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C9D7F3517
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 18:41:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18AA410E544;
	Tue, 21 Nov 2023 17:41:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 826C810E540
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 17:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700588486; x=1732124486;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9ho7kBerIrAUxEOxOyJK0OgVQgv06XBeMeKwrtC+AG4=;
 b=Rk5YTpol9E9/kFI9CXrRHVeb+Vf10h5Z9vur1ADZecJNPZkYJZDGTchP
 xT91xopWyRCfXc4p3a6o5URCrMYqqwJ+jM7VKAO2aGobgGceW0qlYySre
 tUtl872bXlLE0EtMo7P1nwT8be8Qu74qED0LX2N4QN5+FkbIr/yBvJgot
 95xXtUcTQ6OfaPsHmC+7BYfksJvA6SW/NNP85W10k8vVVMCDG1iQom80b
 JZ53AAUuplqlm5rb5cbYVb4Dagp1QSGVGb1Vx9Q5IcWo44b5I6ICQhm1i
 hm58tTmCGYRUZuF7bDCBZLucX0c22WTqnbf0TdJoTzrTzm+zWvQ6n3VWQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="10559415"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="10559415"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 09:40:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="14584677"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa001.jf.intel.com with ESMTP; 21 Nov 2023 09:40:42 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Nov 2023 23:05:35 +0530
Message-Id: <20231121173536.4033657-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231121173536.4033657-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20231121173536.4033657-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Add Enable/Disable for CMRR based
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
- Check pipe active state in cmrr disabling. (Similar to enable case).[Jani]
- Correct messed up condition in intel_vrr_enable while fixing rev2. [Jani]

--v4:
- Removing RFC tag.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  |  4 ++-
 drivers/gpu/drm/i915/display/intel_display.c  | 30 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_vrr.c      | 28 ++++++++++++-----
 3 files changed, 49 insertions(+), 13 deletions(-)

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
index ea545414109e..5bb36cadd44a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -936,6 +936,15 @@ static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
 		  vrr_params_changed(old_crtc_state, new_crtc_state)));
 }
 
+static bool cmrr_enabling(const struct intel_crtc_state *old_crtc_state,
+			  const struct intel_crtc_state *new_crtc_state)
+{
+	if (!new_crtc_state->hw.active)
+		return false;
+
+	return is_enabling(cmrr.enable, old_crtc_state, new_crtc_state);
+}
+
 static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
 			  const struct intel_crtc_state *new_crtc_state)
 {
@@ -945,6 +954,15 @@ static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
 		  vrr_params_changed(old_crtc_state, new_crtc_state)));
 }
 
+static bool cmrr_disabling(const struct intel_crtc_state *old_crtc_state,
+			   const struct intel_crtc_state *new_crtc_state)
+{
+	if (!old_crtc_state->hw.active)
+		return false;
+
+	return is_disabling(cmrr.enable, old_crtc_state, new_crtc_state);
+}
+
 #undef is_disabling
 #undef is_enabling
 
@@ -1063,7 +1081,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
-	if (vrr_disabling(old_crtc_state, new_crtc_state)) {
+	if (vrr_disabling(old_crtc_state, new_crtc_state) ||
+	    cmrr_disabling(old_crtc_state, new_crtc_state)) {
 		intel_vrr_disable(old_crtc_state);
 		intel_crtc_update_active_timings(old_crtc_state, false);
 	}
@@ -6583,7 +6602,8 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 	    !intel_crtc_needs_modeset(new_crtc_state))
 		skl_detach_scalers(new_crtc_state);
 
-	if (vrr_enabling(old_crtc_state, new_crtc_state))
+	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
+	    cmrr_enabling(old_crtc_state, new_crtc_state))
 		intel_vrr_enable(new_crtc_state);
 }
 
@@ -6680,9 +6700,11 @@ static void intel_update_crtc(struct intel_atomic_state *state,
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
index c889b0aa69a4..8f1d241e1f79 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -224,7 +224,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!(crtc_state->vrr.enable || crtc_state->cmrr.enable))
 		return;
 
 	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder),
@@ -237,7 +237,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!(crtc_state->vrr.enable || crtc_state->cmrr.enable))
 		return false;
 
 	return intel_de_read(dev_priv, TRANS_PUSH(cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -248,12 +248,24 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (drm_WARN_ON(&dev_priv->drm, crtc_state->vrr.enable &&
+			crtc_state->cmrr.enable))
 		return;
 
-	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
-	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
-		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+	if (crtc_state->vrr.enable) {
+		intel_de_write(dev_priv,
+			       TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
+		intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
+			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+	}
+
+	if (crtc_state->cmrr.enable) {
+		intel_de_write(dev_priv,
+			       TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
+		intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
+			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
+			       trans_vrr_ctl(crtc_state));
+	}
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
@@ -262,7 +274,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
-	if (!old_crtc_state->vrr.enable)
+	if (!(old_crtc_state->vrr.enable || old_crtc_state->cmrr.enable))
 		return;
 
 	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
@@ -305,6 +317,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->vrr.vmin = intel_de_read(dev_priv, TRANS_VRR_VMIN(cpu_transcoder)) + 1;
 	}
 
-	if (crtc_state->vrr.enable)
+	if (crtc_state->vrr.enable || crtc_state->cmrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
-- 
2.25.1

