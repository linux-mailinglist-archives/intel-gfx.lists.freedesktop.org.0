Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eG3ZNgdNEGq5VwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 14:33:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DBB5B4084
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 14:33:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7806E10F5AC;
	Fri, 22 May 2026 12:33:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="IPZMVnTX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E380D10E09D;
 Fri, 22 May 2026 12:33:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1779453178; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=IhAT51p0zZOVElK3QnQaBN0FMjCTTHkCirLSg1eJfL7t6xeR6SKJbRXw6h1qmIGcR5LRW9hNU0GkX7iIjrClbESLJ1+7K3OUSPc5/sapmnfYy0+NSP1p5stjd6YLiatkotZdGNzX83IN6cN9RmcA0krNjO/LGtzcWP7xV7x7jQU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1779453178;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=mt5cSMU6tD+L8zXZ2e2nrAuRntzrMuY0AovJ2sa5OFI=; 
 b=feYju0yrvJMB8WRRTM980aL4C7mLSfNplK+0pH3Dq8sI+udpqt7QgzPHWx0+Z7T8Mrl+5NT0NhfvYrkDaYtVemzfOuCaExiEq65jrLeOABV/VBzTrdwuQNtB252cK6/j8o4c5sRH6x45Dbt2Z7vNyC6t0tiEtkQx5Tc3xrGlkHM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779453178; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
 bh=mt5cSMU6tD+L8zXZ2e2nrAuRntzrMuY0AovJ2sa5OFI=;
 b=IPZMVnTXoIH8IJ1nWJXi2roVcr7N9XmobKH7Y2AE/cvTqAFiGxUalL2kdKtxGANM
 dFJgWXIqE32LSCcZ/bGbPy7bSDoG4TPs5HUDLg9uFvb5vLwjTsRuyG2NXKW44OU6oFQ
 b9hQohDtDZZ6tqtatjvJqtGAvohoyrs3SRXOIV6E=
Received: by mx.zohomail.com with SMTPS id 1779453177200907.696793023293;
 Fri, 22 May 2026 05:32:57 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Fri, 22 May 2026 14:31:54 +0200
Subject: [PATCH v15 03/28] drm: Add new general DRM property "color format"
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260522-color-format-v15-3-21fb136c9df2@collabora.com>
References: <20260522-color-format-v15-0-21fb136c9df2@collabora.com>
In-Reply-To: <20260522-color-format-v15-0-21fb136c9df2@collabora.com>
To: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
 Rodrigo Siqueira <siqueira@igalia.com>, 
 Alex Deucher <alexander.deucher@amd.com>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
 Daniel Stone <daniel@fooishbar.org>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Werner Sembach <wse@tuxedocomputers.com>, 
 Andri Yngvason <andri@yngvason.is>, Marius Vlad <marius.vlad@collabora.com>
X-Mailer: b4 0.15.2
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,fooishbar.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxedocomputers.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,fooishbar.org:email,collabora.com:email,collabora.com:mid,collabora.com:dkim,yngvason.is:email]
X-Rspamd-Queue-Id: 52DBB5B4084
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a new general DRM property named "color format" which can be used by
userspace to request the display driver to output a particular color
format.

Possible string values for the new enum property are:
 - "AUTO" (setup by default, driver internally picks the color format)
 - "RGB"
 - "YUV 4:4:4"
 - "YUV 4:2:2"
 - "YUV 4:2:0"

Drivers should advertise from this list the formats they support in an
optimistic best-case scenario. EDID data from the sink can then be used
in the kernel's atomic check phase to restrict this set of formats, as
well as by userspace to make a correct choice in the first place.

Co-developed-by: Werner Sembach <wse@tuxedocomputers.com>
Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
Co-developed-by: Andri Yngvason <andri@yngvason.is>
Signed-off-by: Andri Yngvason <andri@yngvason.is>
Signed-off-by: Marius Vlad <marius.vlad@collabora.com>
Reviewed-by: Maxime Ripard <mripard@kernel.org>
Reviewed-by: Daniel Stone <daniel@fooishbar.org>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 Documentation/gpu/drm-kms.rst       |   6 ++
 drivers/gpu/drm/drm_atomic_helper.c |   5 ++
 drivers/gpu/drm/drm_atomic_uapi.c   |   4 +
 drivers/gpu/drm/drm_connector.c     | 155 ++++++++++++++++++++++++++++++++++++
 include/drm/drm_connector.h         |  84 +++++++++++++++++++
 5 files changed, 254 insertions(+)

diff --git a/Documentation/gpu/drm-kms.rst b/Documentation/gpu/drm-kms.rst
index fa69a5450f96..2b6a96211cfc 100644
--- a/Documentation/gpu/drm-kms.rst
+++ b/Documentation/gpu/drm-kms.rst
@@ -604,6 +604,12 @@ Color Management Properties
 .. kernel-doc:: drivers/gpu/drm/drm_color_mgmt.c
    :doc: overview
 
+Color Format Property
+---------------------
+
+.. kernel-doc:: drivers/gpu/drm/drm_connector.c
+   :doc: Color format
+
 Tile Group Property
 -------------------
 
diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index 51f39edc31ed..3547f797a850 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -737,6 +737,11 @@ drm_atomic_helper_check_modeset(struct drm_device *dev,
 			if (old_connector_state->max_requested_bpc !=
 			    new_connector_state->max_requested_bpc)
 				new_crtc_state->connectors_changed = true;
+
+			if (old_connector_state->color_format !=
+			    new_connector_state->color_format)
+				new_crtc_state->connectors_changed = true;
+
 		}
 
 		if (funcs->atomic_check)
diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
index 6441b55cc274..c7f80d90794c 100644
--- a/drivers/gpu/drm/drm_atomic_uapi.c
+++ b/drivers/gpu/drm/drm_atomic_uapi.c
@@ -935,6 +935,8 @@ static int drm_atomic_connector_set_property(struct drm_connector *connector,
 		state->privacy_screen_sw_state = val;
 	} else if (property == connector->broadcast_rgb_property) {
 		state->hdmi.broadcast_rgb = val;
+	} else if (property == connector->color_format_property) {
+		state->color_format = val;
 	} else if (connector->funcs->atomic_set_property) {
 		return connector->funcs->atomic_set_property(connector,
 				state, property, val);
@@ -1020,6 +1022,8 @@ drm_atomic_connector_get_property(struct drm_connector *connector,
 		*val = state->privacy_screen_sw_state;
 	} else if (property == connector->broadcast_rgb_property) {
 		*val = state->hdmi.broadcast_rgb;
+	} else if (property == connector->color_format_property) {
+		*val = state->color_format;
 	} else if (connector->funcs->atomic_get_property) {
 		return connector->funcs->atomic_get_property(connector,
 				state, property, val);
diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 3fa4d2082cd7..a0fca522f18f 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -1388,6 +1388,18 @@ static const u32 hdmi_colorspaces =
 	BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65) |
 	BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER);
 
+static const u32 hdmi_colorformats =
+	BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
+	BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
+	BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
+	BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
+
+static const u32 dp_colorformats =
+	BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
+	BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
+	BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
+	BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
+
 /*
  * As per DP 1.4a spec, 2.2.5.7.5 VSC SDP Payload for Pixel Encoding/Colorimetry
  * Format Table 2-120
@@ -2935,6 +2947,149 @@ int drm_connector_attach_colorspace_property(struct drm_connector *connector)
 }
 EXPORT_SYMBOL(drm_connector_attach_colorspace_property);
 
+/**
+ * DOC: Color format
+ *
+ * The connector "color format" property allows userspace to request a specific
+ * color model on the output of the connector. Not all values listed by the
+ * property are guaranteed to work for every sink; rather, it is an optimistic
+ * listing of color formats that the source could output depending on
+ * circumstances.
+ *
+ * Whether it actually can output a certain color format is determined during
+ * the atomic check phase. Consequently, a userspace application that sets the
+ * color format to a value other than "AUTO" should check whether its atomic
+ * commit succeeded.
+ *
+ * Possible values for "color format":
+ *
+ * "AUTO":
+ *	The driver or display protocol helpers should pick a suitable color
+ *	format. All implementations of a specific display protocol will behave
+ *	the same way with "AUTO", but different display protocols do not
+ *	necessarily have the same "AUTO" semantics.
+ *
+ *	For HDMI connectors, "AUTO" picks RGB, but falls back to YUV 4:2:0 if
+ *	the bandwidth required for full-scale RGB is not available, or the mode
+ *	is YUV 4:2:0-only, as long as the mode, source, and sink all support
+ *	YUV 4:2:0.
+ * "RGB":
+ *	RGB output format. The quantization range (limited/full) depends on the
+ *	value of the "Broadcast RGB" property if it is present on the connector.
+ * "YUV 4:4:4":
+ *	YUV 4:4:4 (a.k.a. YCbCr 4:4:4) output format. Chroma is not subsampled.
+ *	The quantization range defaults to limited.
+ * "YUV 4:2:2":
+ *	YUV 4:2:2 (a.k.a. YCbCr 4:2:2) output format. Chroma has half the
+ *	horizontal resolution of Luma. The quantization range defaults to
+ *	limited.
+ * "YUV 4:2:0":
+ *	YUV 4:2:0 (a.k.a. YCbCr 4:2:0) output format. Chroma has half the
+ *	horizontal and vertical resolution of Luma. The quantization range
+ *	defaults to limited.
+ *
+ * A sink may only support some color formats in specific modes and at specific
+ * bit depths. The atomic modesetting API should be used to set a working
+ * configuration in one go, as an unsupported combination of parameters is
+ * rejected.
+ */
+
+/**
+ * drm_connector_attach_color_format_property - create and attach color format property
+ * @connector: connector to create the color format property on
+ * @supported_color_formats: bitmask of bit-shifted &enum drm_output_color_format
+ *                           values the connector supports
+ *
+ * Called by a driver to create a color format property. The property is
+ * attached to the connector automatically on success.
+ *
+ * @supported_color_formats should only include color formats the connector
+ * type can actually support.
+ *
+ * Returns:
+ * 0 on success, negative errno on error
+ */
+int drm_connector_attach_color_format_property(struct drm_connector *connector,
+					       unsigned long supported_color_formats)
+{
+	struct drm_device *dev = connector->dev;
+	struct drm_prop_enum_list enum_list[DRM_CONNECTOR_COLOR_FORMAT_COUNT];
+	unsigned int i = 0;
+	unsigned long fmt;
+
+	if (connector->color_format_property)
+		return 0;
+
+	if (!supported_color_formats) {
+		drm_err(dev, "No supported color formats provided on [CONNECTOR:%d:%s]\n",
+			connector->base.id, connector->name);
+		return -EINVAL;
+	}
+
+	if (supported_color_formats & ~GENMASK(DRM_OUTPUT_COLOR_FORMAT_COUNT - 1, 0)) {
+		drm_err(dev, "Unknown color formats provided on [CONNECTOR:%d:%s]\n",
+			connector->base.id, connector->name);
+		return -EINVAL;
+	}
+
+	switch (connector->connector_type) {
+	case DRM_MODE_CONNECTOR_HDMIA:
+	case DRM_MODE_CONNECTOR_HDMIB:
+		if (supported_color_formats & ~hdmi_colorformats) {
+			drm_err(dev, "Color formats not allowed for HDMI on [CONNECTOR:%d:%s]\n",
+				connector->base.id, connector->name);
+			return -EINVAL;
+		}
+		break;
+	case DRM_MODE_CONNECTOR_DisplayPort:
+	case DRM_MODE_CONNECTOR_eDP:
+		if (supported_color_formats & ~dp_colorformats) {
+			drm_err(dev, "Color formats not allowed for DP on [CONNECTOR:%d:%s]\n",
+				connector->base.id, connector->name);
+			return -EINVAL;
+		}
+		break;
+	}
+
+	enum_list[0].name = "AUTO";
+	enum_list[0].type = DRM_CONNECTOR_COLOR_FORMAT_AUTO;
+
+	for_each_set_bit(fmt, &supported_color_formats, DRM_OUTPUT_COLOR_FORMAT_COUNT) {
+		switch (fmt) {
+		case DRM_OUTPUT_COLOR_FORMAT_RGB444:
+			enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_RGB444;
+			break;
+		case DRM_OUTPUT_COLOR_FORMAT_YCBCR444:
+			enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_YCBCR444;
+			break;
+		case DRM_OUTPUT_COLOR_FORMAT_YCBCR422:
+			enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_YCBCR422;
+			break;
+		case DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
+			enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_YCBCR420;
+			break;
+		default:
+			drm_warn(dev, "Unknown supported format %ld on [CONNECTOR:%d:%s]\n",
+				 fmt, connector->base.id, connector->name);
+			continue;
+		}
+		enum_list[i].name = drm_hdmi_connector_get_output_format_name(fmt);
+	}
+
+	connector->color_format_property =
+		drm_property_create_enum(dev, DRM_MODE_PROP_ENUM, "color format",
+					 enum_list, i + 1);
+
+	if (!connector->color_format_property)
+		return -ENOMEM;
+
+	drm_object_attach_property(&connector->base, connector->color_format_property,
+				   DRM_CONNECTOR_COLOR_FORMAT_AUTO);
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_connector_attach_color_format_property);
+
 /**
  * drm_connector_atomic_hdr_metadata_equal - checks if the hdr metadata changed
  * @old_state: old connector state to compare
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 5ad62c207d00..03e42c36175d 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -571,12 +571,80 @@ enum drm_colorspace {
  *   YCbCr 4:2:2 output format (ie. with horizontal subsampling)
  * @DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
  *   YCbCr 4:2:0 output format (ie. with horizontal and vertical subsampling)
+ * @DRM_OUTPUT_COLOR_FORMAT_COUNT:
+ *   Number of valid output color format values in this enum
  */
 enum drm_output_color_format {
 	DRM_OUTPUT_COLOR_FORMAT_RGB444 = 0,
 	DRM_OUTPUT_COLOR_FORMAT_YCBCR444,
 	DRM_OUTPUT_COLOR_FORMAT_YCBCR422,
 	DRM_OUTPUT_COLOR_FORMAT_YCBCR420,
+	DRM_OUTPUT_COLOR_FORMAT_COUNT,
+};
+
+/**
+ * enum drm_connector_color_format - Connector Color Format Request
+ *
+ * This enum, unlike &enum drm_output_color_format, is used to specify requests
+ * for a specific color format on a connector through the DRM "color format"
+ * property. The difference is that it has an "AUTO" value to specify that
+ * no specific choice has been made.
+ */
+enum drm_connector_color_format {
+	/**
+	 * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display protocol
+	 * helpers should pick a suitable color format. All implementations of a
+	 * specific display protocol must behave the same way with "AUTO", but
+	 * different display protocols do not necessarily have the same "AUTO"
+	 * semantics.
+	 *
+	 * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 if the
+	 * bandwidth required for full-scale RGB is not available, or the mode
+	 * is YCbCr 4:2:0-only, as long as the mode and output both support
+	 * YCbCr 4:2:0.
+	 *
+	 * For display protocols other than HDMI, the recursive bridge chain
+	 * format selection picks the first chain of bridge formats that works,
+	 * as has already been the case before the introduction of the "color
+	 * format" property. Non-HDMI bridges should therefore either sort their
+	 * bus output formats by preference, or agree on a unified auto format
+	 * selection logic that's implemented in a common state helper (like
+	 * how HDMI does it).
+	 */
+	DRM_CONNECTOR_COLOR_FORMAT_AUTO = 0,
+
+	/**
+	 * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB output format. The
+	 * quantization range depends on the value of the "Broadcast RGB"
+	 * property if it is present on the connector.
+	 */
+	DRM_CONNECTOR_COLOR_FORMAT_RGB444,
+
+	/**
+	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbCr 4:4:4 output format (ie.
+	 * not subsampled). Quantization range is "Limited" by default.
+	 */
+	DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
+
+	/**
+	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbCr 4:2:2 output format (ie.
+	 * with horizontal subsampling). Quantization range is "Limited" by
+	 * default.
+	 */
+	DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
+
+	/**
+	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbCr 4:2:0 output format (ie.
+	 * with horizontal and vertical subsampling). Quantization range is
+	 * "Limited" by default.
+	 */
+	DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,
+
+	/**
+	 * @DRM_CONNECTOR_COLOR_FORMAT_COUNT: Number of valid connector color
+	 * format values in this enum
+	 */
+	DRM_CONNECTOR_COLOR_FORMAT_COUNT,
 };
 
 const char *
@@ -1167,6 +1235,13 @@ struct drm_connector_state {
 	 */
 	enum drm_colorspace colorspace;
 
+	/**
+	 * @color_format: State variable for Connector property to request
+	 * color format change on Sink. This is most commonly used to switch
+	 * between RGB to YUV and vice-versa.
+	 */
+	enum drm_connector_color_format color_format;
+
 	/**
 	 * @writeback_job: Writeback job for writeback connectors
 	 *
@@ -2165,6 +2240,12 @@ struct drm_connector {
 	 */
 	struct drm_property *colorspace_property;
 
+	/**
+	 * @color_format_property: Connector property to set the suitable
+	 * color format supported by the sink.
+	 */
+	struct drm_property *color_format_property;
+
 	/**
 	 * @path_blob_ptr:
 	 *
@@ -2648,6 +2729,9 @@ bool drm_connector_has_possible_encoder(struct drm_connector *connector,
 					struct drm_encoder *encoder);
 const char *drm_get_colorspace_name(enum drm_colorspace colorspace);
 
+int drm_connector_attach_color_format_property(struct drm_connector *connector,
+					       unsigned long supported_color_formats);
+
 /**
  * drm_for_each_connector_iter - connector_list iterator macro
  * @connector: &struct drm_connector pointer used as cursor

-- 
2.54.0

