Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPOuGe7A3Gn5VwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 12:09:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E1C3EA50D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 12:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76DF710E3CB;
	Mon, 13 Apr 2026 10:09:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="g4PHIP/E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E5A10E3D1;
 Mon, 13 Apr 2026 10:09:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1776074977; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=IpYYRCqk8tavoGvhSbVCVZTy/Zp/Vz3RX2uc/19ZmPcYEILKWGe+rdahSZOB/qTrf1F7aerpMkFDXY58jylBg3e9bYr/u8M6Oih6kmTGloqMQzYxYzISDfk16I+HfexcBbzjJ3fnpj0I8a4Z4rgOsZ4DBjTuXYD3jsqi8X4kbLU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1776074977;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=pfuJgNlLA/GmqV8a4mWT/AFOH7DIYdQGAVlfIcknDY4=; 
 b=QJngyNuJty26H+EkH9NujQusfNE23MNs/ZOHTSw6B8ivAub78LVljZapaAUhEwtYRxjW3CpMGkLmYZUsPDJw0FOgKkD3SEbzSO9M2lI7wZxNz0gbmKk2gO+18vvp3nzCYxYgNPWq9sCSL8Ndfjb2858LJV4uXX3FPd20SReAR5Y=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1776074977; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
 bh=pfuJgNlLA/GmqV8a4mWT/AFOH7DIYdQGAVlfIcknDY4=;
 b=g4PHIP/EPkNVd3lJDrByBv5nWwJsdR7qGWTxixt9xABUDKKmUgTASWQYfiMsSiDy
 RkHfTGyXUhNNNgWpzuX+NQdDvBJNqKl4fDeA8PWIzjEc4aVVe+xHf+IxyVaZeNe97rI
 ZgX/uWOK8RrxuMjXwrbbxpfzMCTXBXqW6QPv3fjk=
Received: by mx.zohomail.com with SMTPS id 1776074976647230.75652894518373;
 Mon, 13 Apr 2026 03:09:36 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Mon, 13 Apr 2026 12:07:27 +0200
Subject: [PATCH v13 13/27] drm/i915: Implement the "color format" DRM property
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260413-color-format-v13-13-ab37d4dfba48@collabora.com>
References: <20260413-color-format-v13-0-ab37d4dfba48@collabora.com>
In-Reply-To: <20260413-color-format-v13-0-ab37d4dfba48@collabora.com>
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
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-doc@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
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
	FREEMAIL_TO(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	URIBL_MULTI_FAIL(0.00)[collabora.com:server fail,gabe.freedesktop.org:server fail];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 17E1C3EA50D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Implement the "color format" DRM property for both DP and HDMI.  The
values of the property include RGB, YCbCr420, YCbCr444 and Auto. Auto
will pick RGB, with a fallback to YCbCr420.

The mask of supported formats by the source exposed by the property is
an optimistic scenario, as specific DFP-related caveats can't be
established before an EDID is present.

Should the explicitly requested color format not be supported by the
sink (or by the source in combination with the sink), then an error is
returned to userspace, so that it can make a better choice.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/i915/display/intel_connector.c | 10 +++++++
 drivers/gpu/drm/i915/display/intel_connector.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c        | 38 +++++++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_hdmi.c      | 38 +++++++++++++++++++++++---
 4 files changed, 79 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 7ef9338d67ab..b1a21dd77af6 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -338,3 +338,13 @@ intel_attach_scaling_mode_property(struct drm_connector *connector)
 
 	connector->state->scaling_mode = DRM_MODE_SCALE_ASPECT;
 }
+
+void
+intel_attach_color_format_property(struct drm_connector *connector)
+{
+	const unsigned long fmts = BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
+				   BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
+				   BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
+
+	drm_connector_attach_color_format_property(connector, fmts);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
index 0aa86626e646..c77b7aac02cb 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.h
+++ b/drivers/gpu/drm/i915/display/intel_connector.h
@@ -34,5 +34,6 @@ void intel_attach_dp_colorspace_property(struct drm_connector *connector);
 void intel_attach_scaling_mode_property(struct drm_connector *connector);
 void intel_connector_queue_modeset_retry_work(struct intel_connector *connector);
 void intel_connector_cancel_modeset_retry_work(struct intel_connector *connector);
+void intel_attach_color_format_property(struct drm_connector *connector);
 
 #endif /* __INTEL_CONNECTOR_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 47bd3d59ea93..3b2293415b55 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3398,10 +3398,10 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 }
 
 static int
-intel_dp_compute_formats(struct intel_encoder *encoder,
-			 struct intel_crtc_state *crtc_state,
-			 struct drm_connector_state *conn_state,
-			 bool respect_downstream_limits)
+intel_dp_compute_formats_auto(struct intel_encoder *encoder,
+			      struct intel_crtc_state *crtc_state,
+			      struct drm_connector_state *conn_state,
+			      bool respect_downstream_limits)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -3437,6 +3437,34 @@ intel_dp_compute_formats(struct intel_encoder *encoder,
 	return ret;
 }
 
+static int
+intel_dp_compute_formats(struct intel_encoder *encoder,
+			 struct intel_crtc_state *crtc_state,
+			 struct drm_connector_state *conn_state,
+			 bool respect_downstream_limits)
+{
+	switch (conn_state->color_format) {
+	case DRM_CONNECTOR_COLOR_FORMAT_RGB444:
+		return intel_dp_compute_output_format(encoder, crtc_state, conn_state,
+						      respect_downstream_limits,
+						      INTEL_OUTPUT_FORMAT_RGB);
+	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR444:
+		return intel_dp_compute_output_format(encoder, crtc_state, conn_state,
+						      respect_downstream_limits,
+						      INTEL_OUTPUT_FORMAT_YCBCR444);
+	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR420:
+		return intel_dp_compute_output_format(encoder, crtc_state, conn_state,
+						      respect_downstream_limits,
+						      INTEL_OUTPUT_FORMAT_YCBCR420);
+	case DRM_CONNECTOR_COLOR_FORMAT_AUTO:
+		return intel_dp_compute_formats_auto(encoder, crtc_state, conn_state,
+						     respect_downstream_limits);
+	default:
+		MISSING_CASE(conn_state->color_format);
+		return -EINVAL;
+	}
+}
+
 void
 intel_dp_audio_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
@@ -7025,6 +7053,8 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *_connec
 
 	if (HAS_VRR(display))
 		drm_connector_attach_vrr_capable_property(&connector->base);
+
+	intel_attach_color_format_property(&connector->base);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 5ab5b5f85cde..632498e3702b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2307,10 +2307,10 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 	return intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
 }
 
-static int intel_hdmi_compute_formats(struct intel_encoder *encoder,
-				      struct intel_crtc_state *crtc_state,
-				      const struct drm_connector_state *conn_state,
-				      bool respect_downstream_limits)
+static int intel_hdmi_compute_formats_auto(struct intel_encoder *encoder,
+					   struct intel_crtc_state *crtc_state,
+					   const struct drm_connector_state *conn_state,
+					   bool respect_downstream_limits)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
@@ -2345,6 +2345,35 @@ static int intel_hdmi_compute_formats(struct intel_encoder *encoder,
 	return ret;
 }
 
+static int intel_hdmi_compute_formats(struct intel_encoder *encoder,
+				      struct intel_crtc_state *crtc_state,
+				      const struct drm_connector_state *conn_state,
+				      bool respect_downstream_limits)
+{
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+
+	switch (conn_state->color_format) {
+	case DRM_CONNECTOR_COLOR_FORMAT_RGB444:
+		return intel_hdmi_compute_output_format(encoder, crtc_state, connector,
+							respect_downstream_limits,
+							INTEL_OUTPUT_FORMAT_RGB);
+	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR444:
+		return intel_hdmi_compute_output_format(encoder, crtc_state, connector,
+							respect_downstream_limits,
+							INTEL_OUTPUT_FORMAT_YCBCR444);
+	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR420:
+		return intel_hdmi_compute_output_format(encoder, crtc_state, connector,
+							respect_downstream_limits,
+							INTEL_OUTPUT_FORMAT_YCBCR420);
+	case DRM_CONNECTOR_COLOR_FORMAT_AUTO:
+		return intel_hdmi_compute_formats_auto(encoder, crtc_state, conn_state,
+						       respect_downstream_limits);
+	default:
+		MISSING_CASE(conn_state->color_format);
+		return -EINVAL;
+	}
+}
+
 static bool intel_hdmi_is_cloned(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->uapi.encoder_mask &&
@@ -2729,6 +2758,7 @@ intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *_
 
 	intel_attach_hdmi_colorspace_property(&connector->base);
 	drm_connector_attach_content_type_property(&connector->base);
+	intel_attach_color_format_property(&connector->base);
 
 	if (DISPLAY_VER(display) >= 10)
 		drm_connector_attach_hdr_output_metadata_property(&connector->base);

-- 
2.53.0

