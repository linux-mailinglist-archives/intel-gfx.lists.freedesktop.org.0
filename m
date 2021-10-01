Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DCB41F0C1
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 17:12:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C89036EE32;
	Fri,  1 Oct 2021 15:12:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com
 [IPv6:2607:f8b0:4864:20::830])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A73A26EE30
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 15:12:12 +0000 (UTC)
Received: by mail-qt1-x830.google.com with SMTP id m26so9251832qtn.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Oct 2021 08:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qp5JEnD4/ZWm7pQOphVFWIinix3003Tez3ET1mys8Yg=;
 b=d+yNvZM0YxwqZtrXFK1X2RkSwDcFb5sAzQZvobQy8gtNmAfQSCCIvMHf64XkgdgF18
 8crEUjEY7xQCXN3RjxL+TmSGfZyJeKVO2ZJSdiqn8Rj9zgjZBS3DD2ftoQ7bm1mQaCL3
 HOOdFIF+FFyvojuJgxbWOxK3Ud8JkstuLAOispzR6fYLke1PHVQPOkoJnKN/fPLP3mfF
 D175zq1Yj0Ox/wvv4dJLb/8Z/KUsbNt1/OsE8LpLlxIvy6Vy12l5YwGPaPGlqN8TjX4c
 WvuX8LJtUPMGVbE0t/IduaW67q30Uki8VEdLaCpU1OHVHspPahhEu7z03ZaJ3ZXeDaRf
 UOYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qp5JEnD4/ZWm7pQOphVFWIinix3003Tez3ET1mys8Yg=;
 b=V1LwNR4BzhQMNSm3H7k/zPikkSDJUyoGwbg0kZTAQes2zZ7pr9mrUkJ5wix1+O6bU6
 hEKpI+jWNw0etzHu3cDHKHejNA9WTHOUZFOnwp1Yawf+JaRth1WdLHxBEZv3LrfV6zr6
 YcKdX0fgKva92W4iF/Q3aa7W7ASXdmgq3JqpE5jqJB3HSb/JUMVT9nnHl520Bl8Q05e7
 H28mJp/+oW+etAJYD2if/+aY3BLI0PTzhYPyyEaJCRtYW8oQBniMXGsdExFFDl5Ixeas
 lOVutVQ+ifow2tZpBQ3OCUo+DjKyZEhU9kdMY8jKzlMtAGWvBg/3qBEX7o0nl32UwuOL
 h6eg==
X-Gm-Message-State: AOAM5307veoyrXRddeus8bV+KNoQ1UtusoElxDibfCzR0K5N/jjZzJwZ
 CInxMB0HxzDGXS3LNhBT5FhCrQ==
X-Google-Smtp-Source: ABdhPJzsf3e6Q9s1XezeoJrbESUMQfVAkIXoRb1w0cM5tOvG7oxj9mXH8KwjZ+euffqBcqgOVnwYiw==
X-Received: by 2002:ac8:3b5a:: with SMTP id r26mr13374548qtf.171.1633101131843; 
 Fri, 01 Oct 2021 08:12:11 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id 19sm3336711qtt.20.2021.10.01.08.12.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Oct 2021 08:12:11 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Cc: swboyd@chromium.org, jani.nikula@linux.intel.com,
 Sean Paul <seanpaul@chromium.org>, Jani Nikula <jani.nikula@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Fri,  1 Oct 2021 11:11:34 -0400
Message-Id: <20211001151145.55916-6-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20211001151145.55916-1-sean@poorly.run>
References: <20211001151145.55916-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 05/14] drm/i915/hdcp: Consolidate HDCP
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Stick all of the setup for HDCP into a dedicated function. No functional
change, but this will facilitate moving HDCP logic into helpers.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-6-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-6-sean@poorly.run #v2

Changes in v2:
-None
Changes in v3:
-None
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 52 +++++++++++++++--------
 1 file changed, 35 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index feebafead046..af166baf8c71 100644
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

