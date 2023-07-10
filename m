Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFC974DB09
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 18:26:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63AD510E16D;
	Mon, 10 Jul 2023 16:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79DD810E16D
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 16:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689006391; x=1720542391;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qcpT+oFmaeX+/679Q4OnGhTfCMOtUEr2AAhpmUnw7Rs=;
 b=kYLMIVVoe8N/n6/+Y4jYlDShjC07KKmRHxBhtan6/Iomh4Yp87T+F1fS
 SQ2HvBw5JXkBqhn3LxHOh98wBdleFvq6HpZw4lbqYEBDeDCRv4IYSkq1L
 mmla/QGQHtOQTt8OAN6faaDc8WW8/09//BKk7l2j+c5TsABj82NeSMhp5
 l64cYutQXjIDG0XVJjWsX2Apry1tOuf+OU2ncSw4ONUL+EXZTWA42gH7e
 JeVSaeK1rYRzUdY7f30IcBDwR1MSIgwC0fIBGmwQ2JdU8SozgrTdmj1G/
 oxDqIDIJGS0dge4bwNBqnN3s5MB5oTccUjaZzuY/NF3ebUDfAziHC0eA7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="430468682"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="430468682"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 09:26:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="844942221"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="844942221"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga004.jf.intel.com with ESMTP; 10 Jul 2023 09:26:28 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jul 2023 21:54:56 +0530
Message-Id: <20230710162456.2736949-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230705051502.2568245-4-suraj.kandpal@intel.com>
References: <20230705051502.2568245-4-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/3] drm/i915/dsc: Add rc_range_parameter
 calculation for YCbCr420
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

Some rc_range_parameter calculations were missed for YCbCr420,
add them to calculate_rc_param()

--v2
-take into account the new formula to get bpp_i

--v4
-Fix range_bpg_offset formula for YCbCr420 bpp <= 16 [Ankit]

--v5
-Fix comment and mention use of DSC C Model [Ankit]

Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 141 ++++++++++++++++------
 1 file changed, 103 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index cfcd463f66bb..647435141c3f 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -52,23 +52,33 @@ static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
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
+/*
+ * We are using the method provided to us in DSC 1.2a C-Model in codec_main.c
+ * Above method use a common formula to derive values for any combination of DSC
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
 
@@ -119,33 +129,88 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
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
+						    (ofs_und8[buf_i] - ofs_und6[buf_i])), 4);
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

