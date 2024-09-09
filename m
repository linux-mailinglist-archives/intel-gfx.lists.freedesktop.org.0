Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD6A97222F
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 20:59:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3474A10E64A;
	Mon,  9 Sep 2024 18:59:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gHTo1foJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB82810E650;
 Mon,  9 Sep 2024 18:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725908372; x=1757444372;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b5qJkOkeE7b1NJuh2CF8KFloskZgp8tpS+1cIApdHSA=;
 b=gHTo1foJI90FF5NHb1sStLo8dcq86YOTPwj5v4Uph9UCIkLNe7tb7MSf
 xqOA3hIslhsuMOqnwNKLf8CDPZyDR8GaUdteHs+954Irr1yHPiA+rhYZs
 xgLkRZ02f/sLBWbAlzzRQkXV8wDuMM5Tj1yr7bjUe38JtqXseQIsMHz7d
 yW1tkmGL9HPl6BJvF9Aev1WbDYIw2npkvQEPX9/qoYlWltUQI/nZJD+Jp
 Lzd0pON/vhzYUHNHqrZ1Y6Jqgw6Wl2o9UAaP3BFiiWZynBoBHUX4Rp7hW
 V8G1wal422I8YqoNZ8MDCAQ8ZdKGkL8xf9kItJOBs+hraRsmPlkYp5dSM A==;
X-CSE-ConnectionGUID: nFE+iGmRTKObWyZUoWvv4g==
X-CSE-MsgGUID: FpsUpfd8Sf+RhVW7jZWcbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24499633"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="24499633"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:32 -0700
X-CSE-ConnectionGUID: 27m0tSOVTRqDvbLEa/y8yg==
X-CSE-MsgGUID: RYee+A6xQMu6AxGNrJV85w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="90037692"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/11] drm/i915/reg: fix SKL scaler register style
Date: Mon,  9 Sep 2024 21:58:56 +0300
Message-Id: <cff41ece4d6147314e731ac61e7bac06942d75cc.1725908152.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725908151.git.jani.nikula@intel.com>
References: <cover.1725908151.git.jani.nikula@intel.com>
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

Adhere to the style described at the top of i915_reg.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 64 ++++++++++++++++-----------------
 1 file changed, 31 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9ece696baae8..2f09145b9791 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2229,11 +2229,15 @@
 /*
  * Skylake scalers
  */
+#define _ID(id, a, b) _PICK_EVEN(id, a, b)
 #define _PS_1A_CTRL      0x68180
 #define _PS_2A_CTRL      0x68280
 #define _PS_1B_CTRL      0x68980
 #define _PS_2B_CTRL      0x68A80
 #define _PS_1C_CTRL      0x69180
+#define SKL_PS_CTRL(pipe, id) _MMIO_PIPE(pipe,        \
+			_ID(id, _PS_1A_CTRL, _PS_2A_CTRL),       \
+			_ID(id, _PS_1B_CTRL, _PS_2B_CTRL))
 #define   PS_SCALER_EN				REG_BIT(31)
 #define   PS_SCALER_TYPE_MASK			REG_BIT(30) /* icl+ */
 #define   PS_SCALER_TYPE_NON_LINEAR		REG_FIELD_PREP(PS_SCALER_TYPE_MASK, 0)
@@ -2286,6 +2290,9 @@
 #define _PS_PWR_GATE_1B     0x68960
 #define _PS_PWR_GATE_2B     0x68A60
 #define _PS_PWR_GATE_1C     0x69160
+#define SKL_PS_PWR_GATE(pipe, id) _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_PWR_GATE_1A, _PS_PWR_GATE_2A), \
+			_ID(id, _PS_PWR_GATE_1B, _PS_PWR_GATE_2B))
 #define   PS_PWR_GATE_DIS_OVERRIDE		REG_BIT(31)
 #define   PS_PWR_GATE_SETTLING_TIME_MASK	REG_GENMASK(4, 3)
 #define   PS_PWR_GATE_SETTLING_TIME_32		REG_FIELD_PREP(PS_PWR_GATE_SETTLING_TIME_MASK, 0)
@@ -2303,6 +2310,9 @@
 #define _PS_WIN_POS_1B      0x68970
 #define _PS_WIN_POS_2B      0x68A70
 #define _PS_WIN_POS_1C      0x69170
+#define SKL_PS_WIN_POS(pipe, id) _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_WIN_POS_1A, _PS_WIN_POS_2A), \
+			_ID(id, _PS_WIN_POS_1B, _PS_WIN_POS_2B))
 #define   PS_WIN_XPOS_MASK			REG_GENMASK(31, 16)
 #define   PS_WIN_XPOS(x)			REG_FIELD_PREP(PS_WIN_XPOS_MASK, (x))
 #define   PS_WIN_YPOS_MASK			REG_GENMASK(15, 0)
@@ -2313,6 +2323,9 @@
 #define _PS_WIN_SZ_1B       0x68974
 #define _PS_WIN_SZ_2B       0x68A74
 #define _PS_WIN_SZ_1C       0x69174
+#define SKL_PS_WIN_SZ(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_WIN_SZ_1A, _PS_WIN_SZ_2A),   \
+			_ID(id, _PS_WIN_SZ_1B, _PS_WIN_SZ_2B))
 #define   PS_WIN_XSIZE_MASK			REG_GENMASK(31, 16)
 #define   PS_WIN_XSIZE(w)			REG_FIELD_PREP(PS_WIN_XSIZE_MASK, (w))
 #define   PS_WIN_YSIZE_MASK			REG_GENMASK(15, 0)
@@ -2323,18 +2336,27 @@
 #define _PS_VSCALE_1B       0x68984
 #define _PS_VSCALE_2B       0x68A84
 #define _PS_VSCALE_1C       0x69184
+#define SKL_PS_VSCALE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_VSCALE_1A, _PS_VSCALE_2A),   \
+			_ID(id, _PS_VSCALE_1B, _PS_VSCALE_2B))
 
 #define _PS_HSCALE_1A       0x68190
 #define _PS_HSCALE_2A       0x68290
 #define _PS_HSCALE_1B       0x68990
 #define _PS_HSCALE_2B       0x68A90
 #define _PS_HSCALE_1C       0x69190
+#define SKL_PS_HSCALE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_HSCALE_1A, _PS_HSCALE_2A),   \
+			_ID(id, _PS_HSCALE_1B, _PS_HSCALE_2B))
 
 #define _PS_VPHASE_1A       0x68188
 #define _PS_VPHASE_2A       0x68288
 #define _PS_VPHASE_1B       0x68988
 #define _PS_VPHASE_2B       0x68A88
 #define _PS_VPHASE_1C       0x69188
+#define SKL_PS_VPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_VPHASE_1A, _PS_VPHASE_2A),   \
+			_ID(id, _PS_VPHASE_1B, _PS_VPHASE_2B))
 #define   PS_Y_PHASE_MASK			REG_GENMASK(31, 16)
 #define   PS_Y_PHASE(x)				REG_FIELD_PREP(PS_Y_PHASE_MASK, (x))
 #define   PS_UV_RGB_PHASE_MASK			REG_GENMASK(15, 0)
@@ -2347,56 +2369,32 @@
 #define _PS_HPHASE_1B       0x68994
 #define _PS_HPHASE_2B       0x68A94
 #define _PS_HPHASE_1C       0x69194
+#define SKL_PS_HPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_HPHASE_1A, _PS_HPHASE_2A),   \
+			_ID(id, _PS_HPHASE_1B, _PS_HPHASE_2B))
 
 #define _PS_ECC_STAT_1A     0x681D0
 #define _PS_ECC_STAT_2A     0x682D0
 #define _PS_ECC_STAT_1B     0x689D0
 #define _PS_ECC_STAT_2B     0x68AD0
 #define _PS_ECC_STAT_1C     0x691D0
+#define SKL_PS_ECC_STAT(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_ECC_STAT_1A, _PS_ECC_STAT_2A),   \
+			_ID(id, _PS_ECC_STAT_1B, _PS_ECC_STAT_2B))
 
 #define _PS_COEF_SET0_INDEX_1A	   0x68198
 #define _PS_COEF_SET0_INDEX_2A	   0x68298
 #define _PS_COEF_SET0_INDEX_1B	   0x68998
 #define _PS_COEF_SET0_INDEX_2B	   0x68A98
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)
 #define   PS_COEF_INDEX_AUTO_INC		REG_BIT(10)
 
 #define _PS_COEF_SET0_DATA_1A	   0x6819C
 #define _PS_COEF_SET0_DATA_2A	   0x6829C
 #define _PS_COEF_SET0_DATA_1B	   0x6899C
 #define _PS_COEF_SET0_DATA_2B	   0x68A9C
-
-#define _ID(id, a, b) _PICK_EVEN(id, a, b)
-#define SKL_PS_CTRL(pipe, id) _MMIO_PIPE(pipe,        \
-			_ID(id, _PS_1A_CTRL, _PS_2A_CTRL),       \
-			_ID(id, _PS_1B_CTRL, _PS_2B_CTRL))
-#define SKL_PS_PWR_GATE(pipe, id) _MMIO_PIPE(pipe,    \
-			_ID(id, _PS_PWR_GATE_1A, _PS_PWR_GATE_2A), \
-			_ID(id, _PS_PWR_GATE_1B, _PS_PWR_GATE_2B))
-#define SKL_PS_WIN_POS(pipe, id) _MMIO_PIPE(pipe,     \
-			_ID(id, _PS_WIN_POS_1A, _PS_WIN_POS_2A), \
-			_ID(id, _PS_WIN_POS_1B, _PS_WIN_POS_2B))
-#define SKL_PS_WIN_SZ(pipe, id)  _MMIO_PIPE(pipe,     \
-			_ID(id, _PS_WIN_SZ_1A, _PS_WIN_SZ_2A),   \
-			_ID(id, _PS_WIN_SZ_1B, _PS_WIN_SZ_2B))
-#define SKL_PS_VSCALE(pipe, id)  _MMIO_PIPE(pipe,     \
-			_ID(id, _PS_VSCALE_1A, _PS_VSCALE_2A),   \
-			_ID(id, _PS_VSCALE_1B, _PS_VSCALE_2B))
-#define SKL_PS_HSCALE(pipe, id)  _MMIO_PIPE(pipe,     \
-			_ID(id, _PS_HSCALE_1A, _PS_HSCALE_2A),   \
-			_ID(id, _PS_HSCALE_1B, _PS_HSCALE_2B))
-#define SKL_PS_VPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
-			_ID(id, _PS_VPHASE_1A, _PS_VPHASE_2A),   \
-			_ID(id, _PS_VPHASE_1B, _PS_VPHASE_2B))
-#define SKL_PS_HPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
-			_ID(id, _PS_HPHASE_1A, _PS_HPHASE_2A),   \
-			_ID(id, _PS_HPHASE_1B, _PS_HPHASE_2B))
-#define SKL_PS_ECC_STAT(pipe, id)  _MMIO_PIPE(pipe,     \
-			_ID(id, _PS_ECC_STAT_1A, _PS_ECC_STAT_2A),   \
-			_ID(id, _PS_ECC_STAT_1B, _PS_ECC_STAT_2B))
-#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
-			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
-			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)
-
 #define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
 			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
 			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)
-- 
2.39.2

