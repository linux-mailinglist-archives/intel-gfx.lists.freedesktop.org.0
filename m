Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B6811D6B9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 20:03:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 743506E182;
	Thu, 12 Dec 2019 19:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com
 [IPv6:2607:f8b0:4864:20::b41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D6C56E13F
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 19:02:48 +0000 (UTC)
Received: by mail-yb1-xb41.google.com with SMTP id n196so881423ybg.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 11:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Oa84zF+WebiMyTfc+t89Owfn/Vfz8GM8mvYnEiKOOKM=;
 b=QNXrrqENg/wcyEWaKuccQPnztRCAYccfxOLIuevfNuC9ipE4g4uRpMyQdfbMvjeO8l
 QuFjjIJrDBDhsdItqOX6MiHHt4d5HdHlBD5X3fr65VmZiy3RQ0gpMXjq0PS2bFNpkJ42
 66PYvandsNl4suOGS/t5SlbmxS8+8AGQg7V0bzFMfOQH9aVtZszq3eyNHYhswmefiTIl
 u6gAfDM44wvSfKEteVknNg87StA1oDLvjUIDcwEcAB/fXg2XN1Ekj2L+U9reaBNpuoEo
 ms2h3RxEjdEflE73rER1xUIHfw5yiUH5StFhw5tGCKCTHkpP696wLegmRXSKJMql0u5x
 Jo8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Oa84zF+WebiMyTfc+t89Owfn/Vfz8GM8mvYnEiKOOKM=;
 b=eMAIs/jzYkkGJk/SFW+h66J9rXeoQmDso5TGwuy6Os+ZsQrXlHAK/xlOJ+7UmKMEGF
 7xQdR7XO4pX5NMiIWeEfaPXQii01i1yfvsMQfbOXkXA48aueDPEYHnUsckgHHWtw1gkr
 mt1fYooy9SitWRjjfeQJ5J6VkGFDMwLtwb4fOyaoo/JHE3GFib942DxgILq86vlGsn6b
 Qhb2Lm7N/QVQQHK1cph7h0cHyiHOzhbgc8fh1cPPkh0y3ENU19Q9X9Xxn4qUAsHtZqKR
 LcwufnYb+wed3lXk4c1CE2TKCH69k1tY4pZvjP1TnM3k4sY5gYmYwEIV0B08Oo9GrE6R
 n3Aw==
X-Gm-Message-State: APjAAAXb+kub3Q+i8TptgcxbUNCGUz6hDt1m8j4uYKz4Xr+vA3eWe0MO
 9A3gxje4Do0qy3elaAfq47exqw==
X-Google-Smtp-Source: APXvYqx6g6CCKSjC27mMv0tzkd7S6ZOikOouCSbV8k/WlTlFGjV8HyledrDbinI2VrLtmeBFnCHT9Q==
X-Received: by 2002:a25:69c2:: with SMTP id e185mr3512216ybc.103.1576177367389; 
 Thu, 12 Dec 2019 11:02:47 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id s31sm2912442ywa.30.2019.12.12.11.02.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 11:02:46 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:02:28 -0500
Message-Id: <20191212190230.188505-11-sean@poorly.run>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20191212190230.188505-1-sean@poorly.run>
References: <20191212190230.188505-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 10/12] drm/i915: Use ddi_update_pipe in
 intel_dp_mst
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
Cc: daniel.vetter@ffwll.ch, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

In order to act upon content_protection property changes, we'll need to
implement the .update_pipe() hook. We can re-use intel_ddi_update_pipe
for this

Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20191203173638.94919-10-sean@poorly.run #v1

Changes in v2:
-none
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 9 +++++----
 drivers/gpu/drm/i915/display/intel_dp.h     | 6 ++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 1 +
 3 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ea8dd8dbc445..3742c5dbd8b4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4097,9 +4097,9 @@ static void intel_ddi_update_pipe_dp(struct intel_encoder *encoder,
 	intel_panel_update_backlight(encoder, crtc_state, conn_state);
 }
 
-static void intel_ddi_update_pipe(struct intel_encoder *encoder,
-				  const struct intel_crtc_state *crtc_state,
-				  const struct drm_connector_state *conn_state)
+void intel_ddi_update_pipe(struct intel_encoder *encoder,
+			   const struct intel_crtc_state *crtc_state,
+			   const struct drm_connector_state *conn_state)
 {
 	struct intel_connector *connector =
 				to_intel_connector(conn_state->connector);
@@ -4109,7 +4109,8 @@ static void intel_ddi_update_pipe(struct intel_encoder *encoder,
 			 conn_state->content_protection !=
 			 DRM_MODE_CONTENT_PROTECTION_UNDESIRED);
 
-	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
+	    !intel_encoder_is_mst(encoder))
 		intel_ddi_update_pipe_dp(encoder, crtc_state, conn_state);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 3da166054788..db732b432809 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -123,6 +123,12 @@ static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 	return ~((1 << lane_count) - 1) & 0xf;
 }
 
+
 u32 intel_dp_mode_to_fec_clock(u32 mode_clock);
 
+/* Shared between intel_dp and intel_dp_mst */
+void intel_ddi_update_pipe(struct intel_encoder *encoder,
+			   const struct intel_crtc_state *crtc_state,
+			   const struct drm_connector_state *conn_state);
+
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 926e49f449a6..fbd9a6c543e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -655,6 +655,7 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *intel_dig_port, enum
 	intel_encoder->compute_config = intel_dp_mst_compute_config;
 	intel_encoder->disable = intel_mst_disable_dp;
 	intel_encoder->post_disable = intel_mst_post_disable_dp;
+	intel_encoder->update_pipe = intel_ddi_update_pipe;
 	intel_encoder->pre_pll_enable = intel_mst_pre_pll_enable_dp;
 	intel_encoder->post_pll_disable = intel_mst_post_pll_disable_dp;
 	intel_encoder->pre_enable = intel_mst_pre_enable_dp;
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
