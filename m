Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3699C4433
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 18:53:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DBC210E4FD;
	Mon, 11 Nov 2024 17:53:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BnQ0IQQB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBCEB10E4FB;
 Mon, 11 Nov 2024 17:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731347630; x=1762883630;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nTYo2Z5fFKOPCJZFX1QMUPcGZfbGU9v5IbQKqIiQAt4=;
 b=BnQ0IQQBdvllE1ICaYZbDkwXYKDY/YXY3rMF9YjkjeHefh+EQZAh7h5j
 mnWMjGfPyPVGVA3bEyP9LsWJK7uAD+sLzgDUo4jVpEJV9Y5VfNyWMpFP5
 DhWFCiEmIubuAObmrZ3+bkeMlP2zTuWz8OEblMttLtQm47OopjTeT2UP4
 SwuB9Djp5SZyLsPWbsL/XqJ3StTjq3Cecqll5wsqJlTPjn7InSQEDXj8r
 ZcictRvdDlYpn2gn2Dff3IPg6uMx/r/lV57XqGYu+2eadBjxNkmC0OV1w
 yMgNbD2ZmU1K3vQ41ZKaTn3Ioe/JgCx1u4AtY+cG4qjNY3n5B3dPcsxSt g==;
X-CSE-ConnectionGUID: PqG38lr2QMqefEHGUgW/7g==
X-CSE-MsgGUID: 5/CXXISHQDKS7YBo4a8whw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31317355"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31317355"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 09:53:50 -0800
X-CSE-ConnectionGUID: 6ADN1+IaQJONstqV8CZJGg==
X-CSE-MsgGUID: f7SrcARhRJKkr2+A33Ou8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="86985820"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.75])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 09:53:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/5] drm/i915/overlay: add intel_overlay_available() and use it
Date: Mon, 11 Nov 2024 19:53:31 +0200
Message-Id: <5c45e2b4f2daec2e826feddf247aeb3252e3a0db.1731347547.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731347547.git.jani.nikula@intel.com>
References: <cover.1731347547.git.jani.nikula@intel.com>
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

Avoid accessing struct intel_display members directly from
i915_getparam_ioctl(). Add intel_overlay_available() function to provide
the information for I915_PARAM_HAS_OVERLAY.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_overlay.h | 5 +++++
 drivers/gpu/drm/i915/i915_getparam.c         | 5 +++--
 3 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 57eaf81651c4..ca30fff61876 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -1438,6 +1438,11 @@ void intel_overlay_setup(struct intel_display *display)
 	kfree(overlay);
 }
 
+bool intel_overlay_available(struct intel_display *display)
+{
+	return display->overlay;
+}
+
 void intel_overlay_cleanup(struct intel_display *display)
 {
 	struct intel_overlay *overlay;
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.h b/drivers/gpu/drm/i915/display/intel_overlay.h
index dc885edf39e6..45a42fce754e 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.h
+++ b/drivers/gpu/drm/i915/display/intel_overlay.h
@@ -18,6 +18,7 @@ struct intel_overlay_snapshot;
 
 #ifdef I915
 void intel_overlay_setup(struct intel_display *display);
+bool intel_overlay_available(struct intel_display *display);
 void intel_overlay_cleanup(struct intel_display *display);
 int intel_overlay_switch_off(struct intel_overlay *overlay);
 int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
@@ -29,6 +30,10 @@ void intel_overlay_reset(struct intel_display *display);
 static inline void intel_overlay_setup(struct intel_display *display)
 {
 }
+static inline bool intel_overlay_available(struct intel_display *display)
+{
+	return false;
+}
 static inline void intel_overlay_cleanup(struct intel_display *display)
 {
 }
diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index a62405787e77..be8149e46281 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -2,9 +2,9 @@
  * SPDX-License-Identifier: MIT
  */
 
+#include "display/intel_overlay.h"
 #include "gem/i915_gem_mman.h"
 #include "gt/intel_engine_user.h"
-
 #include "pxp/intel_pxp.h"
 
 #include "i915_cmd_parser.h"
@@ -16,6 +16,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 			struct drm_file *file_priv)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
+	struct intel_display *display = &i915->display;
 	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	const struct sseu_dev_info *sseu = &to_gt(i915)->info.sseu;
 	drm_i915_getparam_t *param = data;
@@ -38,7 +39,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 		value = to_gt(i915)->ggtt->num_fences;
 		break;
 	case I915_PARAM_HAS_OVERLAY:
-		value = !!i915->display.overlay;
+		value = intel_overlay_available(display);
 		break;
 	case I915_PARAM_HAS_BSD:
 		value = !!intel_engine_lookup_user(i915,
-- 
2.39.5

