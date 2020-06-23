Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B119D205693
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 17:59:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D34656E9E0;
	Tue, 23 Jun 2020 15:59:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com
 [IPv6:2607:f8b0:4864:20::f42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AF2E6E9DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 15:59:29 +0000 (UTC)
Received: by mail-qv1-xf42.google.com with SMTP id d12so9896674qvn.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 08:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=APhYN06XLBrG4CKwWUjPkV1JE/7C2ckvlbk0/Hym88s=;
 b=afmTbRgBziPD1bZCFBnsqppjwlgitJPseh2NBHK+2x+3WxxGEdQykFn8p/G3uflpy4
 JvypAXUvg3N33hzPanZSqXfMTXPL9L2J2khAH5NrVk3vjE10WlOQ5sY40yiF5LVPGsrQ
 +Fzkm1r/8nnKFGTwfnU9zsQzRgtDazKL+MYsP5b6rXJTvR9LLEs9+xHopuWVVcBW0Isu
 bWWhfRBdvQON5zI/Grfcikh0v8urK5h+9RQtyYF1jyDL+ng9mxDbs9ZoJAFfsXI/pHSG
 Dp8Wt7VOUrZDSTB10m5Qf73a0rdnUah/T3TGnMlp6dc2jvBR+/2l6RinDMF+cwjdV2fR
 pcuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=APhYN06XLBrG4CKwWUjPkV1JE/7C2ckvlbk0/Hym88s=;
 b=Bqf0G2fU7SJfJHzkePdlBCIkgD/WDf1kQX68VWdlP3bgWINSgYRY/lp8lRImjd697F
 IuBUoCX7G5lBaeoit7Tx21KSQeifoov9RstAEFH4x5+iwuLAb/hyrLWNsddjRO1IgXO8
 Wvq7ZjxV0efQMZHcyi6nlFmpfSvCOC8tiiPWqSWyblKizoaBOP0H4w9hz37+fXtSnjQ3
 HPcCOFSrL2xgaTQyCClvgwpQWmoyKtSwL8TU/95b3oRjeVpNKE3W+31ymJJS4UC1JUL6
 pKeggfSbTwVkg4pTAqM+aYmHrZeXIv5oL8Eug+WRHSL9ly85+5qifz9bD4SThL+nVqIr
 aZvA==
X-Gm-Message-State: AOAM533pdPntvGkYe/rqWAkAjOSEgqTwRy/NYdPjtXtEfHFG5Z5eLI6i
 voYt68xDFmkSO1wbc47fsk0hGA==
X-Google-Smtp-Source: ABdhPJxlcrXFFOLfj7UJrIoxN0wS9tHa0tQUVXZHUu5bYdcqPLLu613N0IyJGAIA6sYFEFmA703oLA==
X-Received: by 2002:a0c:8168:: with SMTP id 95mr7590131qvc.93.1592927968501;
 Tue, 23 Jun 2020 08:59:28 -0700 (PDT)
Received: from localhost ([166.137.96.174])
 by smtp.gmail.com with ESMTPSA id q32sm1038682qte.31.2020.06.23.08.59.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jun 2020 08:59:28 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2020 11:58:57 -0400
Message-Id: <20200623155907.22961-8-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200623155907.22961-1-sean@poorly.run>
References: <20200623155907.22961-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v7 07/17] drm/i915: Protect workers against
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
Link: https://patchwork.freedesktop.org/patch/msgid/20200429195502.39919-8-sean@poorly.run #v6

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
Changes in v7:
-None
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 44 ++++++++++++++++++++---
 1 file changed, 39 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 88500a0bd77e..62cab3aea745 100644
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
@@ -2178,12 +2185,39 @@ void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
 
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
