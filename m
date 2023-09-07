Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E12477974A3
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 17:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92B3410E811;
	Thu,  7 Sep 2023 15:40:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1F8210E7FF;
 Thu,  7 Sep 2023 15:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694101205; x=1725637205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XJBprGlj4eNp9DnbDIseQKDAxstreg3WMl1aEzBzLv0=;
 b=mhV/fAT9UT+cd62VFl6rEZL6uAyaA14hIyc+YMng8DL414BAN37DWDKh
 UpL5uToKMdzhYnbB/SEOOQuSp0ZB9pVaSs6yrCDgxxi3EDNMBzK63JfjV
 6Mxv0ERoSL4c/0lZHEI4ZYh5xlNGh+r2d+7Z6CKm0Ad4d01fJyZmIsgB5
 o6W+A5TSvsdIyBUE21yMXpH0cfQvNZ+K3v47lbLdocKnkel+k/cIshUDL
 SzQXWsB0l4VyPgdqwGQqRII9EObBFrwfKqevFeiCJYRHY0HKOjtZg5ZO7
 wkjLDUkyHmgyYDnR1ylzqV7uv+ASTSr07V5gJCiWxPVe4dQV736+zqZ0Q Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362445749"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="362445749"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1072930221"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="1072930221"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 08:37:31 -0700
Message-Id: <20230907153757.2249452-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230907153757.2249452-1-lucas.demarchi@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/27] drm/i915/xelpdp: Add XE_LPDP_FEATURES
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a FEATURES macro for XE_LPD+ as this is expected to be the baseline
for Xe2_LPD and will allow to see the delta more easily.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 60 ++++++++++++++++---
 1 file changed, 52 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index c39f8a15d8aa..089674e2f1d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -710,18 +710,62 @@ static const struct intel_display_device_info xe_hpd_display = {
 		BIT(PORT_TC1),
 };
 
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
+		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET,				\
+		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET,				\
+	},									\
+	.trans_offsets = {							\
+		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
+		[TRANSCODER_B] = TRANSCODER_B_OFFSET,				\
+		[TRANSCODER_C] = TRANSCODER_C_OFFSET,				\
+		[TRANSCODER_D] = TRANSCODER_D_OFFSET,				\
+		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
+		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\
+	},									\
+	TGL_CURSOR_OFFSETS,							\
+										\
+	.__runtime_defaults.cpu_transcoder_mask =				\
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |				\
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),				\
+	.__runtime_defaults.ip.ver = 13,					\
+	.__runtime_defaults.has_dmc = 1,					\
+	.__runtime_defaults.has_dsc = 1,					\
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),			\
+	.__runtime_defaults.has_hdcp = 1,					\
+	.__runtime_defaults.pipe_mask =						\
+		BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),		\
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |		\
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4)
+
+
 static const struct intel_display_device_info xe_lpdp_display = {
-	XE_LPD_FEATURES,
-	.has_cdclk_crawl = 1,
-	.has_cdclk_squash = 1,
+	XE_LPDP_FEATURES,
 
 	.__runtime_defaults.ip.ver = 14,
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
-	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
-	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
-		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 };
 
 /*
-- 
2.40.1

