Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E1A7A9DF9
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 21:52:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 099F710E60C;
	Thu, 21 Sep 2023 19:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADF4810E612
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 19:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695325914; x=1726861914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bVf+Py79ERnxrU5EPjAWiAun85qx6bWbBbS4oL7U8to=;
 b=C0Q109faTM2jIHXQYaTdSY5kmXGb/vXvXN8F1lbqKVaW/UpPXwmcHGfC
 vL3qj3ajimNfF1L0HvSRTb9T8JUQrcOG0kIhrJm82hP9V5WdEMQNaQfIA
 UMrEQVuGOizIy9GbnwOrA976D2C0ISM+SpAzZ4ywgAAORQd9uiKN//Mq+
 N7ocrLELL4axT4nq/TQwXJ7FoWZ4a75fX/yHC/nsu7nGX+9iLf8ZgkCzG
 TBOYbaVmV292Nn23WT7iJur9fCTEvxtKu+mxMMYVhT+xnQo9rtUJTz/pR
 uGvuM7rS+Y9/k2qNGwcJDioMyyeisQZ2iQtAszbO2m6fPFxw+l7o7QAYH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="379523111"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="379523111"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="817523765"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="817523765"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:53 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 22:51:59 +0300
Message-Id: <20230921195159.2646027-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230921195159.2646027-1-imre.deak@intel.com>
References: <20230921195159.2646027-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/11] drm/i915/fdi: Recompute state for
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
v3: (Ville)
- Constify old and new crtc states.
- Check for fused off pipe C.
- Fix new vs. old crtc state mixup.
- Drop check for pipe C's enabled state.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  4 ++
 drivers/gpu/drm/i915/display/intel_fdi.c     | 47 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fdi.h     |  1 +
 3 files changed, 52 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8b4957751b670..48e5ca34e16a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6297,6 +6297,10 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
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
index 7448219b401c6..e6429dfebe159 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -120,6 +120,53 @@ void intel_fdi_link_train(struct intel_crtc *crtc,
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
+	const struct intel_crtc_state *old_crtc_state;
+	const struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc *crtc;
+
+	if (!IS_IVYBRIDGE(i915) || INTEL_NUM_PIPES(i915) != 3)
+		return 0;
+
+	crtc = intel_crtc_for_pipe(i915, PIPE_C);
+	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+	if (!new_crtc_state)
+		return 0;
+
+	if (!intel_crtc_needs_modeset(new_crtc_state))
+		return 0;
+
+	old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
+	if (!old_crtc_state->fdi_lanes)
+		return 0;
+
+	crtc = intel_crtc_for_pipe(i915, PIPE_B);
+	new_crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
+	if (IS_ERR(new_crtc_state))
+		return PTR_ERR(new_crtc_state);
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
index 66b01c55c0eb0..477ff0136934d 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -16,6 +16,7 @@ struct intel_crtc_state;
 struct intel_encoder;
 struct intel_link_bw_limits;
 
+int intel_fdi_add_affected_crtcs(struct intel_atomic_state *state);
 int intel_fdi_link_freq(struct drm_i915_private *i915,
 			const struct intel_crtc_state *pipe_config);
 bool intel_fdi_compute_pipe_bpp(struct intel_crtc_state *crtc_state);
-- 
2.37.2

