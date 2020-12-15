Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BAE2DA8B9
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 08:44:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABF8A6E174;
	Tue, 15 Dec 2020 07:44:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B3436E170
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 07:44:31 +0000 (UTC)
IronPort-SDR: afV77pyjr18BhV5IEnvz8j8WsMyJ47ffALPIAxMOhY1CnpOFoZedKy1CQhC23NE81zK/N+POzz
 aDUw3BbB13Sg==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="172273366"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="172273366"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 23:44:29 -0800
IronPort-SDR: 9gLy4X5QWhB4lJIMdsQmJhduzXuTX0WdDpqiboWOORGabZvOR1TojCUrgR3IwmxBRozjlBwTnC
 m7iwIViTPh2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="336593466"
Received: from amanna.iind.intel.com ([10.223.74.93])
 by orsmga003.jf.intel.com with ESMTP; 14 Dec 2020 23:44:27 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Dec 2020 12:57:12 +0530
Message-Id: <20201215072712.12723-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20201215072712.12723-1-animesh.manna@intel.com>
References: <20201215072712.12723-1-animesh.manna@intel.com>
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

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 74 +++++++++++++-----------
 1 file changed, 39 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index c968c9785484..b3f1cc1652b8 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -208,46 +208,50 @@ void intel_dsb_commit(const struct intel_crtc_state *crtc_state)
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
