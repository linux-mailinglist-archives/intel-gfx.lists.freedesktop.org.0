Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98019AADB8F
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 11:38:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BF0310E77E;
	Wed,  7 May 2025 09:38:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OVm45y9f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C559110E77E;
 Wed,  7 May 2025 09:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746610730; x=1778146730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5ra5I28/Xut9XkSayDLB0j3ukFcJYNzAb+NV4Bpcwt8=;
 b=OVm45y9f0sffk6kXxsgP6BEdvbmaySQV4nTl56TiEFq/G6GvbrhxAbf8
 +ZKGtpn5+CdlHXfHJppB5/0s7uJpmL25EuB+BZ6arQ6Xd0orJ0nysBdUl
 QfA0MAKi1i3GZlaDVqAVillnQudr00XqZ0SpMDWwqzn6cm+5ENx/jcv1K
 SgMUte3qRxtDWHmOfoWWE0/1I2cSHk4okEefJ1eD/Jf1+8FxRV+S+nECh
 dVtlyw2MIRrnWNggUQxNrRgGusGqR7p+NrvArci8hdozKvioZhlAXzKYE
 RlAl6AhT1dOaVIJqIAnjXTXsScttyYpHJMEHnMZTrReaY0Sf6cSgV1XZC g==;
X-CSE-ConnectionGUID: 4Lmvtys3TqqcIDFeMwsYtw==
X-CSE-MsgGUID: T957LAZeSRuk9hZ3i1Ck3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="59727217"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="59727217"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 02:38:50 -0700
X-CSE-ConnectionGUID: sBqaYcN3TN6+Cehfwp6ZXQ==
X-CSE-MsgGUID: 3uG1JS7vS92afNMwG8LdwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="159194299"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 02:38:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/4] drm/xe/display: do not reference xe->display inline
Date: Wed,  7 May 2025 12:38:34 +0300
Message-Id: <c99483ad86022d02f780bac73445baaf27a6edce.1746610601.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746610601.git.jani.nikula@intel.com>
References: <cover.1746610601.git.jani.nikula@intel.com>
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

Always use a local variable for display instead of referencing
xe->display inline. This makes it easier to convert xe->display into a
pointer.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 15 ++++++++++-----
 drivers/gpu/drm/xe/display/xe_fb_pin.c  |  5 +++--
 2 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 68f064f33d4b..b8030492fbd1 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -38,7 +38,9 @@
 
 static bool has_display(struct xe_device *xe)
 {
-	return HAS_DISPLAY(&xe->display);
+	struct intel_display *display = &xe->display;
+
+	return HAS_DISPLAY(display);
 }
 
 /**
@@ -84,8 +86,9 @@ static void unset_display_features(struct xe_device *xe)
 static void display_destroy(struct drm_device *dev, void *dummy)
 {
 	struct xe_device *xe = to_xe_device(dev);
+	struct intel_display *display = &xe->display;
 
-	destroy_workqueue(xe->display.hotplug.dp_wq);
+	destroy_workqueue(display->hotplug.dp_wq);
 }
 
 /**
@@ -101,9 +104,11 @@ static void display_destroy(struct drm_device *dev, void *dummy)
  */
 int xe_display_create(struct xe_device *xe)
 {
-	spin_lock_init(&xe->display.fb_tracking.lock);
+	struct intel_display *display = &xe->display;
+
+	spin_lock_init(&display->fb_tracking.lock);
 
-	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
+	display->hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
 
 	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
 }
@@ -362,7 +367,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 	if (has_display(xe)) {
 		intel_display_driver_suspend_access(display);
-		intel_encoder_suspend_all(&xe->display);
+		intel_encoder_suspend_all(display);
 	}
 
 	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index d918ae1c8061..e95ca979e1fe 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -389,6 +389,7 @@ static bool reuse_vma(struct intel_plane_state *new_plane_state,
 {
 	struct intel_framebuffer *fb = to_intel_framebuffer(new_plane_state->hw.fb);
 	struct xe_device *xe = to_xe_device(fb->base.dev);
+	struct intel_display *display = &xe->display;
 	struct i915_vma *vma;
 
 	if (old_plane_state->hw.fb == new_plane_state->hw.fb &&
@@ -399,8 +400,8 @@ static bool reuse_vma(struct intel_plane_state *new_plane_state,
 		goto found;
 	}
 
-	if (fb == intel_fbdev_framebuffer(xe->display.fbdev.fbdev)) {
-		vma = intel_fbdev_vma_pointer(xe->display.fbdev.fbdev);
+	if (fb == intel_fbdev_framebuffer(display->fbdev.fbdev)) {
+		vma = intel_fbdev_vma_pointer(display->fbdev.fbdev);
 		if (vma)
 			goto found;
 	}
-- 
2.39.5

