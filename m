Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA72582EEF6
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 13:28:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B46BE10E523;
	Tue, 16 Jan 2024 12:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CB2710E4CA
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 18:11:30 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-40e490c2115so12886965e9.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jan 2024 10:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yngvason.is; s=google; t=1704823888; x=1705428688; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=iv1CfwfAn7ER1wsoqgpUMaFNsB1LA0XxFCM2c1c7OSw=;
 b=HLEdhawx9TLy78EIHTLt/ln1N8Nn5Ak/7DVVMBVFgB96qMgl5xIyjzDQ3PTkrzI2Hb
 KMp0A4gLwV1zAU04RFPSuBWIKE2EaQfhwSZFNtkTAtYbBo3i/LW8auhn4a7QEvqoRS5V
 xD24tVVVRZzUSsPriO7Uh0zGZJ5EEj/WZCXac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704823888; x=1705428688;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=iv1CfwfAn7ER1wsoqgpUMaFNsB1LA0XxFCM2c1c7OSw=;
 b=O53HCcABa7jDmBxTAkm2mkBM3ZHAuw82JZgFrCV7ljTsleZgeXp6iFZMmg/jnSclsJ
 vSuyEm1t6fpOml75j2hlu7/hzRSq/yIdz9kz/63B8iC7+yj+XS0yAUbsTMK/kCA1zDgg
 dhA9hqlwozFFZj9af38U1fWFYD3aLywRTNYxPP5s6rHijIf9VMPe1zIF++Ze7sRF9W5t
 RVyFfqTAHnpbU5rcb2QJME1ketKqzbeawZiU7ByqvKeTQ4ogrtRau+HfhpkjGi/fEe54
 Hu27heY1AZGrIP4ykR0TcoxtrIGmShOMK3Ri7nr1shEZfaodYjjTcTvGV2MGQL+RIaQ3
 C/CQ==
X-Gm-Message-State: AOJu0YwQZYaDLufCh8pH/X9wePaCsWy7rc5cq0hKZSRlYI3j+VBexFMU
 XA9RhU3o0ErAjSfhy6UfNXOyG9lPPUlSfw==
X-Google-Smtp-Source: AGHT+IHW+vnqtWq9qmMkX3cIDIbzoDHeml8A7NAyBIdCumvkqdPXyTH0vlksZ0ndiZHQzAVFE7zyJg==
X-Received: by 2002:a05:600c:298c:b0:40d:5aea:c89b with SMTP id
 r12-20020a05600c298c00b0040d5aeac89bmr648932wmd.64.1704823888508; 
 Tue, 09 Jan 2024 10:11:28 -0800 (PST)
Received: from andri-workstation.turninn.appdynamic.com
 ([2a01:8280:aa07:ad:7285:c2ff:fef0:4baf])
 by smtp.gmail.com with ESMTPSA id
 n25-20020a05600c3b9900b0040e527602c8sm2104579wms.9.2024.01.09.10.11.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jan 2024 10:11:27 -0800 (PST)
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
Subject: [PATCH 2/7] drm/uAPI: Add "active color format" drm property as
 feedback for userspace
Date: Tue,  9 Jan 2024 18:10:59 +0000
Message-ID: <20240109181104.1670304-3-andri@yngvason.is>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240109181104.1670304-1-andri@yngvason.is>
References: <20240109181104.1670304-1-andri@yngvason.is>
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

Add a new general drm property "active color format" which can be used by
graphic drivers to report the used color format back to userspace.

There was no way to check which color format got actually used on a given
monitor. To surely predict this, one must know the exact capabilities of
the monitor, the GPU, and the connection used and what the default
behaviour of the used driver is (e.g. amdgpu prefers YCbCr 4:4:4 while i915
prefers RGB). This property helps eliminating the guessing on this point.

In the future, automatic color calibration for screens might also depend on
this information being available.

Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
Signed-off-by: Andri Yngvason <andri@yngvason.is>
Tested-by: Andri Yngvason <andri@yngvason.is>
---
 drivers/gpu/drm/drm_connector.c | 63 +++++++++++++++++++++++++++++++++
 include/drm/drm_connector.h     | 10 ++++++
 2 files changed, 73 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index c3725086f4132..30d62e505d188 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -1061,6 +1061,14 @@ static const struct drm_prop_enum_list drm_dp_subconnector_enum_list[] = {
 	{ DRM_MODE_SUBCONNECTOR_Native,	     "Native"    }, /* DP */
 };
 
+static const struct drm_prop_enum_list drm_active_color_format_enum_list[] = {
+	{ 0, "not applicable" },
+	{ DRM_COLOR_FORMAT_RGB444, "rgb" },
+	{ DRM_COLOR_FORMAT_YCBCR444, "ycbcr444" },
+	{ DRM_COLOR_FORMAT_YCBCR422, "ycbcr422" },
+	{ DRM_COLOR_FORMAT_YCBCR420, "ycbcr420" },
+};
+
 DRM_ENUM_NAME_FN(drm_get_dp_subconnector_name,
 		 drm_dp_subconnector_enum_list)
 
@@ -1390,6 +1398,15 @@ static const u32 dp_colorspaces =
  *	drm_connector_attach_max_bpc_property() to create and attach the
  *	property to the connector during initialization.
  *
+ * active color format:
+ *	This read-only property tells userspace the color format actually used
+ *	by the hardware display engine "on the cable" on a connector. The chosen
+ *	value depends on hardware capabilities, both display engine and
+ *	connected monitor. Drivers shall use
+ *	drm_connector_attach_active_color_format_property() to install this
+ *	property. Possible values are "not applicable", "rgb", "ycbcr444",
+ *	"ycbcr422", and "ycbcr420".
+ *
  * Connectors also have one standardized atomic property:
  *
  * CRTC_ID:
@@ -2451,6 +2468,52 @@ int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
 }
 EXPORT_SYMBOL(drm_connector_attach_max_bpc_property);
 
+/**
+ * drm_connector_attach_active_color_format_property - attach "active color format" property
+ * @connector: connector to attach active color format property on.
+ *
+ * This is used to check the applied color format on a connector.
+ *
+ * Returns:
+ * Zero on success, negative errno on failure.
+ */
+int drm_connector_attach_active_color_format_property(struct drm_connector *connector)
+{
+	struct drm_device *dev = connector->dev;
+	struct drm_property *prop;
+
+	if (!connector->active_color_format_property) {
+		prop = drm_property_create_enum(dev, DRM_MODE_PROP_IMMUTABLE, "active color format",
+						drm_active_color_format_enum_list,
+						ARRAY_SIZE(drm_active_color_format_enum_list));
+		if (!prop)
+			return -ENOMEM;
+
+		connector->active_color_format_property = prop;
+	}
+
+	drm_object_attach_property(&connector->base, prop, 0);
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_connector_attach_active_color_format_property);
+
+/**
+ * drm_connector_set_active_color_format_property - sets the active color format property for a
+ * connector
+ * @connector: drm connector
+ * @active_color_format: color format for the connector currently active "on the cable"
+ *
+ * Should be used by atomic drivers to update the active color format over a connector.
+ */
+void drm_connector_set_active_color_format_property(struct drm_connector *connector,
+						    u32 active_color_format)
+{
+	drm_object_property_set_value(&connector->base, connector->active_color_format_property,
+				      active_color_format);
+}
+EXPORT_SYMBOL(drm_connector_set_active_color_format_property);
+
 /**
  * drm_connector_attach_hdr_output_metadata_property - attach "HDR_OUTPUT_METADA" property
  * @connector: connector to attach the property on.
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index fe88d7fc6b8f4..9ae73cfdceeb1 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1699,6 +1699,12 @@ struct drm_connector {
 	 */
 	struct drm_property *privacy_screen_hw_state_property;
 
+	/**
+	 * @active_color_format_property: Default connector property for the
+	 * active color format to be driven out of the connector.
+	 */
+	struct drm_property *active_color_format_property;
+
 #define DRM_CONNECTOR_POLL_HPD (1 << 0)
 #define DRM_CONNECTOR_POLL_CONNECT (1 << 1)
 #define DRM_CONNECTOR_POLL_DISCONNECT (1 << 2)
@@ -2053,6 +2059,10 @@ void drm_connector_attach_privacy_screen_provider(
 	struct drm_connector *connector, struct drm_privacy_screen *priv);
 void drm_connector_update_privacy_screen(const struct drm_connector_state *connector_state);
 
+int drm_connector_attach_active_color_format_property(struct drm_connector *connector);
+void drm_connector_set_active_color_format_property(struct drm_connector *connector,
+						    u32 active_color_format);
+
 /**
  * struct drm_tile_group - Tile group metadata
  * @refcount: reference count
-- 
2.43.0

