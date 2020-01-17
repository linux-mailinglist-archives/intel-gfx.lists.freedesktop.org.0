Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A54F1411C5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 20:31:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22C136F8DD;
	Fri, 17 Jan 2020 19:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc43.google.com (mail-yw1-xc43.google.com
 [IPv6:2607:f8b0:4864:20::c43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 036666F8DF
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 19:31:15 +0000 (UTC)
Received: by mail-yw1-xc43.google.com with SMTP id d7so14839619ywl.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 11:31:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3ubir/m9xDSlAFBCmwMlfNBHlzcc7MKfRN+IGBaH8jo=;
 b=ODdIjfqS5LqerJVA5GdNL+kRYqk4I2IspEeFz93TdGLhiUTwgZ6WvHw4VVAlSIHrGI
 eIg4rPszArm5Uiem4TTRR0ZBSdHEPy0b9UUF1y+JYF/80cx60ghVHKAFnCqald1MPorD
 qxS8BlPxY+e7G0gzBZOZmUAgP5vHFVL1A65HMvXCFvH9rWEk9+o0ur1cGCMKe6erL3KW
 m2tjpwYNPUkoeTXOv3KMfYCU1LvRPUZRu9L5E33h7+l8Z6+OhN66QId4E9WR/K4RFCL5
 3rT13cj1gWHdtTYxxvd1REayrewBp1QYedwy9Hg3llGlITKeoiBrDWhFttT6KO4QIRm4
 KCZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3ubir/m9xDSlAFBCmwMlfNBHlzcc7MKfRN+IGBaH8jo=;
 b=qO9zPM8f35AroSz3JFlTLRhw4FwEQz0xg2EfzheZN6Hz/vkUcNeHGzb7n6WhF7uUq8
 r4DuSp3VuK0U118Yjy76BxD25Se85BgJuEl1CO2ZHUV+2zPs2wjwV5Itl0uBJV3yihX3
 sIb+v+4BYz5VDI4h+EKjDdFaFECNmDrYbeIAPrTq2RM3Fc5gP0SnxNGl4lu0GO8ntxGH
 k0zfSo4EkneqSwOlf+tQJ8wg9w3p53B4iSoA0+BT7eC9xtukFNiIXQC9mapq9d2qt3KL
 G+Vkvh4G+OpFS4CZFIzL6328B0QW99AIw1n71cV0gNIBEvUnNkT0K1V0J5YYITtMF4qN
 hBZQ==
X-Gm-Message-State: APjAAAWXB7zbfRlJobgUxaKpOSvueGyf4OZFJOKGsDuT/h14+VdURczC
 UdRtDOVKE6huQHr6HSnrEVYYKA==
X-Google-Smtp-Source: APXvYqxTRun/YYf6j5hDaVvmHdcIsWSTdXxI77ri4rxOqnjqidu4c9ZIGks0bbD6J7fzFd087Zzplg==
X-Received: by 2002:a81:2746:: with SMTP id n67mr30798872ywn.182.1579289474183; 
 Fri, 17 Jan 2020 11:31:14 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id p62sm11342850ywc.44.2020.01.17.11.31.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 11:31:13 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 14:30:58 -0500
Message-Id: <20200117193103.156821-8-sean@poorly.run>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200117193103.156821-1-sean@poorly.run>
References: <20200117193103.156821-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 07/12] drm/i915: Protect workers against
 disappearing connectors
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

This patch adds some protection against connectors being destroyed
before the HDCP workers are finished.

For check_work, we do a synchronous cancel after the connector is
unregistered which will ensure that it is finished before destruction.

In the case of prop_work, we can't do a synchronous wait since it needs
to take connection_mutex which could cause deadlock. Instead, we'll take
a reference on the connector when scheduling prop_work and give it up
once we're done.

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20191212190230.188505-8-sean@poorly.run #v2

Changes in v2:
- Added to the set
Changes in v3:
- Change the WARN_ON condition in intel_hdcp_cleanup to allow for
  initializing connectors as well
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 43 ++++++++++++++++++++---
 1 file changed, 38 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 798e7e1a19fc..fabacfb1b644 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -863,8 +863,10 @@ static void intel_hdcp_update_value(struct intel_connector *connector,
 		return;
 
 	hdcp->value = value;
-	if (update_property)
+	if (update_property) {
+		drm_connector_get(&connector->base);
 		schedule_work(&hdcp->prop_work);
+	}
 }
 
 /* Implements Part 3 of the HDCP authorization procedure */
@@ -954,6 +956,8 @@ static void intel_hdcp_prop_work(struct work_struct *work)
 
 	mutex_unlock(&hdcp->mutex);
 	drm_modeset_unlock(&dev->mode_config.connection_mutex);
+
+	drm_connector_put(&connector->base);
 }
 
 bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port)
@@ -1802,6 +1806,9 @@ static void intel_hdcp_check_work(struct work_struct *work)
 					       check_work);
 	struct intel_connector *connector = intel_hdcp_to_connector(hdcp);
 
+	if (drm_connector_is_unregistered(&connector->base))
+		return;
+
 	if (!intel_hdcp2_check_link(connector))
 		schedule_delayed_work(&hdcp->check_work,
 				      DRM_HDCP2_CHECK_PERIOD_MS);
@@ -2076,12 +2083,38 @@ void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
 
 void intel_hdcp_cleanup(struct intel_connector *connector)
 {
-	if (!connector->hdcp.shim)
+	struct intel_hdcp *hdcp = &connector->hdcp;
+
+	if (!hdcp->shim)
 		return;
 
-	mutex_lock(&connector->hdcp.mutex);
-	kfree(connector->hdcp.port_data.streams);
-	mutex_unlock(&connector->hdcp.mutex);
+	/*
+	 * If the connector is registered, it's possible userspace could kick
+	 * off another HDCP enable, which would re-spawn the workers.
+	 */
+	WARN_ON(connector->base.registration_state == DRM_CONNECTOR_REGISTERED);
+
+	/*
+	 * Now that the connector is not registered, check_work won't be run,
+	 * but cancel any outstanding instances of it
+	 */
+	cancel_delayed_work_sync(&hdcp->check_work);
+
+	/*
+	 * We don't cancel prop_work in the same way as check_work since it
+	 * requires connection_mutex which could be held while calling this
+	 * function. Instead, we rely on the connector references grabbed before
+	 * scheduling prop_work to ensure the connector is alive when prop_work
+	 * is run. So if we're in the destroy path (which is where this
+	 * function should be called), we're "guaranteed" that prop_work is not
+	 * active (tl;dr This Should Never Happen).
+	 */
+	WARN_ON(work_pending(&hdcp->prop_work));
+
+	mutex_lock(&hdcp->mutex);
+	kfree(hdcp->port_data.streams);
+	hdcp->shim = NULL;
+	mutex_unlock(&hdcp->mutex);
 }
 
 void intel_hdcp_atomic_check(struct drm_connector *connector,
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
