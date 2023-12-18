Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A28E8179B4
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:30:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90A1610E2CC;
	Mon, 18 Dec 2023 18:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 770C310E259
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702924224; x=1734460224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6FH/tqGd6BorXNvO+HiubTxs+UK2EOnh1OcS/oj5GJ8=;
 b=bpCXtjcVEScCspGIuHhgHVM5nEL0nMB8ZHcL1GEOwSstmOdURKOP/AcX
 mdygIBS0wQS5FAUBjQ8jDsGEKPHPWQQSiqWzxFKFfReF83Dmozo8CgDB0
 zex7rUXHQQomDYDKKz4Yqd0VM8fhH3o67gUB6iRMregRTpel5Ek3cZbJ5
 r4I4HF9mgbK1hblc/AaxIaxL54mW/4TA3OxvZ7Hk+JLPiVMHcaIi3x1Zz
 CNVU4NiPj+ptCTOtvWKWGdxqAhD1uI8zqcTISyjM11qovqVwUOOhDjILr
 RKWhsEbhziaIGfqU1RMM0+NrPwjQ6gAYWMwRpWDSBVsVs2ISJj1JUj2YJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="392714131"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="392714131"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 09:50:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="779176589"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="779176589"
Received: from etrunovx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.35.24])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 09:50:24 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/7] drm/i915/psr: Calculate and configure CUR_POS_ERLY_TPT
Date: Mon, 18 Dec 2023 19:50:01 +0200
Message-Id: <20231218175004.52875-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218175004.52875-1-jouni.hogander@intel.com>
References: <20231218175004.52875-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

New register CUR_POS_ERLY_TPT related to early transport is
supposed to be configured when early transport is in use.

This register is used to configure cursor vertical postion
from beginning of selective update area.

Bspec: 68927

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 32 ++++++++++++++++-----
 drivers/gpu/drm/i915/i915_reg.h             |  2 ++
 2 files changed, 27 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 926e2de00eb5..ecff90e233f0 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -47,12 +47,23 @@ static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
 	return base + plane_state->view.color_plane[0].offset;
 }
 
-static u32 intel_cursor_position(const struct intel_plane_state *plane_state)
+static u32 intel_cursor_position(const struct intel_crtc_state *crtc_state,
+				 const struct intel_plane_state *plane_state,
+				 bool early_tpt)
 {
 	int x = plane_state->uapi.dst.x1;
 	int y = plane_state->uapi.dst.y1;
 	u32 pos = 0;
 
+	/*
+	 * Formula from Bspec:
+	 * MAX(-1 * <Cursor vertical size from CUR_CTL base on cursor mode
+	 * select setting> + 1, CUR_POS Y Position - Update region Y position
+	 */
+	if (early_tpt)
+		y = max(-1 * drm_rect_height(&plane_state->uapi.dst) + 1,
+			y - crtc_state->psr2_su_area.y1);
+
 	if (x < 0) {
 		pos |= CURSOR_POS_X_SIGN;
 		x = -x;
@@ -274,7 +285,7 @@ static void i845_cursor_update_arm(struct intel_plane *plane,
 		size = CURSOR_HEIGHT(height) | CURSOR_WIDTH(width);
 
 		base = intel_cursor_base(plane_state);
-		pos = intel_cursor_position(plane_state);
+		pos = intel_cursor_position(crtc_state, plane_state, false);
 	}
 
 	/* On these chipsets we can only modify the base/size/stride
@@ -503,17 +514,24 @@ static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
 					     const struct intel_crtc_state *crtc_state,
 					     const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	if (drm_rect_height(&plane_state->psr2_sel_fetch_area) > 0)
-		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
+	if (drm_rect_height(&plane_state->psr2_sel_fetch_area) > 0) {
+		if (crtc_state->enable_psr2_su_region_et) {
+			u32 val = intel_cursor_position(crtc_state, plane_state,
+				true);
+			intel_de_write_fw(dev_priv, CURPOS_ERLY_TPT(pipe), val);
+		}
+
+		intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id),
 				  plane_state->ctl);
-	else
+	} else {
 		i9xx_cursor_disable_sel_fetch_arm(plane, crtc_state);
+	}
 }
 
 /* TODO: split into noarm+arm pair */
@@ -536,7 +554,7 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
 			fbc_ctl = CUR_FBC_EN | CUR_FBC_HEIGHT(height - 1);
 
 		base = intel_cursor_base(plane_state);
-		pos = intel_cursor_position(plane_state);
+		pos = intel_cursor_position(crtc_state, plane_state, false);
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 27dc903f0553..d6f7e68ba308 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3059,6 +3059,7 @@
 #define   MCURSOR_MODE_64_ARGB_AX	(0x20 | MCURSOR_MODE_64_32B_AX)
 #define _CURABASE		0x70084
 #define _CURAPOS		0x70088
+#define _CURAPOS_ERLY_TPT	0x7008c
 #define   CURSOR_POS_Y_SIGN		REG_BIT(31)
 #define   CURSOR_POS_Y_MASK		REG_GENMASK(30, 16)
 #define   CURSOR_POS_Y(y)		REG_FIELD_PREP(CURSOR_POS_Y_MASK, (y))
@@ -3087,6 +3088,7 @@
 #define CURCNTR(pipe) _MMIO_CURSOR2(pipe, _CURACNTR)
 #define CURBASE(pipe) _MMIO_CURSOR2(pipe, _CURABASE)
 #define CURPOS(pipe) _MMIO_CURSOR2(pipe, _CURAPOS)
+#define CURPOS_ERLY_TPT(pipe) _MMIO_CURSOR2(pipe, _CURAPOS_ERLY_TPT)
 #define CURSIZE(pipe) _MMIO_CURSOR2(pipe, _CURASIZE)
 #define CUR_FBC_CTL(pipe) _MMIO_CURSOR2(pipe, _CUR_FBC_CTL_A)
 #define CUR_CHICKEN(pipe) _MMIO_CURSOR2(pipe, _CUR_CHICKEN_A)
-- 
2.34.1

