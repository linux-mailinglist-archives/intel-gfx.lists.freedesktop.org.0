Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D580D71FFC6
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 12:53:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C1FD10E65A;
	Fri,  2 Jun 2023 10:53:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB45C10E65A
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 10:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685703192; x=1717239192;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y6DsAGwQBgNJityaqG0u7HRV4LMYiiRnzwl+oj794Bo=;
 b=O/rb7jsCKj/C0t1jxrcZDOI0HzWdTkFTU3ZR70JcAMjL9ZS/Vif9lDNs
 9s4P0c+D9I+jgnTFLg9Nvmi1Jk4UunZ3zZikc7F1xa3lYI0MTL3pxciVP
 KFfHjS8SVZuhQvQ9B0ySbj9yvFwl3Fcj0GcQOEtvx5u3NyOjal2z4m7y/
 Bpi93HQkQvjcg1QunYdEZUeH7LfDSiV0nnfMzByiLp02txalyOsxo7q4P
 z+bmkXzNXNnV0z2l9c7Hx9pbVYDv7fhl+tHntrunv5t6SJLU22Vh9yLTV
 YbUiEzqWSyxnF1HLMbBSTPZVsLVG78CxAJXnDOrH3GxvoBE+1+q6AXOAE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="354689146"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="354689146"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 03:53:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="737491882"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="737491882"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga008.jf.intel.com with ESMTP; 02 Jun 2023 03:53:09 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jun 2023 16:21:13 +0530
Message-Id: <20230602105113.1791104-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: Modify hdcp_gsc_message msg
 sending mechanism
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
Modify intel_gsc_send_sync() to take into account header_out
and addr_out so as to use them to verify the message send status.
Check link for comment and review history
https://patchwork.freedesktop.org/series/118499/

--v2
-Change approach from allocating two objects to just one multipage
object [Daniele]

--v3
-Squash the two patches together [Daniele]
-No need to allocate twice the size of intel_hdcp_gsc_message [Daniele]

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 80 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  3 +-
 2 files changed, 49 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 7e52aea6aa17..a0eb49dfa133 100644
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
@@ -691,6 +694,8 @@ static void intel_hdcp_gsc_free_message(struct drm_i915_private *i915)
 	struct intel_hdcp_gsc_message *hdcp_message =
 					i915->display.hdcp.hdcp_message;
 
+	hdcp_message->hdcp_cmd_in = NULL;
+	hdcp_message->hdcp_cmd_out = NULL;
 	i915_vma_unpin_and_release(&hdcp_message->vma, I915_VMA_RELEASE_MAP);
 	kfree(hdcp_message);
 }
@@ -721,38 +726,42 @@ void intel_hdcp_gsc_fini(struct drm_i915_private *i915)
 }
 
 static int intel_gsc_send_sync(struct drm_i915_private *i915,
-			       struct intel_gsc_mtl_header *header, u64 addr,
+			       struct intel_gsc_mtl_header *header_in,
+			       struct intel_gsc_mtl_header *header_out,
+			       u64 addr_in, u64 addr_out,
 			       size_t msg_out_len)
 {
 	struct intel_gt *gt = i915->media_gt;
 	int ret;
 
-	header->flags = 0;
-	ret = intel_gsc_uc_heci_cmd_submit_packet(&gt->uc.gsc, addr,
-						  header->message_size,
-						  addr,
-						  msg_out_len + sizeof(*header));
+	ret = intel_gsc_uc_heci_cmd_submit_packet(&gt->uc.gsc, addr_in,
+						  header_in->message_size,
+						  addr_out,
+						  msg_out_len + sizeof(*header_out));
 	if (ret) {
 		drm_err(&i915->drm, "failed to send gsc HDCP msg (%d)\n", ret);
 		return ret;
 	}
 
 	/*
-	 * Checking validity marker for memory sanity
+	 * Checking validity marker and header status to see if some error has
+	 * blocked us from sending message to gsc cs
 	 */
-	if (header->validity_marker != GSC_HECI_VALIDITY_MARKER) {
+	if (header_out->validity_marker != GSC_HECI_VALIDITY_MARKER) {
 		drm_err(&i915->drm, "invalid validity marker\n");
 		return -EINVAL;
 	}
 
-	if (header->status != 0) {
+	if (header_out->status != 0) {
 		drm_err(&i915->drm, "header status indicates error %d\n",
-			header->status);
+			header_out->status);
 		return -EINVAL;
 	}
 
-	if (header->flags & GSC_OUTFLAG_MSG_PENDING)
+	if (header_out->flags & GSC_OUTFLAG_MSG_PENDING) {
+		header_in->gsc_message_handle = header_out->gsc_message_handle;
 		return -EAGAIN;
+	}
 
 	return 0;
 }
@@ -769,11 +778,11 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
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
@@ -782,16 +791,20 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
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
@@ -800,7 +813,8 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 	 * 20 times each message 50 ms apart
 	 */
 	do {
-		ret = intel_gsc_send_sync(i915, header, addr, msg_out_len);
+		ret = intel_gsc_send_sync(i915, header_in, header_out, addr_in,
+					  addr_out, msg_out_len);
 
 		/* Only try again if gsc says so */
 		if (ret != -EAGAIN)
@@ -814,7 +828,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 		goto err;
 
 	/* we use the same mem for the reply, so header is in the same loc */
-	reply_size = header->message_size - sizeof(*header);
+	reply_size = header_out->message_size - sizeof(*header_out);
 	if (reply_size > msg_out_len) {
 		drm_warn(&i915->drm, "caller with insufficient HDCP reply size %u (%d)\n",
 			 reply_size, (u32)msg_out_len);
@@ -824,7 +838,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
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

