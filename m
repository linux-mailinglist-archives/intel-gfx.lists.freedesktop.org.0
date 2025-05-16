Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEBFAB9BCA
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 14:17:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5AA510EA8E;
	Fri, 16 May 2025 12:17:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="egbwPcTX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 303FE10EA92;
 Fri, 16 May 2025 12:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747397844; x=1778933844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PTfAVLjbFAdV41XAwKGhT1D+7WZn0O042sLi4/hR/Hw=;
 b=egbwPcTXkXqFIC1GuE//JFwO6wS0SPM/pVd2SfV1vOLi8vi9LxBkZn9J
 DlVwtjf01vcGDWaTnO+Giz9YqUxDW7+AfFqYZDuFf3QPhciOB7XfCyovq
 wuIfTyTSN5d4s1ji6CPk8xdot2UqDuKJVtO2TBUKR+mkXbIG//UJWC1n/
 uh4SjH9Ek+a4kUFFeM5qYwVpX4YIiaLHs6ZGAqL1Djr8NSgRQsOE4Cwna
 AeufMVAdpDuzzI97pFbbvr3KsLI1+v3yn2xN/HAhYBz3eIP85eGg9S3SK
 EweV8j11USo2uxstzVdnXmvP/xuBcia4mkER91SChqub7bNR8wmA3+405 w==;
X-CSE-ConnectionGUID: fBkkPz08QH+33mebOhlMfQ==
X-CSE-MsgGUID: kqXFVc+DQgyfw2gpLRzUlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="74766542"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="74766542"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:17:23 -0700
X-CSE-ConnectionGUID: foxaPi/7SUycQj2ivVoWhQ==
X-CSE-MsgGUID: UDqTYjA3QnyHZGdSsNyURQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143568571"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.133])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:17:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/7] drm/i915/display: move hotplug.dp_wq init from xe and
 i915 to display
Date: Fri, 16 May 2025 15:16:57 +0300
Message-Id: <4730167548a40dc2abe38cd084809b74de988f1a.1747397638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747397638.git.jani.nikula@intel.com>
References: <cover.1747397638.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The workqueue init and destroy belongs in display. Move it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_driver.c  | 11 ++++++++++-
 drivers/gpu/drm/i915/i915_driver.c               | 13 +------------
 drivers/gpu/drm/xe/display/xe_display.c          | 16 +---------------
 3 files changed, 12 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 411fe7b918a7..e40f1935323a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -243,10 +243,16 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 
 	intel_dmc_init(display);
 
+	display->hotplug.dp_wq = alloc_ordered_workqueue("intel-dp", 0);
+	if (!display->hotplug.dp_wq) {
+		ret = -ENOMEM;
+		goto cleanup_vga_client_pw_domain_dmc;
+	}
+
 	display->wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
 	if (!display->wq.modeset) {
 		ret = -ENOMEM;
-		goto cleanup_vga_client_pw_domain_dmc;
+		goto cleanup_wq_dp;
 	}
 
 	display->wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
@@ -296,6 +302,8 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	destroy_workqueue(display->wq.flip);
 cleanup_wq_modeset:
 	destroy_workqueue(display->wq.modeset);
+cleanup_wq_dp:
+	destroy_workqueue(display->hotplug.dp_wq);
 cleanup_vga_client_pw_domain_dmc:
 	intel_dmc_fini(display);
 	intel_power_domains_driver_remove(display);
@@ -631,6 +639,7 @@ void intel_display_driver_remove_noirq(struct intel_display *display)
 
 	intel_gmbus_teardown(display);
 
+	destroy_workqueue(display->hotplug.dp_wq);
 	destroy_workqueue(display->wq.flip);
 	destroy_workqueue(display->wq.modeset);
 	destroy_workqueue(display->wq.cleanup);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 5c69d14a7673..950b7ad8d675 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -115,8 +115,6 @@ static const struct drm_driver i915_drm_driver;
 
 static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = dev_priv->display;
-
 	/*
 	 * The i915 workqueue is primarily used for batched retirement of
 	 * requests (and thus managing bo) once the task has been completed
@@ -135,10 +133,6 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 	if (dev_priv->wq == NULL)
 		goto out_err;
 
-	display->hotplug.dp_wq = alloc_ordered_workqueue("i915-dp", 0);
-	if (!display->hotplug.dp_wq)
-		goto out_free_wq;
-
 	/*
 	 * The unordered i915 workqueue should be used for all work
 	 * scheduling that do not require running in order, which used
@@ -147,12 +141,10 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 	 */
 	dev_priv->unordered_wq = alloc_workqueue("i915-unordered", 0, 0);
 	if (dev_priv->unordered_wq == NULL)
-		goto out_free_dp_wq;
+		goto out_free_wq;
 
 	return 0;
 
-out_free_dp_wq:
-	destroy_workqueue(display->hotplug.dp_wq);
 out_free_wq:
 	destroy_workqueue(dev_priv->wq);
 out_err:
@@ -163,10 +155,7 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 
 static void i915_workqueues_cleanup(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = dev_priv->display;
-
 	destroy_workqueue(dev_priv->unordered_wq);
-	destroy_workqueue(display->hotplug.dp_wq);
 	destroy_workqueue(dev_priv->wq);
 }
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 9513b03847a8..b0f5624177bd 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -83,14 +83,6 @@ static void unset_display_features(struct xe_device *xe)
 	xe->drm.driver_features &= ~(DRIVER_MODESET | DRIVER_ATOMIC);
 }
 
-static void display_destroy(struct drm_device *dev, void *dummy)
-{
-	struct xe_device *xe = to_xe_device(dev);
-	struct intel_display *display = xe->display;
-
-	destroy_workqueue(display->hotplug.dp_wq);
-}
-
 /**
  * xe_display_create - create display struct
  * @xe: XE device instance
@@ -105,15 +97,9 @@ static void display_destroy(struct drm_device *dev, void *dummy)
 int xe_display_create(struct xe_device *xe)
 {
 	/* TODO: Allocate display dynamically. */
-	struct intel_display *display = &xe->__display;
-
 	xe->display = &xe->__display;
 
-	display->hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
-	if (!display->hotplug.dp_wq)
-		return -ENOMEM;
-
-	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
+	return 0;
 }
 
 static void xe_display_fini_early(void *arg)
-- 
2.39.5

