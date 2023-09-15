Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BF67A2510
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95D0E10E665;
	Fri, 15 Sep 2023 17:46:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C0BF88D18;
 Fri, 15 Sep 2023 17:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800010; x=1726336010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2P5RTPdHLlYs3CRzEYgthJxcb1pbk2+mbm0Jptn64ZU=;
 b=kWwfFRJyXOFRxbSTOMzk9KyWin/IfGoXL71vFBrttZL6P0vQ1w2Ppz/C
 StmJKoxFSGoeGzvelHdI98Jg0bTU0yO/3Ii59p8JxXU/xGbpYVgPFqS3L
 RmttnJGFrW1kVmwXuoULNew3PK//10YU5nkKmJwlzelcpeKB/b/DorBWs
 ePJPsUExdi2PO0OUK9i+PJrAnsjuYkJ1SndHCL3CABL6tzqov6AKN6ZvL
 ZaqKCcgxsZvzEyi/g+5udQgfhvqJQ6zaWhNO8B5QgYAapTk9xWlq8V+b4
 zJCVF6XBBd4nFgDeiWZh1G98yWJ11Uu7eH6SV8bP6pqay45/TOdWg/RKY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779260"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779260"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818231"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818231"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:22 -0700
Message-Id: <20230915174651.1928176-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 01/30] drm/i915/xelpdp: Add XE_LPDP_FEATURES
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a FEATURES macro for XE_LPD+ as this is expected to be the baseline
for Xe2_LPD and will allow to see the delta more easily.

v2: Move everything from xe_lpdp_display to the new macro and remove
    the version setting: it's not needed with GMD_ID.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 57 +++++++++++++++----
 1 file changed, 46 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 4a6c4ee503b2..b572ca16647d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -710,18 +710,53 @@ static const struct intel_display_device_info xe_hpd_display = {
 		BIT(PORT_TC1),
 };
 
-static const struct intel_display_device_info xe_lpdp_display = {
-	XE_LPD_FEATURES,
-	.has_cdclk_crawl = 1,
-	.has_cdclk_squash = 1,
+#define XE_LPDP_FEATURES							\
+	.abox_mask = GENMASK(1, 0),						\
+	.color = {								\
+		.degamma_lut_size = 129, .gamma_lut_size = 1024,		\
+		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING |		\
+		DRM_COLOR_LUT_EQUAL_CHANNELS,					\
+	},									\
+	.dbuf.size = 4096,							\
+	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
+		BIT(DBUF_S4),							\
+	.has_cdclk_crawl = 1,							\
+	.has_cdclk_squash = 1,							\
+	.has_ddi = 1,								\
+	.has_dp_mst = 1,							\
+	.has_dsb = 1,								\
+	.has_fpga_dbg = 1,							\
+	.has_hotplug = 1,							\
+	.has_ipc = 1,								\
+	.has_psr = 1,								\
+	.pipe_offsets = {							\
+		[TRANSCODER_A] = PIPE_A_OFFSET,					\
+		[TRANSCODER_B] = PIPE_B_OFFSET,					\
+		[TRANSCODER_C] = PIPE_C_OFFSET,					\
+		[TRANSCODER_D] = PIPE_D_OFFSET,					\
+	},									\
+	.trans_offsets = {							\
+		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
+		[TRANSCODER_B] = TRANSCODER_B_OFFSET,				\
+		[TRANSCODER_C] = TRANSCODER_C_OFFSET,				\
+		[TRANSCODER_D] = TRANSCODER_D_OFFSET,				\
+	},									\
+	TGL_CURSOR_OFFSETS,							\
+										\
+	.__runtime_defaults.cpu_transcoder_mask =				\
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |				\
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),				\
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),	\
+	.__runtime_defaults.has_dmc = 1,					\
+	.__runtime_defaults.has_dsc = 1,					\
+	.__runtime_defaults.has_hdcp = 1,					\
+	.__runtime_defaults.pipe_mask =						\
+		BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),		\
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |		\
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4)
 
-	.__runtime_defaults.ip.ver = 14,
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
-	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
-	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
-		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
+static const struct intel_display_device_info xe_lpdp_display = {
+	XE_LPDP_FEATURES,
 };
 
 /*
-- 
2.40.1

