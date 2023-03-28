Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3D36CBABE
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 11:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17F6E10E309;
	Tue, 28 Mar 2023 09:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C854010E451
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679995853; x=1711531853;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Pzs2oyqJsqVa2A8VCk7t76H5I40ZL57zCLO5gFnnZTg=;
 b=jWMEfsd4laFi1X3zwycGOd6h5ZRhuLoNKfda8mJKXsgv8crB3vfXNnbZ
 CoSUwWNV578Zxu6JZyIGv/cJWByBqZ2Hd14D/JidiTyUG18tVqO8FgSJ3
 HB27I4H0KvrZEXkBwrI0rmEiBzUCKsFMWMjJElfP1v2aTOFC/eGGo7goR
 702gObU92bz+Q4yLEO1oeQSVXW+3QzUB35CvB3pNpJezoNm35XCBwkYHv
 bqcSj3U9WTOEogcQaXA2HT8wsdyDil8Ww2ger44v5EmGkPidn/4Qa4e4d
 4jR11lUVZQACdNlM9WlsuX16sMrRKmeF6T0HHfdWtb3A4CUeKCi3vdCr7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="403129443"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="403129443"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 02:30:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="686343555"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="686343555"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 28 Mar 2023 02:30:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Mar 2023 12:30:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 12:30:36 +0300
Message-Id: <20230328093042.7469-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230328093042.7469-1-ville.syrjala@linux.intel.com>
References: <20230328093042.7469-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/8] drm/i915: Clean up various display chicken
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Modernize a bunch of display chicken registers by using
REG_BIT() & co.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 106 +++++++++++++++++---------------
 1 file changed, 55 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4ad10fe45686..ce27529aee6d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1366,7 +1366,7 @@
 #define   SNB_FBC_FRONT_BUFFER	REG_BIT(1)
 
 #define ILK_DISPLAY_CHICKEN1	_MMIO(0x42000)
-#define   ILK_FBCQ_DIS		(1 << 22)
+#define   ILK_FBCQ_DIS			REG_BIT(22)
 #define   ILK_PABSTRETCH_DIS		REG_BIT(21)
 #define   ILK_SABSTRETCH_DIS		REG_BIT(20)
 #define   IVB_PRI_STRETCH_MAX_MASK	REG_GENMASK(21, 20)
@@ -5470,54 +5470,55 @@
 
 #define ILK_DISPLAY_CHICKEN2	_MMIO(0x42004)
 /* Required on all Ironlake and Sandybridge according to the B-Spec. */
-#define  ILK_ELPIN_409_SELECT	(1 << 25)
-#define  ILK_DPARB_GATE	(1 << 22)
-#define  ILK_VSDPFD_FULL	(1 << 21)
-#define FUSE_STRAP			_MMIO(0x42014)
-#define  ILK_INTERNAL_GRAPHICS_DISABLE	(1 << 31)
-#define  ILK_INTERNAL_DISPLAY_DISABLE	(1 << 30)
-#define  ILK_DISPLAY_DEBUG_DISABLE	(1 << 29)
-#define  IVB_PIPE_C_DISABLE		(1 << 28)
-#define  ILK_HDCP_DISABLE		(1 << 25)
-#define  ILK_eDP_A_DISABLE		(1 << 24)
-#define  HSW_CDCLK_LIMIT		(1 << 24)
-#define  ILK_DESKTOP			(1 << 23)
-#define  HSW_CPU_SSC_ENABLE		(1 << 21)
+#define   ILK_ELPIN_409_SELECT	REG_BIT(25)
+#define   ILK_DPARB_GATE	REG_BIT(22)
+#define   ILK_VSDPFD_FULL	REG_BIT(21)
 
-#define FUSE_STRAP3			_MMIO(0x42020)
-#define  HSW_REF_CLK_SELECT		(1 << 1)
+#define FUSE_STRAP		_MMIO(0x42014)
+#define   ILK_INTERNAL_GRAPHICS_DISABLE	REG_BIT(31)
+#define   ILK_INTERNAL_DISPLAY_DISABLE	REG_BIT(30)
+#define   ILK_DISPLAY_DEBUG_DISABLE	REG_BIT(29)
+#define   IVB_PIPE_C_DISABLE		REG_BIT(28)
+#define   ILK_HDCP_DISABLE		REG_BIT(25)
+#define   ILK_eDP_A_DISABLE		REG_BIT(24)
+#define   HSW_CDCLK_LIMIT		REG_BIT(24)
+#define   ILK_DESKTOP			REG_BIT(23)
+#define   HSW_CPU_SSC_ENABLE		REG_BIT(21)
 
-#define ILK_DSPCLK_GATE_D			_MMIO(0x42020)
-#define   ILK_VRHUNIT_CLOCK_GATE_DISABLE	(1 << 28)
-#define   ILK_DPFCUNIT_CLOCK_GATE_DISABLE	(1 << 9)
-#define   ILK_DPFCRUNIT_CLOCK_GATE_DISABLE	(1 << 8)
-#define   ILK_DPFDUNIT_CLOCK_GATE_ENABLE	(1 << 7)
-#define   ILK_DPARBUNIT_CLOCK_GATE_ENABLE	(1 << 5)
+#define FUSE_STRAP3		_MMIO(0x42020)
+#define   HSW_REF_CLK_SELECT		REG_BIT(1)
 
-#define IVB_CHICKEN3	_MMIO(0x4200c)
-# define CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE	(1 << 5)
-# define CHICKEN3_DGMG_DONE_FIX_DISABLE		(1 << 2)
+#define ILK_DSPCLK_GATE_D	_MMIO(0x42020)
+#define   ILK_VRHUNIT_CLOCK_GATE_DISABLE	REG_BIT(28)
+#define   ILK_DPFCUNIT_CLOCK_GATE_DISABLE	REG_BIT(9)
+#define   ILK_DPFCRUNIT_CLOCK_GATE_DISABLE	REG_BIT(8)
+#define   ILK_DPFDUNIT_CLOCK_GATE_ENABLE	REG_BIT(7)
+#define   ILK_DPARBUNIT_CLOCK_GATE_ENABLE	REG_BIT(5)
 
-#define CHICKEN_PAR1_1			_MMIO(0x42080)
+#define IVB_CHICKEN3		_MMIO(0x4200c)
+#define   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE	REG_BIT(5)
+#define   CHICKEN3_DGMG_DONE_FIX_DISABLE	REG_BIT(2)
+
+#define CHICKEN_PAR1_1		_MMIO(0x42080)
 #define   IGNORE_KVMR_PIPE_A		REG_BIT(23)
 #define   KBL_ARB_FILL_SPARE_22		REG_BIT(22)
-#define  DIS_RAM_BYPASS_PSR2_MAN_TRACK	(1 << 16)
-#define  SKL_DE_COMPRESSED_HASH_MODE	(1 << 15)
-#define  DPA_MASK_VBLANK_SRD		(1 << 15)
-#define  FORCE_ARB_IDLE_PLANES		(1 << 14)
-#define  SKL_EDP_PSR_FIX_RDWRAP		(1 << 3)
-#define  IGNORE_PSR2_HW_TRACKING	(1 << 1)
+#define   DIS_RAM_BYPASS_PSR2_MAN_TRACK	REG_BIT(16)
+#define   SKL_DE_COMPRESSED_HASH_MODE	REG_BIT(15)
+#define   DPA_MASK_VBLANK_SRD		REG_BIT(15)
+#define   FORCE_ARB_IDLE_PLANES		REG_BIT(14)
+#define   SKL_EDP_PSR_FIX_RDWRAP	REG_BIT(3)
+#define   IGNORE_PSR2_HW_TRACKING	REG_BIT(1)
 
 #define CHICKEN_PAR2_1		_MMIO(0x42090)
-#define  KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	(1 << 14)
+#define   KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	REG_BIT(14)
 
 #define CHICKEN_MISC_2		_MMIO(0x42084)
 #define   CHICKEN_MISC_DISABLE_DPT	REG_BIT(30) /* adl,dg2 */
 #define   KBL_ARB_FILL_SPARE_14		REG_BIT(14)
 #define   KBL_ARB_FILL_SPARE_13		REG_BIT(13)
-#define  GLK_CL2_PWR_DOWN	(1 << 12)
-#define  GLK_CL1_PWR_DOWN	(1 << 11)
-#define  GLK_CL0_PWR_DOWN	(1 << 10)
+#define   GLK_CL2_PWR_DOWN		REG_BIT(12)
+#define   GLK_CL1_PWR_DOWN		REG_BIT(11)
+#define   GLK_CL0_PWR_DOWN		REG_BIT(10)
 
 #define CHICKEN_MISC_4		_MMIO(0x4208c)
 #define   CHICKEN_FBC_STRIDE_OVERRIDE	REG_BIT(13)
@@ -5537,13 +5538,13 @@
 #define   HSW_SPR_STRETCH_MAX_X4	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 1)
 #define   HSW_SPR_STRETCH_MAX_X2	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 2)
 #define   HSW_SPR_STRETCH_MAX_X1	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 3)
-#define  HSW_FBCQ_DIS			(1 << 22)
-#define  BDW_DPRS_MASK_VBLANK_SRD	(1 << 0)
+#define   HSW_FBCQ_DIS			REG_BIT(22)
 #define   SKL_PLANE1_STRETCH_MAX_MASK	REG_GENMASK(1, 0)
 #define   SKL_PLANE1_STRETCH_MAX_X8	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 0)
 #define   SKL_PLANE1_STRETCH_MAX_X4	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 1)
 #define   SKL_PLANE1_STRETCH_MAX_X2	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 2)
 #define   SKL_PLANE1_STRETCH_MAX_X1	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 3)
+#define   BDW_DPRS_MASK_VBLANK_SRD	REG_BIT(0)
 
 #define _CHICKEN_TRANS_A	0x420c0
 #define _CHICKEN_TRANS_B	0x420c4
@@ -5576,12 +5577,13 @@
 #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
 
 #define DISP_ARB_CTL	_MMIO(0x45000)
-#define  DISP_FBC_MEMORY_WAKE		(1 << 31)
-#define  DISP_TILE_SURFACE_SWIZZLING	(1 << 13)
-#define  DISP_FBC_WM_DIS		(1 << 15)
+#define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
+#define   DISP_TILE_SURFACE_SWIZZLING	REG_BIT(13)
+#define   DISP_FBC_WM_DIS		REG_BIT(15)
+
 #define DISP_ARB_CTL2	_MMIO(0x45004)
-#define  DISP_DATA_PARTITION_5_6	(1 << 6)
-#define  DISP_IPC_ENABLE		(1 << 3)
+#define   DISP_DATA_PARTITION_5_6	REG_BIT(6)
+#define   DISP_IPC_ENABLE		REG_BIT(3)
 
 /*
  * The below are numbered starting from "S1" on gen11/gen12, but starting
@@ -6114,20 +6116,22 @@
 #define  TRANS_BPC_10			REG_FIELD_PREP(TRANS_BPC_MASK, 1)
 #define  TRANS_BPC_6			REG_FIELD_PREP(TRANS_BPC_MASK, 2)
 #define  TRANS_BPC_12			REG_FIELD_PREP(TRANS_BPC_MASK, 3)
+
 #define _TRANSA_CHICKEN1	 0xf0060
 #define _TRANSB_CHICKEN1	 0xf1060
 #define TRANS_CHICKEN1(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN1, _TRANSB_CHICKEN1)
-#define  TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	(1 << 10)
-#define  TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	(1 << 4)
+#define   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	REG_BIT(10)
+#define   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	REG_BIT(4)
+
 #define _TRANSA_CHICKEN2	 0xf0064
 #define _TRANSB_CHICKEN2	 0xf1064
 #define TRANS_CHICKEN2(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN2, _TRANSB_CHICKEN2)
-#define  TRANS_CHICKEN2_TIMING_OVERRIDE			(1 << 31)
-#define  TRANS_CHICKEN2_FDI_POLARITY_REVERSED		(1 << 29)
-#define  TRANS_CHICKEN2_FRAME_START_DELAY_MASK		(3 << 27)
-#define  TRANS_CHICKEN2_FRAME_START_DELAY(x)		((x) << 27) /* 0-3 */
-#define  TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER	(1 << 26)
-#define  TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH	(1 << 25)
+#define   TRANS_CHICKEN2_TIMING_OVERRIDE		REG_BIT(31)
+#define   TRANS_CHICKEN2_FDI_POLARITY_REVERSED		REG_BIT(29)
+#define   TRANS_CHICKEN2_FRAME_START_DELAY_MASK		REG_GENMASK(28, 27)
+#define   TRANS_CHICKEN2_FRAME_START_DELAY(x)		REG_FIELD_PREP(TRANS_CHICKEN2_FRAME_START_DELAY_MASK, (x)) /* 0-3 */
+#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER	REG_BIT(26)
+#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH	REG_BIT(25)
 
 #define SOUTH_CHICKEN1		_MMIO(0xc2000)
 #define  FDIA_PHASE_SYNC_SHIFT_OVR	19
-- 
2.39.2

