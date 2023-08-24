Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2C57866BF
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 06:33:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1104C10E4B4;
	Thu, 24 Aug 2023 04:33:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com
 [IPv6:2607:f8b0:4864:20::f29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D4AF10E4B4
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 04:33:49 +0000 (UTC)
Received: by mail-qv1-xf29.google.com with SMTP id
 6a1803df08f44-64f37b2dfa6so2340786d6.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 21:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692851628; x=1693456428;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JbH+fBcCZpMijXgFxejSJwqPoIhw9FweehYy5+ciXAw=;
 b=B1B4AXUfWT33RI9G5YZMSjdg7IgiNthsDfDuD92MWg4EDVtFv8GniRz9ZlxE/AIj8H
 I1gK0f7gnIeiFNYj8ygMRSuSQCEbxaXwjzTUS2WL2KyD08mbMNYFmrC36Ux7zcHFZAop
 CnbnlLRcI7tzRa0tuj/JUnjz7ktHKdgYb6o0c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692851628; x=1693456428;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JbH+fBcCZpMijXgFxejSJwqPoIhw9FweehYy5+ciXAw=;
 b=cS6H0hv9GKPdJOCkQtV5DDWCA6pSKGlD1I0BbB9/TaCAf+ykkT35Ogphzy35QfdXMi
 ZfJbinAvMD6z4oafFSIA9YRGhPFTR4BW57AHIU9DQd9+bP7SNba1TTWJLEPvSpykHTiq
 ihVkGjVZXmawcbmpBZafx6gNh8uwwwG8+SzkMEBqyUYLn62HOYpnVrNd+loT23VWLVbM
 4+pBlAUZ26+t/Oi8taYLtk6VXL5tpto4yss5yN9Knd8U2RNWtiGQ2cHiLTisH9wL6Nbp
 g6GXYHydA8y5OWVpGD9ZWcG2xLFB15v/3Kd6HFc2uXvRNFk4oF8Q3b129TGcWqFkjaxG
 8jJA==
X-Gm-Message-State: AOJu0Yz5ty5WzJt1ufVa70s4HjZvxCsqBsOjdwkj5ajH/SS0I3Tzq8jA
 w60Fnb7EjB0P0B/pKWWBGTm7zoHR4UVB7seqRDU=
X-Google-Smtp-Source: AGHT+IGfALp6qDz+Rji0E1aiQl0lS4dsT+Vpe5x7Ji6e1FJmpp2imxe9r8dZ83GkmYvm50YfE3jbDA==
X-Received: by 2002:a05:6214:ac9:b0:64b:926a:e7fc with SMTP id
 g9-20020a0562140ac900b0064b926ae7fcmr17056547qvi.21.1692851628384; 
 Wed, 23 Aug 2023 21:33:48 -0700 (PDT)
Received: from gildekel.nyc.corp.google.com
 ([2620:0:1003:314:321d:e6f5:6dbd:3e5])
 by smtp.gmail.com with ESMTPSA id
 a3-20020a0cca83000000b0064910f273aesm4913632qvk.146.2023.08.23.21.33.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Aug 2023 21:33:47 -0700 (PDT)
From: Gil Dekel <gildekel@chromium.org>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Aug 2023 00:31:07 -0400
Message-ID: <20230824043240.323564-5-gildekel@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230824043240.323564-1-gildekel@chromium.org>
References: <20230818170156.2194015-1-gildekel@chromium.org>
 <20230824043240.323564-1-gildekel@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915: Move DP modeset_retry_work
 into intel_dp
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
Cc: seanpaul@chromium.org, Gil Dekel <gildekel@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently, link-training fallback is only implemented for SST, so having
modeset_retry_work in intel_connector makes sense. However, we hope to
implement link training fallback for MST in a follow-up patchset, so
moving modeset_retry_work to indel_dp will make handling both SST and
MST connectors simpler. This patch does exactly that, and updates all
modeset_retry_work dependencies to use an intel_dp instead.

Credit: this patch is a rebase of Lyude Pual's original patch:
https://patchwork.freedesktop.org/patch/216627/?series=41576&rev=3

Signed-off-by: Gil Dekel <gildekel@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 14 +++++++++++---
 drivers/gpu/drm/i915/display/intel_display_types.h |  6 +++---
 drivers/gpu/drm/i915/display/intel_dp.c            | 11 ++++-------
 .../gpu/drm/i915/display/intel_dp_link_training.c  |  3 +--
 4 files changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index db3c26e013e3..2ec75aa0b4ee 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7962,20 +7962,28 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)

 void intel_hpd_poll_fini(struct drm_i915_private *i915)
 {
-	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
+	struct intel_connector *connector;
+	struct intel_dp *intel_dp;
+	struct intel_encoder *encoder;

 	/* Kill all the work that may have been queued by hpd. */
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
-		if (connector->modeset_retry_work.func)
-			cancel_work_sync(&connector->modeset_retry_work);
 		if (connector->hdcp.shim) {
 			cancel_delayed_work_sync(&connector->hdcp.check_work);
 			cancel_work_sync(&connector->hdcp.prop_work);
 		}
 	}
 	drm_connector_list_iter_end(&conn_iter);
+
+	for_each_intel_dp(&i915->drm, encoder) {
+		if (encoder->type == DRM_MODE_CONNECTOR_eDP ||
+		    encoder->type == DRM_MODE_CONNECTOR_DisplayPort) {
+			intel_dp = enc_to_intel_dp(encoder);
+			cancel_work_sync(&intel_dp->modeset_retry_work);
+		}
+	}
 }

 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 731f2ec04d5c..b92bb69a3fe4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -620,9 +620,6 @@ struct intel_connector {

 	struct intel_dp *mst_port;

-	/* Work struct to schedule a uevent on link train failure */
-	struct work_struct modeset_retry_work;
-
 	struct intel_hdcp hdcp;
 };

@@ -1779,6 +1776,9 @@ struct intel_dp {
 	/* Displayport compliance testing */
 	struct intel_dp_compliance compliance;

+	/* Work struct to schedule a uevent on link train failure */
+	struct work_struct modeset_retry_work;
+
 	/* Downstream facing port caps */
 	struct {
 		int min_tmds_clock, max_tmds_clock;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 01b180c8d9bd..42353b1ac487 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5992,12 +5992,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,

 static void intel_dp_modeset_retry_work_fn(struct work_struct *work)
 {
-	struct intel_connector *intel_connector;
-	struct drm_connector *connector;
-
-	intel_connector = container_of(work, typeof(*intel_connector),
-				       modeset_retry_work);
-	connector = &intel_connector->base;
+	struct intel_dp *intel_dp =
+		container_of(work, typeof(*intel_dp), modeset_retry_work);
+	struct drm_connector *connector = &intel_dp->attached_connector->base;
 	drm_dbg_kms(connector->dev, "[CONNECTOR:%d:%s]\n", connector->base.id,
 		    connector->name);

@@ -6027,7 +6024,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	int type;

 	/* Initialize the work for modeset in case of link train failure */
-	INIT_WORK(&intel_connector->modeset_retry_work,
+	INIT_WORK(&intel_dp->modeset_retry_work,
 		  intel_dp_modeset_retry_work_fn);

 	if (drm_WARN(dev, dig_port->max_lanes < 1,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 31d0d7854003..87d13cd03ef5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1063,7 +1063,6 @@ intel_dp_link_train_phy(struct intel_dp *intel_dp,
 static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 						     const struct intel_crtc_state *crtc_state)
 {
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);

 	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)->base)) {
@@ -1082,7 +1081,7 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 	}

 	/* Schedule a Hotplug Uevent to userspace to start modeset */
-	queue_work(i915->unordered_wq, &intel_connector->modeset_retry_work);
+	queue_work(i915->unordered_wq, &intel_dp->modeset_retry_work);
 }

 /* Perform the link training on all LTTPRs and the DPRX on a link. */
--
Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics
