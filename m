Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D997A0E39
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:27:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A41F10E582;
	Thu, 14 Sep 2023 19:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F311510E588
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719616; x=1726255616;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XfaIU1dJ45nNeFQfd9bHp5K/qeWJeiDJM68LUiiuLfA=;
 b=amtXna+MdM0hjfPq8p/DzS0hUJwuwnvzLJpt2RQqK7MPNwh8BouyRzT3
 3E3CkDExIKcRT4nURI3+SwanORMmVUh7+3mQmXOGk9fvCPvykoMD2PMaH
 jKq5sfe3i3/D657Xk5hfbFmrrPS/B+/knlelNTDSnk4ndReY4gxaO0n5X
 sj/x1z1YSRYck6ynqcp3PvlRBGgN/IEFYKuySlfCxxWfZc4DTWlHPBP+1
 S+z7eFxMCW+3vXN5+q3dpqoqWqPvdqrOAdqLkr+hZ75QOi8JvVUftM9Y6
 GDcGBUT/ZBqPY+8jaLeJuWRGQEMBtrwHF7kcPRseDPKwdT3MaBZj95oaR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421714"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421714"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790548"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790548"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:54 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:45 +0300
Message-Id: <20230914192659.757475-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 11/25] drm/i915/fdi: Recompute state for
 affected CRTCs on FDI links
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

Recompute the state of all CRTCs on an FDI link during a modeset that
may be affected by the modeset of other CRTCs on the same link. This
ensures that each CRTC on the link maximizes its BW use (after another
CRTC is disabled).

In practice this means recomputing pipe B's config on IVB if pipe C gets
disabled.

v2:
- Add the change recomputing affected CRTC states in a separate patch.
  (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  4 ++
 drivers/gpu/drm/i915/display/intel_fdi.c     | 53 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fdi.h     |  1 +
 3 files changed, 58 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index aad16dcceb788..31297a333f50e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6210,6 +6210,10 @@ int intel_atomic_check_config(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	ret = intel_fdi_add_affected_crtcs(state);
+	if (ret)
+		return ret;
+
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state)) {
 			if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index ad01915a4a39b..d723ae7e10d71 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -120,6 +120,59 @@ void intel_fdi_link_train(struct intel_crtc *crtc,
 	dev_priv->display.funcs.fdi->fdi_link_train(crtc, crtc_state);
 }
 
+/**
+ * intel_fdi_add_affected_crtcs - add CRTCs on FDI affected by other modeset CRTCs
+ * @state: intel atomic state
+ *
+ * Add a CRTC using FDI to @state if changing another CRTC's FDI BW usage is
+ * known to affect the available FDI BW for the former CRTC. In practice this
+ * means adding CRTC B on IVYBRIDGE if its use of FDI lanes is limited (by
+ * CRTC C) and CRTC C is getting disabled.
+ *
+ * Returns 0 in case of success, or a negative error code otherwise.
+ */
+int intel_fdi_add_affected_crtcs(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *old_crtc_state;
+	struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc *crtc;
+
+	if (!IS_IVYBRIDGE(i915))
+		return 0;
+
+	crtc = intel_crtc_for_pipe(i915, PIPE_C);
+	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+
+	if (!new_crtc_state)
+		return 0;
+
+	old_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+
+	if (!old_crtc_state->fdi_lanes)
+		return 0;
+
+	if (!intel_crtc_needs_modeset(new_crtc_state))
+		return 0;
+
+	if (new_crtc_state->uapi.enable)
+		return 0;
+
+	crtc = intel_crtc_for_pipe(i915, PIPE_B);
+	new_crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
+
+	if (IS_ERR(new_crtc_state))
+		return PTR_ERR(old_crtc_state);
+
+	old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
+	if (!old_crtc_state->fdi_lanes)
+		return 0;
+
+	return intel_modeset_pipes_in_mask_early(state,
+						 "FDI link BW decrease on pipe C",
+						 BIT(PIPE_B));
+}
+
 /* units of 100MHz */
 static int pipe_required_fdi_lanes(struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
index 129444c580f27..eb02b967bb440 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -14,6 +14,7 @@ struct intel_crtc_state;
 struct intel_encoder;
 struct intel_link_bw_limits;
 
+int intel_fdi_add_affected_crtcs(struct intel_atomic_state *state);
 int intel_fdi_link_freq(struct drm_i915_private *i915,
 			const struct intel_crtc_state *pipe_config);
 int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
-- 
2.37.2

