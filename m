Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 891CA7738F0
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 10:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 480D110E3B8;
	Tue,  8 Aug 2023 08:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E27C10E3B4
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 08:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691482417; x=1723018417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PhAALNdpcGxKxSw8Jk1CGZDSIMaT/yP4ekSzOHeERpI=;
 b=ODtToUus4stSqxMw6mYq180RjUZtF/1Zrj7Q9nJhownVS+3DcAnXO5WG
 9jqC0v2fhJaOuk4+Re1As8BiOXfWndZ6lcQqXCKAoWfxuzz9S7FlS9eNT
 16FvySNOor8zRRpDHo4bKfLfNqhI2gJf2dVIoiJSQYfZbLLUMloofYsnH
 92igokrqXgwqJz4W5JHiU7DWmZhfpSAkb+R83dMEy9tj2gdu6jMN5vK6E
 m5p1WBs6GWOcrnL7B/US6d6ZxvE6fjDeMwPy6xCWcYx3HXzDNRvcDGDWc
 6qRrHXYn8ZUwTrVEt8aEj43vPdXv9qIYXgkFAv1PwPqt0WldeMKHhVYdj w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="434603655"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="434603655"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 01:13:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="801244849"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="801244849"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga004.fm.intel.com with ESMTP; 08 Aug 2023 01:13:35 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Aug 2023 13:41:28 +0530
Message-Id: <20230808081134.4187416-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230808081134.4187416-1-suraj.kandpal@intel.com>
References: <20230808081134.4187416-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 1/8] drm/i915/vdsc: Refactor dsc register
 field macro
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

This patch refactors dsc register related macros that prepares
the values to be written in the register. The current bit shifting
looks bad and going forward will not serve our purpose to readout
dsc register field values the change was suggested by Jani Nikula.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../gpu/drm/i915/display/intel_vdsc_regs.h    | 98 +++++++++++++------
 1 file changed, 70 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index b71f00b5c761..785ede31116e 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -57,7 +57,8 @@
 #define MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							   _MTL_DSC1_PICTURE_PARAMETER_SET_17_PB, \
 							   _MTL_DSC1_PICTURE_PARAMETER_SET_17_PC)
-#define DSC_SL_BPG_OFFSET(offset)		((offset) << 27)
+#define DSC_SL_BPG_OFFSET_MASK			REG_GENMASK(31, 27)
+#define DSC_SL_BPG_OFFSET(offset)		REG_FIELD_PREP(DSC_SL_BPG_OFFSET_MASK, offset)
 
 #define _MTL_DSC0_PICTURE_PARAMETER_SET_18_PB	0x782B8
 #define _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB	0x783B8
@@ -69,8 +70,10 @@
 #define MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							   _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB, \
 							   _MTL_DSC1_PICTURE_PARAMETER_SET_18_PC)
-#define DSC_NSL_BPG_OFFSET(offset)		((offset) << 16)
-#define DSC_SL_OFFSET_ADJ(offset)		((offset) << 0)
+#define DSC_NSL_BPG_OFFSET_MASK			REG_GENMASK(31, 16)
+#define DSC_SL_OFFSET_ADJ_MASK			REG_GENMASK(15, 0)
+#define DSC_NSL_BPG_OFFSET(offset)		REG_FIELD_PREP(DSC_NSL_BPG_OFFSET_MASK, offset)
+#define DSC_SL_OFFSET_ADJ(offset)		REG_FIELD_PREP(DSC_SL_OFFSET_ADJ_MASK, offset)
 
 /* Icelake Display Stream Compression Registers */
 #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
@@ -123,8 +126,10 @@
 #define ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 					    _ICL_DSC1_PICTURE_PARAMETER_SET_2_PB, \
 					    _ICL_DSC1_PICTURE_PARAMETER_SET_2_PC)
-#define  DSC_PIC_WIDTH(pic_width)	((pic_width) << 16)
-#define  DSC_PIC_HEIGHT(pic_height)	((pic_height) << 0)
+#define  DSC_PIC_WIDTH_MASK		REG_GENMASK(31, 16)
+#define  DSC_PIC_HEIGHT_MASK		REG_GENMASK(15, 0)
+#define  DSC_PIC_WIDTH(pic_width)	REG_FIELD_PREP(DSC_PIC_WIDTH_MASK, pic_width)
+#define  DSC_PIC_HEIGHT(pic_height)	REG_FIELD_PREP(DSC_PIC_HEIGHT_MASK, pic_height)
 
 #define DSCA_PICTURE_PARAMETER_SET_3		_MMIO(0x6B20C)
 #define DSCC_PICTURE_PARAMETER_SET_3		_MMIO(0x6BA0C)
@@ -138,8 +143,10 @@
 #define ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_3_PB, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_3_PC)
-#define  DSC_SLICE_WIDTH(slice_width)   ((slice_width) << 16)
-#define  DSC_SLICE_HEIGHT(slice_height) ((slice_height) << 0)
+#define  DSC_SLICE_WIDTH_MASK			REG_GENMASK(31, 16)
+#define  DSC_SLICE_HEIGHT_MASK			REG_GENMASK(15, 0)
+#define  DSC_SLICE_WIDTH(slice_width)		REG_FIELD_PREP(DSC_SLICE_WIDTH_MASK, slice_width)
+#define  DSC_SLICE_HEIGHT(slice_height)		REG_FIELD_PREP(DSC_SLICE_HEIGHT_MASK, slice_height)
 
 #define DSCA_PICTURE_PARAMETER_SET_4		_MMIO(0x6B210)
 #define DSCC_PICTURE_PARAMETER_SET_4		_MMIO(0x6BA10)
@@ -153,8 +160,12 @@
 #define ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_4_PB, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_4_PC)
-#define  DSC_INITIAL_DEC_DELAY(dec_delay)       ((dec_delay) << 16)
-#define  DSC_INITIAL_XMIT_DELAY(xmit_delay)     ((xmit_delay) << 0)
+#define  DSC_INITIAL_DEC_DELAY_MASK		REG_GENMASK(31, 16)
+#define  DSC_INITIAL_XMIT_DELAY_MASK		REG_GENMASK(9, 0)
+#define  DSC_INITIAL_DEC_DELAY(dec_delay)       REG_FIELD_PREP(DSC_INITIAL_DEC_DELAY_MASK, \
+							       dec_delay)
+#define  DSC_INITIAL_XMIT_DELAY(xmit_delay)     REG_FIELD_PREP(DSC_INITIAL_XMIT_DELAY_MASK, \
+							       xmit_delay)
 
 #define DSCA_PICTURE_PARAMETER_SET_5		_MMIO(0x6B214)
 #define DSCC_PICTURE_PARAMETER_SET_5		_MMIO(0x6BA14)
@@ -168,8 +179,10 @@
 #define ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_5_PB, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_5_PC)
-#define  DSC_SCALE_DEC_INT(scale_dec)	((scale_dec) << 16)
-#define  DSC_SCALE_INC_INT(scale_inc)		((scale_inc) << 0)
+#define  DSC_SCALE_DEC_INT_MASK			REG_GENMASK(27, 16)
+#define  DSC_SCALE_INC_INT_MASK			REG_GENMASK(15, 0)
+#define  DSC_SCALE_DEC_INT(scale_dec)		REG_FIELD_PREP(DSC_SCALE_DEC_INT_MASK, scale_dec)
+#define  DSC_SCALE_INC_INT(scale_inc)		REG_FIELD_PREP(DSC_SCALE_INC_INT_MASK, scale_inc)
 
 #define DSCA_PICTURE_PARAMETER_SET_6		_MMIO(0x6B218)
 #define DSCC_PICTURE_PARAMETER_SET_6		_MMIO(0x6BA18)
@@ -183,10 +196,16 @@
 #define ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_6_PB, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_6_PC)
-#define  DSC_FLATNESS_MAX_QP(max_qp)		((max_qp) << 24)
-#define  DSC_FLATNESS_MIN_QP(min_qp)		((min_qp) << 16)
-#define  DSC_FIRST_LINE_BPG_OFFSET(offset)	((offset) << 8)
-#define  DSC_INITIAL_SCALE_VALUE(value)		((value) << 0)
+#define  DSC_FLATNESS_MAX_QP_MASK		REG_GENMASK(28, 24)
+#define  DSC_FLATNESS_MIN_QP_MASK		REG_GENMASK(20, 16)
+#define  DSC_FIRST_LINE_BPG_OFFSET_MASK		REG_GENMASK(12, 8)
+#define  DSC_INITIAL_SCALE_VALUE_MASK		REG_GENMASK(5, 0)
+#define  DSC_FLATNESS_MAX_QP(max_qp)		REG_FIELD_PREP(DSC_FLATNESS_MAX_QP_MASK, max_qp)
+#define  DSC_FLATNESS_MIN_QP(min_qp)		REG_FIELD_PREP(DSC_FLATNESS_MIN_QP_MASK, min_qp)
+#define  DSC_FIRST_LINE_BPG_OFFSET(offset)	REG_FIELD_PREP(DSC_FIRST_LINE_BPG_OFFSET_MASK, \
+							       offset)
+#define  DSC_INITIAL_SCALE_VALUE(value)		REG_FIELD_PREP(DSC_INITIAL_SCALE_VALUE_MASK, \
+							       value)
 
 #define DSCA_PICTURE_PARAMETER_SET_7		_MMIO(0x6B21C)
 #define DSCC_PICTURE_PARAMETER_SET_7		_MMIO(0x6BA1C)
@@ -200,8 +219,11 @@
 #define ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							    _ICL_DSC1_PICTURE_PARAMETER_SET_7_PB, \
 							    _ICL_DSC1_PICTURE_PARAMETER_SET_7_PC)
-#define  DSC_NFL_BPG_OFFSET(bpg_offset)		((bpg_offset) << 16)
-#define  DSC_SLICE_BPG_OFFSET(bpg_offset)	((bpg_offset) << 0)
+#define  DSC_NFL_BPG_OFFSET_MASK		REG_GENMASK(31, 16)
+#define  DSC_SLICE_BPG_OFFSET_MASK		REG_GENMASK(15, 0)
+#define  DSC_NFL_BPG_OFFSET(bpg_offset)		REG_FIELD_PREP(DSC_NFL_BPG_OFFSET_MASK, bpg_offset)
+#define  DSC_SLICE_BPG_OFFSET(bpg_offset)	REG_FIELD_PREP(DSC_SLICE_BPG_OFFSET_MASK, \
+							       bpg_offset)
 
 #define DSCA_PICTURE_PARAMETER_SET_8		_MMIO(0x6B220)
 #define DSCC_PICTURE_PARAMETER_SET_8		_MMIO(0x6BA20)
@@ -215,8 +237,12 @@
 #define ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_8_PB, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_8_PC)
-#define  DSC_INITIAL_OFFSET(initial_offset)		((initial_offset) << 16)
-#define  DSC_FINAL_OFFSET(final_offset)			((final_offset) << 0)
+#define  DSC_INITIAL_OFFSET_MASK		REG_GENMASK(31, 16)
+#define  DSC_FINAL_OFFSET_MASK			REG_GENMASK(15, 0)
+#define  DSC_INITIAL_OFFSET(initial_offset)	REG_FIELD_PREP(DSC_INITIAL_OFFSET_MASK, \
+							       initial_offset)
+#define  DSC_FINAL_OFFSET(final_offset)		REG_FIELD_PREP(DSC_FINAL_OFFSET_MASK, \
+							       final_offset)
 
 #define DSCA_PICTURE_PARAMETER_SET_9		_MMIO(0x6B224)
 #define DSCC_PICTURE_PARAMETER_SET_9		_MMIO(0x6BA24)
@@ -230,8 +256,12 @@
 #define ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_9_PB, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_9_PC)
-#define  DSC_RC_EDGE_FACTOR(rc_edge_fact)	((rc_edge_fact) << 16)
-#define  DSC_RC_MODEL_SIZE(rc_model_size)	((rc_model_size) << 0)
+#define  DSC_RC_EDGE_FACTOR_MASK		REG_GENMASK(19, 16)
+#define  DSC_RC_MODEL_SIZE_MASK			REG_GENMASK(15, 0)
+#define  DSC_RC_EDGE_FACTOR(rc_edge_fact)	REG_FIELD_PREP(DSC_RC_EDGE_FACTOR_MASK, \
+							       rc_edge_fact)
+#define  DSC_RC_MODEL_SIZE(rc_model_size)	REG_FIELD_PREP(DSC_RC_MODEL_SIZE_MASK, \
+							       rc_model_size)
 
 #define DSCA_PICTURE_PARAMETER_SET_10		_MMIO(0x6B228)
 #define DSCC_PICTURE_PARAMETER_SET_10		_MMIO(0x6BA28)
@@ -245,10 +275,16 @@
 #define ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_10_PB, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_10_PC)
-#define  DSC_RC_TARGET_OFF_LOW(rc_tgt_off_low)		((rc_tgt_off_low) << 20)
-#define  DSC_RC_TARGET_OFF_HIGH(rc_tgt_off_high)	((rc_tgt_off_high) << 16)
-#define  DSC_RC_QUANT_INC_LIMIT1(lim)			((lim) << 8)
-#define  DSC_RC_QUANT_INC_LIMIT0(lim)			((lim) << 0)
+#define  DSC_RC_TGT_OFF_LOW_MASK			REG_GENMASK(23, 20)
+#define  DSC_RC_TGT_OFF_HIGH_MASK			REG_GENMASK(19, 16)
+#define  DSC_RC_QUANT_INC_LIMIT1_MASK			REG_GENMASK(12, 8)
+#define  DSC_RC_QUANT_INC_LIMIT0_MASK			REG_GENMASK(4, 0)
+#define  DSC_RC_TARGET_OFF_LOW(rc_tgt_off_low)		REG_FIELD_PREP(DSC_RC_TGT_OFF_LOW_MASK, \
+								       rc_tgt_off_low)
+#define  DSC_RC_TARGET_OFF_HIGH(rc_tgt_off_high)	REG_FIELD_PREP(DSC_RC_TGT_OFF_HIGH_MASK, \
+								       rc_tgt_off_high)
+#define  DSC_RC_QUANT_INC_LIMIT1(lim)		REG_FIELD_PREP(DSC_RC_QUANT_INC_LIMIT1_MASK, lim)
+#define  DSC_RC_QUANT_INC_LIMIT0(lim)		REG_FIELD_PREP(DSC_RC_QUANT_INC_LIMIT0_MASK, lim)
 
 #define DSCA_PICTURE_PARAMETER_SET_11		_MMIO(0x6B22C)
 #define DSCC_PICTURE_PARAMETER_SET_11		_MMIO(0x6BA2C)
@@ -327,9 +363,15 @@
 #define ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_16_PB, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_16_PC)
-#define  DSC_SLICE_ROW_PER_FRAME(slice_row_per_frame)	((slice_row_per_frame) << 20)
-#define  DSC_SLICE_PER_LINE(slice_per_line)		((slice_per_line) << 16)
-#define  DSC_SLICE_CHUNK_SIZE(slice_chunk_size)		((slice_chunk_size) << 0)
+#define  DSC_SLICE_ROW_PR_FRME_MASK			REG_GENMASK(31, 20)
+#define  DSC_SLICE_PER_LINE_MASK			REG_GENMASK(18, 16)
+#define  DSC_SLICE_CHUNK_SIZE_MASK			REG_GENMASK(15, 0)
+#define  DSC_SLICE_ROW_PER_FRAME(slice_row_per_frame)	REG_FIELD_PREP(DSC_SLICE_ROW_PR_FRME_MASK, \
+								       slice_row_per_frame)
+#define  DSC_SLICE_PER_LINE(slice_per_line)		REG_FIELD_PREP(DSC_SLICE_PER_LINE_MASK, \
+								       slice_per_line)
+#define  DSC_SLICE_CHUNK_SIZE(slice_chunk_size)		REG_FIELD_PREP(DSC_SLICE_CHUNK_SIZE_MASK, \
+								       slice_chunk_size)
 
 /* Icelake Rate Control Buffer Threshold Registers */
 #define DSCA_RC_BUF_THRESH_0			_MMIO(0x6B230)
-- 
2.25.1

