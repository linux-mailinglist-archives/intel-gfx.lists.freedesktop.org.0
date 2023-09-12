Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A40C79D0B0
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 14:06:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98B3F10E412;
	Tue, 12 Sep 2023 12:06:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85FBE10E417
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 12:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694520382; x=1726056382;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=COqZKJGX16JvILVLXX8XbI+6oKS/91J9v4iyTOphBK0=;
 b=fkaZIOCdSlSjeDGZ7hyp98v+eFp6aXKXiyBKw6AJ8LiCK8/tRRjYCnmQ
 mGPq7ml+Vy90pf47Ctn4tPOm29BpH1Jqk/iOt/0KcWmqiNLi/6TR83kzh
 Z/TfhES7BNjKxv+bunRJrfGgwwQa1Ra7Um39NFZBepIkbgqO0u+MgBkrs
 JVOxzlKA1kURS1nqTJ6/vlRWX8ezVq9ukO5xcXGkrwYAPFaYval7FFoGK
 Y5YkgXnEQiGXfNtf6JhxuuwV+x8HxCdaxfIJHKqQpP/KdImdZ2XIrbFDL
 BoyBLwA0seHsWsxcDBPGaxSiE1vwdPy2QRaNWX+Xvyjyl/gSq17MjNX2s A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378266478"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="378266478"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:05:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="720390728"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="720390728"
Received: from kscholl-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.206])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:05:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Sep 2023 15:05:35 +0300
Message-Id: <20230912120537.2158209-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: move more of the display probe to
 display code
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
Cc: jani.nikula@intel.com, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Initializing i915->display.info.__device_info and DISPLAY_RUNTIME_INFO()
really belongs in display code. Move them there.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 24 ++++++++++++++++---
 .../drm/i915/display/intel_display_device.h   |  4 +---
 drivers/gpu/drm/i915/intel_device_info.c      | 14 +----------
 3 files changed, 23 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index c39f8a15d8aa..ed564566e31b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -850,9 +850,9 @@ probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step
 	return &no_display;
 }
 
-const struct intel_display_device_info *
-intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
-			   u16 *gmdid_ver, u16 *gmdid_rel, u16 *gmdid_step)
+static const struct intel_display_device_info *
+probe_display(struct drm_i915_private *i915, bool has_gmdid,
+	      u16 *gmdid_ver, u16 *gmdid_rel, u16 *gmdid_step)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	int i;
@@ -876,6 +876,24 @@ intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
 	return &no_display;
 }
 
+void intel_display_device_probe(struct drm_i915_private *i915)
+{
+	u16 ver, rel, step;
+
+	/* Probe display support */
+	i915->display.info.__device_info = probe_display(i915, HAS_GMD_ID(i915),
+							 &ver, &rel, &step);
+	memcpy(DISPLAY_RUNTIME_INFO(i915),
+	       &DISPLAY_INFO(i915)->__runtime_defaults,
+	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
+
+	if (HAS_GMD_ID(i915)) {
+		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
+		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
+		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
+	}
+}
+
 void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
 {
 	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 8198401aa5be..a7b6469b43a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -149,9 +149,7 @@ struct intel_display_device_info {
 	} color;
 };
 
-const struct intel_display_device_info *
-intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
-			   u16 *ver, u16 *rel, u16 *step);
+void intel_display_device_probe(struct drm_i915_private *i915);
 void intel_display_device_info_runtime_init(struct drm_i915_private *i915);
 
 void intel_display_device_info_print(const struct intel_display_device_info *info,
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 9dfa680a4c62..b9b8b22540cb 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -410,7 +410,6 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
 				     const struct intel_device_info *match_info)
 {
 	struct intel_runtime_info *runtime;
-	u16 ver, rel, step;
 
 	/* Setup INTEL_INFO() */
 	i915->__info = match_info;
@@ -419,18 +418,7 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
 	runtime = RUNTIME_INFO(i915);
 	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
 
-	/* Probe display support */
-	i915->display.info.__device_info = intel_display_device_probe(i915, HAS_GMD_ID(i915),
-								      &ver, &rel, &step);
-	memcpy(DISPLAY_RUNTIME_INFO(i915),
-	       &DISPLAY_INFO(i915)->__runtime_defaults,
-	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
-
-	if (HAS_GMD_ID(i915)) {
-		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
-		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
-		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
-	}
+	intel_display_device_probe(i915);
 
 	runtime->device_id = device_id;
 }
-- 
2.39.2

