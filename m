Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A40717879AE
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 22:54:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E0810E5C2;
	Thu, 24 Aug 2023 20:54:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDB2510E5C1
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 20:54:08 +0000 (UTC)
Received: by mail-qk1-x72c.google.com with SMTP id
 af79cd13be357-76ce59842c1so15207685a.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 13:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692910447; x=1693515247;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Wc66pRU9OKWitHlEhM03zOV4Qkog3n79jFNT7eNt/cw=;
 b=UOxGn5em/U/vnblLsi+Dv63uD2DkopgnW52wDV6h0c5MQNQpkUBWftFdW4KD5WGzgB
 7WlWMu/nSWkend165HiGYdWrKpha0wvlEsaD3wciazhHgMxePCqQP5qDtv4jvB8M+3f5
 j6usnEDHo9Vuhg1Jqxxj26lFfT2L5lXQytSIU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692910447; x=1693515247;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Wc66pRU9OKWitHlEhM03zOV4Qkog3n79jFNT7eNt/cw=;
 b=Ky1tQtmU19rZLWnbBz3PUPQRfWuZQZd6XdR4FiDS9Z/VvwJo/7xU229Cdwi9rQMTvE
 Fkc6rRuWF8G3rAdbfw96pwgoH9GGoPJ6lflw0EeYfFyZBr9h+qaQOU5NinwrDBzWkdfc
 D7i+Kfljb9Y27pRkZHz6rNM3zdikYbZA9gpBUF6bJXOc1a6qTGA/ZRqsq69cjNxPsJjI
 Vlqr8sljEaU7KMYZrLx9i30Zb/FtuieVP/3mObFyM7wRWy8nFi7KCFUDXVp3SSv6W/FK
 4SniSMQNfpt2LVHY9WYMma/oJJoSvyfjEZySKC7Sf7LwnoN09VLwlsX319O7JKjYKyFq
 X6Rg==
X-Gm-Message-State: AOJu0Yw750CX7DdEQFHZi7NXkMATlzahhx/+g7ydMRHx4nPSizXQXF/a
 lPoy5tONbaKWW4YFX8HzB8UCNZWYqSVs/WYMI2g=
X-Google-Smtp-Source: AGHT+IG7xKneWNbjt1OXDtuY96eIhGFbMGHQ/kG/0VMv3F3CkJB6mqr2GUmFb3pNdh+UfY11TMQoGQ==
X-Received: by 2002:a0c:e001:0:b0:64f:66b9:81e8 with SMTP id
 j1-20020a0ce001000000b0064f66b981e8mr4318035qvk.31.1692910447428; 
 Thu, 24 Aug 2023 13:54:07 -0700 (PDT)
Received: from gildekel.nyc.corp.google.com
 ([2620:0:1003:314:321d:e6f5:6dbd:3e5])
 by smtp.gmail.com with ESMTPSA id
 d2-20020a0ce442000000b0064f5020df91sm62038qvm.28.2023.08.24.13.54.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Aug 2023 13:54:06 -0700 (PDT)
From: Gil Dekel <gildekel@chromium.org>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Aug 2023 16:50:20 -0400
Message-ID: <20230824205335.500163-6-gildekel@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230824205335.500163-1-gildekel@chromium.org>
References: <20230824205335.500163-1-gildekel@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 5/6] drm/i915/dp_link_training: Set all
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
