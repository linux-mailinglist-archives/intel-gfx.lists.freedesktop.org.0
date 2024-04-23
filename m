Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AAF8AF485
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 18:45:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 279D31134BA;
	Tue, 23 Apr 2024 16:45:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YrDqRnXv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C6941134BC;
 Tue, 23 Apr 2024 16:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713890714; x=1745426714;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oeeN+FNPwa/FYOaQRSaPg/WjTB2vJa/rWjHikjtSJ6s=;
 b=YrDqRnXvsXeWo1WVhL4TbEHbUvGIKDNKbJZ++PYvT+ssZB17ckAgqHuC
 6JZauzXUYiuyj0VZVz1g6zDT6Azdj1emJ2a0Dh7L1nfrdmXdGBWVRWYiO
 F3rjHXNS1hBOII/u5si3beNqv1Oe4eqzlyX99F37DJJS+ObcnmL/RC048
 p4R4GsFEnqC/W105/au/niBKRAk3u5K/ipeqzEDqvF0cGErPlhr1u1dm2
 RB/OR9KZg9orsnL1y7feLr4UtijjMHzSEC1h2bLrI0IFQDvP2VCzN2R/A
 SJr9P/rZQXMRJwGhV1sqMr8yL0dDLeIo3W1SsucoeMs6zTuqZVrZYLF9G A==;
X-CSE-ConnectionGUID: ++ZTBcxdSJ6TDXB0D6UkZw==
X-CSE-MsgGUID: D6Z6XFB9SZ2mrsmp940uLw==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="20891475"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="20891475"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 09:45:14 -0700
X-CSE-ConnectionGUID: dPtvdePmRb+/vf53DceU4A==
X-CSE-MsgGUID: qkO2qibmT12dDo2dYC4NUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="28883618"
Received: from fpirou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.117])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 09:45:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/i915: pass dev_priv to _MMIO_PIPE2, _MMIO_TRANS2,
 _MMIO_CURSOR2
Date: Tue, 23 Apr 2024 19:45:00 +0300
Message-Id: <3a865664898586ff6cb8e74eab3d1f36eafc0557.1713890614.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713890614.git.jani.nikula@intel.com>
References: <cover.1713890614.git.jani.nikula@intel.com>
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

Pass the dev_priv parameter to the low-level helpers, and move the
implicit dev_priv usage one level higher.

sed -i "s/\(_MMIO_PIPE2(\|_MMIO_TRANS2(\|_MMIO_CURSOR2(\)/\1dev_priv, /" \
	$(git ls-files drivers/gpu/drm/i915)

Name the parameter "display", as the generics allow it to be display
already.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

If we can think of a better name for the macros, now would be a good
time!
---
 .../gpu/drm/i915/display/intel_color_regs.h   |  12 +-
 .../drm/i915/display/intel_display_reg_defs.h |  18 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  38 ++--
 drivers/gpu/drm/i915/i915_reg.h               | 188 +++++++++---------
 4 files changed, 128 insertions(+), 128 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
index 9f4ae58f3e7e..ec8732401cd8 100644
--- a/drivers/gpu/drm/i915/display/intel_color_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
@@ -228,12 +228,12 @@
 #define _PIPE_A_WGC_C21_C20	0x600C0 /* s2.10 */
 #define _PIPE_A_WGC_C22		0x600C4 /* s2.10 */
 
-#define PIPE_WGC_C01_C00(pipe)		_MMIO_TRANS2(pipe, _PIPE_A_WGC_C01_C00)
-#define PIPE_WGC_C02(pipe)		_MMIO_TRANS2(pipe, _PIPE_A_WGC_C02)
-#define PIPE_WGC_C11_C10(pipe)		_MMIO_TRANS2(pipe, _PIPE_A_WGC_C11_C10)
-#define PIPE_WGC_C12(pipe)		_MMIO_TRANS2(pipe, _PIPE_A_WGC_C12)
-#define PIPE_WGC_C21_C20(pipe)		_MMIO_TRANS2(pipe, _PIPE_A_WGC_C21_C20)
-#define PIPE_WGC_C22(pipe)		_MMIO_TRANS2(pipe, _PIPE_A_WGC_C22)
+#define PIPE_WGC_C01_C00(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C01_C00)
+#define PIPE_WGC_C02(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C02)
+#define PIPE_WGC_C11_C10(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)
+#define PIPE_WGC_C12(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C12)
+#define PIPE_WGC_C21_C20(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C21_C20)
+#define PIPE_WGC_C22(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C22)
 
 /* pipe CSC & degamma/gamma LUTs on CHV */
 #define _CGM_PIPE_A_CSC_COEFF01	(VLV_DISPLAY_BASE + 0x67900)
diff --git a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
index 23fc1505dc08..b83ad06f2ea7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
@@ -36,14 +36,14 @@
  * Device info offset array based helpers for groups of registers with unevenly
  * spaced base offsets.
  */
-#define _MMIO_PIPE2(pipe, reg)		_MMIO(DISPLAY_INFO(dev_priv)->pipe_offsets[(pipe)] - \
-					      DISPLAY_INFO(dev_priv)->pipe_offsets[PIPE_A] + \
-					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
-#define _MMIO_TRANS2(tran, reg)		_MMIO(DISPLAY_INFO(dev_priv)->trans_offsets[(tran)] - \
-					      DISPLAY_INFO(dev_priv)->trans_offsets[TRANSCODER_A] + \
-					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
-#define _MMIO_CURSOR2(pipe, reg)	_MMIO(DISPLAY_INFO(dev_priv)->cursor_offsets[(pipe)] - \
-					      DISPLAY_INFO(dev_priv)->cursor_offsets[PIPE_A] + \
-					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
+#define _MMIO_PIPE2(display, pipe, reg)		_MMIO(DISPLAY_INFO(display)->pipe_offsets[(pipe)] - \
+						      DISPLAY_INFO(display)->pipe_offsets[PIPE_A] + \
+						      DISPLAY_MMIO_BASE(display) + (reg))
+#define _MMIO_TRANS2(display, tran, reg)	_MMIO(DISPLAY_INFO(display)->trans_offsets[(tran)] - \
+						      DISPLAY_INFO(display)->trans_offsets[TRANSCODER_A] + \
+						      DISPLAY_MMIO_BASE(display) + (reg))
+#define _MMIO_CURSOR2(display, pipe, reg)	_MMIO(DISPLAY_INFO(display)->cursor_offsets[(pipe)] - \
+						      DISPLAY_INFO(display)->cursor_offsets[PIPE_A] + \
+						      DISPLAY_MMIO_BASE(display) + (reg))
 
 #endif /* __INTEL_DISPLAY_REG_DEFS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index b004672d1deb..ebc22999572c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -9,7 +9,7 @@
 #include "intel_display_reg_defs.h"
 #include "intel_dp_aux_regs.h"
 
-#define TRANS_EXITLINE(trans)	_MMIO_TRANS2((trans), _TRANS_EXITLINE_A)
+#define TRANS_EXITLINE(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_EXITLINE_A)
 #define   EXITLINE_ENABLE	REG_BIT(31)
 #define   EXITLINE_MASK		REG_GENMASK(12, 0)
 #define   EXITLINE_SHIFT	0
@@ -23,7 +23,7 @@
 #define HSW_SRD_CTL				_MMIO(0x64800)
 #define _SRD_CTL_A				0x60800
 #define _SRD_CTL_EDP				0x6f800
-#define EDP_PSR_CTL(tran)			_MMIO_TRANS2(tran, _SRD_CTL_A)
+#define EDP_PSR_CTL(tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_CTL_A)
 #define   EDP_PSR_ENABLE			REG_BIT(31)
 #define   BDW_PSR_SINGLE_FRAME			REG_BIT(30)
 #define   EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK	REG_BIT(29) /* SW can't modify */
@@ -66,8 +66,8 @@
 #define EDP_PSR_IIR				_MMIO(0x64838)
 #define _PSR_IMR_A				0x60814
 #define _PSR_IIR_A				0x60818
-#define TRANS_PSR_IMR(tran)			_MMIO_TRANS2(tran, _PSR_IMR_A)
-#define TRANS_PSR_IIR(tran)			_MMIO_TRANS2(tran, _PSR_IIR_A)
+#define TRANS_PSR_IMR(tran)			_MMIO_TRANS2(dev_priv, tran, _PSR_IMR_A)
+#define TRANS_PSR_IIR(tran)			_MMIO_TRANS2(dev_priv, tran, _PSR_IIR_A)
 #define   _EDP_PSR_TRANS_SHIFT(trans)		((trans) == TRANSCODER_EDP ? \
 						 0 : ((trans) - TRANSCODER_A + 1) * 8)
 #define   TGL_PSR_MASK			REG_GENMASK(2, 0)
@@ -86,7 +86,7 @@
 #define HSW_SRD_AUX_CTL				_MMIO(0x64810)
 #define _SRD_AUX_CTL_A				0x60810
 #define _SRD_AUX_CTL_EDP			0x6f810
-#define EDP_PSR_AUX_CTL(tran)			_MMIO_TRANS2(tran, _SRD_AUX_CTL_A)
+#define EDP_PSR_AUX_CTL(tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_AUX_CTL_A)
 #define   EDP_PSR_AUX_CTL_TIME_OUT_MASK		DP_AUX_CH_CTL_TIME_OUT_MASK
 #define   EDP_PSR_AUX_CTL_MESSAGE_SIZE_MASK	DP_AUX_CH_CTL_MESSAGE_SIZE_MASK
 #define   EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK	DP_AUX_CH_CTL_PRECHARGE_2US_MASK
@@ -96,12 +96,12 @@
 #define HSW_SRD_AUX_DATA(i)			_MMIO(0x64814 + (i) * 4) /* 5 registers */
 #define _SRD_AUX_DATA_A				0x60814
 #define _SRD_AUX_DATA_EDP			0x6f814
-#define EDP_PSR_AUX_DATA(tran, i)		_MMIO_TRANS2(tran, _SRD_AUX_DATA_A + (i) * 4) /* 5 registers */
+#define EDP_PSR_AUX_DATA(tran, i)		_MMIO_TRANS2(dev_priv, tran, _SRD_AUX_DATA_A + (i) * 4) /* 5 registers */
 
 #define HSW_SRD_STATUS				_MMIO(0x64840)
 #define _SRD_STATUS_A				0x60840
 #define _SRD_STATUS_EDP				0x6f840
-#define EDP_PSR_STATUS(tran)			_MMIO_TRANS2(tran, _SRD_STATUS_A)
+#define EDP_PSR_STATUS(tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_STATUS_A)
 #define   EDP_PSR_STATUS_STATE_MASK		REG_GENMASK(31, 29)
 #define   EDP_PSR_STATUS_STATE_IDLE		REG_FIELD_PREP(EDP_PSR_STATUS_STATE_MASK, 0)
 #define   EDP_PSR_STATUS_STATE_SRDONACK		REG_FIELD_PREP(EDP_PSR_STATUS_STATE_MASK, 1)
@@ -126,14 +126,14 @@
 #define HSW_SRD_PERF_CNT		_MMIO(0x64844)
 #define _SRD_PERF_CNT_A			0x60844
 #define _SRD_PERF_CNT_EDP		0x6f844
-#define EDP_PSR_PERF_CNT(tran)		_MMIO_TRANS2(tran, _SRD_PERF_CNT_A)
+#define EDP_PSR_PERF_CNT(tran)		_MMIO_TRANS2(dev_priv, tran, _SRD_PERF_CNT_A)
 #define   EDP_PSR_PERF_CNT_MASK		REG_GENMASK(23, 0)
 
 /* PSR_MASK on SKL+ */
 #define HSW_SRD_DEBUG				_MMIO(0x64860)
 #define _SRD_DEBUG_A				0x60860
 #define _SRD_DEBUG_EDP				0x6f860
-#define EDP_PSR_DEBUG(tran)			_MMIO_TRANS2(tran, _SRD_DEBUG_A)
+#define EDP_PSR_DEBUG(tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_DEBUG_A)
 #define   EDP_PSR_DEBUG_MASK_MAX_SLEEP		REG_BIT(28)
 #define   EDP_PSR_DEBUG_MASK_LPSP		REG_BIT(27)
 #define   EDP_PSR_DEBUG_MASK_MEMUP		REG_BIT(26)
@@ -153,7 +153,7 @@
 
 #define _PSR2_CTL_A				0x60900
 #define _PSR2_CTL_EDP				0x6f900
-#define EDP_PSR2_CTL(tran)			_MMIO_TRANS2(tran, _PSR2_CTL_A)
+#define EDP_PSR2_CTL(tran)			_MMIO_TRANS2(dev_priv, tran, _PSR2_CTL_A)
 #define   EDP_PSR2_ENABLE			REG_BIT(31)
 #define   EDP_SU_TRACK_ENABLE			REG_BIT(30) /* up to adl-p */
 #define   TGL_EDP_PSR2_BLOCK_COUNT_MASK		REG_BIT(28)
@@ -195,7 +195,7 @@
 #define _PSR_EVENT_TRANS_C			0x62848
 #define _PSR_EVENT_TRANS_D			0x63848
 #define _PSR_EVENT_TRANS_EDP			0x6f848
-#define PSR_EVENT(tran)				_MMIO_TRANS2(tran, _PSR_EVENT_TRANS_A)
+#define PSR_EVENT(tran)				_MMIO_TRANS2(dev_priv, tran, _PSR_EVENT_TRANS_A)
 #define  PSR_EVENT_PSR2_WD_TIMER_EXPIRE		REG_BIT(17)
 #define  PSR_EVENT_PSR2_DISABLED		REG_BIT(16)
 #define  PSR_EVENT_SU_DIRTY_FIFO_UNDERRUN	REG_BIT(15)
@@ -215,13 +215,13 @@
 
 #define _PSR2_STATUS_A				0x60940
 #define _PSR2_STATUS_EDP			0x6f940
-#define EDP_PSR2_STATUS(tran)			_MMIO_TRANS2(tran, _PSR2_STATUS_A)
+#define EDP_PSR2_STATUS(tran)			_MMIO_TRANS2(dev_priv, tran, _PSR2_STATUS_A)
 #define EDP_PSR2_STATUS_STATE_MASK		REG_GENMASK(31, 28)
 #define EDP_PSR2_STATUS_STATE_DEEP_SLEEP	REG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x8)
 
 #define _PSR2_SU_STATUS_A		0x60914
 #define _PSR2_SU_STATUS_EDP		0x6f914
-#define _PSR2_SU_STATUS(tran, index)	_MMIO_TRANS2(tran, _PSR2_SU_STATUS_A + (index) * 4)
+#define _PSR2_SU_STATUS(tran, index)	_MMIO_TRANS2(dev_priv, tran, _PSR2_SU_STATUS_A + (index) * 4)
 #define PSR2_SU_STATUS(tran, frame)	(_PSR2_SU_STATUS(tran, (frame) / 3))
 #define PSR2_SU_STATUS_SHIFT(frame)	(((frame) % 3) * 10)
 #define PSR2_SU_STATUS_MASK(frame)	(0x3ff << PSR2_SU_STATUS_SHIFT(frame))
@@ -229,7 +229,7 @@
 
 #define _PSR2_MAN_TRK_CTL_A					0x60910
 #define _PSR2_MAN_TRK_CTL_EDP					0x6f910
-#define PSR2_MAN_TRK_CTL(tran)					_MMIO_TRANS2(tran, _PSR2_MAN_TRK_CTL_A)
+#define PSR2_MAN_TRK_CTL(tran)					_MMIO_TRANS2(dev_priv, tran, _PSR2_MAN_TRK_CTL_A)
 #define  PSR2_MAN_TRK_CTL_ENABLE				REG_BIT(31)
 #define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK		REG_GENMASK(30, 21)
 #define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)		REG_FIELD_PREP(PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
@@ -249,7 +249,7 @@
 /* PSR2 Early transport */
 #define _PIPE_SRCSZ_ERLY_TPT_A	0x70074
 
-#define PIPE_SRCSZ_ERLY_TPT(trans)	_MMIO_TRANS2(trans, _PIPE_SRCSZ_ERLY_TPT_A)
+#define PIPE_SRCSZ_ERLY_TPT(trans)	_MMIO_TRANS2(dev_priv, trans, _PIPE_SRCSZ_ERLY_TPT_A)
 
 #define _SEL_FETCH_PLANE_BASE_1_A		0x70890
 #define _SEL_FETCH_PLANE_BASE_2_A		0x708B0
@@ -297,7 +297,7 @@
 						  _SEL_FETCH_PLANE_BASE_1_A)
 
 #define _ALPM_CTL_A	0x60950
-#define ALPM_CTL(tran)	_MMIO_TRANS2(tran, _ALPM_CTL_A)
+#define ALPM_CTL(tran)	_MMIO_TRANS2(dev_priv, tran, _ALPM_CTL_A)
 #define  ALPM_CTL_ALPM_ENABLE				REG_BIT(31)
 #define  ALPM_CTL_ALPM_AUX_LESS_ENABLE			REG_BIT(30)
 #define  ALPM_CTL_LOBF_ENABLE				REG_BIT(29)
@@ -321,7 +321,7 @@
 #define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)
 
 #define _ALPM_CTL2_A	0x60954
-#define ALPM_CTL2(tran)	_MMIO_TRANS2(tran, _ALPM_CTL2_A)
+#define ALPM_CTL2(tran)	_MMIO_TRANS2(dev_priv, tran, _ALPM_CTL2_A)
 #define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK		REG_GENMASK(28, 24)
 #define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)
 #define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK		REG_GENMASK(19, 16)
@@ -335,7 +335,7 @@
 #define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)
 
 #define _PORT_ALPM_CTL_A			0x16fa2c
-#define PORT_ALPM_CTL(tran)			_MMIO_TRANS2(tran, _PORT_ALPM_CTL_A)
+#define PORT_ALPM_CTL(tran)			_MMIO_TRANS2(dev_priv, tran, _PORT_ALPM_CTL_A)
 #define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	REG_BIT(31)
 #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(23, 20)
 #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
@@ -345,7 +345,7 @@
 #define  PORT_ALPM_CTL_SILENCE_PERIOD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)
 
 #define _PORT_ALPM_LFPS_CTL_A					0x16fa30
-#define PORT_ALPM_LFPS_CTL(tran)				_MMIO_TRANS2(tran, _PORT_ALPM_LFPS_CTL_A)
+#define PORT_ALPM_LFPS_CTL(tran)				_MMIO_TRANS2(dev_priv, tran, _PORT_ALPM_LFPS_CTL_A)
 #define  PORT_ALPM_LFPS_CTL_LFPS_START_POLARITY			REG_BIT(31)
 #define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK		REG_GENMASK(27, 24)
 #define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN		7
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 51f703970cf6..4eb37f38d888 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1649,18 +1649,18 @@
 #define _PIPE_CRC_RES_4_B_IVB		0x61070
 #define _PIPE_CRC_RES_5_B_IVB		0x61074
 
-#define PIPE_CRC_CTL(pipe)		_MMIO_TRANS2(pipe, _PIPE_CRC_CTL_A)
-#define PIPE_CRC_RES_1_IVB(pipe)	_MMIO_TRANS2(pipe, _PIPE_CRC_RES_1_A_IVB)
-#define PIPE_CRC_RES_2_IVB(pipe)	_MMIO_TRANS2(pipe, _PIPE_CRC_RES_2_A_IVB)
-#define PIPE_CRC_RES_3_IVB(pipe)	_MMIO_TRANS2(pipe, _PIPE_CRC_RES_3_A_IVB)
-#define PIPE_CRC_RES_4_IVB(pipe)	_MMIO_TRANS2(pipe, _PIPE_CRC_RES_4_A_IVB)
-#define PIPE_CRC_RES_5_IVB(pipe)	_MMIO_TRANS2(pipe, _PIPE_CRC_RES_5_A_IVB)
-
-#define PIPE_CRC_RES_RED(pipe)		_MMIO_TRANS2(pipe, _PIPE_CRC_RES_RED_A)
-#define PIPE_CRC_RES_GREEN(pipe)	_MMIO_TRANS2(pipe, _PIPE_CRC_RES_GREEN_A)
-#define PIPE_CRC_RES_BLUE(pipe)		_MMIO_TRANS2(pipe, _PIPE_CRC_RES_BLUE_A)
-#define PIPE_CRC_RES_RES1_I915(pipe)	_MMIO_TRANS2(pipe, _PIPE_CRC_RES_RES1_A_I915)
-#define PIPE_CRC_RES_RES2_G4X(pipe)	_MMIO_TRANS2(pipe, _PIPE_CRC_RES_RES2_A_G4X)
+#define PIPE_CRC_CTL(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
+#define PIPE_CRC_RES_1_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_1_A_IVB)
+#define PIPE_CRC_RES_2_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_2_A_IVB)
+#define PIPE_CRC_RES_3_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_3_A_IVB)
+#define PIPE_CRC_RES_4_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_4_A_IVB)
+#define PIPE_CRC_RES_5_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_5_A_IVB)
+
+#define PIPE_CRC_RES_RED(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
+#define PIPE_CRC_RES_GREEN(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_GREEN_A)
+#define PIPE_CRC_RES_BLUE(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
+#define PIPE_CRC_RES_RES1_I915(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
+#define PIPE_CRC_RES_RES2_G4X(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
 
 /* Pipe/transcoder A timing regs */
 #define _TRANS_HTOTAL_A		0x60000
@@ -1729,23 +1729,23 @@
 #define _TRANS_VSYNC_DSI1	0x6b814
 #define _TRANS_VSYNCSHIFT_DSI1	0x6b828
 
-#define TRANS_HTOTAL(trans)	_MMIO_TRANS2((trans), _TRANS_HTOTAL_A)
-#define TRANS_HBLANK(trans)	_MMIO_TRANS2((trans), _TRANS_HBLANK_A)
-#define TRANS_HSYNC(trans)	_MMIO_TRANS2((trans), _TRANS_HSYNC_A)
-#define TRANS_VTOTAL(trans)	_MMIO_TRANS2((trans), _TRANS_VTOTAL_A)
-#define TRANS_VBLANK(trans)	_MMIO_TRANS2((trans), _TRANS_VBLANK_A)
-#define TRANS_VSYNC(trans)	_MMIO_TRANS2((trans), _TRANS_VSYNC_A)
-#define BCLRPAT(trans)		_MMIO_TRANS2((trans), _BCLRPAT_A)
-#define TRANS_VSYNCSHIFT(trans)	_MMIO_TRANS2((trans), _TRANS_VSYNCSHIFT_A)
-#define PIPESRC(pipe)		_MMIO_TRANS2((pipe), _PIPEASRC)
-#define TRANS_MULT(trans)	_MMIO_TRANS2((trans), _TRANS_MULT_A)
+#define TRANS_HTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
+#define TRANS_HBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
+#define TRANS_HSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
+#define TRANS_VTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
+#define TRANS_VBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
+#define TRANS_VSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
+#define BCLRPAT(trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
+#define TRANS_VSYNCSHIFT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
+#define PIPESRC(pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
+#define TRANS_MULT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
 
 /* VRR registers */
 #define _TRANS_VRR_CTL_A		0x60420
 #define _TRANS_VRR_CTL_B		0x61420
 #define _TRANS_VRR_CTL_C		0x62420
 #define _TRANS_VRR_CTL_D		0x63420
-#define TRANS_VRR_CTL(trans)			_MMIO_TRANS2(trans, _TRANS_VRR_CTL_A)
+#define TRANS_VRR_CTL(trans)			_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_CTL_A)
 #define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
 #define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
 #define   VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
@@ -1759,21 +1759,21 @@
 #define _TRANS_VRR_VMAX_B		0x61424
 #define _TRANS_VRR_VMAX_C		0x62424
 #define _TRANS_VRR_VMAX_D		0x63424
-#define TRANS_VRR_VMAX(trans)		_MMIO_TRANS2(trans, _TRANS_VRR_VMAX_A)
+#define TRANS_VRR_VMAX(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMAX_A)
 #define   VRR_VMAX_MASK			REG_GENMASK(19, 0)
 
 #define _TRANS_VRR_VMIN_A		0x60434
 #define _TRANS_VRR_VMIN_B		0x61434
 #define _TRANS_VRR_VMIN_C		0x62434
 #define _TRANS_VRR_VMIN_D		0x63434
-#define TRANS_VRR_VMIN(trans)		_MMIO_TRANS2(trans, _TRANS_VRR_VMIN_A)
+#define TRANS_VRR_VMIN(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMIN_A)
 #define   VRR_VMIN_MASK			REG_GENMASK(15, 0)
 
 #define _TRANS_VRR_VMAXSHIFT_A		0x60428
 #define _TRANS_VRR_VMAXSHIFT_B		0x61428
 #define _TRANS_VRR_VMAXSHIFT_C		0x62428
 #define _TRANS_VRR_VMAXSHIFT_D		0x63428
-#define TRANS_VRR_VMAXSHIFT(trans)	_MMIO_TRANS2(trans, \
+#define TRANS_VRR_VMAXSHIFT(trans)	_MMIO_TRANS2(dev_priv, trans, \
 					_TRANS_VRR_VMAXSHIFT_A)
 #define   VRR_VMAXSHIFT_DEC_MASK	REG_GENMASK(29, 16)
 #define   VRR_VMAXSHIFT_DEC		REG_BIT(16)
@@ -1783,7 +1783,7 @@
 #define _TRANS_VRR_STATUS_B		0x6142C
 #define _TRANS_VRR_STATUS_C		0x6242C
 #define _TRANS_VRR_STATUS_D		0x6342C
-#define TRANS_VRR_STATUS(trans)		_MMIO_TRANS2(trans, _TRANS_VRR_STATUS_A)
+#define TRANS_VRR_STATUS(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS_A)
 #define   VRR_STATUS_VMAX_REACHED	REG_BIT(31)
 #define   VRR_STATUS_NOFLIP_TILL_BNDR	REG_BIT(30)
 #define   VRR_STATUS_FLIP_BEF_BNDR	REG_BIT(29)
@@ -1803,7 +1803,7 @@
 #define _TRANS_VRR_VTOTAL_PREV_B	0x61480
 #define _TRANS_VRR_VTOTAL_PREV_C	0x62480
 #define _TRANS_VRR_VTOTAL_PREV_D	0x63480
-#define TRANS_VRR_VTOTAL_PREV(trans)	_MMIO_TRANS2(trans, \
+#define TRANS_VRR_VTOTAL_PREV(trans)	_MMIO_TRANS2(dev_priv, trans, \
 					_TRANS_VRR_VTOTAL_PREV_A)
 #define   VRR_VTOTAL_FLIP_BEFR_BNDR	REG_BIT(31)
 #define   VRR_VTOTAL_FLIP_AFTER_BNDR	REG_BIT(30)
@@ -1814,7 +1814,7 @@
 #define _TRANS_VRR_FLIPLINE_B		0x61438
 #define _TRANS_VRR_FLIPLINE_C		0x62438
 #define _TRANS_VRR_FLIPLINE_D		0x63438
-#define TRANS_VRR_FLIPLINE(trans)	_MMIO_TRANS2(trans, \
+#define TRANS_VRR_FLIPLINE(trans)	_MMIO_TRANS2(dev_priv, trans, \
 					_TRANS_VRR_FLIPLINE_A)
 #define   VRR_FLIPLINE_MASK		REG_GENMASK(19, 0)
 
@@ -1822,19 +1822,19 @@
 #define _TRANS_VRR_STATUS2_B		0x6143C
 #define _TRANS_VRR_STATUS2_C		0x6243C
 #define _TRANS_VRR_STATUS2_D		0x6343C
-#define TRANS_VRR_STATUS2(trans)	_MMIO_TRANS2(trans, _TRANS_VRR_STATUS2_A)
+#define TRANS_VRR_STATUS2(trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS2_A)
 #define   VRR_STATUS2_VERT_LN_CNT_MASK	REG_GENMASK(19, 0)
 
 #define _TRANS_PUSH_A			0x60A70
 #define _TRANS_PUSH_B			0x61A70
 #define _TRANS_PUSH_C			0x62A70
 #define _TRANS_PUSH_D			0x63A70
-#define TRANS_PUSH(trans)		_MMIO_TRANS2(trans, _TRANS_PUSH_A)
+#define TRANS_PUSH(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_PUSH_A)
 #define   TRANS_PUSH_EN			REG_BIT(31)
 #define   TRANS_PUSH_SEND		REG_BIT(30)
 
 #define _TRANS_VRR_VSYNC_A		0x60078
-#define TRANS_VRR_VSYNC(trans)		_MMIO_TRANS2(trans, _TRANS_VRR_VSYNC_A)
+#define TRANS_VRR_VSYNC(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)
 #define VRR_VSYNC_END_MASK		REG_GENMASK(28, 16)
 #define VRR_VSYNC_END(vsync_end)	REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
 #define VRR_VSYNC_START_MASK		REG_GENMASK(12, 0)
@@ -2390,18 +2390,18 @@
 #define PIPESTAT_INT_ENABLE_MASK		0x7fff0000
 #define PIPESTAT_INT_STATUS_MASK		0x0000ffff
 
-#define TRANSCONF(trans)	_MMIO_PIPE2((trans), _TRANSACONF)
-#define PIPEDSL(pipe)		_MMIO_PIPE2(pipe, _PIPEADSL)
-#define PIPEFRAME(pipe)		_MMIO_PIPE2(pipe, _PIPEAFRAMEHIGH)
-#define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(pipe, _PIPEAFRAMEPIXEL)
-#define PIPESTAT(pipe)		_MMIO_PIPE2(pipe, _PIPEASTAT)
+#define TRANSCONF(trans)	_MMIO_PIPE2(dev_priv, (trans), _TRANSACONF)
+#define PIPEDSL(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEADSL)
+#define PIPEFRAME(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEHIGH)
+#define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
+#define PIPESTAT(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
 
 #define  _PIPEAGCMAX           0x70010
 #define  _PIPEBGCMAX           0x71010
-#define PIPEGCMAX(pipe, i)     _MMIO_PIPE2(pipe, _PIPEAGCMAX + (i) * 4) /* u1.16 */
+#define PIPEGCMAX(pipe, i)     _MMIO_PIPE2(dev_priv, pipe, _PIPEAGCMAX + (i) * 4) /* u1.16 */
 
 #define _PIPE_ARB_CTL_A			0x70028 /* icl+ */
-#define PIPE_ARB_CTL(pipe)		_MMIO_PIPE2(pipe, _PIPE_ARB_CTL_A)
+#define PIPE_ARB_CTL(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPE_ARB_CTL_A)
 #define   PIPE_ARB_USE_PROG_SLOTS	REG_BIT(13)
 
 #define _PIPE_MISC_A			0x70030
@@ -2445,7 +2445,7 @@
 #define PIPE_MISC2(pipe)		_MMIO_PIPE(pipe, _PIPE_MISC2_A, _PIPE_MISC2_B)
 
 #define _ICL_PIPE_A_STATUS			0x70058
-#define ICL_PIPESTATUS(pipe)			_MMIO_PIPE2(pipe, _ICL_PIPE_A_STATUS)
+#define ICL_PIPESTATUS(pipe)			_MMIO_PIPE2(dev_priv, pipe, _ICL_PIPE_A_STATUS)
 #define   PIPE_STATUS_UNDERRUN				REG_BIT(31)
 #define   PIPE_STATUS_SOFT_UNDERRUN_XELPD		REG_BIT(28)
 #define   PIPE_STATUS_HARD_UNDERRUN_XELPD		REG_BIT(27)
@@ -2775,8 +2775,8 @@
 /* GM45+ just has to be different */
 #define _PIPEA_FRMCOUNT_G4X	0x70040
 #define _PIPEA_FLIPCOUNT_G4X	0x70044
-#define PIPE_FRMCOUNT_G4X(pipe) _MMIO_PIPE2(pipe, _PIPEA_FRMCOUNT_G4X)
-#define PIPE_FLIPCOUNT_G4X(pipe) _MMIO_PIPE2(pipe, _PIPEA_FLIPCOUNT_G4X)
+#define PIPE_FRMCOUNT_G4X(pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FRMCOUNT_G4X)
+#define PIPE_FLIPCOUNT_G4X(pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FLIPCOUNT_G4X)
 
 /* Cursor A & B regs */
 #define _CURACNTR		0x70080
@@ -2837,14 +2837,14 @@
 #define _CURBBASE_IVB		0x71084
 #define _CURBPOS_IVB		0x71088
 
-#define CURCNTR(pipe) _MMIO_CURSOR2(pipe, _CURACNTR)
-#define CURBASE(pipe) _MMIO_CURSOR2(pipe, _CURABASE)
-#define CURPOS(pipe) _MMIO_CURSOR2(pipe, _CURAPOS)
-#define CURPOS_ERLY_TPT(pipe) _MMIO_CURSOR2(pipe, _CURAPOS_ERLY_TPT)
-#define CURSIZE(pipe) _MMIO_CURSOR2(pipe, _CURASIZE)
-#define CUR_FBC_CTL(pipe) _MMIO_CURSOR2(pipe, _CUR_FBC_CTL_A)
-#define CUR_CHICKEN(pipe) _MMIO_CURSOR2(pipe, _CUR_CHICKEN_A)
-#define CURSURFLIVE(pipe) _MMIO_CURSOR2(pipe, _CURASURFLIVE)
+#define CURCNTR(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURACNTR)
+#define CURBASE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURABASE)
+#define CURPOS(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS)
+#define CURPOS_ERLY_TPT(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS_ERLY_TPT)
+#define CURSIZE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASIZE)
+#define CUR_FBC_CTL(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_FBC_CTL_A)
+#define CUR_CHICKEN(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_CHICKEN_A)
+#define CURSURFLIVE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASURFLIVE)
 
 /* Display A control */
 #define _DSPAADDR_VLV				0x7017C /* vlv/chv */
@@ -2901,18 +2901,18 @@
 #define _DSPASURFLIVE				0x701AC
 #define _DSPAGAMC				0x701E0
 
-#define DSPADDR_VLV(plane)	_MMIO_PIPE2(plane, _DSPAADDR_VLV)
-#define DSPCNTR(plane)		_MMIO_PIPE2(plane, _DSPACNTR)
-#define DSPADDR(plane)		_MMIO_PIPE2(plane, _DSPAADDR)
-#define DSPSTRIDE(plane)	_MMIO_PIPE2(plane, _DSPASTRIDE)
-#define DSPPOS(plane)		_MMIO_PIPE2(plane, _DSPAPOS)
-#define DSPSIZE(plane)		_MMIO_PIPE2(plane, _DSPASIZE)
-#define DSPSURF(plane)		_MMIO_PIPE2(plane, _DSPASURF)
-#define DSPTILEOFF(plane)	_MMIO_PIPE2(plane, _DSPATILEOFF)
+#define DSPADDR_VLV(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPAADDR_VLV)
+#define DSPCNTR(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPACNTR)
+#define DSPADDR(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPAADDR)
+#define DSPSTRIDE(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPASTRIDE)
+#define DSPPOS(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPAPOS)
+#define DSPSIZE(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPASIZE)
+#define DSPSURF(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPASURF)
+#define DSPTILEOFF(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPATILEOFF)
 #define DSPLINOFF(plane)	DSPADDR(plane)
-#define DSPOFFSET(plane)	_MMIO_PIPE2(plane, _DSPAOFFSET)
-#define DSPSURFLIVE(plane)	_MMIO_PIPE2(plane, _DSPASURFLIVE)
-#define DSPGAMC(plane, i)	_MMIO_PIPE2(plane, _DSPAGAMC + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */
+#define DSPOFFSET(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPAOFFSET)
+#define DSPSURFLIVE(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPASURFLIVE)
+#define DSPGAMC(plane, i)	_MMIO_PIPE2(dev_priv, plane, _DSPAGAMC + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */
 
 /* CHV pipe B blender and primary plane */
 #define _CHV_BLEND_A		0x60a00
@@ -2939,11 +2939,11 @@
 #define   PRIM_CONST_ALPHA_MASK		REG_GENMASK(7, 0)
 #define   PRIM_CONST_ALPHA(alpha)	REG_FIELD_PREP(PRIM_CONST_ALPHA_MASK, (alpha))
 
-#define CHV_BLEND(pipe)		_MMIO_TRANS2(pipe, _CHV_BLEND_A)
-#define CHV_CANVAS(pipe)	_MMIO_TRANS2(pipe, _CHV_CANVAS_A)
-#define PRIMPOS(plane)		_MMIO_TRANS2(plane, _PRIMPOS_A)
-#define PRIMSIZE(plane)		_MMIO_TRANS2(plane, _PRIMSIZE_A)
-#define PRIMCNSTALPHA(plane)	_MMIO_TRANS2(plane, _PRIMCNSTALPHA_A)
+#define CHV_BLEND(pipe)		_MMIO_TRANS2(dev_priv, pipe, _CHV_BLEND_A)
+#define CHV_CANVAS(pipe)	_MMIO_TRANS2(dev_priv, pipe, _CHV_CANVAS_A)
+#define PRIMPOS(plane)		_MMIO_TRANS2(dev_priv, plane, _PRIMPOS_A)
+#define PRIMSIZE(plane)		_MMIO_TRANS2(dev_priv, plane, _PRIMSIZE_A)
+#define PRIMCNSTALPHA(plane)	_MMIO_TRANS2(dev_priv, plane, _PRIMCNSTALPHA_A)
 
 /* Display/Sprite base address macros */
 #define DISP_BASEADDR_MASK	(0xfffff000)
@@ -3742,14 +3742,14 @@
 #define _PIPEB_LINK_M2		0x61048
 #define _PIPEB_LINK_N2		0x6104c
 
-#define PIPE_DATA_M1(tran) _MMIO_TRANS2(tran, _PIPEA_DATA_M1)
-#define PIPE_DATA_N1(tran) _MMIO_TRANS2(tran, _PIPEA_DATA_N1)
-#define PIPE_DATA_M2(tran) _MMIO_TRANS2(tran, _PIPEA_DATA_M2)
-#define PIPE_DATA_N2(tran) _MMIO_TRANS2(tran, _PIPEA_DATA_N2)
-#define PIPE_LINK_M1(tran) _MMIO_TRANS2(tran, _PIPEA_LINK_M1)
-#define PIPE_LINK_N1(tran) _MMIO_TRANS2(tran, _PIPEA_LINK_N1)
-#define PIPE_LINK_M2(tran) _MMIO_TRANS2(tran, _PIPEA_LINK_M2)
-#define PIPE_LINK_N2(tran) _MMIO_TRANS2(tran, _PIPEA_LINK_N2)
+#define PIPE_DATA_M1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M1)
+#define PIPE_DATA_N1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N1)
+#define PIPE_DATA_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
+#define PIPE_DATA_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
+#define PIPE_LINK_M1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
+#define PIPE_LINK_N1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
+#define PIPE_LINK_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M2)
+#define PIPE_LINK_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N2)
 
 /* CPU panel fitter */
 /* IVB+ has 3 fitters, 0 is 7x5 capable, the other two only 3x3 */
@@ -4836,25 +4836,25 @@
 #define _ICL_VIDEO_DIP_PPS_ECC_A	0x603D4
 #define _ICL_VIDEO_DIP_PPS_ECC_B	0x613D4
 
-#define HSW_TVIDEO_DIP_CTL(trans)		_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_CTL_A)
-#define HSW_TVIDEO_DIP_GCP(trans)		_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_GCP_A)
-#define HSW_TVIDEO_DIP_AVI_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_AVI_DATA_A + (i) * 4)
-#define HSW_TVIDEO_DIP_VS_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)
-#define HSW_TVIDEO_DIP_SPD_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)
-#define HSW_TVIDEO_DIP_GMP_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
-#define HSW_TVIDEO_DIP_VSC_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
-#define GLK_TVIDEO_DIP_DRM_DATA(trans, i)	_MMIO_TRANS2(trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
-#define ICL_VIDEO_DIP_PPS_DATA(trans, i)	_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
-#define ICL_VIDEO_DIP_PPS_ECC(trans, i)		_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
+#define HSW_TVIDEO_DIP_CTL(trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_CTL_A)
+#define HSW_TVIDEO_DIP_GCP(trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GCP_A)
+#define HSW_TVIDEO_DIP_AVI_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_AVI_DATA_A + (i) * 4)
+#define HSW_TVIDEO_DIP_VS_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)
+#define HSW_TVIDEO_DIP_SPD_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)
+#define HSW_TVIDEO_DIP_GMP_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
+#define HSW_TVIDEO_DIP_VSC_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
+#define GLK_TVIDEO_DIP_DRM_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
+#define ICL_VIDEO_DIP_PPS_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
+#define ICL_VIDEO_DIP_PPS_ECC(trans, i)		_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
 /*ADLP and later: */
-#define ADL_TVIDEO_DIP_AS_SDP_DATA(trans, i)	_MMIO_TRANS2(trans,\
+#define ADL_TVIDEO_DIP_AS_SDP_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans,\
 							     _ADL_VIDEO_DIP_AS_DATA_A + (i) * 4)
 
 #define _HSW_STEREO_3D_CTL_A		0x70020
 #define   S3D_ENABLE			(1 << 31)
 #define _HSW_STEREO_3D_CTL_B		0x71020
 
-#define HSW_STEREO_3D_CTL(trans)	_MMIO_PIPE2(trans, _HSW_STEREO_3D_CTL_A)
+#define HSW_STEREO_3D_CTL(trans)	_MMIO_PIPE2(dev_priv, trans, _HSW_STEREO_3D_CTL_A)
 
 #define _PCH_TRANS_HTOTAL_B          0xe1000
 #define _PCH_TRANS_HBLANK_B          0xe1004
@@ -5340,7 +5340,7 @@ enum skl_power_gate {
 #define _TRANS_DDI_FUNC_CTL_EDP		0x6F400
 #define _TRANS_DDI_FUNC_CTL_DSI0	0x6b400
 #define _TRANS_DDI_FUNC_CTL_DSI1	0x6bc00
-#define TRANS_DDI_FUNC_CTL(tran) _MMIO_TRANS2(tran, _TRANS_DDI_FUNC_CTL_A)
+#define TRANS_DDI_FUNC_CTL(tran) _MMIO_TRANS2(dev_priv, tran, _TRANS_DDI_FUNC_CTL_A)
 
 #define  TRANS_DDI_FUNC_ENABLE		(1 << 31)
 /* Those bits are ignored by pipe EDP since it can only connect to DDI A */
@@ -5395,7 +5395,7 @@ enum skl_power_gate {
 #define _TRANS_DDI_FUNC_CTL2_EDP	0x6f404
 #define _TRANS_DDI_FUNC_CTL2_DSI0	0x6b404
 #define _TRANS_DDI_FUNC_CTL2_DSI1	0x6bc04
-#define TRANS_DDI_FUNC_CTL2(tran)	_MMIO_TRANS2(tran, _TRANS_DDI_FUNC_CTL2_A)
+#define TRANS_DDI_FUNC_CTL2(tran)	_MMIO_TRANS2(dev_priv, tran, _TRANS_DDI_FUNC_CTL2_A)
 #define  PORT_SYNC_MODE_ENABLE			REG_BIT(4)
 #define  PORT_SYNC_MODE_MASTER_SELECT_MASK	REG_GENMASK(2, 0)
 #define  PORT_SYNC_MODE_MASTER_SELECT(x)	REG_FIELD_PREP(PORT_SYNC_MODE_MASTER_SELECT_MASK, (x))
@@ -5408,7 +5408,7 @@ enum skl_power_gate {
 #define _DP_TP_CTL_B			0x64140
 #define _TGL_DP_TP_CTL_A		0x60540
 #define DP_TP_CTL(port) _MMIO_PORT(port, _DP_TP_CTL_A, _DP_TP_CTL_B)
-#define TGL_DP_TP_CTL(tran) _MMIO_TRANS2((tran), _TGL_DP_TP_CTL_A)
+#define TGL_DP_TP_CTL(tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_CTL_A)
 #define  DP_TP_CTL_ENABLE			(1 << 31)
 #define  DP_TP_CTL_FEC_ENABLE			(1 << 30)
 #define  DP_TP_CTL_MODE_SST			(0 << 27)
@@ -5434,7 +5434,7 @@ enum skl_power_gate {
 #define _DP_TP_STATUS_B			0x64144
 #define _TGL_DP_TP_STATUS_A		0x60544
 #define DP_TP_STATUS(port) _MMIO_PORT(port, _DP_TP_STATUS_A, _DP_TP_STATUS_B)
-#define TGL_DP_TP_STATUS(tran) _MMIO_TRANS2((tran), _TGL_DP_TP_STATUS_A)
+#define TGL_DP_TP_STATUS(tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_STATUS_A)
 #define  DP_TP_STATUS_FEC_ENABLE_LIVE		(1 << 28)
 #define  DP_TP_STATUS_IDLE_DONE			(1 << 25)
 #define  DP_TP_STATUS_ACT_SENT			(1 << 24)
@@ -5615,14 +5615,14 @@ enum skl_power_gate {
 #define _TRANSB_MSA_MISC		0x61410
 #define _TRANSC_MSA_MISC		0x62410
 #define _TRANS_EDP_MSA_MISC		0x6f410
-#define TRANS_MSA_MISC(tran) _MMIO_TRANS2(tran, _TRANSA_MSA_MISC)
+#define TRANS_MSA_MISC(tran) _MMIO_TRANS2(dev_priv, tran, _TRANSA_MSA_MISC)
 /* See DP_MSA_MISC_* for the bit definitions */
 
 #define _TRANS_A_SET_CONTEXT_LATENCY		0x6007C
 #define _TRANS_B_SET_CONTEXT_LATENCY		0x6107C
 #define _TRANS_C_SET_CONTEXT_LATENCY		0x6207C
 #define _TRANS_D_SET_CONTEXT_LATENCY		0x6307C
-#define TRANS_SET_CONTEXT_LATENCY(tran)		_MMIO_TRANS2(tran, _TRANS_A_SET_CONTEXT_LATENCY)
+#define TRANS_SET_CONTEXT_LATENCY(tran)		_MMIO_TRANS2(dev_priv, tran, _TRANS_A_SET_CONTEXT_LATENCY)
 #define  TRANS_SET_CONTEXT_LATENCY_MASK		REG_GENMASK(15, 0)
 #define  TRANS_SET_CONTEXT_LATENCY_VALUE(x)	REG_FIELD_PREP(TRANS_SET_CONTEXT_LATENCY_MASK, (x))
 
@@ -6076,7 +6076,7 @@ enum skl_power_gate {
 
 #define _VLV_PIPE_MSA_MISC_A			0x70048
 #define VLV_PIPE_MSA_MISC(pipe)		\
-			_MMIO_PIPE2(pipe, _VLV_PIPE_MSA_MISC_A)
+			_MMIO_PIPE2(dev_priv, pipe, _VLV_PIPE_MSA_MISC_A)
 #define   VLV_MSA_MISC1_HW_ENABLE			REG_BIT(31)
 #define   VLV_MSA_MISC1_SW_S3D_MASK			REG_GENMASK(2, 0) /* MSA MISC1 3:1 */
 
@@ -6149,7 +6149,7 @@ enum skl_power_gate {
 
 #define _MTL_CLKGATE_DIS_TRANS_A			0x604E8
 #define _MTL_CLKGATE_DIS_TRANS_B			0x614E8
-#define MTL_CLKGATE_DIS_TRANS(trans)			_MMIO_TRANS2(trans, _MTL_CLKGATE_DIS_TRANS_A)
+#define MTL_CLKGATE_DIS_TRANS(trans)			_MMIO_TRANS2(dev_priv, trans, _MTL_CLKGATE_DIS_TRANS_A)
 #define  MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS		REG_BIT(7)
 
 #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
-- 
2.39.2

