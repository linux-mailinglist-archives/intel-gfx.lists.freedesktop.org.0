Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1FD4FC60A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 22:48:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3BF710F5D2;
	Mon, 11 Apr 2022 20:48:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com
 [IPv6:2607:f8b0:4864:20::f35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C59D10F5D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Apr 2022 20:48:05 +0000 (UTC)
Received: by mail-qv1-xf35.google.com with SMTP id b17so14578924qvf.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Apr 2022 13:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z6RWGR0FdF0tIUt5tc4R2ob+tC9oXHCvscyu/8xxs90=;
 b=aZEFn6TZGC+JWQ5Qn3fSWZFVsGM7thRbRihHiMA0GAht1P841bM2q0lxiYjOdxZAUX
 WUKh0eOBpDriMECDucTq1gRoBVXFd3mYwEchSnUwr4i+nsPDMY4UtrSIs2zanyMS9KaX
 CE9ZKjxDL/sfXvKZA4WftU5IsuIDBOY6LSwyDQrCuw6Rce18yCgYOJiqOMwFDS/BCuGZ
 XrO7CAauSKhbcqkRbdK/qLwH4eciKf4IXbbL0dvaytlqpHrm5hefYWi2kMFYPJH4vOAg
 75mbtydQtrnFId77fTeqq0rgGqPezQ7CrBBMjHRq9Z5Iud0gWAkVyghHsMyrowLD4Rcb
 H+wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z6RWGR0FdF0tIUt5tc4R2ob+tC9oXHCvscyu/8xxs90=;
 b=SshthD1Nr1pGf9D5Bpzq32C/rgKZlv8lf9+Irspn4wRF99vyaXV0NT1C3/TG2bwK2B
 TuLx6ssDx4YBCn5IJsIC7wkI3NnAtJvW6RhLLP/OskQyQggzHhzqmQVWdUJRftswf46s
 R3PHSK3R6TwStOLSucwn++syJSvHDWWtqtuT1czWKrrr7m7y9OwXHwJR57dFyVRS7GdP
 hoWLdNu+FBAPyijRhLAWcxpjnEbGaRyvgbULS3QUYTxKllX7JRiK5RbrVNmXMoWUoW60
 DMTdEyxlIjYBq1o90XJ+RufuEdTJjJqhs/9J45ZhgihwP2tGgYVkiqajbOPXETy+JFM1
 SKnQ==
X-Gm-Message-State: AOAM530TrXRDh5S64LWtpnBJxV7afNnsQixt43xX6KbRDqRXTZv7DDc7
 H14hOWVVemTRLX5OHk+bABoTkw==
X-Google-Smtp-Source: ABdhPJx43Iwa8ZIQhO9w3fJ5c1l8GFFgljrin+coSzWzmGr2neMnha4DBGtTxuVqWkKq8ekx2BkN0Q==
X-Received: by 2002:a0c:fd91:0:b0:444:46e9:9556 with SMTP id
 p17-20020a0cfd91000000b0044446e99556mr951684qvr.75.1649710084430; 
 Mon, 11 Apr 2022 13:48:04 -0700 (PDT)
Received: from localhost (115.25.199.35.bc.googleusercontent.com.
 [35.199.25.115]) by smtp.gmail.com with ESMTPSA id
 d5-20020a05620a166500b0069c02f6f056sm4633877qko.19.2022.04.11.13.48.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 13:48:04 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, jani.nikula@intel.com,
 intel-gfx@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 rodrigo.vivi@intel.com
Date: Mon, 11 Apr 2022 20:47:34 +0000
Message-Id: <20220411204741.1074308-6-sean@poorly.run>
X-Mailer: git-send-email 2.35.1.1178.g4f1659d476-goog
In-Reply-To: <20220411204741.1074308-1-sean@poorly.run>
References: <20220411204741.1074308-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 05/10] drm/i915/hdcp: Consolidate HDCP
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
Cc: David Airlie <airlied@linux.ie>, markyacoub@chromium.org,
 swboyd@chromium.org, Sean Paul <seanpaul@chromium.org>,
 abhinavk@codeaurora.org, bjorn.andersson@linaro.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Stick all of the setup for HDCP into a dedicated function. No functional
change, but this will facilitate moving HDCP logic into helpers.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-6-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-6-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-6-sean@poorly.run #v3
Link: https://patchwork.freedesktop.org/patch/msgid/20211105030434.2828845-6-sean@poorly.run #v4

Changes in v2:
-None
Changes in v3:
-None
Changes in v4:
-None
Changes in v5:
-None
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 52 +++++++++++++++--------
 1 file changed, 35 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 861c550b5bd6..6bb5a3971ed9 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2167,6 +2167,37 @@ static enum mei_fw_tc intel_get_mei_fw_tc(enum transcoder cpu_transcoder)
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
@@ -2306,28 +2337,14 @@ int intel_hdcp_enable(struct intel_connector *connector,
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
@@ -2355,6 +2372,7 @@ int intel_hdcp_enable(struct intel_connector *connector,
 					true);
 	}
 
+out:
 	mutex_unlock(&dig_port->hdcp_mutex);
 	mutex_unlock(&hdcp->mutex);
 	return ret;
-- 
Sean Paul, Software Engineer, Google / Chromium OS

