Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6016A9B8B7
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 22:02:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60B0E10E874;
	Thu, 24 Apr 2025 20:02:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gnxLXIOA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C054910E871;
 Thu, 24 Apr 2025 20:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745524956; x=1777060956;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8IQxgoTEidSbl2xFrfXgUCZbbLAzBgoUCV6xCYA1fp4=;
 b=gnxLXIOA2kFwZKc49j7MqTuMLZPB7t15+PyJw3OpbywObFp5EXoWCLhY
 e/EZMUqD3pQUp7e28GaeZGlCyfM9/eMW/KU/LdUr7krG0fIpc9roIEFmS
 Ws8Y51HTeJpTyVi3zLpk86Wo6D/AA2fKYZw9KJhsEW43n9ndKsw8Am/3+
 V5wpyfuBHrdMpQrygCkozQKtZMalyBpINkoca5hguMkmf2Xuochi/SMNK
 Nty9ZLUU3mTAjcTZn/OFdZuDipVISo86Fpjcc/80A8XVcDuJjuzAua/4U
 zYky4oHKPm3nDMt3G0+FBc0uphf5sDzKaOxRoiTwGyPDIX1Ig3EeBQ/v9 w==;
X-CSE-ConnectionGUID: FMtHnRyBRNGxA8UPynJYQw==
X-CSE-MsgGUID: 7T3DC0xWQnqVkPm6QGRc3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="58543451"
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="58543451"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:36 -0700
X-CSE-ConnectionGUID: 39n8xf2XSDOuf0iBT+MvQA==
X-CSE-MsgGUID: p35NDLU/SAyRBYmqN41CMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="133637209"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.48])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 09/10] drm/i915/hdcp: pass struct drm_device to driver
 specific HDCP GSC code
Date: Thu, 24 Apr 2025 23:01:41 +0300
Message-Id: <bf9aa8e44e18eef41e3077a2966935b4e2649b62.1745524803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1745524803.git.jani.nikula@intel.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
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

The driver specific HDCP GSC code will eventually be part of the driver
cores rather than display. Remove the struct intel_display references
from them, and pass struct drm_device instead.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c    | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h    |  6 +++---
 .../drm/i915/display/intel_hdcp_gsc_message.c    |  2 +-
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c         | 16 ++++++++--------
 5 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 39bcf8f3d810..3e3038f4ee1f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -254,7 +254,7 @@ static bool intel_hdcp2_prerequisite(struct intel_connector *connector)
 
 	/* If MTL+ make sure gsc is loaded and proxy is setup */
 	if (USE_HDCP_GSC(display)) {
-		if (!intel_hdcp_gsc_check_status(display))
+		if (!intel_hdcp_gsc_check_status(display->drm))
 			return false;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 4194ef77f7c3..6a22862d6be1 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -19,14 +19,14 @@ struct intel_hdcp_gsc_context {
 	void *hdcp_cmd_out;
 };
 
-bool intel_hdcp_gsc_check_status(struct intel_display *display)
+bool intel_hdcp_gsc_check_status(struct drm_device *drm)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct drm_i915_private *i915 = to_i915(drm);
 	struct intel_gt *gt = i915->media_gt;
 	struct intel_gsc_uc *gsc = gt ? &gt->uc.gsc : NULL;
 
 	if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
-		drm_dbg_kms(display->drm,
+		drm_dbg_kms(&i915->drm,
 			    "GSC components required for HDCP2.2 are not ready\n");
 		return false;
 	}
@@ -87,9 +87,9 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
 	return err;
 }
 
-struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct intel_display *display)
+struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct drm_device *drm)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct drm_i915_private *i915 = to_i915(drm);
 	struct intel_hdcp_gsc_context *gsc_context;
 	int ret;
 
@@ -103,7 +103,7 @@ struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct intel_display
 	 */
 	ret = intel_hdcp_gsc_initialize_message(i915, gsc_context);
 	if (ret) {
-		drm_err(display->drm, "Could not initialize gsc_context\n");
+		drm_err(&i915->drm, "Could not initialize gsc_context\n");
 		kfree(gsc_context);
 		gsc_context = ERR_PTR(ret);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
index e963c1fcc39e..e014336aa2e4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -9,15 +9,15 @@
 #include <linux/err.h>
 #include <linux/types.h>
 
-struct intel_display;
+struct drm_device;
 struct intel_hdcp_gsc_context;
 
 ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
 				void *msg_in, size_t msg_in_len,
 				void *msg_out, size_t msg_out_len);
-bool intel_hdcp_gsc_check_status(struct intel_display *display);
+bool intel_hdcp_gsc_check_status(struct drm_device *drm);
 
-struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct intel_display *display);
+struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct drm_device *drm);
 void intel_hdcp_gsc_context_free(struct intel_hdcp_gsc_context *gsc_context);
 
 #endif /* __INTEL_HDCP_GCS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
index 4226e8705d2b..98967bb148e3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
@@ -645,7 +645,7 @@ int intel_hdcp_gsc_init(struct intel_display *display)
 
 	mutex_lock(&display->hdcp.hdcp_mutex);
 
-	gsc_context = intel_hdcp_gsc_context_alloc(display);
+	gsc_context = intel_hdcp_gsc_context_alloc(display->drm);
 	if (IS_ERR(gsc_context)) {
 		ret = PTR_ERR(gsc_context);
 		kfree(arbiter);
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 078916072c10..b35a6f201d4a 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -30,9 +30,9 @@ struct intel_hdcp_gsc_context {
 
 #define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
 
-bool intel_hdcp_gsc_check_status(struct intel_display *display)
+bool intel_hdcp_gsc_check_status(struct drm_device *drm)
 {
-	struct xe_device *xe = to_xe_device(display->drm);
+	struct xe_device *xe = to_xe_device(drm);
 	struct xe_tile *tile = xe_device_get_root_tile(xe);
 	struct xe_gt *gt = tile->media_gt;
 	struct xe_gsc *gsc = &gt->uc.gsc;
@@ -64,10 +64,9 @@ bool intel_hdcp_gsc_check_status(struct intel_display *display)
 }
 
 /*This function helps allocate memory for the command that we will send to gsc cs */
-static int intel_hdcp_gsc_initialize_message(struct intel_display *display,
+static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
 					     struct intel_hdcp_gsc_context *gsc_context)
 {
-	struct xe_device *xe = to_xe_device(display->drm);
 	struct xe_bo *bo = NULL;
 	u64 cmd_in, cmd_out;
 	int ret = 0;
@@ -79,7 +78,7 @@ static int intel_hdcp_gsc_initialize_message(struct intel_display *display,
 				  XE_BO_FLAG_GGTT);
 
 	if (IS_ERR(bo)) {
-		drm_err(display->drm, "Failed to allocate bo for HDCP streaming command!\n");
+		drm_err(&xe->drm, "Failed to allocate bo for HDCP streaming command!\n");
 		ret = PTR_ERR(bo);
 		goto out;
 	}
@@ -97,8 +96,9 @@ static int intel_hdcp_gsc_initialize_message(struct intel_display *display,
 	return ret;
 }
 
-struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct intel_display *display)
+struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct drm_device *drm)
 {
+	struct xe_device *xe = to_xe_device(drm);
 	struct intel_hdcp_gsc_context *gsc_context;
 	int ret;
 
@@ -110,9 +110,9 @@ struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct intel_display
 	 * NOTE: No need to lock the comp mutex here as it is already
 	 * going to be taken before this function called
 	 */
-	ret = intel_hdcp_gsc_initialize_message(display, gsc_context);
+	ret = intel_hdcp_gsc_initialize_message(xe, gsc_context);
 	if (ret) {
-		drm_err(display->drm, "Could not initialize gsc_context\n");
+		drm_err(&xe->drm, "Could not initialize gsc_context\n");
 		kfree(gsc_context);
 		gsc_context = ERR_PTR(ret);
 	}
-- 
2.39.5

