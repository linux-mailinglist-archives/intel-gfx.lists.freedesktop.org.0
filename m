Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB159873638
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 13:25:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15CC9113105;
	Wed,  6 Mar 2024 12:24:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QXPrR8n6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50EA010FB48;
 Wed,  6 Mar 2024 12:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709727897; x=1741263897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WP2SU+kHMgAIPBzeJ4Sq2l7Y2T5Ojg9U7p4T4Txb0n4=;
 b=QXPrR8n6YBip5aN2XaBBFgYVfj189exTAqEoAmlQp8U/mCOpiKHDxnEa
 k2VJW7Hq4l+DmIv9hVLCfYzID3PhCJHjHgTjShy4E0d7VIQCz2+HJg6/2
 SohkEpei6d/xK844/PlUk5LCdNXeUyiH+qhy35e4iM52QzrLrqAWiyuBS
 KHrFwTmBK/LmrRIaWE5dpu+CiXNGDuU+Kzc3umco9kalq8WvBZCH98rw9
 mK6pOMwlHNz660BCqMVdSjUo6i339n/2c57Nqx4B9fxsf56V7aJeSqfwK
 XZte1kEjTX9pMMgAZ+erI/41oVO4ilqMvD0PdQt2JC5Qoi7bqO9GNXeE2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4919419"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="4919419"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 04:24:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14415746"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.211])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 04:24:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [RFC v2 1/4] drm/i915/display: ideas for further separating display
 code from the rest
Date: Wed,  6 Mar 2024 14:24:35 +0200
Message-Id: <7777ff70e2be0663de4398aa6f75f0c54146cbfc.1709727127.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1709727127.git.jani.nikula@intel.com>
References: <cover.1709727127.git.jani.nikula@intel.com>
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

Long term goal: Separate display code from struct drm_i915_private and
i915_drv.h, and everything in them. Ditto for xe.

First step, draft some ideas how we could use struct intel_display as
the main device structure for display, while struct drm_device remains
in struct drm_i915_private (or, in the case of xe, in struct xe_device).

To get at struct drm_device * given a struct intel_display *, simply
store a backpointer.

To get at struct intel_display * given a struct drm_device *, require
storing a struct intel_display * right after struct drm_device in
memory. It's slightly hackish, but devm_drm_dev_alloc() facilitates
defining the enclosing struct as we wish.

A shared named struct for this would be nice, but that would require
changing all the i915->drm and xe->drm dereferences. The use of an
unnamed __packed struct avoids that.

Users are added in follow-up patches; the patches may be squashed
together before final submission.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h |  3 +++
 .../gpu/drm/i915/display/intel_display_device.c   | 13 +++++++++++++
 drivers/gpu/drm/i915/i915_drv.h                   | 11 ++++++++++-
 drivers/gpu/drm/xe/xe_device_types.h              | 15 +++++++++++++--
 4 files changed, 39 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 2167dbee5eea..85b542bb45e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -282,6 +282,9 @@ struct intel_wm {
 };
 
 struct intel_display {
+	/* drm device backpointer */
+	struct drm_device *drm;
+
 	/* Display functions */
 	struct {
 		/* Top level crtc-ish functions */
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index c02d79b50006..63de9917e346 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -922,6 +922,19 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	const struct intel_display_device_info *info;
 	u16 ver, rel, step;
 
+	/*
+	 * These are here for now to do them as early as possible. i915 has just
+	 * been allocated, drm isn't even initialized yet, but we have the
+	 * pointer.
+	 *
+	 * Later on, the display probe would allocate struct intel_display
+	 * itself, and return the pointer to the caller, for whom struct
+	 * intel_display would be an opaque type, a cookie to be passed on to
+	 * display functions.
+	 */
+	i915->__intel_display_private = &i915->display;
+	i915->display.drm = &i915->drm;
+
 	if (HAS_GMD_ID(i915))
 		info = probe_gmdid_display(i915, &ver, &rel, &step);
 	else
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e81b3b2858ac..2e80afbe7a4e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -185,7 +185,16 @@ struct i915_selftest_stash {
 };
 
 struct drm_i915_private {
-	struct drm_device drm;
+	struct {
+		struct drm_device drm;
+
+		/*
+		 * Display private data. Do *not* access directly. Must be
+		 * placed right after drm_device to facilitate getting to it
+		 * given a drm device pointer.
+		 */
+		struct intel_display *__intel_display_private;
+	} __packed;
 
 	struct intel_display display;
 
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 9785eef2e5a4..0347fbc925c9 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -210,8 +210,19 @@ struct xe_tile {
  * struct xe_device - Top level struct of XE device
  */
 struct xe_device {
-	/** @drm: drm device */
-	struct drm_device drm;
+	struct {
+		/** @drm: drm device */
+		struct drm_device drm;
+
+#if IS_ENABLED(CONFIG_DRM_XE_DISPLAY)
+		/**
+		 * @__intel_display_private: Display private data. Do *not*
+		 * access directly. Must be placed right after drm_device to
+		 * facilitate getting to it given a drm device pointer.
+		 */
+		struct intel_display *__intel_display_private;
+#endif
+	} __packed;
 
 	/** @devcoredump: device coredump */
 	struct xe_devcoredump devcoredump;
-- 
2.39.2

