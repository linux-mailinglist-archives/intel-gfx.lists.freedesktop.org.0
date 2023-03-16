Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9E46BD190
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:55:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E34710ED04;
	Thu, 16 Mar 2023 13:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4175810ECFB
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974942; x=1710510942;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xHiXuEDdEVfv7SwWFTHeOcxY2J+kAjc/GRBxBbYePAQ=;
 b=LnIHbNeFR8Itrxsry70nE7UnjofIDdGMoF2LzarxDTmkIi4WdkM7rCWy
 sRU0XuqdOl0pm9M4BjCOxeIZ2d4DanwvycEcRq2tJulE76rLiEvdmws+z
 lm1d7GjcKx+gyhzLKS47elucuniM0axMk+C56b5cP2z4LJNdLoXBi0kwq
 OdcogxEo3mgXgBuVQFPSYj0RSBklbnoXg8km/0qmfDVJi5FoPWTs4o9AL
 8+9OXHOWWFXnXaY+af7YLQCaztDe1W5yNo8ehlTqLcEJH0l0lqpnqoF/u
 FCm6TFI857wnkDzZcX/5TUdsU2WF0EQ6age6URMU6TOmQ2aeLLZcnkSqc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="402872199"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="402872199"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:30:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="679893625"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="679893625"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.158])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:30:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:29:35 +0200
Message-Id: <c6e679e46ec48c927508051a2b7d4b74121f186e.1678973283.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1678973282.git.jani.nikula@intel.com>
References: <cover.1678973282.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/psr: split out PSR regs to a
 separate file
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

Clean up i915_reg.h by splitting out PSR regs to
display/intel_psr_regs.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |   1 +
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 260 ++++++++++++++++++
 drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
 drivers/gpu/drm/i915/i915_irq.c               |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 249 -----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 7 files changed, 265 insertions(+), 249 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_psr_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 65585f19c6c8..ab71aa85852d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -28,6 +28,7 @@
 #include "intel_hotplug.h"
 #include "intel_panel.h"
 #include "intel_psr.h"
+#include "intel_psr_regs.h"
 #include "intel_sprite.h"
 #include "intel_wm.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 44610b20cd29..94863b39c274 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -34,6 +34,7 @@
 #include "intel_dp_aux.h"
 #include "intel_hdmi.h"
 #include "intel_psr.h"
+#include "intel_psr_regs.h"
 #include "intel_snps_phy.h"
 #include "skl_universal_plane.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
new file mode 100644
index 000000000000..958d8cabc44b
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -0,0 +1,260 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_PSR_REGS_H__
+#define __INTEL_PSR_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+#define TRANS_EXITLINE(trans)	_MMIO_TRANS2((trans), _TRANS_EXITLINE_A)
+#define   EXITLINE_ENABLE	REG_BIT(31)
+#define   EXITLINE_MASK		REG_GENMASK(12, 0)
+#define   EXITLINE_SHIFT	0
+
+/*
+ * HSW+ eDP PSR registers
+ *
+ * HSW PSR registers are relative to DDIA(_DDI_BUF_CTL_A + 0x800) with just one
+ * instance of it
+ */
+#define _SRD_CTL_A				0x60800
+#define _SRD_CTL_EDP				0x6f800
+#define EDP_PSR_CTL(tran)			_MMIO_TRANS2(tran, _SRD_CTL_A)
+#define   EDP_PSR_ENABLE			(1 << 31)
+#define   BDW_PSR_SINGLE_FRAME			(1 << 30)
+#define   EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK	(1 << 29) /* SW can't modify */
+#define   EDP_PSR_LINK_STANDBY			(1 << 27)
+#define   EDP_PSR_MIN_LINK_ENTRY_TIME_MASK	(3 << 25)
+#define   EDP_PSR_MIN_LINK_ENTRY_TIME_8_LINES	(0 << 25)
+#define   EDP_PSR_MIN_LINK_ENTRY_TIME_4_LINES	(1 << 25)
+#define   EDP_PSR_MIN_LINK_ENTRY_TIME_2_LINES	(2 << 25)
+#define   EDP_PSR_MIN_LINK_ENTRY_TIME_0_LINES	(3 << 25)
+#define   EDP_PSR_MAX_SLEEP_TIME_SHIFT		20
+#define   EDP_PSR_SKIP_AUX_EXIT			(1 << 12)
+#define   EDP_PSR_TP1_TP2_SEL			(0 << 11)
+#define   EDP_PSR_TP1_TP3_SEL			(1 << 11)
+#define   EDP_PSR_CRC_ENABLE			(1 << 10) /* BDW+ */
+#define   EDP_PSR_TP2_TP3_TIME_500us		(0 << 8)
+#define   EDP_PSR_TP2_TP3_TIME_100us		(1 << 8)
+#define   EDP_PSR_TP2_TP3_TIME_2500us		(2 << 8)
+#define   EDP_PSR_TP2_TP3_TIME_0us		(3 << 8)
+#define   EDP_PSR_TP4_TIME_0US			(3 << 6) /* ICL+ */
+#define   EDP_PSR_TP1_TIME_500us		(0 << 4)
+#define   EDP_PSR_TP1_TIME_100us		(1 << 4)
+#define   EDP_PSR_TP1_TIME_2500us		(2 << 4)
+#define   EDP_PSR_TP1_TIME_0us			(3 << 4)
+#define   EDP_PSR_IDLE_FRAME_SHIFT		0
+
+/*
+ * Until TGL, IMR/IIR are fixed at 0x648xx. On TGL+ those registers are relative
+ * to transcoder and bits defined for each one as if using no shift (i.e. as if
+ * it was for TRANSCODER_EDP)
+ */
+#define EDP_PSR_IMR				_MMIO(0x64834)
+#define EDP_PSR_IIR				_MMIO(0x64838)
+#define _PSR_IMR_A				0x60814
+#define _PSR_IIR_A				0x60818
+#define TRANS_PSR_IMR(tran)			_MMIO_TRANS2(tran, _PSR_IMR_A)
+#define TRANS_PSR_IIR(tran)			_MMIO_TRANS2(tran, _PSR_IIR_A)
+#define   _EDP_PSR_TRANS_SHIFT(trans)		((trans) == TRANSCODER_EDP ? \
+						 0 : ((trans) - TRANSCODER_A + 1) * 8)
+#define   TGL_PSR_MASK			REG_GENMASK(2, 0)
+#define   TGL_PSR_ERROR			REG_BIT(2)
+#define   TGL_PSR_POST_EXIT		REG_BIT(1)
+#define   TGL_PSR_PRE_ENTRY		REG_BIT(0)
+#define   EDP_PSR_MASK(trans)		(TGL_PSR_MASK <<		\
+					 _EDP_PSR_TRANS_SHIFT(trans))
+#define   EDP_PSR_ERROR(trans)		(TGL_PSR_ERROR <<		\
+					 _EDP_PSR_TRANS_SHIFT(trans))
+#define   EDP_PSR_POST_EXIT(trans)	(TGL_PSR_POST_EXIT <<		\
+					 _EDP_PSR_TRANS_SHIFT(trans))
+#define   EDP_PSR_PRE_ENTRY(trans)	(TGL_PSR_PRE_ENTRY <<		\
+					 _EDP_PSR_TRANS_SHIFT(trans))
+
+#define _SRD_AUX_DATA_A				0x60814
+#define _SRD_AUX_DATA_EDP			0x6f814
+#define EDP_PSR_AUX_DATA(tran, i)		_MMIO_TRANS2(tran, _SRD_AUX_DATA_A + (i) + 4) /* 5 registers */
+
+#define _SRD_STATUS_A				0x60840
+#define _SRD_STATUS_EDP				0x6f840
+#define EDP_PSR_STATUS(tran)			_MMIO_TRANS2(tran, _SRD_STATUS_A)
+#define   EDP_PSR_STATUS_STATE_MASK		(7 << 29)
+#define   EDP_PSR_STATUS_STATE_SHIFT		29
+#define   EDP_PSR_STATUS_STATE_IDLE		(0 << 29)
+#define   EDP_PSR_STATUS_STATE_SRDONACK		(1 << 29)
+#define   EDP_PSR_STATUS_STATE_SRDENT		(2 << 29)
+#define   EDP_PSR_STATUS_STATE_BUFOFF		(3 << 29)
+#define   EDP_PSR_STATUS_STATE_BUFON		(4 << 29)
+#define   EDP_PSR_STATUS_STATE_AUXACK		(5 << 29)
+#define   EDP_PSR_STATUS_STATE_SRDOFFACK	(6 << 29)
+#define   EDP_PSR_STATUS_LINK_MASK		(3 << 26)
+#define   EDP_PSR_STATUS_LINK_FULL_OFF		(0 << 26)
+#define   EDP_PSR_STATUS_LINK_FULL_ON		(1 << 26)
+#define   EDP_PSR_STATUS_LINK_STANDBY		(2 << 26)
+#define   EDP_PSR_STATUS_MAX_SLEEP_TIMER_SHIFT	20
+#define   EDP_PSR_STATUS_MAX_SLEEP_TIMER_MASK	0x1f
+#define   EDP_PSR_STATUS_COUNT_SHIFT		16
+#define   EDP_PSR_STATUS_COUNT_MASK		0xf
+#define   EDP_PSR_STATUS_AUX_ERROR		(1 << 15)
+#define   EDP_PSR_STATUS_AUX_SENDING		(1 << 12)
+#define   EDP_PSR_STATUS_SENDING_IDLE		(1 << 9)
+#define   EDP_PSR_STATUS_SENDING_TP2_TP3	(1 << 8)
+#define   EDP_PSR_STATUS_SENDING_TP1		(1 << 4)
+#define   EDP_PSR_STATUS_IDLE_MASK		0xf
+
+#define _SRD_PERF_CNT_A			0x60844
+#define _SRD_PERF_CNT_EDP		0x6f844
+#define EDP_PSR_PERF_CNT(tran)		_MMIO_TRANS2(tran, _SRD_PERF_CNT_A)
+#define   EDP_PSR_PERF_CNT_MASK		0xffffff
+
+/* PSR_MASK on SKL+ */
+#define _SRD_DEBUG_A				0x60860
+#define _SRD_DEBUG_EDP				0x6f860
+#define EDP_PSR_DEBUG(tran)			_MMIO_TRANS2(tran, _SRD_DEBUG_A)
+#define   EDP_PSR_DEBUG_MASK_MAX_SLEEP         (1 << 28)
+#define   EDP_PSR_DEBUG_MASK_LPSP              (1 << 27)
+#define   EDP_PSR_DEBUG_MASK_MEMUP             (1 << 26)
+#define   EDP_PSR_DEBUG_MASK_HPD               (1 << 25)
+#define   EDP_PSR_DEBUG_MASK_DISP_REG_WRITE    (1 << 16) /* Reserved in ICL+ */
+#define   EDP_PSR_DEBUG_EXIT_ON_PIXEL_UNDERRUN (1 << 15) /* SKL+ */
+
+#define _PSR2_CTL_A				0x60900
+#define _PSR2_CTL_EDP				0x6f900
+#define EDP_PSR2_CTL(tran)			_MMIO_TRANS2(tran, _PSR2_CTL_A)
+#define   EDP_PSR2_ENABLE			(1 << 31)
+#define   EDP_SU_TRACK_ENABLE			(1 << 30) /* up to adl-p */
+#define   TGL_EDP_PSR2_BLOCK_COUNT_NUM_2	(0 << 28)
+#define   TGL_EDP_PSR2_BLOCK_COUNT_NUM_3	(1 << 28)
+#define   EDP_Y_COORDINATE_ENABLE		REG_BIT(25) /* display 10, 11 and 12 */
+#define   EDP_PSR2_SU_SDP_SCANLINE		REG_BIT(25) /* display 13+ */
+#define   EDP_MAX_SU_DISABLE_TIME(t)		((t) << 20)
+#define   EDP_MAX_SU_DISABLE_TIME_MASK		(0x1f << 20)
+#define   EDP_PSR2_IO_BUFFER_WAKE_MAX_LINES	8
+#define   EDP_PSR2_IO_BUFFER_WAKE(lines)	((EDP_PSR2_IO_BUFFER_WAKE_MAX_LINES - (lines)) << 13)
+#define   EDP_PSR2_IO_BUFFER_WAKE_MASK		(3 << 13)
+#define   TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES	5
+#define   TGL_EDP_PSR2_IO_BUFFER_WAKE_SHIFT	13
+#define   TGL_EDP_PSR2_IO_BUFFER_WAKE(lines)	(((lines) - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES) << TGL_EDP_PSR2_IO_BUFFER_WAKE_SHIFT)
+#define   TGL_EDP_PSR2_IO_BUFFER_WAKE_MASK	(7 << 13)
+#define   EDP_PSR2_FAST_WAKE_MAX_LINES		8
+#define   EDP_PSR2_FAST_WAKE(lines)		((EDP_PSR2_FAST_WAKE_MAX_LINES - (lines)) << 11)
+#define   EDP_PSR2_FAST_WAKE_MASK		(3 << 11)
+#define   TGL_EDP_PSR2_FAST_WAKE_MIN_LINES	5
+#define   TGL_EDP_PSR2_FAST_WAKE_MIN_SHIFT	10
+#define   TGL_EDP_PSR2_FAST_WAKE(lines)		(((lines) - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES) << TGL_EDP_PSR2_FAST_WAKE_MIN_SHIFT)
+#define   TGL_EDP_PSR2_FAST_WAKE_MASK		(7 << 10)
+#define   EDP_PSR2_TP2_TIME_500us		(0 << 8)
+#define   EDP_PSR2_TP2_TIME_100us		(1 << 8)
+#define   EDP_PSR2_TP2_TIME_2500us		(2 << 8)
+#define   EDP_PSR2_TP2_TIME_50us		(3 << 8)
+#define   EDP_PSR2_TP2_TIME_MASK		(3 << 8)
+#define   EDP_PSR2_FRAME_BEFORE_SU_SHIFT	4
+#define   EDP_PSR2_FRAME_BEFORE_SU_MASK		(0xf << 4)
+#define   EDP_PSR2_FRAME_BEFORE_SU(a)		((a) << 4)
+#define   EDP_PSR2_IDLE_FRAME_MASK		0xf
+#define   EDP_PSR2_IDLE_FRAME_SHIFT		0
+
+#define _PSR_EVENT_TRANS_A			0x60848
+#define _PSR_EVENT_TRANS_B			0x61848
+#define _PSR_EVENT_TRANS_C			0x62848
+#define _PSR_EVENT_TRANS_D			0x63848
+#define _PSR_EVENT_TRANS_EDP			0x6f848
+#define PSR_EVENT(tran)				_MMIO_TRANS2(tran, _PSR_EVENT_TRANS_A)
+#define  PSR_EVENT_PSR2_WD_TIMER_EXPIRE		(1 << 17)
+#define  PSR_EVENT_PSR2_DISABLED		(1 << 16)
+#define  PSR_EVENT_SU_DIRTY_FIFO_UNDERRUN	(1 << 15)
+#define  PSR_EVENT_SU_CRC_FIFO_UNDERRUN		(1 << 14)
+#define  PSR_EVENT_GRAPHICS_RESET		(1 << 12)
+#define  PSR_EVENT_PCH_INTERRUPT		(1 << 11)
+#define  PSR_EVENT_MEMORY_UP			(1 << 10)
+#define  PSR_EVENT_FRONT_BUFFER_MODIFY		(1 << 9)
+#define  PSR_EVENT_WD_TIMER_EXPIRE		(1 << 8)
+#define  PSR_EVENT_PIPE_REGISTERS_UPDATE	(1 << 6)
+#define  PSR_EVENT_REGISTER_UPDATE		(1 << 5) /* Reserved in ICL+ */
+#define  PSR_EVENT_HDCP_ENABLE			(1 << 4)
+#define  PSR_EVENT_KVMR_SESSION_ENABLE		(1 << 3)
+#define  PSR_EVENT_VBI_ENABLE			(1 << 2)
+#define  PSR_EVENT_LPSP_MODE_EXIT		(1 << 1)
+#define  PSR_EVENT_PSR_DISABLE			(1 << 0)
+
+#define _PSR2_STATUS_A				0x60940
+#define _PSR2_STATUS_EDP			0x6f940
+#define EDP_PSR2_STATUS(tran)			_MMIO_TRANS2(tran, _PSR2_STATUS_A)
+#define EDP_PSR2_STATUS_STATE_MASK		REG_GENMASK(31, 28)
+#define EDP_PSR2_STATUS_STATE_DEEP_SLEEP	REG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x8)
+
+#define _PSR2_SU_STATUS_A		0x60914
+#define _PSR2_SU_STATUS_EDP		0x6f914
+#define _PSR2_SU_STATUS(tran, index)	_MMIO_TRANS2(tran, _PSR2_SU_STATUS_A + (index) * 4)
+#define PSR2_SU_STATUS(tran, frame)	(_PSR2_SU_STATUS(tran, (frame) / 3))
+#define PSR2_SU_STATUS_SHIFT(frame)	(((frame) % 3) * 10)
+#define PSR2_SU_STATUS_MASK(frame)	(0x3ff << PSR2_SU_STATUS_SHIFT(frame))
+#define PSR2_SU_STATUS_FRAMES		8
+
+#define _PSR2_MAN_TRK_CTL_A					0x60910
+#define _PSR2_MAN_TRK_CTL_EDP					0x6f910
+#define PSR2_MAN_TRK_CTL(tran)					_MMIO_TRANS2(tran, _PSR2_MAN_TRK_CTL_A)
+#define  PSR2_MAN_TRK_CTL_ENABLE				REG_BIT(31)
+#define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK		REG_GENMASK(30, 21)
+#define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)		REG_FIELD_PREP(PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
+#define  PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK		REG_GENMASK(20, 11)
+#define  PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)
+#define  PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME			REG_BIT(3)
+#define  PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(2)
+#define  PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE		REG_BIT(1)
+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK	REG_GENMASK(28, 16)
+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)	REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK		REG_GENMASK(12, 0)
+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)
+#define  ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE		REG_BIT(31)
+#define  ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME		REG_BIT(14)
+#define  ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(13)
+
+#define _SEL_FETCH_PLANE_BASE_1_A		0x70890
+#define _SEL_FETCH_PLANE_BASE_2_A		0x708B0
+#define _SEL_FETCH_PLANE_BASE_3_A		0x708D0
+#define _SEL_FETCH_PLANE_BASE_4_A		0x708F0
+#define _SEL_FETCH_PLANE_BASE_5_A		0x70920
+#define _SEL_FETCH_PLANE_BASE_6_A		0x70940
+#define _SEL_FETCH_PLANE_BASE_7_A		0x70960
+#define _SEL_FETCH_PLANE_BASE_CUR_A		0x70880
+#define _SEL_FETCH_PLANE_BASE_1_B		0x71890
+
+#define _SEL_FETCH_PLANE_BASE_A(plane) _PICK(plane, \
+					     _SEL_FETCH_PLANE_BASE_1_A, \
+					     _SEL_FETCH_PLANE_BASE_2_A, \
+					     _SEL_FETCH_PLANE_BASE_3_A, \
+					     _SEL_FETCH_PLANE_BASE_4_A, \
+					     _SEL_FETCH_PLANE_BASE_5_A, \
+					     _SEL_FETCH_PLANE_BASE_6_A, \
+					     _SEL_FETCH_PLANE_BASE_7_A, \
+					     _SEL_FETCH_PLANE_BASE_CUR_A)
+#define _SEL_FETCH_PLANE_BASE_1(pipe) _PIPE(pipe, _SEL_FETCH_PLANE_BASE_1_A, _SEL_FETCH_PLANE_BASE_1_B)
+#define _SEL_FETCH_PLANE_BASE(pipe, plane) (_SEL_FETCH_PLANE_BASE_1(pipe) - \
+					    _SEL_FETCH_PLANE_BASE_1_A + \
+					    _SEL_FETCH_PLANE_BASE_A(plane))
+
+#define _SEL_FETCH_PLANE_CTL_1_A		0x70890
+#define PLANE_SEL_FETCH_CTL(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
+					       _SEL_FETCH_PLANE_CTL_1_A - \
+					       _SEL_FETCH_PLANE_BASE_1_A)
+#define PLANE_SEL_FETCH_CTL_ENABLE		REG_BIT(31)
+
+#define _SEL_FETCH_PLANE_POS_1_A		0x70894
+#define PLANE_SEL_FETCH_POS(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
+					       _SEL_FETCH_PLANE_POS_1_A - \
+					       _SEL_FETCH_PLANE_BASE_1_A)
+
+#define _SEL_FETCH_PLANE_SIZE_1_A		0x70898
+#define PLANE_SEL_FETCH_SIZE(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
+						_SEL_FETCH_PLANE_SIZE_1_A - \
+						_SEL_FETCH_PLANE_BASE_1_A)
+
+#define _SEL_FETCH_PLANE_OFFSET_1_A		0x7089C
+#define PLANE_SEL_FETCH_OFFSET(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
+						  _SEL_FETCH_PLANE_OFFSET_1_A - \
+						  _SEL_FETCH_PLANE_BASE_1_A)
+
+#endif /* __INTEL_PSR_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 8bfccae7e026..4b45a041ac5c 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -48,6 +48,7 @@
 #include "display/intel_fbc.h"
 #include "display/intel_fdi_regs.h"
 #include "display/intel_pps_regs.h"
+#include "display/intel_psr_regs.h"
 #include "display/skl_watermark_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index c0888cc88d04..d24bdea65a3d 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -42,6 +42,7 @@
 #include "display/intel_hotplug.h"
 #include "display/intel_lpe_audio.h"
 #include "display/intel_psr.h"
+#include "display/intel_psr_regs.h"
 
 #include "gt/intel_breadcrumbs.h"
 #include "gt/intel_gt.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index ea8da91b9b6c..ae6e0b012250 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1970,11 +1970,6 @@
 #define PIPESRC(pipe)		_MMIO_TRANS2((pipe), _PIPEASRC)
 #define TRANS_MULT(trans)	_MMIO_TRANS2((trans), _TRANS_MULT_A)
 
-#define TRANS_EXITLINE(trans)	_MMIO_TRANS2((trans), _TRANS_EXITLINE_A)
-#define   EXITLINE_ENABLE	REG_BIT(31)
-#define   EXITLINE_MASK		REG_GENMASK(12, 0)
-#define   EXITLINE_SHIFT	0
-
 /* VRR registers */
 #define _TRANS_VRR_CTL_A		0x60420
 #define _TRANS_VRR_CTL_B		0x61420
@@ -2068,205 +2063,6 @@
 #define   TRANS_PUSH_EN			REG_BIT(31)
 #define   TRANS_PUSH_SEND		REG_BIT(30)
 
-/*
- * HSW+ eDP PSR registers
- *
- * HSW PSR registers are relative to DDIA(_DDI_BUF_CTL_A + 0x800) with just one
- * instance of it
- */
-#define _SRD_CTL_A				0x60800
-#define _SRD_CTL_EDP				0x6f800
-#define EDP_PSR_CTL(tran)			_MMIO_TRANS2(tran, _SRD_CTL_A)
-#define   EDP_PSR_ENABLE			(1 << 31)
-#define   BDW_PSR_SINGLE_FRAME			(1 << 30)
-#define   EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK	(1 << 29) /* SW can't modify */
-#define   EDP_PSR_LINK_STANDBY			(1 << 27)
-#define   EDP_PSR_MIN_LINK_ENTRY_TIME_MASK	(3 << 25)
-#define   EDP_PSR_MIN_LINK_ENTRY_TIME_8_LINES	(0 << 25)
-#define   EDP_PSR_MIN_LINK_ENTRY_TIME_4_LINES	(1 << 25)
-#define   EDP_PSR_MIN_LINK_ENTRY_TIME_2_LINES	(2 << 25)
-#define   EDP_PSR_MIN_LINK_ENTRY_TIME_0_LINES	(3 << 25)
-#define   EDP_PSR_MAX_SLEEP_TIME_SHIFT		20
-#define   EDP_PSR_SKIP_AUX_EXIT			(1 << 12)
-#define   EDP_PSR_TP1_TP2_SEL			(0 << 11)
-#define   EDP_PSR_TP1_TP3_SEL			(1 << 11)
-#define   EDP_PSR_CRC_ENABLE			(1 << 10) /* BDW+ */
-#define   EDP_PSR_TP2_TP3_TIME_500us		(0 << 8)
-#define   EDP_PSR_TP2_TP3_TIME_100us		(1 << 8)
-#define   EDP_PSR_TP2_TP3_TIME_2500us		(2 << 8)
-#define   EDP_PSR_TP2_TP3_TIME_0us		(3 << 8)
-#define   EDP_PSR_TP4_TIME_0US			(3 << 6) /* ICL+ */
-#define   EDP_PSR_TP1_TIME_500us		(0 << 4)
-#define   EDP_PSR_TP1_TIME_100us		(1 << 4)
-#define   EDP_PSR_TP1_TIME_2500us		(2 << 4)
-#define   EDP_PSR_TP1_TIME_0us			(3 << 4)
-#define   EDP_PSR_IDLE_FRAME_SHIFT		0
-
-/*
- * Until TGL, IMR/IIR are fixed at 0x648xx. On TGL+ those registers are relative
- * to transcoder and bits defined for each one as if using no shift (i.e. as if
- * it was for TRANSCODER_EDP)
- */
-#define EDP_PSR_IMR				_MMIO(0x64834)
-#define EDP_PSR_IIR				_MMIO(0x64838)
-#define _PSR_IMR_A				0x60814
-#define _PSR_IIR_A				0x60818
-#define TRANS_PSR_IMR(tran)			_MMIO_TRANS2(tran, _PSR_IMR_A)
-#define TRANS_PSR_IIR(tran)			_MMIO_TRANS2(tran, _PSR_IIR_A)
-#define   _EDP_PSR_TRANS_SHIFT(trans)		((trans) == TRANSCODER_EDP ? \
-						 0 : ((trans) - TRANSCODER_A + 1) * 8)
-#define   TGL_PSR_MASK			REG_GENMASK(2, 0)
-#define   TGL_PSR_ERROR			REG_BIT(2)
-#define   TGL_PSR_POST_EXIT		REG_BIT(1)
-#define   TGL_PSR_PRE_ENTRY		REG_BIT(0)
-#define   EDP_PSR_MASK(trans)		(TGL_PSR_MASK <<		\
-					 _EDP_PSR_TRANS_SHIFT(trans))
-#define   EDP_PSR_ERROR(trans)		(TGL_PSR_ERROR <<		\
-					 _EDP_PSR_TRANS_SHIFT(trans))
-#define   EDP_PSR_POST_EXIT(trans)	(TGL_PSR_POST_EXIT <<		\
-					 _EDP_PSR_TRANS_SHIFT(trans))
-#define   EDP_PSR_PRE_ENTRY(trans)	(TGL_PSR_PRE_ENTRY <<		\
-					 _EDP_PSR_TRANS_SHIFT(trans))
-
-#define _SRD_AUX_DATA_A				0x60814
-#define _SRD_AUX_DATA_EDP			0x6f814
-#define EDP_PSR_AUX_DATA(tran, i)		_MMIO_TRANS2(tran, _SRD_AUX_DATA_A + (i) + 4) /* 5 registers */
-
-#define _SRD_STATUS_A				0x60840
-#define _SRD_STATUS_EDP				0x6f840
-#define EDP_PSR_STATUS(tran)			_MMIO_TRANS2(tran, _SRD_STATUS_A)
-#define   EDP_PSR_STATUS_STATE_MASK		(7 << 29)
-#define   EDP_PSR_STATUS_STATE_SHIFT		29
-#define   EDP_PSR_STATUS_STATE_IDLE		(0 << 29)
-#define   EDP_PSR_STATUS_STATE_SRDONACK		(1 << 29)
-#define   EDP_PSR_STATUS_STATE_SRDENT		(2 << 29)
-#define   EDP_PSR_STATUS_STATE_BUFOFF		(3 << 29)
-#define   EDP_PSR_STATUS_STATE_BUFON		(4 << 29)
-#define   EDP_PSR_STATUS_STATE_AUXACK		(5 << 29)
-#define   EDP_PSR_STATUS_STATE_SRDOFFACK	(6 << 29)
-#define   EDP_PSR_STATUS_LINK_MASK		(3 << 26)
-#define   EDP_PSR_STATUS_LINK_FULL_OFF		(0 << 26)
-#define   EDP_PSR_STATUS_LINK_FULL_ON		(1 << 26)
-#define   EDP_PSR_STATUS_LINK_STANDBY		(2 << 26)
-#define   EDP_PSR_STATUS_MAX_SLEEP_TIMER_SHIFT	20
-#define   EDP_PSR_STATUS_MAX_SLEEP_TIMER_MASK	0x1f
-#define   EDP_PSR_STATUS_COUNT_SHIFT		16
-#define   EDP_PSR_STATUS_COUNT_MASK		0xf
-#define   EDP_PSR_STATUS_AUX_ERROR		(1 << 15)
-#define   EDP_PSR_STATUS_AUX_SENDING		(1 << 12)
-#define   EDP_PSR_STATUS_SENDING_IDLE		(1 << 9)
-#define   EDP_PSR_STATUS_SENDING_TP2_TP3	(1 << 8)
-#define   EDP_PSR_STATUS_SENDING_TP1		(1 << 4)
-#define   EDP_PSR_STATUS_IDLE_MASK		0xf
-
-#define _SRD_PERF_CNT_A			0x60844
-#define _SRD_PERF_CNT_EDP		0x6f844
-#define EDP_PSR_PERF_CNT(tran)		_MMIO_TRANS2(tran, _SRD_PERF_CNT_A)
-#define   EDP_PSR_PERF_CNT_MASK		0xffffff
-
-/* PSR_MASK on SKL+ */
-#define _SRD_DEBUG_A				0x60860
-#define _SRD_DEBUG_EDP				0x6f860
-#define EDP_PSR_DEBUG(tran)			_MMIO_TRANS2(tran, _SRD_DEBUG_A)
-#define   EDP_PSR_DEBUG_MASK_MAX_SLEEP         (1 << 28)
-#define   EDP_PSR_DEBUG_MASK_LPSP              (1 << 27)
-#define   EDP_PSR_DEBUG_MASK_MEMUP             (1 << 26)
-#define   EDP_PSR_DEBUG_MASK_HPD               (1 << 25)
-#define   EDP_PSR_DEBUG_MASK_DISP_REG_WRITE    (1 << 16) /* Reserved in ICL+ */
-#define   EDP_PSR_DEBUG_EXIT_ON_PIXEL_UNDERRUN (1 << 15) /* SKL+ */
-
-#define _PSR2_CTL_A				0x60900
-#define _PSR2_CTL_EDP				0x6f900
-#define EDP_PSR2_CTL(tran)			_MMIO_TRANS2(tran, _PSR2_CTL_A)
-#define   EDP_PSR2_ENABLE			(1 << 31)
-#define   EDP_SU_TRACK_ENABLE			(1 << 30) /* up to adl-p */
-#define   TGL_EDP_PSR2_BLOCK_COUNT_NUM_2	(0 << 28)
-#define   TGL_EDP_PSR2_BLOCK_COUNT_NUM_3	(1 << 28)
-#define   EDP_Y_COORDINATE_ENABLE		REG_BIT(25) /* display 10, 11 and 12 */
-#define   EDP_PSR2_SU_SDP_SCANLINE		REG_BIT(25) /* display 13+ */
-#define   EDP_MAX_SU_DISABLE_TIME(t)		((t) << 20)
-#define   EDP_MAX_SU_DISABLE_TIME_MASK		(0x1f << 20)
-#define   EDP_PSR2_IO_BUFFER_WAKE_MAX_LINES	8
-#define   EDP_PSR2_IO_BUFFER_WAKE(lines)	((EDP_PSR2_IO_BUFFER_WAKE_MAX_LINES - (lines)) << 13)
-#define   EDP_PSR2_IO_BUFFER_WAKE_MASK		(3 << 13)
-#define   TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES	5
-#define   TGL_EDP_PSR2_IO_BUFFER_WAKE_SHIFT	13
-#define   TGL_EDP_PSR2_IO_BUFFER_WAKE(lines)	(((lines) - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES) << TGL_EDP_PSR2_IO_BUFFER_WAKE_SHIFT)
-#define   TGL_EDP_PSR2_IO_BUFFER_WAKE_MASK	(7 << 13)
-#define   EDP_PSR2_FAST_WAKE_MAX_LINES		8
-#define   EDP_PSR2_FAST_WAKE(lines)		((EDP_PSR2_FAST_WAKE_MAX_LINES - (lines)) << 11)
-#define   EDP_PSR2_FAST_WAKE_MASK		(3 << 11)
-#define   TGL_EDP_PSR2_FAST_WAKE_MIN_LINES	5
-#define   TGL_EDP_PSR2_FAST_WAKE_MIN_SHIFT	10
-#define   TGL_EDP_PSR2_FAST_WAKE(lines)		(((lines) - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES) << TGL_EDP_PSR2_FAST_WAKE_MIN_SHIFT)
-#define   TGL_EDP_PSR2_FAST_WAKE_MASK		(7 << 10)
-#define   EDP_PSR2_TP2_TIME_500us		(0 << 8)
-#define   EDP_PSR2_TP2_TIME_100us		(1 << 8)
-#define   EDP_PSR2_TP2_TIME_2500us		(2 << 8)
-#define   EDP_PSR2_TP2_TIME_50us		(3 << 8)
-#define   EDP_PSR2_TP2_TIME_MASK		(3 << 8)
-#define   EDP_PSR2_FRAME_BEFORE_SU_SHIFT	4
-#define   EDP_PSR2_FRAME_BEFORE_SU_MASK		(0xf << 4)
-#define   EDP_PSR2_FRAME_BEFORE_SU(a)		((a) << 4)
-#define   EDP_PSR2_IDLE_FRAME_MASK		0xf
-#define   EDP_PSR2_IDLE_FRAME_SHIFT		0
-
-#define _PSR_EVENT_TRANS_A			0x60848
-#define _PSR_EVENT_TRANS_B			0x61848
-#define _PSR_EVENT_TRANS_C			0x62848
-#define _PSR_EVENT_TRANS_D			0x63848
-#define _PSR_EVENT_TRANS_EDP			0x6f848
-#define PSR_EVENT(tran)				_MMIO_TRANS2(tran, _PSR_EVENT_TRANS_A)
-#define  PSR_EVENT_PSR2_WD_TIMER_EXPIRE		(1 << 17)
-#define  PSR_EVENT_PSR2_DISABLED		(1 << 16)
-#define  PSR_EVENT_SU_DIRTY_FIFO_UNDERRUN	(1 << 15)
-#define  PSR_EVENT_SU_CRC_FIFO_UNDERRUN		(1 << 14)
-#define  PSR_EVENT_GRAPHICS_RESET		(1 << 12)
-#define  PSR_EVENT_PCH_INTERRUPT		(1 << 11)
-#define  PSR_EVENT_MEMORY_UP			(1 << 10)
-#define  PSR_EVENT_FRONT_BUFFER_MODIFY		(1 << 9)
-#define  PSR_EVENT_WD_TIMER_EXPIRE		(1 << 8)
-#define  PSR_EVENT_PIPE_REGISTERS_UPDATE	(1 << 6)
-#define  PSR_EVENT_REGISTER_UPDATE		(1 << 5) /* Reserved in ICL+ */
-#define  PSR_EVENT_HDCP_ENABLE			(1 << 4)
-#define  PSR_EVENT_KVMR_SESSION_ENABLE		(1 << 3)
-#define  PSR_EVENT_VBI_ENABLE			(1 << 2)
-#define  PSR_EVENT_LPSP_MODE_EXIT		(1 << 1)
-#define  PSR_EVENT_PSR_DISABLE			(1 << 0)
-
-#define _PSR2_STATUS_A				0x60940
-#define _PSR2_STATUS_EDP			0x6f940
-#define EDP_PSR2_STATUS(tran)			_MMIO_TRANS2(tran, _PSR2_STATUS_A)
-#define EDP_PSR2_STATUS_STATE_MASK		REG_GENMASK(31, 28)
-#define EDP_PSR2_STATUS_STATE_DEEP_SLEEP	REG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x8)
-
-#define _PSR2_SU_STATUS_A		0x60914
-#define _PSR2_SU_STATUS_EDP		0x6f914
-#define _PSR2_SU_STATUS(tran, index)	_MMIO_TRANS2(tran, _PSR2_SU_STATUS_A + (index) * 4)
-#define PSR2_SU_STATUS(tran, frame)	(_PSR2_SU_STATUS(tran, (frame) / 3))
-#define PSR2_SU_STATUS_SHIFT(frame)	(((frame) % 3) * 10)
-#define PSR2_SU_STATUS_MASK(frame)	(0x3ff << PSR2_SU_STATUS_SHIFT(frame))
-#define PSR2_SU_STATUS_FRAMES		8
-
-#define _PSR2_MAN_TRK_CTL_A					0x60910
-#define _PSR2_MAN_TRK_CTL_EDP					0x6f910
-#define PSR2_MAN_TRK_CTL(tran)					_MMIO_TRANS2(tran, _PSR2_MAN_TRK_CTL_A)
-#define  PSR2_MAN_TRK_CTL_ENABLE				REG_BIT(31)
-#define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK		REG_GENMASK(30, 21)
-#define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)		REG_FIELD_PREP(PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
-#define  PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK		REG_GENMASK(20, 11)
-#define  PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)
-#define  PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME			REG_BIT(3)
-#define  PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(2)
-#define  PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE		REG_BIT(1)
-#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK	REG_GENMASK(28, 16)
-#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)	REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
-#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK		REG_GENMASK(12, 0)
-#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)
-#define  ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE		REG_BIT(31)
-#define  ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME		REG_BIT(14)
-#define  ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(13)
-
 /* VGA port control */
 #define ADPA			_MMIO(0x61100)
 #define PCH_ADPA                _MMIO(0xe1100)
@@ -4099,51 +3895,6 @@
 #define PLANE_COLOR_CTL(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_COLOR_CTL_1(pipe), _PLANE_COLOR_CTL_2(pipe))
 
-#define _SEL_FETCH_PLANE_BASE_1_A		0x70890
-#define _SEL_FETCH_PLANE_BASE_2_A		0x708B0
-#define _SEL_FETCH_PLANE_BASE_3_A		0x708D0
-#define _SEL_FETCH_PLANE_BASE_4_A		0x708F0
-#define _SEL_FETCH_PLANE_BASE_5_A		0x70920
-#define _SEL_FETCH_PLANE_BASE_6_A		0x70940
-#define _SEL_FETCH_PLANE_BASE_7_A		0x70960
-#define _SEL_FETCH_PLANE_BASE_CUR_A		0x70880
-#define _SEL_FETCH_PLANE_BASE_1_B		0x71890
-
-#define _SEL_FETCH_PLANE_BASE_A(plane) _PICK(plane, \
-					     _SEL_FETCH_PLANE_BASE_1_A, \
-					     _SEL_FETCH_PLANE_BASE_2_A, \
-					     _SEL_FETCH_PLANE_BASE_3_A, \
-					     _SEL_FETCH_PLANE_BASE_4_A, \
-					     _SEL_FETCH_PLANE_BASE_5_A, \
-					     _SEL_FETCH_PLANE_BASE_6_A, \
-					     _SEL_FETCH_PLANE_BASE_7_A, \
-					     _SEL_FETCH_PLANE_BASE_CUR_A)
-#define _SEL_FETCH_PLANE_BASE_1(pipe) _PIPE(pipe, _SEL_FETCH_PLANE_BASE_1_A, _SEL_FETCH_PLANE_BASE_1_B)
-#define _SEL_FETCH_PLANE_BASE(pipe, plane) (_SEL_FETCH_PLANE_BASE_1(pipe) - \
-					    _SEL_FETCH_PLANE_BASE_1_A + \
-					    _SEL_FETCH_PLANE_BASE_A(plane))
-
-#define _SEL_FETCH_PLANE_CTL_1_A		0x70890
-#define PLANE_SEL_FETCH_CTL(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
-					       _SEL_FETCH_PLANE_CTL_1_A - \
-					       _SEL_FETCH_PLANE_BASE_1_A)
-#define PLANE_SEL_FETCH_CTL_ENABLE		REG_BIT(31)
-
-#define _SEL_FETCH_PLANE_POS_1_A		0x70894
-#define PLANE_SEL_FETCH_POS(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
-					       _SEL_FETCH_PLANE_POS_1_A - \
-					       _SEL_FETCH_PLANE_BASE_1_A)
-
-#define _SEL_FETCH_PLANE_SIZE_1_A		0x70898
-#define PLANE_SEL_FETCH_SIZE(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
-						_SEL_FETCH_PLANE_SIZE_1_A - \
-						_SEL_FETCH_PLANE_BASE_1_A)
-
-#define _SEL_FETCH_PLANE_OFFSET_1_A		0x7089C
-#define PLANE_SEL_FETCH_OFFSET(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
-						  _SEL_FETCH_PLANE_OFFSET_1_A - \
-						  _SEL_FETCH_PLANE_BASE_1_A)
-
 /* VBIOS regs */
 #define VGACNTRL		_MMIO(0x71400)
 # define VGA_DISP_DISABLE			(1 << 31)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 0661c32f8436..154d2b7a689d 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -11,6 +11,7 @@
 #include "display/intel_dpio_phy.h"
 #include "display/intel_fdi_regs.h"
 #include "display/intel_lvds_regs.h"
+#include "display/intel_psr_regs.h"
 #include "display/skl_watermark_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
-- 
2.39.2

