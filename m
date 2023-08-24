Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC637866C1
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 06:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 254F110E4E7;
	Thu, 24 Aug 2023 04:34:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com
 [IPv6:2607:f8b0:4864:20::72b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3913010E4DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 04:34:13 +0000 (UTC)
Received: by mail-qk1-x72b.google.com with SMTP id
 af79cd13be357-76d83954c40so446926085a.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 21:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692851652; x=1693456452;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Wc66pRU9OKWitHlEhM03zOV4Qkog3n79jFNT7eNt/cw=;
 b=Iip2MFQdvXDnIh6TWANg5yzaokHjvWLX7aZUAyZEYpi/ihyfKR2MdqecXTNTktMnOW
 we8UhLOg1qPFgi8k3+Ilq/HbFpAtqQumjorCmJUWZI+LxgsUip8AWfv2v/QjeKwE+JDs
 V4MMzzJM2hlR7Matg4vVRZ47wB1zrYkNjqNC8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692851652; x=1693456452;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Wc66pRU9OKWitHlEhM03zOV4Qkog3n79jFNT7eNt/cw=;
 b=DOQ4jhI5Lw0GMdP4a+vdpkwbo38mkqjJyVqthpGsT3vX4a1ec8NRS14KeBJDLxtLDB
 5UC8RG1aZh2/D7uAZXA9gSwHdux1ckMVGisekAEezSXK+i5cWZMuYLCS/ESTwibSudO/
 6iFqrLEe3ZRZhhzz+gS1RUH+x9ST3Gc376BS3M7YNBcOzmgQgVZwFyf6s7lQeESzuIDT
 zRb9SuxTCxWbBp/VKaEGMEDMEK8t0abM4R4cOPj9y8gRuQpLr3mYJWo/c/AMTsdrQ+ja
 BNR2G+LNawAd51IYxPpCcNgZxq+dQ0lBsvlCNCwPU8SgjoDeYHFwoOQ3Mm5X+HdJRI+7
 qYfQ==
X-Gm-Message-State: AOJu0YyhLy1Uh11/inyvrqDtmIf/GeTxSK2cdYm8j0WUp7QJl8KlO9dO
 zp/UD8oXRZ0xEw41lMpYXS9A00T0hT5Ld5Fg7IE=
X-Google-Smtp-Source: AGHT+IHrIKTujiUZmD2nRu3t97smnjijI6G2CNiLig7BlxzHUnv7dcLJ20w6QgApLETLAVBEY5XfEw==
X-Received: by 2002:a0c:f3c5:0:b0:64f:5cb1:3e93 with SMTP id
 f5-20020a0cf3c5000000b0064f5cb13e93mr3823568qvm.41.1692851652020; 
 Wed, 23 Aug 2023 21:34:12 -0700 (PDT)
Received: from gildekel.nyc.corp.google.com
 ([2620:0:1003:314:321d:e6f5:6dbd:3e5])
 by smtp.gmail.com with ESMTPSA id
 a3-20020a0cca83000000b0064910f273aesm4913632qvk.146.2023.08.23.21.34.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Aug 2023 21:34:11 -0700 (PDT)
From: Gil Dekel <gildekel@chromium.org>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Aug 2023 00:31:08 -0400
Message-ID: <20230824043240.323564-6-gildekel@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230824043240.323564-1-gildekel@chromium.org>
References: <20230818170156.2194015-1-gildekel@chromium.org>
 <20230824043240.323564-1-gildekel@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915/dp_link_training: Set all
 downstream MST ports to BAD before retrying
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
Cc: seanpaul@chromium.org, Gil Dekel <gildekel@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Before sending a uevent to userspace in order to trigger a corrective
modeset, we change the failing connector's link-status to BAD. However,
the downstream MST branch ports are left in their original GOOD state.

This patch utilizes the drm helper function
drm_dp_set_mst_topology_link_status() to rectify this and set all
downstream MST connectors' link-status to BAD before emitting the uevent
to userspace.

Signed-off-by: Gil Dekel <gildekel@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 42353b1ac487..e8b10f59e141 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5995,16 +5995,20 @@ static void intel_dp_modeset_retry_work_fn(struct work_struct *work)
 	struct intel_dp *intel_dp =
 		container_of(work, typeof(*intel_dp), modeset_retry_work);
 	struct drm_connector *connector = &intel_dp->attached_connector->base;
-	drm_dbg_kms(connector->dev, "[CONNECTOR:%d:%s]\n", connector->base.id,
-		    connector->name);

-	/* Grab the locks before changing connector property*/
-	mutex_lock(&connector->dev->mode_config.mutex);
-	/* Set connector link status to BAD and send a Uevent to notify
-	 * userspace to do a modeset.
+	/* Set the connector's (and possibly all its downstream MST ports') link
+	 * status to BAD.
 	 */
+	mutex_lock(&connector->dev->mode_config.mutex);
+	drm_dbg_kms(connector->dev, "[CONNECTOR:%d:%s] link status %d -> %d\n",
+		    connector->base.id, connector->name,
+		    connector->state->link_status, DRM_MODE_LINK_STATUS_BAD);
 	drm_connector_set_link_status_property(connector,
 					       DRM_MODE_LINK_STATUS_BAD);
+	if (intel_dp->is_mst) {
+		drm_dp_set_mst_topology_link_status(&intel_dp->mst_mgr,
+						    DRM_MODE_LINK_STATUS_BAD);
+	}
 	mutex_unlock(&connector->dev->mode_config.mutex);
 	/* Send Hotplug uevent so userspace can reprobe */
 	drm_kms_helper_connector_hotplug_event(connector);
--
Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics
