Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7348F445E3A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 04:04:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F22D6E517;
	Fri,  5 Nov 2021 03:04:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com
 [IPv6:2607:f8b0:4864:20::82e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD5A06E517
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 03:04:48 +0000 (UTC)
Received: by mail-qt1-x82e.google.com with SMTP id x10so5661984qta.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Nov 2021 20:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r4HXsD5AuBaf7f3xFAAJPBT6M/K1zPkSTFyAWhiyD0A=;
 b=H1GkJx7NrCbbCJC/hcbNzpWfd7bjkSFDLLHcK7xKhk8W+N1LQXdoUl4RFapee7VG3v
 6O1HcJq3brJCpYSqX2br+hWIJdj8TD20qeka3WFblj2QUxvaOCEZ0ZE9J4mxF2fCpo+x
 7fKpJiQ4rE6znAnAVAgsD4YbGEDrrL1n99tfg53exo0Rvgqc8bR/WutLZ67nWWhBuASf
 caIwO1oLl9hq4sjwn4tvANhC/ZZj6tbfK3g2Dfg5npLf5qAdAHMeFWzWUZbxz8a4GDYb
 X3CsDRcnU+Isux1Kcv1dMCOgmvetcc0/sVMa8K6m4SL5w5q/MqxC26aBnQjA2P/o3A+S
 8bFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r4HXsD5AuBaf7f3xFAAJPBT6M/K1zPkSTFyAWhiyD0A=;
 b=RFDjtokpYPC4rgXlkknse+2edGSzKkXNCwbWXyD82G2G98ljVkQ/K0MwrSh/8FdGnK
 4+V+xzHmPZzum/wnMxT3EZrS7Qf/IBhCnd4Sn281gtUio0uI6qcnYR1DNBNrdztB0hWs
 /57ZMIhVbxaCn+c0Km/2m8dx0gpTdVgP/m4s0BEbk64c1LYkjcQY62YbZZjGggxjWoEU
 cYQ67WtAYhygiJ5a2M8xKKxuyTojq8c1WUjDOkDAmTQpitqdoZiH3lPCaNrWuXbHw9gl
 rYOJcWLkdT7yxufW4ZScawXcgK3qqkK3svcoO4FQ3ojI870xxhhFnRTm2C0RFOqBb/G6
 ZT/w==
X-Gm-Message-State: AOAM533RmhB/ZdbRwS/EYNGV1uTUik64la/T7SPWGbZ6OZieufap4Jwl
 zMkmIhB2cxRPscnaVnwL8MN+WQdLWU5XVw==
X-Google-Smtp-Source: ABdhPJwlX9u1PKr9HnGnTGH0mUOBvkEI6BhRHooOYE0scWFYooN5c1Ao1PlECVuqdEEaTP/c5uQhUQ==
X-Received: by 2002:ac8:4159:: with SMTP id e25mr58206313qtm.69.1636081487788; 
 Thu, 04 Nov 2021 20:04:47 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id l15sm5366482qtk.41.2021.11.04.20.04.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Nov 2021 20:04:47 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Date: Thu,  4 Nov 2021 23:04:19 -0400
Message-Id: <20211105030434.2828845-3-sean@poorly.run>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211105030434.2828845-1-sean@poorly.run>
References: <20211105030434.2828845-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 02/14] drm/hdcp: Avoid changing crtc state in
 hdcp atomic check
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
Cc: jani.nikula@intel.com, abhinavk@codeaurora.org, swboyd@chromium.org,
 David Airlie <airlied@linux.ie>, Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 bjorn.andersson@linaro.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Instead of forcing a modeset in the hdcp atomic check, simply return
true if the content protection value is changing and let the driver
decide whether a modeset is required or not.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-3-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-3-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-3-sean@poorly.run #v3

Changes in v2:
-None
Changes in v3:
-None
Changes in v4:
-None
---
 drivers/gpu/drm/drm_hdcp.c                  | 33 +++++++++++++++------
 drivers/gpu/drm/i915/display/intel_atomic.c |  5 ++--
 include/drm/drm_hdcp.h                      |  2 +-
 3 files changed, 27 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/drm_hdcp.c b/drivers/gpu/drm/drm_hdcp.c
index 522326b03e66..dd8fa91c51d6 100644
--- a/drivers/gpu/drm/drm_hdcp.c
+++ b/drivers/gpu/drm/drm_hdcp.c
@@ -430,11 +430,14 @@ EXPORT_SYMBOL(drm_hdcp_update_content_protection);
  * @connector: drm_connector on which content protection state needs an update
  *
  * This function can be used by display drivers to perform an atomic check on the
- * hdcp state elements. If hdcp state has changed, this function will set
- * mode_changed on the crtc driving the connector so it can update its hardware
- * to match the hdcp state.
+ * hdcp state elements. If hdcp state has changed in a manner which requires the
+ * driver to enable or disable content protection, this function will return
+ * true.
+ *
+ * Returns:
+ * true if the driver must enable/disable hdcp, false otherwise
  */
-void drm_hdcp_atomic_check(struct drm_connector *connector,
+bool drm_hdcp_atomic_check(struct drm_connector *connector,
 			   struct drm_atomic_state *state)
 {
 	struct drm_connector_state *new_conn_state, *old_conn_state;
@@ -452,10 +455,12 @@ void drm_hdcp_atomic_check(struct drm_connector *connector,
 		 * If the connector is being disabled with CP enabled, mark it
 		 * desired so it's re-enabled when the connector is brought back
 		 */
-		if (old_hdcp == DRM_MODE_CONTENT_PROTECTION_ENABLED)
+		if (old_hdcp == DRM_MODE_CONTENT_PROTECTION_ENABLED) {
 			new_conn_state->content_protection =
 				DRM_MODE_CONTENT_PROTECTION_DESIRED;
-		return;
+			return true;
+		}
+		return false;
 	}
 
 	new_crtc_state = drm_atomic_get_new_crtc_state(state,
@@ -467,9 +472,19 @@ void drm_hdcp_atomic_check(struct drm_connector *connector,
 	*/
 	if (drm_atomic_crtc_needs_modeset(new_crtc_state) &&
 	    (old_hdcp == DRM_MODE_CONTENT_PROTECTION_ENABLED &&
-	     new_hdcp != DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
+	     new_hdcp != DRM_MODE_CONTENT_PROTECTION_UNDESIRED)) {
 		new_conn_state->content_protection =
 			DRM_MODE_CONTENT_PROTECTION_DESIRED;
+		return true;
+	}
+
+	/*
+	 * Coming back from disable or changing CRTC with DESIRED state requires
+	 * that the driver try CP enable.
+	 */
+	if (new_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED &&
+	    new_conn_state->crtc != old_conn_state->crtc)
+		return true;
 
 	/*
 	 * Nothing to do if content type is unchanged and one of:
@@ -484,9 +499,9 @@ void drm_hdcp_atomic_check(struct drm_connector *connector,
 	     new_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED)) {
 		if (old_conn_state->hdcp_content_type ==
 				new_conn_state->hdcp_content_type)
-			return;
+			return false;
 	}
 
-	new_crtc_state->mode_changed = true;
+	return true;
 }
 EXPORT_SYMBOL(drm_hdcp_atomic_check);
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 1e306e8427ec..c7b5470c40aa 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -122,8 +122,6 @@ int intel_digital_connector_atomic_check(struct drm_connector *conn,
 		to_intel_digital_connector_state(old_state);
 	struct drm_crtc_state *crtc_state;
 
-	drm_hdcp_atomic_check(conn, state);
-
 	if (!new_state->crtc)
 		return 0;
 
@@ -139,7 +137,8 @@ int intel_digital_connector_atomic_check(struct drm_connector *conn,
 	    new_conn_state->base.picture_aspect_ratio != old_conn_state->base.picture_aspect_ratio ||
 	    new_conn_state->base.content_type != old_conn_state->base.content_type ||
 	    new_conn_state->base.scaling_mode != old_conn_state->base.scaling_mode ||
-	    !drm_connector_atomic_hdr_metadata_equal(old_state, new_state))
+	    !drm_connector_atomic_hdr_metadata_equal(old_state, new_state) ||
+	    drm_hdcp_atomic_check(conn, state))
 		crtc_state->mode_changed = true;
 
 	return 0;
diff --git a/include/drm/drm_hdcp.h b/include/drm/drm_hdcp.h
index d49977a042e1..e6e3d16bc7d3 100644
--- a/include/drm/drm_hdcp.h
+++ b/include/drm/drm_hdcp.h
@@ -301,7 +301,7 @@ int drm_connector_attach_content_protection_property(
 		struct drm_connector *connector, bool hdcp_content_type);
 void drm_hdcp_update_content_protection(struct drm_connector *connector,
 					u64 val);
-void drm_hdcp_atomic_check(struct drm_connector *connector,
+bool drm_hdcp_atomic_check(struct drm_connector *connector,
 			   struct drm_atomic_state *state);
 
 /* Content Type classification for HDCP2.2 vs others */
-- 
Sean Paul, Software Engineer, Google / Chromium OS

