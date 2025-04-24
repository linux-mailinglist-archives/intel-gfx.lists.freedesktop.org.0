Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC18A9B8AF
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 22:02:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30F9C10E86B;
	Thu, 24 Apr 2025 20:02:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fxfjn9c/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2285A10E86B;
 Thu, 24 Apr 2025 20:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745524931; x=1777060931;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m+7PJouqZMk0LdeozilcWQTihfndbAAIGbVN0QLWdjw=;
 b=Fxfjn9c/LYQ86imwHfM6dJ4R/hCPUsmujUeNiruIDDmIsLBtzQvckiqt
 H5c+iZIUoG8xFR4L98VuTeeS9o6KyVKPrbnKzD3cK1HF8JskSxNEB3B+a
 kob5JIHVdbtvrD6om6n6fy4zHfda5rjF6dI6MZZ6thLwip6DI5jVSoEMC
 ciMK3h+4gnHK79QuG3Z+EXP0m85NZTKOL7V4eQjNBAAMgFP8YRkZRAI42
 bmvTufpmGY2AKez3QpI8J6dv1M6/qIHK0eQpn3HlSwFjalBhVKoU+6qG3
 dueJcbNSGfsYioW2olOeNDuuUVsKLQ9t3+yMAuIkU7VGwDCAq6C7eKWbB g==;
X-CSE-ConnectionGUID: MCyGf8IETjSXtwGmw2UCnw==
X-CSE-MsgGUID: ubLQJs5TTqGIEySK0gym2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="58543407"
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="58543407"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:10 -0700
X-CSE-ConnectionGUID: XgC7UpeaQ7W/WxMfKjdscQ==
X-CSE-MsgGUID: 61XjDWqZSTihyBK/OiD0MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="137788348"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.48])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 04/10] drm/i915/hdcp: rename struct intel_hdcp_gsc_message to
 intel_hdcp_gsc_context
Date: Thu, 24 Apr 2025 23:01:36 +0300
Message-Id: <ca0a802a81ba4e96e7c40646a32386d4351d6ff4.1745524803.git.jani.nikula@intel.com>
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

It's really about the context more than about the message.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 52 ++++++++---------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  6 +-
 .../drm/i915/display/intel_hdcp_gsc_message.c | 14 ++---
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 58 +++++++++----------
 5 files changed, 66 insertions(+), 66 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 613af57abd1b..dc834cef75c7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -430,7 +430,7 @@ struct intel_display {
 		 * reused when sending message to gsc cs.
 		 * this is only populated post Meteorlake
 		 */
-		struct intel_hdcp_gsc_message *hdcp_message;
+		struct intel_hdcp_gsc_context *gsc_context;
 		/* Mutex to protect the above hdcp related values. */
 		struct mutex hdcp_mutex;
 	} hdcp;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 68d912dbd658..3e1dc2f7310c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -12,7 +12,7 @@
 #include "i915_utils.h"
 #include "intel_hdcp_gsc.h"
 
-struct intel_hdcp_gsc_message {
+struct intel_hdcp_gsc_context {
 	struct i915_vma *vma;
 	void *hdcp_cmd_in;
 	void *hdcp_cmd_out;
@@ -40,7 +40,7 @@ bool intel_hdcp_gsc_check_status(struct intel_display *display)
 
 /*This function helps allocate memory for the command that we will send to gsc cs */
 static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
-					     struct intel_hdcp_gsc_message *hdcp_message)
+					     struct intel_hdcp_gsc_context *gsc_context)
 {
 	struct intel_gt *gt = i915->media_gt;
 	struct drm_i915_gem_object *obj = NULL;
@@ -77,9 +77,9 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
 
 	memset(cmd_in, 0, obj->base.size);
 
-	hdcp_message->hdcp_cmd_in = cmd_in;
-	hdcp_message->hdcp_cmd_out = cmd_out;
-	hdcp_message->vma = vma;
+	gsc_context->hdcp_cmd_in = cmd_in;
+	gsc_context->hdcp_cmd_out = cmd_out;
+	gsc_context->vma = vma;
 
 	return 0;
 
@@ -90,37 +90,37 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
 	return err;
 }
 
-struct intel_hdcp_gsc_message *intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
+struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
-	struct intel_hdcp_gsc_message *hdcp_message;
+	struct intel_hdcp_gsc_context *gsc_context;
 	int ret;
 
-	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
-	if (!hdcp_message)
+	gsc_context = kzalloc(sizeof(*gsc_context), GFP_KERNEL);
+	if (!gsc_context)
 		return ERR_PTR(-ENOMEM);
 
 	/*
 	 * NOTE: No need to lock the comp mutex here as it is already
 	 * going to be taken before this function called
 	 */
-	ret = intel_hdcp_gsc_initialize_message(i915, hdcp_message);
+	ret = intel_hdcp_gsc_initialize_message(i915, gsc_context);
 	if (ret) {
-		drm_err(display->drm, "Could not initialize hdcp_message\n");
-		kfree(hdcp_message);
-		hdcp_message = ERR_PTR(ret);
+		drm_err(display->drm, "Could not initialize gsc_context\n");
+		kfree(gsc_context);
+		gsc_context = ERR_PTR(ret);
 	}
 
-	return hdcp_message;
+	return gsc_context;
 }
 
-void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_message *hdcp_message)
+void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_context *gsc_context)
 {
-	if (!hdcp_message)
+	if (!gsc_context)
 		return;
 
-	i915_vma_unpin_and_release(&hdcp_message->vma, I915_VMA_RELEASE_MAP);
-	kfree(hdcp_message);
+	i915_vma_unpin_and_release(&gsc_context->vma, I915_VMA_RELEASE_MAP);
+	kfree(gsc_context);
 }
 
 static int intel_gsc_send_sync(struct drm_i915_private *i915,
@@ -167,7 +167,7 @@ static int intel_gsc_send_sync(struct drm_i915_private *i915,
 /*
  * This function can now be used for sending requests and will also handle
  * receipt of reply messages hence no different function of message retrieval
- * is required. We will initialize intel_hdcp_gsc_message structure then add
+ * is required. We will initialize intel_hdcp_gsc_context structure then add
  * gsc cs memory header as stated in specs after which the normal HDCP payload
  * will follow
  */
@@ -178,7 +178,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 	struct intel_gt *gt = i915->media_gt;
 	struct intel_gsc_mtl_header *header_in, *header_out;
 	const size_t max_msg_size = PAGE_SIZE - sizeof(*header_in);
-	struct intel_hdcp_gsc_message *hdcp_message;
+	struct intel_hdcp_gsc_context *gsc_context;
 	u64 addr_in, addr_out, host_session_id;
 	u32 reply_size, msg_size_in, msg_size_out;
 	int ret, tries = 0;
@@ -191,10 +191,10 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 
 	msg_size_in = msg_in_len + sizeof(*header_in);
 	msg_size_out = msg_out_len + sizeof(*header_out);
-	hdcp_message = i915->display.hdcp.hdcp_message;
-	header_in = hdcp_message->hdcp_cmd_in;
-	header_out = hdcp_message->hdcp_cmd_out;
-	addr_in = i915_ggtt_offset(hdcp_message->vma);
+	gsc_context = i915->display.hdcp.gsc_context;
+	header_in = gsc_context->hdcp_cmd_in;
+	header_out = gsc_context->hdcp_cmd_out;
+	addr_in = i915_ggtt_offset(gsc_context->vma);
 	addr_out = addr_in + PAGE_SIZE;
 
 	memset(header_in, 0, msg_size_in);
@@ -202,7 +202,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 	get_random_bytes(&host_session_id, sizeof(u64));
 	intel_gsc_uc_heci_cmd_emit_mtl_header(header_in, HECI_MEADDRESS_HDCP,
 					      msg_size_in, host_session_id);
-	memcpy(hdcp_message->hdcp_cmd_in + sizeof(*header_in), msg_in, msg_in_len);
+	memcpy(gsc_context->hdcp_cmd_in + sizeof(*header_in), msg_in, msg_in_len);
 
 	/*
 	 * Keep sending request in case the pending bit is set no need to add
@@ -236,7 +236,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 			    reply_size, (u32)msg_out_len);
 	}
 
-	memcpy(msg_out, hdcp_message->hdcp_cmd_out + sizeof(*header_out), msg_out_len);
+	memcpy(msg_out, gsc_context->hdcp_cmd_out + sizeof(*header_out), msg_out_len);
 
 err:
 	return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
index f3362720d742..31080df80097 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -11,7 +11,7 @@
 
 struct drm_i915_private;
 struct intel_display;
-struct intel_hdcp_gsc_message;
+struct intel_hdcp_gsc_context;
 
 bool intel_hdcp_gsc_cs_required(struct intel_display *display);
 ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
@@ -19,7 +19,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 				size_t msg_out_len);
 bool intel_hdcp_gsc_check_status(struct intel_display *display);
 
-struct intel_hdcp_gsc_message *intel_hdcp_gsc_hdcp2_init(struct intel_display *display);
-void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_message *hdcp_message);
+struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct intel_display *display);
+void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_context *gsc_context);
 
 #endif /* __INTEL_HDCP_GCS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
index 11aa6772f272..94ca571ab481 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
@@ -633,7 +633,7 @@ static const struct i915_hdcp_ops gsc_hdcp_ops = {
 
 int intel_hdcp_gsc_init(struct intel_display *display)
 {
-	struct intel_hdcp_gsc_message *hdcp_message;
+	struct intel_hdcp_gsc_context *gsc_context;
 	struct i915_hdcp_arbiter *arbiter;
 	int ret = 0;
 
@@ -643,9 +643,9 @@ int intel_hdcp_gsc_init(struct intel_display *display)
 
 	mutex_lock(&display->hdcp.hdcp_mutex);
 
-	hdcp_message = intel_hdcp_gsc_hdcp2_init(display);
-	if (IS_ERR(hdcp_message)) {
-		ret = PTR_ERR(hdcp_message);
+	gsc_context = intel_hdcp_gsc_hdcp2_init(display);
+	if (IS_ERR(gsc_context)) {
+		ret = PTR_ERR(gsc_context);
 		kfree(arbiter);
 		goto out;
 	}
@@ -653,7 +653,7 @@ int intel_hdcp_gsc_init(struct intel_display *display)
 	display->hdcp.arbiter = arbiter;
 	display->hdcp.arbiter->hdcp_dev = display->drm->dev;
 	display->hdcp.arbiter->ops = &gsc_hdcp_ops;
-	display->hdcp.hdcp_message = hdcp_message;
+	display->hdcp.gsc_context = gsc_context;
 
 out:
 	mutex_unlock(&display->hdcp.hdcp_mutex);
@@ -663,8 +663,8 @@ int intel_hdcp_gsc_init(struct intel_display *display)
 
 void intel_hdcp_gsc_fini(struct intel_display *display)
 {
-	intel_hdcp_gsc_free_message(display->hdcp.hdcp_message);
-	display->hdcp.hdcp_message = NULL;
+	intel_hdcp_gsc_free_message(display->hdcp.gsc_context);
+	display->hdcp.gsc_context = NULL;
 	kfree(display->hdcp.arbiter);
 	display->hdcp.arbiter = NULL;
 }
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index d15565bf2f9f..68fac12ac666 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -21,7 +21,7 @@
 
 #define HECI_MEADDRESS_HDCP 18
 
-struct intel_hdcp_gsc_message {
+struct intel_hdcp_gsc_context {
 	struct xe_bo *hdcp_bo;
 	u64 hdcp_cmd_in;
 	u64 hdcp_cmd_out;
@@ -69,7 +69,7 @@ bool intel_hdcp_gsc_check_status(struct intel_display *display)
 
 /*This function helps allocate memory for the command that we will send to gsc cs */
 static int intel_hdcp_gsc_initialize_message(struct intel_display *display,
-					     struct intel_hdcp_gsc_message *hdcp_message)
+					     struct intel_hdcp_gsc_context *gsc_context)
 {
 	struct xe_device *xe = to_xe_device(display->drm);
 	struct xe_bo *bo = NULL;
@@ -92,57 +92,57 @@ static int intel_hdcp_gsc_initialize_message(struct intel_display *display,
 	cmd_out = cmd_in + PAGE_SIZE;
 	xe_map_memset(xe, &bo->vmap, 0, 0, bo->size);
 
-	hdcp_message->hdcp_bo = bo;
-	hdcp_message->hdcp_cmd_in = cmd_in;
-	hdcp_message->hdcp_cmd_out = cmd_out;
+	gsc_context->hdcp_bo = bo;
+	gsc_context->hdcp_cmd_in = cmd_in;
+	gsc_context->hdcp_cmd_out = cmd_out;
 out:
 	return ret;
 }
 
-struct intel_hdcp_gsc_message *intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
+struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
 {
-	struct intel_hdcp_gsc_message *hdcp_message;
+	struct intel_hdcp_gsc_context *gsc_context;
 	int ret;
 
-	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
-	if (!hdcp_message)
+	gsc_context = kzalloc(sizeof(*gsc_context), GFP_KERNEL);
+	if (!gsc_context)
 		return ERR_PTR(-ENOMEM);
 
 	/*
 	 * NOTE: No need to lock the comp mutex here as it is already
 	 * going to be taken before this function called
 	 */
-	ret = intel_hdcp_gsc_initialize_message(display, hdcp_message);
+	ret = intel_hdcp_gsc_initialize_message(display, gsc_context);
 	if (ret) {
-		drm_err(display->drm, "Could not initialize hdcp_message\n");
-		kfree(hdcp_message);
-		hdcp_message = ERR_PTR(ret);
+		drm_err(display->drm, "Could not initialize gsc_context\n");
+		kfree(gsc_context);
+		gsc_context = ERR_PTR(ret);
 	}
 
-	return hdcp_message;
+	return gsc_context;
 }
 
-void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_message *hdcp_message)
+void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_context *gsc_context)
 {
-	if (!hdcp_message)
+	if (!gsc_context)
 		return;
 
-	xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
-	kfree(hdcp_message);
+	xe_bo_unpin_map_no_vm(gsc_context->hdcp_bo);
+	kfree(gsc_context);
 }
 
 static int xe_gsc_send_sync(struct xe_device *xe,
-			    struct intel_hdcp_gsc_message *hdcp_message,
+			    struct intel_hdcp_gsc_context *gsc_context,
 			    u32 msg_size_in, u32 msg_size_out,
 			    u32 addr_out_off)
 {
-	struct xe_gt *gt = hdcp_message->hdcp_bo->tile->media_gt;
-	struct iosys_map *map = &hdcp_message->hdcp_bo->vmap;
+	struct xe_gt *gt = gsc_context->hdcp_bo->tile->media_gt;
+	struct iosys_map *map = &gsc_context->hdcp_bo->vmap;
 	struct xe_gsc *gsc = &gt->uc.gsc;
 	int ret;
 
-	ret = xe_gsc_pkt_submit_kernel(gsc, hdcp_message->hdcp_cmd_in, msg_size_in,
-				       hdcp_message->hdcp_cmd_out, msg_size_out);
+	ret = xe_gsc_pkt_submit_kernel(gsc, gsc_context->hdcp_cmd_in, msg_size_in,
+				       gsc_context->hdcp_cmd_out, msg_size_out);
 	if (ret) {
 		drm_err(&xe->drm, "failed to send gsc HDCP msg (%d)\n", ret);
 		return ret;
@@ -162,7 +162,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
 				size_t msg_out_len)
 {
 	const size_t max_msg_size = PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
-	struct intel_hdcp_gsc_message *hdcp_message;
+	struct intel_hdcp_gsc_context *gsc_context;
 	u64 host_session_id;
 	u32 msg_size_in, msg_size_out;
 	u32 addr_out_off, addr_in_wr_off = 0;
@@ -175,15 +175,15 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
 
 	msg_size_in = msg_in_len + HDCP_GSC_HEADER_SIZE;
 	msg_size_out = msg_out_len + HDCP_GSC_HEADER_SIZE;
-	hdcp_message = xe->display.hdcp.hdcp_message;
+	gsc_context = xe->display.hdcp.gsc_context;
 	addr_out_off = PAGE_SIZE;
 
 	host_session_id = xe_gsc_create_host_session_id();
 	xe_pm_runtime_get_noresume(xe);
-	addr_in_wr_off = xe_gsc_emit_header(xe, &hdcp_message->hdcp_bo->vmap,
+	addr_in_wr_off = xe_gsc_emit_header(xe, &gsc_context->hdcp_bo->vmap,
 					    addr_in_wr_off, HECI_MEADDRESS_HDCP,
 					    host_session_id, msg_in_len);
-	xe_map_memcpy_to(xe, &hdcp_message->hdcp_bo->vmap, addr_in_wr_off,
+	xe_map_memcpy_to(xe, &gsc_context->hdcp_bo->vmap, addr_in_wr_off,
 			 msg_in, msg_in_len);
 	/*
 	 * Keep sending request in case the pending bit is set no need to add
@@ -192,7 +192,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
 	 * 20 times each message 50 ms apart
 	 */
 	do {
-		ret = xe_gsc_send_sync(xe, hdcp_message, msg_size_in, msg_size_out,
+		ret = xe_gsc_send_sync(xe, gsc_context, msg_size_in, msg_size_out,
 				       addr_out_off);
 
 		/* Only try again if gsc says so */
@@ -206,7 +206,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
 	if (ret)
 		goto out;
 
-	xe_map_memcpy_from(xe, msg_out, &hdcp_message->hdcp_bo->vmap,
+	xe_map_memcpy_from(xe, msg_out, &gsc_context->hdcp_bo->vmap,
 			   addr_out_off + HDCP_GSC_HEADER_SIZE,
 			   msg_out_len);
 
-- 
2.39.5

