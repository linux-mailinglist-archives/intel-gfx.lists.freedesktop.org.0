Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4522707D64
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 11:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A11E10E4FA;
	Thu, 18 May 2023 09:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C855310E50D
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 09:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684403794; x=1715939794;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=De9wCg4v8c9CU4AKqhKwkTgAPSnfRMcAhDbXpWnnxd0=;
 b=DOBy2ZyQy5+3kSVqHKJeLCdhw20V2xpDDzUBGXOukj4A4a82/ptuB3BF
 g+YGmuYXTTSSzGNOo3hV5xqG2iwvlGDFCHPxF7RcJh7pUZ2gm5hFvEGia
 J74pOC7hgVrhjhtq969I+X6aCXwLt4+ZPxWd3mXLRh5FJkTCpUXkip5nh
 4Ba+gmFXTWERDo74nURMiV7AXcwSolfP/9QhqbAnVhmM4yi4mFKLEfpi4
 RLaEar1pXxDjOa3Rhdw8je3xw82wC3cRmPSuacaPA46vYYTBMZZYbtRvi
 qDS3ysJYvJ6LKdHkGhSt/9P8xru0yJf5ZrO+xNsvczaoXHf+MrGWK5bCC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="438366680"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="438366680"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 02:56:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="791897361"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="791897361"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by FMSMGA003.fm.intel.com with ESMTP; 18 May 2023 02:56:19 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 May 2023 15:19:16 +0530
Message-Id: <20230518094916.1142812-6-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230518094916.1142812-1-arun.r.murthy@intel.com>
References: <20230518094916.1142812-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/display: Enable global hist
 Selective fetch
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

This patch enables support for selective fetch in global histogram.
User can provide the selective fetch co-ordinates and only that region
will be used in generating the histogram.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_global_hist.c  | 65 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_global_hist.h  | 14 ++++
 2 files changed, 79 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_global_hist.c b/drivers/gpu/drm/i915/display/intel_global_hist.c
index 874d80d1e41b..13ec68463eec 100644
--- a/drivers/gpu/drm/i915/display/intel_global_hist.c
+++ b/drivers/gpu/drm/i915/display/intel_global_hist.c
@@ -31,6 +31,48 @@
 #include "intel_de.h"
 #include "intel_global_hist.h"
 
+#define MIN_SEGMENTS 32
+#define MAX_SEGMENTS 128
+
+static int intel_global_hist_calc_seg_size(struct drm_i915_private *dev_priv,
+		enum pipe pipe)
+{
+	uint32_t tmp, source_height;
+	uint16_t seg_size = MIN_SEGMENTS;
+
+	/* Get the pipe source height from the pipesr register */
+	tmp = intel_de_read(dev_priv, PIPESRC(pipe));
+	source_height = REG_FIELD_GET(PIPESRC_HEIGHT_MASK, tmp) + 1;
+
+	while (seg_size <= source_height) {
+		if ((seg_size % source_height == 0) &&
+		   ((source_height / seg_size) < MAX_SEGMENTS))
+			break;
+		seg_size++;
+	}
+
+	return seg_size;
+}
+
+int intel_global_hist_sf_update_seg(struct drm_i915_private *i915,
+		enum pipe pipe, struct drm_rect *clip)
+{
+	uint16_t seg_size;
+
+	seg_size = intel_global_hist_calc_seg_size(i915, pipe);
+	if (!seg_size)
+		return -EINVAL;
+
+	intel_de_rmw(i915, DPST_SF_SEG(pipe),
+		     DPST_SF_SEG_SIZE_MASK | DPST_SF_SEG_START_MASK |
+		     DPST_SF_SEG_END_MASK,
+		     DPST_SF_SEG_SIZE(seg_size) |
+		     DPST_SF_SEG_START((clip->y2/seg_size) * seg_size) |
+		     DPST_SF_SEG_END((clip->y1/seg_size) * seg_size));
+
+	return 0;
+}
+
 static int intel_global_hist_get_data(struct drm_i915_private *i915,
 		enum pipe pipe)
 {
@@ -258,6 +300,29 @@ int intel_global_hist_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data)
 	return 0;
 }
 
+int intel_global_hist_sf_en(struct drm_i915_private *i915,
+		enum pipe pipe, struct drm_rect *clip)
+{
+	struct intel_crtc *intel_crtc = to_intel_crtc(
+			drm_crtc_from_index(&i915->drm, pipe));
+	struct intel_global_hist *global_hist = intel_crtc->global_hist;
+	uint32_t dpstsfctl;
+
+	/* If DPST is not enabled, enable it first */
+	if (!global_hist->enable)
+		intel_global_hist_enable(intel_crtc);
+
+	/* Program dpst selective fetch */
+	dpstsfctl = intel_de_read(i915, DPST_SF_CTL(pipe));
+	dpstsfctl |= DPST_SF_CTL_ENABLE;
+	intel_de_write(i915, DPST_SF_CTL(pipe), dpstsfctl);
+
+	/* Program the segment size */
+	intel_global_hist_sf_update_seg(i915, pipe, clip);
+
+	return 0;
+}
+
 void intel_global_hist_deinit(struct intel_crtc *intel_crtc)
 {
 	struct intel_global_hist *global_hist = intel_crtc->global_hist;
diff --git a/drivers/gpu/drm/i915/display/intel_global_hist.h b/drivers/gpu/drm/i915/display/intel_global_hist.h
index c6621bf4ea61..827c61badf66 100644
--- a/drivers/gpu/drm/i915/display/intel_global_hist.h
+++ b/drivers/gpu/drm/i915/display/intel_global_hist.h
@@ -82,6 +82,20 @@
 #define GLOBAL_HIST_GUARDBAND_PRECISION_FACTOR 10000   // Precision factor for threshold guardband.
 #define GLOBAL_HIST_DEFAULT_GUARDBAND_DELAY 0x04
 
+#define _DPST_SF_CTL_A					0x490D0
+#define _DPST_SF_CTL_B					0x491D0
+#define DPST_SF_CTL(pipe)				_MMIO_PIPE(pipe, _DPST_SF_CTL_A, _DPST_SF_CTL_B)
+#define DPST_SF_CTL_ENABLE				(1 << 31)
+#define _DPST_SF_SEG_A					0x490D4
+#define _DPST_SF_SEG_B					0x491D4
+#define DPST_SF_SEG(pipe)				_MMIO_PIPE(pipe, _DPST_SF_CTL_A, _DPST_SF_CTL_B)
+#define DPST_SF_SEG_START_MASK				REG_GENMASK(30, 24)
+#define DPST_SF_SEG_START(val)				REG_FIELD_PREP(DPST_SF_SEG_START_MASK, val)
+#define DPST_SF_SEG_END_MASK				REG_GENMASK(22, 16)
+#define DPST_SF_SEG_END(val)				REG_FIELD_PREP(DPST_SF_SEG_END_MASK, val)
+#define DPST_SF_SEG_SIZE_MASK				REG_GENMASK(15, 0)
+#define DPST_SF_SEG_SIZE(val)				REG_FIELD_PREP(DPST_SF_SEG_SIZE_MASK, val)
+
 enum intel_global_hist_status {
 	INTEL_GLOBAL_HIST_ENABLE,
 	INTEL_GLOBAL_HIST_DISABLE,
-- 
2.25.1

