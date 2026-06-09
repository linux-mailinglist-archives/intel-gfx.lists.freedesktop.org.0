Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9yiSIs4KKGpN8wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:45:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F8B660247
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:45:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=fKLz80uS;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C75D10E358;
	Tue,  9 Jun 2026 12:45:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C237510E333;
 Tue,  9 Jun 2026 12:44:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1781009087; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=JjMWiEm2iAZmBiW4RDe8Sc188Vo/V5/TeZfA8uWVgHlbwOvu+7ZQz1xji78KmnIrwRjzAFuAf3IZabdxmsqufsW7Bjhh9IiRezLHShAAd2ucLd+8HPZSxaGZvKrgIEELZsV6rRH6AJ4ksWXcxdPe7bawIarUMHVlIe7MBhTzQJ8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1781009087;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=EdrCvM7lItFTp7wl4oWhf6q4UqNqphRpKREtgocjK/s=; 
 b=UDsTac59IURItcwPl3Z6o8cPrr8kFAvt0+PJc2CGsjR6JrRXfBF9BYyv3ZHQBsV9/C+xRaSl1MJwU4/JmsO5psSvEr87yQX4IDV8lzQwQITcBRrTbOdadS4IDitim2gqNzpMs73ZdrGOizJEr+qU6Z2eGL9J1BASdWZrBBxdtA0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1781009087; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
 bh=EdrCvM7lItFTp7wl4oWhf6q4UqNqphRpKREtgocjK/s=;
 b=fKLz80uSVAjXtUBtKou3mNCJrl2tErSx9GUMSxNNap2xHEI25sinIiTKHvoMRKfE
 djvIFnPM6fDaYEtOdrweh/fOOkWRukxskOzFmp0lgNZugKV1OMeTFaQaQUh3CucyIH4
 DOS1jJaBgXd925LOVKAj7WJVx6inqmb75XnNPQu8=
Received: by mx.zohomail.com with SMTPS id 1781009084667276.3967805897437;
 Tue, 9 Jun 2026 05:44:44 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Tue, 09 Jun 2026 14:43:50 +0200
Subject: [PATCH v17 03/28] drm: Add new general DRM property "color format"
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260609-color-format-v17-3-35739b5782cc@collabora.com>
References: <20260609-color-format-v17-0-35739b5782cc@collabora.com>
In-Reply-To: <20260609-color-format-v17-0-35739b5782cc@collabora.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	MAILLIST(-0.20)[mailman];
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
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,tuxedocomputers.com:email,lists.freedesktop.org:from_smtp,fooishbar.org:email,yngvason.is:email,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F3F8B660247

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
index e4f7153543b3..0dd440a14946 100644
--- a/Documentation/gpu/drm-kms.rst
+++ b/Documentation/gpu/drm-kms.rst
@@ -610,6 +610,12 @@ Color Management Properties
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
index a5d13b92b665..296195087a4c 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -1397,6 +1397,18 @@ static const u32 hdmi_colorspaces =
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
@@ -2944,6 +2956,149 @@ int drm_connector_attach_colorspace_property(struct drm_connector *connector)
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
index 529755c2e862..e1f6072ce7c9 100644
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
@@ -2181,6 +2256,12 @@ struct drm_connector {
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
@@ -2664,6 +2745,9 @@ bool drm_connector_has_possible_encoder(struct drm_connector *connector,
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

