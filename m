Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E6A6D2B0B
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Apr 2023 00:12:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AC3A10F322;
	Fri, 31 Mar 2023 22:12:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com
 [IPv6:2607:f8b0:4864:20::1133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCE9A10E436
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 22:12:29 +0000 (UTC)
Received: by mail-yw1-x1133.google.com with SMTP id
 00721157ae682-53d277c1834so440732147b3.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 15:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1680300749;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qGgLIktZeZXjiXyd1NjOxdv56SzugjctpV1IlWL/kqY=;
 b=jsZkDxZAH8hVeEcj22vVCDHy0eypNmaofIzVXqKT4oNK16dIuueo5Li10OB4OOFAsA
 HQtTYEh/49LKeUGIF+hrf2kDw9nGrsweHozD0a2DRi1HIsFVmc/7KTYYLTFjrn/B1TJ0
 zs4Ou9zfXnzBG3MFhkv9a9s7/s2zICcm3GPPQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680300749;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qGgLIktZeZXjiXyd1NjOxdv56SzugjctpV1IlWL/kqY=;
 b=sG0yOrqCZ7aBbIes14gN42+9qq28k/KXbrUl4cy2EFcgjnYOfA3LrTDtJPesEgKgkW
 XPc4RLkXT6kvVFyF2R5VZaltIlaFgJtMFFr7tjNoSHdzo/z/S0b2N6wz1Rcifg2X1ibD
 mcEYTFIA7zqqkcv81XqfueDBZN+CmXR5k+Ai9TCbBpox2yhQBGVYvqYYPa7OaBCY8XVz
 8fT2WuFGVZcNH9PkvcruBzYdnE0T2JEWdOqQHU7QNzoVJJor885y4WSfBl3mF8iRihoF
 xAVbnsbGCdi/XKWvDYzEXXPWGGbKLlVlTgRDEnkjLWDoRSyYmX2mpI5FNZgTM1UXjwXP
 QyNw==
X-Gm-Message-State: AAQBX9fwtkFjBxXSADJ0ARxrPyQivfw5bc7tRx7lCwTSokcHomiqtBmu
 /SwqQTXQahQqwCrl6jThAslEfw==
X-Google-Smtp-Source: AKy350ZRPOziXCpTkUj91VzY16avZZT5oQngZPsx82vYs3AG5qkg1I0iD/z2p8+baWuEgkqNCgzJgQ==
X-Received: by 2002:a81:4f07:0:b0:541:8275:c520 with SMTP id
 d7-20020a814f07000000b005418275c520mr26739527ywb.15.1680300748922; 
 Fri, 31 Mar 2023 15:12:28 -0700 (PDT)
Received: from localhost ([2620:0:1035:15:a8f6:869a:3ef5:e1d])
 by smtp.gmail.com with UTF8SMTPSA id
 dt6-20020a05690c250600b00545a0818474sm797839ywb.4.2023.03.31.15.12.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Mar 2023 15:12:28 -0700 (PDT)
From: Mark Yacoub <markyacoub@chromium.org>
X-Google-Original-From: Mark Yacoub <markyacoub@google.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 31 Mar 2023 18:12:08 -0400
Message-Id: <20230331221213.1691997-7-markyacoub@google.com>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230331221213.1691997-1-markyacoub@google.com>
References: <20230331221213.1691997-1-markyacoub@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 06/10] drm/i915/hdcp: Retain hdcp_capable
 return codes
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
Cc: Jani Nikula <jani.nikula@intel.com>, Mark Yacoub <markyacoub@chromium.org>,
 intel-gfx@lists.freedesktop.org, dianders@chromium.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 seanpaul@chromium.org, freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

The shim functions return error codes, but they are discarded in
intel_hdcp.c. This patch plumbs the return codes through so they are
properly handled.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Mark Yacoub <markyacoub@chromium.org>

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
-Rebased
Changes in v7:
-None
Changes in v8:
-None

 .../drm/i915/display/intel_display_debugfs.c  |  9 +++-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 51 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |  4 +-
 3 files changed, 37 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 7bcd90384a46d..a14b86a07e545 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -494,6 +494,7 @@ static void intel_panel_info(struct seq_file *m,
 static void intel_hdcp_info(struct seq_file *m,
 			    struct intel_connector *intel_connector)
 {
+	int ret;
 	bool hdcp_cap, hdcp2_cap;
 
 	if (!intel_connector->hdcp.shim) {
@@ -501,8 +502,12 @@ static void intel_hdcp_info(struct seq_file *m,
 		goto out;
 	}
 
-	hdcp_cap = intel_hdcp_capable(intel_connector);
-	hdcp2_cap = intel_hdcp2_capable(intel_connector);
+	ret = intel_hdcp_capable(intel_connector, &hdcp_cap);
+	if (ret)
+		hdcp_cap = false;
+	ret = intel_hdcp2_capable(intel_connector, &hdcp2_cap);
+	if (ret)
+		hdcp2_cap = false;
 
 	if (hdcp_cap)
 		seq_puts(m, "HDCP1.4 ");
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 0a20bc41be55d..61a862ae1f286 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -177,50 +177,49 @@ int intel_hdcp_read_valid_bksv(struct intel_digital_port *dig_port,
 }
 
 /* Is HDCP1.4 capable on Platform and Sink */
-bool intel_hdcp_capable(struct intel_connector *connector)
+int intel_hdcp_capable(struct intel_connector *connector, bool *capable)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
-	bool capable = false;
 	u8 bksv[5];
 
+	*capable = false;
+
 	if (!shim)
-		return capable;
+		return 0;
 
-	if (shim->hdcp_capable) {
-		shim->hdcp_capable(dig_port, &capable);
-	} else {
-		if (!intel_hdcp_read_valid_bksv(dig_port, shim, bksv))
-			capable = true;
-	}
+	if (shim->hdcp_capable)
+		return shim->hdcp_capable(dig_port, capable);
+
+	if (!intel_hdcp_read_valid_bksv(dig_port, shim, bksv))
+		*capable = true;
 
-	return capable;
+	return 0;
 }
 
 /* Is HDCP2.2 capable on Platform and Sink */
-bool intel_hdcp2_capable(struct intel_connector *connector)
+int intel_hdcp2_capable(struct intel_connector *connector, bool *capable)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	bool capable = false;
+
+	*capable = false;
 
 	/* I915 support for HDCP2.2 */
 	if (!hdcp->hdcp2_supported)
-		return false;
+		return 0;
 
 	/* MEI interface is solid */
 	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
 	if (!dev_priv->display.hdcp.comp_added ||  !dev_priv->display.hdcp.master) {
 		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
-		return false;
+		return 0;
 	}
 	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
 
 	/* Sink's capability for HDCP2.2 */
-	hdcp->shim->hdcp_2_2_capable(dig_port, &capable);
-
-	return capable;
+	return hdcp->shim->hdcp_2_2_capable(dig_port, capable);
 }
 
 static bool intel_hdcp_in_use(struct drm_i915_private *dev_priv,
@@ -2355,6 +2354,7 @@ int intel_hdcp_enable(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	unsigned long check_link_interval = DRM_HDCP_CHECK_PERIOD_MS;
+	bool capable;
 	int ret = -EINVAL;
 
 	if (!hdcp->shim)
@@ -2373,21 +2373,27 @@ int intel_hdcp_enable(struct intel_connector *connector,
 	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
 	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
 	 */
-	if (intel_hdcp2_capable(connector)) {
+	ret = intel_hdcp2_capable(connector, &capable);
+	if (capable) {
 		ret = _intel_hdcp2_enable(connector);
-		if (!ret)
+		if (!ret) {
 			check_link_interval = DRM_HDCP2_CHECK_PERIOD_MS;
+			goto out;
+		}
 	}
 
 	/*
 	 * When HDCP2.2 fails and Content Type is not Type1, HDCP1.4 will
 	 * be attempted.
 	 */
-	if (ret && intel_hdcp_capable(connector) &&
-	    hdcp->content_type != DRM_MODE_HDCP_CONTENT_TYPE1) {
+	ret = intel_hdcp_capable(connector, &capable);
+	if (ret)
+		goto out;
+
+	if (capable && hdcp->content_type != DRM_MODE_HDCP_CONTENT_TYPE1)
 		ret = _intel_hdcp_enable(connector);
-	}
 
+out:
 	if (!ret) {
 		schedule_delayed_work(&hdcp->check_work, check_link_interval);
 		intel_hdcp_update_value(connector,
@@ -2395,7 +2401,6 @@ int intel_hdcp_enable(struct intel_connector *connector,
 					true);
 	}
 
-out:
 	mutex_unlock(&dig_port->hdcp_mutex);
 	mutex_unlock(&hdcp->mutex);
 	return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index 7c5fd84a7b65a..f06f6e5a2b1ad 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -33,8 +33,8 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 			    const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
 bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port);
-bool intel_hdcp_capable(struct intel_connector *connector);
-bool intel_hdcp2_capable(struct intel_connector *connector);
+int intel_hdcp_capable(struct intel_connector *connector, bool *capable);
+int intel_hdcp2_capable(struct intel_connector *connector, bool *capable);
 void intel_hdcp_component_init(struct drm_i915_private *dev_priv);
 void intel_hdcp_component_fini(struct drm_i915_private *dev_priv);
 void intel_hdcp_cleanup(struct intel_connector *connector);
-- 
2.40.0.348.gf938b09366-goog

