Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B18B42E063C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 07:51:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F5BC6E150;
	Tue, 22 Dec 2020 06:51:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EE4F6E150
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 06:51:35 +0000 (UTC)
IronPort-SDR: bJa/a2z2E1FRQI7E85yw7rp0nXLURsoQYHPv7tTx274gGr0u0iGZvfzSavpoJHEKAxv33TRApb
 UMIfcgFwvozA==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="162883463"
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="162883463"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 22:51:35 -0800
IronPort-SDR: +4QnPwL3tNYRiNcrl/TRtwEfK9zvqe05adlH9CbMq0OtNiNpqQ3dUWdgnvDZZrvj6nrYya7Q9Q
 FFD0Wr9Q+vNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="356209252"
Received: from amanna.iind.intel.com ([10.223.74.76])
 by orsmga002.jf.intel.com with ESMTP; 21 Dec 2020 22:51:34 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Dec 2020 12:04:00 +0530
Message-Id: <20201222063400.9509-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20201222063400.9509-1-animesh.manna@intel.com>
References: <20201222063400.9509-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/dsb: multi dsb instance support in
 dsb-commit()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To support multiple dsb instances per pipe dsb-id is passed
as argumnet in dsb-commit() and respective cmd-buffer will
be updated in actual hardware.

v1: Initial version.
v2: Improved commit description.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 74 +++++++++++++-----------
 1 file changed, 39 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 2a9df1d7cbc5..be301cb292dc 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -210,46 +210,50 @@ void intel_dsb_commit(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum pipe pipe = crtc->pipe;
 	u32 tail;
+	int i;
 
-	if (!(dsb && dsb->free_pos))
-		return;
+	for (i = 0; i < MAX_DSB_PER_PIPE; i++) {
+		dsb = crtc_state->dsb[i];
+		if (!(dsb && dsb->free_pos))
+			continue;
 
-	if (!intel_dsb_enable_engine(dev_priv, pipe, dsb->id))
-		goto reset;
+		if (!intel_dsb_enable_engine(dev_priv, pipe, dsb->id))
+			goto reset;
 
-	if (is_dsb_busy(dev_priv, pipe, dsb->id)) {
-		drm_err(&dev_priv->drm,
-			"HEAD_PTR write failed - dsb engine is busy.\n");
-		goto reset;
-	}
-	intel_de_write(dev_priv, DSB_HEAD(pipe, dsb->id),
-		       i915_ggtt_offset(dsb->vma));
-
-	tail = ALIGN(dsb->free_pos * 4, CACHELINE_BYTES);
-	if (tail > dsb->free_pos * 4)
-		memset(&dsb->cmd_buf[dsb->free_pos], 0,
-		       (tail - dsb->free_pos * 4));
-
-	if (is_dsb_busy(dev_priv, pipe, dsb->id)) {
-		drm_err(&dev_priv->drm,
-			"TAIL_PTR write failed - dsb engine is busy.\n");
-		goto reset;
-	}
-	drm_dbg_kms(&dev_priv->drm,
-		    "DSB execution started - head 0x%x, tail 0x%x\n",
-		    i915_ggtt_offset(dsb->vma), tail);
-	intel_de_write(dev_priv, DSB_TAIL(pipe, dsb->id),
-		       i915_ggtt_offset(dsb->vma) + tail);
-	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1)) {
-		drm_err(&dev_priv->drm,
-			"Timed out waiting for DSB workload completion.\n");
-		goto reset;
-	}
+		if (is_dsb_busy(dev_priv, pipe, dsb->id)) {
+			drm_err(&dev_priv->drm,
+				"HEAD_PTR write failed - dsb engine is busy\n");
+			goto reset;
+		}
+		intel_de_write(dev_priv, DSB_HEAD(pipe, dsb->id),
+			       i915_ggtt_offset(dsb->vma));
+
+		tail = ALIGN(dsb->free_pos * 4, CACHELINE_BYTES);
+		if (tail > dsb->free_pos * 4)
+			memset(&dsb->cmd_buf[dsb->free_pos], 0,
+			       (tail - dsb->free_pos * 4));
+
+		if (is_dsb_busy(dev_priv, pipe, dsb->id)) {
+			drm_err(&dev_priv->drm,
+				"TAIL_PTR write failed - dsb engine is busy\n");
+			goto reset;
+		}
+		drm_dbg_kms(&dev_priv->drm,
+			    "DSB execution started - head 0x%x, tail 0x%x\n",
+			    i915_ggtt_offset(dsb->vma), tail);
+		intel_de_write(dev_priv, DSB_TAIL(pipe, dsb->id),
+			       i915_ggtt_offset(dsb->vma) + tail);
+		if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1)) {
+			drm_err(&dev_priv->drm,
+				"Timed out waiting for DSB workload completion\n");
+			goto reset;
+		}
 
 reset:
-	dsb->free_pos = 0;
-	dsb->ins_start_offset = 0;
-	intel_dsb_disable_engine(dev_priv, pipe, dsb->id);
+		dsb->free_pos = 0;
+		dsb->ins_start_offset = 0;
+		intel_dsb_disable_engine(dev_priv, pipe, dsb->id);
+	}
 }
 
 /**
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
