Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F8D5531EA
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 14:22:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39DDD10F1E6;
	Tue, 21 Jun 2022 12:22:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0784110EF7A
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 12:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655814166; x=1687350166;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uqmvNoFbOb+qIingBrBfQ4CWV8YBjO5NorY4bzqFQDs=;
 b=HIezrCcNSyr53PqYHIyQg0AuSKyP8/1Oky6F3fau67G72QOjAwHatPsP
 HocqZ3Ks0xqKeLBkwopWS2MNTVAdIk7R/h00upin2/brIO4g+6fz539S7
 DTbnXkNdMT0koRXY91YC1sESJipinn8rTFn/aFHX2+cJXcfyn1OprCYWD
 40TZBcBNEut2fQywK/tjAxMRwo6ao8JSN7lmpIAfpenZswZ5cc3Xrke6M
 3TUA9RmXAfwnAF/3ga01SNXbrWKT686e0NayJkDfFsvFHr5WtlDn8Dcmi
 xND7AvK3XL/QqndPD9246JSXY7rcIB1Svtue7E49hCfQvmiTnTWZYqKog Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="344096443"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="344096443"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:22:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="689913038"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 21 Jun 2022 05:22:42 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25LCMKjq013778; Tue, 21 Jun 2022 13:22:38 +0100
From: Tilak Tangudu <tilak.tangudu@intel.com>
To: intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 tilak.tangudu@intel.com, matthew.d.roper@intel.com,
 saurabhg.gupta@intel.com, Aravind.Iddamsetty@intel.com,
 Sujaritha.Sundaresan@intel.com
Date: Tue, 21 Jun 2022 18:05:10 +0530
Message-Id: <20220621123516.370479-6-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220621123516.370479-1-tilak.tangudu@intel.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/11] drm/i915: Guard rpm helpers in gt helpers
 functions
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

Guard rpm helpers in gt_sanitize and intel_gt_set_wedged
with is_intel_rpm_allowed

Acquire rpm wakeref for higherlevel function i915_gem_resume

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c | 12 ++++++------
 drivers/gpu/drm/i915/gt/intel_reset.c | 10 +++++++---
 drivers/gpu/drm/i915/i915_driver.c    |  4 +++-
 3 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index be99b01a0984..9857b91194b7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -163,12 +163,14 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
 {
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
-	intel_wakeref_t wakeref;
+	intel_wakeref_t wakeref = 0;
 
 	GT_TRACE(gt, "force:%s", str_yes_no(force));
 
 	/* Use a raw wakeref to avoid calling intel_display_power_get early */
-	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
+	if (is_intel_rpm_allowed(gt->uncore->rpm))
+		wakeref = intel_runtime_pm_get(gt->uncore->rpm);
+
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
 
 	intel_gt_check_clock_frequency(gt);
@@ -207,7 +209,8 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
 	intel_rps_sanitize(&gt->rps);
 
 	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
-	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
+	if (wakeref)
+		intel_runtime_pm_put(gt->uncore->rpm, wakeref);
 }
 
 void intel_gt_pm_fini(struct intel_gt *gt)
@@ -226,7 +229,6 @@ int intel_gt_resume(struct intel_gt *gt)
 		return err;
 
 	GT_TRACE(gt, "\n");
-
 	/*
 	 * After resume, we may need to poke into the pinned kernel
 	 * contexts to paper over any damage caused by the sudden suspend.
@@ -259,10 +261,8 @@ int intel_gt_resume(struct intel_gt *gt)
 
 	for_each_engine(engine, gt, id) {
 		intel_engine_pm_get(engine);
-
 		engine->serial++; /* kernel context lost */
 		err = intel_engine_resume(engine);
-
 		intel_engine_pm_put(engine);
 		if (err) {
 			drm_err(&gt->i915->drm,
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index c8e05b48c14f..55a1fd38c7c4 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -901,12 +901,14 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
 
 void intel_gt_set_wedged(struct intel_gt *gt)
 {
-	intel_wakeref_t wakeref;
+	intel_wakeref_t wakeref = 0;
 
 	if (test_bit(I915_WEDGED, &gt->reset.flags))
 		return;
 
-	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
+	if (is_intel_rpm_allowed(gt->uncore->rpm))
+		wakeref = intel_runtime_pm_get(gt->uncore->rpm);
+
 	mutex_lock(&gt->reset.mutex);
 
 	if (GEM_SHOW_DEBUG()) {
@@ -926,7 +928,9 @@ void intel_gt_set_wedged(struct intel_gt *gt)
 	__intel_gt_set_wedged(gt);
 
 	mutex_unlock(&gt->reset.mutex);
-	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
+
+	if (wakeref)
+		intel_runtime_pm_put(gt->uncore->rpm, wakeref);
 }
 
 static bool __intel_gt_unset_wedged(struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d26dcca7e654..60f6fcc6b71d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1263,6 +1263,7 @@ int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
 static int i915_drm_resume(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
+	intel_wakeref_t wakeref;
 	int ret;
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
@@ -1303,7 +1304,8 @@ static int i915_drm_resume(struct drm_device *dev)
 	if (HAS_DISPLAY(dev_priv))
 		drm_mode_config_reset(dev);
 
-	i915_gem_resume(dev_priv);
+	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
+		i915_gem_resume(dev_priv);
 
 	intel_modeset_init_hw(dev_priv);
 	intel_init_clock_gating(dev_priv);
-- 
2.25.1

