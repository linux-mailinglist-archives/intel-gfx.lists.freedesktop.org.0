Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3ED54D8FF4
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 23:59:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EF9F10E23D;
	Mon, 14 Mar 2022 22:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EF6910E23D
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 22:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647298745; x=1678834745;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TmOI62L5ys1Xgxp3FstbeZIW720Da4TFvM8W8i99CUY=;
 b=FWyQAi5XOmjn/+WDCIcGiptWrRz1Kfqk/UuBTT+RmDs5EK3bR2RH5tQ7
 L3whChI+wI2kx+QcenKyt0lnUQH8saubfMqWNsK+d2PwqigvRZP1fSJGc
 TSJ+DYk0J6pvkiOSpSdyltFNTn89oLBaxz1z1gEacZapC7i75B1jm2+cZ
 tbLir0my04J7BHAc10dv8mYruYE0yWzapbcTcHRtSpTMj/zvoFEp9ZGaj
 Qm/njR293K8RUzy+mmR7pGYTsNhqh4eZeMzI9b2z8ZrfQV+ctQVkIjCf3
 0xwhMDjw9e3+sC5JSE4mo9z40epo09oKK+LvlJB4QiG3ua2y60QrswMcG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="243612163"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="243612163"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 15:59:05 -0700
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="556653889"
Received: from mirceaau-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.33.88])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 15:59:03 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 00:58:37 +0200
Message-Id: <20220314225837.42816-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220314225837.42816-1-vinod.govindapillai@intel.com>
References: <20220314225837.42816-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 2/2] drm/i915/display: Add sleep for power
 state connector
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

From: Mohammed Khajapasha <mohammed.khajapasha@intel.com>

Add 2sec sleep for power state connector when a monitor
is in power sleep state before atomic commit enable.

Monitors like LG 27UL650-W, 27UK850 goes into power
sleep state and generates long duration hotplug events
even the monitor connected for display, sleep for 2sec
for power state monitor become available before enable
atomic commit.

Signed-off-by: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 80 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  8 ++
 2 files changed, 88 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 54db81c2cce6..a793f4234460 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -224,6 +224,81 @@ static int intel_compute_global_watermarks(struct intel_atomic_state *state)
 	return 0;
 }
 
+static void
+intel_connectors_wakeup_hpd_suppress(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct i915_hotplug *hpd = &i915->hotplug;
+	bool do_delay = false;
+	struct intel_connector *connector;
+	struct intel_digital_connector_state *conn_state;
+	int i;
+
+	if (!hpd->suppress_wakeup_hpd_enabled)
+		return;
+
+	for_each_new_intel_connector_in_state(state, connector,
+					      conn_state, i) {
+		struct intel_crtc *crtc = to_intel_crtc(conn_state->base.crtc);
+		struct intel_crtc_state *crtc_state;
+
+		if (!crtc || !intel_connector_needs_modeset(state,
+							    &connector->base))
+			continue;
+
+		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+		if (!crtc_state->hw.active)
+			continue;
+
+		if (!intel_connector_need_suppress_wakeup_hpd(connector))
+			continue;
+
+		if (time_is_before_jiffies64(connector->disabled_time +
+					     msecs_to_jiffies(MSEC_PER_SEC * 10))) {
+			drm_dbg_kms(&i915->drm,
+				    "[CONNECTOR:%d:%s] Suppress wakeup HPD for 2 secs\n",
+				    connector->base.base.id, connector->base.name);
+			do_delay = true;
+		}
+	}
+
+	if (do_delay)
+		msleep(2 * MSEC_PER_SEC);
+}
+
+static void
+intel_connectors_wakeup_hpd_track_disabling(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct i915_hotplug *hpd = &i915->hotplug;
+	struct intel_connector *connector;
+	struct intel_digital_connector_state *conn_state;
+	int i;
+
+	if (!hpd->suppress_wakeup_hpd_enabled)
+		return;
+
+	for_each_old_intel_connector_in_state(state, connector,
+					      conn_state, i) {
+		struct intel_crtc *crtc = to_intel_crtc(conn_state->base.crtc);
+		struct intel_crtc_state *crtc_state;
+
+		if (!crtc || !intel_connector_needs_modeset(state,
+							    &connector->base))
+			continue;
+
+		crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
+		if (!crtc_state->hw.active)
+			continue;
+
+		drm_dbg_kms(&i915->drm,
+			    "[CONNECTOR:%d:%s] Update disabled time for wakeup HPD handling\n",
+			    connector->base.base.id, connector->base.name);
+
+		connector->disabled_time = get_jiffies_64();
+	}
+}
+
 /* returns HPLL frequency in kHz */
 int vlv_get_hpll_vco(struct drm_i915_private *dev_priv)
 {
@@ -8517,6 +8592,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		}
 	}
 
+	intel_connectors_wakeup_hpd_track_disabling(state);
+
 	intel_commit_modeset_disables(state);
 
 	/* FIXME: Eventually get rid of our crtc->config pointer */
@@ -8560,6 +8637,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	dev_priv->display->commit_modeset_enables(state);
 
+	/* sleep for 2sec for power state connector become available */
+	intel_connectors_wakeup_hpd_suppress(state);
+
 	intel_encoders_update_complete(state);
 
 	if (state->modeset)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 8513703086b7..12ecf1497b07 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -539,6 +539,14 @@ enum hpd_pin {
 			     ((connector) = to_intel_connector((__state)->base.connectors[__i].ptr), \
 			     (new_connector_state) = to_intel_digital_connector_state((__state)->base.connectors[__i].new_state), 1))
 
+#define for_each_old_intel_connector_in_state(__state, connector, old_connector_state, __i) \
+	for ((__i) = 0; \
+		(__i) < (__state)->base.num_connector; \
+		(__i)++) \
+		for_each_if((__state)->base.connectors[__i].ptr && \
+				((connector) = to_intel_connector((__state)->base.connectors[__i].ptr), \
+				(old_connector_state) = to_intel_digital_connector_state((__state)->base.connectors[__i].old_state), 1))
+
 int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc);
 u8 intel_calc_active_pipes(struct intel_atomic_state *state,
-- 
2.25.1

