Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF4E97807C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 14:52:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0865410ED15;
	Fri, 13 Sep 2024 12:52:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a75ZVS6R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9572110ED15;
 Fri, 13 Sep 2024 12:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726231933; x=1757767933;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wrHEa+GqpVXMmXu7nSUpC5HfuWdjd3mZ4fr2EKjAAeI=;
 b=a75ZVS6RZNxyRohZwnuhNvuBigsFAlFmZRJwR9O1l7Auam/B09j+NLSe
 gnN1520A4/P+ssXDFD94BGnUpouXsoV9K+31R8W8xo1fDodITN1wdUqwe
 Ig0nC3dXQOW9vePPyamNfXt3LaesAmjM/zh67t3Ztd2axBrTuM2d7u60v
 lUDu/GWPEZODAx63gBkkD1nwhNhAON1BMSn36aLcSkXmJepnhk+T3fiVt
 O6UljlqdFKdw9WrgI/OGt/KwMXo2hoeiilVPrK2UiW82Yat7Bwyr3YCqi
 9ybaZadCnsj1LjpUQvRL1uHu8+W2s6BQfcg/ZFi/q+CgxxZ9mp/j29Snq Q==;
X-CSE-ConnectionGUID: oubBTTgxTF6P1ZMZgWLkug==
X-CSE-MsgGUID: vtx28r1QQFKJ2Glcrhz/gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="36507787"
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="36507787"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 05:52:13 -0700
X-CSE-ConnectionGUID: b88xxuvESMmJI11TzxXjmg==
X-CSE-MsgGUID: bz2MRDLoRauWa32pBUaDfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="68544770"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.64])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 05:52:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/i915/debugfs: add dedicated intel_display_caps
 debugfs for display
Date: Fri, 13 Sep 2024 15:51:55 +0300
Message-Id: <1b825b893dd2d423da167a7b6b21d05e8cd0182c.1726231866.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726231866.git.jani.nikula@intel.com>
References: <cover.1726231866.git.jani.nikula@intel.com>
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

Add dedicated intel_display_caps for display, with device info and
params. Intentionally prefix the file intel_ instead of i915_. Going
forward, we should do the same for all debugfs files, making them
independent of i915 and xe.

Remove display param dumping from i915 specific i915_capabilities
debugfs.

Note that we don't add node_to_intel_display() functionality in
to_intel_display(). It's too specific for that.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c   | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_debugfs.c            |  4 ----
 2 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index b75361e95e97..11ffed95dd16 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -41,11 +41,28 @@
 #include "intel_vdsc.h"
 #include "intel_wm.h"
 
+static struct intel_display *node_to_intel_display(struct drm_info_node *node)
+{
+	return to_intel_display(node->minor->dev);
+}
+
 static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
 {
 	return to_i915(node->minor->dev);
 }
 
+static int intel_display_caps(struct seq_file *m, void *data)
+{
+	struct intel_display *display = node_to_intel_display(m->private);
+	struct drm_printer p = drm_seq_file_printer(m);
+
+	intel_display_device_info_print(DISPLAY_INFO(display),
+					DISPLAY_RUNTIME_INFO(display), &p);
+	intel_display_params_dump(&display->params, display->drm->driver->name, &p);
+
+	return 0;
+}
+
 static int i915_frontbuffer_tracking(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -1027,6 +1044,7 @@ static const struct file_operations i915_fifo_underrun_reset_ops = {
 };
 
 static const struct drm_info_list intel_display_debugfs_list[] = {
+	{"intel_display_caps", intel_display_caps, 0},
 	{"i915_frontbuffer_tracking", i915_frontbuffer_tracking, 0},
 	{"i915_sr_status", i915_sr_status, 0},
 	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index b5fc7cc8020a..1c2a97f593c7 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -33,8 +33,6 @@
 #include <linux/debugfs.h>
 #include <drm/drm_debugfs.h>
 
-#include "display/intel_display_params.h"
-
 #include "gem/i915_gem_context.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_buffer_pool.h"
@@ -66,7 +64,6 @@ static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
 static int i915_capabilities(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
-	struct intel_display *display = &i915->display;
 	struct drm_printer p = drm_seq_file_printer(m);
 
 	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
@@ -77,7 +74,6 @@ static int i915_capabilities(struct seq_file *m, void *data)
 	intel_driver_caps_print(&i915->caps, &p);
 
 	i915_params_dump(&i915->params, &p);
-	intel_display_params_dump(&display->params, display->drm->driver->name, &p);
 
 	return 0;
 }
-- 
2.39.2

