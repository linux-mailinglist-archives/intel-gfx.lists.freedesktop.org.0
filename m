Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RdTSAmULKGql8wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:47:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A83F1660306
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:47:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=fMOuBcED;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B40810E485;
	Tue,  9 Jun 2026 12:47:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAC2610E485;
 Tue,  9 Jun 2026 12:47:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1781009238; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=cXUGaMe+LvdrlEmDcrfN1a6MBYZFrjGBL+BfoVF0kt2i4qFk8aYzPNTNllQzBzXMBJCHDv2LBstpNRVFCeeIcB5WnDp9XkLUUJcWnj9NEH0ExhwCReXXd7SPCqeA8IcyjlOteqofdEIcoSfHGvTdne84M7q54bZR4VZLiX1eO2c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1781009238;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=oeUhFQ+ebk/1IVL9R/1uEuV7eheqku/UxEDKLf8FexI=; 
 b=JFNuSTVslHIB7i7Aquabms08P/PRzVxnIcICEP1f7lKXWHKt6eeVjSSXd90L3/PHeRJlTuVqRooWTnhOaKT+yPAKTpR9OJvfWGJnCrLeVwhB+7c147D3BiWGSDyRvHcjV+AldY0sszzJFxE9KxMEmt61f+mUJGQ9xjY/lwYFkwA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1781009238; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
 bh=oeUhFQ+ebk/1IVL9R/1uEuV7eheqku/UxEDKLf8FexI=;
 b=fMOuBcED/vW7vTIh30ryqtKENMpm+d1f3ZCT+MAWndNySfkeGQEPYC5ZJOMIBHMD
 r5sc7xaNt0K6AUEF65H49x/XJ7oPHrm3waMy1GqSvNqBFD/M5IKb01zoZ8STDAUaEGl
 npZ0rRFHLlhDenh6+NlZBiRv6xTAWjbu9NWjIRnM=
Received: by mx.zohomail.com with SMTPS id 178100923660629.973752625499287;
 Tue, 9 Jun 2026 05:47:16 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Tue, 09 Jun 2026 14:44:06 +0200
Subject: [PATCH v17 19/28] drm/tests: hdmi: Add tests for the color_format
 property
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260609-color-format-v17-19-35739b5782cc@collabora.com>
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
X-Rspamd-Queue-Id: A83F1660306

Add some KUnit tests to check the color_format property is working as
expected with the HDMI state helper.

Existing tests are extended to also test the
DRM_CONNECTOR_COLOR_FORMAT_AUTO case, in order to avoid duplicating test
cases. For the explicitly selected color format cases, parameterized
tests are added.

Reviewed-by: Maxime Ripard <mripard@kernel.org>
Reviewed-by: Daniel Stone <daniel@fooishbar.org>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 236 +++++++++++++++++++++
 1 file changed, 236 insertions(+)

diff --git a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
index e89e1af7a811..8eaca9b5b0fe 100644
--- a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
+++ b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
@@ -60,6 +60,23 @@ static struct drm_display_mode *find_preferred_mode(struct drm_connector *connec
 	return preferred;
 }
 
+static struct drm_display_mode *find_420_only_mode(struct drm_connector *connector)
+{
+	struct drm_device *drm = connector->dev;
+	struct drm_display_mode *mode;
+
+	mutex_lock(&drm->mode_config.mutex);
+	list_for_each_entry(mode, &connector->modes, head) {
+		if (drm_mode_is_420_only(&connector->display_info, mode)) {
+			mutex_unlock(&drm->mode_config.mutex);
+			return mode;
+		}
+	}
+	mutex_unlock(&drm->mode_config.mutex);
+
+	return NULL;
+}
+
 static int set_connector_edid(struct kunit *test, struct drm_connector *connector,
 			      const void *edid, size_t edid_len)
 {
@@ -1547,6 +1564,7 @@ static void drm_test_check_max_tmds_rate_bpc_fallback_yuv420(struct kunit *test)
  *   RGB/10bpc
  * - The chosen mode has a TMDS character rate lower than the display
  *   supports in YUV422/12bpc.
+ * - The HDMI connector state's color format property is unset (i.e. AUTO)
  *
  * Then we will prefer to keep the RGB format with a lower bpc over
  * picking YUV422.
@@ -1609,6 +1627,7 @@ static void drm_test_check_max_tmds_rate_bpc_fallback_ignore_yuv422(struct kunit
 
 	conn_state = conn->state;
 	KUNIT_ASSERT_NOT_NULL(test, conn_state);
+	KUNIT_ASSERT_EQ(test, conn_state->color_format, DRM_CONNECTOR_COLOR_FORMAT_AUTO);
 
 	KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_bpc, 10);
 	KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_format, DRM_OUTPUT_COLOR_FORMAT_RGB444);
@@ -1626,6 +1645,7 @@ static void drm_test_check_max_tmds_rate_bpc_fallback_ignore_yuv422(struct kunit
  *   RGB/8bpc
  * - The chosen mode has a TMDS character rate lower than the display
  *   supports in YUV420/12bpc.
+ * - The HDMI connector state's color format property is unset (i.e. AUTO)
  *
  * Then we will prefer to keep the RGB format with a lower bpc over
  * picking YUV420.
@@ -1687,6 +1707,7 @@ static void drm_test_check_max_tmds_rate_bpc_fallback_ignore_yuv420(struct kunit
 
 	conn_state = conn->state;
 	KUNIT_ASSERT_NOT_NULL(test, conn_state);
+	KUNIT_ASSERT_EQ(test, conn_state->color_format, DRM_CONNECTOR_COLOR_FORMAT_AUTO);
 
 	KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_bpc, 8);
 	KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_format, DRM_OUTPUT_COLOR_FORMAT_RGB444);
@@ -2198,6 +2219,217 @@ static void drm_test_check_disable_connector(struct kunit *test)
 	drm_modeset_acquire_fini(&ctx);
 }
 
+struct color_format_test_param {
+	enum drm_connector_color_format fmt;
+	enum drm_output_color_format expected;
+	int expected_ret;
+	const char *desc;
+};
+
+/* Test that if:
+ * - an HDMI connector supports RGB, YUV444, YUV422, and YUV420
+ * - the display supports RGB, YUV444, YUV422, and YUV420
+ * - the "color format" property is set
+ * then, for the preferred mode, for a given "color format" option:
+ * - DRM_CONNECTOR_COLOR_FORMAT_AUTO results in an output format of RGB
+ * - DRM_CONNECTOR_COLOR_FORMAT_YCBCR422 results in an output format of YUV422
+ * - DRM_CONNECTOR_COLOR_FORMAT_YCBCR420 results in an output format of YUV420
+ * - DRM_CONNECTOR_COLOR_FORMAT_YCBCR444 results in an output format of YUV444
+ * - DRM_CONNECTOR_COLOR_FORMAT_RGB results in an HDMI output format of RGB
+ */
+static void drm_test_check_hdmi_color_format(struct kunit *test)
+{
+	const struct color_format_test_param *param = test->param_value;
+	struct drm_atomic_helper_connector_hdmi_priv *priv;
+	struct drm_connector_state *conn_state;
+	struct drm_modeset_acquire_ctx ctx;
+	struct drm_crtc_state *crtc_state;
+	struct drm_atomic_commit *state;
+	struct drm_display_info *info;
+	struct drm_display_mode *preferred;
+	int ret;
+
+	priv = drm_kunit_helper_connector_hdmi_init_with_edid_funcs(test,
+				BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
+				BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
+				BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420) |
+				BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444),
+				12,
+				&dummy_connector_hdmi_funcs,
+				test_edid_hdmi_4k_rgb_yuv420_dc_max_340mhz);
+	KUNIT_ASSERT_NOT_NULL(test, priv);
+
+	drm_modeset_acquire_init(&ctx, 0);
+
+	KUNIT_ASSERT_TRUE(test, priv->connector.ycbcr_420_allowed);
+
+	info = &priv->connector.display_info;
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, info);
+	preferred = find_preferred_mode(&priv->connector);
+	KUNIT_ASSERT_TRUE(test, drm_mode_is_420(info, preferred));
+
+	state = drm_kunit_helper_atomic_state_alloc(test, &priv->drm, &ctx);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, state);
+
+	conn_state = drm_atomic_get_connector_state(state, &priv->connector);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
+
+	conn_state->color_format = param->fmt;
+
+	ret = drm_atomic_set_crtc_for_connector(conn_state, priv->crtc);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	crtc_state = drm_atomic_get_crtc_state(state, priv->crtc);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, crtc_state);
+
+	ret = drm_atomic_set_mode_for_crtc(crtc_state, preferred);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	crtc_state->enable = true;
+	crtc_state->active = true;
+
+	ret = drm_atomic_check_only(state);
+	KUNIT_EXPECT_EQ(test, ret, param->expected_ret);
+	KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_format, param->expected);
+
+	drm_modeset_drop_locks(&ctx);
+	drm_modeset_acquire_fini(&ctx);
+}
+
+static const struct color_format_test_param hdmi_color_format_params[] = {
+	{
+		.fmt = DRM_CONNECTOR_COLOR_FORMAT_AUTO,
+		.expected = DRM_OUTPUT_COLOR_FORMAT_RGB444,
+		.expected_ret = 0,
+		.desc = "AUTO -> RGB"
+	},
+	{
+		.fmt = DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
+		.expected = DRM_OUTPUT_COLOR_FORMAT_YCBCR422,
+		.expected_ret = 0,
+		.desc = "YCBCR422 -> YUV422"
+	},
+	{
+		.fmt = DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,
+		.expected = DRM_OUTPUT_COLOR_FORMAT_YCBCR420,
+		.expected_ret = 0,
+		.desc = "YCBCR420 -> YUV420"
+	},
+	{
+		.fmt = DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
+		.expected = DRM_OUTPUT_COLOR_FORMAT_YCBCR444,
+		.expected_ret = 0,
+		.desc = "YCBCR444 -> YUV444"
+	},
+	{
+		.fmt = DRM_CONNECTOR_COLOR_FORMAT_RGB444,
+		.expected = DRM_OUTPUT_COLOR_FORMAT_RGB444,
+		.expected_ret = 0,
+		.desc = "RGB -> RGB"
+	},
+};
+
+KUNIT_ARRAY_PARAM_DESC(check_hdmi_color_format, hdmi_color_format_params, desc);
+
+/* Test that if:
+ * - the HDMI connector supports RGB, YUV422, YUV420, and YUV444
+ * - the display has a YUV420-only mode
+ * - the "color format" property is explicitly set (i.e. !AUTO)
+ * then:
+ * - color format DRM_CONNECTOR_COLOR_FORMAT_RGB444 will fail
+ *   drm_atomic_check_only for the YUV420-only mode with -EINVAL
+ * - color format DRM_CONNECTOR_COLOR_FORMAT_YCBCR444 will fail
+ *   drm_atomic_check_only for the YUV420-only mode with -EINVAL
+ * - color format DRM_CONNECTOR_COLOR_FORMAT_YCBCR422 will fail
+ *   drm_atomic_check_only for the YUV420-only mode with -EINVAL
+ * - color format DRM_CONNECTOR_COLOR_FORMAT_YCBCR420 passes
+ *   drm_atomic_check_only for the YUV420-only mode
+ */
+static void drm_test_check_hdmi_color_format_420_only(struct kunit *test)
+{
+	const struct color_format_test_param *param = test->param_value;
+	struct drm_atomic_helper_connector_hdmi_priv *priv;
+	struct drm_connector_state *conn_state;
+	struct drm_modeset_acquire_ctx ctx;
+	struct drm_crtc_state *crtc_state;
+	struct drm_atomic_commit *state;
+	struct drm_display_mode *dank;
+	int ret;
+
+	priv = drm_kunit_helper_connector_hdmi_init_with_edid_funcs(test,
+				BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
+				BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
+				BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420) |
+				BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444),
+				12,
+				&dummy_connector_hdmi_funcs,
+				test_edid_hdmi_1080p_rgb_yuv_4k_yuv420_dc_max_200mhz);
+	KUNIT_ASSERT_NOT_NULL(test, priv);
+
+	drm_modeset_acquire_init(&ctx, 0);
+
+	dank = find_420_only_mode(&priv->connector);
+	KUNIT_ASSERT_NOT_NULL(test, dank);
+
+	state = drm_kunit_helper_atomic_state_alloc(test, &priv->drm, &ctx);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, state);
+
+	conn_state = drm_atomic_get_connector_state(state, &priv->connector);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
+
+	conn_state->color_format = param->fmt;
+
+	ret = drm_atomic_set_crtc_for_connector(conn_state, priv->crtc);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	crtc_state = drm_atomic_get_crtc_state(state, priv->crtc);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, crtc_state);
+
+	ret = drm_atomic_set_mode_for_crtc(crtc_state, dank);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	crtc_state->enable = true;
+	crtc_state->active = true;
+
+	ret = drm_atomic_check_only(state);
+	KUNIT_EXPECT_EQ(test, ret, param->expected_ret);
+	if (!param->expected_ret)
+		KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_format, param->expected);
+
+	drm_modeset_drop_locks(&ctx);
+	drm_modeset_acquire_fini(&ctx);
+};
+
+static const struct color_format_test_param hdmi_color_format_420_only_params[] = {
+	{
+		.fmt = DRM_CONNECTOR_COLOR_FORMAT_RGB444,
+		.expected = DRM_OUTPUT_COLOR_FORMAT_RGB444,
+		.expected_ret = -EINVAL,
+		.desc = "RGB should fail"
+	},
+	{
+		.fmt = DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
+		.expected = DRM_OUTPUT_COLOR_FORMAT_YCBCR444,
+		.expected_ret = -EINVAL,
+		.desc = "YUV444 should fail"
+	},
+	{
+		.fmt = DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
+		.expected = DRM_OUTPUT_COLOR_FORMAT_YCBCR422,
+		.expected_ret = -EINVAL,
+		.desc = "YUV422 should fail"
+	},
+	{
+		.fmt = DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,
+		.expected = DRM_OUTPUT_COLOR_FORMAT_YCBCR420,
+		.expected_ret = 0,
+		.desc = "YUV420 should work"
+	},
+};
+
+KUNIT_ARRAY_PARAM_DESC(check_hdmi_color_format_420_only,
+		       hdmi_color_format_420_only_params, desc);
+
 static struct kunit_case drm_atomic_helper_connector_hdmi_check_tests[] = {
 	KUNIT_CASE(drm_test_check_broadcast_rgb_auto_cea_mode),
 	KUNIT_CASE(drm_test_check_broadcast_rgb_auto_cea_mode_vic_1),
@@ -2227,6 +2459,10 @@ static struct kunit_case drm_atomic_helper_connector_hdmi_check_tests[] = {
 	KUNIT_CASE(drm_test_check_tmds_char_rate_rgb_8bpc),
 	KUNIT_CASE(drm_test_check_tmds_char_rate_rgb_10bpc),
 	KUNIT_CASE(drm_test_check_tmds_char_rate_rgb_12bpc),
+	KUNIT_CASE_PARAM(drm_test_check_hdmi_color_format,
+			 check_hdmi_color_format_gen_params),
+	KUNIT_CASE_PARAM(drm_test_check_hdmi_color_format_420_only,
+			 check_hdmi_color_format_420_only_gen_params),
 	/*
 	 * TODO: We should have tests to check that a change in the
 	 * format triggers a CRTC mode change just like we do for the

-- 
2.54.0

