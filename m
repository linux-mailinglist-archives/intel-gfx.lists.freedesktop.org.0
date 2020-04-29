Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4345F1BE7EA
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 21:55:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D76DC6F3D6;
	Wed, 29 Apr 2020 19:55:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com
 [IPv6:2607:f8b0:4864:20::743])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 698156F3AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 19:55:23 +0000 (UTC)
Received: by mail-qk1-x743.google.com with SMTP id q7so3374034qkf.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 12:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=f6MEZnkl4NSKyNDWkAAso81ljL4LaIi7HLwxXSetA1M=;
 b=BmX30afZHdnz24M2mMvxjzw007dzXBQULct94xjEVO1zpMOaCpeXnfDoS67y8hET8P
 6ru0L1JIFLFR7Wljrhg3qJFPPHgW46UyxEaM86Om2Mls/s/qW5RaMmdAXPkeiwhsgzm0
 A035R/yu7gJwwH1u1DFFHg4uc/e8Hpbx8M2z7h/Lh0PDBNnCndvO1GyZAOq1oi2FULr0
 RhFxXbnyJitM8Gx5RdA5oyoBRsn6s3SxC1RswP7ifXXUH0BlJFEXOKp89Ucp3r38YMbb
 dYzDUfZjxp3cCTqTqZH19avN3VDSPuJyf+0Umi0esQ4R9yfJZCfDYB2/46LdHfzRWmPS
 JHag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=f6MEZnkl4NSKyNDWkAAso81ljL4LaIi7HLwxXSetA1M=;
 b=O8aEp6AQwIDQwz8qlGgV1pSd6ohacjzmzMoac27uCOCwBGDQxWw2QTub/X1fHz7+wG
 SI0uDXE56CQOfyAxuqZoSgNte0lKLdDAWpG2XMlCoU0xoLkr0aQH0LqkSCh5Jfx5xY5c
 OxnwLSdOh3efLDgCT/cJFmBSH+sfv6b3kZO0pIR5kjJec5br4jYrL7ETc9qjjV6emMuJ
 STi/S+8RpZHVhmW5uLZbHOjc+ZEG7FU1kFAekRhd4iqobI0GCnuf0Ijprd8PGxi2D9gI
 xrLedGCjMk0+fi4yc5Ohj29tdEFMGMlu/qL77IlMGaN0uLgFghFtpXPk0wRIHpBrXhdH
 8atg==
X-Gm-Message-State: AGi0PuYeNU1zxwuoubNHwCV9Ruo55gl+IfAvfftKky9Tq8Iwvcx2b/cF
 kogxLV2NxR1iJPpHm2aZNjqIAQ==
X-Google-Smtp-Source: APiQypKfsXI3Wi94Zoza1Ijb4fnyABtsFzKMf6n+T+T7g/ZemCPcZfPaRCw65/xRHBjyGeLXsXTC8Q==
X-Received: by 2002:a05:620a:1232:: with SMTP id
 v18mr69080qkj.429.1588190122588; 
 Wed, 29 Apr 2020 12:55:22 -0700 (PDT)
Received: from localhost (mobile-166-170-55-34.mycingular.net. [166.170.55.34])
 by smtp.gmail.com with ESMTPSA id j76sm108821qke.114.2020.04.29.12.55.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 12:55:22 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 15:54:56 -0400
Message-Id: <20200429195502.39919-11-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429195502.39919-1-sean@poorly.run>
References: <20200429195502.39919-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v6 10/16] drm/i915: Use ddi_update_pipe in
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
Cc: daniel.vetter@ffwll.ch, seanpaul@chromium.org
MIME-Version: 1.0
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
Link: https://patchwork.freedesktop.org/patch/msgid/20191212190230.188505-11-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20200117193103.156821-11-sean@poorly.run #v3
Link: https://patchwork.freedesktop.org/patch/msgid/20200218220242.107265-11-sean@poorly.run #v4
Link: https://patchwork.freedesktop.org/patch/msgid/20200305201236.152307-11-sean@poorly.run #v5

Changes in v2:
-None
Changes in v3:
-None
Changes in v4:
-None
Changes in v5:
-None
Changes in v6:
-None
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 11 ++++++-----
 drivers/gpu/drm/i915/display/intel_dp.h     |  6 ++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  1 +
 3 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 11155a8a73c0..85dcb2dc2d3c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3865,13 +3865,14 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
 	intel_panel_update_backlight(state, encoder, crtc_state, conn_state);
 }
 
-static void intel_ddi_update_pipe(struct intel_atomic_state *state,
-				  struct intel_encoder *encoder,
-				  const struct intel_crtc_state *crtc_state,
-				  const struct drm_connector_state *conn_state)
+void intel_ddi_update_pipe(struct intel_atomic_state *state,
+			   struct intel_encoder *encoder,
+			   const struct intel_crtc_state *crtc_state,
+			   const struct drm_connector_state *conn_state)
 {
 
-	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
+	    !intel_encoder_is_mst(encoder))
 		intel_ddi_update_pipe_dp(state, encoder, crtc_state,
 					 conn_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 6659ce15a693..0bd440382281 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -16,6 +16,7 @@ struct drm_connector_state;
 struct drm_encoder;
 struct drm_i915_private;
 struct drm_modeset_acquire_ctx;
+struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_digital_port;
@@ -127,4 +128,9 @@ static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 
 u32 intel_dp_mode_to_fec_clock(u32 mode_clock);
 
+void intel_ddi_update_pipe(struct intel_atomic_state *state,
+						   struct intel_encoder *encoder,
+						   const struct intel_crtc_state *crtc_state,
+						   const struct drm_connector_state *conn_state);
+
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4d2384650383..d9dc4dc6ea92 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -805,6 +805,7 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *intel_dig_port, enum
 	intel_encoder->compute_config_late = intel_dp_mst_compute_config_late;
 	intel_encoder->disable = intel_mst_disable_dp;
 	intel_encoder->post_disable = intel_mst_post_disable_dp;
+	intel_encoder->update_pipe = intel_ddi_update_pipe;
 	intel_encoder->pre_pll_enable = intel_mst_pre_pll_enable_dp;
 	intel_encoder->pre_enable = intel_mst_pre_enable_dp;
 	intel_encoder->enable = intel_mst_enable_dp;
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
