Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03705709414
	for <lists+intel-gfx@lfdr.de>; Fri, 19 May 2023 11:51:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AB7E10E5F6;
	Fri, 19 May 2023 09:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB4A10E5F6
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 May 2023 09:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684489859; x=1716025859;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4+pw5r9Epk6qKdarGJHEYuliR5TSx1eUpAtLEE0IYT4=;
 b=nLe1iA+uGSfpLedtH5JClJrgEvPjo6qGzQPXQpMWtSVK582mwp4DA4jR
 xyWFNMDA7mjKbWLL2mcpOkQElc2Q6s2Y4MGW79AT2Z/c+Ootw6kHdoMTG
 ET8wE4ht/QtXZ+yj97Tw/rgQv263IFmZZegGzGR/DdGWmMoS+Pw4fLxuf
 DzqdYYyTpT2ezUMgO3KuSAT7S99hvGRQC7pO4EtxmxBeRty+KstOMgaQ6
 10KcpAqQlSCiogmC/CSVazM0z+FREc75h+H0LycmmvD1Yig/PvDhsDe8E
 TwTlfvAhpcVzXNvRNxq2hS4UtaPdoVunp7XS8T7xojUDGOr61u8i4fY3C Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="380543199"
X-IronPort-AV: E=Sophos;i="6.00,176,1681196400"; d="scan'208";a="380543199"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 02:50:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="679999137"
X-IronPort-AV: E=Sophos;i="6.00,176,1681196400"; d="scan'208";a="679999137"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga006.jf.intel.com with ESMTP; 19 May 2023 02:50:57 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 May 2023 15:19:18 +0530
Message-Id: <20230519094918.1182044-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230519094918.1182044-1-suraj.kandpal@intel.com>
References: <20230519094918.1182044-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Fill in hdcp_gsc_out message
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

Fill out hdcp_gsc_message_in and hdcp_gsc_message_out structure
which also includes differentiating header of both messages
using header_in and header_out.

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 59 +++++++++++--------
 1 file changed, 34 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index be505b2d679e..ab47724f7f05 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -738,38 +738,42 @@ void intel_hdcp_gsc_fini(struct drm_i915_private *i915)
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
+						  msg_out_len + sizeof(*header_in));
 	if (ret) {
 		drm_err(&i915->drm, "failed to send gsc HDCP msg (%d)\n", ret);
 		return ret;
 	}
 
 	/*
-	 * Checking validity marker for memory sanity
+	 * Check validity marker and status to see if some error is
+	 * blocking SW to FW communication
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
@@ -786,10 +790,10 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 				size_t msg_out_len)
 {
 	struct intel_gt *gt = i915->media_gt;
-	struct intel_gsc_mtl_header *header;
-	const size_t max_msg_size = PAGE_SIZE - sizeof(*header);
-	struct intel_hdcp_gsc_message *hdcp_message;
-	u64 addr, host_session_id;
+	struct intel_gsc_mtl_header *header_in, *header_out;
+	const size_t max_msg_size = PAGE_SIZE - sizeof(*header_in);
+	struct intel_hdcp_gsc_message *hdcp_message_in, *hdcp_message_out;
+	u64 addr_in, addr_out, host_session_id;
 	u32 reply_size, msg_size;
 	int ret, tries = 0;
 
@@ -799,16 +803,20 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size)
 		return -ENOSPC;
 
-	hdcp_message = i915->display.hdcp.hdcp_message_in;
-	header = hdcp_message->hdcp_cmd;
-	addr = i915_ggtt_offset(hdcp_message->vma);
+	hdcp_message_in = i915->display.hdcp.hdcp_message_in;
+	hdcp_message_out = i915->display.hdcp.hdcp_message_out;
+	header_in = hdcp_message_in->hdcp_cmd;
+	header_out = hdcp_message_out->hdcp_cmd;
+	addr_in = i915_ggtt_offset(hdcp_message_in->vma);
+	addr_out = i915_ggtt_offset(hdcp_message_out->vma);
 
-	msg_size = msg_in_len + sizeof(*header);
-	memset(header, 0, msg_size);
+	msg_size = msg_in_len + sizeof(*header_in);
+	memset(header_in, 0, msg_size);
+	memset(header_out, 0, msg_size);
 	get_random_bytes(&host_session_id, sizeof(u64));
-	intel_gsc_uc_heci_cmd_emit_mtl_header(header, HECI_MEADDRESS_HDCP,
+	intel_gsc_uc_heci_cmd_emit_mtl_header(header_in, HECI_MEADDRESS_HDCP,
 					      msg_size, host_session_id);
-	memcpy(hdcp_message->hdcp_cmd + sizeof(*header), msg_in, msg_in_len);
+	memcpy(hdcp_message_in->hdcp_cmd + sizeof(*header_in), msg_in, msg_in_len);
 
 	/*
 	 * Keep sending request in case the pending bit is set no need to add
@@ -817,7 +825,8 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 	 * 20 times each message 50 ms apart
 	 */
 	do {
-		ret = intel_gsc_send_sync(i915, header, addr, msg_out_len);
+		ret = intel_gsc_send_sync(i915, header_in, header_out,  addr_in,
+					  addr_out, msg_out_len);
 
 		/* Only try again if gsc says so */
 		if (ret != -EAGAIN)
@@ -831,7 +840,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 		goto err;
 
 	/* we use the same mem for the reply, so header is in the same loc */
-	reply_size = header->message_size - sizeof(*header);
+	reply_size = header_out->message_size - sizeof(*header_out);
 	if (reply_size > msg_out_len) {
 		drm_warn(&i915->drm, "caller with insufficient HDCP reply size %u (%d)\n",
 			 reply_size, (u32)msg_out_len);
@@ -841,7 +850,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 			    reply_size, (u32)msg_out_len);
 	}
 
-	memcpy(msg_out, hdcp_message->hdcp_cmd + sizeof(*header), msg_out_len);
+	memcpy(msg_out, hdcp_message_out->hdcp_cmd + sizeof(*header_out), msg_out_len);
 
 err:
 	return ret;
-- 
2.25.1

