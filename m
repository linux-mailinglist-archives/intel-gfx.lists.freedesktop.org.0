Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5CF53B652
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 11:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5116C112CB2;
	Thu,  2 Jun 2022 09:45:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BFD1112CB2
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 09:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654163148; x=1685699148;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KsuXloNfmMRGm25Y1BjuYgwRwfhLSeBwCLses2+U4LM=;
 b=B6q2IF69Fau3+B+YtMOiCNSfl2AtgqqWxIPHG1LWewapQBUXxsKSNYp2
 Mqal/mux2v+H2cZN9imkUJgbLQaTh2KkEHCyPs7Bzy6R+ewzR306qUnzV
 NocWO8WqdYKovQojDZmzUrDvvfOBVnRFAH+ZMr82OK/EEHW3NHoITzLYf
 UpzSbR1MPTmj1Lb6/ryAhRDMI41bTbgthNAThV0lYgz4oV5G3oNpmF3qg
 V1B5ZYYyXDzKKz2p9WLs0Cwt/wjrWQulnx8LIHhExMu0+DDV7CdksdrDe
 YbpZSf6BjM3kylFwt5FRC9hWGrq9Mj/x6w1eqQxi1frIhiyCWWAeQouv/ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="336553696"
X-IronPort-AV: E=Sophos;i="5.91,270,1647327600"; d="scan'208";a="336553696"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 02:45:47 -0700
X-IronPort-AV: E=Sophos;i="5.91,270,1647327600"; d="scan'208";a="552761528"
Received: from fbackhou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 02:45:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jun 2022 12:45:42 +0300
Message-Id: <20220602094542.1386151-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/regs: split out intel audio register
 definitions
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

Split out audio registers to a header of its own to reduce the size of
i915_reg.h.

TODO: Remove direct audio register access from intel_ddi.c. However,
unification of audio get config is cumbersome due to the audio enable
bit being in the DP or HDMI registers on older platforms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    |   1 +
 .../gpu/drm/i915/display/intel_audio_regs.h   | 160 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 151 -----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   2 +
 5 files changed, 164 insertions(+), 151 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_audio_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index f0f0dfce27ce..6c9ee905f132 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -30,6 +30,7 @@
 #include "i915_drv.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
+#include "intel_audio_regs.h"
 #include "intel_cdclk.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
new file mode 100644
index 000000000000..d1e5844e3484
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
@@ -0,0 +1,160 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_AUDIO_REGS_H__
+#define __INTEL_AUDIO_REGS_H__
+
+#include "i915_reg_defs.h"
+
+#define G4X_AUD_VID_DID			_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x62020)
+#define   INTEL_AUDIO_DEVCL		0x808629FB
+#define   INTEL_AUDIO_DEVBLC		0x80862801
+#define   INTEL_AUDIO_DEVCTG		0x80862802
+
+#define G4X_AUD_CNTL_ST			_MMIO(0x620B4)
+#define   G4X_ELDV_DEVCL_DEVBLC		(1 << 13)
+#define   G4X_ELDV_DEVCTG		(1 << 14)
+#define   G4X_ELD_ADDR_MASK		(0xf << 5)
+#define   G4X_ELD_ACK			(1 << 4)
+#define G4X_HDMIW_HDMIEDID		_MMIO(0x6210C)
+
+#define _IBX_HDMIW_HDMIEDID_A		0xE2050
+#define _IBX_HDMIW_HDMIEDID_B		0xE2150
+#define IBX_HDMIW_HDMIEDID(pipe)	_MMIO_PIPE(pipe, _IBX_HDMIW_HDMIEDID_A, \
+						  _IBX_HDMIW_HDMIEDID_B)
+#define _IBX_AUD_CNTL_ST_A		0xE20B4
+#define _IBX_AUD_CNTL_ST_B		0xE21B4
+#define IBX_AUD_CNTL_ST(pipe)		_MMIO_PIPE(pipe, _IBX_AUD_CNTL_ST_A, \
+						  _IBX_AUD_CNTL_ST_B)
+#define   IBX_ELD_BUFFER_SIZE_MASK	(0x1f << 10)
+#define   IBX_ELD_ADDRESS_MASK		(0x1f << 5)
+#define   IBX_ELD_ACK			(1 << 4)
+#define IBX_AUD_CNTL_ST2		_MMIO(0xE20C0)
+#define   IBX_CP_READY(port)		((1 << 1) << (((port) - 1) * 4))
+#define   IBX_ELD_VALID(port)		((1 << 0) << (((port) - 1) * 4))
+
+#define _CPT_HDMIW_HDMIEDID_A		0xE5050
+#define _CPT_HDMIW_HDMIEDID_B		0xE5150
+#define CPT_HDMIW_HDMIEDID(pipe)	_MMIO_PIPE(pipe, _CPT_HDMIW_HDMIEDID_A, _CPT_HDMIW_HDMIEDID_B)
+#define _CPT_AUD_CNTL_ST_A		0xE50B4
+#define _CPT_AUD_CNTL_ST_B		0xE51B4
+#define CPT_AUD_CNTL_ST(pipe)		_MMIO_PIPE(pipe, _CPT_AUD_CNTL_ST_A, _CPT_AUD_CNTL_ST_B)
+#define CPT_AUD_CNTRL_ST2		_MMIO(0xE50C0)
+
+#define _VLV_HDMIW_HDMIEDID_A		(VLV_DISPLAY_BASE + 0x62050)
+#define _VLV_HDMIW_HDMIEDID_B		(VLV_DISPLAY_BASE + 0x62150)
+#define VLV_HDMIW_HDMIEDID(pipe)	_MMIO_PIPE(pipe, _VLV_HDMIW_HDMIEDID_A, _VLV_HDMIW_HDMIEDID_B)
+#define _VLV_AUD_CNTL_ST_A		(VLV_DISPLAY_BASE + 0x620B4)
+#define _VLV_AUD_CNTL_ST_B		(VLV_DISPLAY_BASE + 0x621B4)
+#define VLV_AUD_CNTL_ST(pipe)		_MMIO_PIPE(pipe, _VLV_AUD_CNTL_ST_A, _VLV_AUD_CNTL_ST_B)
+#define VLV_AUD_CNTL_ST2		_MMIO(VLV_DISPLAY_BASE + 0x620C0)
+
+#define _IBX_AUD_CONFIG_A		0xe2000
+#define _IBX_AUD_CONFIG_B		0xe2100
+#define IBX_AUD_CFG(pipe)		_MMIO_PIPE(pipe, _IBX_AUD_CONFIG_A, _IBX_AUD_CONFIG_B)
+#define _CPT_AUD_CONFIG_A		0xe5000
+#define _CPT_AUD_CONFIG_B		0xe5100
+#define CPT_AUD_CFG(pipe)		_MMIO_PIPE(pipe, _CPT_AUD_CONFIG_A, _CPT_AUD_CONFIG_B)
+#define _VLV_AUD_CONFIG_A		(VLV_DISPLAY_BASE + 0x62000)
+#define _VLV_AUD_CONFIG_B		(VLV_DISPLAY_BASE + 0x62100)
+#define VLV_AUD_CFG(pipe)		_MMIO_PIPE(pipe, _VLV_AUD_CONFIG_A, _VLV_AUD_CONFIG_B)
+
+#define   AUD_CONFIG_N_VALUE_INDEX		(1 << 29)
+#define   AUD_CONFIG_N_PROG_ENABLE		(1 << 28)
+#define   AUD_CONFIG_UPPER_N_SHIFT		20
+#define   AUD_CONFIG_UPPER_N_MASK		(0xff << 20)
+#define   AUD_CONFIG_LOWER_N_SHIFT		4
+#define   AUD_CONFIG_LOWER_N_MASK		(0xfff << 4)
+#define   AUD_CONFIG_N_MASK			(AUD_CONFIG_UPPER_N_MASK | AUD_CONFIG_LOWER_N_MASK)
+#define   AUD_CONFIG_N(n) \
+	(((((n) >> 12) & 0xff) << AUD_CONFIG_UPPER_N_SHIFT) |	\
+	 (((n) & 0xfff) << AUD_CONFIG_LOWER_N_SHIFT))
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_SHIFT	16
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK	(0xf << 16)
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_25175	(0 << 16)
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_25200	(1 << 16)
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_27000	(2 << 16)
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_27027	(3 << 16)
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_54000	(4 << 16)
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_54054	(5 << 16)
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_74176	(6 << 16)
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_74250	(7 << 16)
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_148352	(8 << 16)
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_148500	(9 << 16)
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_296703	(10 << 16)
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_297000	(11 << 16)
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_593407	(12 << 16)
+#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_594000	(13 << 16)
+#define   AUD_CONFIG_DISABLE_NCTS		(1 << 3)
+
+#define _HSW_AUD_CONFIG_A		0x65000
+#define _HSW_AUD_CONFIG_B		0x65100
+#define HSW_AUD_CFG(trans)		_MMIO_TRANS(trans, _HSW_AUD_CONFIG_A, _HSW_AUD_CONFIG_B)
+
+#define _HSW_AUD_MISC_CTRL_A		0x65010
+#define _HSW_AUD_MISC_CTRL_B		0x65110
+#define HSW_AUD_MISC_CTRL(trans)	_MMIO_TRANS(trans, _HSW_AUD_MISC_CTRL_A, _HSW_AUD_MISC_CTRL_B)
+
+#define _HSW_AUD_M_CTS_ENABLE_A		0x65028
+#define _HSW_AUD_M_CTS_ENABLE_B		0x65128
+#define HSW_AUD_M_CTS_ENABLE(trans)	_MMIO_TRANS(trans, _HSW_AUD_M_CTS_ENABLE_A, _HSW_AUD_M_CTS_ENABLE_B)
+#define   AUD_M_CTS_M_VALUE_INDEX	(1 << 21)
+#define   AUD_M_CTS_M_PROG_ENABLE	(1 << 20)
+#define   AUD_CONFIG_M_MASK		0xfffff
+
+#define _HSW_AUD_DIP_ELD_CTRL_ST_A	0x650b4
+#define _HSW_AUD_DIP_ELD_CTRL_ST_B	0x651b4
+#define HSW_AUD_DIP_ELD_CTRL(trans)	_MMIO_TRANS(trans, _HSW_AUD_DIP_ELD_CTRL_ST_A, _HSW_AUD_DIP_ELD_CTRL_ST_B)
+
+/* Audio Digital Converter */
+#define _HSW_AUD_DIG_CNVT_1		0x65080
+#define _HSW_AUD_DIG_CNVT_2		0x65180
+#define AUD_DIG_CNVT(trans)		_MMIO_TRANS(trans, _HSW_AUD_DIG_CNVT_1, _HSW_AUD_DIG_CNVT_2)
+#define DIP_PORT_SEL_MASK		0x3
+
+#define _HSW_AUD_EDID_DATA_A		0x65050
+#define _HSW_AUD_EDID_DATA_B		0x65150
+#define HSW_AUD_EDID_DATA(trans)	_MMIO_TRANS(trans, _HSW_AUD_EDID_DATA_A, _HSW_AUD_EDID_DATA_B)
+
+#define HSW_AUD_PIPE_CONV_CFG		_MMIO(0x6507c)
+#define HSW_AUD_PIN_ELD_CP_VLD		_MMIO(0x650c0)
+#define   AUDIO_INACTIVE(trans)		((1 << 3) << ((trans) * 4))
+#define   AUDIO_OUTPUT_ENABLE(trans)	((1 << 2) << ((trans) * 4))
+#define   AUDIO_CP_READY(trans)		((1 << 1) << ((trans) * 4))
+#define   AUDIO_ELD_VALID(trans)	((1 << 0) << ((trans) * 4))
+
+#define _AUD_TCA_DP_2DOT0_CTRL		0x650bc
+#define _AUD_TCB_DP_2DOT0_CTRL		0x651bc
+#define AUD_DP_2DOT0_CTRL(trans)	_MMIO_TRANS(trans, _AUD_TCA_DP_2DOT0_CTRL, _AUD_TCB_DP_2DOT0_CTRL)
+#define  AUD_ENABLE_SDP_SPLIT		REG_BIT(31)
+
+#define HSW_AUD_CHICKENBIT			_MMIO(0x65f10)
+#define   SKL_AUD_CODEC_WAKE_SIGNAL		(1 << 15)
+
+#define AUD_FREQ_CNTRL			_MMIO(0x65900)
+#define AUD_PIN_BUF_CTL		_MMIO(0x48414)
+#define   AUD_PIN_BUF_ENABLE		REG_BIT(31)
+
+#define AUD_TS_CDCLK_M			_MMIO(0x65ea0)
+#define   AUD_TS_CDCLK_M_EN		REG_BIT(31)
+#define AUD_TS_CDCLK_N			_MMIO(0x65ea4)
+
+/* Display Audio Config Reg */
+#define AUD_CONFIG_BE			_MMIO(0x65ef0)
+#define HBLANK_EARLY_ENABLE_ICL(pipe)		(0x1 << (20 - (pipe)))
+#define HBLANK_EARLY_ENABLE_TGL(pipe)		(0x1 << (24 + (pipe)))
+#define HBLANK_START_COUNT_MASK(pipe)		(0x7 << (3 + ((pipe) * 6)))
+#define HBLANK_START_COUNT(pipe, val)		(((val) & 0x7) << (3 + ((pipe)) * 6))
+#define NUMBER_SAMPLES_PER_LINE_MASK(pipe)	(0x3 << ((pipe) * 6))
+#define NUMBER_SAMPLES_PER_LINE(pipe, val)	(((val) & 0x3) << ((pipe) * 6))
+
+#define HBLANK_START_COUNT_8	0
+#define HBLANK_START_COUNT_16	1
+#define HBLANK_START_COUNT_32	2
+#define HBLANK_START_COUNT_64	3
+#define HBLANK_START_COUNT_96	4
+#define HBLANK_START_COUNT_128	5
+
+#endif /* __INTEL_AUDIO_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 915e8e3e8f38..c08e5407e170 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -32,6 +32,7 @@
 
 #include "i915_drv.h"
 #include "intel_audio.h"
+#include "intel_audio_regs.h"
 #include "intel_backlight.h"
 #include "intel_combo_phy.h"
 #include "intel_combo_phy_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0a5064e32284..672b1cdc06b9 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6831,163 +6831,12 @@
 		(((reg) & GEN7_L3CDERRST1_SUBBANK_MASK) >> 8)
 #define   GEN7_L3CDERRST1_ENABLE	(1 << 7)
 
-/* Audio */
-#define G4X_AUD_VID_DID			_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x62020)
-#define   INTEL_AUDIO_DEVCL		0x808629FB
-#define   INTEL_AUDIO_DEVBLC		0x80862801
-#define   INTEL_AUDIO_DEVCTG		0x80862802
-
-#define G4X_AUD_CNTL_ST			_MMIO(0x620B4)
-#define   G4X_ELDV_DEVCL_DEVBLC		(1 << 13)
-#define   G4X_ELDV_DEVCTG		(1 << 14)
-#define   G4X_ELD_ADDR_MASK		(0xf << 5)
-#define   G4X_ELD_ACK			(1 << 4)
-#define G4X_HDMIW_HDMIEDID		_MMIO(0x6210C)
-
-#define _IBX_HDMIW_HDMIEDID_A		0xE2050
-#define _IBX_HDMIW_HDMIEDID_B		0xE2150
-#define IBX_HDMIW_HDMIEDID(pipe)	_MMIO_PIPE(pipe, _IBX_HDMIW_HDMIEDID_A, \
-						  _IBX_HDMIW_HDMIEDID_B)
-#define _IBX_AUD_CNTL_ST_A		0xE20B4
-#define _IBX_AUD_CNTL_ST_B		0xE21B4
-#define IBX_AUD_CNTL_ST(pipe)		_MMIO_PIPE(pipe, _IBX_AUD_CNTL_ST_A, \
-						  _IBX_AUD_CNTL_ST_B)
-#define   IBX_ELD_BUFFER_SIZE_MASK	(0x1f << 10)
-#define   IBX_ELD_ADDRESS_MASK		(0x1f << 5)
-#define   IBX_ELD_ACK			(1 << 4)
-#define IBX_AUD_CNTL_ST2		_MMIO(0xE20C0)
-#define   IBX_CP_READY(port)		((1 << 1) << (((port) - 1) * 4))
-#define   IBX_ELD_VALID(port)		((1 << 0) << (((port) - 1) * 4))
-
-#define _CPT_HDMIW_HDMIEDID_A		0xE5050
-#define _CPT_HDMIW_HDMIEDID_B		0xE5150
-#define CPT_HDMIW_HDMIEDID(pipe)	_MMIO_PIPE(pipe, _CPT_HDMIW_HDMIEDID_A, _CPT_HDMIW_HDMIEDID_B)
-#define _CPT_AUD_CNTL_ST_A		0xE50B4
-#define _CPT_AUD_CNTL_ST_B		0xE51B4
-#define CPT_AUD_CNTL_ST(pipe)		_MMIO_PIPE(pipe, _CPT_AUD_CNTL_ST_A, _CPT_AUD_CNTL_ST_B)
-#define CPT_AUD_CNTRL_ST2		_MMIO(0xE50C0)
-
-#define _VLV_HDMIW_HDMIEDID_A		(VLV_DISPLAY_BASE + 0x62050)
-#define _VLV_HDMIW_HDMIEDID_B		(VLV_DISPLAY_BASE + 0x62150)
-#define VLV_HDMIW_HDMIEDID(pipe)	_MMIO_PIPE(pipe, _VLV_HDMIW_HDMIEDID_A, _VLV_HDMIW_HDMIEDID_B)
-#define _VLV_AUD_CNTL_ST_A		(VLV_DISPLAY_BASE + 0x620B4)
-#define _VLV_AUD_CNTL_ST_B		(VLV_DISPLAY_BASE + 0x621B4)
-#define VLV_AUD_CNTL_ST(pipe)		_MMIO_PIPE(pipe, _VLV_AUD_CNTL_ST_A, _VLV_AUD_CNTL_ST_B)
-#define VLV_AUD_CNTL_ST2		_MMIO(VLV_DISPLAY_BASE + 0x620C0)
-
 /* These are the 4 32-bit write offset registers for each stream
  * output buffer.  It determines the offset from the
  * 3DSTATE_SO_BUFFERs that the next streamed vertex output goes to.
  */
 #define GEN7_SO_WRITE_OFFSET(n)		_MMIO(0x5280 + (n) * 4)
 
-#define _IBX_AUD_CONFIG_A		0xe2000
-#define _IBX_AUD_CONFIG_B		0xe2100
-#define IBX_AUD_CFG(pipe)		_MMIO_PIPE(pipe, _IBX_AUD_CONFIG_A, _IBX_AUD_CONFIG_B)
-#define _CPT_AUD_CONFIG_A		0xe5000
-#define _CPT_AUD_CONFIG_B		0xe5100
-#define CPT_AUD_CFG(pipe)		_MMIO_PIPE(pipe, _CPT_AUD_CONFIG_A, _CPT_AUD_CONFIG_B)
-#define _VLV_AUD_CONFIG_A		(VLV_DISPLAY_BASE + 0x62000)
-#define _VLV_AUD_CONFIG_B		(VLV_DISPLAY_BASE + 0x62100)
-#define VLV_AUD_CFG(pipe)		_MMIO_PIPE(pipe, _VLV_AUD_CONFIG_A, _VLV_AUD_CONFIG_B)
-
-#define   AUD_CONFIG_N_VALUE_INDEX		(1 << 29)
-#define   AUD_CONFIG_N_PROG_ENABLE		(1 << 28)
-#define   AUD_CONFIG_UPPER_N_SHIFT		20
-#define   AUD_CONFIG_UPPER_N_MASK		(0xff << 20)
-#define   AUD_CONFIG_LOWER_N_SHIFT		4
-#define   AUD_CONFIG_LOWER_N_MASK		(0xfff << 4)
-#define   AUD_CONFIG_N_MASK			(AUD_CONFIG_UPPER_N_MASK | AUD_CONFIG_LOWER_N_MASK)
-#define   AUD_CONFIG_N(n) \
-	(((((n) >> 12) & 0xff) << AUD_CONFIG_UPPER_N_SHIFT) |	\
-	 (((n) & 0xfff) << AUD_CONFIG_LOWER_N_SHIFT))
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_SHIFT	16
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK	(0xf << 16)
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_25175	(0 << 16)
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_25200	(1 << 16)
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_27000	(2 << 16)
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_27027	(3 << 16)
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_54000	(4 << 16)
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_54054	(5 << 16)
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_74176	(6 << 16)
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_74250	(7 << 16)
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_148352	(8 << 16)
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_148500	(9 << 16)
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_296703	(10 << 16)
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_297000	(11 << 16)
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_593407	(12 << 16)
-#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_594000	(13 << 16)
-#define   AUD_CONFIG_DISABLE_NCTS		(1 << 3)
-
-/* HSW Audio */
-#define _HSW_AUD_CONFIG_A		0x65000
-#define _HSW_AUD_CONFIG_B		0x65100
-#define HSW_AUD_CFG(trans)		_MMIO_TRANS(trans, _HSW_AUD_CONFIG_A, _HSW_AUD_CONFIG_B)
-
-#define _HSW_AUD_MISC_CTRL_A		0x65010
-#define _HSW_AUD_MISC_CTRL_B		0x65110
-#define HSW_AUD_MISC_CTRL(trans)	_MMIO_TRANS(trans, _HSW_AUD_MISC_CTRL_A, _HSW_AUD_MISC_CTRL_B)
-
-#define _HSW_AUD_M_CTS_ENABLE_A		0x65028
-#define _HSW_AUD_M_CTS_ENABLE_B		0x65128
-#define HSW_AUD_M_CTS_ENABLE(trans)	_MMIO_TRANS(trans, _HSW_AUD_M_CTS_ENABLE_A, _HSW_AUD_M_CTS_ENABLE_B)
-#define   AUD_M_CTS_M_VALUE_INDEX	(1 << 21)
-#define   AUD_M_CTS_M_PROG_ENABLE	(1 << 20)
-#define   AUD_CONFIG_M_MASK		0xfffff
-
-#define _HSW_AUD_DIP_ELD_CTRL_ST_A	0x650b4
-#define _HSW_AUD_DIP_ELD_CTRL_ST_B	0x651b4
-#define HSW_AUD_DIP_ELD_CTRL(trans)	_MMIO_TRANS(trans, _HSW_AUD_DIP_ELD_CTRL_ST_A, _HSW_AUD_DIP_ELD_CTRL_ST_B)
-
-/* Audio Digital Converter */
-#define _HSW_AUD_DIG_CNVT_1		0x65080
-#define _HSW_AUD_DIG_CNVT_2		0x65180
-#define AUD_DIG_CNVT(trans)		_MMIO_TRANS(trans, _HSW_AUD_DIG_CNVT_1, _HSW_AUD_DIG_CNVT_2)
-#define DIP_PORT_SEL_MASK		0x3
-
-#define _HSW_AUD_EDID_DATA_A		0x65050
-#define _HSW_AUD_EDID_DATA_B		0x65150
-#define HSW_AUD_EDID_DATA(trans)	_MMIO_TRANS(trans, _HSW_AUD_EDID_DATA_A, _HSW_AUD_EDID_DATA_B)
-
-#define HSW_AUD_PIPE_CONV_CFG		_MMIO(0x6507c)
-#define HSW_AUD_PIN_ELD_CP_VLD		_MMIO(0x650c0)
-#define   AUDIO_INACTIVE(trans)		((1 << 3) << ((trans) * 4))
-#define   AUDIO_OUTPUT_ENABLE(trans)	((1 << 2) << ((trans) * 4))
-#define   AUDIO_CP_READY(trans)		((1 << 1) << ((trans) * 4))
-#define   AUDIO_ELD_VALID(trans)	((1 << 0) << ((trans) * 4))
-
-#define _AUD_TCA_DP_2DOT0_CTRL		0x650bc
-#define _AUD_TCB_DP_2DOT0_CTRL		0x651bc
-#define AUD_DP_2DOT0_CTRL(trans)	_MMIO_TRANS(trans, _AUD_TCA_DP_2DOT0_CTRL, _AUD_TCB_DP_2DOT0_CTRL)
-#define  AUD_ENABLE_SDP_SPLIT		REG_BIT(31)
-
-#define HSW_AUD_CHICKENBIT			_MMIO(0x65f10)
-#define   SKL_AUD_CODEC_WAKE_SIGNAL		(1 << 15)
-
-#define AUD_FREQ_CNTRL			_MMIO(0x65900)
-#define AUD_PIN_BUF_CTL		_MMIO(0x48414)
-#define   AUD_PIN_BUF_ENABLE		REG_BIT(31)
-
-#define AUD_TS_CDCLK_M			_MMIO(0x65ea0)
-#define   AUD_TS_CDCLK_M_EN		REG_BIT(31)
-#define AUD_TS_CDCLK_N			_MMIO(0x65ea4)
-
-/* Display Audio Config Reg */
-#define AUD_CONFIG_BE			_MMIO(0x65ef0)
-#define HBLANK_EARLY_ENABLE_ICL(pipe)		(0x1 << (20 - (pipe)))
-#define HBLANK_EARLY_ENABLE_TGL(pipe)		(0x1 << (24 + (pipe)))
-#define HBLANK_START_COUNT_MASK(pipe)		(0x7 << (3 + ((pipe) * 6)))
-#define HBLANK_START_COUNT(pipe, val)		(((val) & 0x7) << (3 + ((pipe)) * 6))
-#define NUMBER_SAMPLES_PER_LINE_MASK(pipe)	(0x3 << ((pipe) * 6))
-#define NUMBER_SAMPLES_PER_LINE(pipe, val)	(((val) & 0x3) << ((pipe) * 6))
-
-#define HBLANK_START_COUNT_8	0
-#define HBLANK_START_COUNT_16	1
-#define HBLANK_START_COUNT_32	2
-#define HBLANK_START_COUNT_64	3
-#define HBLANK_START_COUNT_96	4
-#define HBLANK_START_COUNT_128	5
-
 /*
  * HSW - ICL power wells
  *
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 72dac1718f3e..157e166672d7 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -3,10 +3,12 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include "display/intel_audio_regs.h"
 #include "display/intel_dmc_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
 #include "gvt/gvt.h"
+
 #include "i915_drv.h"
 #include "i915_pvinfo.h"
 #include "i915_reg.h"
-- 
2.30.2

