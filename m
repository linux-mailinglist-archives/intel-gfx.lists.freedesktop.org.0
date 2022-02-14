Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4957C4B5419
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 16:02:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5092B10E1CA;
	Mon, 14 Feb 2022 15:02:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D288C10E1CA
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 15:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644850939; x=1676386939;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=31RiwxqRpyDoDRr1IRqSx6gKbtwRXROZwabF8/iiM+M=;
 b=LwU/ckeuYgeE7wuWe0uc+khkPDlhLOWE+hw2cvCLhuOIOd2noUn83Mvb
 K7wmEgbx6y0zhPYxe/92rYD4XCAlIdHe7x5/g7VyhRGUeCnE/QkBRCy4o
 fS1girRfND8PJNPakYmgDK++40/iotw0lcpmm3Do25M2zTAw6BOqVqEB7
 Y14WBgpBPlK/4mhCcaVsaN3b8FJ9XO0OcFPbHeXwvzzmpUj9zDXD7o7gV
 5u8tgpMM1MqfRAY7ej9fRb+OZmHqCerQS3Lw2fdS/8hk4/OWjk/xtXJfT
 cuT55AXWBAKPq5RPZfdmwt0znmJ3prVV80ttjxNtLcPu0OK1HFuX045BF Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="313381844"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="313381844"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 07:02:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="501862910"
Received: from unknown (HELO localhost) ([10.252.13.38])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 07:02:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 17:02:07 +0200
Message-Id: <057c649f4129a9f2b8b6b77e7f4ee0856d259c23.1644850884.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644850884.git.jani.nikula@intel.com>
References: <cover.1644850884.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/fbdev: hide struct intel_fbdev in
 intel_fbdev.c
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

As all access to struct intel_fbdev guts is nicely stowed away in
intel_fbdev.c, we can hide the struct definition there too.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 21 -------------------
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 17 +++++++++++++++
 2 files changed, 17 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 60e15226a8cb..ff9288eea541 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -26,7 +26,6 @@
 #ifndef __INTEL_DISPLAY_TYPES_H__
 #define __INTEL_DISPLAY_TYPES_H__
 
-#include <linux/async.h>
 #include <linux/i2c.h>
 #include <linux/pm_qos.h>
 #include <linux/pwm.h>
@@ -38,7 +37,6 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_dsc.h>
 #include <drm/drm_encoder.h>
-#include <drm/drm_fb_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_rect.h>
@@ -145,25 +143,6 @@ struct intel_framebuffer {
 	struct i915_address_space *dpt_vm;
 };
 
-struct intel_fbdev {
-	struct drm_fb_helper helper;
-	struct intel_framebuffer *fb;
-	struct i915_vma *vma;
-	unsigned long vma_flags;
-	async_cookie_t cookie;
-	int preferred_bpp;
-
-	/* Whether or not fbdev hpd processing is temporarily suspended */
-	bool hpd_suspended : 1;
-	/* Set when a hotplug was received while HPD processing was
-	 * suspended
-	 */
-	bool hpd_waiting : 1;
-
-	/* Protects hpd_suspended */
-	struct mutex hpd_lock;
-};
-
 enum intel_hotplug_state {
 	INTEL_HOTPLUG_UNCHANGED,
 	INTEL_HOTPLUG_CHANGED,
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 3ef683916ba6..4ec88807166c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -50,6 +50,23 @@
 #include "intel_fbdev.h"
 #include "intel_frontbuffer.h"
 
+struct intel_fbdev {
+	struct drm_fb_helper helper;
+	struct intel_framebuffer *fb;
+	struct i915_vma *vma;
+	unsigned long vma_flags;
+	async_cookie_t cookie;
+	int preferred_bpp;
+
+	/* Whether or not fbdev hpd processing is temporarily suspended */
+	bool hpd_suspended: 1;
+	/* Set when a hotplug was received while HPD processing was suspended */
+	bool hpd_waiting: 1;
+
+	/* Protects hpd_suspended */
+	struct mutex hpd_lock;
+};
+
 static struct intel_frontbuffer *to_frontbuffer(struct intel_fbdev *ifbdev)
 {
 	return ifbdev->fb->frontbuffer;
-- 
2.30.2

