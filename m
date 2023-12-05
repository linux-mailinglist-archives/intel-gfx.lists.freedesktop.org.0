Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D23418053F0
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 13:15:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5822B10E508;
	Tue,  5 Dec 2023 12:15:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89BA910E508
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 12:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701778551; x=1733314551;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hzg8E6U8LC+d491y6cw6hVwuEDaHLJybN05cuV7x9uo=;
 b=W7mQWKookrITW6cWDQpbTw9uqHxTEEUISVZNbB0vEAEdiMrBfgINaWmO
 kQWVE58pAiteA/mUTo20Xv2WmpM+S2pfjSsYbicmapLX8nTSBKGaiPusK
 KNfnDoGp1FqTrG3+yFv5iQ080jSzbFvmoOKsYdd8IIKEmUnowx02yqWDi
 cIwUOWyh9o+HhD1nb+pdipPeBiL1mR93ysm3zFVv0bsrBp1KfYNvxc35d
 wrN+XjuL2XKbmZQSTUIBguK3GrlAjT4Va0XtX4CcSJZA0VM31aRLiPc69
 pwNNuF23m8L1SSldSmpr2ySrvGZnuISimvqIPFyZirly3qHb8IENRfiE6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="391047076"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="391047076"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 04:15:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="944244804"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="944244804"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.61.103])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 04:15:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Dec 2023 14:15:45 +0200
Message-Id: <20231205121545.2338665-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/rpm: add rpm_to_i915() helper around
 container_of()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reduce the duplication.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_runtime_pm.c | 24 ++++++++++--------------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 91491111dbd5..860b51b56a92 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -50,6 +50,11 @@
  * present for a given platform.
  */
 
+static struct drm_i915_private *rpm_to_i915(struct intel_runtime_pm *rpm)
+{
+	return container_of(rpm, struct drm_i915_private, runtime_pm);
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 
 static void init_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
@@ -158,9 +163,7 @@ intel_runtime_pm_release(struct intel_runtime_pm *rpm, int wakelock)
 static intel_wakeref_t __intel_runtime_pm_get(struct intel_runtime_pm *rpm,
 					      bool wakelock)
 {
-	struct drm_i915_private *i915 = container_of(rpm,
-						     struct drm_i915_private,
-						     runtime_pm);
+	struct drm_i915_private *i915 = rpm_to_i915(rpm);
 	int ret;
 
 	ret = pm_runtime_get_sync(rpm->kdev);
@@ -365,9 +368,7 @@ void intel_runtime_pm_put(struct intel_runtime_pm *rpm, intel_wakeref_t wref)
  */
 void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
 {
-	struct drm_i915_private *i915 = container_of(rpm,
-						     struct drm_i915_private,
-						     runtime_pm);
+	struct drm_i915_private *i915 = rpm_to_i915(rpm);
 	struct device *kdev = rpm->kdev;
 
 	/*
@@ -420,9 +421,7 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
 
 void intel_runtime_pm_disable(struct intel_runtime_pm *rpm)
 {
-	struct drm_i915_private *i915 = container_of(rpm,
-						     struct drm_i915_private,
-						     runtime_pm);
+	struct drm_i915_private *i915 = rpm_to_i915(rpm);
 	struct device *kdev = rpm->kdev;
 
 	/* Transfer rpm ownership back to core */
@@ -437,9 +436,7 @@ void intel_runtime_pm_disable(struct intel_runtime_pm *rpm)
 
 void intel_runtime_pm_driver_release(struct intel_runtime_pm *rpm)
 {
-	struct drm_i915_private *i915 = container_of(rpm,
-						     struct drm_i915_private,
-						     runtime_pm);
+	struct drm_i915_private *i915 = rpm_to_i915(rpm);
 	int count = atomic_read(&rpm->wakeref_count);
 
 	intel_wakeref_auto_fini(&rpm->userfault_wakeref);
@@ -458,8 +455,7 @@ void intel_runtime_pm_driver_last_release(struct intel_runtime_pm *rpm)
 
 void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm)
 {
-	struct drm_i915_private *i915 =
-			container_of(rpm, struct drm_i915_private, runtime_pm);
+	struct drm_i915_private *i915 = rpm_to_i915(rpm);
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	struct device *kdev = &pdev->dev;
 
-- 
2.39.2

