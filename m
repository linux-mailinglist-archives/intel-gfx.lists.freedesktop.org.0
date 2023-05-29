Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6317148DE
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 13:50:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E91A10E0AA;
	Mon, 29 May 2023 11:50:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF39C10E0AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 11:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685361039; x=1716897039;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4FKd0oz554Xucvzc8bRHY1MEEdTpk53gwTPiCKaLhAY=;
 b=ZxX7QO0Uwv/uHSjwLSAh1HAIwJWFAya3b9pfSycnNfB3OWWjBgSebE8j
 EgDIi1t7En0d06TPrXVY41oW6AKLHpYhGaGYbQgDppimVVOx65wb5c5iX
 V+1hDp4icKg4hFdUnT69adb9V4AwII/0z9g9ttAIjnTxFFR1TYa/y6Bw1
 cEgMdOoFIy/2uK5A+jIotJFFioaCDZgW46QRfV8L3tj+Nn/wg/hcCJ8B3
 ra22THXOgHw/i/4cM+IxBFsU0P3jZk+1BeHSZZCHXzhzLInuJKseqXgUN
 f0AMSu3RVonheu6lluYHnsMhWf7zlFYlxAHs+rGNfLezmNETR/7qmnAqy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="418171570"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="418171570"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 04:50:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="700237610"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="700237610"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 29 May 2023 04:50:37 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 May 2023 17:19:02 +0530
Message-Id: <20230529114902.1528192-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230529114902.1528192-1-suraj.kandpal@intel.com>
References: <20230529114902.1528192-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Modify intel_gsc_send_sync
 function
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

Modify intel_gsc_send_sync() to take into account header_out
and addr_out so as to use them to verify the message send status.

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 29 +++++++++++--------
 1 file changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 72d1e261d0a9..5f29c3c559fa 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -726,38 +726,42 @@ void intel_hdcp_gsc_fini(struct drm_i915_private *i915)
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
@@ -809,7 +813,8 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 	 * 20 times each message 50 ms apart
 	 */
 	do {
-		ret = intel_gsc_send_sync(i915, header_in, addr_in, msg_out_len);
+		ret = intel_gsc_send_sync(i915, header_in, header_out, addr_in,
+					  addr_out, msg_out_len);
 
 		/* Only try again if gsc says so */
 		if (ret != -EAGAIN)
-- 
2.25.1

