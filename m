Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DD89D2429
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 11:55:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 973F810E62A;
	Tue, 19 Nov 2024 10:55:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OvkXGbHC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4D7910E628;
 Tue, 19 Nov 2024 10:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732013709; x=1763549709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZsfSQkJ1XYfLDPLuK4PT5TQ4TRrQORAnrtfGUK1nP8Y=;
 b=OvkXGbHC/dzk1TyONiXF9eQJBKVsOd0q6pKpQg7k7PDOLErLlE56OMIl
 Ll/lcTE2BVdYx/fSOQUZPUxm/9BqBwNm11vsDT5AeiNYiH3x0VICRI/HG
 I64RZRzwX/V+W6FzmitXbf3Bm88sroZ/8iHo/Uv78il8g59EwoWoPuiH/
 JfIFFcLYWkkLdQamRXRrR1vAvWNG1n3+CVZCiiRK19GwayInkiujQSQg9
 MF434SkT47Vt2FvdiNF2PC6NSFLl1fFVZGRs1L5JJv1xleMLLJxP6JzQT
 Qs1hu54n5V8a4JgE+QQNW9sgYKE9YWnNeTLmClc4fHNGddsS7KfomNLYo A==;
X-CSE-ConnectionGUID: KGDHGPTmQwKCSCvaystrcw==
X-CSE-MsgGUID: dVFdr+FxQtqyAwx1A+cE6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="43075363"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="43075363"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 02:55:09 -0800
X-CSE-ConnectionGUID: 9A3hAa/vQiSmqXDFwbgDwA==
X-CSE-MsgGUID: tqMJL6eDQUO2pYKCPpYGkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="89937453"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa009.fm.intel.com with ESMTP; 19 Nov 2024 02:55:08 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 6/8] drm/i915/histogram: histogram delay counter doesnt reset
Date: Tue, 19 Nov 2024 16:15:19 +0530
Message-Id: <20241119104521.575377-7-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241119104521.575377-1-arun.r.murthy@intel.com>
References: <20241119104521.575377-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
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

The delay counter for histogram does not reset and as a result the
histogram bin never gets updated. Workaround would be to use save and
restore histogram register.
Wa: 14014889975

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_histogram.c  | 17 +++++++++++++++++
 .../gpu/drm/i915/display/intel_histogram_regs.h |  1 +
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c b/drivers/gpu/drm/i915/display/intel_histogram.c
index cba65f4260cd..fdcc64677e96 100644
--- a/drivers/gpu/drm/i915/display/intel_histogram.c
+++ b/drivers/gpu/drm/i915/display/intel_histogram.c
@@ -74,6 +74,11 @@ static void intel_histogram_handle_int_work(struct work_struct *work)
 	struct intel_display *display = to_intel_display(intel_crtc);
 	char *histogram_event[] = {"HISTOGRAM=1", NULL};
 
+	/* Wa: 14014889975 */
+	if (IS_DISPLAY_VER(display, 12, 13))
+		intel_de_rmw(display, DPST_CTL(intel_crtc->pipe),
+			     DPST_CTL_RESTORE, 0);
+
 	/*
 	 * TODO: PSR to be exited while reading the Histogram data
 	 * Set DPST_CTL Bin Reg function select to TC
@@ -94,6 +99,12 @@ static void intel_histogram_handle_int_work(struct work_struct *work)
 				"sending HISTOGRAM event failed\n");
 	}
 
+	/* Wa: 14014889975 */
+	if (IS_DISPLAY_VER(display, 12, 13))
+		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt Delay Counter(bit 23:16) */
+		intel_de_write(display, DPST_CTL(intel_crtc->pipe), intel_de_read(display,
+			       DPST_CTL(intel_crtc->pipe)) | DPST_CTL_RESTORE);
+
 	/* Enable histogram interrupt */
 	intel_de_rmw(display, DPST_GUARD(intel_crtc->pipe), DPST_GUARD_HIST_INT_EN,
 		     DPST_GUARD_HIST_INT_EN);
@@ -240,6 +251,12 @@ int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data)
 		return -EINVAL;
 	}
 
+	/* Wa: 14014889975 */
+	if (IS_DISPLAY_VER(display, 12, 13))
+		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt Delay Counter(bit 23:16) */
+		intel_de_write(display, DPST_CTL(intel_crtc->pipe), intel_de_read(display,
+			       DPST_CTL(intel_crtc->pipe)) | DPST_CTL_RESTORE);
+
 	/*
 	 * Set DPST_CTL Bin Reg function select to IE
 	 * Set DPST_CTL Bin Register Index to 0
diff --git a/drivers/gpu/drm/i915/display/intel_histogram_regs.h b/drivers/gpu/drm/i915/display/intel_histogram_regs.h
index 1252b4f339a6..e50b1448bd40 100644
--- a/drivers/gpu/drm/i915/display/intel_histogram_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_histogram_regs.h
@@ -16,6 +16,7 @@
 #define  DPST_CTL_RESTORE				REG_BIT(28)
 #define  DPST_CTL_IE_MODI_TABLE_EN			REG_BIT(27)
 #define  DPST_CTL_HIST_MODE				REG_BIT(24)
+#define  DPST_CTL_GUARDBAND_INTERRUPT_DELAY_CNT		REG_GENMASK(23, 16)
 #define  DPST_CTL_ENHANCEMENT_MODE_MASK			REG_GENMASK(14, 13)
 #define  DPST_CTL_EN_MULTIPLICATIVE			REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)
 #define  DPST_CTL_IE_TABLE_VALUE_FORMAT			REG_BIT(15)
-- 
2.25.1

