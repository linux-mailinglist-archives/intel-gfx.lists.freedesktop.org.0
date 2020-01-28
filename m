Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAD714B649
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 15:04:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02D986EE57;
	Tue, 28 Jan 2020 14:04:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C128D6EE43
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 14:03:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 06:03:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="429334446"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga006.fm.intel.com with ESMTP; 28 Jan 2020 06:03:49 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 19:24:22 +0530
Message-Id: <20200128135425.14596-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200128135425.14596-1-anshuman.gupta@intel.com>
References: <20200128135425.14596-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/hdcp: Update CP as per the kernel
 internal state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Content Protection property should be updated as per the kernel
internal state. Let's say if Content protection is disabled
by userspace, CP property should be set to UNDESIRED so that
reauthentication will not happen until userspace request it again,
but when kernel disables the HDCP due to any DDI disabling sequences
like modeset/DPMS operation, kernel should set the property to
DESIRED, so that when opportunity arises, kernel will start the
HDCP authentication on its own.

Somewhere in the line, state machine to set content protection to
DESIRED from kernel was broken and IGT coverage was missing for it.
This patch fixes it.
IGT patch to catch further regression on this features is being
worked upon.

CC: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  4 +++
 drivers/gpu/drm/i915/display/intel_hdcp.c    | 26 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp.h    |  2 ++
 3 files changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index da5266e76738..934cdf1f1858 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14595,6 +14595,10 @@ static int intel_atomic_check(struct drm_device *dev,
 		goto fail;
 
 	if (any_ms) {
+		/*
+		 * When there is modeset fix the hdcp uapi CP state.
+		 */
+		intel_hdcp_post_need_modeset_check(state);
 		ret = intel_modeset_checks(state);
 		if (ret)
 			goto fail;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 0fdbd39f6641..be083136eee2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2074,6 +2074,32 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
 	crtc_state->mode_changed = true;
 }
 
+/**
+ * intel_hdcp_post_need_modeset_check.
+ * @state: intel atomic state.
+ *
+ * This function fix the HDCP uapi state when hdcp disabling initiated from
+ * modeset DDI disabling sequence. It updates uapi CP state from ENABLED to
+ * DESIRED so that HDCP uapi state can be restored as per HDCP Auth state.
+ * This function should be called only in case of in case of modeset.
+ * FIXME: As per HDCP content protection property uapi doc, an uevent()
+ * need to be sent if there is transition from ENABLED->DESIRED.
+ */
+void intel_hdcp_post_need_modeset_check(struct intel_atomic_state *state)
+{
+	struct drm_connector *connector;
+	struct drm_connector_state *old_state;
+	struct drm_connector_state *new_state;
+	int i;
+
+	for_each_oldnew_connector_in_state(&state->base, connector, old_state,
+					   new_state, i) {
+		if (old_state->content_protection == DRM_MODE_CONTENT_PROTECTION_ENABLED &&
+		    new_state->content_protection != DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
+			new_state->content_protection = DRM_MODE_CONTENT_PROTECTION_DESIRED;
+	}
+}
+
 /* Handles the CP_IRQ raised from the DP HDCP sink */
 void intel_hdcp_handle_cp_irq(struct intel_connector *connector)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index f3c3272e712a..7bf46bc3c348 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -13,6 +13,7 @@
 struct drm_connector;
 struct drm_connector_state;
 struct drm_i915_private;
+struct intel_atomic_state;
 struct intel_connector;
 struct intel_hdcp_shim;
 enum port;
@@ -21,6 +22,7 @@ enum transcoder;
 void intel_hdcp_atomic_check(struct drm_connector *connector,
 			     struct drm_connector_state *old_state,
 			     struct drm_connector_state *new_state);
+void intel_hdcp_post_need_modeset_check(struct intel_atomic_state *state);
 int intel_hdcp_init(struct intel_connector *connector,
 		    const struct intel_hdcp_shim *hdcp_shim);
 int intel_hdcp_enable(struct intel_connector *connector,
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
