Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B00AA205691
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 17:59:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 504806E9DE;
	Tue, 23 Jun 2020 15:59:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com
 [IPv6:2607:f8b0:4864:20::742])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DF6B6E9DB
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 15:59:27 +0000 (UTC)
Received: by mail-qk1-x742.google.com with SMTP id j80so7955317qke.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 08:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0oTRxyob8Rb9O68eUpNaWK5InW0jotm+qAWtxSViGxk=;
 b=E9cIye4CnnOCrZQy0YTL2CuQn0uPPmU5XnvT8KsOG4YHetk/Iml/8/SVTNbDHYwEuL
 9Qe1Lgkec/r/nXYmuQfmFnkZJD/NccFt9UfUSdmnKgF1PGCgfgVFTCvwtc46vku4tKHo
 76PnYca22TMgi4lfCOyqGmt0E2Sftlv2MWgCjE0Mho1mx8rxV0bhxgMRlPTCEzfM0rgM
 DSvI2DjRa1UNT//FMjV/Kd86h6xXTP3P6jgzywjZulS80fdSXrORrcjm0mJp9ljLAR7E
 815CIqQ2HwUmmdb3XYI1EBOQ1ungiguUPxH6APrxwphcbvYFFALTS7Ko6B6nargO3VTl
 L98A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0oTRxyob8Rb9O68eUpNaWK5InW0jotm+qAWtxSViGxk=;
 b=RLUl3agdyPLygLIBnJIYlYM1mvAYIm4yU//LpYPrgFUatIqErSnwfrcLdDtU1TLO2N
 S8d68wstVTfhRu3YVOZtELFTHvuFDhGEMow3kcw8uHwqGnz8YGqA2/bfAIZuhbtszPQp
 TzO/DMCW7Z9bJagtyiGF/FvvonnIuNu42RvFiqOiF+WpyXWwghWHapnXzJOS4H48DhQp
 viNHsNQw9Wea0Njc+EhGiVWSisS15Kx7EvP/FdYaRy79+QksoVqNrdQ2ATb0D1BJYPlQ
 02FQv3a+4p92pi7nS4n9breD29U64UtxhR59tFjava/wtlsbH6NaDYoySi5J/B4Wghal
 VEcg==
X-Gm-Message-State: AOAM532UeXVQ2mOHdwoRW1+FSAQEQXHaHEh1vQF81KFfq4Jx+qhHr8q4
 Yq+L1rrpxvv4FzWym8cCluNAgA==
X-Google-Smtp-Source: ABdhPJyiwH7N9sykiv/X9I+ARjNLPCmjbHe4zrfiX1dVZxWw9PekPP0bc3Kz9IZ4QYTvq+VF3gduGw==
X-Received: by 2002:a37:9b08:: with SMTP id d8mr6680251qke.105.1592927966522; 
 Tue, 23 Jun 2020 08:59:26 -0700 (PDT)
Received: from localhost ([166.137.96.174])
 by smtp.gmail.com with ESMTPSA id s52sm1024254qtb.3.2020.06.23.08.59.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jun 2020 08:59:26 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2020 11:58:56 -0400
Message-Id: <20200623155907.22961-7-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200623155907.22961-1-sean@poorly.run>
References: <20200623155907.22961-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v7 06/17] drm/i915: Factor out hdcp->value
 assignments
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

This is a bit of housecleaning for a future patch. Instead of sprinkling
hdcp->value assignments and prop_work scheduling everywhere, introduce a
function to do it for us.

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20191203173638.94919-7-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20191212190230.188505-7-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20200117193103.156821-7-sean@poorly.run #v3
Link: https://patchwork.freedesktop.org/patch/msgid/20200218220242.107265-7-sean@poorly.run #v4
Link: https://patchwork.freedesktop.org/patch/msgid/20200305201236.152307-7-sean@poorly.run #v5
Link: https://patchwork.freedesktop.org/patch/msgid/20200429195502.39919-7-sean@poorly.run #v6

Changes in v2:
-None
Changes in v3:
-None
Changes in v4:
-Rebased on top of drm_* logging changes
Changes in v5:
-Change WARN_ON to drm_WARN_ON
Changes in v6:
-None
Changes in v7:
-None
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 67 ++++++++++++++++-------
 1 file changed, 46 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 39715abf2ce4..88500a0bd77e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -877,6 +877,21 @@ static struct intel_connector *intel_hdcp_to_connector(struct intel_hdcp *hdcp)
 	return container_of(hdcp, struct intel_connector, hdcp);
 }
 
+static void intel_hdcp_update_value(struct intel_connector *connector,
+				    u64 value, bool update_property)
+{
+	struct intel_hdcp *hdcp = &connector->hdcp;
+
+	drm_WARN_ON(connector->base.dev, !mutex_is_locked(&hdcp->mutex));
+
+	if (hdcp->value == value)
+		return;
+
+	hdcp->value = value;
+	if (update_property)
+		schedule_work(&hdcp->prop_work);
+}
+
 /* Implements Part 3 of the HDCP authorization procedure */
 static int intel_hdcp_check_link(struct intel_connector *connector)
 {
@@ -904,15 +919,16 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 			connector->base.name, connector->base.base.id,
 			intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)));
 		ret = -ENXIO;
-		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
-		schedule_work(&hdcp->prop_work);
+		intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_DESIRED,
+					true);
 		goto out;
 	}
 
 	if (hdcp->shim->check_link(intel_dig_port)) {
 		if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
-			hdcp->value = DRM_MODE_CONTENT_PROTECTION_ENABLED;
-			schedule_work(&hdcp->prop_work);
+			intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_ENABLED, true);
 		}
 		goto out;
 	}
@@ -924,16 +940,18 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 	ret = _intel_hdcp_disable(connector);
 	if (ret) {
 		drm_err(&dev_priv->drm, "Failed to disable hdcp (%d)\n", ret);
-		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
-		schedule_work(&hdcp->prop_work);
+		intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_DESIRED,
+					true);
 		goto out;
 	}
 
 	ret = _intel_hdcp_enable(connector);
 	if (ret) {
 		drm_err(&dev_priv->drm, "Failed to enable hdcp (%d)\n", ret);
-		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
-		schedule_work(&hdcp->prop_work);
+		intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_DESIRED,
+					true);
 		goto out;
 	}
 
@@ -1769,16 +1787,18 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 			"HDCP2.2 link stopped the encryption, %x\n",
 			intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)));
 		ret = -ENXIO;
-		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
-		schedule_work(&hdcp->prop_work);
+		intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_DESIRED,
+					true);
 		goto out;
 	}
 
 	ret = hdcp->shim->check_2_2_link(intel_dig_port);
 	if (ret == HDCP_LINK_PROTECTED) {
 		if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
-			hdcp->value = DRM_MODE_CONTENT_PROTECTION_ENABLED;
-			schedule_work(&hdcp->prop_work);
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,
+					true);
 		}
 		goto out;
 	}
@@ -1791,8 +1811,9 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 			    "HDCP2.2 Downstream topology change\n");
 		ret = hdcp2_authenticate_repeater_topology(connector);
 		if (!ret) {
-			hdcp->value = DRM_MODE_CONTENT_PROTECTION_ENABLED;
-			schedule_work(&hdcp->prop_work);
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,
+					true);
 			goto out;
 		}
 		drm_dbg_kms(&dev_priv->drm,
@@ -1810,8 +1831,8 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 		drm_err(&dev_priv->drm,
 			"[%s:%d] Failed to disable hdcp2.2 (%d)\n",
 			connector->base.name, connector->base.base.id, ret);
-		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
-		schedule_work(&hdcp->prop_work);
+		intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);
 		goto out;
 	}
 
@@ -1821,8 +1842,9 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 			    "[%s:%d] Failed to enable hdcp2.2 (%d)\n",
 			    connector->base.name, connector->base.base.id,
 			    ret);
-		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
-		schedule_work(&hdcp->prop_work);
+		intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_DESIRED,
+					true);
 		goto out;
 	}
 
@@ -2065,8 +2087,9 @@ int intel_hdcp_enable(struct intel_connector *connector,
 
 	if (!ret) {
 		schedule_delayed_work(&hdcp->check_work, check_link_interval);
-		hdcp->value = DRM_MODE_CONTENT_PROTECTION_ENABLED;
-		schedule_work(&hdcp->prop_work);
+		intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,
+					true);
 	}
 
 	mutex_unlock(&hdcp->mutex);
@@ -2084,7 +2107,9 @@ int intel_hdcp_disable(struct intel_connector *connector)
 	mutex_lock(&hdcp->mutex);
 
 	if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
-		hdcp->value = DRM_MODE_CONTENT_PROTECTION_UNDESIRED;
+		intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_UNDESIRED,
+					false);
 		if (hdcp->hdcp2_encrypted)
 			ret = _intel_hdcp2_disable(connector);
 		else if (hdcp->hdcp_encrypted)
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
