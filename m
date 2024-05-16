Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 847918C7801
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 15:56:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 121E710ED2B;
	Thu, 16 May 2024 13:56:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BljSD6Xl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10D2E10ED26
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 13:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715867791; x=1747403791;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kmDQ7U1+R5fauPYShdKgDCGqXoTqQsKp84Mmg/aoOzY=;
 b=BljSD6XluX37uplbB2mCIr9nYY8gu7jsDsLXqafvE7FVTlIsZquypTfZ
 UETddPB3+dplYu4wyNce82fAkp8hDwYyql9S4aebHuIdxzaPfxck0Dlvm
 ViB9/UX/eYCLABp2Vx47Urn3VQzLlCqRsvSfQjXruADNXceLzbbxujxyK
 E2waqOdrzod2tcJMos1ZFPalyfIWJM2LQ46eM3Aqh4/kTa6ZTTB9bQvKF
 Y9+4tWBUqdxl89IpBBPQnqftaA+CaGtSPlQnkSXYk5Y4KqIZH3S/qRZ00
 fWCp+4E8r6nUrWShyjLOTFv8IWMiab9DjKzeyD6hwVfbBI8yjMHgmzqyz A==;
X-CSE-ConnectionGUID: p6XtJ9ioSxalhGukPisxeA==
X-CSE-MsgGUID: asYaS1YbRdaSmxyTxfekEA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="37357174"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="37357174"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 06:56:30 -0700
X-CSE-ConnectionGUID: wOT3dZyhSmyj5m1BQS1SRg==
X-CSE-MsgGUID: wOv5lwxISmK+Tydbjy+cOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31435067"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 May 2024 06:56:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 May 2024 16:56:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/13] drm/i915: Clean up the cursor register defines
Date: Thu, 16 May 2024 16:56:11 +0300
Message-ID: <20240516135622.3498-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Group the cursor register defines such that everything to
do with one register is in one place.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_cursor_regs.h  | 52 +++++++++----------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
index c2190af1e9f5..270c26c2e6df 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
@@ -9,6 +9,7 @@
 #include "intel_display_reg_defs.h"
 
 #define _CURACNTR		0x70080
+#define CURCNTR(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe), _CURACNTR)
 /* Old style CUR*CNTR flags (desktop 8xx) */
 #define   CURSOR_ENABLE			REG_BIT(31)
 #define   CURSOR_PIPE_GAMMA_ENABLE	REG_BIT(30)
@@ -38,61 +39,60 @@
 #define   MCURSOR_MODE_128_ARGB_AX	(0x20 | MCURSOR_MODE_128_32B_AX)
 #define   MCURSOR_MODE_256_ARGB_AX	(0x20 | MCURSOR_MODE_256_32B_AX)
 #define   MCURSOR_MODE_64_ARGB_AX	(0x20 | MCURSOR_MODE_64_32B_AX)
+
 #define _CURABASE		0x70084
+#define CURBASE(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe), _CURABASE)
+
 #define _CURAPOS		0x70088
-#define _CURAPOS_ERLY_TPT	0x7008c
+#define CURPOS(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe), _CURAPOS)
 #define   CURSOR_POS_Y_SIGN		REG_BIT(31)
 #define   CURSOR_POS_Y_MASK		REG_GENMASK(30, 16)
 #define   CURSOR_POS_Y(y)		REG_FIELD_PREP(CURSOR_POS_Y_MASK, (y))
 #define   CURSOR_POS_X_SIGN		REG_BIT(15)
 #define   CURSOR_POS_X_MASK		REG_GENMASK(14, 0)
 #define   CURSOR_POS_X(x)		REG_FIELD_PREP(CURSOR_POS_X_MASK, (x))
+
+#define _CURAPOS_ERLY_TPT	0x7008c
+#define CURPOS_ERLY_TPT(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe), _CURAPOS_ERLY_TPT)
+
 #define _CURASIZE		0x700a0 /* 845/865 */
+#define CURSIZE(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe), _CURASIZE)
 #define   CURSOR_HEIGHT_MASK		REG_GENMASK(21, 12)
 #define   CURSOR_HEIGHT(h)		REG_FIELD_PREP(CURSOR_HEIGHT_MASK, (h))
 #define   CURSOR_WIDTH_MASK		REG_GENMASK(9, 0)
 #define   CURSOR_WIDTH(w)		REG_FIELD_PREP(CURSOR_WIDTH_MASK, (w))
+
 #define _CUR_FBC_CTL_A		0x700a0 /* ivb+ */
+#define CUR_FBC_CTL(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe), _CUR_FBC_CTL_A)
 #define   CUR_FBC_EN			REG_BIT(31)
 #define   CUR_FBC_HEIGHT_MASK		REG_GENMASK(7, 0)
 #define   CUR_FBC_HEIGHT(h)		REG_FIELD_PREP(CUR_FBC_HEIGHT_MASK, (h))
+
 #define _CUR_CHICKEN_A		0x700a4 /* mtl+ */
+#define CUR_CHICKEN(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe), _CUR_CHICKEN_A)
+
 #define _CURASURFLIVE		0x700ac /* g4x+ */
-#define _CURBCNTR		0x700c0
-#define _CURBBASE		0x700c4
-#define _CURBPOS		0x700c8
-
-#define _CURBCNTR_IVB		0x71080
-#define _CURBBASE_IVB		0x71084
-#define _CURBPOS_IVB		0x71088
-
-#define CURCNTR(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURACNTR)
-#define CURBASE(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURABASE)
-#define CURPOS(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS)
-#define CURPOS_ERLY_TPT(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS_ERLY_TPT)
-#define CURSIZE(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASIZE)
-#define CUR_FBC_CTL(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_FBC_CTL_A)
-#define CUR_CHICKEN(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_CHICKEN_A)
-#define CURSURFLIVE(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASURFLIVE)
+#define CURSURFLIVE(dev_priv, pipe)	_MMIO_CURSOR2((dev_priv), (pipe), _CURASURFLIVE)
 
 /* skl+ */
 #define _CUR_WM_A_0		0x70140
 #define _CUR_WM_B_0		0x71140
+#define CUR_WM(pipe, level)	_MMIO(_PIPE((pipe), _CUR_WM_A_0, _CUR_WM_B_0) + (level) * 4)
+
 #define _CUR_WM_SAGV_A		0x70158
 #define _CUR_WM_SAGV_B		0x71158
+#define CUR_WM_SAGV(pipe)	_MMIO_PIPE((pipe), _CUR_WM_SAGV_A, _CUR_WM_SAGV_B)
+
 #define _CUR_WM_SAGV_TRANS_A	0x7015C
 #define _CUR_WM_SAGV_TRANS_B	0x7115C
+#define CUR_WM_SAGV_TRANS(pipe)	_MMIO_PIPE((pipe), _CUR_WM_SAGV_TRANS_A, _CUR_WM_SAGV_TRANS_B)
+
 #define _CUR_WM_TRANS_A		0x70168
 #define _CUR_WM_TRANS_B		0x71168
-#define _CUR_WM_0(pipe) _PIPE(pipe, _CUR_WM_A_0, _CUR_WM_B_0)
-#define CUR_WM(pipe, level) _MMIO(_CUR_WM_0(pipe) + ((4) * (level)))
-#define CUR_WM_SAGV(pipe) _MMIO_PIPE(pipe, _CUR_WM_SAGV_A, _CUR_WM_SAGV_B)
-#define CUR_WM_SAGV_TRANS(pipe) _MMIO_PIPE(pipe, _CUR_WM_SAGV_TRANS_A, _CUR_WM_SAGV_TRANS_B)
-#define CUR_WM_TRANS(pipe) _MMIO_PIPE(pipe, _CUR_WM_TRANS_A, _CUR_WM_TRANS_B)
+#define CUR_WM_TRANS(pipe)	_MMIO_PIPE((pipe), _CUR_WM_TRANS_A, _CUR_WM_TRANS_B)
 
-/* skl+ */
-#define _CUR_BUF_CFG_A				0x7017c
-#define _CUR_BUF_CFG_B				0x7117c
-#define CUR_BUF_CFG(pipe)	_MMIO_PIPE(pipe, _CUR_BUF_CFG_A, _CUR_BUF_CFG_B)
+#define _CUR_BUF_CFG_A		0x7017c
+#define _CUR_BUF_CFG_B		0x7117c
+#define CUR_BUF_CFG(pipe)	_MMIO_PIPE((pipe), _CUR_BUF_CFG_A, _CUR_BUF_CFG_B)
 
 #endif /* __INTEL_CURSOR_REGS_H__ */
-- 
2.44.1

