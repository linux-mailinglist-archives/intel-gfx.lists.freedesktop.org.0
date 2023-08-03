Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1E876E0CF
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 09:06:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB88710E5A3;
	Thu,  3 Aug 2023 07:05:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 129B110E080
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 07:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691046350; x=1722582350;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qIltKNvgz24P+gBubxQultK0eqgrwP3w0/occj+DCXQ=;
 b=IyBOcYDpkz1EwYoQY4LO7ZZUodyk0fU9VWBR3AauS7RrBjuwb0opOhNp
 bNaKIlJq3Be+AQ3JW0Iq8h60fkp0EGnCFRgDgojJrgRmuWhGa3m1Fw+vi
 K95ek50O5k/cLZ6arMTtWHFMWjqRqV+l1vjb6uuXbGOdUg1NbIKHvQzb2
 tkfhzr25w2dj2ve4byKEF7ybkfZ2/Q4nkIacaXmrwEbQ8ZKHr92z0n/sQ
 YK91DM5o2ZgkisKlWOLX7J8xL7krPdlWDxXhVbbNvGRxHgq8ROUKDZWeW
 jHy/ZwAV0Fak/boDeTc++pCk1ogKf3oiH7c2rYgypGatFfN0dI8idc/+o g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="354702825"
X-IronPort-AV: E=Sophos;i="6.01,251,1684825200"; d="scan'208";a="354702825"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 00:05:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="794882117"
X-IronPort-AV: E=Sophos;i="6.01,251,1684825200"; d="scan'208";a="794882117"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga008.fm.intel.com with ESMTP; 03 Aug 2023 00:05:37 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Aug 2023 12:33:44 +0530
Message-Id: <20230803070346.3776690-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230803070346.3776690-1-suraj.kandpal@intel.com>
References: <20230803070346.3776690-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 6/8] drm/i915/vdsc: Remove unused dsc
 registers
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

Now that we have macros that can fetch dsc register values based
on pipe and pps parameters we can go ahead and remove all the
unused register.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_vdsc_regs.h    | 259 ++----------------
 1 file changed, 24 insertions(+), 235 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index 862dc708c5fc..7afc487223fb 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -46,38 +46,7 @@
 							   _ICL_PIPE_DSS_CTL2_PB, \
 							   _ICL_PIPE_DSS_CTL2_PC)
 
-/* MTL Display Stream Compression registers */
-#define _MTL_DSC0_PICTURE_PARAMETER_SET_17_PB	0x782B4
-#define _MTL_DSC1_PICTURE_PARAMETER_SET_17_PB	0x783B4
-#define _MTL_DSC0_PICTURE_PARAMETER_SET_17_PC	0x784B4
-#define _MTL_DSC1_PICTURE_PARAMETER_SET_17_PC	0x785B4
-#define MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _MTL_DSC0_PICTURE_PARAMETER_SET_17_PB, \
-							   _MTL_DSC0_PICTURE_PARAMETER_SET_17_PC)
-#define MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _MTL_DSC1_PICTURE_PARAMETER_SET_17_PB, \
-							   _MTL_DSC1_PICTURE_PARAMETER_SET_17_PC)
-#define DSC_SL_BPG_OFFSET_MASK			REG_GENMASK(31, 27)
-#define DSC_SL_BPG_OFFSET(offset)		REG_FIELD_PREP(DSC_SL_BPG_OFFSET_MASK, offset)
-
-#define _MTL_DSC0_PICTURE_PARAMETER_SET_18_PB	0x782B8
-#define _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB	0x783B8
-#define _MTL_DSC0_PICTURE_PARAMETER_SET_18_PC	0x784B8
-#define _MTL_DSC1_PICTURE_PARAMETER_SET_18_PC	0x785B8
-#define MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _MTL_DSC0_PICTURE_PARAMETER_SET_18_PB, \
-							   _MTL_DSC0_PICTURE_PARAMETER_SET_18_PC)
-#define MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB, \
-							   _MTL_DSC1_PICTURE_PARAMETER_SET_18_PC)
-#define DSC_NSL_BPG_OFFSET_MASK			REG_GENMASK(31, 16)
-#define DSC_SL_OFFSET_ADJ_MASK			REG_GENMASK(15, 0)
-#define DSC_NSL_BPG_OFFSET(offset)		REG_FIELD_PREP(DSC_NSL_BPG_OFFSET_MASK, offset)
-#define DSC_SL_OFFSET_ADJ(offset)		REG_FIELD_PREP(DSC_SL_OFFSET_ADJ_MASK, offset)
-
 /* Icelake Display Stream Compression Registers */
-#define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
-#define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
 #define DSCA_PPS_0				0x6B200
 #define DSCC_PPS_0				0x6BA00
 #define DSCA_PPS_REG(pps)			_MMIO(DSCA_PPS_0 + (pps) * 4)
@@ -86,12 +55,6 @@
 #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
 #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
 #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC	0x78570
-#define ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
 #define ICL_DSC0_PPS_0(pipe)			_PICK_EVEN((pipe) - PIPE_B, \
 							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
 							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
@@ -100,6 +63,8 @@
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
 #define  ICL_DSC0_PPS_REG(pipe, pps)		_MMIO(ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
 #define  ICL_DSC1_PPS_REG(pipe, pps)		_MMIO(ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
+
+/* PPS0 */
 #define  DSC_NATIVE_422_ENABLE		BIT(23)
 #define  DSC_NATIVE_420_ENABLE		BIT(22)
 #define  DSC_ALT_ICH_SEL		(1 << 20)
@@ -112,66 +77,22 @@
 #define  DSC_VER_MIN_SHIFT		4
 #define  DSC_VER_MAJ			(0x1 << 0)
 
-#define DSCA_PICTURE_PARAMETER_SET_1		_MMIO(0x6B204)
-#define DSCC_PICTURE_PARAMETER_SET_1		_MMIO(0x6BA04)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_1_PB	0x78274
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_1_PB	0x78374
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_1_PC	0x78474
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_1_PC	0x78574
-#define ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_1_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_1_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_1_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_1_PC)
+/* PPS1 */
 #define  DSC_BPP(bpp)				((bpp) << 0)
 
-#define DSCA_PICTURE_PARAMETER_SET_2		_MMIO(0x6B208)
-#define DSCC_PICTURE_PARAMETER_SET_2		_MMIO(0x6BA08)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_2_PB	0x78278
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_2_PB	0x78378
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_2_PC	0x78478
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_2_PC	0x78578
-#define ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_2_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_2_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-					    _ICL_DSC1_PICTURE_PARAMETER_SET_2_PB, \
-					    _ICL_DSC1_PICTURE_PARAMETER_SET_2_PC)
+/* PPS2 */
 #define  DSC_PIC_WIDTH_MASK		REG_GENMASK(31, 16)
 #define  DSC_PIC_HEIGHT_MASK		REG_GENMASK(15, 0)
 #define  DSC_PIC_WIDTH(pic_width)	REG_FIELD_PREP(DSC_PIC_WIDTH_MASK, pic_width)
 #define  DSC_PIC_HEIGHT(pic_height)	REG_FIELD_PREP(DSC_PIC_HEIGHT_MASK, pic_height)
 
-#define DSCA_PICTURE_PARAMETER_SET_3		_MMIO(0x6B20C)
-#define DSCC_PICTURE_PARAMETER_SET_3		_MMIO(0x6BA0C)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_3_PB	0x7827C
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_3_PB	0x7837C
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_3_PC	0x7847C
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_3_PC	0x7857C
-#define ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_3_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_3_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_3_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_3_PC)
+/* PPS3 */
 #define  DSC_SLICE_WIDTH_MASK			REG_GENMASK(31, 16)
 #define  DSC_SLICE_HEIGHT_MASK			REG_GENMASK(15, 0)
 #define  DSC_SLICE_WIDTH(slice_width)		REG_FIELD_PREP(DSC_SLICE_WIDTH_MASK, slice_width)
 #define  DSC_SLICE_HEIGHT(slice_height)		REG_FIELD_PREP(DSC_SLICE_HEIGHT_MASK, slice_height)
 
-#define DSCA_PICTURE_PARAMETER_SET_4		_MMIO(0x6B210)
-#define DSCC_PICTURE_PARAMETER_SET_4		_MMIO(0x6BA10)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_4_PB	0x78280
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_4_PB	0x78380
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_4_PC	0x78480
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_4_PC	0x78580
-#define ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_4_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_4_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_4_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_4_PC)
+/* PPS4 */
 #define  DSC_INITIAL_DEC_DELAY_MASK		REG_GENMASK(31, 16)
 #define  DSC_INITIAL_XMIT_DELAY_MASK		REG_GENMASK(9, 0)
 #define  DSC_INITIAL_DEC_DELAY(dec_delay)       REG_FIELD_PREP(DSC_INITIAL_DEC_DELAY_MASK, \
@@ -179,35 +100,13 @@
 #define  DSC_INITIAL_XMIT_DELAY(xmit_delay)     REG_FIELD_PREP(DSC_INITIAL_XMIT_DELAY_MASK, \
 							       xmit_delay)
 
-#define DSCA_PICTURE_PARAMETER_SET_5		_MMIO(0x6B214)
-#define DSCC_PICTURE_PARAMETER_SET_5		_MMIO(0x6BA14)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_5_PB	0x78284
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_5_PB	0x78384
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_5_PC	0x78484
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_5_PC	0x78584
-#define ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_5_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_5_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_5_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_5_PC)
+/* PPS5 */
 #define  DSC_SCALE_DEC_INT_MASK			REG_GENMASK(27, 16)
 #define  DSC_SCALE_INC_INT_MASK			REG_GENMASK(15, 0)
 #define  DSC_SCALE_DEC_INT(scale_dec)		REG_FIELD_PREP(DSC_SCALE_DEC_INT_MASK, scale_dec)
 #define  DSC_SCALE_INC_INT(scale_inc)		REG_FIELD_PREP(DSC_SCALE_INC_INT_MASK, scale_inc)
 
-#define DSCA_PICTURE_PARAMETER_SET_6		_MMIO(0x6B218)
-#define DSCC_PICTURE_PARAMETER_SET_6		_MMIO(0x6BA18)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_6_PB	0x78288
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_6_PB	0x78388
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_6_PC	0x78488
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_6_PC	0x78588
-#define ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_6_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_6_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_6_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_6_PC)
+/* PPS6 */
 #define  DSC_FLATNESS_MAX_QP_MASK		REG_GENMASK(28, 24)
 #define  DSC_FLATNESS_MIN_QP_MASK		REG_GENMASK(20, 16)
 #define  DSC_FIRST_LINE_BPG_OFFSET_MASK		REG_GENMASK(12, 8)
@@ -219,36 +118,13 @@
 #define  DSC_INITIAL_SCALE_VALUE(value)		REG_FIELD_PREP(DSC_INITIAL_SCALE_VALUE_MASK, \
 							       value)
 
-#define DSCA_PICTURE_PARAMETER_SET_7		_MMIO(0x6B21C)
-#define DSCC_PICTURE_PARAMETER_SET_7		_MMIO(0x6BA1C)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_7_PB	0x7828C
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_7_PB	0x7838C
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_7_PC	0x7848C
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_7_PC	0x7858C
-#define ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							    _ICL_DSC0_PICTURE_PARAMETER_SET_7_PB, \
-							    _ICL_DSC0_PICTURE_PARAMETER_SET_7_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							    _ICL_DSC1_PICTURE_PARAMETER_SET_7_PB, \
-							    _ICL_DSC1_PICTURE_PARAMETER_SET_7_PC)
+/* PPS7 */
 #define  DSC_NFL_BPG_OFFSET_MASK		REG_GENMASK(31, 16)
 #define  DSC_SLICE_BPG_OFFSET_MASK		REG_GENMASK(15, 0)
 #define  DSC_NFL_BPG_OFFSET(bpg_offset)		REG_FIELD_PREP(DSC_NFL_BPG_OFFSET_MASK, bpg_offset)
 #define  DSC_SLICE_BPG_OFFSET(bpg_offset)	REG_FIELD_PREP(DSC_SLICE_BPG_OFFSET_MASK, \
 							       bpg_offset)
-
-#define DSCA_PICTURE_PARAMETER_SET_8		_MMIO(0x6B220)
-#define DSCC_PICTURE_PARAMETER_SET_8		_MMIO(0x6BA20)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_8_PB	0x78290
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_8_PB	0x78390
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_8_PC	0x78490
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_8_PC	0x78590
-#define ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_8_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_8_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_8_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_8_PC)
+/* PPS8 */
 #define  DSC_INITIAL_OFFSET_MASK		REG_GENMASK(31, 16)
 #define  DSC_FINAL_OFFSET_MASK			REG_GENMASK(15, 0)
 #define  DSC_INITIAL_OFFSET(initial_offset)	REG_FIELD_PREP(DSC_INITIAL_OFFSET_MASK, \
@@ -256,18 +132,7 @@
 #define  DSC_FINAL_OFFSET(final_offset)		REG_FIELD_PREP(DSC_FINAL_OFFSET_MASK, \
 							       final_offset)
 
-#define DSCA_PICTURE_PARAMETER_SET_9		_MMIO(0x6B224)
-#define DSCC_PICTURE_PARAMETER_SET_9		_MMIO(0x6BA24)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_9_PB	0x78294
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_9_PB	0x78394
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_9_PC	0x78494
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_9_PC	0x78594
-#define ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_9_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_9_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_9_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_9_PC)
+/* PPS9 */
 #define  DSC_RC_EDGE_FACTOR_MASK		REG_GENMASK(19, 16)
 #define  DSC_RC_MODEL_SIZE_MASK			REG_GENMASK(15, 0)
 #define  DSC_RC_EDGE_FACTOR(rc_edge_fact)	REG_FIELD_PREP(DSC_RC_EDGE_FACTOR_MASK, \
@@ -275,18 +140,7 @@
 #define  DSC_RC_MODEL_SIZE(rc_model_size)	REG_FIELD_PREP(DSC_RC_MODEL_SIZE_MASK, \
 							       rc_model_size)
 
-#define DSCA_PICTURE_PARAMETER_SET_10		_MMIO(0x6B228)
-#define DSCC_PICTURE_PARAMETER_SET_10		_MMIO(0x6BA28)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_10_PB	0x78298
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_10_PB	0x78398
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_10_PC	0x78498
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_10_PC	0x78598
-#define ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_10_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_10_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_10_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_10_PC)
+/* PPS10 */
 #define  DSC_RC_TGT_OFF_LOW_MASK			REG_GENMASK(23, 20)
 #define  DSC_RC_TGT_OFF_HIGH_MASK			REG_GENMASK(19, 16)
 #define  DSC_RC_QUANT_INC_LIMIT1_MASK			REG_GENMASK(12, 8)
@@ -298,83 +152,7 @@
 #define  DSC_RC_QUANT_INC_LIMIT1(lim)		REG_FIELD_PREP(DSC_RC_QUANT_INC_LIMIT1_MASK, lim)
 #define  DSC_RC_QUANT_INC_LIMIT0(lim)		REG_FIELD_PREP(DSC_RC_QUANT_INC_LIMIT0_MASK, lim)
 
-#define DSCA_PICTURE_PARAMETER_SET_11		_MMIO(0x6B22C)
-#define DSCC_PICTURE_PARAMETER_SET_11		_MMIO(0x6BA2C)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_11_PB	0x7829C
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_11_PB	0x7839C
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_11_PC	0x7849C
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_11_PC	0x7859C
-#define ICL_DSC0_PICTURE_PARAMETER_SET_11(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_11_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_11_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_11(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_11_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_11_PC)
-
-#define DSCA_PICTURE_PARAMETER_SET_12		_MMIO(0x6B260)
-#define DSCC_PICTURE_PARAMETER_SET_12		_MMIO(0x6BA60)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_12_PB	0x782A0
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_12_PB	0x783A0
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_12_PC	0x784A0
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_12_PC	0x785A0
-#define ICL_DSC0_PICTURE_PARAMETER_SET_12(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_12_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_12_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_12(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_12_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_12_PC)
-
-#define DSCA_PICTURE_PARAMETER_SET_13		_MMIO(0x6B264)
-#define DSCC_PICTURE_PARAMETER_SET_13		_MMIO(0x6BA64)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_13_PB	0x782A4
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_13_PB	0x783A4
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_13_PC	0x784A4
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_13_PC	0x785A4
-#define ICL_DSC0_PICTURE_PARAMETER_SET_13(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_13_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_13_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_13(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_13_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_13_PC)
-
-#define DSCA_PICTURE_PARAMETER_SET_14		_MMIO(0x6B268)
-#define DSCC_PICTURE_PARAMETER_SET_14		_MMIO(0x6BA68)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_14_PB	0x782A8
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_14_PB	0x783A8
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_14_PC	0x784A8
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_14_PC	0x785A8
-#define ICL_DSC0_PICTURE_PARAMETER_SET_14(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_14_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_14_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_14(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_14_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_14_PC)
-
-#define DSCA_PICTURE_PARAMETER_SET_15		_MMIO(0x6B26C)
-#define DSCC_PICTURE_PARAMETER_SET_15		_MMIO(0x6BA6C)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_15_PB	0x782AC
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_15_PB	0x783AC
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_15_PC	0x784AC
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_15_PC	0x785AC
-#define ICL_DSC0_PICTURE_PARAMETER_SET_15(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_15_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_15_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_15(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_15_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_15_PC)
-
-#define DSCA_PICTURE_PARAMETER_SET_16		_MMIO(0x6B270)
-#define DSCC_PICTURE_PARAMETER_SET_16		_MMIO(0x6BA70)
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_16_PB	0x782B0
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_16_PB	0x783B0
-#define _ICL_DSC0_PICTURE_PARAMETER_SET_16_PC	0x784B0
-#define _ICL_DSC1_PICTURE_PARAMETER_SET_16_PC	0x785B0
-#define ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_16_PB, \
-							   _ICL_DSC0_PICTURE_PARAMETER_SET_16_PC)
-#define ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_16_PB, \
-							   _ICL_DSC1_PICTURE_PARAMETER_SET_16_PC)
+/* PPS16 */
 #define  DSC_SLICE_ROW_PR_FRME_MASK			REG_GENMASK(31, 20)
 #define  DSC_SLICE_PER_LINE_MASK			REG_GENMASK(18, 16)
 #define  DSC_SLICE_CHUNK_SIZE_MASK			REG_GENMASK(15, 0)
@@ -385,6 +163,17 @@
 #define  DSC_SLICE_CHUNK_SIZE(slice_chunk_size)		REG_FIELD_PREP(DSC_SLICE_CHUNK_SIZE_MASK, \
 								       slice_chunk_size)
 
+/* MTL Display Stream Compression registers */
+/* PPS17 */
+#define DSC_SL_BPG_OFFSET_MASK			REG_GENMASK(31, 27)
+#define DSC_SL_BPG_OFFSET(offset)		REG_FIELD_PREP(DSC_SL_BPG_OFFSET_MASK, offset)
+
+/* PPS18 */
+#define DSC_NSL_BPG_OFFSET_MASK			REG_GENMASK(31, 16)
+#define DSC_SL_OFFSET_ADJ_MASK			REG_GENMASK(15, 0)
+#define DSC_NSL_BPG_OFFSET(offset)		REG_FIELD_PREP(DSC_NSL_BPG_OFFSET_MASK, offset)
+#define DSC_SL_OFFSET_ADJ(offset)		REG_FIELD_PREP(DSC_SL_OFFSET_ADJ_MASK, offset)
+
 /* Icelake Rate Control Buffer Threshold Registers */
 #define DSCA_RC_BUF_THRESH_0			_MMIO(0x6B230)
 #define DSCA_RC_BUF_THRESH_0_UDW		_MMIO(0x6B230 + 4)
-- 
2.25.1

