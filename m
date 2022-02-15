Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4401C4B6C09
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 13:30:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BFC510E481;
	Tue, 15 Feb 2022 12:30:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1527C10E481
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 12:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644928210; x=1676464210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uq1kRmKX8jHYynJQEOmYvGjhk24rvppIjSu6IrauGwY=;
 b=UTKJWXURd3UpfYlkn7qmaKhPRjAqE0nUpuhD1fOMxnEew3AIPLT0F1Bq
 hWkMtpfyZ2FIaTLFbhFbs49Z3SdJVpn/TT93zIMTudF3PDr9ChTHsgR66
 PnC7Djs7LisnMYTNBivOX22d4JC+2bxucWn3ZYurtyewzjMCcS9+FHZxM
 kPspJ8PYC8biYzCP+dBsPuZtSfSLucfDLyTnvbkm191uyTE2MkmcgcbLz
 5l1OCmwLOY3Z5uwvkECd4liuZKIyK+nbfZWU48s/3eRG6xFmk8Zmt6waJ
 lxqwWivOWcrzAIUkYBtse4FLhI3VDk/1pO646U3Dc1qcFdQTPPG7XSvkv A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="237744793"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="237744793"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 04:30:09 -0800
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="703640540"
Received: from ylian16-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.20.230])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 04:30:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 14:29:57 +0200
Message-Id: <20220215122957.2755529-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220215122957.2755529-1-jani.nikula@intel.com>
References: <20220215122957.2755529-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/fbdev: hide struct intel_fbdev
 in intel_fbdev.c
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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
index 0f188cd28f2d..fd5bc7acf08d 100644
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

