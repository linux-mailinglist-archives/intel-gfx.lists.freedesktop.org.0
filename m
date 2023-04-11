Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 752256DE4CD
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 21:22:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DDD810E64C;
	Tue, 11 Apr 2023 19:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com
 [IPv6:2607:f8b0:4864:20::b33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C18310E642
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 19:21:50 +0000 (UTC)
Received: by mail-yb1-xb33.google.com with SMTP id e127so9362638ybf.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 12:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1681240909; x=1683832909;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fK7kJoAVmrfbc0th2W+DXCykp+0RZfhoVtxEFpE2/s8=;
 b=Ri93NLxAlikAO17pHOq5fp8DZ670310ThBxsxobK+tkw5T2muPpqnCOWgLaaEuTbTe
 WSxoPatm9qhJan/CBHiLMpHye3Snn2fjehhgL/cMwJApKiZCw0MWfPM8Bwvh3FU35ltE
 IiUHVv8Kayl6ke7jCcmaQlI0QVsQN5x5UpqZI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681240909; x=1683832909;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=fK7kJoAVmrfbc0th2W+DXCykp+0RZfhoVtxEFpE2/s8=;
 b=lbTdC56gRs9DYVlxdGPsDHvOgpBRAGv18SpseIMQELSe1HBd35GxQWvtTkytcuruRg
 8eDReQc7MUckqtHJcz5Ab2zjjhtBGJ6hQYzWD93dB42RoMll6tRnyEqH34rqQvlVec2K
 G68cXKvFVv6xH34wJTCbtVhlRphsG6lz5Xo6gZfzJ+gnJt7fmKuCmw12iuK90yjtmEMc
 slTbVXXpLrIRdpMoanMyhyvcgR00y6lkXUH/q9kmu34Elk1ZazxdC3WYC6kxsFT/e0lq
 6ZsuC8sT6EAEYFZ6KCn+flVuVaTP4zFF8rMBHJibHlaei69R7ZX0lU4PM23DzCtRkEKK
 RmdA==
X-Gm-Message-State: AAQBX9f09qtYMKWIsZsOUKjbEY3vaFtXZkoUzDYrTwE02tqpNPXw+xmj
 Cp852+3Fsnh4d+BggXP89+njKw==
X-Google-Smtp-Source: AKy350a+IH+whfG6A/JcjJpGfASQTm7HlLPVSpckZE07tztF/zgLvBN/SBJticsRyVzsaQKMZtrZYw==
X-Received: by 2002:a25:6808:0:b0:b8e:d4e2:a122 with SMTP id
 d8-20020a256808000000b00b8ed4e2a122mr8764716ybc.35.1681240909145; 
 Tue, 11 Apr 2023 12:21:49 -0700 (PDT)
Received: from localhost ([2620:0:1035:15:2991:9b76:4e62:65bf])
 by smtp.gmail.com with UTF8SMTPSA id
 e73-20020a25374c000000b00b7767ca7476sm3871816yba.19.2023.04.11.12.21.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Apr 2023 12:21:48 -0700 (PDT)
From: Mark Yacoub <markyacoub@chromium.org>
X-Google-Original-From: Mark Yacoub <markyacoub@google.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 11 Apr 2023 15:21:29 -0400
Message-Id: <20230411192134.508113-6-markyacoub@google.com>
X-Mailer: git-send-email 2.40.0.577.gac1e443424-goog
In-Reply-To: <20230411192134.508113-1-markyacoub@google.com>
References: <20230411192134.508113-1-markyacoub@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 05/10] drm/i915/hdcp: Consolidate HDCP
 setup/state cache
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 dianders@chromium.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, seanpaul@chromium.org,
 dmitry.baryshkov@linaro.org, freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Stick all of the setup for HDCP into a dedicated function. No functional
change, but this will facilitate moving HDCP logic into helpers.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>

---
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
Changes in v7:
- None

 drivers/gpu/drm/i915/display/intel_hdcp.c | 52 +++++++++++++++--------
 1 file changed, 35 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 396d2cef000aa..0a20bc41be55d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2190,6 +2190,37 @@ static enum mei_fw_tc intel_get_mei_fw_tc(enum transcoder cpu_transcoder)
 	}
 }
 
+static int
+_intel_hdcp_setup(struct intel_connector *connector,
+		  const struct intel_crtc_state *pipe_config, u8 content_type)
+{
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_hdcp *hdcp = &connector->hdcp;
+	int ret = 0;
+
+	if (!connector->encoder) {
+		drm_err(&dev_priv->drm, "[%s:%d] encoder is not initialized\n",
+			connector->base.name, connector->base.base.id);
+		return -ENODEV;
+	}
+
+	hdcp->content_type = content_type;
+
+	if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST)) {
+		hdcp->cpu_transcoder = pipe_config->mst_master_transcoder;
+		hdcp->stream_transcoder = pipe_config->cpu_transcoder;
+	} else {
+		hdcp->cpu_transcoder = pipe_config->cpu_transcoder;
+		hdcp->stream_transcoder = INVALID_TRANSCODER;
+	}
+
+	if (DISPLAY_VER(dev_priv) >= 12)
+		dig_port->hdcp_port_data.fw_tc = intel_get_mei_fw_tc(hdcp->cpu_transcoder);
+
+	return ret;
+}
+
 static int initialize_hdcp_port_data(struct intel_connector *connector,
 				     struct intel_digital_port *dig_port,
 				     const struct intel_hdcp_shim *shim)
@@ -2329,28 +2360,14 @@ int intel_hdcp_enable(struct intel_connector *connector,
 	if (!hdcp->shim)
 		return -ENOENT;
 
-	if (!connector->encoder) {
-		drm_err(&dev_priv->drm, "[%s:%d] encoder is not initialized\n",
-			connector->base.name, connector->base.base.id);
-		return -ENODEV;
-	}
-
 	mutex_lock(&hdcp->mutex);
 	mutex_lock(&dig_port->hdcp_mutex);
 	drm_WARN_ON(&dev_priv->drm,
 		    hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
-	hdcp->content_type = content_type;
-
-	if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST)) {
-		hdcp->cpu_transcoder = pipe_config->mst_master_transcoder;
-		hdcp->stream_transcoder = pipe_config->cpu_transcoder;
-	} else {
-		hdcp->cpu_transcoder = pipe_config->cpu_transcoder;
-		hdcp->stream_transcoder = INVALID_TRANSCODER;
-	}
 
-	if (DISPLAY_VER(dev_priv) >= 12)
-		dig_port->hdcp_port_data.fw_tc = intel_get_mei_fw_tc(hdcp->cpu_transcoder);
+	ret = _intel_hdcp_setup(connector, pipe_config, content_type);
+	if (ret)
+		goto out;
 
 	/*
 	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
@@ -2378,6 +2395,7 @@ int intel_hdcp_enable(struct intel_connector *connector,
 					true);
 	}
 
+out:
 	mutex_unlock(&dig_port->hdcp_mutex);
 	mutex_unlock(&hdcp->mutex);
 	return ret;
-- 
2.40.0.577.gac1e443424-goog

