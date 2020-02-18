Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 662D11635B5
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 23:04:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2B306EAA8;
	Tue, 18 Feb 2020 22:03:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE0E86EAA0
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 22:03:38 +0000 (UTC)
Received: by mail-yw1-xc44.google.com with SMTP id 192so10181068ywy.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 14:03:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w+pyfuAZAh1veh329AWb5PnerCG5liLmEQyf2lHc9wk=;
 b=b6GjIqK+0pYuNCj8v1LERZvLllxBF1IyR0j0tjR+d3LlXPeFAnAAbZQPuOBMP3vgb5
 FGOYzdQNgGC9xGMhH8dSI92TUW8zYwhh86IaFmDnCtpRZblFjlKN0/A5C/NX1LbLrFnf
 N2319DmZkzbEi6jO/Kw5Kx4Fluo45rorDBSZM7AJL8D5S0z9ZkMTPs1wgHGumYu0bb3P
 TdGwWsyfgi9glq7w8tqrby1BmQk2PVZwbm+voVfu71f0MQsluFEsqP8YqtxVYtIkGsqS
 5sjafbpeEQHQ5ivOTpE16SnIG+DTnUH2oMDqXV+HqqrpG28zOq5t4UV3TsEpEnZBYT8n
 D5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w+pyfuAZAh1veh329AWb5PnerCG5liLmEQyf2lHc9wk=;
 b=dxFT7PxNBZGC1EhyZgWAWQXQ6xIqOq9uiLKDqJk1/RMfqpBbcLBXi9QvPN1GVKNkBg
 riw5PkGvpsBSS9azWof0+rv8gcpK5eUZOV5qef/esPGF0CP1oT8DWrf+MSudwCqlUHUt
 2vITirz/dbQE5GT4UrHIUlc+CE7OGK+fskmKUeLtpBuKH+fpDbWEfdhXdlR387X2G7Tz
 znkV/LXPpH/dQUKG8F3y7ZXZeGWp/Sfl4Zro99YZrzqpXZo/TOkflo7XqzckMvoh+ZIo
 gUJM6GOwoFC7TclMXKt+AqB4czBoK3QjapmoXdo8CBolBZCHKptnQiYbdd2kfr38sXQS
 DlRA==
X-Gm-Message-State: APjAAAV4euEI1kBJcJlc8dt02fGYSi1Gej7qxt9lAODy6PR/yAi3SoUd
 CFtjmhers62xO0V7MA4Tj0v66A==
X-Google-Smtp-Source: APXvYqxpfdAASF1+BsNwANqir409ZFFa1UOIXtW2WiXcHvw0dGOXhxUCdN7nQ1Ss/UJxBMEpmF3EkQ==
X-Received: by 2002:a0d:c245:: with SMTP id e66mr3360131ywd.32.1582063417553; 
 Tue, 18 Feb 2020 14:03:37 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id s31sm31706ywa.30.2020.02.18.14.03.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 14:03:37 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 17:02:35 -0500
Message-Id: <20200218220242.107265-8-sean@poorly.run>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
In-Reply-To: <20200218220242.107265-1-sean@poorly.run>
References: <20200218220242.107265-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 07/14] drm/i915: Protect workers against
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
Link: https://patchwork.freedesktop.org/patch/msgid/20200117193103.156821-8-sean@poorly.run #v3

Changes in v2:
-Added to the set
Changes in v3:
-Change the WARN_ON condition in intel_hdcp_cleanup to allow for
 initializing connectors as well
Changes in v4:
-None
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 43 ++++++++++++++++++++---
 1 file changed, 38 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index c61ade8aa15e6..161f4bcc5bda5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -884,8 +884,10 @@ static void intel_hdcp_update_value(struct intel_connector *connector,
 		return;
 
 	hdcp->value = value;
-	if (update_property)
+	if (update_property) {
+		drm_connector_get(&connector->base);
 		schedule_work(&hdcp->prop_work);
+	}
 }
 
 /* Implements Part 3 of the HDCP authorization procedure */
@@ -976,6 +978,8 @@ static void intel_hdcp_prop_work(struct work_struct *work)
 
 	mutex_unlock(&hdcp->mutex);
 	drm_modeset_unlock(&dev_priv->drm.mode_config.connection_mutex);
+
+	drm_connector_put(&connector->base);
 }
 
 bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port)
@@ -1839,6 +1843,9 @@ static void intel_hdcp_check_work(struct work_struct *work)
 					       check_work);
 	struct intel_connector *connector = intel_hdcp_to_connector(hdcp);
 
+	if (drm_connector_is_unregistered(&connector->base))
+		return;
+
 	if (!intel_hdcp2_check_link(connector))
 		schedule_delayed_work(&hdcp->check_work,
 				      DRM_HDCP2_CHECK_PERIOD_MS);
@@ -2154,12 +2161,38 @@ void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
 
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
