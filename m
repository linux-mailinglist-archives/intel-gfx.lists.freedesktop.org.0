Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7058D6275CC
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 07:11:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA5310E266;
	Mon, 14 Nov 2022 06:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DB7410E262
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 06:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668406292; x=1699942292;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/VWC519pYzgSSiNco7RXmVKRhYD1YcBKtyjkADMi0v8=;
 b=IOXSIiWmVDHb7LPEQC6/DnSkqWUOsj9325s5Bx7hKZ47bk2w9RV+hLp+
 towrBNXl2R7e7X0ggTKSPpLGwWW+3mEtfJ/74F4QbJDmPf3Xu7igOj+PD
 rkCTYql7NW13r+wp2MqrrXjVPVTKZrqxZ6dkfR5gDXpXITOQjq5SN3/NZ
 MC8fjNG2tD39zx3xhPsBGSXWHc97KwjtGWTxqLfKNTj25ioJThUvKrW0H
 i3BktevmEGKu6WtvS/djcYw/VCPm+nCyEgjtTfN0Or46QqG3Witr6Efdj
 SPFaL8mK12rje+aLRVuZp343LD6urunItdoXNq+rnC+boXY71FNV48CUN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="374021066"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="374021066"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2022 22:11:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="632678895"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="632678895"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 13 Nov 2022 22:11:26 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 11:40:17 +0530
Message-Id: <20221114061019.1444353-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221114061019.1444353-1-suraj.kandpal@intel.com>
References: <20221114061019.1444353-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 1/3] drm/i915: Define WD trancoder for i915
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

Add WD Types, WD transcoder to enum list and WD Transcoder offsets.
Add i915 register definitions related to WD transcoder

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h  |   6 +
 .../drm/i915/display/intel_display_types.h    |   1 +
 .../drm/i915/display/intel_writeback_reg.h    | 128 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               |  10 ++
 4 files changed, 145 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_reg.h

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 714030136b7f..7210d678bc74 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -103,6 +103,8 @@ enum transcoder {
 	TRANSCODER_DSI_1,
 	TRANSCODER_DSI_A = TRANSCODER_DSI_0,	/* legacy DSI */
 	TRANSCODER_DSI_C = TRANSCODER_DSI_1,	/* legacy DSI */
+	TRANSCODER_WD_0,
+	TRANSCODER_WD_1,
 
 	I915_MAX_TRANSCODERS
 };
@@ -124,6 +126,10 @@ static inline const char *transcoder_name(enum transcoder transcoder)
 		return "DSI A";
 	case TRANSCODER_DSI_C:
 		return "DSI C";
+	case TRANSCODER_WD_0:
+		return "WD 0";
+	case TRANSCODER_WD_1:
+		return "WD 1";
 	default:
 		return "<invalid>";
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8da87cbb172b..8b34ba423817 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -79,6 +79,7 @@ enum intel_output_type {
 	INTEL_OUTPUT_DSI = 9,
 	INTEL_OUTPUT_DDI = 10,
 	INTEL_OUTPUT_DP_MST = 11,
+	INTEL_OUTPUT_WB = 12,
 };
 
 enum hdmi_force_audio {
diff --git a/drivers/gpu/drm/i915/display/intel_writeback_reg.h b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
new file mode 100644
index 000000000000..955ad7596726
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
@@ -0,0 +1,128 @@
+/* SPDX-License-Identifier: MIT*/
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef _INTEL_WRITEBACK_REG_H_
+#define _INTEL_WRITEBACK_REG_H_
+
+#include "i915_reg.h"
+/* Gen12 WD */
+#define _MMIO_WD(tc, wd0, wd1)		_MMIO_TRANS((tc) - TRANSCODER_WD_0, \
+							wd0, wd1)
+
+#define WD_TRANS_ENABLE			(1 << 31)
+#define WD_TRANS_DISABLE		0
+#define WD_TRANS_ACTIVE			(1 << 30)
+
+/* WD transcoder control */
+#define _WD_TRANS_FUNC_CTL_0		0x6e400
+#define _WD_TRANS_FUNC_CTL_1		0x6ec00
+#define WD_TRANS_FUNC_CTL(tc)		_MMIO_WD(tc,\
+					_WD_TRANS_FUNC_CTL_0,\
+					_WD_TRANS_FUNC_CTL_1)
+
+#define TRANS_WD_FUNC_ENABLE		(1 << 31)
+#define WD_TRIGGERED_CAP_MODE_ENABLE	(1 << 30)
+#define START_TRIGGER_FRAME		(1 << 29)
+#define STOP_TRIGGER_FRAME		(1 << 28)
+#define WD_CTL_POINTER_ETEH		(0 << 18)
+#define WD_CTL_POINTER_ETDH		(1 << 18)
+#define WD_CTL_POINTER_DTDH		(2 << 18)
+#define WD_INPUT_SELECT_MASK		(7 << 12)
+#define WD_INPUT_PIPE_A			(0 << 12)
+#define WD_INPUT_PIPE_B			(5 << 12)
+#define WD_INPUT_PIPE_C			(6 << 12)
+#define WD_INPUT_PIPE_D			(7 << 12)
+
+#define WD_PIX_FMT_MASK			(0x3 << 20)
+#define WD_PIX_FMT_YUYV			(0x1 << 20)
+#define WD_PIX_FMT_XYUV8888		(0x2 << 20)
+#define WD_PIX_FMT_XBGR8888		(0x3 << 20)
+#define WD_PIX_FMT_Y410			(0x4 << 20)
+#define WD_PIX_FMT_YUV422		(0x5 << 20)
+#define WD_PIX_FMT_XBGR2101010		(0x6 << 20)
+#define WD_PIX_FMT_RGB565		(0x7 << 20)
+
+#define WD_FRAME_NUMBER_MASK		15
+
+#define _WD_STRIDE_0			0x6e510
+#define _WD_STRIDE_1			0x6ed10
+#define WD_STRIDE(tc)			_MMIO_WD(tc,\
+					_WD_STRIDE_0,\
+					_WD_STRIDE_1)
+#define WD_STRIDE_SHIFT			6
+#define WD_STRIDE_MASK			(0x3ff << WD_STRIDE_SHIFT)
+
+#define _WD_STREAMCAP_CTL0		0x6e590
+#define _WD_STREAMCAP_CTL1		0x6ed90
+#define WD_STREAMCAP_CTL(tc)		_MMIO_WD(tc,\
+					_WD_STREAMCAP_CTL0,\
+					_WD_STREAMCAP_CTL1)
+
+#define WD_STREAM_CAP_MODE_EN		(1 << 31)
+#define WD_STRAT_MASK			(3 << 24)
+#define WD_SLICING_STRAT_1_1		(0 << 24)
+#define WD_SLICING_STRAT_2_1		(1 << 24)
+#define WD_SLICING_STRAT_4_1		(2 << 24)
+#define WD_SLICING_STRAT_8_1		(3 << 24)
+#define WD_STREAM_OVERRUN_STATUS	1
+
+#define _WD_SURF_0			0x6e514
+#define _WD_SURF_1			0x6ed14
+#define WD_SURF(tc)			_MMIO_WD(tc,\
+					_WD_SURF_0,\
+					_WD_SURF_1)
+
+#define _WD_IMR_0			0x6e560
+#define _WD_IMR_1			0x6ed60
+#define WD_IMR(tc)			_MMIO_WD(tc,\
+					_WD_IMR_0,\
+					_WD_IMR_1)
+#define WD_FRAME_COMPLETE_INT		(1 << 7)
+#define WD_GTT_FAULT_INT		(1 << 6)
+#define WD_VBLANK_INT			(1 << 5)
+#define WD_OVERRUN_INT			(1 << 4)
+#define WD_CAPTURING_INT		(1 << 3)
+#define WD_WRITE_COMPLETE_INT		(1 << 2)
+
+#define _WD_IIR_0			0x6e564
+#define _WD_IIR_1			0x6ed64
+#define WD_IIR(tc)			_MMIO_WD(tc,\
+					_WD_IIR_0,\
+					_WD_IIR_1)
+
+#define _WD_FRAME_STATUS_0		0x6e56b
+#define _WD_FRAME_STATUS_1		0x6ed6b
+#define WD_FRAME_STATUS(tc)		_MMIO_WD(tc,\
+					_WD_FRAME_STATUS_0,\
+					_WD_FRAME_STATUS_1)
+
+#define WD_FRAME_COMPLETE		(1 << 31)
+#define WD_STATE_IDLE			(0 << 24)
+#define WD_STATE_CAPSTART		(1 << 24)
+#define WD_STATE_FRAME_START		(2 << 24)
+#define WD_STATE_CAPACITIVE		(3 << 24)
+#define WD_STATE_TG_DONE		(4 << 24)
+#define WD_STATE_WDX_DONE		(5 << 24)
+#define WD_STATE_QUICK_CAP		(6 << 24)
+
+#define _WD_27_M_0			0x6e524
+#define _WD_27_M_1			0x6ed24
+#define WD_27_M(tc)			_MMIO_WD(tc,\
+					_WD_27_M_0,\
+					_WD_27_M_1)
+
+#define _WD_27_N_0			0x6e528
+#define _WD_27_N_1			0x6ec28
+#define WD_27_N(tc)			_MMIO_WD(tc,\
+					_WD_27_N_0,\
+					_WD_27_N_1)
+
+#define _WD_TAIL_CFG_0			0x6e520
+#define _WD_TAIL_CFG_1			0x6ed20
+
+#define WD_TAIL_CFG(tc)			_MMIO_WD(tc,\
+					_WD_TAIL_CFG_0,\
+					_WD_TAIL_CFG_1)
+#endif /* _INTEL_WRITEBACK_REG_H_ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8b08126f8b11..b26f8908d09a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1944,6 +1944,8 @@
 #define TRANSCODER_EDP_OFFSET 0x6f000
 #define TRANSCODER_DSI0_OFFSET	0x6b000
 #define TRANSCODER_DSI1_OFFSET	0x6b800
+#define TRANSCODER_WD0_OFFSET	0x6e000
+#define TRANSCODER_WD1_OFFSET	0x6e800
 
 #define HTOTAL(trans)		_MMIO_TRANS2(trans, _HTOTAL_A)
 #define HBLANK(trans)		_MMIO_TRANS2(trans, _HBLANK_A)
@@ -3642,6 +3644,9 @@
 #define PIPE_DSI0_OFFSET	0x7b000
 #define PIPE_DSI1_OFFSET	0x7b800
 
+#define PIPE_WD0_OFFSET		0x7e000
+#define PIPE_WD1_OFFSET		0x7d000
+
 #define PIPECONF(pipe)		_MMIO_PIPE2(pipe, _PIPEACONF)
 #define PIPEDSL(pipe)		_MMIO_PIPE2(pipe, _PIPEADSL)
 #define PIPEFRAME(pipe)		_MMIO_PIPE2(pipe, _PIPEAFRAMEHIGH)
@@ -4307,6 +4312,10 @@
 #define _PIPEDSI0CONF		0x7b008
 #define _PIPEDSI1CONF		0x7b808
 
+/* WD 0 and 1 */
+#define _PIPEWD0CONF		0x7e008
+#define _PIPEWD1CONF		0x7d008
+
 /* Sprite A control */
 #define _DVSACNTR		0x72180
 #define   DVS_ENABLE			REG_BIT(31)
@@ -5532,6 +5541,7 @@
 #define GEN8_DE_MISC_IER _MMIO(0x4446c)
 #define  GEN8_DE_MISC_GSE		(1 << 27)
 #define  GEN8_DE_EDP_PSR		(1 << 19)
+#define  GEN8_DE_MISC_WD0		(1 << 23)
 
 #define GEN8_PCU_ISR _MMIO(0x444e0)
 #define GEN8_PCU_IMR _MMIO(0x444e4)
-- 
2.25.1

