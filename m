Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sviCKoELKGq18wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:48:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D62766032A
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:48:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b="UUV/KoHn";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9465B10E4EB;
	Tue,  9 Jun 2026 12:47:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5764510E4EB;
 Tue,  9 Jun 2026 12:47:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1781009266; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=G+BZMToBwTinBajy0cTV0E8gl8zqy8OFwOJ9J3fboEj0VTxUfrtwOSQgmYyDLfsqolBZSpdRMDLHxiZbVtFMi2t1dl9b5QBY8MV1nPDtWxDvYJBtEjsArj1MwkXDCoB5OvCiLVK+2VhwoOkSi+ck1l1JMZEWWExFXSrjuoDLk5Y=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1781009266;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=t/W67fG4fYzN90BLM7vyOYKhLTKJIXI3lpgrib8Uv48=; 
 b=eOY3oX5d1qcvIDI5QIMTPmfK3Aa5xeRwhPpKZo8Bn3DD5Xrqaxd0kXKumdYJWfQNjiO1WcK3qYou4y+BW4nv/yCyAE2ge0e3QtjySlaAU8RyYHf+rgGvm40gavL7qVzjO+ogSGbP5CuDyr8EUZ9fID5M8D+p24N7aGs3NMzpkrg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1781009266; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
 bh=t/W67fG4fYzN90BLM7vyOYKhLTKJIXI3lpgrib8Uv48=;
 b=UUV/KoHnCzEL6jyvRaeHg/UNlQ41iYCabQ0+aJztdMIdHPDL2mXU9QHhh6+bL8Y5
 Wi8w3UCoe05eVEkvPo24BkgOk6uOMsTy/+qiLgwq7zxMFjDvv6oBgGcDoeIZ7JI+Rce
 PNWawn1gOUiq6GXLyOKeoLTG9T5AZIWvdbxws1JE=
Received: by mx.zohomail.com with SMTPS id 1781009264154112.86198655567887;
 Tue, 9 Jun 2026 05:47:44 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Tue, 09 Jun 2026 14:44:09 +0200
Subject: [PATCH v17 22/28] drm/tests: bridge: Add test for HDMI output bus
 formats helper
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260609-color-format-v17-22-35739b5782cc@collabora.com>
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
	RCPT_COUNT_TWELVE(0.00)[40];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fooishbar.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D62766032A

The common atomic_get_output_bus_fmts helper for HDMI bridge connectors,
called drm_atomic_helper_bridge_get_hdmi_output_bus_fmts, should return
an array of output bus formats depending on the supported formats of the
connector, and the current output BPC.

Add a test to exercise some of this helper.

Reviewed-by: Maxime Ripard <mripard@kernel.org>
Reviewed-by: Daniel Stone <daniel@fooishbar.org>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/tests/drm_bridge_test.c | 184 ++++++++++++++++++++++++++++++++
 1 file changed, 184 insertions(+)

diff --git a/drivers/gpu/drm/tests/drm_bridge_test.c b/drivers/gpu/drm/tests/drm_bridge_test.c
index 92f142ca6695..9d4fbe709df4 100644
--- a/drivers/gpu/drm/tests/drm_bridge_test.c
+++ b/drivers/gpu/drm/tests/drm_bridge_test.c
@@ -5,6 +5,7 @@
 #include <linux/cleanup.h>
 #include <linux/media-bus-format.h>
 
+#include <drm/drm_atomic_helper.h>
 #include <drm/drm_atomic_state_helper.h>
 #include <drm/drm_atomic_uapi.h>
 #include <drm/drm_bridge.h>
@@ -118,6 +119,28 @@ static const struct drm_bridge_funcs drm_test_bridge_atomic_funcs = {
 	.atomic_reset		= drm_atomic_helper_bridge_reset,
 };
 
+static int dummy_clear_infoframe(struct drm_bridge *bridge)
+{
+	return 0;
+}
+
+static int dummy_write_infoframe(struct drm_bridge *bridge, const u8 *buffer,
+				 size_t len)
+{
+	return 0;
+}
+
+static const struct drm_bridge_funcs drm_test_bridge_bus_fmts_funcs = {
+	.atomic_get_output_bus_fmts	= drm_atomic_helper_bridge_get_hdmi_output_bus_fmts,
+	.atomic_destroy_state		= drm_atomic_helper_bridge_destroy_state,
+	.atomic_duplicate_state		= drm_atomic_helper_bridge_duplicate_state,
+	.atomic_reset			= drm_atomic_helper_bridge_reset,
+	.hdmi_write_avi_infoframe	= dummy_write_infoframe,
+	.hdmi_write_hdmi_infoframe	= dummy_write_infoframe,
+	.hdmi_clear_avi_infoframe	= dummy_clear_infoframe,
+	.hdmi_clear_hdmi_infoframe	= dummy_clear_infoframe,
+};
+
 /**
  * struct fmt_tuple - a tuple of input/output MEDIA_BUS_FMT_*
  */
@@ -537,6 +560,83 @@ drm_test_bridge_chain_init(struct kunit *test, unsigned int num_bridges,
 	return priv;
 }
 
+static struct drm_bridge_init_priv *
+drm_test_bridge_hdmi_init(struct kunit *test, const struct drm_bridge_funcs *funcs,
+			  unsigned int supported_formats, int max_bpc)
+{
+	struct drm_bridge_init_priv *priv;
+	struct drm_encoder *enc;
+	struct drm_bridge *bridge;
+	struct drm_device *drm;
+	struct device *dev;
+	int ret;
+
+	dev = drm_kunit_helper_alloc_device(test);
+	if (IS_ERR(dev))
+		return ERR_CAST(dev);
+
+	priv = drm_kunit_helper_alloc_drm_device(test, dev,
+						 struct drm_bridge_init_priv, drm,
+						 DRIVER_MODESET | DRIVER_ATOMIC);
+	if (IS_ERR(priv))
+		return ERR_CAST(priv);
+
+	priv->test_bridge = devm_drm_bridge_alloc(dev, struct drm_bridge_priv, bridge, funcs);
+	if (IS_ERR(priv->test_bridge))
+		return ERR_CAST(priv->test_bridge);
+
+	priv->test_bridge->data = priv;
+
+	drm = &priv->drm;
+	priv->plane = drm_kunit_helper_create_primary_plane(test, drm,
+							    NULL,
+							    NULL,
+							    NULL, 0,
+							    NULL);
+	if (IS_ERR(priv->plane))
+		return ERR_CAST(priv->plane);
+
+	priv->crtc = drm_kunit_helper_create_crtc(test, drm,
+						  priv->plane, NULL,
+						  NULL,
+						  NULL);
+	if (IS_ERR(priv->crtc))
+		return ERR_CAST(priv->crtc);
+
+	enc = &priv->encoder;
+	ret = drmm_encoder_init(drm, enc, NULL, DRM_MODE_ENCODER_TMDS, NULL);
+	if (ret)
+		return ERR_PTR(ret);
+
+	enc->possible_crtcs = drm_crtc_mask(priv->crtc);
+
+	bridge = &priv->test_bridge->bridge;
+	bridge->type = DRM_MODE_CONNECTOR_HDMIA;
+	bridge->supported_formats = supported_formats;
+	bridge->max_bpc = max_bpc;
+	bridge->ops |= DRM_BRIDGE_OP_HDMI;
+	bridge->vendor = "LNX";
+	bridge->product = "KUnit";
+
+	ret = drm_kunit_bridge_add(test, bridge);
+	if (ret)
+		return ERR_PTR(ret);
+
+	ret = drm_bridge_attach(enc, bridge, NULL, 0);
+	if (ret)
+		return ERR_PTR(ret);
+
+	priv->connector = drm_bridge_connector_init(drm, enc);
+	if (IS_ERR(priv->connector))
+		return ERR_CAST(priv->connector);
+
+	drm_connector_attach_encoder(priv->connector, enc);
+
+	drm_mode_config_reset(drm);
+
+	return priv;
+}
+
 /*
  * Test that drm_bridge_get_current_state() returns the last committed
  * state for an atomic bridge.
@@ -784,10 +884,94 @@ static void drm_test_drm_bridge_helper_reset_crtc_legacy(struct kunit *test)
 	KUNIT_EXPECT_EQ(test, bridge_priv->disable_count, 1);
 }
 
+/*
+ * Test that a bridge using the drm_atomic_helper_bridge_get_hdmi_output_bus_fmts()
+ * function for &drm_bridge_funcs.atomic_get_output_bus_fmts behaves as expected
+ * for an HDMI connector bridge. Does so by creating an HDMI bridge connector
+ * with RGB444, YCBCR444, and YCBCR420 (but not YCBCR422) as supported formats,
+ * sets the output depth to 8 bits per component, and then validates the returned
+ * list of bus formats.
+ */
+static void drm_test_drm_bridge_helper_hdmi_output_bus_fmts(struct kunit *test)
+{
+	struct drm_connector_state *conn_state;
+	struct drm_bridge_state *bridge_state;
+	struct drm_modeset_acquire_ctx ctx;
+	struct drm_bridge_init_priv *priv;
+	struct drm_crtc_state *crtc_state;
+	struct drm_atomic_commit *state;
+	struct drm_display_mode *mode;
+	unsigned int num_output_fmts;
+	struct drm_bridge *bridge;
+	u32 *out_bus_fmts;
+	int ret;
+
+	priv = drm_test_bridge_hdmi_init(test, &drm_test_bridge_bus_fmts_funcs,
+					 BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
+					 BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
+					 BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420),
+					 12);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv);
+
+	bridge = &priv->test_bridge->bridge;
+
+	drm_modeset_acquire_init(&ctx, 0);
+
+	state = drm_kunit_helper_atomic_state_alloc(test, &priv->drm, &ctx);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, state);
+
+retry_commit:
+	conn_state = drm_atomic_get_connector_state(state, priv->connector);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
+
+	conn_state->hdmi.output_bpc = 8;
+
+	mode = drm_kunit_display_mode_from_cea_vic(test, &priv->drm, 16);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, mode);
+
+	ret = drm_atomic_set_crtc_for_connector(conn_state, priv->crtc);
+	if (ret == -EDEADLK) {
+		drm_modeset_backoff(&ctx);
+		goto retry_commit;
+	}
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	crtc_state = drm_atomic_get_crtc_state(state, priv->crtc);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, crtc_state);
+
+	ret = drm_atomic_set_mode_for_crtc(crtc_state, mode);
+	if (ret == -EDEADLK) {
+		drm_modeset_backoff(&ctx);
+		goto retry_commit;
+	}
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	crtc_state->enable = true;
+	crtc_state->active = true;
+
+	bridge_state = drm_atomic_get_bridge_state(state, bridge);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, bridge_state);
+
+	out_bus_fmts = bridge->funcs->atomic_get_output_bus_fmts(
+		bridge, bridge_state, crtc_state, conn_state, &num_output_fmts);
+	KUNIT_EXPECT_NOT_NULL(test, out_bus_fmts);
+	KUNIT_EXPECT_EQ(test, num_output_fmts, 3);
+
+	KUNIT_EXPECT_EQ(test, out_bus_fmts[0], MEDIA_BUS_FMT_RGB888_1X24);
+	KUNIT_EXPECT_EQ(test, out_bus_fmts[1], MEDIA_BUS_FMT_YUV8_1X24);
+	KUNIT_EXPECT_EQ(test, out_bus_fmts[2], MEDIA_BUS_FMT_UYYVYY8_0_5X24);
+
+	drm_modeset_drop_locks(&ctx);
+	drm_modeset_acquire_fini(&ctx);
+
+	kfree(out_bus_fmts);
+}
+
 static struct kunit_case drm_bridge_helper_reset_crtc_tests[] = {
 	KUNIT_CASE(drm_test_drm_bridge_helper_reset_crtc_atomic),
 	KUNIT_CASE(drm_test_drm_bridge_helper_reset_crtc_atomic_disabled),
 	KUNIT_CASE(drm_test_drm_bridge_helper_reset_crtc_legacy),
+	KUNIT_CASE(drm_test_drm_bridge_helper_hdmi_output_bus_fmts),
 	{ }
 };
 

-- 
2.54.0

