Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMU+Ocdrw2kqqwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 05:59:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF1B31FC32
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 05:59:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B1D10E75E;
	Wed, 25 Mar 2026 04:59:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="knztoa2b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4219E10E1DC;
 Wed, 25 Mar 2026 04:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774414787; x=1805950787;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5fd739CZdQ84R3V3LFjhSTqLKSgCxaPXvK1R2pPt/m4=;
 b=knztoa2bDsJkuY2qC+uh9LTly23ceYkgOftib2jlpRxvZV9IBniyHjK1
 9AjzsT7BWzPDJjhm/Ctr4fMMt87fRW1R1R+vHdNcFNeBsmTCMvRzZ8J1/
 PL1xNEH5HILUVD6lT3i8lFWnpkyvRnpXulRCBzb/maFQ8Z2i9gGGPdNJB
 7n/dqVHUN3Uoxdkxkun2GBkUOLQnjzB3LGXjP3+lx0IVWGDx2AAeol2s5
 dx2EteybTdgzcOG5s8gj9nDcLtf9dkjfrn3RC34b3gcxiAPcChPAYyQ2O
 7uor6+gtznPRpHXVzvZV9ceMAyoOYKQAU4dEDxfw85862Qq7BGOLLPUft Q==;
X-CSE-ConnectionGUID: iXnxJe/SStuinAM5Mi8eMA==
X-CSE-MsgGUID: 9fKCzNvNSmi/+Y3q3I0bYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86922246"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86922246"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 21:59:33 -0700
X-CSE-ConnectionGUID: ssiO9np9QheIRlIdSUvi/Q==
X-CSE-MsgGUID: MLtjXcISQ56djltyidGYog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224580487"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 24 Mar 2026 21:59:31 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 03/26] drm/i915/writeback: Add writeback registers
Date: Wed, 25 Mar 2026 10:28:53 +0530
Message-Id: <20260325045916.984243-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325045916.984243-1-suraj.kandpal@intel.com>
References: <20260325045916.984243-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 4CF1B31FC32
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add writeback registers to its own file.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../drm/i915/display/intel_writeback_reg.h    | 136 ++++++++++++++++++
 1 file changed, 136 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_reg.h

diff --git a/drivers/gpu/drm/i915/display/intel_writeback_reg.h b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
new file mode 100644
index 000000000000..ffe302ef3dd9
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
@@ -0,0 +1,136 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_WRITEBACK_REGS_H__
+#define __INTEL_WRITEBACK_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+/* WD 0 and 1 */
+#define TRANSCODER_WD0_OFFSET	0x6e000
+#define TRANSCODER_WD1_OFFSET	0x6d800
+
+/* WD 0 and 1 */
+#define PIPE_WD0_OFFSET		0x7e008
+#define PIPE_WD1_OFFSET		0x7d008
+
+/* Gen12 WD */
+#define _MMIO_WD(tc, wd0, wd1)	_MMIO_TRANS((tc) - TRANSCODER_WD_0, wd0, wd1)
+
+#define WD_TRANS_ENABLE		REG_BIT(31)
+#define WD_TRANS_STATE		REG_BIT(30)
+
+/* WD transcoder control */
+#define _WD_TRANS_FUNC_CTL_0	0x6e400
+#define _WD_TRANS_FUNC_CTL_1	0x6ec00
+#define WD_TRANS_FUNC_CTL(tc)	_MMIO_WD(tc,\
+				_WD_TRANS_FUNC_CTL_0,\
+				_WD_TRANS_FUNC_CTL_1)
+
+#define TRANS_WD_FUNC_ENABLE		REG_BIT(31)
+#define WD_TRIGGERED_CAP_MODE_ENABLE	REG_BIT(30)
+#define START_TRIGGER_FRAME		REG_BIT(29)
+#define STOP_TRIGGER_FRAME		REG_BIT(28)
+#define WD_INPUT_SELECT_MASK		REG_GENMASK(14, 12)
+#define WD_INPUT_PIPE_A			REG_FIELD_PREP(WD_INPUT_SELECT_MASK, 0)
+#define WD_INPUT_PIPE_B			REG_FIELD_PREP(WD_INPUT_SELECT_MASK, 5)
+#define WD_INPUT_PIPE_C			REG_FIELD_PREP(WD_INPUT_SELECT_MASK, 6)
+#define WD_INPUT_PIPE_D			REG_FIELD_PREP(WD_INPUT_SELECT_MASK, 7)
+#define WD_COLOR_MODE_MASK		REG_GENMASK(22, 20)
+#define WD_CONTROL_POINTERS             REG_GENMASK(19, 18)
+#define WD_DISABLE_POINTERS             REG_FIELD_PREP(WD_CONTROL_POINTERS, 3)
+#define WD_PIX_FMT_YUYV			REG_FIELD_PREP(WD_COLOR_MODE_MASK, 1)
+#define WD_PIX_FMT_XYUV8888		REG_FIELD_PREP(WD_COLOR_MODE_MASK, 2)
+#define WD_PIX_FMT_XBGR8888		REG_FIELD_PREP(WD_COLOR_MODE_MASK, 3)
+#define WD_PIX_FMT_Y410			REG_FIELD_PREP(WD_COLOR_MODE_MASK, 4)
+#define WD_PIX_FMT_YUV422		REG_FIELD_PREP(WD_COLOR_MODE_MASK, 5)
+#define WD_PIX_FMT_XBGR2101010		REG_FIELD_PREP(WD_COLOR_MODE_MASK, 6)
+#define WD_PIX_FMT_RGB565		REG_FIELD_PREP(WD_COLOR_MODE_MASK, 7)
+#define WD_FRAME_NUMBER_MASK		REG_GENMASK(3, 0)
+#define WD_FRAME_NUMBER(n)		REG_FIELD_PREP(WD_FRAME_NUMBER_MASK, n)
+
+#define _WD_STRIDE_0			0x6e510
+#define _WD_STRIDE_1			0x6ed10
+#define WD_STRIDE(tc)			_MMIO_WD(tc,\
+					_WD_STRIDE_0,\
+					_WD_STRIDE_1)
+#define WD_STRIDE_MASK			REG_GENMASK(15, 6)
+
+#define _WD_STREAMCAP_CTL0		0x6e590
+#define _WD_STREAMCAP_CTL1		0x6ed90
+#define WD_STREAMCAP_CTL(tc)		_MMIO_WD(tc,\
+					_WD_STREAMCAP_CTL0,\
+					_WD_STREAMCAP_CTL1)
+
+#define WD_STREAM_CAP_MODE_EN		REG_BIT(31)
+#define WD_SLICING_STRAT_MASK		REG_GENMASK(25, 24)
+#define WD_SLICING_STRAT_1_1		REG_FIELD_PREP(WD_SLICING_STRAT_MASK, 0)
+#define WD_SLICING_STRAT_2_1		REG_FIELD_PREP(WD_SLICING_STRAT_MASK, 1)
+#define WD_SLICING_STRAT_4_1		REG_FIELD_PREP(WD_SLICING_STRAT_MASK, 2)
+#define WD_SLICING_STRAT_8_1		REG_FIELD_PREP(WD_SLICING_STRAT_MASK, 3)
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
+#define WD_FRAME_COMPLETE_INT		REG_BIT(7)
+#define WD_GTT_FAULT_INT		REG_BIT(6)
+#define WD_VBLANK_INT			REG_BIT(5)
+#define WD_OVERRUN_INT			REG_BIT(4)
+#define WD_CAPTURING_INT		REG_BIT(3)
+#define WD_WRITE_COMPLETE_INT		REG_BIT(2)
+
+#define _WD_IIR_0			0x6e564
+#define _WD_IIR_1			0x6ed64
+#define WD_IIR(tc)			_MMIO_WD(tc,\
+					_WD_IIR_0,\
+					_WD_IIR_1)
+
+#define _WD_FRAME_STATUS_0		0x6e568
+#define _WD_FRAME_STATUS_1		0x6ed68
+#define WD_FRAME_STATUS(tc)		_MMIO_WD(tc,\
+					_WD_FRAME_STATUS_0,\
+					_WD_FRAME_STATUS_1)
+
+#define WD_FRAME_COMPLETE		REG_BIT(31)
+#define WD_STATE_MASK			REG_GENMASK(26, 24)
+#define WD_STATE_IDLE			REG_FIELD_PREP(WD_STATE_MASK, 0)
+#define WD_STATE_CAPSTART		REG_FIELD_PREP(WD_STATE_MASK, 1)
+#define WD_STATE_FRAME_START		REG_FIELD_PREP(WD_STATE_MASK, 2)
+#define WD_STATE_CAPACITIVE		REG_FIELD_PREP(WD_STATE_MASK, 3)
+#define WD_STATE_TG_DONE		REG_FIELD_PREP(WD_STATE_MASK, 4)
+#define WD_STATE_WDX_DONE		REG_FIELD_PREP(WD_STATE_MASK, 5)
+#define WD_STATE_QUICK_CAP		REG_FIELD_PREP(WD_STATE_MASK, 6)
+
+#define _WD_27_M_0			0x6e524
+#define _WD_27_M_1			0x6ed24
+#define WD_27_M(tc)			_MMIO_WD(tc,\
+					_WD_27_M_0,\
+					_WD_27_M_1)
+
+#define _WD_27_N_0			0x6e528
+
+/* Address looks wrong in bspec: */
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
+
+#endif /* __INTEL_WRITEBACK_REGS_H__ */
-- 
2.34.1

