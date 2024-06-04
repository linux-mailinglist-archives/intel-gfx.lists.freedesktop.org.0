Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F628FB740
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:30:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2160A10E515;
	Tue,  4 Jun 2024 15:30:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MVOpLTwC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 015C010E50C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515029; x=1749051029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=etMfBwqhyINYzY9f2H9vmWlyVfjTMRIIWnTZ4Yd6xLg=;
 b=MVOpLTwCcCM2ySdz+H0buh8I4c/T7S52rZLemBV/I585tezhkAWm2S0N
 AaIuiRvH7L45iemnkUo3r4yGMkuXmglTRKO4lqVqPnPZs+HTuAN+lUXIz
 zjYzjfue21cv04vrICJUjEuSj0I6ojHADNuJuq9PbBTqDahnfPiUQDiuQ
 iwEdc6oYipAIE93lkeqNiSGSi1Jw/TfWdMgnRMxb+g9Db5PlSVkW3aKKB
 1lsz/etLtjkPk3xxYCP2ZkRNtPhv6j0MqT5Gct5tyWumFoa9D4BgyiINa
 70j+7wpxFgghqBs5zY6o9P8YBcgF2GRcJ7FiytjJ9WX5dyAn5dqzwWM08 Q==;
X-CSE-ConnectionGUID: BPCBxEbgTqm+t6Pr/AKzwg==
X-CSE-MsgGUID: TAbss4ueQf6yF9hiy/BL9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31605437"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="31605437"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:28 -0700
X-CSE-ConnectionGUID: zoghfj1uTYqw+TMb0OZeFw==
X-CSE-MsgGUID: mfoiPa8oQ4O9kBL5EQCxmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37145096"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 50/65] drm/i915: pass dev_priv explicitly to PIPE_DATA_M1
Date: Tue,  4 Jun 2024 18:26:08 +0300
Message-Id: <aa87444d7b2c0c695729c15730bb11aa922b7561.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PIPE_DATA_M1 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
 drivers/gpu/drm/i915/display/intel_fdi.c     | 6 +++---
 drivers/gpu/drm/i915/gvt/display.c           | 8 ++++----
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
 5 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 241121b0b3ff..7fd65e3b018d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2641,7 +2641,8 @@ void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 
 	if (DISPLAY_VER(dev_priv) >= 5)
 		intel_set_m_n(dev_priv, m_n,
-			      PIPE_DATA_M1(transcoder), PIPE_DATA_N1(transcoder),
+			      PIPE_DATA_M1(dev_priv, transcoder),
+			      PIPE_DATA_N1(transcoder),
 			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
 	else
 		intel_set_m_n(dev_priv, m_n,
@@ -3337,7 +3338,8 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 
 	if (DISPLAY_VER(dev_priv) >= 5)
 		intel_get_m_n(dev_priv, m_n,
-			      PIPE_DATA_M1(transcoder), PIPE_DATA_N1(transcoder),
+			      PIPE_DATA_M1(dev_priv, transcoder),
+			      PIPE_DATA_N1(transcoder),
 			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
 	else
 		intel_get_m_n(dev_priv, m_n,
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 8b17b8ad71c3..007e0f9e9304 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -514,7 +514,7 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
 	 * detection works.
 	 */
 	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
-		       intel_de_read(dev_priv, PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
+		       intel_de_read(dev_priv, PIPE_DATA_M1(dev_priv, pipe)) & TU_SIZE_MASK);
 
 	/* FDI needs bits from pipe first */
 	assert_transcoder_enabled(dev_priv, crtc_state->cpu_transcoder);
@@ -616,7 +616,7 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 	 * detection works.
 	 */
 	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
-		       intel_de_read(dev_priv, PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
+		       intel_de_read(dev_priv, PIPE_DATA_M1(dev_priv, pipe)) & TU_SIZE_MASK);
 
 	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
 	   for train result */
@@ -754,7 +754,7 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 	 * detection works.
 	 */
 	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
-		       intel_de_read(dev_priv, PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
+		       intel_de_read(dev_priv, PIPE_DATA_M1(dev_priv, pipe)) & TU_SIZE_MASK);
 
 	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
 	   for train result */
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index 3681dca165c6..ce6f20b1dabc 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -261,8 +261,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		 *   DP link clk 1620 MHz and non-constant_n.
 		 * TODO: calculate DP link symbol clk and stream clk m/n.
 		 */
-		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) = TU_SIZE(64);
-		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) |= 0x5b425e;
+		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) = TU_SIZE(64);
+		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
 		vgpu_vreg_t(vgpu, PIPE_DATA_N1(TRANSCODER_A)) = 0x800000;
 		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
 		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
@@ -395,8 +395,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		 *   DP link clk 1620 MHz and non-constant_n.
 		 * TODO: calculate DP link symbol clk and stream clk m/n.
 		 */
-		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) = TU_SIZE(64);
-		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) |= 0x5b425e;
+		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) = TU_SIZE(64);
+		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
 		vgpu_vreg_t(vgpu, PIPE_DATA_N1(TRANSCODER_A)) = 0x800000;
 		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
 		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 62cb456568e5..96bfa5620989 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2379,7 +2379,7 @@
 #define _PIPEB_LINK_M2		0x61048
 #define _PIPEB_LINK_N2		0x6104c
 
-#define PIPE_DATA_M1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M1)
+#define PIPE_DATA_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M1)
 #define PIPE_DATA_N1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N1)
 #define PIPE_DATA_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
 #define PIPE_DATA_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index ba3f734ced0b..977d695fbdff 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -266,7 +266,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_EDP));
 	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_DATA_M1(TRANSCODER_A));
+	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_DATA_N1(TRANSCODER_A));
 	MMIO_D(PIPE_DATA_M2(TRANSCODER_A));
 	MMIO_D(PIPE_DATA_N2(TRANSCODER_A));
@@ -274,7 +274,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_LINK_N1(TRANSCODER_A));
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_A));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_A));
-	MMIO_D(PIPE_DATA_M1(TRANSCODER_B));
+	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_DATA_N1(TRANSCODER_B));
 	MMIO_D(PIPE_DATA_M2(TRANSCODER_B));
 	MMIO_D(PIPE_DATA_N2(TRANSCODER_B));
@@ -282,7 +282,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_LINK_N1(TRANSCODER_B));
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_B));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_B));
-	MMIO_D(PIPE_DATA_M1(TRANSCODER_C));
+	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_DATA_N1(TRANSCODER_C));
 	MMIO_D(PIPE_DATA_M2(TRANSCODER_C));
 	MMIO_D(PIPE_DATA_N2(TRANSCODER_C));
@@ -290,7 +290,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_LINK_N1(TRANSCODER_C));
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_C));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_C));
-	MMIO_D(PIPE_DATA_M1(TRANSCODER_EDP));
+	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_N1(TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_M2(TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_N2(TRANSCODER_EDP));
-- 
2.39.2

