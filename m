Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF33B197815
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 11:55:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C61616E069;
	Mon, 30 Mar 2020 09:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E073C6E069
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 09:55:31 +0000 (UTC)
IronPort-SDR: UdTNDn3SRTFqsHhl7p6KINxDMpa8vfj/TqtJp5wZp8EsEqKB9+lCKOC0YXhUHR/djf7jt1yexU
 4Jtk0D0OEmFg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 02:55:31 -0700
IronPort-SDR: HA0uraCxzsEyFer0WoCEsKBkQOYkAohVAT5oAS6mCXs6XxtJ3GcfPgMzMFUj18F58YP2ovoQoE
 CGMgGdqEKDig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,323,1580803200"; d="scan'208";a="248650466"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 30 Mar 2020 02:55:29 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 12:54:24 +0300
Message-Id: <20200330095425.29113-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Add a retry counter for hotplug
 detect retries
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

On TypeC connectors we need to retry the detection after hotplug events
for a longer time, so add a retry counter to support this. The next
patch will add detection retries on TypeC ports needing this.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c         |  7 +++----
 .../gpu/drm/i915/display/intel_display_types.h   |  6 ++++--
 drivers/gpu/drm/i915/display/intel_dp.c          |  7 +++----
 drivers/gpu/drm/i915/display/intel_hdmi.c        |  6 +++---
 drivers/gpu/drm/i915/display/intel_hotplug.c     | 16 ++++++++++------
 drivers/gpu/drm/i915/display/intel_hotplug.h     |  3 +--
 drivers/gpu/drm/i915/display/intel_sdvo.c        |  5 ++---
 7 files changed, 26 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 916a802af788..4f508bf70f3b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4369,15 +4369,14 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 
 static enum intel_hotplug_state
 intel_ddi_hotplug(struct intel_encoder *encoder,
-		  struct intel_connector *connector,
-		  bool irq_received)
+		  struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_modeset_acquire_ctx ctx;
 	enum intel_hotplug_state state;
 	int ret;
 
-	state = intel_encoder_hotplug(encoder, connector, irq_received);
+	state = intel_encoder_hotplug(encoder, connector);
 
 	drm_modeset_acquire_init(&ctx, 0);
 
@@ -4416,7 +4415,7 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
 	 * time around we didn't detect any change in the sink's connection
 	 * status.
 	 */
-	if (state == INTEL_HOTPLUG_UNCHANGED && irq_received &&
+	if (state == INTEL_HOTPLUG_UNCHANGED && !connector->hotplug_retries &&
 	    !dig_port->dp.is_mst)
 		state = INTEL_HOTPLUG_RETRY;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 176ab5f1e867..671721e74075 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -132,8 +132,7 @@ struct intel_encoder {
 	u16 cloneable;
 	u8 pipe_mask;
 	enum intel_hotplug_state (*hotplug)(struct intel_encoder *encoder,
-					    struct intel_connector *connector,
-					    bool irq_received);
+					    struct intel_connector *connector);
 	enum intel_output_type (*compute_output_type)(struct intel_encoder *,
 						      struct intel_crtc_state *,
 						      struct drm_connector_state *);
@@ -425,6 +424,9 @@ struct intel_connector {
 	struct edid *edid;
 	struct edid *detect_edid;
 
+	/* Number of times hotplug detection was tried after an HPD interrupt */
+	int hotplug_retries;
+
 	/* since POLL and HPD connectors may use the same HPD line keep the native
 	   state of connector->polled in case hotplug storm detection changes it */
 	u8 polled;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2e715e6d7bb4..ab676d5b389b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5556,14 +5556,13 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
  */
 static enum intel_hotplug_state
 intel_dp_hotplug(struct intel_encoder *encoder,
-		 struct intel_connector *connector,
-		 bool irq_received)
+		 struct intel_connector *connector)
 {
 	struct drm_modeset_acquire_ctx ctx;
 	enum intel_hotplug_state state;
 	int ret;
 
-	state = intel_encoder_hotplug(encoder, connector, irq_received);
+	state = intel_encoder_hotplug(encoder, connector);
 
 	drm_modeset_acquire_init(&ctx, 0);
 
@@ -5587,7 +5586,7 @@ intel_dp_hotplug(struct intel_encoder *encoder,
 	 * Keeping it consistent with intel_ddi_hotplug() and
 	 * intel_hdmi_hotplug().
 	 */
-	if (state == INTEL_HOTPLUG_UNCHANGED && irq_received)
+	if (state == INTEL_HOTPLUG_UNCHANGED && !connector->hotplug_retries)
 		state = INTEL_HOTPLUG_RETRY;
 
 	return state;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 0076abc63851..74ee7b2d83ce 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3262,11 +3262,11 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
 
 static enum intel_hotplug_state
 intel_hdmi_hotplug(struct intel_encoder *encoder,
-		   struct intel_connector *connector, bool irq_received)
+		   struct intel_connector *connector)
 {
 	enum intel_hotplug_state state;
 
-	state = intel_encoder_hotplug(encoder, connector, irq_received);
+	state = intel_encoder_hotplug(encoder, connector);
 
 	/*
 	 * On many platforms the HDMI live state signal is known to be
@@ -3280,7 +3280,7 @@ intel_hdmi_hotplug(struct intel_encoder *encoder,
 	 * time around we didn't detect any change in the sink's connection
 	 * status.
 	 */
-	if (state == INTEL_HOTPLUG_UNCHANGED && irq_received)
+	if (state == INTEL_HOTPLUG_UNCHANGED && !connector->hotplug_retries)
 		state = INTEL_HOTPLUG_RETRY;
 
 	return state;
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index a091442efba4..4f6f560e093e 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -270,8 +270,7 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 
 enum intel_hotplug_state
 intel_encoder_hotplug(struct intel_encoder *encoder,
-		      struct intel_connector *connector,
-		      bool irq_received)
+		      struct intel_connector *connector)
 {
 	struct drm_device *dev = connector->base.dev;
 	enum drm_connector_status old_status;
@@ -392,12 +391,17 @@ static void i915_hotplug_work_func(struct work_struct *work)
 			struct intel_encoder *encoder =
 				intel_attached_encoder(connector);
 
+			if (hpd_event_bits & hpd_bit)
+				connector->hotplug_retries = 0;
+			else
+				connector->hotplug_retries++;
+
 			drm_dbg_kms(&dev_priv->drm,
-				    "Connector %s (pin %i) received hotplug event.\n",
-				    connector->base.name, pin);
+				    "Connector %s (pin %i) received hotplug event. (retry %d)\n",
+				    connector->base.name, pin,
+				    connector->hotplug_retries);
 
-			switch (encoder->hotplug(encoder, connector,
-						 hpd_event_bits & hpd_bit)) {
+			switch (encoder->hotplug(encoder, connector)) {
 			case INTEL_HOTPLUG_UNCHANGED:
 				break;
 			case INTEL_HOTPLUG_CHANGED:
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
index 1e6b4fda2900..777b0743257e 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
@@ -15,8 +15,7 @@ enum port;
 
 void intel_hpd_poll_init(struct drm_i915_private *dev_priv);
 enum intel_hotplug_state intel_encoder_hotplug(struct intel_encoder *encoder,
-					       struct intel_connector *connector,
-					       bool irq_received);
+					       struct intel_connector *connector);
 void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 			   u32 pin_mask, u32 long_mask);
 void intel_hpd_init(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 637d8fe2f8c2..8e0eb46871f9 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1934,12 +1934,11 @@ static void intel_sdvo_enable_hotplug(struct intel_encoder *encoder)
 
 static enum intel_hotplug_state
 intel_sdvo_hotplug(struct intel_encoder *encoder,
-		   struct intel_connector *connector,
-		   bool irq_received)
+		   struct intel_connector *connector)
 {
 	intel_sdvo_enable_hotplug(encoder);
 
-	return intel_encoder_hotplug(encoder, connector, irq_received);
+	return intel_encoder_hotplug(encoder, connector);
 }
 
 static bool
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
