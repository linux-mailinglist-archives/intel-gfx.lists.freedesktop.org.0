Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 278511635BD
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 23:04:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E4076EAB9;
	Tue, 18 Feb 2020 22:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B49DF6EAAF
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 22:03:45 +0000 (UTC)
Received: by mail-yw1-xc44.google.com with SMTP id 10so10153008ywv.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 14:03:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oWhEkUIUWNx1G1JMKBT67kP0/td96SzJZ0ipMfdJ4XM=;
 b=PDAPDq8nxsFgxJh6lMj/D2ZRs3KyKJMSgNMx7TKF1nF21iaxc/VVnsI57rSwB/qSst
 4WADVvMirzYd1piCFKw7B+5U5tn2sx8xKB+y57HQdOBoOzCxQ2j88jXDwjnb+rV1fBa3
 2d4cwRlZT5Jahj29I/d7CR+TQWMhoWHwUYrWM0PQFFR0ej2/kl6d5G0JZ0keuJA2O5xV
 agmqT4AfnbDLPEFsvHifQ+u6mBnlIH/arheqclEaeyPb+hoUDYRD+yjESj3NT2ev7OCi
 mcA0HB6sLdKdtMgfvnmxlN0GO7znuUDy8M6Vh67wH8+BBXZ2eTk+TkVzUodQ5PgUoIqb
 q4vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oWhEkUIUWNx1G1JMKBT67kP0/td96SzJZ0ipMfdJ4XM=;
 b=I2I5PhW4DqzBSSx6xnI9ReqO6HKE2Bm8Pe2uVgpEntWDkftVvHv6S4wyDvNuYRoKKH
 6WazuH2ccG0wFN4Lz/26SEMbMnkcpmGRO6Yv6KaZtqJXFIsiPWqS7dK4TQt2b9K8nnO+
 nNhYz/REm6anc/ZLqkvobn+/IbalqJfDrXvhC4H3PR1ey0o9lGs78D0y5pqU9OV9hyYV
 2CdSyCe8Df9x2pgCL+Oy8c/6/nUQOXmymv5TjiZZhO+l5t45YtTOAAYTXR2QNXn+qII/
 DT8gXlZWFfN8j5X2vIdgm/4J7ervuDcRXyN8I9YGArJJob+/Mjo0SvR1P0ULZaAb/8jw
 p4Aw==
X-Gm-Message-State: APjAAAWS5jECIBxEN6pptFiB54nbDfjsF3NmrFVM1DtD6EYcIOkEh0XK
 CuIxOr6B2RF1iGK+bVCMA6df3g==
X-Google-Smtp-Source: APXvYqy1UJzNHSxFZpHj2nLK82S8hgrF/MlluSPF9iFCdbTyEue/1GdMZRR6bUMxwvsEswWuJ75Rew==
X-Received: by 2002:a0d:d8c2:: with SMTP id
 a185mr17371288ywe.337.1582063424807; 
 Tue, 18 Feb 2020 14:03:44 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id s130sm31449ywg.11.2020.02.18.14.03.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 14:03:44 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 17:02:40 -0500
Message-Id: <20200218220242.107265-13-sean@poorly.run>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
In-Reply-To: <20200218220242.107265-1-sean@poorly.run>
References: <20200218220242.107265-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 12/14] drm/i915: Add connector to
 hdcp_shim->check_link()
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

Currently we derive the connector from digital port in check_link(). For
MST, this isn't sufficient since the digital port passed into the
function can have multiple connectors downstream. This patch adds
connector to the check_link() arguments so we have it when we need it.

Signed-off-by: Sean Paul <seanpaul@chromium.org>

Changes in v4:
-Added to the set
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 ++-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c       | 3 ++-
 drivers/gpu/drm/i915/display/intel_hdcp.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c          | 5 ++---
 4 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9fb25f80dc91d..ce85f1bab2729 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -310,7 +310,8 @@ struct intel_hdcp_shim {
 				 bool enable);
 
 	/* Ensures the link is still protected */
-	bool (*check_link)(struct intel_digital_port *intel_dig_port);
+	bool (*check_link)(struct intel_digital_port *intel_dig_port,
+			   struct intel_connector *connector);
 
 	/* Detects panel's hdcp capability. This is optional for HDMI. */
 	int (*hdcp_capable)(struct intel_digital_port *intel_dig_port,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 0b6d90980e909..f1f4c2c793652 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -535,7 +535,8 @@ int intel_dp_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
 }
 
 static
-bool intel_dp_hdcp_check_link(struct intel_digital_port *intel_dig_port)
+bool intel_dp_hdcp_check_link(struct intel_digital_port *intel_dig_port,
+			      struct intel_connector *connector)
 {
 	ssize_t ret;
 	u8 bstatus;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 970cdd793cbbe..20952f6fb31eb 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -947,7 +947,7 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	if (hdcp->shim->check_link(intel_dig_port)) {
+	if (hdcp->shim->check_link(intel_dig_port, connector)) {
 		if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
 			intel_hdcp_update_value(connector,
 				DRM_MODE_CONTENT_PROTECTION_ENABLED, true);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index d569d0a1f1dcf..59b24ed603fa6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1523,11 +1523,10 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
 }
 
 static
-bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
+bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port,
+				struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
-	struct intel_connector *connector =
-		intel_dig_port->hdmi.attached_connector;
 	enum port port = intel_dig_port->base.port;
 	enum transcoder cpu_transcoder = connector->hdcp.cpu_transcoder;
 	int ret;
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
