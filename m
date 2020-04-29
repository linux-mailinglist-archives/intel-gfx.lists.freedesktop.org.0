Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E31BA1BE7D7
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 21:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63FE86F3A6;
	Wed, 29 Apr 2020 19:55:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com
 [IPv6:2607:f8b0:4864:20::f44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C05306F3A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 19:55:17 +0000 (UTC)
Received: by mail-qv1-xf44.google.com with SMTP id p13so1790810qvt.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 12:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8DL1V+c1zNd71OczQbjHH+HTNp0MlbJDTYCWV8gx6f8=;
 b=W6delN3xz7wckKexhqtNAVDc9m/F7L0JkDPad39D4IMH77u0GeMtevt8hSPedF7k8C
 ICDl5wZ4jjRQdanXv9ewVNcP4h2j+zgjGDev15dwPJifZkL+AdPQYOeCl/Km41SULNQH
 +A8tJWi+os8IcvAHRg4E0oKLDLTVtlvw/7ydJ5RDMQZ/3t4Wk1Ssf+9U6gD4d2vltZ2d
 zG8AkhZWA5SBpImQtdr4ZLsX5k03Q+CYyAfphUPyOJJdzVUNrjyJ3U1eL8bUp+oui8qM
 N4ij37QL/Z8KRu5/njfQ8pxBxWU8hhUPqxYuCUHTxJ35XzN5GOXezZwIOsNKKpvSXmRu
 OKbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8DL1V+c1zNd71OczQbjHH+HTNp0MlbJDTYCWV8gx6f8=;
 b=VFkgOiYI1LsnrmbMLj0Bii+01I46Qt0laVKekhlnU3RX0MnPCBDpuI8kyNbsiayi0v
 ZRhqvD4d2mLIxleRai6cEGJnjEIC9pObSKej45clq2AY6pmD45axtE6S2LFCucsq3Eer
 irB4DiSQPOFVw0oVWzr7tfo0RIh0FTwItOxph3vKRh1Z1u4OqVmjt6EcvRFKQsTluLGt
 pND1rbzQ9gImZcO2Wh9XU2aAugFc7cJDIOYW/j+wZl/6fC3ZIQR99+GQGWnhN5LK5RFD
 pZ8T90y4eV/jRbrMrVXIIrAMUHF2wH/uBHpK4J0nEjfB621qqCgXsQtD++E7qnLRLR8r
 t/aQ==
X-Gm-Message-State: AGi0PuapSBdG5NTeyWEGwlE8FYE5dcG4HG1WzXXD3xFpr5M4D29Gq16S
 Rf7EUPH0ThbvGV36ZJqaQRiJbA==
X-Google-Smtp-Source: APiQypLsW4ax7FZNokdUa7CyV4Lcz2hj1xR+aag/ZQ9gn9xN2aqblwL5Z8gdGE2sbG6tA3yBbqe55w==
X-Received: by 2002:a0c:9e6d:: with SMTP id z45mr34994852qve.206.1588190116910; 
 Wed, 29 Apr 2020 12:55:16 -0700 (PDT)
Received: from localhost (mobile-166-170-55-34.mycingular.net. [166.170.55.34])
 by smtp.gmail.com with ESMTPSA id 10sm242204qtp.4.2020.04.29.12.55.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 12:55:16 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 15:54:53 -0400
Message-Id: <20200429195502.39919-8-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429195502.39919-1-sean@poorly.run>
References: <20200429195502.39919-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v6 07/16] drm/i915: Protect workers against
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
Cc: daniel.vetter@ffwll.ch, seanpaul@chromium.org
MIME-Version: 1.0
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
Link: https://patchwork.freedesktop.org/patch/msgid/20200117193103.156821-8-sean@poorly.run #v3
Link: https://patchwork.freedesktop.org/patch/msgid/20200218220242.107265-8-sean@poorly.run #v4
Link: https://patchwork.freedesktop.org/patch/msgid/20200305201236.152307-8-sean@poorly.run #v5

Changes in v2:
-Added to the set
Changes in v3:
-Change the WARN_ON condition in intel_hdcp_cleanup to allow for
 initializing connectors as well
Changes in v4:
-None
Changes in v5:
-Change WARN_ON to drm_WARN_ON
Changes in v6:
-None
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 44 ++++++++++++++++++++---
 1 file changed, 39 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ec02eaa43d39..a4446d47ef27 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -888,8 +888,10 @@ static void intel_hdcp_update_value(struct intel_connector *connector,
 		return;
 
 	hdcp->value = value;
-	if (update_property)
+	if (update_property) {
+		drm_connector_get(&connector->base);
 		schedule_work(&hdcp->prop_work);
+	}
 }
 
 /* Implements Part 3 of the HDCP authorization procedure */
@@ -981,6 +983,8 @@ static void intel_hdcp_prop_work(struct work_struct *work)
 
 	mutex_unlock(&hdcp->mutex);
 	drm_modeset_unlock(&dev_priv->drm.mode_config.connection_mutex);
+
+	drm_connector_put(&connector->base);
 }
 
 bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port)
@@ -1860,6 +1864,9 @@ static void intel_hdcp_check_work(struct work_struct *work)
 					       check_work);
 	struct intel_connector *connector = intel_hdcp_to_connector(hdcp);
 
+	if (drm_connector_is_unregistered(&connector->base))
+		return;
+
 	if (!intel_hdcp2_check_link(connector))
 		schedule_delayed_work(&hdcp->check_work,
 				      DRM_HDCP2_CHECK_PERIOD_MS);
@@ -2175,12 +2182,39 @@ void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
 
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
+	drm_WARN_ON(connector->base.dev,
+		connector->base.registration_state == DRM_CONNECTOR_REGISTERED);
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
+	drm_WARN_ON(connector->base.dev, work_pending(&hdcp->prop_work));
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
