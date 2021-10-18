Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7B04310DF
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 08:51:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28CD46E969;
	Mon, 18 Oct 2021 06:51:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18C6A6E969
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 06:51:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="208286121"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="208286121"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2021 23:51:41 -0700
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="482603714"
Received: from unknown (HELO vandita-Z390-AORUS-ULTRA.iind.intel.com)
 ([10.190.238.8])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2021 23:51:39 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, matthew.d.roper@intel.com,
 Vandita Kulkarni <vandita.kulkarni@intel.com>
Date: Mon, 18 Oct 2021 12:22:05 +0530
Message-Id: <20211018065207.30587-3-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211018065207.30587-1-vandita.kulkarni@intel.com>
References: <20211018065207.30587-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/dsi/xelpd: Add DSI transcoder
 support
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

Update ADL_P device info to support DSI0, DSI1

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 31 ++++++++++++++++++++++++++++---
 1 file changed, 28 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 169837de395d..a2dd5a38fdf5 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -932,8 +932,6 @@ static const struct intel_device_info adl_s_info = {
 #define XE_LPD_FEATURES \
 	.abox_mask = GENMASK(1, 0),						\
 	.color = { .degamma_lut_size = 0, .gamma_lut_size = 0 },		\
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |		\
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),				\
 	.dbuf.size = 4096,							\
 	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
 		BIT(DBUF_S4),							\
@@ -950,23 +948,49 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_psr = 1,							\
 	.display.ver = 13,							\
 	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
+	XE_LPD_CURSOR_OFFSETS
+
+#define ADLP_TRANSCODERS \
+	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |		\
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |				\
+		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),			\
 	.pipe_offsets = {							\
 		[TRANSCODER_A] = PIPE_A_OFFSET,					\
 		[TRANSCODER_B] = PIPE_B_OFFSET,					\
 		[TRANSCODER_C] = PIPE_C_OFFSET,					\
 		[TRANSCODER_D] = PIPE_D_OFFSET,					\
+		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET,				\
+		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET,				\
 	},									\
 	.trans_offsets = {							\
 		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
 		[TRANSCODER_B] = TRANSCODER_B_OFFSET,				\
 		[TRANSCODER_C] = TRANSCODER_C_OFFSET,				\
 		[TRANSCODER_D] = TRANSCODER_D_OFFSET,				\
+		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
+		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\
+	}									\
+
+#define DG2_TRANSCODERS \
+	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |		\
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),				\
+	.pipe_offsets = {							\
+		[TRANSCODER_A] = PIPE_A_OFFSET,					\
+		[TRANSCODER_B] = PIPE_B_OFFSET,					\
+		[TRANSCODER_C] = PIPE_C_OFFSET,					\
+		[TRANSCODER_D] = PIPE_D_OFFSET,					\
 	},									\
-	XE_LPD_CURSOR_OFFSETS
+	.trans_offsets = {							\
+		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
+		[TRANSCODER_B] = TRANSCODER_B_OFFSET,				\
+		[TRANSCODER_C] = TRANSCODER_C_OFFSET,				\
+		[TRANSCODER_D] = TRANSCODER_D_OFFSET,				\
+	}									\
 
 static const struct intel_device_info adl_p_info = {
 	GEN12_FEATURES,
 	XE_LPD_FEATURES,
+	ADLP_TRANSCODERS,
 	PLATFORM(INTEL_ALDERLAKE_P),
 	.require_force_probe = 1,
 	.display.has_cdclk_crawl = 1,
@@ -1029,6 +1053,7 @@ static const struct intel_device_info dg2_info = {
 	XE_HP_FEATURES,
 	XE_HPM_FEATURES,
 	XE_LPD_FEATURES,
+	DG2_TRANSCODERS,
 	DGFX_FEATURES,
 	.graphics_rel = 55,
 	.media_rel = 55,
-- 
2.32.0

