Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 121047459E6
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jul 2023 12:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB3F810E20C;
	Mon,  3 Jul 2023 10:14:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C981710E20C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jul 2023 10:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688379263; x=1719915263;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lLPPgXxFdifInDiVhGudWUKNYtjj0QZGqWlmQwFB0Nw=;
 b=PMybb+zrGkHOBkodbiSDktiqEfOFJc3CzwUoE+V1BoRBjiwlZaUaWnLQ
 8vaVpFjMNoGD/NmZUF0jS6dy9E/gCYL9+xVbq1RnWLjZnIN2tgytnlDRi
 7oEIHxGlV7KwLNw70zyCoD5XBzRgXB8bGFC9ha06tEdbCEEqlBkyhRqQp
 7/eykChRnmm6yfmqlCe+9vqLC5DFbW0n7gT46zjL+WBXxqpgIorbJ4Yak
 SmfHO4Kb5ToKLfaQqPOJzruHY2bjvpL3QRid9dnvWEtW/pd0FPDvowEzU
 YLnjcHB60Fe1i7ASYFfRAQH7e9FbVNkOIsGQZyTpJ9K/0mgHUfrjHY7nV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="393586723"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="393586723"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 03:14:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="721716081"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="721716081"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 03 Jul 2023 03:14:21 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Jul 2023 15:42:44 +0530
Message-Id: <20230703101244.2489790-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230703101244.2489790-1-suraj.kandpal@intel.com>
References: <20230703101244.2489790-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/dsc: Add rc_range_parameter
 calculation for YCBCR420
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

Some rc_range_parameter calculations were missed for YCBCR420,
add them to calculate_rc_param()

--v2
-take into account the new formula to get bpp_i

Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 142 ++++++++++++++++------
 1 file changed, 104 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 7d0edb440ca6..5c6151f716d5 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -52,23 +52,34 @@ static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 	return true;
 }
 
+static void
+intel_vdsc_set_min_max_qp(struct drm_dsc_config *vdsc_cfg, int buf,
+			  int bpp)
+{
+	int bpc = vdsc_cfg->bits_per_component;
+
+	/* Read range_minqp and range_max_qp from qp tables */
+	vdsc_cfg->rc_range_params[buf].range_min_qp =
+		intel_lookup_range_min_qp(bpc, buf, bpp, vdsc_cfg->native_420);
+	vdsc_cfg->rc_range_params[buf].range_max_qp =
+		intel_lookup_range_max_qp(bpc, buf, bpp, vdsc_cfg->native_420);
+}
+
+/* Calculate RC Params using the below two methods:
+ * 1. DSCParameterValuesVESA V1-2 spreadsheet
+ * 2. VESA DSC 1.2a DSC Tools Application Note
+ * Above two methods use a common formula to derive values for any combination of DSC
+ * variables. The formula approach may yield slight differences in the derived PPS
+ * parameters from the original parameter sets. These differences are not consequential
+ * to the coding performance because all parameter sets have been shown to produce
+ * visually lossless quality (provides the same PPS values as
+ * DSCParameterValuesVESA V1-2 spreadsheet)
+ */
 static void
 calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 {
 	int bpc = vdsc_cfg->bits_per_component;
 	int bpp = vdsc_cfg->bits_per_pixel >> 4;
-	static const s8 ofs_und6[] = {
-		0, -2, -2, -4, -6, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
-	};
-	static const s8 ofs_und8[] = {
-		2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
-	};
-	static const s8 ofs_und12[] = {
-		2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
-	};
-	static const s8 ofs_und15[] = {
-		10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
-	};
 	int qp_bpc_modifier = (bpc - 8) * 2;
 	u32 res, buf_i, bpp_i;
 
@@ -118,33 +129,88 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 	vdsc_cfg->rc_quant_incr_limit0 = 11 + qp_bpc_modifier;
 	vdsc_cfg->rc_quant_incr_limit1 = 11 + qp_bpc_modifier;
 
-	bpp_i  = (2 * (bpp - 6));
-	for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
-		u8 range_bpg_offset;
-
-		/* Read range_minqp and range_max_qp from qp tables */
-		vdsc_cfg->rc_range_params[buf_i].range_min_qp =
-			intel_lookup_range_min_qp(bpc, buf_i, bpp_i, vdsc_cfg->native_420);
-		vdsc_cfg->rc_range_params[buf_i].range_max_qp =
-			intel_lookup_range_max_qp(bpc, buf_i, bpp_i, vdsc_cfg->native_420);
-
-		/* Calculate range_bpg_offset */
-		if (bpp <= 6) {
-			range_bpg_offset = ofs_und6[buf_i];
-		} else if (bpp <= 8) {
-			res = DIV_ROUND_UP(((bpp - 6) * (ofs_und8[buf_i] - ofs_und6[buf_i])), 2);
-			range_bpg_offset = ofs_und6[buf_i] + res;
-		} else if (bpp <= 12) {
-			range_bpg_offset = ofs_und8[buf_i];
-		} else if (bpp <= 15) {
-			res = DIV_ROUND_UP(((bpp - 12) * (ofs_und15[buf_i] - ofs_und12[buf_i])), 3);
-			range_bpg_offset = ofs_und12[buf_i] + res;
-		} else {
-			range_bpg_offset = ofs_und15[buf_i];
+	if (vdsc_cfg->native_420) {
+		static const s8 ofs_und4[] = {
+			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
+		};
+		static const s8 ofs_und5[] = {
+			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
+		};
+		static const s8 ofs_und6[] = {
+			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
+		};
+		static const s8 ofs_und8[] = {
+			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
+		};
+
+		bpp_i  = bpp - 8;
+		for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
+			u8 range_bpg_offset;
+
+			intel_vdsc_set_min_max_qp(vdsc_cfg, buf_i, bpp_i);
+
+			/* Calculate range_bpg_offset */
+			if (bpp <= 8) {
+				range_bpg_offset = ofs_und4[buf_i];
+			} else if (bpp <= 10) {
+				res = DIV_ROUND_UP(((bpp - 8) *
+						    (ofs_und5[buf_i] - ofs_und4[buf_i])), 2);
+				range_bpg_offset = ofs_und4[buf_i] + res;
+			} else if (bpp <= 12) {
+				res = DIV_ROUND_UP(((bpp - 10) *
+						    (ofs_und6[buf_i] - ofs_und5[buf_i])), 2);
+				range_bpg_offset = ofs_und5[buf_i] + res;
+			} else if (bpp <= 16) {
+				res = DIV_ROUND_UP(((bpp - 12) *
+						    (ofs_und8[buf_i] - ofs_und6[buf_i])), 3);
+				range_bpg_offset = ofs_und6[buf_i] + res;
+			} else {
+				range_bpg_offset = ofs_und8[buf_i];
+			}
+
+			vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =
+				range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
+		}
+	} else {
+		static const s8 ofs_und6[] = {
+			0, -2, -2, -4, -6, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
+		};
+		static const s8 ofs_und8[] = {
+			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
+		};
+		static const s8 ofs_und12[] = {
+			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
+		};
+		static const s8 ofs_und15[] = {
+			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
+		};
+
+		bpp_i  = (2 * (bpp - 6));
+		for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
+			u8 range_bpg_offset;
+
+			intel_vdsc_set_min_max_qp(vdsc_cfg, buf_i, bpp_i);
+
+			/* Calculate range_bpg_offset */
+			if (bpp <= 6) {
+				range_bpg_offset = ofs_und6[buf_i];
+			} else if (bpp <= 8) {
+				res = DIV_ROUND_UP(((bpp - 6) *
+						    (ofs_und8[buf_i] - ofs_und6[buf_i])), 2);
+				range_bpg_offset = ofs_und6[buf_i] + res;
+			} else if (bpp <= 12) {
+				range_bpg_offset = ofs_und8[buf_i];
+			} else if (bpp <= 15) {
+				res = DIV_ROUND_UP(((bpp - 12) *
+						    (ofs_und15[buf_i] - ofs_und12[buf_i])), 3);
+				range_bpg_offset = ofs_und12[buf_i] + res;
+			} else {
+				range_bpg_offset = ofs_und15[buf_i];
+			}
+
+			vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =
+				range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
 		}
-
-		vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =
-			range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
 	}
 }
 
-- 
2.25.1

