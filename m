Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AE08IS8EEmrDtQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 21:46:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 139845C091E
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 21:46:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22BA110E6AD;
	Sat, 23 May 2026 19:46:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="E97PahUT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B315A10E6E9;
 Sat, 23 May 2026 19:46:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1779565602; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=hE21EA1vl4B+sZkhT7os+r5stZqGItYxQ6je3zhspVBkqKD3QXUOv2dqMGSajXB91/SntsTo/ra276sQ2+9lai2oDc5nm+SjvXby6c1VX33OLXb/X48Km+gsuLc0H4AzQYWN4Rv0SxINW28TCPkMBcgGeY5v0n7tcEIgXKE8h6U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1779565602;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=11mrw5ERpgGzjDqAImvICD/uybnyecRT/PgLC2hXYL4=; 
 b=nPkpe6feDq3zFSmb8ZCQmXt3UlMxrpPQNXs3jvlpFhX1bjXr2FbnS8Fmy5X7t3woBkrS4ThSHyvCN0o8fi/HsCWfPOb5TVRQ3bZGX6MqXQR7t9lWSuAUE7JSdXPJ4BaxhbMpPElrdHyzkq+eD4IVaKDzlxjfvY28r8Ptw1FuzKo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779565602; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
 bh=11mrw5ERpgGzjDqAImvICD/uybnyecRT/PgLC2hXYL4=;
 b=E97PahUT+jYCDDKWt1CdraS7l2peI1T/SgnoDQigOLlktayz2XGQVu/QTMul48Lk
 eusmiold/+vZiYVJz4MkU9hqAY5/AO8pCTnHtaXOj+1EoMNolAajp6soHoaKH+dh3jj
 T8l5JM1g5D+HyNa1RMnKCpon7DqwmJiNmydgahmA=
Received: by mx.zohomail.com with SMTPS id 1779565601318512.2082188037197;
 Sat, 23 May 2026 12:46:41 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Sat, 23 May 2026 21:43:49 +0200
Subject: [PATCH v16 14/28] drm/i915/dp: Implement "color format" DRM property
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260523-color-format-v16-14-24340c5e4732@collabora.com>
References: <20260523-color-format-v16-0-24340c5e4732@collabora.com>
In-Reply-To: <20260523-color-format-v16-0-24340c5e4732@collabora.com>
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
	FREEMAIL_TO(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,fooishbar.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[40];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:mid,collabora.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,fooishbar.org:email]
X-Rspamd-Queue-Id: 139845C091E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Implement the "color format" DRM property for DP. The values of the
property include RGB, YCbCr420, YCbCr444 and Auto. Auto will pick RGB,
with a fallback to YCbCr420.

The mask of supported formats by the source exposed by the property is
an optimistic scenario, as specific DFP-related caveats can't be
established before an EDID is present.

Should the explicitly requested color format not be supported by the
sink (or by the source in combination with the sink), then an error is
returned to userspace, so that it can make a better choice.

Reviewed-by: Daniel Stone <daniel@fooishbar.org>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 61 ++++++++++++++++++++++++++++++---
 1 file changed, 57 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 380933579178..041e40c3ae8a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3435,10 +3435,10 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
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
@@ -3474,6 +3474,34 @@ intel_dp_compute_formats(struct intel_encoder *encoder,
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
@@ -7027,6 +7055,29 @@ intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder)
 	return false;
 }
 
+static void
+intel_dp_attach_color_format_property(struct intel_dp *intel_dp)
+{
+	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	unsigned long fmts = BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444);
+	bool has_pcon = false;
+
+	if (!connector)
+		return;
+
+	if (dig_port && intel_bios_encoder_is_lspcon(dig_port->base.devdata))
+		has_pcon = true;
+
+	if (has_pcon || source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420))
+		fmts |= BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
+
+	if (has_pcon || source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR444))
+		fmts |= BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444);
+
+	drm_connector_attach_color_format_property(&connector->base, fmts);
+}
+
 static void
 intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *_connector)
 {
@@ -7059,6 +7110,8 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *_connec
 
 	if (HAS_VRR(display))
 		drm_connector_attach_vrr_capable_property(&connector->base);
+
+	intel_dp_attach_color_format_property(intel_dp);
 }
 
 static void

-- 
2.54.0

