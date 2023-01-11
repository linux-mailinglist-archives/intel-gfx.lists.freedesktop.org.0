Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA8D6650B1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 01:57:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B87410E6B1;
	Wed, 11 Jan 2023 00:56:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD57A10E1B4;
 Wed, 11 Jan 2023 00:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673398612; x=1704934612;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wyeWs5UZdOeLkbh6hoXIQk+mDSutMB1dgY2E8jbb4go=;
 b=QpM797eC8XmORwuxvCB708oEBXkcFHlMQCBO5HOLm4wiM+bUSpXo+JSL
 H5SIDL4ektM1s5Myatmo00B262EzZn1Gt57aoc7ospuhT/UNlR+8LMLvn
 OPG0t8PFuNXKRcUHRb5qkXcmxQSDhasLdyQYaZixy1NLn2cD92ztYENXh
 xlumgZ5mlKsZUQmIlkt87K0YdRTz7VHmG8B1wevpKjWFef/Z2VwJemqh5
 IQ1504FVUiLC38iamU0Lu9xcYUPFdlC5VphBnc7hqdM4/Vi6jveUjS22I
 aJygMiRovg/bVfFnYMYh6ojC7ggagoOFmFz5G4edvMC5kZfJSs3qSaaRz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="325307086"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="325307086"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 16:56:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831175654"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="831175654"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga005.jf.intel.com with ESMTP; 10 Jan 2023 16:56:51 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Jan 2023 16:56:35 -0800
Message-Id: <20230111005642.300761-6-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111005642.300761-1-alan.previn.teres.alexis@intel.com>
References: <20230111005642.300761-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/9] drm/i915/pxp: Add GSC-CS backend-teelink
 for send-message function
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
Cc: dri-devel@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Populate the backend-teelink abstraction layer using GSC-CS engine
for MTL (and future) products. The PXP backend for sending messages

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c | 92 ++++++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
index 97ca187e6fde..84045e18591e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
@@ -6,6 +6,7 @@
 #include "gem/i915_gem_internal.h"
 
 #include "gt/intel_context.h"
+#include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
 
 #include "i915_drv.h"
 #include "intel_pxp_cmd_interface_43.h"
@@ -39,6 +40,97 @@ static inline struct gsccs_teelink_priv *pxp_to_gsccs_priv(struct intel_pxp *pxp
 	return (struct gsccs_teelink_priv *)pxp->gsccs_priv;
 }
 
+static int gsccs_send_message(struct intel_pxp *pxp,
+			      void *msg_in, size_t msg_in_size,
+			      void *msg_out, size_t msg_out_size_max,
+			      size_t *msg_out_len)
+{
+	struct intel_gt *gt = pxp->ctrl_gt;
+	struct drm_i915_private *i915 = gt->i915;
+	struct gsccs_session_resources *exec = &pxp_to_gsccs_priv(pxp)->arb_exec_res;
+	struct intel_gsc_mtl_header *header = exec->pkt_vaddr;
+	struct intel_gsc_heci_non_priv_pkt pkt;
+	size_t max_msg_size;
+	u32 reply_size;
+	int ret;
+
+	if (!intel_uc_uses_gsc_uc(&gt->uc))
+		return -ENODEV;
+
+	if (!exec->ce)
+		return -ENODEV;
+
+	max_msg_size = PXP43_MAX_HECI_IN_SIZE - sizeof(*header);
+
+	if (msg_in_size > max_msg_size || msg_out_size_max > max_msg_size)
+		return -ENOSPC;
+
+	mutex_lock(&exec->cmd_mutex);
+
+	if (!exec->pkt_vma || !exec->bb_vma)
+		return -ENOENT;
+
+	memset(header, 0, sizeof(*header));
+	intel_gsc_uc_heci_cmd_emit_mtl_header(header, MTL_HECI_CLIENT_PXP, msg_in_size,
+					      exec->host_session_handle, 0);
+
+	memcpy(exec->pkt_vaddr + sizeof(*header), msg_in, msg_in_size);
+
+	pkt.addr_in = i915_vma_offset(exec->pkt_vma);
+	pkt.size_in = header->message_size;
+	pkt.addr_out = pkt.addr_in + PXP43_MAX_HECI_IN_SIZE;
+	pkt.size_out = msg_out_size_max + sizeof(*header);
+	pkt.heci_pkt_vma = exec->pkt_vma;
+	pkt.bb_vma = exec->bb_vma;
+
+	ret = intel_gsc_uc_heci_cmd_submit_nonpriv(&pxp->ctrl_gt->uc.gsc,
+						   exec->ce, &pkt, exec->bb_vaddr, 500);
+	if (ret) {
+		drm_err(&i915->drm, "failed to send gsc PXP msg (%d)\n", ret);
+		goto unlock;
+	}
+
+	/* we keep separate location for reply, so get the response header loc first */
+	header = exec->pkt_vaddr + PXP43_MAX_HECI_IN_SIZE;
+
+	/* Response validity marker, status and busyness */
+	if (header->validity_marker != MTL_HECI_VALIDITY_MARKER) {
+		drm_err(&i915->drm, "gsc PXP reply with invalid validity marker\n");
+		ret = -EINVAL;
+		goto unlock;
+	}
+	if (header->status != 0) {
+		drm_dbg(&i915->drm, "gsc PXP reply status has error = 0x%08x\n",
+			header->status);
+		ret = -EINVAL;
+		goto unlock;
+	}
+	if (header->flags & MTL_GSC_HDR_FLAG_MSG_PENDING) {
+		drm_dbg(&i915->drm, "gsc PXP reply is busy\n");
+		ret = -EAGAIN;
+		goto unlock;
+	}
+
+	reply_size = header->message_size - sizeof(*header);
+	if (reply_size > msg_out_size_max) {
+		drm_warn(&i915->drm, "caller with insufficient PXP reply size %u (%ld)\n",
+			 reply_size, msg_out_size_max);
+		reply_size = msg_out_size_max;
+	} else if (reply_size != msg_out_size_max) {
+		drm_dbg(&i915->drm, "caller unexpected PXP reply size %u (%ld)\n",
+			reply_size, msg_out_size_max);
+	}
+
+	memcpy(msg_out, exec->pkt_vaddr + PXP43_MAX_HECI_IN_SIZE + sizeof(*header),
+	       reply_size);
+	if (msg_out_len)
+		*msg_out_len = reply_size;
+
+unlock:
+	mutex_unlock(&exec->cmd_mutex);
+	return ret;
+}
+
 int intel_pxp_gsccs_create_session(struct intel_pxp *pxp,
 				   int arb_session_id)
 {
-- 
2.39.0

