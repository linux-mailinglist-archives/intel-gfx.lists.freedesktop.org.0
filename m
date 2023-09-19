Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E12B7A6B71
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 21:21:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BA1110E1D9;
	Tue, 19 Sep 2023 19:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6A8110E242
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695151285; x=1726687285;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2P5RTPdHLlYs3CRzEYgthJxcb1pbk2+mbm0Jptn64ZU=;
 b=FJU+vhbkpgFxgpoaRSBZj74YUY7a3f+aqxZkh3rlYM0L2ZNqBrSawV8S
 GbfSZmb5IagytY6tUfjIFBbtehL+/4dm+xl52L8huXZxfAgW7b8YHCZmG
 WJ+B7idC2NL2qfP63+gJeHGGspbBb1NsDQnmRQyFyjuSWchn1yITJEP+U
 JX5iiO9LWOoLw31D8JTnhOuKV3r62XjHPizxYYtOrji8hptS2vZ8f1+JZ
 FEIqb5iDP9KA7J4pXgKUYm/nAkxYU6craYjWQSnlqyPJby0lK4Ss1lPOL
 4YC70B451sGlR6IkF7YihKUTGpAIaekavO2YEIgl/hJg8gqDskM6oz5Ww A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="359423126"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="359423126"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746350044"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="746350044"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 12:21:07 -0700
Message-Id: <20230919192128.2045154-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 01/22] drm/i915/xelpdp: Add XE_LPDP_FEATURES
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

