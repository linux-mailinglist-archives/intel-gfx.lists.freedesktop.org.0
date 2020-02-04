Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE151517A6
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 10:19:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7B336EE14;
	Tue,  4 Feb 2020 09:19:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E61A6EE14
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 09:19:41 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id z3so22021868wru.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Feb 2020 01:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K5DItU65yc/TuuEfNtXFEVn+Ov+hT2lzP2ZjDCwPvwM=;
 b=Y6NIbbF1m3nMLNoF7ZYQ9hvocEvGde5aVAbS2aEacZTc68FN+chnTy590iJAqVlMaG
 C7kI0PN48kHqDz3h0lhGD0PGvbnLY3+xl9n1G/7NWOiCNUH5MRlzZ9peQMQcVrplnnau
 GKS5S8qcYAlXy+rlzaECnOLUGDPw73HQiSfx5ZFR3AI7gb5AC7pb9f0KrOcwRHk5YE0a
 AnZuJCA2b6v7VuBF7u5i2AVyhTUHaesFjCFiFR0gCOH6UkT0mF4wXfIc1mHjYGigfB0b
 7EcnE/zWjOsfk1wz33iZgTHf1jOHPzi5a8BixmqNmHEKdKMDu03jdvzOWhgkDayrqfWf
 R2qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K5DItU65yc/TuuEfNtXFEVn+Ov+hT2lzP2ZjDCwPvwM=;
 b=QgZDe/GKT7LvzW6GJTZQWtrYth/pYZzFSfQ8i4Bt9VXvpVz9WQQPoWZG5ut3TZRWc7
 RfiZZJqaSLiTPZH8+n27enYgGZ6y5iefI7Z1B0B52DBzvXZm3nvoOZNhN+6n0vESjuMU
 opD46m/L5Em9HdUnVSdCCCS+mybRdb9Du/8xZcyoH6TOj6DPCjAAYvXqBqfSgkz5WOr+
 l2zeGJC/DiIdwpjB26WyytBw1h0kDH1nE4MBIGXkk4n5+hkK1LCP8jrFORrOoxAFbEZ4
 FZwEIX3vBgP7RQSCGS1R0Hr0x7+8OTHSdFe71MZ2Df068j7WKKwJGKRwE9hNOejVW5Bg
 3ejw==
X-Gm-Message-State: APjAAAWgfwydjF5k5bHUL1f3uZxEtUFn6UOPp8CvF5nNz1Fq/w/kkJqv
 XaYB/4VUg17RgHoohNUmzPY=
X-Google-Smtp-Source: APXvYqylrgKOWkPtlszhw3/7IRIrfrrtxBFTaXooQEN8KeWT8rHOPue1LZBC7Wu0FSX5hE8GJ5KzFg==
X-Received: by 2002:adf:82ce:: with SMTP id 72mr21073464wrc.14.1580807980000; 
 Tue, 04 Feb 2020 01:19:40 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id f189sm3094968wmf.16.2020.02.04.01.19.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 01:19:39 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue,  4 Feb 2020 12:18:52 +0300
Message-Id: <20200204091855.24259-10-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200204091855.24259-1-wambui.karugax@gmail.com>
References: <20200204091855.24259-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/12] drm/i915/dp_mst: convert to drm_device
 based logging macros.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Conversion of instances of the printk based drm logging macros to the
struct drm_device based logging macros in i915/display/intel_dp_mst.c.
This also involves extracting the drm_i915_private device pointer from
various intel types to use in the macros.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 30 ++++++++++++++-------
 1 file changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 5e82fa3d0704..e3ef5ac54bd3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -42,6 +42,7 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 					    struct drm_connector_state *conn_state,
 					    struct link_config_limits *limits)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_atomic_state *state = crtc_state->uapi.state;
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_dp *intel_dp = &intel_mst->primary->dp;
@@ -73,7 +74,8 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	}
 
 	if (slots < 0) {
-		DRM_DEBUG_KMS("failed finding vcpi slots:%d\n", slots);
+		drm_dbg_kms(&i915->drm,
+			    "failed finding vcpi slots:%d\n", slots);
 		return slots;
 	}
 
@@ -322,15 +324,18 @@ static void intel_mst_disable_dp(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = &intel_dig_port->dp;
 	struct intel_connector *connector =
 		to_intel_connector(old_conn_state->connector);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	int ret;
 
-	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
+	drm_dbg_kms(&i915->drm,
+		    "active links %d\n", intel_dp->active_mst_links);
 
 	drm_dp_mst_reset_vcpi_slots(&intel_dp->mst_mgr, connector->port);
 
 	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr);
 	if (ret) {
-		DRM_DEBUG_KMS("failed to update payload %d\n", ret);
+		drm_dbg_kms(&i915->drm,
+			    "failed to update payload %d\n", ret);
 	}
 	if (old_crtc_state->has_audio)
 		intel_audio_codec_disable(encoder,
@@ -370,7 +375,8 @@ static void intel_mst_post_disable_dp(struct intel_encoder *encoder,
 
 	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
 				  DP_TP_STATUS_ACT_SENT, 1))
-		DRM_ERROR("Timed out waiting for ACT sent when disabling\n");
+		drm_err(&dev_priv->drm,
+			"Timed out waiting for ACT sent when disabling\n");
 	drm_dp_check_act_status(&intel_dp->mst_mgr);
 
 	drm_dp_mst_deallocate_vcpi(&intel_dp->mst_mgr, connector->port);
@@ -404,7 +410,8 @@ static void intel_mst_post_disable_dp(struct intel_encoder *encoder,
 		intel_dig_port->base.post_disable(&intel_dig_port->base,
 						  old_crtc_state, NULL);
 
-	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
+	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
+		    intel_dp->active_mst_links);
 }
 
 static void intel_mst_pre_pll_enable_dp(struct intel_encoder *encoder,
@@ -443,7 +450,8 @@ static void intel_mst_pre_enable_dp(struct intel_encoder *encoder,
 	WARN_ON(INTEL_GEN(dev_priv) >= 12 && first_mst_stream &&
 		!intel_dp_mst_is_master_trans(pipe_config));
 
-	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
+	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
+		    intel_dp->active_mst_links);
 
 	if (first_mst_stream)
 		intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_ON);
@@ -459,7 +467,7 @@ static void intel_mst_pre_enable_dp(struct intel_encoder *encoder,
 				       pipe_config->pbn,
 				       pipe_config->dp_m_n.tu);
 	if (!ret)
-		DRM_ERROR("failed to allocate vcpi\n");
+		drm_err(&dev_priv->drm, "failed to allocate vcpi\n");
 
 	intel_dp->active_mst_links++;
 	temp = intel_de_read(dev_priv, intel_dp->regs.dp_tp_status);
@@ -489,11 +497,12 @@ static void intel_mst_enable_dp(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = &intel_dig_port->dp;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
+	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
+		    intel_dp->active_mst_links);
 
 	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
 				  DP_TP_STATUS_ACT_SENT, 1))
-		DRM_ERROR("Timed out waiting for ACT sent\n");
+		drm_err(&dev_priv->drm, "Timed out waiting for ACT sent\n");
 
 	drm_dp_check_act_status(&intel_dp->mst_mgr);
 
@@ -725,7 +734,8 @@ static void intel_dp_destroy_mst_connector(struct drm_dp_mst_topology_mgr *mgr,
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 
-	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n", connector->base.id, connector->name);
+	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n", connector->base.id,
+		    connector->name);
 	drm_connector_unregister(connector);
 
 	if (dev_priv->fbdev)
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
