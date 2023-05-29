Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBD17148E0
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 13:50:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D94DA10E27C;
	Mon, 29 May 2023 11:50:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6ABC10E0AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 11:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685361037; x=1716897037;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kolHgHcUrbnFcv1BOAzRs9sG+89tzBRqsy/usHlo12A=;
 b=aV7oReUs6OetK4t5voPU2Ctc3qzEkVHxDHBDIkVmGy/bHLLhqSCWow4m
 8rtapgafHXI+fTy/G+e0xrpJUinnSDIlrhROyAFspQTi5DF1BVkwFxh2C
 QVM5ofIYGnUowzGqXo1bwGpVQ5PzYQXBB45etGsH66BVr1/zHo6YqcsdJ
 lPdQBPND+cxxeHL3l8omKC+UY68NgkwTcJ1WnHtqAhB2C9ejISgWiOyh3
 Nxeq0kC1gsxlVkAMokfMkQC5554gKEu2HgFeJi2gP5A2eP0hapJC4/eko
 7ktZ/oxmrzm/2ePExk6xFeYtGWnNaE3hUHWB+30pInO8/dFr+b1s7kG/r w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="418171563"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="418171563"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 04:50:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="700237597"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="700237597"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 29 May 2023 04:50:35 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 May 2023 17:19:01 +0530
Message-Id: <20230529114902.1528192-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230529114902.1528192-1-suraj.kandpal@intel.com>
References: <20230529114902.1528192-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Allocate a multipage object
 to hdcp_gsc_message
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Allocate a multipage object that can be used for input
and output for intel_hdcp_gsc_message so that corruption of
output message can be avoided by the current overwriting method.

--v2
-Change approach from allocating two objects to just one multipage
object [Daniele]

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 55 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  3 +-
 2 files changed, 34 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 7e52aea6aa17..72d1e261d0a9 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -621,24 +621,26 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
 	struct intel_gt *gt = i915->media_gt;
 	struct drm_i915_gem_object *obj = NULL;
 	struct i915_vma *vma = NULL;
-	void *cmd;
+	void *cmd_in, *cmd_out;
 	int err;
 
-	/* allocate object of one page for HDCP command memory and store it */
-	obj = i915_gem_object_create_shmem(i915, PAGE_SIZE);
+	/* allocate object of two page for HDCP command memory and store it */
+	obj = i915_gem_object_create_shmem(i915, 2 * PAGE_SIZE);
 
 	if (IS_ERR(obj)) {
 		drm_err(&i915->drm, "Failed to allocate HDCP streaming command!\n");
 		return PTR_ERR(obj);
 	}
 
-	cmd = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
-	if (IS_ERR(cmd)) {
+	cmd_in = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
+	if (IS_ERR(cmd_in)) {
 		drm_err(&i915->drm, "Failed to map gsc message page!\n");
-		err = PTR_ERR(cmd);
+		err = PTR_ERR(cmd_in);
 		goto out_unpin;
 	}
 
+	cmd_out = cmd_in + PAGE_SIZE;
+
 	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
 	if (IS_ERR(vma)) {
 		err = PTR_ERR(vma);
@@ -649,9 +651,10 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
 	if (err)
 		goto out_unmap;
 
-	memset(cmd, 0, obj->base.size);
+	memset(cmd_in, 0, obj->base.size);
 
-	hdcp_message->hdcp_cmd = cmd;
+	hdcp_message->hdcp_cmd_in = cmd_in;
+	hdcp_message->hdcp_cmd_out = cmd_out;
 	hdcp_message->vma = vma;
 
 	return 0;
@@ -668,7 +671,7 @@ static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
 	struct intel_hdcp_gsc_message *hdcp_message;
 	int ret;
 
-	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
+	hdcp_message = kzalloc(2 * sizeof(*hdcp_message), GFP_KERNEL);
 
 	if (!hdcp_message)
 		return -ENOMEM;
@@ -691,6 +694,8 @@ static void intel_hdcp_gsc_free_message(struct drm_i915_private *i915)
 	struct intel_hdcp_gsc_message *hdcp_message =
 					i915->display.hdcp.hdcp_message;
 
+	hdcp_message->hdcp_cmd_in = NULL;
+	hdcp_message->hdcp_cmd_out = NULL;
 	i915_vma_unpin_and_release(&hdcp_message->vma, I915_VMA_RELEASE_MAP);
 	kfree(hdcp_message);
 }
@@ -769,11 +774,11 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 				size_t msg_out_len)
 {
 	struct intel_gt *gt = i915->media_gt;
-	struct intel_gsc_mtl_header *header;
-	const size_t max_msg_size = PAGE_SIZE - sizeof(*header);
+	struct intel_gsc_mtl_header *header_in, *header_out;
+	const size_t max_msg_size = PAGE_SIZE - sizeof(*header_in);
 	struct intel_hdcp_gsc_message *hdcp_message;
-	u64 addr, host_session_id;
-	u32 reply_size, msg_size;
+	u64 addr_in, addr_out, host_session_id;
+	u32 reply_size, msg_size_in, msg_size_out;
 	int ret, tries = 0;
 
 	if (!intel_uc_uses_gsc_uc(&gt->uc))
@@ -782,16 +787,20 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size)
 		return -ENOSPC;
 
+	msg_size_in = msg_in_len + sizeof(*header_in);
+	msg_size_out = msg_out_len + sizeof(*header_out);
 	hdcp_message = i915->display.hdcp.hdcp_message;
-	header = hdcp_message->hdcp_cmd;
-	addr = i915_ggtt_offset(hdcp_message->vma);
+	header_in = hdcp_message->hdcp_cmd_in;
+	header_out = hdcp_message->hdcp_cmd_out;
+	addr_in = i915_ggtt_offset(hdcp_message->vma);
+	addr_out = addr_in + PAGE_SIZE;
 
-	msg_size = msg_in_len + sizeof(*header);
-	memset(header, 0, msg_size);
+	memset(header_in, 0, msg_size_in);
+	memset(header_out, 0, msg_size_out);
 	get_random_bytes(&host_session_id, sizeof(u64));
-	intel_gsc_uc_heci_cmd_emit_mtl_header(header, HECI_MEADDRESS_HDCP,
-					      msg_size, host_session_id);
-	memcpy(hdcp_message->hdcp_cmd + sizeof(*header), msg_in, msg_in_len);
+	intel_gsc_uc_heci_cmd_emit_mtl_header(header_in, HECI_MEADDRESS_HDCP,
+					      msg_size_in, host_session_id);
+	memcpy(hdcp_message->hdcp_cmd_in + sizeof(*header_in), msg_in, msg_in_len);
 
 	/*
 	 * Keep sending request in case the pending bit is set no need to add
@@ -800,7 +809,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 	 * 20 times each message 50 ms apart
 	 */
 	do {
-		ret = intel_gsc_send_sync(i915, header, addr, msg_out_len);
+		ret = intel_gsc_send_sync(i915, header_in, addr_in, msg_out_len);
 
 		/* Only try again if gsc says so */
 		if (ret != -EAGAIN)
@@ -814,7 +823,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 		goto err;
 
 	/* we use the same mem for the reply, so header is in the same loc */
-	reply_size = header->message_size - sizeof(*header);
+	reply_size = header_out->message_size - sizeof(*header_out);
 	if (reply_size > msg_out_len) {
 		drm_warn(&i915->drm, "caller with insufficient HDCP reply size %u (%d)\n",
 			 reply_size, (u32)msg_out_len);
@@ -824,7 +833,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 			    reply_size, (u32)msg_out_len);
 	}
 
-	memcpy(msg_out, hdcp_message->hdcp_cmd + sizeof(*header), msg_out_len);
+	memcpy(msg_out, hdcp_message->hdcp_cmd_out + sizeof(*header_out), msg_out_len);
 
 err:
 	return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
index 5cc9fd2e88f6..cbf96551e534 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -13,7 +13,8 @@ struct drm_i915_private;
 
 struct intel_hdcp_gsc_message {
 	struct i915_vma *vma;
-	void *hdcp_cmd;
+	void *hdcp_cmd_in;
+	void *hdcp_cmd_out;
 };
 
 bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915);
-- 
2.25.1

