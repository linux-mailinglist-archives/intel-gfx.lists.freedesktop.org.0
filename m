Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4531D8BA3
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 01:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D95D489EB8;
	Mon, 18 May 2020 23:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86A7189EB8;
 Mon, 18 May 2020 23:32:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21236157-1500050 
 for multiple; Tue, 19 May 2020 00:32:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Tue, 19 May 2020 00:32:39 +0100
Message-Id: <20200518233240.1540362-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] Always pass device to igt_params_set
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Don't second guess, require the user to provide the device that wish to
set the module parameter for.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/igt_params.c                  |  8 ++++----
 lib/igt_params.h                  |  4 ++--
 lib/igt_psr.c                     | 18 ++++++++---------
 lib/igt_psr.h                     |  6 +++---
 tests/i915/i915_pm_dc.c           | 12 ++++++------
 tests/kms_busy.c                  |  8 ++++----
 tests/kms_fbcon_fbt.c             | 32 +++++++++++++++----------------
 tests/kms_force_connector_basic.c |  6 +++---
 tests/kms_frontbuffer_tracking.c  | 10 +++++-----
 tests/kms_panel_fitting.c         |  2 +-
 tests/kms_psr.c                   |  6 +++---
 tests/kms_psr2_su.c               |  6 ++++--
 12 files changed, 60 insertions(+), 58 deletions(-)

diff --git a/lib/igt_params.c b/lib/igt_params.c
index d8649dfd9..3decc5b2a 100644
--- a/lib/igt_params.c
+++ b/lib/igt_params.c
@@ -343,9 +343,9 @@ bool igt_params_save_and_set(int device, const char *parameter, const char *fmt,
  * Please consider using igt_set_module_param_int() for the integer and bool
  * parameters.
  */
-void igt_set_module_param(const char *name, const char *val)
+void igt_set_module_param(int device, const char *name, const char *val)
 {
-	igt_assert(igt_params_save_and_set(-1, name, "%s", val));
+	igt_assert(igt_params_save_and_set(device, name, "%s", val));
 }
 
 /**
@@ -356,7 +356,7 @@ void igt_set_module_param(const char *name, const char *val)
  * This is a wrapper for igt_set_module_param() that takes an integer instead of
  * a string. Please see igt_set_module_param().
  */
-void igt_set_module_param_int(const char *name, int val)
+void igt_set_module_param_int(int device, const char *name, int val)
 {
-	igt_assert(igt_params_save_and_set(-1, name, "%d", val));
+	igt_assert(igt_params_save_and_set(device, name, "%d", val));
 }
diff --git a/lib/igt_params.h b/lib/igt_params.h
index ed17f34a5..bbd6f3ee6 100644
--- a/lib/igt_params.h
+++ b/lib/igt_params.h
@@ -34,7 +34,7 @@ bool igt_params_set(int device, const char *parameter, const char *fmt, ...);
 __attribute__((format(printf, 3, 4)))
 bool igt_params_save_and_set(int device, const char *parameter, const char *fmt, ...);
 
-void igt_set_module_param(const char *name, const char *val);
-void igt_set_module_param_int(const char *name, int val);
+void igt_set_module_param(int device, const char *name, const char *val);
+void igt_set_module_param_int(int device, const char *name, int val);
 
 #endif /* __IGT_PARAMS_H__ */
diff --git a/lib/igt_psr.c b/lib/igt_psr.c
index c2a8d0e11..4109b5295 100644
--- a/lib/igt_psr.c
+++ b/lib/igt_psr.c
@@ -94,11 +94,11 @@ static int has_psr_debugfs(int debugfs_fd)
 	return -EINVAL;
 }
 
-static bool psr_modparam_set(int val)
+static bool psr_modparam_set(int device, int val)
 {
 	static int oldval = -1;
 
-	igt_set_module_param_int("enable_psr", val);
+	igt_set_module_param_int(device, "enable_psr", val);
 
 	if (val == oldval)
 		return false;
@@ -114,7 +114,7 @@ static void restore_psr_debugfs(int sig)
 	psr_write(psr_restore_debugfs_fd, "0");
 }
 
-static bool psr_set(int debugfs_fd, int mode)
+static bool psr_set(int device, int debugfs_fd, int mode)
 {
 	int ret;
 
@@ -131,7 +131,7 @@ static bool psr_set(int debugfs_fd, int mode)
 		 * version enabled and the PSR version of the test, it will
 		 * fail in the first psr_wait_entry() of the test.
 		 */
-		ret = psr_modparam_set(mode >= PSR_MODE_1);
+		ret = psr_modparam_set(device, mode >= PSR_MODE_1);
 	} else {
 		const char *debug_val;
 
@@ -161,18 +161,18 @@ static bool psr_set(int debugfs_fd, int mode)
 	return ret;
 }
 
-bool psr_enable(int debugfs_fd, enum psr_mode mode)
+bool psr_enable(int device, int debugfs_fd, enum psr_mode mode)
 {
-	return psr_set(debugfs_fd, mode);
+	return psr_set(device, debugfs_fd, mode);
 }
 
-bool psr_disable(int debugfs_fd)
+bool psr_disable(int device, int debugfs_fd)
 {
 	/* Any mode different than PSR_MODE_1/2 will disable PSR */
-	return psr_set(debugfs_fd, -1);
+	return psr_set(device, debugfs_fd, -1);
 }
 
-bool psr_sink_support(int debugfs_fd, enum psr_mode mode)
+bool psr_sink_support(int device, int debugfs_fd, enum psr_mode mode)
 {
 	char buf[PSR_STATUS_MAX_LEN];
 	int ret;
diff --git a/lib/igt_psr.h b/lib/igt_psr.h
index 02ce760b2..b2afb6119 100644
--- a/lib/igt_psr.h
+++ b/lib/igt_psr.h
@@ -39,9 +39,9 @@ bool psr_disabled_check(int debugfs_fd);
 bool psr_wait_entry(int debugfs_fd, enum psr_mode mode);
 bool psr_wait_update(int debugfs_fd, enum psr_mode mode);
 bool psr_long_wait_update(int debugfs_fd, enum psr_mode mode);
-bool psr_enable(int debugfs_fd, enum psr_mode);
-bool psr_disable(int debugfs_fd);
-bool psr_sink_support(int debugfs_fd, enum psr_mode);
+bool psr_enable(int device, int debugfs_fd, enum psr_mode);
+bool psr_disable(int device, int debugfs_fd);
+bool psr_sink_support(int device, int debugfs_fd, enum psr_mode mode);
 bool psr2_wait_su(int debugfs_fd, uint16_t *num_su_blocks);
 
 #endif
diff --git a/tests/i915/i915_pm_dc.c b/tests/i915/i915_pm_dc.c
index 2dd6191d6..3a3027291 100644
--- a/tests/i915/i915_pm_dc.c
+++ b/tests/i915/i915_pm_dc.c
@@ -291,7 +291,7 @@ static void require_dc_counter(int debugfs_fd, int dc_flag)
 static void setup_dc3co(data_t *data)
 {
 	data->op_psr_mode = PSR_MODE_2;
-	psr_enable(data->debugfs_fd, data->op_psr_mode);
+	psr_enable(data->drm_fd, data->debugfs_fd, data->op_psr_mode);
 	igt_require_f(psr_wait_entry(data->debugfs_fd, data->op_psr_mode),
 		      "PSR2 is not enabled\n");
 }
@@ -408,25 +408,25 @@ int main(int argc, char *argv[])
 	igt_describe("In this test we make sure that system enters DC3CO "
 		     "when PSR2 is active and system is in SLEEP state");
 	igt_subtest("dc3co-vpb-simulation") {
-		igt_require(psr_sink_support(data.debugfs_fd, PSR_MODE_2));
+		igt_require(psr_sink_support(data.drm_fd, data.debugfs_fd, PSR_MODE_2));
 		test_dc3co_vpb_simulation(&data);
 	}
 
 	igt_describe("This test validates display engine entry to DC5 state "
 		     "while PSR is active");
 	igt_subtest("dc5-psr") {
-		igt_require(psr_sink_support(data.debugfs_fd, PSR_MODE_1));
+		igt_require(psr_sink_support(data.drm_fd, data.debugfs_fd, PSR_MODE_1));
 		data.op_psr_mode = PSR_MODE_1;
-		psr_enable(data.debugfs_fd, data.op_psr_mode);
+		psr_enable(data.drm_fd, data.debugfs_fd, data.op_psr_mode);
 		test_dc_state_psr(&data, CHECK_DC5);
 	}
 
 	igt_describe("This test validates display engine entry to DC6 state "
 		     "while PSR is active");
 	igt_subtest("dc6-psr") {
-		igt_require(psr_sink_support(data.debugfs_fd, PSR_MODE_1));
+		igt_require(psr_sink_support(data.drm_fd, data.debugfs_fd, PSR_MODE_1));
 		data.op_psr_mode = PSR_MODE_1;
-		psr_enable(data.debugfs_fd, data.op_psr_mode);
+		psr_enable(data.drm_fd, data.debugfs_fd, data.op_psr_mode);
 		igt_require_f(igt_pm_pc8_plus_residencies_enabled(data.msr_fd),
 			      "PC8+ residencies not supported\n");
 		test_dc_state_psr(&data, CHECK_DC6);
diff --git a/tests/kms_busy.c b/tests/kms_busy.c
index be4273bc4..222612e79 100644
--- a/tests/kms_busy.c
+++ b/tests/kms_busy.c
@@ -374,20 +374,20 @@ igt_main
 
 		igt_subtest_f("extended-modeset-hang-oldfb-with-reset-%s-pipe-%s",
 				e->name, kmstest_pipe_name(n)) {
-			igt_set_module_param_int("force_reset_modeset_test", 1);
+			igt_set_module_param_int(display.drm_fd, "force_reset_modeset_test", 1);
 
 			test_hang(&display, eb_ring(e), n, true, false);
 
-			igt_set_module_param_int("force_reset_modeset_test", 0);
+			igt_set_module_param_int(display.drm_fd, "force_reset_modeset_test", 0);
 		}
 
 		igt_subtest_f("extended-modeset-hang-newfb-with-reset-%s-pipe-%s",
 				e->name, kmstest_pipe_name(n)) {
-			igt_set_module_param_int("force_reset_modeset_test", 1);
+			igt_set_module_param_int(display.drm_fd, "force_reset_modeset_test", 1);
 
 			test_hang(&display, eb_ring(e), n, true, true);
 
-			igt_set_module_param_int("force_reset_modeset_test", 0);
+			igt_set_module_param_int(display.drm_fd, "force_reset_modeset_test", 0);
 		}
 
 		igt_fixture {
diff --git a/tests/kms_fbcon_fbt.c b/tests/kms_fbcon_fbt.c
index 143be3e37..7eba4ac5d 100644
--- a/tests/kms_fbcon_fbt.c
+++ b/tests/kms_fbcon_fbt.c
@@ -89,7 +89,7 @@ static void teardown_drm(struct drm_info *drm)
 	drm->fd = -1;
 }
 
-static bool fbc_supported_on_chipset(int debugfs_fd)
+static bool fbc_supported_on_chipset(int device, int debugfs_fd)
 {
 	char buf[128];
 	int ret;
@@ -266,9 +266,9 @@ static bool psr_is_disabled(int debugfs_fd)
 	return r;
 }
 
-static bool psr_supported_on_chipset(int debugfs_fd)
+static bool psr_supported_on_chipset(int device, int debugfs_fd)
 {
-	return psr_sink_support(debugfs_fd, PSR_MODE_1);
+	return psr_sink_support(device, debugfs_fd, PSR_MODE_1);
 }
 
 static bool psr_wait_until_update(struct drm_info *drm)
@@ -276,30 +276,30 @@ static bool psr_wait_until_update(struct drm_info *drm)
 	return psr_long_wait_update(drm->debugfs_fd, PSR_MODE_1);
 }
 
-static void disable_features(int debugfs_fd)
+static void disable_features(int device, int debugfs_fd)
 {
-	igt_set_module_param_int("enable_fbc", 0);
-	if (psr_sink_support(debugfs_fd, PSR_MODE_1))
-		psr_disable(debugfs_fd);
+	igt_set_module_param_int(device, "enable_fbc", 0);
+	if (psr_sink_support(device, debugfs_fd, PSR_MODE_1))
+		psr_disable(device, debugfs_fd);
 }
 
-static inline void fbc_modparam_enable(int debugfs_fd)
+static inline void fbc_modparam_enable(int device, int debugfs_fd)
 {
-	igt_set_module_param_int("enable_fbc", 1);
+	igt_set_module_param_int(device, "enable_fbc", 1);
 }
 
-static inline void psr_debugfs_enable(int debugfs_fd)
+static inline void psr_debugfs_enable(int device, int debugfs_fd)
 {
-	psr_enable(debugfs_fd, PSR_MODE_1);
+	psr_enable(device, debugfs_fd, PSR_MODE_1);
 }
 
 struct feature {
-	bool (*supported_on_chipset)(int debugfs_fd);
+	bool (*supported_on_chipset)(int device, int debugfs_fd);
 	bool (*wait_until_enabled)(int debugfs_fd);
 	bool (*is_disabled)(int debugfs_fd);
 	bool (*wait_until_update)(struct drm_info *drm);
 	bool (*connector_possible_fn)(drmModeConnectorPtr connector);
-	void (*enable)(int debugfs_fd);
+	void (*enable)(int device, int debugfs_fd);
 } fbc = {
 	.supported_on_chipset = fbc_supported_on_chipset,
 	.wait_until_enabled = fbc_wait_until_enabled,
@@ -322,10 +322,10 @@ static void subtest(struct drm_info *drm, struct feature *feature, bool suspend)
 
 	setup_drm(drm);
 
-	igt_require(feature->supported_on_chipset(drm->debugfs_fd));
+	igt_require(feature->supported_on_chipset(drm->fd, drm->debugfs_fd));
 
-	disable_features(drm->debugfs_fd);
-	feature->enable(drm->debugfs_fd);
+	disable_features(drm->fd, drm->debugfs_fd);
+	feature->enable(drm->fd, drm->debugfs_fd);
 
 	kmstest_unset_all_crtcs(drm->fd, drm->res);
 	wait_user("Modes unset.");
diff --git a/tests/kms_force_connector_basic.c b/tests/kms_force_connector_basic.c
index ddbd97efd..b1a5bac19 100644
--- a/tests/kms_force_connector_basic.c
+++ b/tests/kms_force_connector_basic.c
@@ -53,7 +53,7 @@ static void reset_connectors(void)
 		drmModeFreeConnector(connector);
 	}
 
-	igt_set_module_param_int("load_detect_test", 0);
+	igt_set_module_param_int(drm_fd, "load_detect_test", 0);
 }
 
 static int opt_handler(int opt, int opt_index, void *data)
@@ -158,7 +158,7 @@ igt_main_args("", long_opts, help_str, opt_handler, NULL)
 		kmstest_set_vt_graphics_mode();
 		kmstest_unset_all_crtcs(drm_fd, res);
 
-		igt_set_module_param_int("load_detect_test", 1);
+		igt_set_module_param_int(drm_fd, "load_detect_test", 1);
 
 		plane_resources = drmModeGetPlaneResources(drm_fd);
 		igt_assert(plane_resources);
@@ -201,7 +201,7 @@ igt_main_args("", long_opts, help_str, opt_handler, NULL)
 		 */
 		temp = drmModeGetConnector(drm_fd, connector->connector_id);
 
-		igt_set_module_param_int("load_detect_test", 0);
+		igt_set_module_param_int(drm_fd, "load_detect_test", 0);
 
 		igt_assert(temp->connection != DRM_MODE_UNKNOWNCONNECTION);
 
diff --git a/tests/kms_frontbuffer_tracking.c b/tests/kms_frontbuffer_tracking.c
index 5d55560d5..780fecfe8 100644
--- a/tests/kms_frontbuffer_tracking.c
+++ b/tests/kms_frontbuffer_tracking.c
@@ -938,8 +938,8 @@ static bool drrs_wait_until_rr_switch_to_low(void)
 	return igt_wait(is_drrs_low(), 5000, 1);
 }
 
-#define fbc_enable() igt_set_module_param_int("enable_fbc", 1)
-#define fbc_disable() igt_set_module_param_int("enable_fbc", 0)
+#define fbc_enable() igt_set_module_param_int(drm.fd, "enable_fbc", 1)
+#define fbc_disable() igt_set_module_param_int(drm.fd, "enable_fbc", 0)
 #define drrs_enable()	drrs_set(1)
 #define drrs_disable()	drrs_set(0)
 
@@ -1135,7 +1135,7 @@ static bool disable_features(const struct test_mode *t)
 
 	fbc_disable();
 	drrs_disable();
-	return psr.can_test ? psr_disable(drm.debugfs) : false;
+	return psr.can_test ? psr_disable(drm.fd, drm.debugfs) : false;
 }
 
 static void *busy_thread_func(void *data)
@@ -1427,7 +1427,7 @@ static void setup_psr(void)
 		return;
 	}
 
-	if (!psr_sink_support(drm.debugfs, PSR_MODE_1)) {
+	if (!psr_sink_support(drm.fd, drm.debugfs, PSR_MODE_1)) {
 		igt_info("Can't test PSR: not supported by sink.\n");
 		return;
 	}
@@ -1725,7 +1725,7 @@ static bool enable_features_for_test(const struct test_mode *t)
 	if (t->feature & FEATURE_FBC)
 		fbc_enable();
 	if (t->feature & FEATURE_PSR)
-		ret = psr_enable(drm.debugfs, PSR_MODE_1);
+		ret = psr_enable(drm.fd, drm.debugfs, PSR_MODE_1);
 	if (t->feature & FEATURE_DRRS)
 		drrs_enable();
 
diff --git a/tests/kms_panel_fitting.c b/tests/kms_panel_fitting.c
index 065fc2df8..4f4c56087 100644
--- a/tests/kms_panel_fitting.c
+++ b/tests/kms_panel_fitting.c
@@ -231,7 +231,7 @@ static void test_atomic_fastset(data_t *data)
 
 	/* Until this is force enabled, force modeset evasion. */
 	if (stat("/sys/module/i915/parameters/fastboot", &sb) == 0)
-		igt_set_module_param_int("fastboot", 1);
+		igt_set_module_param_int(data->drm_fd, "fastboot", 1);
 
 	igt_require(display->is_atomic);
 	igt_require(intel_gen(intel_get_drm_devid(display->drm_fd)) >= 5);
diff --git a/tests/kms_psr.c b/tests/kms_psr.c
index 13ed02f46..f40902fbb 100644
--- a/tests/kms_psr.c
+++ b/tests/kms_psr.c
@@ -195,7 +195,7 @@ static void fill_render(data_t *data, uint32_t handle, unsigned char color)
 static bool sink_support(data_t *data, enum psr_mode mode)
 {
 	return data->with_psr_disabled ||
-	       psr_sink_support(data->debugfs_fd, mode);
+	       psr_sink_support(data->drm_fd, data->debugfs_fd, mode);
 }
 
 static bool psr_wait_entry_if_enabled(data_t *data)
@@ -219,7 +219,7 @@ static bool psr_enable_if_enabled(data_t *data)
 	if (data->with_psr_disabled)
 		return true;
 
-	return psr_enable(data->debugfs_fd, data->op_psr_mode);
+	return psr_enable(data->drm_fd, data->debugfs_fd, data->op_psr_mode);
 }
 
 static inline void manual(const char *expected)
@@ -525,7 +525,7 @@ igt_main_args("", long_options, help_str, opt_handler, &data)
 
 	igt_fixture {
 		if (!data.with_psr_disabled)
-			psr_disable(data.debugfs_fd);
+			psr_disable(data.drm_fd, data.debugfs_fd);
 
 		close(data.debugfs_fd);
 		drm_intel_bufmgr_destroy(data.bufmgr);
diff --git a/tests/kms_psr2_su.c b/tests/kms_psr2_su.c
index 9f40c7355..a834a96e3 100644
--- a/tests/kms_psr2_su.c
+++ b/tests/kms_psr2_su.c
@@ -243,7 +243,8 @@ igt_main
 		data.debugfs_fd = igt_debugfs_dir(data.drm_fd);
 		kmstest_set_vt_graphics_mode();
 
-		igt_require_f(psr_sink_support(data.debugfs_fd, PSR_MODE_2),
+		igt_require_f(psr_sink_support(data.drm_fd,
+					       data.debugfs_fd, PSR_MODE_2),
 			      "Sink does not support PSR2\n");
 
 		data.bufmgr = drm_intel_bufmgr_gem_init(data.drm_fd, 4096);
@@ -253,7 +254,8 @@ igt_main
 		display_init(&data);
 
 		/* Test if PSR2 can be enabled */
-		igt_require_f(psr_enable(data.debugfs_fd, PSR_MODE_2),
+		igt_require_f(psr_enable(data.drm_fd,
+					 data.debugfs_fd, PSR_MODE_2),
 			      "Error enabling PSR2\n");
 		data.op = FRONTBUFFER;
 		prepare(&data);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
