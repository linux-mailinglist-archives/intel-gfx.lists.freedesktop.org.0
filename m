Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CE079C4D4
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:48:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E614910E369;
	Tue, 12 Sep 2023 04:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE2710E265;
 Tue, 12 Sep 2023 04:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494112; x=1726030112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1XGs7mV3mkyfWEJjXL8dku/tFXqcBjz3ttUpoE5xAMw=;
 b=lqfOsZCBUwI0ljgNxEZHJzpo510kWMBzVCesSBEWG2rt1V9SQVkmQ4Ee
 bCOf7ny5J9XQ1gkJPaRFJPLl1hsw89uZU/YqPX0whavlL+NnIAML9CiwQ
 e6st21kYKDQa4uNXZwg1Z4qTmT0T4LzjazXGLkVEaz+ORcr21NFiGZibQ
 NqB3133V/WBK4ZQv73hHguMQaksXANcLPIlGJwjHeZar0sgZ2CGYVXbpd
 vAMstccwgcCaFcQpeWGVKtMQLeRHAEUzQ+pzFRQwzEvBgX+wmvAIcuz1s
 XumsyODe6VivPbvA3DmvoJg/4bXeoumigqBan0cgnHnTnyEaaASl49KIj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182304"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182304"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419911"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419911"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:31 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:09 -0700
Message-Id: <20230912044837.1672060-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/29] drm/i915/xelpdp: Add XE_LPDP_FEATURES
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

v2: Move everything from xe_lpdp_display to the new macro and remove
    the version setting: it's not needed with GMD_ID.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 58 +++++++++++++++----
 1 file changed, 47 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index c39f8a15d8aa..ddd938bfe7d9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -710,18 +710,54 @@ static const struct intel_display_device_info xe_hpd_display = {
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
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),			\
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

