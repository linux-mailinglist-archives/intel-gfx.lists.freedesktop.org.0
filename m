Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C5682EEFB
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 13:28:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4176C10E54C;
	Tue, 16 Jan 2024 12:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E56C10E31D
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jan 2024 16:06:43 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 5b1f17b1804b1-40e67e90d5aso29542735e9.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jan 2024 08:06:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yngvason.is; s=google; t=1705334802; x=1705939602; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XqVmGq7cOGaTLOSCYXLFwYOFgoyzsg0JNnPbRbL+2qg=;
 b=P1wLobH9Am7yMzCUCawF1q7Aq4antsmv1XnMZm87dJCZ8L8rv5HcmKh07PQ2zcgYl4
 gvoZLom5gVsh09g97eQhvY8VHrDZDHJR4Nm3/Xj8wP3cyvTCciGA8gysffp7Zo+6lD5z
 HjNOEoFaDy+/gup30s3LB3IjjJvHC0MFzsOmc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705334802; x=1705939602;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XqVmGq7cOGaTLOSCYXLFwYOFgoyzsg0JNnPbRbL+2qg=;
 b=B+C/azYxH12E4NHl1oZ4cGqUT1lGfpNdodGzhSh3HGpWoYbZmv6xW2rJ7eHrIRacXo
 PECYzumTIp/lVTS1tGX0h1T+R1PoxavsGAVX1mtIiEr/9MmXTpp39VRzyjiL1OOeNXKe
 euz905o6zG75DiGu2hiVS8lgCQ0DIBVjQ3pIYvi0GRBase+JwmXINLQKsNt9xWHKmRng
 utF9OKBXTX0VDdZa7X7er00a3bVyNhgoe7/KD8CEkdLUXDRoMeBZw+SVxRiKxwteWw5G
 MWs1ugx6RhaqtJQb4ksZ5KGDKxafHGf8QY17m34FuiQ+SaWCrFuFAa0QJrTti+7kLE5m
 i9VQ==
X-Gm-Message-State: AOJu0YzG7C1nMwxdhpUOCc3hMCpgdgMD92jxvOLuKYUm8Bm2zh21GV2u
 M0vep8FUKnmce5TG5W+0pwrM+LQ9uFle+g==
X-Google-Smtp-Source: AGHT+IGAiZVOAbahlK853e9lBAb8rm+DtxdE3mGCj7VryIezlI0uyO9U9FExM1kRX3pwdttjeMe10w==
X-Received: by 2002:a7b:cd15:0:b0:40e:5138:a32 with SMTP id
 f21-20020a7bcd15000000b0040e51380a32mr3068804wmj.145.1705334801856; 
 Mon, 15 Jan 2024 08:06:41 -0800 (PST)
Received: from andri-workstation.turninn.appdynamic.com
 ([2a01:8280:aa07:ad:7285:c2ff:fef0:4baf])
 by smtp.gmail.com with ESMTPSA id
 l22-20020a05600c4f1600b0040d6b91efd9sm20174140wmq.44.2024.01.15.08.06.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jan 2024 08:06:41 -0800 (PST)
From: Andri Yngvason <andri@yngvason.is>
To: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: [PATCH v2 2/4] drm/uAPI: Add "force color format" drm property as
 setting for userspace
Date: Mon, 15 Jan 2024 16:05:52 +0000
Message-ID: <20240115160554.720247-3-andri@yngvason.is>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240115160554.720247-1-andri@yngvason.is>
References: <20240115160554.720247-1-andri@yngvason.is>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 16 Jan 2024 12:28:11 +0000
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
Cc: amd-gfx@lists.freedesktop.org, Simon Ser <contact@emersion.fr>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Andri Yngvason <andri@yngvason.is>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Werner Sembach <wse@tuxedocomputers.com>

Add a new general drm property "force color format" which can be used
by userspace to tell the graphics driver which color format to use.

Possible options are:
    - auto (default/current behaviour)
    - rgb
    - ycbcr444
    - ycbcr422 (supported by neither amdgpu or i915)
    - ycbcr420

In theory the auto option should choose the best available option for the
current setup, but because of bad internal conversion some monitors look
better with rgb and some with ycbcr444.

Also, because of bad shielded connectors and/or cables, it might be
preferable to use the less bandwidth heavy ycbcr422 and ycbcr420 formats
for a signal that is less susceptible to interference.

In the future, automatic color calibration for screens might also depend on
this option being available.

Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
Signed-off-by: Andri Yngvason <andri@yngvason.is>
Tested-by: Andri Yngvason <andri@yngvason.is>
---

Changes in v2:
 - Renamed to "force color format" from "preferred color format"
 - Removed Reported-by pointing to invalid email address

---
 drivers/gpu/drm/drm_atomic_helper.c |  4 +++
 drivers/gpu/drm/drm_atomic_uapi.c   |  4 +++
 drivers/gpu/drm/drm_connector.c     | 48 +++++++++++++++++++++++++++++
 include/drm/drm_connector.h         | 16 ++++++++++
 4 files changed, 72 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index 39ef0a6addeba..1dabd164c4f09 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -707,6 +707,10 @@ drm_atomic_helper_check_modeset(struct drm_device *dev,
 			if (old_connector_state->max_requested_bpc !=
 			    new_connector_state->max_requested_bpc)
 				new_crtc_state->connectors_changed = true;
+
+			if (old_connector_state->force_color_format !=
+			    new_connector_state->force_color_format)
+				new_crtc_state->connectors_changed = true;
 		}
 
 		if (funcs->atomic_check)
diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
index 29d4940188d49..e45949bf4615f 100644
--- a/drivers/gpu/drm/drm_atomic_uapi.c
+++ b/drivers/gpu/drm/drm_atomic_uapi.c
@@ -776,6 +776,8 @@ static int drm_atomic_connector_set_property(struct drm_connector *connector,
 		state->max_requested_bpc = val;
 	} else if (property == connector->privacy_screen_sw_state_property) {
 		state->privacy_screen_sw_state = val;
+	} else if (property == connector->force_color_format_property) {
+		state->force_color_format = val;
 	} else if (connector->funcs->atomic_set_property) {
 		return connector->funcs->atomic_set_property(connector,
 				state, property, val);
@@ -859,6 +861,8 @@ drm_atomic_connector_get_property(struct drm_connector *connector,
 		*val = state->max_requested_bpc;
 	} else if (property == connector->privacy_screen_sw_state_property) {
 		*val = state->privacy_screen_sw_state;
+	} else if (property == connector->force_color_format_property) {
+		*val = state->force_color_format;
 	} else if (connector->funcs->atomic_get_property) {
 		return connector->funcs->atomic_get_property(connector,
 				state, property, val);
diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index b0516505f7ae9..e0535e58b4535 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -1061,6 +1061,14 @@ static const struct drm_prop_enum_list drm_dp_subconnector_enum_list[] = {
 	{ DRM_MODE_SUBCONNECTOR_Native,	     "Native"    }, /* DP */
 };
 
+static const struct drm_prop_enum_list drm_force_color_format_enum_list[] = {
+	{ 0, "auto" },
+	{ DRM_COLOR_FORMAT_RGB444, "rgb" },
+	{ DRM_COLOR_FORMAT_YCBCR444, "ycbcr444" },
+	{ DRM_COLOR_FORMAT_YCBCR422, "ycbcr422" },
+	{ DRM_COLOR_FORMAT_YCBCR420, "ycbcr420" },
+};
+
 DRM_ENUM_NAME_FN(drm_get_dp_subconnector_name,
 		 drm_dp_subconnector_enum_list)
 
@@ -1396,6 +1404,15 @@ static const u32 dp_colorspaces =
  *	drm_connector_attach_max_bpc_property() to create and attach the
  *	property to the connector during initialization.
  *
+ * force color format:
+ *	This property is used by userspace to change the used color format. When
+ *	used the driver will use the selected format if valid for the hardware,
+ *	sink, and current resolution and refresh rate combination. Drivers to
+ *	use the function drm_connector_attach_force_color_format_property()
+ *	to create and attach the property to the connector during
+ *	initialization. Possible values are "auto", "rgb", "ycbcr444",
+ *	"ycbcr422", and "ycbcr420".
+ *
  * Connectors also have one standardized atomic property:
  *
  * CRTC_ID:
@@ -2457,6 +2474,37 @@ int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
 }
 EXPORT_SYMBOL(drm_connector_attach_max_bpc_property);
 
+/**
+ * drm_connector_attach_force_color_format_property - attach "force color format" property
+ * @connector: connector to attach force color format property on.
+ *
+ * This is used to add support for selecting a color format on a connector.
+ *
+ * Returns:
+ * Zero on success, negative errno on failure.
+ */
+int drm_connector_attach_force_color_format_property(struct drm_connector *connector)
+{
+	struct drm_device *dev = connector->dev;
+	struct drm_property *prop;
+
+	if (!connector->force_color_format_property) {
+		prop = drm_property_create_enum(dev, 0, "force color format",
+						drm_force_color_format_enum_list,
+						ARRAY_SIZE(drm_force_color_format_enum_list));
+		if (!prop)
+			return -ENOMEM;
+
+		connector->force_color_format_property = prop;
+	}
+
+	drm_object_attach_property(&connector->base, prop, 0);
+	connector->state->force_color_format = 0;
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_connector_attach_force_color_format_property);
+
 /**
  * drm_connector_attach_hdr_output_metadata_property - attach "HDR_OUTPUT_METADA" property
  * @connector: connector to attach the property on.
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index fe88d7fc6b8f4..9830e7c09c0ba 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1026,6 +1026,14 @@ struct drm_connector_state {
 	 */
 	enum drm_privacy_screen_status privacy_screen_sw_state;
 
+	/**
+	 * @force_color_format: Property set by userspace to tell the GPU
+	 * driver which color format to use. It only gets applied if hardware,
+	 * meaning both the computer and the monitor, and the driver support the
+	 * given format at the current resolution and refresh rate.
+	 */
+	u32 force_color_format;
+
 	/**
 	 * @hdr_output_metadata:
 	 * DRM blob property for HDR output metadata
@@ -1699,6 +1707,12 @@ struct drm_connector {
 	 */
 	struct drm_property *privacy_screen_hw_state_property;
 
+	/**
+	 * @force_color_format_property: Default connector property for the
+	 * force color format to be driven out of the connector.
+	 */
+	struct drm_property *force_color_format_property;
+
 #define DRM_CONNECTOR_POLL_HPD (1 << 0)
 #define DRM_CONNECTOR_POLL_CONNECT (1 << 1)
 #define DRM_CONNECTOR_POLL_DISCONNECT (1 << 2)
@@ -2053,6 +2067,8 @@ void drm_connector_attach_privacy_screen_provider(
 	struct drm_connector *connector, struct drm_privacy_screen *priv);
 void drm_connector_update_privacy_screen(const struct drm_connector_state *connector_state);
 
+int drm_connector_attach_force_color_format_property(struct drm_connector *connector);
+
 /**
  * struct drm_tile_group - Tile group metadata
  * @refcount: reference count
-- 
2.43.0

