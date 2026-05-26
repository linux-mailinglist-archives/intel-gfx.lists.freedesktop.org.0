Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0N+AOG+YFWqnWgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 14:56:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B65C5D5DE7
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 14:56:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5364710E4D4;
	Tue, 26 May 2026 12:56:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LFrH8doT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88AFE10E4D4;
 Tue, 26 May 2026 12:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779800173; x=1811336173;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RD9yq/WKAt5FjSSfi+ELKpGYH/IGGQamateqtN89WlI=;
 b=LFrH8doT1YyuX9iGm7Ws0p7i03YjrY9bTUriqDHxlXBTsl6vtDUmVJFn
 1H3WSMZdZqRNlWN6f8rvpELUWxAHxMn5b7Rp9I6N3OnADD5eAhFTKpMpG
 W7j1bWmwhoj8VCU36UL2Cwpfs/UCe6Vj53/iBhNqQlGWfZ4xK/9g23FsC
 etxKjJ7RsDwbAGKhVUxMNCpbwYfZ0VhovuG1um2EuCv+0g1vn1ANDw88D
 EPZrlxF4ezhX1GFfa+FaMd123rZkW48QKcZ7DbVYUMNISjBxEA6HhF0Yp
 Qm7hZMQiG2be7UhT0x2J362ENBZzzjlpWHzsHgcGxUcQ2biBgwehDJGHn w==;
X-CSE-ConnectionGUID: OWWG+K45RbCHD6NcE73oLQ==
X-CSE-MsgGUID: jNJ902WFQu693Dj5yuS8RQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="84465964"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="84465964"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 05:56:13 -0700
X-CSE-ConnectionGUID: BlnCw15WRAWxQE+g2HWTuw==
X-CSE-MsgGUID: 0CEyKZFCSCiNl/GmX93KmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="238897528"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 05:56:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 2/3] drm/i915/power: rename intel_power_domains_*() to
 intel_display_power_*()
Date: Tue, 26 May 2026 15:55:58 +0300
Message-ID: <8fae4b0e3476aeffb0164215b7e0f0ae1d825f72.1779800132.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1779800132.git.jani.nikula@intel.com>
References: <cover.1779800132.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 8B65C5D5DE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

It's confusing that intel_display_power.[ch] exposes two groups of
interfaces, one named intel_power_domains_*() and one
intel_display_power_*().

Unify on the latter, based on the file name, but also because it's more
generic. This makes the caller side easier to follow.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  8 +--
 .../drm/i915/display/intel_display_power.c    | 50 +++++++++----------
 .../drm/i915/display/intel_display_power.h    | 14 +++---
 .../drm/i915/display/intel_modeset_setup.c    |  2 +-
 drivers/gpu/drm/i915/i915_driver.c            | 14 +++---
 drivers/gpu/drm/i915/intel_runtime_pm.c       |  2 +-
 drivers/gpu/drm/xe/display/xe_display.c       | 20 ++++----
 7 files changed, 55 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 8e6c3dfab5c0..6b7411f5c6a8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -212,13 +212,13 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	intel_psr_dc5_dc6_wa_init(display);
 
 	/* FIXME: completely on the wrong abstraction layer */
-	ret = intel_power_domains_init(display);
+	ret = intel_display_power_init(display);
 	if (ret < 0)
 		goto cleanup_bios;
 
 	intel_pmdemand_init_early(display);
 
-	intel_power_domains_init_hw(display, false);
+	intel_display_power_init_hw(display, false);
 
 	if (!HAS_DISPLAY(display))
 		return 0;
@@ -300,7 +300,7 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	destroy_workqueue(display->hotplug.dp_wq);
 cleanup_pw_domain_dmc:
 	intel_dmc_fini(display);
-	intel_power_domains_driver_remove(display);
+	intel_display_power_driver_remove(display);
 cleanup_bios:
 	intel_bios_driver_remove(display);
 
@@ -641,7 +641,7 @@ void intel_display_driver_remove_nogem(struct intel_display *display)
 {
 	intel_dmc_fini(display);
 
-	intel_power_domains_driver_remove(display);
+	intel_display_power_driver_remove(display);
 
 	intel_bios_driver_remove(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index dbb8d78595f9..4264b9031938 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1018,13 +1018,13 @@ static u32 get_allowed_dc_mask(struct intel_display *display, int enable_dc)
 }
 
 /**
- * intel_power_domains_init - initializes the power domain structures
+ * intel_display_power_init - initializes the power domain structures
  * @display: display device instance
  *
  * Initializes the power domain structures for @display depending upon the
  * supported platform.
  */
-int intel_power_domains_init(struct intel_display *display)
+int intel_display_power_init(struct intel_display *display)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
 
@@ -1045,12 +1045,12 @@ int intel_power_domains_init(struct intel_display *display)
 }
 
 /**
- * intel_power_domains_cleanup - clean up power domains resources
+ * intel_display_power_cleanup - clean up power domains resources
  * @display: display device instance
  *
- * Release any resources acquired by intel_power_domains_init()
+ * Release any resources acquired by intel_display_power_init()
  */
-void intel_power_domains_cleanup(struct intel_display *display)
+void intel_display_power_cleanup(struct intel_display *display)
 {
 	intel_display_power_map_cleanup(&display->power.domains);
 }
@@ -1918,7 +1918,7 @@ static void assert_isp_power_gated(struct intel_display *display)
 static void intel_power_domains_verify_state(struct intel_display *display);
 
 /**
- * intel_power_domains_init_hw - initialize hardware power domain state
+ * intel_display_power_init_hw - initialize hardware power domain state
  * @display: display device instance
  * @resume: Called from resume code paths or not
  *
@@ -1930,10 +1930,10 @@ static void intel_power_domains_verify_state(struct intel_display *display);
  * intel_power_domains_verify_state().
  *
  * It will return with power domains disabled (to be enabled later by
- * intel_power_domains_enable()) and must be paired with
- * intel_power_domains_driver_remove().
+ * intel_display_power_enable()) and must be paired with
+ * intel_display_power_driver_remove().
  */
-void intel_power_domains_init_hw(struct intel_display *display, bool resume)
+void intel_display_power_init_hw(struct intel_display *display, bool resume)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
 
@@ -1967,7 +1967,7 @@ void intel_power_domains_init_hw(struct intel_display *display, bool resume)
 	 * Keep all power wells enabled for any dependent HW access during
 	 * initialization and to make sure we keep BIOS enabled display HW
 	 * resources powered until display HW readout is complete. We drop
-	 * this reference in intel_power_domains_enable().
+	 * this reference in intel_display_power_enable().
 	 */
 	drm_WARN_ON(display->drm, power_domains->init_wakeref);
 	power_domains->init_wakeref =
@@ -1985,17 +1985,17 @@ void intel_power_domains_init_hw(struct intel_display *display, bool resume)
 }
 
 /**
- * intel_power_domains_driver_remove - deinitialize hw power domain state
+ * intel_display_power_driver_remove - deinitialize hw power domain state
  * @display: display device instance
  *
  * De-initializes the display power domain HW state. It also ensures that the
  * device stays powered up so that the driver can be reloaded.
  *
  * It must be called with power domains already disabled (after a call to
- * intel_power_domains_disable()) and must be paired with
- * intel_power_domains_init_hw().
+ * intel_display_power_disable()) and must be paired with
+ * intel_display_power_init_hw().
  */
-void intel_power_domains_driver_remove(struct intel_display *display)
+void intel_display_power_driver_remove(struct intel_display *display)
 {
 	struct ref_tracker *wakeref __maybe_unused =
 		fetch_and_zero(&display->power.domains.init_wakeref);
@@ -2014,7 +2014,7 @@ void intel_power_domains_driver_remove(struct intel_display *display)
 }
 
 /**
- * intel_power_domains_sanitize_state - sanitize power domains state
+ * intel_display_power_sanitize_state - sanitize power domains state
  * @display: display device instance
  *
  * Sanitize the power domains state during driver loading and system resume.
@@ -2023,7 +2023,7 @@ void intel_power_domains_driver_remove(struct intel_display *display)
  * on it by the time this function is called, after the state of all the
  * pipe, encoder, etc. HW resources have been sanitized).
  */
-void intel_power_domains_sanitize_state(struct intel_display *display)
+void intel_display_power_sanitize_state(struct intel_display *display)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *power_well;
@@ -2045,18 +2045,18 @@ void intel_power_domains_sanitize_state(struct intel_display *display)
 }
 
 /**
- * intel_power_domains_enable - enable toggling of display power wells
+ * intel_display_power_enable - enable toggling of display power wells
  * @display: display device instance
  *
  * Enable the ondemand enabling/disabling of the display power wells. Note that
  * power wells not belonging to POWER_DOMAIN_INIT are allowed to be toggled
  * only at specific points of the display modeset sequence, thus they are not
- * affected by the intel_power_domains_enable()/disable() calls. The purpose
+ * affected by the intel_display_power_enable()/disable() calls. The purpose
  * of these function is to keep the rest of power wells enabled until the end
  * of display HW readout (which will acquire the power references reflecting
  * the current HW state).
  */
-void intel_power_domains_enable(struct intel_display *display)
+void intel_display_power_enable(struct intel_display *display)
 {
 	struct ref_tracker *wakeref __maybe_unused =
 		fetch_and_zero(&display->power.domains.init_wakeref);
@@ -2066,13 +2066,13 @@ void intel_power_domains_enable(struct intel_display *display)
 }
 
 /**
- * intel_power_domains_disable - disable toggling of display power wells
+ * intel_display_power_disable - disable toggling of display power wells
  * @display: display device instance
  *
  * Disable the ondemand enabling/disabling of the display power wells. See
- * intel_power_domains_enable() for which power wells this call controls.
+ * intel_display_power_enable() for which power wells this call controls.
  */
-void intel_power_domains_disable(struct intel_display *display)
+void intel_display_power_disable(struct intel_display *display)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
 
@@ -2092,7 +2092,7 @@ void intel_power_domains_disable(struct intel_display *display)
  * system suspend.
  *
  * It must be called with power domains already disabled (after a call to
- * intel_power_domains_disable()) and paired with intel_power_domains_resume().
+ * intel_display_power_disable()) and paired with intel_power_domains_resume().
  */
 static void intel_power_domains_suspend(struct intel_display *display, bool s2idle)
 {
@@ -2144,7 +2144,7 @@ static void intel_power_domains_suspend(struct intel_display *display, bool s2id
  * This function resume the hardware power domain state during system resume.
  *
  * It will return with power domain support disabled (to be enabled later by
- * intel_power_domains_enable()) and must be paired with
+ * intel_display_power_enable()) and must be paired with
  * intel_power_domains_suspend().
  */
 static void intel_power_domains_resume(struct intel_display *display)
@@ -2152,7 +2152,7 @@ static void intel_power_domains_resume(struct intel_display *display)
 	struct i915_power_domains *power_domains = &display->power.domains;
 
 	if (power_domains->display_core_suspended) {
-		intel_power_domains_init_hw(display, true);
+		intel_display_power_init_hw(display, true);
 		power_domains->display_core_suspended = false;
 	} else {
 		drm_WARN_ON(display->drm, power_domains->init_wakeref);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 14806455c29e..be051911514f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -169,13 +169,13 @@ struct intel_display_power_domain_set {
 	for ((__domain) = 0; (__domain) < POWER_DOMAIN_NUM; (__domain)++)	\
 		for_each_if(test_bit((__domain), (__mask)->bits))
 
-int intel_power_domains_init(struct intel_display *display);
-void intel_power_domains_cleanup(struct intel_display *display);
-void intel_power_domains_init_hw(struct intel_display *display, bool resume);
-void intel_power_domains_driver_remove(struct intel_display *display);
-void intel_power_domains_enable(struct intel_display *display);
-void intel_power_domains_disable(struct intel_display *display);
-void intel_power_domains_sanitize_state(struct intel_display *display);
+int intel_display_power_init(struct intel_display *display);
+void intel_display_power_cleanup(struct intel_display *display);
+void intel_display_power_init_hw(struct intel_display *display, bool resume);
+void intel_display_power_driver_remove(struct intel_display *display);
+void intel_display_power_enable(struct intel_display *display);
+void intel_display_power_disable(struct intel_display *display);
+void intel_display_power_sanitize_state(struct intel_display *display);
 
 void intel_display_power_suspend_late(struct intel_display *display, bool s2idle);
 void intel_display_power_resume_early(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 0c9775eabdf0..492c14d53bf1 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -1011,5 +1011,5 @@ void intel_modeset_setup_hw_state(struct intel_display *display,
 
 	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
 
-	intel_power_domains_sanitize_state(display);
+	intel_display_power_sanitize_state(display);
 }
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 0363dbd231b7..e14d8cc11c7c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -297,7 +297,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 	struct intel_display *display = dev_priv->display;
 
 	intel_irq_fini(dev_priv);
-	intel_power_domains_cleanup(display);
+	intel_display_power_cleanup(display);
 	i915_gem_cleanup_early(dev_priv);
 	intel_gt_driver_late_release_all(dev_priv);
 	intel_region_ttm_device_fini(dev_priv);
@@ -660,7 +660,7 @@ static int i915_driver_register(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_register(display);
 
-	intel_power_domains_enable(display);
+	intel_display_power_enable(display);
 	intel_runtime_pm_enable(&dev_priv->runtime_pm);
 
 	if (i915_switcheroo_register(dev_priv))
@@ -682,7 +682,7 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 	i915_switcheroo_unregister(dev_priv);
 
 	intel_runtime_pm_disable(&dev_priv->runtime_pm);
-	intel_power_domains_disable(display);
+	intel_display_power_disable(display);
 
 	intel_display_driver_unregister(display);
 
@@ -1042,7 +1042,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 	intel_runtime_pm_disable(&i915->runtime_pm);
-	intel_power_domains_disable(display);
+	intel_display_power_disable(display);
 
 	drm_client_dev_suspend(&i915->drm);
 	if (intel_display_device_present(display)) {
@@ -1078,7 +1078,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	 * - unify the driver remove and system/runtime suspend sequences with
 	 *   the above unified shutdown/poweroff sequence.
 	 */
-	intel_power_domains_driver_remove(display);
+	intel_display_power_driver_remove(display);
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 
 	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
@@ -1125,7 +1125,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	/* We do a lot of poking in a lot of registers, make sure they work
 	 * properly. */
-	intel_power_domains_disable(display);
+	intel_display_power_disable(display);
 	drm_client_dev_suspend(dev);
 	if (intel_display_device_present(display)) {
 		drm_kms_helper_poll_disable(dev);
@@ -1325,7 +1325,7 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	drm_client_dev_resume(dev);
 
-	intel_power_domains_enable(display);
+	intel_display_power_enable(display);
 
 	intel_gvt_resume(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index d11c2814b787..0d5b2624fe66 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -442,7 +442,7 @@ void intel_runtime_pm_put(struct intel_runtime_pm *rpm, intel_wakeref_t wref)
  *
  * Note that this function does currently not enable runtime pm for the
  * subordinate display power domains. That is done by
- * intel_power_domains_enable().
+ * intel_display_power_enable().
  */
 void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
 {
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 8d08da60336d..359c56e13e5c 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -88,7 +88,7 @@ static void xe_display_fini_early(void *arg)
 	intel_display_driver_remove_nogem(display);
 	intel_display_driver_remove_noirq(display);
 	intel_opregion_cleanup(display);
-	intel_power_domains_cleanup(display);
+	intel_display_power_cleanup(display);
 }
 
 int xe_display_init_early(struct xe_device *xe)
@@ -137,7 +137,7 @@ int xe_display_init_early(struct xe_device *xe)
 	return devm_add_action_or_reset(xe->drm.dev, xe_display_fini_early, xe);
 err_noirq:
 	intel_display_driver_remove_noirq(display);
-	intel_power_domains_cleanup(display);
+	intel_display_power_cleanup(display);
 err_opregion:
 	intel_opregion_cleanup(display);
 	return err;
@@ -177,7 +177,7 @@ void xe_display_register(struct xe_device *xe)
 		return;
 
 	intel_display_driver_register(display);
-	intel_power_domains_enable(display);
+	intel_display_power_enable(display);
 }
 
 void xe_display_unregister(struct xe_device *xe)
@@ -187,7 +187,7 @@ void xe_display_unregister(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_power_domains_disable(display);
+	intel_display_power_disable(display);
 	intel_display_driver_unregister(display);
 }
 
@@ -276,7 +276,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
 	 * We do a lot of poking in a lot of registers, make sure they work
 	 * properly.
 	 */
-	intel_power_domains_disable(display);
+	intel_display_power_disable(display);
 
 	xe_display_flush_cleanup_work(xe);
 
@@ -309,7 +309,7 @@ static void xe_display_disable_d3cold(struct xe_device *xe)
 
 	intel_opregion_resume(display);
 
-	intel_power_domains_enable(display);
+	intel_display_power_enable(display);
 }
 
 void xe_display_pm_suspend(struct xe_device *xe)
@@ -324,7 +324,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 	 * We do a lot of poking in a lot of registers, make sure they work
 	 * properly.
 	 */
-	intel_power_domains_disable(display);
+	intel_display_power_disable(display);
 	drm_client_dev_suspend(&xe->drm);
 
 	if (intel_display_device_present(display)) {
@@ -356,7 +356,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_power_domains_disable(display);
+	intel_display_power_disable(display);
 	drm_client_dev_suspend(&xe->drm);
 
 	if (intel_display_device_present(display)) {
@@ -437,7 +437,7 @@ void xe_display_pm_shutdown_late(struct xe_device *xe)
 	 * for now leaving all display power wells in the INIT power domain
 	 * enabled.
 	 */
-	intel_power_domains_driver_remove(display);
+	intel_display_power_driver_remove(display);
 }
 
 void xe_display_pm_resume_early(struct xe_device *xe)
@@ -484,7 +484,7 @@ void xe_display_pm_resume(struct xe_device *xe)
 
 	drm_client_dev_resume(&xe->drm);
 
-	intel_power_domains_enable(display);
+	intel_display_power_enable(display);
 }
 
 void xe_display_pm_runtime_resume(struct xe_device *xe)
-- 
2.47.3

