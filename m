Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A77A9EDACA
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 00:03:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E82CF10EC5D;
	Wed, 11 Dec 2024 23:03:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HRb+L2A9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA69810EC5D;
 Wed, 11 Dec 2024 23:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733958186; x=1765494186;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X32OBeey+SA/a0oyjH31od+vkcQaihdZgJxmS+91FtU=;
 b=HRb+L2A9GwNsWBnoyH9GEhSEnPSRBSXkRAcYo0RhA8rXYVk7gPxG3Swl
 2gYBR6vqXeIQ/pLdrchhXvFBL1VB/C40p1w1tqR3nepv5F4kGz63GSpCo
 KC2hLCke0JrZ5ly9V6K7bsZVsj65sNpN+3fckJ7uCWnWlv9RX+9vqpTwK
 S5eR7s6fjYB6BsClPsGiwx9v0hcqtjVNp9yAFNxRGE+RoMqwyqQ8Fv0zZ
 8xWHs1OoWmKc30fQpZjDsS6nom7eiwXviDtRk6FkM84b92TDSPMzSOHSY
 gCWfLS1iBAh0so8P2dEGSSyjzU+Ni4/LGbGh2W3MLQTDHm20zeVJ7y2K3 Q==;
X-CSE-ConnectionGUID: dncT+SORSb6M5SBYh8mpog==
X-CSE-MsgGUID: Yh1rC+XiQd6YUIZyu/ykPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="34401510"
X-IronPort-AV: E=Sophos;i="6.12,226,1728975600"; d="scan'208";a="34401510"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 15:03:06 -0800
X-CSE-ConnectionGUID: ghoygG1jQPKdXyJ+vhJ5xg==
X-CSE-MsgGUID: DIvNxjVCREyxxFMCAxWv1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="126962606"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 15:03:03 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v3 09/11] drm/tests: Add tests for
 drm_connector_dynamic_init()/register()
Date: Thu, 12 Dec 2024 01:03:26 +0200
Message-ID: <20241211230328.4012496-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241211230328.4012496-1-imre.deak@intel.com>
References: <20241211230328.4012496-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Add kunit tests for
drm_connector_dynamic_init()/drm_connector_dynamic_register() added in
this patchset.

Suggested-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/tests/drm_connector_test.c | 463 +++++++++++++++++++++
 1 file changed, 463 insertions(+)

diff --git a/drivers/gpu/drm/tests/drm_connector_test.c b/drivers/gpu/drm/tests/drm_connector_test.c
index 6bba97d0be88e..129e813cfd1b0 100644
--- a/drivers/gpu/drm/tests/drm_connector_test.c
+++ b/drivers/gpu/drm/tests/drm_connector_test.c
@@ -9,6 +9,7 @@
 #include <drm/drm_connector.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_file.h>
 #include <drm/drm_kunit_helpers.h>
 #include <drm/drm_modes.h>
 
@@ -181,6 +182,465 @@ static struct kunit_suite drmm_connector_init_test_suite = {
 	.test_cases = drmm_connector_init_tests,
 };
 
+static const struct drm_connector_funcs dummy_dynamic_init_funcs = {
+	.atomic_destroy_state	= drm_atomic_helper_connector_destroy_state,
+	.atomic_duplicate_state	= drm_atomic_helper_connector_duplicate_state,
+	.reset			= drm_atomic_helper_connector_reset,
+	.destroy		= drm_connector_cleanup,
+};
+
+/*
+ * Test that the initialization of a bog standard dynamic connector works
+ * as expected and doesn't report any error.
+ */
+static void drm_test_drm_connector_dynamic_init(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+	int ret;
+
+	ret = drm_connector_dynamic_init(&priv->drm, connector,
+					 &dummy_dynamic_init_funcs,
+					 DRM_MODE_CONNECTOR_DisplayPort,
+					 &priv->ddc);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+}
+
+static void drm_test_connector_dynamic_init_cleanup(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+
+	drm_connector_cleanup(connector);
+}
+
+/*
+ * Test that the initialization of a dynamic connector without a DDC adapter
+ * doesn't report any error.
+ */
+static void drm_test_drm_connector_dynamic_init_null_ddc(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+	int ret;
+
+	ret = drm_connector_dynamic_init(&priv->drm, connector,
+					 &dummy_dynamic_init_funcs,
+					 DRM_MODE_CONNECTOR_DisplayPort,
+					 NULL);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+}
+
+/*
+ * Test that the initialization of a dynamic connector doesn't add the
+ * connector to the connector list.
+ */
+static void drm_test_drm_connector_dynamic_init_not_added(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+	int ret;
+
+	ret = drm_connector_dynamic_init(&priv->drm, connector,
+					 &dummy_dynamic_init_funcs,
+					 DRM_MODE_CONNECTOR_DisplayPort,
+					 &priv->ddc);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+	KUNIT_ASSERT_PTR_EQ(test, connector->head.next, &connector->head);
+}
+
+static void test_connector_property(struct kunit *test,
+				    struct drm_connector *connector,
+				    const struct drm_property *expected_prop)
+{
+	struct drm_property *prop;
+	uint64_t val;
+	int ret;
+
+	KUNIT_ASSERT_NOT_NULL(test, expected_prop);
+	prop = drm_mode_obj_find_prop_id(&connector->base, expected_prop->base.id);
+	KUNIT_ASSERT_PTR_EQ_MSG(test, prop, expected_prop,
+				"Can't find property %s", expected_prop->name);
+
+	ret = drm_object_property_get_default_value(&connector->base, prop, &val);
+	KUNIT_EXPECT_EQ(test, ret, 0);
+	KUNIT_EXPECT_EQ(test, val, 0);
+
+	/* TODO: Check property value in the connector state. */
+}
+
+/*
+ * Test that the initialization of a dynamic connector adds all the expected
+ * properties to it.
+ */
+static void drm_test_drm_connector_dynamic_init_properties(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+	struct drm_mode_config *config = &priv->drm.mode_config;
+	const struct drm_property *props[] = {
+		config->edid_property,
+		config->dpms_property,
+		config->link_status_property,
+		config->non_desktop_property,
+		config->tile_property,
+		config->prop_crtc_id,
+	};
+	int ret;
+	int i;
+
+	ret = drm_connector_dynamic_init(&priv->drm, connector,
+					 &dummy_dynamic_init_funcs,
+					 DRM_MODE_CONNECTOR_DisplayPort,
+					 &priv->ddc);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	for (i = 0; i < ARRAY_SIZE(props); i++)
+		test_connector_property(test, connector, props[i]);
+}
+
+/*
+ * Test that the initialization of a dynamic connector succeeds for all
+ * possible connector types.
+ */
+static void drm_test_drm_connector_dynamic_init_type_valid(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+	unsigned int connector_type = *(unsigned int *)test->param_value;
+	int ret;
+
+	ret = drm_connector_dynamic_init(&priv->drm, connector,
+					 &dummy_dynamic_init_funcs,
+					 connector_type,
+					 &priv->ddc);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+}
+
+/*
+ * Test that the initialization of a dynamic connector sets the expected name
+ * for it for all possible connector types.
+ */
+static void drm_test_drm_connector_dynamic_init_name(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+	unsigned int connector_type = *(unsigned int *)test->param_value;
+	char expected_name[128];
+	int ret;
+
+	ret = drm_connector_dynamic_init(&priv->drm, connector,
+					 &dummy_dynamic_init_funcs,
+					 connector_type,
+					 &priv->ddc);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	snprintf(expected_name, sizeof(expected_name), "%s-%d",
+		 drm_get_connector_type_name(connector_type), connector->connector_type_id);
+	KUNIT_ASSERT_STREQ(test, connector->name, expected_name);
+}
+
+static struct kunit_case drm_connector_dynamic_init_tests[] = {
+	KUNIT_CASE(drm_test_drm_connector_dynamic_init),
+	KUNIT_CASE(drm_test_drm_connector_dynamic_init_null_ddc),
+	KUNIT_CASE(drm_test_drm_connector_dynamic_init_not_added),
+	KUNIT_CASE(drm_test_drm_connector_dynamic_init_properties),
+	KUNIT_CASE_PARAM(drm_test_drm_connector_dynamic_init_type_valid,
+			 drm_connector_init_type_valid_gen_params),
+	KUNIT_CASE_PARAM(drm_test_drm_connector_dynamic_init_name,
+			 drm_connector_init_type_valid_gen_params),
+	{}
+};
+
+static struct kunit_suite drm_connector_dynamic_init_test_suite = {
+	.name = "drm_connector_dynamic_init",
+	.init = drm_test_connector_init,
+	.exit = drm_test_connector_dynamic_init_cleanup,
+	.test_cases = drm_connector_dynamic_init_tests,
+};
+
+static int drm_test_connector_dynamic_register_early_init(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv;
+	int ret;
+
+	ret = drm_test_connector_init(test);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	priv = test->priv;
+
+	ret = drm_connector_dynamic_init(&priv->drm, &priv->connector,
+					 &dummy_dynamic_init_funcs,
+					 DRM_MODE_CONNECTOR_DisplayPort,
+					 &priv->ddc);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	return 0;
+}
+
+static void drm_test_connector_dynamic_register_early_cleanup(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+
+	drm_connector_unregister(connector);
+	drm_connector_put(connector);
+}
+
+/*
+ * Test that registration of a dynamic connector adds it to the connector list.
+ */
+static void drm_test_drm_connector_dynamic_register_early_on_list(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+	int ret;
+
+	KUNIT_ASSERT_TRUE(test, list_empty(&connector->head));
+
+	ret = drm_connector_dynamic_register(connector);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	KUNIT_ASSERT_PTR_EQ(test, connector->head.next, &priv->drm.mode_config.connector_list);
+}
+
+/*
+ * Test that the registration of a dynamic connector before the drm device is
+ * registered results in deferring the connector's user interface registration.
+ */
+static void drm_test_drm_connector_dynamic_register_early_defer(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+	int ret;
+
+	ret = drm_connector_dynamic_register(connector);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	KUNIT_ASSERT_EQ(test, connector->registration_state, DRM_CONNECTOR_INITIALIZING);
+}
+
+/*
+ * Test that the registration of a dynamic connector fails, if this is done before
+ * the connector is initialized.
+ */
+static void drm_test_drm_connector_dynamic_register_early_no_init(struct kunit *test)
+{
+	struct drm_connector *connector;
+	int ret;
+
+	connector = kunit_kzalloc(test, sizeof(*connector), GFP_KERNEL); /* auto freed */
+	KUNIT_ASSERT_NOT_NULL(test, connector);
+
+	ret = drm_connector_dynamic_register(connector);
+	KUNIT_ASSERT_EQ(test, ret, -EINVAL);
+}
+
+/*
+ * Test that the registration of a dynamic connector before the drm device is
+ * registered results in deferring adding a mode object for the connector.
+ */
+static void drm_test_drm_connector_dynamic_register_early_no_mode_object(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+	struct drm_connector *tmp_connector;
+	int ret;
+
+	ret = drm_connector_dynamic_register(&priv->connector);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	tmp_connector = drm_connector_lookup(connector->dev, NULL, connector->base.id);
+	KUNIT_ASSERT_NULL(test, tmp_connector);
+}
+
+static struct kunit_case drm_connector_dynamic_register_early_tests[] = {
+	KUNIT_CASE(drm_test_drm_connector_dynamic_register_early_on_list),
+	KUNIT_CASE(drm_test_drm_connector_dynamic_register_early_defer),
+	KUNIT_CASE(drm_test_drm_connector_dynamic_register_early_no_init),
+	KUNIT_CASE(drm_test_drm_connector_dynamic_register_early_no_mode_object),
+	{ }
+};
+
+static struct kunit_suite drm_connector_dynamic_register_early_test_suite = {
+	.name = "drm_connector_dynamic_register_early",
+	.init = drm_test_connector_dynamic_register_early_init,
+	.exit = drm_test_connector_dynamic_register_early_cleanup,
+	.test_cases = drm_connector_dynamic_register_early_tests,
+};
+
+static int drm_test_connector_dynamic_register_init(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv;
+	int ret;
+
+	ret = drm_test_connector_dynamic_register_early_init(test);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	priv = test->priv;
+
+	ret = drm_dev_register(priv->connector.dev, 0);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	return 0;
+}
+
+static void drm_test_connector_dynamic_register_cleanup(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_device *dev = priv->connector.dev;
+
+	drm_connector_unregister(&priv->connector);
+	drm_connector_put(&priv->connector);
+
+	drm_dev_unregister(dev);
+
+	drm_test_connector_dynamic_register_early_cleanup(test);
+}
+
+static void drm_test_drm_connector_dynamic_register_on_list(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	int ret;
+
+	KUNIT_ASSERT_TRUE(test, list_empty(&priv->connector.head));
+
+	ret = drm_connector_dynamic_register(&priv->connector);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	KUNIT_ASSERT_PTR_EQ(test, priv->connector.head.next, &priv->drm.mode_config.connector_list);
+}
+
+/*
+ * Test that the registration of a dynamic connector doesn't get deferred if
+ * this is done after the drm device is registered.
+ */
+static void drm_test_drm_connector_dynamic_register_no_defer(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	int ret;
+
+	KUNIT_ASSERT_EQ(test, priv->connector.registration_state, DRM_CONNECTOR_INITIALIZING);
+
+	ret = drm_connector_dynamic_register(&priv->connector);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	KUNIT_ASSERT_EQ(test, priv->connector.registration_state, DRM_CONNECTOR_REGISTERED);
+}
+
+/*
+ * Test that the registration of a dynamic connector fails if this is done after the
+ * drm device is registered, but before the connector is initialized.
+ */
+static void drm_test_drm_connector_dynamic_register_no_init(struct kunit *test)
+{
+	struct drm_connector *connector;
+	int ret;
+
+	connector = kunit_kzalloc(test, sizeof(*connector), GFP_KERNEL); /* auto freed */
+	KUNIT_ASSERT_NOT_NULL(test, connector);
+
+	ret = drm_connector_dynamic_register(connector);
+	KUNIT_ASSERT_EQ(test, ret, -EINVAL);
+}
+
+/*
+ * Test that the registration of a dynamic connector after the drm device is
+ * registered adds the mode object for the connector.
+ */
+static void drm_test_drm_connector_dynamic_register_mode_object(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+	struct drm_connector *tmp_connector;
+	int ret;
+
+	tmp_connector = drm_connector_lookup(connector->dev, NULL, connector->base.id);
+	KUNIT_ASSERT_NULL(test, tmp_connector);
+
+	ret = drm_connector_dynamic_register(&priv->connector);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	tmp_connector = drm_connector_lookup(connector->dev, NULL, connector->base.id);
+	KUNIT_ASSERT_PTR_EQ(test, tmp_connector, connector);
+}
+
+/*
+ * Test that the registration of a dynamic connector after the drm device is
+ * registered adds the connector to sysfs.
+ */
+static void drm_test_drm_connector_dynamic_register_sysfs(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+	int ret;
+
+	KUNIT_ASSERT_NULL(test, connector->kdev);
+
+	ret = drm_connector_dynamic_register(connector);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	KUNIT_ASSERT_NOT_NULL(test, connector->kdev);
+}
+
+/*
+ * Test that the registration of a dynamic connector after the drm device is
+ * registered sets the connector's sysfs name as expected.
+ */
+static void drm_test_drm_connector_dynamic_register_sysfs_name(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+	char expected_name[128];
+	int ret;
+
+	ret = drm_connector_dynamic_register(connector);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	snprintf(expected_name, sizeof(expected_name), "card%d-%s",
+		 connector->dev->primary->index, connector->name);
+
+	KUNIT_ASSERT_STREQ(test, dev_name(connector->kdev), expected_name);
+}
+
+/*
+ * Test that the registration of a dynamic connector after the drm device is
+ * registered adds the connector to debugfs.
+ */
+static void drm_test_drm_connector_dynamic_register_debugfs(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	int ret;
+
+	KUNIT_ASSERT_NULL(test, priv->connector.debugfs_entry);
+
+	ret = drm_connector_dynamic_register(&priv->connector);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	if (IS_ENABLED(CONFIG_DEBUG_FS))
+		KUNIT_ASSERT_NOT_NULL(test, priv->connector.debugfs_entry);
+	else
+		KUNIT_ASSERT_NULL(test, priv->connector.debugfs_entry);
+}
+
+static struct kunit_case drm_connector_dynamic_register_tests[] = {
+	KUNIT_CASE(drm_test_drm_connector_dynamic_register_on_list),
+	KUNIT_CASE(drm_test_drm_connector_dynamic_register_no_defer),
+	KUNIT_CASE(drm_test_drm_connector_dynamic_register_no_init),
+	KUNIT_CASE(drm_test_drm_connector_dynamic_register_mode_object),
+	KUNIT_CASE(drm_test_drm_connector_dynamic_register_sysfs),
+	KUNIT_CASE(drm_test_drm_connector_dynamic_register_sysfs_name),
+	KUNIT_CASE(drm_test_drm_connector_dynamic_register_debugfs),
+	{ }
+};
+
+static struct kunit_suite drm_connector_dynamic_register_test_suite = {
+	.name = "drm_connector_dynamic_register",
+	.init = drm_test_connector_dynamic_register_init,
+	.exit = drm_test_connector_dynamic_register_cleanup,
+	.test_cases = drm_connector_dynamic_register_tests,
+};
+
 /*
  * Test that the registration of a bog standard connector works as
  * expected and doesn't report any error.
@@ -1283,6 +1743,9 @@ static struct kunit_suite drm_hdmi_compute_mode_clock_test_suite = {
 kunit_test_suites(
 	&drmm_connector_hdmi_init_test_suite,
 	&drmm_connector_init_test_suite,
+	&drm_connector_dynamic_init_test_suite,
+	&drm_connector_dynamic_register_early_test_suite,
+	&drm_connector_dynamic_register_test_suite,
 	&drm_connector_attach_broadcast_rgb_property_test_suite,
 	&drm_get_tv_mode_from_name_test_suite,
 	&drm_hdmi_compute_mode_clock_test_suite,
-- 
2.44.2

