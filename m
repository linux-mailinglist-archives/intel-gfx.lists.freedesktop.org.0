Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 442DE9D3983
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 12:30:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E22D010E716;
	Wed, 20 Nov 2024 11:30:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gwVoRvnG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A86EF10E716;
 Wed, 20 Nov 2024 11:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732102249; x=1763638249;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FGPVUqyhDBaC5NLGp855U75C2ElOsL0Uwdl8bY/PA6I=;
 b=gwVoRvnG09B73upTNlry0xkD+RYtijevcXik+sAw+nPf/5MQdxwn+NBt
 YPy7q1RRpN2gohf8Amt9xEruSVtUv4xN5NBrHnWudQudN/St88YWfghkv
 VNW29rKUYEvyNkntNOctizyeU2DNhzvAxv/kC5VSVzvS8AgL8MIM0BNWc
 1GtH4cRQCtZTf8k1bTqmqkLJLKxJLtiDMkQ0cy3uTXnbTUVdveq9lmCZ1
 ucBkx4VOmc4feqi9YhPxTnWykVtmYpr72q31Zb9zItg6lmZ17PBHdwASi
 gOpeNvvFlV/PvfJY8bFpY4pGHTK+lPgF1GCljpcsizIfNKOGCBahCfZKU Q==;
X-CSE-ConnectionGUID: JaiACf6EQfmimORARO/5BQ==
X-CSE-MsgGUID: noadAUFJTdiZWQVLuL69Dw==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32266649"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="32266649"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:30:49 -0800
X-CSE-ConnectionGUID: sMEAsR1FQiuYbXDp3+HPJA==
X-CSE-MsgGUID: iHEqIaKxS1C6HcqcstdxSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="94951506"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.28])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:30:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 2/5] drm/i915/overlay: add intel_overlay_available() and use it
Date: Wed, 20 Nov 2024 13:30:30 +0200
Message-Id: <26041645168ce3e76cb8f73bcb4c747619117e06.1732102179.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732102179.git.jani.nikula@intel.com>
References: <cover.1732102179.git.jani.nikula@intel.com>
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

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
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

