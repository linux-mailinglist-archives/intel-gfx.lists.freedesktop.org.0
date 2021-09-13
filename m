Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E29F2409B66
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 19:58:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026EC6ECD9;
	Mon, 13 Sep 2021 17:58:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E9876E216
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 17:58:09 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id w9so6595273qvs.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 10:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uvurVzZlAXN+3wz8I30tpTKQ4+4bUnrN0ukF/CdF4vE=;
 b=fnakUYFqIB5fbo4OVxeM+ao1UaC4dOk3qg30+sZcY8bmnuNIgklzub1yfQq7gJNKHj
 AiwfLFK4gQkcUgVsWr7m2CLoJwAwYAnIezlUz3jiLTwiHlZ1BzNnj+9KmHkO5FnRfDvt
 skURcmKSAdZRCy5h1RdnNmMiqpEbCcAJHFvIBmL1lmfBnnBsycmSz/E1tDovhdvyiMmh
 b0LLqoOa9+SgeL1BVQCdhfabX7OuhlQUxkH/cIKfO8jAoaxATb9aTsz9B8WzqTzNy2VI
 1Rr/+/5nClqBri+g/gwmvd07lsEkx7nMQjlgsdj54538Ov8dDkeiEoL7jeouBRknU+H8
 INyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uvurVzZlAXN+3wz8I30tpTKQ4+4bUnrN0ukF/CdF4vE=;
 b=R+BeE0fFsYpEgzdUHOyjxzqT5GCy24rdc/hTY05QzQA2Syc47o4dFZSINK/uaEkPhy
 5FzrEDMtNOQ02fQrDqiZMmeuLXMENnER1BNDEHysiuxIRGO0dscCS35uTsf7uITqU37i
 /knd9ytMDrFZ5UKgyPmf/ueN20VIVz9SI7Om3j4O0XS59xBX3CtrtuZN7++7HCIgoqSh
 X7L/A/8bx8jU4N2u8DUSO2z41YNWzGaHIYZQYQc0+fr1yj9GuoGKdiwNdl9F+Bqr7Jue
 JdSnIZTB2jyFP21WYw/EDRdijJ4EFKCjl9tFYtRrv6MDPJdNKrWcxfrGfZrqwTnIkI9x
 luaw==
X-Gm-Message-State: AOAM530YQvM26uCV0G9VHXsstCPy3Pj7DRTtABBeooQTIPC1xLj14356
 KXAh+46aSCXY5+4rM2BZnIScZ1D8lFibfA==
X-Google-Smtp-Source: ABdhPJwhWW2FKMdz5QWHY1gDm4SfWEiZWUN4x/x/XeM/S3lcK/2Fw2nksrYWBUAFdZ4cCQ4s9HgLRA==
X-Received: by 2002:a0c:fca2:: with SMTP id h2mr780250qvq.5.1631555888517;
 Mon, 13 Sep 2021 10:58:08 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id l126sm5881126qke.96.2021.09.13.10.58.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Sep 2021 10:58:08 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Cc: Sean Paul <seanpaul@chromium.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 13 Sep 2021 13:57:34 -0400
Message-Id: <20210913175747.47456-4-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210913175747.47456-1-sean@poorly.run>
References: <20210913175747.47456-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/14] drm/hdcp: Update property value on
 content type and user changes
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

This patch updates the connector's property value in 2 cases which were
previously missed:

1- Content type changes. The value should revert back to DESIRED from
   ENABLED in case the driver must re-authenticate the link due to the
   new content type.

2- Userspace sets value to DESIRED while ENABLED. In this case, the
   value should be reset immediately to ENABLED since the link is
   actively being encrypted.

To accommodate these changes, I've split up the conditionals to make
things a bit more clear (as much as one can with this mess of state).

Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/drm_hdcp.c | 26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/drm_hdcp.c b/drivers/gpu/drm/drm_hdcp.c
index dd8fa91c51d6..742313ce8f6f 100644
--- a/drivers/gpu/drm/drm_hdcp.c
+++ b/drivers/gpu/drm/drm_hdcp.c
@@ -487,21 +487,29 @@ bool drm_hdcp_atomic_check(struct drm_connector *connector,
 		return true;
 
 	/*
-	 * Nothing to do if content type is unchanged and one of:
-	 *  - state didn't change
+	 * Content type changes require an HDCP disable/enable cycle.
+	 */
+	if (new_conn_state->hdcp_content_type != old_conn_state->hdcp_content_type) {
+		new_conn_state->content_protection =
+			DRM_MODE_CONTENT_PROTECTION_DESIRED;
+		return true;
+	}
+
+	/*
+	 * Ignore meaningless state changes:
 	 *  - HDCP was activated since the last commit
-	 *  - attempting to set to desired while already enabled
+	 *  - Attempting to set to desired while already enabled
 	 */
-	if (old_hdcp == new_hdcp ||
-	    (old_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED &&
+	if ((old_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED &&
 	     new_hdcp == DRM_MODE_CONTENT_PROTECTION_ENABLED) ||
 	    (old_hdcp == DRM_MODE_CONTENT_PROTECTION_ENABLED &&
 	     new_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED)) {
-		if (old_conn_state->hdcp_content_type ==
-				new_conn_state->hdcp_content_type)
-			return false;
+		new_conn_state->content_protection =
+			DRM_MODE_CONTENT_PROTECTION_ENABLED;
+	     return false;
 	}
 
-	return true;
+	/* Finally, if state changes, we need action */
+	return old_hdcp != new_hdcp;
 }
 EXPORT_SYMBOL(drm_hdcp_atomic_check);
-- 
Sean Paul, Software Engineer, Google / Chromium OS

