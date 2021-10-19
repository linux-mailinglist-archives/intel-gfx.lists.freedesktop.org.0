Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A674339FA
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 17:14:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 400A96EB39;
	Tue, 19 Oct 2021 15:14:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F5A16EB21
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 15:14:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="215709318"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="215709318"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 08:14:14 -0700
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="494143568"
Received: from unknown (HELO vandita-Z390-AORUS-ULTRA.iind.intel.com)
 ([10.190.238.8])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 08:14:12 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, matthew.d.roper@intel.com,
 ville.syrjala@linux.intel.com,
 Vandita Kulkarni <vandita.kulkarni@intel.com>
Date: Tue, 19 Oct 2021 20:44:33 +0530
Message-Id: <20211019151435.20477-3-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211019151435.20477-1-vandita.kulkarni@intel.com>
References: <20211019151435.20477-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [V2 2/4] drm/i915/dsi/xelpd: Add DSI transcoder support
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

v2: Re-define cpu_transcoder_mask only (Jani)

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 169837de395d..44c3577be748 100644
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
@@ -955,12 +953,16 @@ static const struct intel_device_info adl_s_info = {
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
 	},									\
 	XE_LPD_CURSOR_OFFSETS
 
@@ -969,6 +971,9 @@ static const struct intel_device_info adl_p_info = {
 	XE_LPD_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_P),
 	.require_force_probe = 1,
+	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
+			       BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
 	.display.has_cdclk_crawl = 1,
 	.display.has_modular_fia = 1,
 	.display.has_psr_hw_tracking = 0,
@@ -1038,6 +1043,8 @@ static const struct intel_device_info dg2_info = {
 		BIT(VECS0) | BIT(VECS1) |
 		BIT(VCS0) | BIT(VCS2),
 	.require_force_probe = 1,
+	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
 };
 
 #undef PLATFORM
-- 
2.32.0

