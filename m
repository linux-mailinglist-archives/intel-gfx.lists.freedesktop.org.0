Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6557D248A16
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Aug 2020 17:40:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D33789EA3;
	Tue, 18 Aug 2020 15:40:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com
 [IPv6:2607:f8b0:4864:20::741])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C8E789C51
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 15:40:03 +0000 (UTC)
Received: by mail-qk1-x741.google.com with SMTP id n129so18633871qkd.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 08:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=idNcMCa5docR2LUb8IpS4YUOTnM7JrE8AsaDh7Ncv+g=;
 b=NlVfNDTPuablXt5EbVMR1G4wT3b9GTziHw2AyB2g41D/b6zPTF6DcbvQoRKNV8Zhmp
 pxdMXRH2gn6r1GPXhRILXLaKYsp5OTr1qF6ta2naul6rdXE1AGiiwNYrieEMfKj3gXMS
 AdM4PkkfEFU/RWF9ZPcNshBm8xz0M07+NOcdhn3S6iT6U8Xw56ZTI/4xZtR3Ut84K0Gk
 3nO4iXx1ETd/ffStiNxphQ5Axq7odnqDgT5Y8K90l21riKNpUbbKIE0pUuOsRzyAAyDK
 Zce8pcqL6aJRpeWTkkeoFWIRCvlTOMpnsT7AodalUUONQqQS3DnkccT0iv7r4cfR/g6/
 L+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=idNcMCa5docR2LUb8IpS4YUOTnM7JrE8AsaDh7Ncv+g=;
 b=CPAUouYuDbnIsMBeKOOdf5vA7KfMd9wO9lPlGujhR1T6EUi3nqB43L8hhOyRAFVumP
 OzE4Jgof+FeqT0B1pUr6zXFOMackJe/Dvbz+rdXKd/zotqGDMVk7Akmf8mnoPW/eoYkI
 LVcjA84yFnSY+KDM4yETdOlKKV7tz6kWNKyxKZHgaXpY3iue1Tv6+IxHTZjUmll6yrRp
 ktiCqQuk1RQUq1lk6beSMBcank1ndJdO8w3iUzMZ/8AObDTJkUtPGNbZzUjdAIp3Hnzz
 XdvNC8jIzzPrxXULUVUEv76QWQI1/2TdG7K4qhJmLse2XuQakmC3fivvoIEU1aeAqsHX
 OUoA==
X-Gm-Message-State: AOAM530SOnNhgngDsQWfkXH95kU7ibVQ2Zev9YW1quf2YUAv9xFtx9e2
 0ecUFvcXDh8c92pIVHmjgWhMdQ==
X-Google-Smtp-Source: ABdhPJzuoB9V2O8tnnrY8PKR85QvWH5rzACLPg5ylQY28/VKt6qIKoXWReLyGO9unX0yW0UOVPvt1A==
X-Received: by 2002:a05:620a:4006:: with SMTP id
 h6mr17834979qko.174.1597765202338; 
 Tue, 18 Aug 2020 08:40:02 -0700 (PDT)
Received: from localhost (mobile-166-170-57-144.mycingular.net.
 [166.170.57.144])
 by smtp.gmail.com with ESMTPSA id u8sm11803008qkj.9.2020.08.18.08.40.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Aug 2020 08:40:01 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 juston.li@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 anshuman.gupta@intel.com
Date: Tue, 18 Aug 2020 11:38:54 -0400
Message-Id: <20200818153910.27894-7-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200818153910.27894-1-sean@poorly.run>
References: <20200818153910.27894-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v8 06/17] drm/i915: Factor out hdcp->value
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
Cc: David Airlie <airlied@linux.ie>, daniel.vetter@ffwll.ch,
 Sean Paul <seanpaul@chromium.org>
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
Link: https://patchwork.freedesktop.org/patch/msgid/20200623155907.22961-7-sean@poorly.run #v7

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
Changes in v8:
-None
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 67 ++++++++++++++++-------
 1 file changed, 46 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index b28a351f3a98..ab2e2f9d0020 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -876,6 +876,21 @@ static struct intel_connector *intel_hdcp_to_connector(struct intel_hdcp *hdcp)
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
@@ -903,15 +918,16 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
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
 
 	if (hdcp->shim->check_link(dig_port)) {
 		if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
-			hdcp->value = DRM_MODE_CONTENT_PROTECTION_ENABLED;
-			schedule_work(&hdcp->prop_work);
+			intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_ENABLED, true);
 		}
 		goto out;
 	}
@@ -923,16 +939,18 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
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
 
@@ -1768,16 +1786,18 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
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
 
 	ret = hdcp->shim->check_2_2_link(dig_port);
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
@@ -1790,8 +1810,9 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
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
@@ -1809,8 +1830,8 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 		drm_err(&dev_priv->drm,
 			"[%s:%d] Failed to disable hdcp2.2 (%d)\n",
 			connector->base.name, connector->base.base.id, ret);
-		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
-		schedule_work(&hdcp->prop_work);
+		intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);
 		goto out;
 	}
 
@@ -1820,8 +1841,9 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
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
 
@@ -2064,8 +2086,9 @@ int intel_hdcp_enable(struct intel_connector *connector,
 
 	if (!ret) {
 		schedule_delayed_work(&hdcp->check_work, check_link_interval);
-		hdcp->value = DRM_MODE_CONTENT_PROTECTION_ENABLED;
-		schedule_work(&hdcp->prop_work);
+		intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,
+					true);
 	}
 
 	mutex_unlock(&hdcp->mutex);
@@ -2083,7 +2106,9 @@ int intel_hdcp_disable(struct intel_connector *connector)
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
