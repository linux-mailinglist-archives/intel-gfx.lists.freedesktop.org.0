Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32928A9B8B0
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 22:02:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93EF910E868;
	Thu, 24 Apr 2025 20:02:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XrBP+gtK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF8510E85C;
 Thu, 24 Apr 2025 20:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745524926; x=1777060926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eoH2wUTC+CJjg/ErGnQhj2ZwAD4P7vmajePZYlRCTOc=;
 b=XrBP+gtKePFlRtrsEIDwwuAbV8y0CbDzXTkfk67SnsScb6l8Cuy/O+It
 Oywgg60Xbc7oeF0QTSJ8vzMNz1tX4AedxPz14GXagrvEWYpH01ZTA/F/l
 HJvtFb+MpbChq6dhdve08Y7BC3Uf0d2u9SByjFtZvfH5k/9tLPJSigoWP
 3dIxTfHiyzIwYRSkj0phX+9Q+6LZu5XaPE81emoaZt1IHYxEXUzU/E+0w
 Z++4MP64O8giJ5cZ9Kbd3PdnRBgBdmpoVGL1BqTGT5C8CNTuU/SCS2BY/
 jhDENpATEelvSrNa2wWZ/39j0698QrP5+Wk4HDKcOwVAtQSTAhS3LbEFI w==;
X-CSE-ConnectionGUID: JtR5/woNT42riNT+x0tqMg==
X-CSE-MsgGUID: AtjfTCyVTIq56X0j5DPLaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="58543401"
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="58543401"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:05 -0700
X-CSE-ConnectionGUID: bv7m0EmHTha8YmkfBw14LQ==
X-CSE-MsgGUID: jcjQ+YauTrqsDXiUB2n0Dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="137788322"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.48])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 03/10] drm/i915/hdcp: split HDCP GSC message alloc/save
 responsibilities
Date: Thu, 24 Apr 2025 23:01:35 +0300
Message-Id: <a74fcc941126bf92d12115b5faf4f75099e26242.1745524803.git.jani.nikula@intel.com>
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

Allocate and initialize the HDCP GSC message in
intel_hdcp_gsc_hdcp2_init() as before, but store the pointer to
display->hdcp.hdcp_message in the caller. Similarly, pass in the pointer
to intel_hdcp_gsc_free_message().

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 22 +++++++++----------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  4 ++--
 .../drm/i915/display/intel_hdcp_gsc_message.c | 12 ++++++----
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 22 ++++++++-----------
 4 files changed, 29 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 92a3ad2166f6..68d912dbd658 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -90,37 +90,35 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
 	return err;
 }
 
-int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
+struct intel_hdcp_gsc_message *intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_hdcp_gsc_message *hdcp_message;
 	int ret;
 
 	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
-
 	if (!hdcp_message)
-		return -ENOMEM;
+		return ERR_PTR(-ENOMEM);
 
 	/*
 	 * NOTE: No need to lock the comp mutex here as it is already
 	 * going to be taken before this function called
 	 */
-	display->hdcp.hdcp_message = hdcp_message;
 	ret = intel_hdcp_gsc_initialize_message(i915, hdcp_message);
-
-	if (ret)
+	if (ret) {
 		drm_err(display->drm, "Could not initialize hdcp_message\n");
+		kfree(hdcp_message);
+		hdcp_message = ERR_PTR(ret);
+	}
 
-	return ret;
+	return hdcp_message;
 }
 
-void intel_hdcp_gsc_free_message(struct intel_display *display)
+void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_message *hdcp_message)
 {
-	struct intel_hdcp_gsc_message *hdcp_message =
-					display->hdcp.hdcp_message;
+	if (!hdcp_message)
+		return;
 
-	hdcp_message->hdcp_cmd_in = NULL;
-	hdcp_message->hdcp_cmd_out = NULL;
 	i915_vma_unpin_and_release(&hdcp_message->vma, I915_VMA_RELEASE_MAP);
 	kfree(hdcp_message);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
index ad41e7e80095..f3362720d742 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -19,7 +19,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 				size_t msg_out_len);
 bool intel_hdcp_gsc_check_status(struct intel_display *display);
 
-int intel_hdcp_gsc_hdcp2_init(struct intel_display *display);
-void intel_hdcp_gsc_free_message(struct intel_display *display);
+struct intel_hdcp_gsc_message *intel_hdcp_gsc_hdcp2_init(struct intel_display *display);
+void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_message *hdcp_message);
 
 #endif /* __INTEL_HDCP_GCS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
index 8e2aafff71d5..11aa6772f272 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
@@ -633,8 +633,9 @@ static const struct i915_hdcp_ops gsc_hdcp_ops = {
 
 int intel_hdcp_gsc_init(struct intel_display *display)
 {
+	struct intel_hdcp_gsc_message *hdcp_message;
 	struct i915_hdcp_arbiter *arbiter;
-	int ret;
+	int ret = 0;
 
 	arbiter = kzalloc(sizeof(*arbiter), GFP_KERNEL);
 	if (!arbiter)
@@ -642,8 +643,9 @@ int intel_hdcp_gsc_init(struct intel_display *display)
 
 	mutex_lock(&display->hdcp.hdcp_mutex);
 
-	ret = intel_hdcp_gsc_hdcp2_init(display);
-	if (ret) {
+	hdcp_message = intel_hdcp_gsc_hdcp2_init(display);
+	if (IS_ERR(hdcp_message)) {
+		ret = PTR_ERR(hdcp_message);
 		kfree(arbiter);
 		goto out;
 	}
@@ -651,6 +653,7 @@ int intel_hdcp_gsc_init(struct intel_display *display)
 	display->hdcp.arbiter = arbiter;
 	display->hdcp.arbiter->hdcp_dev = display->drm->dev;
 	display->hdcp.arbiter->ops = &gsc_hdcp_ops;
+	display->hdcp.hdcp_message = hdcp_message;
 
 out:
 	mutex_unlock(&display->hdcp.hdcp_mutex);
@@ -660,7 +663,8 @@ int intel_hdcp_gsc_init(struct intel_display *display)
 
 void intel_hdcp_gsc_fini(struct intel_display *display)
 {
-	intel_hdcp_gsc_free_message(display);
+	intel_hdcp_gsc_free_message(display->hdcp.hdcp_message);
+	display->hdcp.hdcp_message = NULL;
 	kfree(display->hdcp.arbiter);
 	display->hdcp.arbiter = NULL;
 }
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 21cfecf077bf..d15565bf2f9f 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -99,15 +99,14 @@ static int intel_hdcp_gsc_initialize_message(struct intel_display *display,
 	return ret;
 }
 
-int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
+struct intel_hdcp_gsc_message *intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
 {
 	struct intel_hdcp_gsc_message *hdcp_message;
 	int ret;
 
 	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
-
 	if (!hdcp_message)
-		return -ENOMEM;
+		return ERR_PTR(-ENOMEM);
 
 	/*
 	 * NOTE: No need to lock the comp mutex here as it is already
@@ -117,22 +116,19 @@ int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
 	if (ret) {
 		drm_err(display->drm, "Could not initialize hdcp_message\n");
 		kfree(hdcp_message);
-		return ret;
+		hdcp_message = ERR_PTR(ret);
 	}
 
-	display->hdcp.hdcp_message = hdcp_message;
-	return ret;
+	return hdcp_message;
 }
 
-void intel_hdcp_gsc_free_message(struct intel_display *display)
+void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_message *hdcp_message)
 {
-	struct intel_hdcp_gsc_message *hdcp_message = display->hdcp.hdcp_message;
+	if (!hdcp_message)
+		return;
 
-	if (hdcp_message) {
-		xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
-		kfree(hdcp_message);
-		display->hdcp.hdcp_message = NULL;
-	}
+	xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
+	kfree(hdcp_message);
 }
 
 static int xe_gsc_send_sync(struct xe_device *xe,
-- 
2.39.5

