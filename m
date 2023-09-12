Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B0A79D69D
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 18:43:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86DB310E449;
	Tue, 12 Sep 2023 16:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BF2A10E447;
 Tue, 12 Sep 2023 16:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694536991; x=1726072991;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J0odbL+xp263LT5oRLoQNalNalzJc6+Tuwy/r6oSn/M=;
 b=BgsIixDWNPVXRreCX7+RDiF7h5Y1rjQ+zYowbKMA1lS2lO3xftCocejh
 Z4pg+bojI0g+kYAKOStuLyk0Bzr193RkuIhmJkE+iz9pAR/RZuJZYGJcm
 ujkWt1mGNBazWTcsJgENdE4fPxHjfmoScuFAKhmhrlROvlrqLx+DeNHKp
 M0hOr3kvxCG4vzfXRs5d91AEV+3MsArf3snmX0uFDeaJh9KAgbTekku6l
 O4Sdwo/WJkCrcN42wFW6T9xnHMmjbvYSwPa2UcBzzsgbiC/sgp1j/EMdu
 r5S+rj0mMOU5QDBL+AEEj6nMrcvXpwpHyiDv0+a6QrzcynY3RwkUmtIkf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="442446876"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="442446876"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 09:43:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="743775759"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="743775759"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga002.jf.intel.com with ESMTP; 12 Sep 2023 09:43:08 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 12 Sep 2023 22:07:32 +0530
Message-Id: <20230912163735.1075868-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230912163735.1075868-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230912163735.1075868-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/dsc/mtl: Add support for
 fractional bpp
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Vandita Kulkarni <vandita.kulkarni@intel.com>

Consider the fractional bpp while reading the qp values.

v2: Use helpers for fractional, integral bits of bits_per_pixel. (Suraj)

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_qp_tables.c    |  3 ---
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 25 +++++++++++++++----
 2 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.c b/drivers/gpu/drm/i915/display/intel_qp_tables.c
index 543cdc46aa1d..600c815e37e4 100644
--- a/drivers/gpu/drm/i915/display/intel_qp_tables.c
+++ b/drivers/gpu/drm/i915/display/intel_qp_tables.c
@@ -34,9 +34,6 @@
  * These qp tables are as per the C model
  * and it has the rows pointing to bpps which increment
  * in steps of 0.5
- * We do not support fractional bpps as of today,
- * hence we would skip the fractional bpps during
- * our references for qp calclulations.
  */
 static const u8 rc_range_minqp444_8bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP444_8BPC_MAX_NUM_BPP] = {
 	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 1bd9391a6f5a..2c19078fbce8 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -78,8 +78,8 @@ intel_vdsc_set_min_max_qp(struct drm_dsc_config *vdsc_cfg, int buf,
 static void
 calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 {
+	int bpp = intel_fractional_bpp_from_x16(vdsc_cfg->bits_per_pixel);
 	int bpc = vdsc_cfg->bits_per_component;
-	int bpp = vdsc_cfg->bits_per_pixel >> 4;
 	int qp_bpc_modifier = (bpc - 8) * 2;
 	int uncompressed_bpg_rate;
 	int first_line_bpg_offset;
@@ -149,7 +149,13 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 		static const s8 ofs_und8[] = {
 			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
 		};
-
+		/*
+		 * For 420 format since bits_per_pixel (bpp) is set to target bpp * 2,
+		 * QP table values for target bpp 4.0 to 4.4375 (rounded to 4.0) are
+		 * actually for bpp 8 to 8.875 (rounded to 4.0 * 2 i.e 8).
+		 * Similarly values for target bpp 4.5 to 4.8375 (rounded to 4.5)
+		 * are for bpp 9 to 9.875 (rounded to 4.5 * 2 i.e 9), and so on.
+		 */
 		bpp_i  = bpp - 8;
 		for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
 			u8 range_bpg_offset;
@@ -179,6 +185,9 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 				range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
 		}
 	} else {
+		/* fractional bpp part * 10000 (for precision up to 4 decimal places) */
+		int fractional_bits = intel_fractional_bpp_decimal(vdsc_cfg->bits_per_pixel);
+
 		static const s8 ofs_und6[] = {
 			0, -2, -2, -4, -6, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
 		};
@@ -192,7 +201,14 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
 		};
 
-		bpp_i  = (2 * (bpp - 6));
+		/*
+		 * QP table rows have values in increment of 0.5.
+		 * So 6.0 bpp to 6.4375 will have index 0, 6.5 to 6.9375 will have index 1,
+		 * and so on.
+		 * 0.5 fractional part with 4 decimal precision becomes 5000
+		 */
+		bpp_i  = ((bpp - 6) + (fractional_bits < 5000 ? 0 : 1));
+
 		for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
 			u8 range_bpg_offset;
 
@@ -280,8 +296,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	/* Gen 11 does not support VBR */
 	vdsc_cfg->vbr_enable = false;
 
-	/* Gen 11 only supports integral values of bpp */
-	vdsc_cfg->bits_per_pixel = compressed_bpp << 4;
+	vdsc_cfg->bits_per_pixel = pipe_config->dsc.compressed_bpp_x16;
 
 	/*
 	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set
-- 
2.25.1

