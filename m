Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UK6HM2Zt6mkazQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 21:05:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 839AA45652D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 21:05:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E3910F284;
	Thu, 23 Apr 2026 19:05:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="Fw+r1suW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98F5710F232;
 Thu, 23 Apr 2026 19:05:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1776971096; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=iYSaLATXcF1nQ9uw+DQMeskCQXUWTOFfBHFDMGl0P9PMmxmwZG+OewyhVyfvAowNM02esv87eDSwa8Fj6qpMX+mQFduI2rxKK0FNlNs/qNzwye6Jt7eBy6WERidpCt6FkzOs5aPxLhWkmHRNbThOhp308t2hnwBc6aabQRKUk+A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1776971096;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=5k1vlW62iXZjcOaFsSXyeVWlBMQFrsYlNjKb9M5MyLE=; 
 b=YuBR8fOBbfxAnYv+5DPk5R7tIEjeoc2I5zYR5wA3bC3tPV8QwML7wAK8wFPdo1OSD7U42tA6PeqOCI0thbJYzEk590ML4m7G2IvKSq6HjzzSKfGdQLHezlSiztVWlD5isjfs30Bjv/Oh1DVi22TzNp5923vd9pf/P392B9UkUdk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1776971095; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
 bh=5k1vlW62iXZjcOaFsSXyeVWlBMQFrsYlNjKb9M5MyLE=;
 b=Fw+r1suWIOoBIdxvbwl38Dw+vKKHz89GbgtvAUR8sboveymUX0OIqXL6+kKM6+l+
 QeqmLa702SGB+kP5lYx4R9pcknr+XR30RTuqpsc7Rv8aouQxcInHeg48dIHWPbMsgyC
 flRPD7jGzCvPldsauve1FwmPFLwxogfDhmlXVpRY=
Received: by mx.zohomail.com with SMTPS id 1776971094703164.3612840189653;
 Thu, 23 Apr 2026 12:04:54 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 23 Apr 2026 21:03:31 +0200
Subject: [PATCH v14 08/28] drm/display: hdmi-state-helper: Act on color
 format DRM property
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260423-color-format-v14-8-449a419ccbd4@collabora.com>
References: <20260423-color-format-v14-0-449a419ccbd4@collabora.com>
In-Reply-To: <20260423-color-format-v14-0-449a419ccbd4@collabora.com>
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
 linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
	RCPT_COUNT_TWELVE(0.00)[40];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:dkim,collabora.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 839AA45652D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

With the introduction of the "color format" DRM property, which allows
userspace to request a specific color format, the HDMI state helper
should implement this.

Implement it by translating the requested drm_connector_color_format to
a drm_output_color_format enum value as per the logic HDMI should use
for this: Auto is translated to RGB, and a fallback to YUV420 is only
performed if the original color format was auto.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/display/drm_hdmi_state_helper.c | 31 +++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
index a0d88701d236..954f8b2973fc 100644
--- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
@@ -670,8 +670,39 @@ hdmi_compute_config(const struct drm_connector *connector,
 	unsigned int max_bpc = clamp_t(unsigned int,
 				       conn_state->max_bpc,
 				       8, connector->max_bpc);
+	enum drm_output_color_format fmt;
 	int ret;
 
+	if (conn_state->color_format != DRM_CONNECTOR_COLOR_FORMAT_AUTO) {
+		switch (conn_state->color_format) {
+		case DRM_CONNECTOR_COLOR_FORMAT_AUTO:
+			drm_warn(connector->dev, "AUTO format in non-AUTO path.\n");
+			fallthrough;
+		case DRM_CONNECTOR_COLOR_FORMAT_RGB444:
+			fmt = DRM_OUTPUT_COLOR_FORMAT_RGB444;
+			break;
+		case DRM_CONNECTOR_COLOR_FORMAT_YCBCR444:
+			fmt = DRM_OUTPUT_COLOR_FORMAT_YCBCR444;
+			break;
+		case DRM_CONNECTOR_COLOR_FORMAT_YCBCR422:
+			fmt = DRM_OUTPUT_COLOR_FORMAT_YCBCR422;
+			break;
+		case DRM_CONNECTOR_COLOR_FORMAT_YCBCR420:
+			fmt = DRM_OUTPUT_COLOR_FORMAT_YCBCR420;
+			break;
+		default:
+			drm_dbg_kms(connector->dev, "HDMI does not support color format '%d'.\n",
+				conn_state->color_format);
+			return -EINVAL;
+		}
+
+		return hdmi_compute_format_bpc(connector, conn_state, mode, max_bpc, fmt);
+	}
+
+	/*
+	 * For %DRM_CONNECTOR_COLOR_FORMAT_AUTO, try RGB first, and fall back
+	 * to the less bandwidth-intensive YCBCR420 if RGB fails.
+	 */
 	ret = hdmi_compute_format_bpc(connector, conn_state, mode, max_bpc,
 				      DRM_OUTPUT_COLOR_FORMAT_RGB444);
 	if (ret) {

-- 
2.53.0

