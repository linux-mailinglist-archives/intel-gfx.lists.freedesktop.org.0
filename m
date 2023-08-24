Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A557879AD
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 22:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 325D310E5C1;
	Thu, 24 Aug 2023 20:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com
 [IPv6:2607:f8b0:4864:20::82d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ADB410E5BD
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 20:54:06 +0000 (UTC)
Received: by mail-qt1-x82d.google.com with SMTP id
 d75a77b69052e-40fd2f6bd7cso1387961cf.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 13:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692910445; x=1693515245;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JbH+fBcCZpMijXgFxejSJwqPoIhw9FweehYy5+ciXAw=;
 b=YrRjcI1A3dnmDQLrO4Gup5+XHo4CqUH7BmiQ0hNZVrUHrGn5EcAig8qvt3DWvit9ks
 n1I/lYp5DJHUetfQwXdoN8WWNApcEc5LEgIWKMsmaMQ5AmW2DNocChwH+6nw57tkOH4q
 PLA1mRjBo7gQEzOr8fCuZz/VVBJCOm/QG4e1g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692910445; x=1693515245;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JbH+fBcCZpMijXgFxejSJwqPoIhw9FweehYy5+ciXAw=;
 b=cB53SSwjWk6j6NX0ZUpq4GufVQJ+pUqVbslH8vvKjOuWLaD9aaixcFT2+n4Q5nrHYB
 JElRh3qch2goIfWzPufTMH9PYaiZDNdAl+j0SuTMeuqCV6hpQ4iwaDp1V0MUwvw/1eAG
 Oryjczoy96GIcLNPG9mdw/ZSp9QSgeJCgatw+Ou3VdkHRe6COK51gDmtT+kJjVCrDBe9
 9hWV0lb61nY+k/X5RmVRRc0wtMEWHm+8oNM5/KeIgVwQ7INRdSV9N7YWg6I6D5xPEGPO
 nnRKb8g/pLiFeeCntflGOgUymbuYBfsyYHf1He9e+GtcXep5t8hXuFp5N0xLTy/kCt6J
 dcFg==
X-Gm-Message-State: AOJu0Ywr4czApgLUge2ajf5xrdX5lc8ktbksO/rPC+q2O1gljyj0VG3S
 zYMyNFqsgWzfCAgU3UgN1wZnW/t2srWb+PVcXlU=
X-Google-Smtp-Source: AGHT+IEq3nkYN9LayjGyXWZQ59F/ZUQNvj1uqtEv+1Fm2ykDbj2GuFvelyyv9CZl8wMW6E3XMCwwIg==
X-Received: by 2002:a0c:f5c7:0:b0:63d:16b3:1fec with SMTP id
 q7-20020a0cf5c7000000b0063d16b31fecmr5871532qvm.51.1692910444868; 
 Thu, 24 Aug 2023 13:54:04 -0700 (PDT)
Received: from gildekel.nyc.corp.google.com
 ([2620:0:1003:314:321d:e6f5:6dbd:3e5])
 by smtp.gmail.com with ESMTPSA id
 d2-20020a0ce442000000b0064f5020df91sm62038qvm.28.2023.08.24.13.54.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Aug 2023 13:54:04 -0700 (PDT)
From: Gil Dekel <gildekel@chromium.org>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Aug 2023 16:50:19 -0400
Message-ID: <20230824205335.500163-5-gildekel@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230824205335.500163-1-gildekel@chromium.org>
References: <20230824205335.500163-1-gildekel@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 4/6] drm/i915: Move DP modeset_retry_work
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
