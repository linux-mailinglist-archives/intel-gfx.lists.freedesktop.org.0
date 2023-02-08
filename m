Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB52C68ED5E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 11:57:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88DD010E522;
	Wed,  8 Feb 2023 10:57:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8F5710E74D
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 10:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675853838; x=1707389838;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QqkiBw066/NJcpdaACxO49aQm+K18rqTyYUu9pUWn04=;
 b=OlTFLfUxrS6AND0cPEdksZVPZVph0ez4TaWPbgE2nt25C7ylSf/sKAjr
 MQTA4dAh9KCSmolAKUX4ijqG41o80XMdqvwUivaN3WD1sby89XI9EJJFG
 jH1DbewjjCmSqj0ihg5qTAVPFa6YkviuxiHTmb7763WNnE87vIVU5DWhU
 Z10SSd5j9VRem7Xu2QbnK249ud6XJ4XcMBV7jj4kjr0m+aTiRqc/5V0Dx
 eijo7gMCRe92xkoOCkjN6MXaZUCFUscr36Vllb4qqJ59oC/dzQ+F0RUWv
 kitqPBRLPcVV3v295q6aKKLzAsnl7rs111+Y6u+C+mJXQrEO+rxtBLFer A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="357157500"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="357157500"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 02:57:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="617163471"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="617163471"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 02:57:14 -0800
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 16:29:32 +0530
Message-Id: <20230208105932.21681-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add a debugfs entry for fifo
 underruns
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
Cc: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Mohammed Khajapasha <mohammed.khajapasha@intel.com>

Add a debugfs entry i915_fifo_underruns to indicate the count of
fifo underruns for each pipe.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 28 ++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  2 ++
 .../drm/i915/display/intel_fifo_underrun.c    | 29 +++++++++++++++++++
 3 files changed, 59 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 9e2fb8626c96..d64b4675766c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -9,6 +9,7 @@
 #include <drm/drm_fourcc.h>
 
 #include "i915_debugfs.h"
+#include "intel_crtc.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "intel_de.h"
@@ -1057,6 +1058,32 @@ static int i915_lpsp_status(struct seq_file *m, void *unused)
 	return 0;
 }
 
+static int i915_fifo_underruns(struct seq_file *m, void *unused)
+{
+	struct drm_i915_private *dev_priv = node_to_i915(m->private);
+	struct intel_crtc *crtc;
+	enum pipe pipe;
+	unsigned long flags;
+	u32 cpu_fifo_underrun_count[I915_MAX_PIPES];
+	u32 pch_fifo_underrun_count[I915_MAX_PIPES];
+
+	spin_lock_irqsave(&dev_priv->irq_lock, flags);
+	for_each_pipe(dev_priv, pipe) {
+		crtc = intel_crtc_for_pipe(dev_priv, pipe);
+		cpu_fifo_underrun_count[pipe] = crtc->cpu_fifo_underrun_count;
+		pch_fifo_underrun_count[pipe] = crtc->pch_fifo_underrun_count;
+	}
+	spin_unlock_irqrestore(&dev_priv->irq_lock, flags);
+
+	seq_printf(m, "\t%-10s \t%10s\n", "cpu fifounderruns", "pch fifounderruns");
+	for_each_pipe(dev_priv, pipe)
+		seq_printf(m, "pipe:%c %10u %20u\n", pipe_name(pipe),
+			   cpu_fifo_underrun_count[pipe],
+			   pch_fifo_underrun_count[pipe]);
+
+	return 0;
+}
+
 static int i915_dp_mst_info(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -1586,6 +1613,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_dp_mst_info", i915_dp_mst_info, 0},
 	{"i915_ddb_info", i915_ddb_info, 0},
 	{"i915_lpsp_status", i915_lpsp_status, 0},
+	{"i915_fifo_underruns", i915_fifo_underruns, 0},
 };
 
 static const struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9ccae7a46020..b0468ac70059 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1438,6 +1438,8 @@ struct intel_crtc {
 
 #ifdef CONFIG_DEBUG_FS
 	struct intel_pipe_crc pipe_crc;
+	u32 cpu_fifo_underrun_count;
+	u32 pch_fifo_underrun_count;
 #endif
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index d636d21fa9ce..7131dd400ac3 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -88,6 +88,17 @@ static bool cpt_can_enable_serr_int(struct drm_device *dev)
 	return true;
 }
 
+static void intel_fifo_underrun_inc_count(struct intel_crtc *crtc,
+					  bool is_cpu_fifo)
+{
+#ifdef CONFIG_DEBUG_FS
+	if (is_cpu_fifo)
+		crtc->cpu_fifo_underrun_count++;
+	else
+		crtc->pch_fifo_underrun_count++;
+#endif
+}
+
 static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -103,6 +114,7 @@ static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
 	intel_de_write(dev_priv, reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
 	intel_de_posting_read(dev_priv, reg);
 
+	intel_fifo_underrun_inc_count(crtc, true);
 	trace_intel_cpu_fifo_underrun(dev_priv, crtc->pipe);
 	drm_err(&dev_priv->drm, "pipe %c underrun\n", pipe_name(crtc->pipe));
 }
@@ -156,6 +168,7 @@ static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
 	intel_de_write(dev_priv, GEN7_ERR_INT, ERR_INT_FIFO_UNDERRUN(pipe));
 	intel_de_posting_read(dev_priv, GEN7_ERR_INT);
 
+	intel_fifo_underrun_inc_count(crtc, true);
 	trace_intel_cpu_fifo_underrun(dev_priv, pipe);
 	drm_err(&dev_priv->drm, "fifo underrun on pipe %c\n", pipe_name(pipe));
 }
@@ -244,6 +257,7 @@ static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
 		       SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
 	intel_de_posting_read(dev_priv, SERR_INT);
 
+	intel_fifo_underrun_inc_count(crtc, false);
 	trace_intel_pch_fifo_underrun(dev_priv, pch_transcoder);
 	drm_err(&dev_priv->drm, "pch fifo underrun on pch transcoder %c\n",
 		pipe_name(pch_transcoder));
@@ -286,6 +300,11 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
 
 	old = !crtc->cpu_fifo_underrun_disabled;
 	crtc->cpu_fifo_underrun_disabled = !enable;
+#ifdef CONFIG_DEBUG_FS
+	/* don't reset count in fifo underrun irq path */
+	if (!in_irq() && !enable)
+		crtc->cpu_fifo_underrun_count = 0;
+#endif
 
 	if (HAS_GMCH(dev_priv))
 		i9xx_set_fifo_underrun_reporting(dev, pipe, enable, old);
@@ -365,6 +384,11 @@ bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
 
 	old = !crtc->pch_fifo_underrun_disabled;
 	crtc->pch_fifo_underrun_disabled = !enable;
+#ifdef CONFIG_DEBUG_FS
+	/* don't reset count in fifo underrun irq path */
+	if (!in_irq() && !enable)
+		crtc->pch_fifo_underrun_count = 0;
+#endif
 
 	if (HAS_PCH_IBX(dev_priv))
 		ibx_set_fifo_underrun_reporting(&dev_priv->drm,
@@ -434,6 +458,7 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
 	}
 
+	intel_fifo_underrun_inc_count(crtc, true);
 	intel_fbc_handle_fifo_underrun_irq(dev_priv);
 }
 
@@ -449,6 +474,10 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 void intel_pch_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 					 enum pipe pch_transcoder)
 {
+	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pch_transcoder);
+
+	intel_fifo_underrun_inc_count(crtc, false);
+
 	if (intel_set_pch_fifo_underrun_reporting(dev_priv, pch_transcoder,
 						  false)) {
 		trace_intel_pch_fifo_underrun(dev_priv, pch_transcoder);
-- 
2.25.1

