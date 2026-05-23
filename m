Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UB1EHOEDEmqntQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 21:45:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B945C0863
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 21:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DD0E10E4B9;
	Sat, 23 May 2026 19:45:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="jL/63TlU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A9BF10E4B9;
 Sat, 23 May 2026 19:45:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1779565524; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=A+r0Q2+5CJA4/3i50gpkAfIPyPu9Z6Q4c0vJdgA2UJQH7BE3rNmKsmTGja7/Yq0vwTtKKBsQBrErY2ngxSfRWuIKAchkznhOyD5sAyiO27DvJ5NRqMe6zUYxIfctvTljBCIvsSYVF3taWlRf/mhHU70lPgrNmukbeQ8UCNqqYTc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1779565524;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=ydwMnyAzyOCfy2Y9vA8jDchcJAW3pPAmLiksvoQsJDo=; 
 b=FHYucNwTWsLtGjYpcfP3C4n+ZaKJeAbaHQDsjA4sW5vSh5+KbBOXw2OZ0tBjlP+jFVjI6TgRbkngnZkMcu6CFfJakfoMylYkSsj8PO8gjLjclMl0J2NXzxEDzs/WNxeF2tF4V6GSxHlhAVsE5J0zM2HPRP8o5VTvZmXoxw7Pqa0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779565524; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
 bh=ydwMnyAzyOCfy2Y9vA8jDchcJAW3pPAmLiksvoQsJDo=;
 b=jL/63TlU7hOtnh2e6k5AMMqmK5ntnVAqMcmr0Asf5jMN9FxEm238xq/xDvHqH0nC
 avQzJqKvUjnWqwesxVAsvAGgX8VHm3IZDJe6t5BRXwETTo+Wtdw4dWDjPBxyCe/u3qr
 UA7vyqwPMUxJ1YvBX/VT3VMsY3Dr7IE0Gv5W9FAY=
Received: by mx.zohomail.com with SMTPS id 1779565521993659.6502330784725;
 Sat, 23 May 2026 12:45:21 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Sat, 23 May 2026 21:43:40 +0200
Subject: [PATCH v16 05/28] drm/display: bridge_connector: Use HDMI color
 format for HDMI conns
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260523-color-format-v16-5-24340c5e4732@collabora.com>
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
	FREEMAIL_TO(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,fooishbar.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:mid,collabora.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,qualcomm.com:email,fooishbar.org:email]
X-Rspamd-Queue-Id: 03B945C0863
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

For bridge connectors which contain an HDMI bridge at some stage, the
HDMI state helpers' format selection logic should be involved.

Add an implementation for the drm_bridge_funcs color_format function,
which translates from the HDMI state's output format to a connector
format for bridge connectors involving an HDMI bridge, but return the
connector state's color_format member unchanged otherwise.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Daniel Stone <daniel@fooishbar.org>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/display/drm_bridge_connector.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index 649969fca141..19da5f668942 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -276,6 +276,29 @@ static void drm_bridge_connector_reset(struct drm_connector *connector)
 							 connector->state);
 }
 
+static enum drm_connector_color_format
+drm_bridge_connector_color_format(const struct drm_connector_state *conn_state)
+{
+	struct drm_bridge_connector *bridge_connector =
+		to_drm_bridge_connector(conn_state->connector);
+
+	if (bridge_connector->bridge_hdmi) {
+		switch (conn_state->hdmi.output_format) {
+		default:
+		case DRM_OUTPUT_COLOR_FORMAT_RGB444:
+			return DRM_CONNECTOR_COLOR_FORMAT_RGB444;
+		case DRM_OUTPUT_COLOR_FORMAT_YCBCR444:
+			return DRM_CONNECTOR_COLOR_FORMAT_YCBCR444;
+		case DRM_OUTPUT_COLOR_FORMAT_YCBCR422:
+			return DRM_CONNECTOR_COLOR_FORMAT_YCBCR422;
+		case DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
+			return DRM_CONNECTOR_COLOR_FORMAT_YCBCR420;
+		}
+	}
+
+	return conn_state->color_format;
+}
+
 static const struct drm_connector_funcs drm_bridge_connector_funcs = {
 	.reset = drm_bridge_connector_reset,
 	.detect = drm_bridge_connector_detect,
@@ -285,6 +308,7 @@ static const struct drm_connector_funcs drm_bridge_connector_funcs = {
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.debugfs_init = drm_bridge_connector_debugfs_init,
 	.oob_hotplug_event = drm_bridge_connector_oob_hotplug_event,
+	.color_format = drm_bridge_connector_color_format,
 };
 
 /* -----------------------------------------------------------------------------

-- 
2.54.0

