Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D10DF8C4585
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 19:01:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566A910E8B0;
	Mon, 13 May 2024 17:01:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AbIvDu1/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCC7B10E8AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 17:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715619658; x=1747155658;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FG/Qaw36ckrbCPhizG0RIKShzZTqKh5d4xR5RkJ7fZU=;
 b=AbIvDu1/G7kATtUaSKdJd2aQF3PLTtUABJ+jtlBG+dVHAZq9nA2TbX/x
 WrUgwJEE3TXeFS17rYbgfQtzadM1QBK2hHvDCf3aMQsmbdUBMDVXarWe4
 MDe1Bd2uhuRSHMnFZBF1VtdYK3+Q5Y/JMGLrVSsR8EWD03MdJslOHwW5e
 eHqHC3hb/ZMH6gmtn06jJmQsDkV4+58dqdisMxEAbMp0Zd1GXwYGWQkeG
 92C2EiHy2zP8Apn89g7EZscD1suW1f7CEO0OOUI3qWypTLp14jxPNhwvA
 tFcGEpiQUGnfHWOE0du+xd1grEeiIXkt5upUxkGRki1alfxlEJ7PU5o3g w==;
X-CSE-ConnectionGUID: w0ZEhHiaQR+N4MZhnCqKHg==
X-CSE-MsgGUID: 9wALsvP3SsqqD/zcvm2ncg==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="15388053"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="15388053"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 10:00:58 -0700
X-CSE-ConnectionGUID: XXKn6b+bTd2HT6u3Ug2dZg==
X-CSE-MsgGUID: MDNg2zIcTBa328xcV7pohQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="30379288"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 May 2024 10:00:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 May 2024 20:00:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 13/16] drm/i915: Refactor skl+ plane register offset
 calculations
Date: Mon, 13 May 2024 20:00:40 +0300
Message-ID: <20240513170040.15393-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510152329.24098-14-ville.syrjala@linux.intel.com>
References: <20240510152329.24098-14-ville.syrjala@linux.intel.com>
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

Currentluy every skl+ plane register defines some intermediate
macros to calculate the final register offset. Pull all of that
into common macros, simplifying the final register offset stuff
into just five defines:
- raw register offsets for the planes 1 and 2 on pipes A and B
- the final parametrized macro

v2: Rebase

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../i915/display/skl_universal_plane_regs.h   | 185 +++++++++---------
 1 file changed, 93 insertions(+), 92 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index 0b4f97059479..cb3bdd71b6b2 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -8,13 +8,22 @@
 
 #include "intel_display_reg_defs.h"
 
+#define _SKL_PLANE(pipe, plane, reg_1_a, reg_1_b, reg_2_a, reg_2_b) \
+	_PLANE((plane), _PIPE((pipe), (reg_1_a), (reg_1_b)), _PIPE((pipe), (reg_2_a), (reg_2_b)))
+#define _SKL_PLANE_DW(pipe, plane, dw, reg_1_a, reg_1_b, reg_2_a, reg_2_b) \
+	(_SKL_PLANE((pipe), (plane), (reg_1_a), (reg_1_b), (reg_2_a), (reg_2_b)) + (dw) * 4)
+#define _MMIO_SKL_PLANE(pipe, plane, reg_1_a, reg_1_b, reg_2_a, reg_2_b) \
+	_MMIO(_SKL_PLANE((pipe), (plane), (reg_1_a), (reg_1_b), (reg_2_a), (reg_2_b)))
+#define _MMIO_SKL_PLANE_DW(pipe, plane, dw, reg_1_a, reg_1_b, reg_2_a, reg_2_b) \
+	_MMIO(_SKL_PLANE_DW((pipe), (plane), (dw), (reg_1_a), (reg_1_b), (reg_2_a), (reg_2_b)))
+
 #define _PLANE_CTL_1_A				0x70180
 #define _PLANE_CTL_2_A				0x70280
 #define _PLANE_CTL_1_B				0x71180
 #define _PLANE_CTL_2_B				0x71280
-#define _PLANE_CTL_1(pipe)		_PIPE(pipe, _PLANE_CTL_1_A, _PLANE_CTL_1_B)
-#define _PLANE_CTL_2(pipe)		_PIPE(pipe, _PLANE_CTL_2_A, _PLANE_CTL_2_B)
-#define PLANE_CTL(pipe, plane)		_MMIO_PLANE(plane, _PLANE_CTL_1(pipe), _PLANE_CTL_2(pipe))
+#define PLANE_CTL(pipe, plane)		_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_CTL_1_A, _PLANE_CTL_1_B, \
+							_PLANE_CTL_2_A, _PLANE_CTL_2_B)
 #define   PLANE_CTL_ENABLE			REG_BIT(31)
 #define   PLANE_CTL_ARB_SLOTS_MASK		REG_GENMASK(30, 28) /* icl+ */
 #define   PLANE_CTL_ARB_SLOTS(x)		REG_FIELD_PREP(PLANE_CTL_ARB_SLOTS_MASK, (x)) /* icl+ */
@@ -83,9 +92,9 @@
 #define _PLANE_STRIDE_2_A			0x70288
 #define _PLANE_STRIDE_1_B			0x71188
 #define _PLANE_STRIDE_2_B			0x71288
-#define _PLANE_STRIDE_1(pipe)		_PIPE(pipe, _PLANE_STRIDE_1_A, _PLANE_STRIDE_1_B)
-#define _PLANE_STRIDE_2(pipe)		_PIPE(pipe, _PLANE_STRIDE_2_A, _PLANE_STRIDE_2_B)
-#define PLANE_STRIDE(pipe, plane)	_MMIO_PLANE(plane, _PLANE_STRIDE_1(pipe), _PLANE_STRIDE_2(pipe))
+#define PLANE_STRIDE(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_STRIDE_1_A, _PLANE_STRIDE_1_B, \
+							_PLANE_STRIDE_2_A, _PLANE_STRIDE_2_B)
 #define   PLANE_STRIDE__MASK			REG_GENMASK(11, 0)
 #define   PLANE_STRIDE_(stride)			REG_FIELD_PREP(PLANE_STRIDE__MASK, (stride))
 
@@ -93,9 +102,9 @@
 #define _PLANE_POS_2_A				0x7028c
 #define _PLANE_POS_1_B				0x7118c
 #define _PLANE_POS_2_B				0x7128c
-#define _PLANE_POS_1(pipe)		_PIPE(pipe, _PLANE_POS_1_A, _PLANE_POS_1_B)
-#define _PLANE_POS_2(pipe)		_PIPE(pipe, _PLANE_POS_2_A, _PLANE_POS_2_B)
-#define PLANE_POS(pipe, plane)		_MMIO_PLANE(plane, _PLANE_POS_1(pipe), _PLANE_POS_2(pipe))
+#define PLANE_POS(pipe, plane)		_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_POS_1_A, _PLANE_POS_1_B, \
+							_PLANE_POS_2_A, _PLANE_POS_2_B)
 #define   PLANE_POS_Y_MASK			REG_GENMASK(31, 16)
 #define   PLANE_POS_Y(y)			REG_FIELD_PREP(PLANE_POS_Y_MASK, (y))
 #define   PLANE_POS_X_MASK			REG_GENMASK(15, 0)
@@ -105,9 +114,9 @@
 #define _PLANE_SIZE_2_A				0x70290
 #define _PLANE_SIZE_1_B				0x71190
 #define _PLANE_SIZE_2_B				0x71290
-#define _PLANE_SIZE_1(pipe)		_PIPE(pipe, _PLANE_SIZE_1_A, _PLANE_SIZE_1_B)
-#define _PLANE_SIZE_2(pipe)		_PIPE(pipe, _PLANE_SIZE_2_A, _PLANE_SIZE_2_B)
-#define PLANE_SIZE(pipe, plane)		_MMIO_PLANE(plane, _PLANE_SIZE_1(pipe), _PLANE_SIZE_2(pipe))
+#define PLANE_SIZE(pipe, plane)		_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_SIZE_1_A, _PLANE_SIZE_1_B, \
+							_PLANE_SIZE_2_A, _PLANE_SIZE_2_B)
 #define   PLANE_HEIGHT_MASK			REG_GENMASK(31, 16)
 #define   PLANE_HEIGHT(h)			REG_FIELD_PREP(PLANE_HEIGHT_MASK, (h))
 #define   PLANE_WIDTH_MASK			REG_GENMASK(15, 0)
@@ -117,26 +126,26 @@
 #define _PLANE_KEYVAL_2_A			0x70294
 #define _PLANE_KEYVAL_1_B			0x71194
 #define _PLANE_KEYVAL_2_B			0x71294
-#define _PLANE_KEYVAL_1(pipe)		_PIPE(pipe, _PLANE_KEYVAL_1_A, _PLANE_KEYVAL_1_B)
-#define _PLANE_KEYVAL_2(pipe)		_PIPE(pipe, _PLANE_KEYVAL_2_A, _PLANE_KEYVAL_2_B)
-#define PLANE_KEYVAL(pipe, plane)	_MMIO_PLANE(plane, _PLANE_KEYVAL_1(pipe), _PLANE_KEYVAL_2(pipe))
+#define PLANE_KEYVAL(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane),\
+							_PLANE_KEYVAL_1_A, _PLANE_KEYVAL_1_B, \
+							_PLANE_KEYVAL_2_A, _PLANE_KEYVAL_2_B)
 
 #define _PLANE_KEYMSK_1_A			0x70198
 #define _PLANE_KEYMSK_2_A			0x70298
 #define _PLANE_KEYMSK_1_B			0x71198
 #define _PLANE_KEYMSK_2_B			0x71298
-#define _PLANE_KEYMSK_1(pipe)		_PIPE(pipe, _PLANE_KEYMSK_1_A, _PLANE_KEYMSK_1_B)
-#define _PLANE_KEYMSK_2(pipe)		_PIPE(pipe, _PLANE_KEYMSK_2_A, _PLANE_KEYMSK_2_B)
-#define PLANE_KEYMSK(pipe, plane)	_MMIO_PLANE(plane, _PLANE_KEYMSK_1(pipe), _PLANE_KEYMSK_2(pipe))
+#define PLANE_KEYMSK(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_KEYMSK_1_A, _PLANE_KEYMSK_1_B, \
+							_PLANE_KEYMSK_2_A, _PLANE_KEYMSK_2_B)
 #define   PLANE_KEYMSK_ALPHA_ENABLE		REG_BIT(31)
 
 #define _PLANE_SURF_1_A				0x7019c
 #define _PLANE_SURF_2_A				0x7029c
 #define _PLANE_SURF_1_B				0x7119c
 #define _PLANE_SURF_2_B				0x7129c
-#define _PLANE_SURF_1(pipe)		_PIPE(pipe, _PLANE_SURF_1_A, _PLANE_SURF_1_B)
-#define _PLANE_SURF_2(pipe)		_PIPE(pipe, _PLANE_SURF_2_A, _PLANE_SURF_2_B)
-#define PLANE_SURF(pipe, plane)		_MMIO_PLANE(plane, _PLANE_SURF_1(pipe), _PLANE_SURF_2(pipe))
+#define PLANE_SURF(pipe, plane)		_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_SURF_1_A, _PLANE_SURF_1_B, \
+							_PLANE_SURF_2_A, _PLANE_SURF_2_B)
 #define   PLANE_SURF_ADDR_MASK			REG_GENMASK(31, 12)
 #define   PLANE_SURF_DECRYPT			REG_BIT(2)
 
@@ -144,9 +153,9 @@
 #define _PLANE_KEYMAX_2_A			0x702a0
 #define _PLANE_KEYMAX_1_B			0x711a0
 #define _PLANE_KEYMAX_2_B			0x712a0
-#define _PLANE_KEYMAX_1(pipe)		_PIPE(pipe, _PLANE_KEYMAX_1_A, _PLANE_KEYMAX_1_B)
-#define _PLANE_KEYMAX_2(pipe)		_PIPE(pipe, _PLANE_KEYMAX_2_A, _PLANE_KEYMAX_2_B)
-#define PLANE_KEYMAX(pipe, plane)	_MMIO_PLANE(plane, _PLANE_KEYMAX_1(pipe), _PLANE_KEYMAX_2(pipe))
+#define PLANE_KEYMAX(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_KEYMAX_1_A, _PLANE_KEYMAX_1_B, \
+							_PLANE_KEYMAX_2_A, _PLANE_KEYMAX_2_B)
 #define   PLANE_KEYMAX_ALPHA_MASK		REG_GENMASK(31, 24)
 #define   PLANE_KEYMAX_ALPHA(a)			REG_FIELD_PREP(PLANE_KEYMAX_ALPHA_MASK, (a))
 
@@ -154,9 +163,9 @@
 #define _PLANE_OFFSET_2_A			0x702a4
 #define _PLANE_OFFSET_1_B			0x711a4
 #define _PLANE_OFFSET_2_B			0x712a4
-#define _PLANE_OFFSET_1(pipe)		_PIPE(pipe, _PLANE_OFFSET_1_A, _PLANE_OFFSET_1_B)
-#define _PLANE_OFFSET_2(pipe)		_PIPE(pipe, _PLANE_OFFSET_2_A, _PLANE_OFFSET_2_B)
-#define PLANE_OFFSET(pipe, plane)	_MMIO_PLANE(plane, _PLANE_OFFSET_1(pipe), _PLANE_OFFSET_2(pipe))
+#define PLANE_OFFSET(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_OFFSET_1_A, _PLANE_OFFSET_1_B, \
+							_PLANE_OFFSET_2_A, _PLANE_OFFSET_2_B)
 #define   PLANE_OFFSET_Y_MASK			REG_GENMASK(31, 16)
 #define   PLANE_OFFSET_Y(y)			REG_FIELD_PREP(PLANE_OFFSET_Y_MASK, (y))
 #define   PLANE_OFFSET_X_MASK			REG_GENMASK(15, 0)
@@ -166,25 +175,25 @@
 #define _PLANE_SURFLIVE_2_A			0x702ac
 #define _PLANE_SURFLIVE_1_B			0x711ac
 #define _PLANE_SURFLIVE_2_B			0x712ac
-#define _PLANE_SURFLIVE_1(pipe)		_PIPE(pipe, _PLANE_SURFLIVE_1_A, _PLANE_SURFLIVE_1_B)
-#define _PLANE_SURFLIVE_2(pipe)		_PIPE(pipe, _PLANE_SURFLIVE_2_A, _PLANE_SURFLIVE_2_B)
-#define PLANE_SURFLIVE(pipe, plane)	_MMIO_PLANE(plane, _PLANE_SURFLIVE_1(pipe), _PLANE_SURFLIVE_2(pipe))
+#define PLANE_SURFLIVE(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_SURFLIVE_1_A, _PLANE_SURFLIVE_1_B, \
+							_PLANE_SURFLIVE_2_A, _PLANE_SURFLIVE_2_B)
 
 #define _PLANE_CC_VAL_1_A			0x701b4
 #define _PLANE_CC_VAL_2_A			0x702b4
 #define _PLANE_CC_VAL_1_B			0x711b4
 #define _PLANE_CC_VAL_2_B			0x712b4
-#define _PLANE_CC_VAL_1(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_1_A, _PLANE_CC_VAL_1_B) + (dw) * 4)
-#define _PLANE_CC_VAL_2(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_2_A, _PLANE_CC_VAL_2_B) + (dw) * 4)
-#define PLANE_CC_VAL(pipe, plane, dw)	_MMIO_PLANE((plane), _PLANE_CC_VAL_1((pipe), (dw)), _PLANE_CC_VAL_2((pipe), (dw)))
+#define PLANE_CC_VAL(pipe, plane, dw)	_MMIO_SKL_PLANE_DW((pipe), (plane), (dw), \
+							   _PLANE_CC_VAL_1_A, _PLANE_CC_VAL_1_B, \
+							   _PLANE_CC_VAL_2_A, _PLANE_CC_VAL_2_B)
 
 #define _PLANE_AUX_DIST_1_A			0x701c0
 #define _PLANE_AUX_DIST_2_A			0x702c0
 #define _PLANE_AUX_DIST_1_B			0x711c0
 #define _PLANE_AUX_DIST_2_B			0x712c0
-#define _PLANE_AUX_DIST_1(pipe)		_PIPE(pipe, _PLANE_AUX_DIST_1_A, _PLANE_AUX_DIST_1_B)
-#define _PLANE_AUX_DIST_2(pipe)		_PIPE(pipe, _PLANE_AUX_DIST_2_A, _PLANE_AUX_DIST_2_B)
-#define PLANE_AUX_DIST(pipe, plane)	_MMIO_PLANE(plane, _PLANE_AUX_DIST_1(pipe), _PLANE_AUX_DIST_2(pipe))
+#define PLANE_AUX_DIST(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_AUX_DIST_1_A, _PLANE_AUX_DIST_1_B, \
+							_PLANE_AUX_DIST_2_A, _PLANE_AUX_DIST_2_B)
 #define   PLANE_AUX_DISTANCE_MASK		REG_GENMASK(31, 12)
 #define   PLANE_AUX_STRIDE_MASK			REG_GENMASK(11, 0)
 #define   PLANE_AUX_STRIDE(stride)		REG_FIELD_PREP(PLANE_AUX_STRIDE_MASK, (stride))
@@ -193,17 +202,17 @@
 #define _PLANE_AUX_OFFSET_2_A			0x702c4
 #define _PLANE_AUX_OFFSET_1_B			0x711c4
 #define _PLANE_AUX_OFFSET_2_B			0x712c4
-#define _PLANE_AUX_OFFSET_1(pipe)	_PIPE(pipe, _PLANE_AUX_OFFSET_1_A, _PLANE_AUX_OFFSET_1_B)
-#define _PLANE_AUX_OFFSET_2(pipe)	_PIPE(pipe, _PLANE_AUX_OFFSET_2_A, _PLANE_AUX_OFFSET_2_B)
-#define PLANE_AUX_OFFSET(pipe, plane)	_MMIO_PLANE(plane, _PLANE_AUX_OFFSET_1(pipe), _PLANE_AUX_OFFSET_2(pipe))
+#define PLANE_AUX_OFFSET(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_AUX_OFFSET_1_A, _PLANE_AUX_OFFSET_1_B, \
+							_PLANE_AUX_OFFSET_2_A, _PLANE_AUX_OFFSET_2_B)
 
 #define _PLANE_CUS_CTL_1_A			0x701c8
 #define _PLANE_CUS_CTL_2_A			0x702c8
 #define _PLANE_CUS_CTL_1_B			0x711c8
 #define _PLANE_CUS_CTL_2_B			0x712c8
-#define _PLANE_CUS_CTL_1(pipe)		_PIPE(pipe, _PLANE_CUS_CTL_1_A, _PLANE_CUS_CTL_1_B)
-#define _PLANE_CUS_CTL_2(pipe)		_PIPE(pipe, _PLANE_CUS_CTL_2_A, _PLANE_CUS_CTL_2_B)
-#define PLANE_CUS_CTL(pipe, plane)	_MMIO_PLANE(plane, _PLANE_CUS_CTL_1(pipe), _PLANE_CUS_CTL_2(pipe))
+#define PLANE_CUS_CTL(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_CUS_CTL_1_A, _PLANE_CUS_CTL_1_B, \
+							_PLANE_CUS_CTL_2_A, _PLANE_CUS_CTL_2_B)
 #define   PLANE_CUS_ENABLE			REG_BIT(31)
 #define   PLANE_CUS_Y_PLANE_MASK		REG_BIT(30)
 #define   PLANE_CUS_Y_PLANE_4_RKL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK, 0)
@@ -225,9 +234,9 @@
 #define _PLANE_COLOR_CTL_2_A			0x702cc
 #define _PLANE_COLOR_CTL_1_B			0x711cc
 #define _PLANE_COLOR_CTL_2_B			0x712cc
-#define _PLANE_COLOR_CTL_1(pipe)	_PIPE(pipe, _PLANE_COLOR_CTL_1_A, _PLANE_COLOR_CTL_1_B)
-#define _PLANE_COLOR_CTL_2(pipe)	_PIPE(pipe, _PLANE_COLOR_CTL_2_A, _PLANE_COLOR_CTL_2_B)
-#define PLANE_COLOR_CTL(pipe, plane)	_MMIO_PLANE(plane, _PLANE_COLOR_CTL_1(pipe), _PLANE_COLOR_CTL_2(pipe))
+#define PLANE_COLOR_CTL(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_COLOR_CTL_1_A, _PLANE_COLOR_CTL_1_B, \
+							_PLANE_COLOR_CTL_2_A, _PLANE_COLOR_CTL_2_B)
 #define   PLANE_COLOR_PIPE_GAMMA_ENABLE			REG_BIT(30) /* Pre-ICL */
 #define   PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(28)
 #define   PLANE_COLOR_PIPE_CSC_ENABLE			REG_BIT(23) /* Pre-ICL */
@@ -249,64 +258,56 @@
 #define _PLANE_INPUT_CSC_RY_GY_2_A		0x702e0
 #define _PLANE_INPUT_CSC_RY_GY_1_B		0x711e0
 #define _PLANE_INPUT_CSC_RY_GY_2_B		0x712e0
-#define _PLANE_INPUT_CSC_RY_GY_1(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_RY_GY_1_A, _PLANE_INPUT_CSC_RY_GY_1_B)
-#define _PLANE_INPUT_CSC_RY_GY_2(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_RY_GY_2_A, _PLANE_INPUT_CSC_RY_GY_2_B)
-#define PLANE_INPUT_CSC_COEFF(pipe, plane, index) \
-	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_RY_GY_1(pipe) + (index) * 4, _PLANE_INPUT_CSC_RY_GY_2(pipe) + (index) * 4)
+#define PLANE_INPUT_CSC_COEFF(pipe, plane, index)	_MMIO_SKL_PLANE_DW((pipe), (plane), (index), \
+									   _PLANE_INPUT_CSC_RY_GY_1_A, _PLANE_INPUT_CSC_RY_GY_1_B, \
+									   _PLANE_INPUT_CSC_RY_GY_2_A, _PLANE_INPUT_CSC_RY_GY_2_B)
 
 #define _PLANE_INPUT_CSC_PREOFF_HI_1_A		0x701f8
 #define _PLANE_INPUT_CSC_PREOFF_HI_2_A		0x702f8
 #define _PLANE_INPUT_CSC_PREOFF_HI_1_B		0x711f8
 #define _PLANE_INPUT_CSC_PREOFF_HI_2_B		0x712f8
-#define _PLANE_INPUT_CSC_PREOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_PREOFF_HI_1_A, _PLANE_INPUT_CSC_PREOFF_HI_1_B)
-#define _PLANE_INPUT_CSC_PREOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_PREOFF_HI_2_A, _PLANE_INPUT_CSC_PREOFF_HI_2_B)
-#define PLANE_INPUT_CSC_PREOFF(pipe, plane, index) \
-	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_PREOFF_HI_1(pipe) + (index) * 4, _PLANE_INPUT_CSC_PREOFF_HI_2(pipe) + (index) * 4)
+#define PLANE_INPUT_CSC_PREOFF(pipe, plane, index)	_MMIO_SKL_PLANE_DW((pipe), (plane), (index), \
+									   _PLANE_INPUT_CSC_PREOFF_HI_1_A, _PLANE_INPUT_CSC_PREOFF_HI_1_B, \
+									   _PLANE_INPUT_CSC_PREOFF_HI_2_A, _PLANE_INPUT_CSC_PREOFF_HI_2_B)
 
 #define _PLANE_INPUT_CSC_POSTOFF_HI_1_A		0x70204
 #define _PLANE_INPUT_CSC_POSTOFF_HI_2_A		0x70304
 #define _PLANE_INPUT_CSC_POSTOFF_HI_1_B		0x71204
 #define _PLANE_INPUT_CSC_POSTOFF_HI_2_B		0x71304
-#define _PLANE_INPUT_CSC_POSTOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_POSTOFF_HI_1_A, _PLANE_INPUT_CSC_POSTOFF_HI_1_B)
-#define _PLANE_INPUT_CSC_POSTOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_POSTOFF_HI_2_A, _PLANE_INPUT_CSC_POSTOFF_HI_2_B)
-#define PLANE_INPUT_CSC_POSTOFF(pipe, plane, index) \
-	_MMIO_PLANE(plane, _PLANE_INPUT_CSC_POSTOFF_HI_1(pipe) + (index) * 4, _PLANE_INPUT_CSC_POSTOFF_HI_2(pipe) + (index) * 4)
+#define PLANE_INPUT_CSC_POSTOFF(pipe, plane, index)	_MMIO_SKL_PLANE_DW((pipe), (plane), (index), \
+									   _PLANE_INPUT_CSC_POSTOFF_HI_1_A, _PLANE_INPUT_CSC_POSTOFF_HI_1_B, \
+									   _PLANE_INPUT_CSC_POSTOFF_HI_2_A, _PLANE_INPUT_CSC_POSTOFF_HI_2_B)
 
 #define _PLANE_CSC_RY_GY_1_A			0x70210
 #define _PLANE_CSC_RY_GY_2_A			0x70310
 #define _PLANE_CSC_RY_GY_1_B			0x71210
 #define _PLANE_CSC_RY_GY_2_B			0x71310
-#define _PLANE_CSC_RY_GY_1(pipe)	_PIPE(pipe, _PLANE_CSC_RY_GY_1_A, _PLANE_CSC_RY_GY_1_B)
-#define _PLANE_CSC_RY_GY_2(pipe)	_PIPE(pipe, _PLANE_CSC_RY_GY_2_A, _PLANE_CSC_RY_GY_2_B)
-#define PLANE_CSC_COEFF(pipe, plane, index) \
-	_MMIO_PLANE(plane, _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_SKL_PLANE_DW((pipe), (plane), (index), \
+								   _PLANE_CSC_RY_GY_1_A, _PLANE_CSC_RY_GY_1_B, \
+								   _PLANE_CSC_RY_GY_2_A, _PLANE_CSC_RY_GY_2_B)
 
 #define _PLANE_CSC_PREOFF_HI_1_A		0x70228
 #define _PLANE_CSC_PREOFF_HI_2_A		0x70328
 #define _PLANE_CSC_PREOFF_HI_1_B		0x71228
 #define _PLANE_CSC_PREOFF_HI_2_B		0x71328
-#define _PLANE_CSC_PREOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_CSC_PREOFF_HI_1_A, _PLANE_CSC_PREOFF_HI_1_B)
-#define _PLANE_CSC_PREOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_CSC_PREOFF_HI_2_A, _PLANE_CSC_PREOFF_HI_2_B)
-#define PLANE_CSC_PREOFF(pipe, plane, index) \
-	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + (index) * 4)
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_SKL_PLANE_DW((pipe), (plane), (index), \
+								   _PLANE_CSC_PREOFF_HI_1_A, _PLANE_CSC_PREOFF_HI_1_B, \
+								   _PLANE_CSC_PREOFF_HI_2_A, _PLANE_CSC_PREOFF_HI_2_B)
 
 #define _PLANE_CSC_POSTOFF_HI_1_A		0x70234
 #define _PLANE_CSC_POSTOFF_HI_2_A		0x70334
 #define _PLANE_CSC_POSTOFF_HI_1_B		0x71234
 #define _PLANE_CSC_POSTOFF_HI_2_B		0x71334
-#define _PLANE_CSC_POSTOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_CSC_POSTOFF_HI_1_A, _PLANE_CSC_POSTOFF_HI_1_B)
-#define _PLANE_CSC_POSTOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_CSC_POSTOFF_HI_2_A, _PLANE_CSC_POSTOFF_HI_2_B)
-#define PLANE_CSC_POSTOFF(pipe, plane, index) \
-	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + (index) * 4)
-
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_SKL_PLANE_DW((pipe), (plane), (index), \
+								   _PLANE_CSC_POSTOFF_HI_1_A, _PLANE_CSC_POSTOFF_HI_1_B, \
+								   _PLANE_CSC_POSTOFF_HI_2_A, _PLANE_CSC_POSTOFF_HI_2_B)
 #define _PLANE_WM_1_A_0				0x70240
 #define _PLANE_WM_1_B_0				0x71240
 #define _PLANE_WM_2_A_0				0x70340
 #define _PLANE_WM_2_B_0				0x71340
-#define _PLANE_WM_1(pipe)		_PIPE(pipe, _PLANE_WM_1_A_0, _PLANE_WM_1_B_0)
-#define _PLANE_WM_2(pipe)		_PIPE(pipe, _PLANE_WM_2_A_0, _PLANE_WM_2_B_0)
-#define _PLANE_WM_BASE(pipe, plane)	_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))
-#define PLANE_WM(pipe, plane, level)	_MMIO(_PLANE_WM_BASE(pipe, plane) + ((4) * (level)))
+#define PLANE_WM(pipe, plane, level)	_MMIO_SKL_PLANE_DW((pipe), (plane), (level), \
+							   _PLANE_WM_1_A_0, _PLANE_WM_1_B_0, \
+							   _PLANE_WM_2_A_0, _PLANE_WM_2_B_0)
 #define   PLANE_WM_EN				REG_BIT(31)
 #define   PLANE_WM_IGNORE_LINES			REG_BIT(30)
 #define   PLANE_WM_LINES_MASK			REG_GENMASK(26, 14)
@@ -316,50 +317,50 @@
 #define _PLANE_WM_SAGV_1_B			0x71258
 #define _PLANE_WM_SAGV_2_A			0x70358
 #define _PLANE_WM_SAGV_2_B			0x71358
-#define _PLANE_WM_SAGV_1(pipe)		_PIPE(pipe, _PLANE_WM_SAGV_1_A, _PLANE_WM_SAGV_1_B)
-#define _PLANE_WM_SAGV_2(pipe)		_PIPE(pipe, _PLANE_WM_SAGV_2_A, _PLANE_WM_SAGV_2_B)
-#define PLANE_WM_SAGV(pipe, plane)	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(pipe), _PLANE_WM_SAGV_2(pipe)))
+#define PLANE_WM_SAGV(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_WM_SAGV_1_A, _PLANE_WM_SAGV_1_B, \
+							_PLANE_WM_SAGV_2_A, _PLANE_WM_SAGV_2_B)
 
 #define _PLANE_WM_SAGV_TRANS_1_A		0x7025c
 #define _PLANE_WM_SAGV_TRANS_1_B		0x7125c
 #define _PLANE_WM_SAGV_TRANS_2_A		0x7035c
 #define _PLANE_WM_SAGV_TRANS_2_B		0x7135c
-#define _PLANE_WM_SAGV_TRANS_1(pipe)	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_1_A, _PLANE_WM_SAGV_TRANS_1_B)
-#define _PLANE_WM_SAGV_TRANS_2(pipe)	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_2_A, _PLANE_WM_SAGV_TRANS_2_B)
-#define PLANE_WM_SAGV_TRANS(pipe, plane)	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_2(pipe)))
+#define PLANE_WM_SAGV_TRANS(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+								_PLANE_WM_SAGV_TRANS_1_A, _PLANE_WM_SAGV_TRANS_1_B, \
+								_PLANE_WM_SAGV_TRANS_2_A, _PLANE_WM_SAGV_TRANS_2_B)
 
 #define _PLANE_WM_TRANS_1_A			0x70268
 #define _PLANE_WM_TRANS_1_B			0x71268
 #define _PLANE_WM_TRANS_2_A			0x70368
 #define _PLANE_WM_TRANS_2_B			0x71368
-#define _PLANE_WM_TRANS_1(pipe)		_PIPE(pipe, _PLANE_WM_TRANS_1_A, _PLANE_WM_TRANS_1_B)
-#define _PLANE_WM_TRANS_2(pipe)		_PIPE(pipe, _PLANE_WM_TRANS_2_A, _PLANE_WM_TRANS_2_B)
-#define PLANE_WM_TRANS(pipe, plane)	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_1(pipe), _PLANE_WM_TRANS_2(pipe)))
+#define PLANE_WM_TRANS(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_WM_TRANS_1_A, _PLANE_WM_TRANS_1_B, \
+							_PLANE_WM_TRANS_2_A, _PLANE_WM_TRANS_2_B)
 
 #define _PLANE_CHICKEN_1_A			0x7026c /* tgl+ */
 #define _PLANE_CHICKEN_2_A			0x7036c
 #define _PLANE_CHICKEN_1_B			0x7126c
 #define _PLANE_CHICKEN_2_B			0x7136c
-#define _PLANE_CHICKEN_1(pipe)		_PIPE(pipe, _PLANE_CHICKEN_1_A, _PLANE_CHICKEN_1_B)
-#define _PLANE_CHICKEN_2(pipe)		_PIPE(pipe, _PLANE_CHICKEN_2_A, _PLANE_CHICKEN_2_B)
-#define PLANE_CHICKEN(pipe, plane)	_MMIO_PLANE(plane, _PLANE_CHICKEN_1(pipe), _PLANE_CHICKEN_2(pipe))
+#define PLANE_CHICKEN(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_CHICKEN_1_A, _PLANE_CHICKEN_1_B, \
+							_PLANE_CHICKEN_2_A, _PLANE_CHICKEN_2_B)
 #define   PLANE_CHICKEN_DISABLE_DPT		REG_BIT(19) /* mtl+ */
 
 #define _PLANE_NV12_BUF_CFG_1_A			0x70278
 #define _PLANE_NV12_BUF_CFG_2_A			0x70378
 #define _PLANE_NV12_BUF_CFG_1_B			0x71278
 #define _PLANE_NV12_BUF_CFG_2_B			0x71378
-#define _PLANE_NV12_BUF_CFG_1(pipe)	_PIPE(pipe, _PLANE_NV12_BUF_CFG_1_A, _PLANE_NV12_BUF_CFG_1_B)
-#define _PLANE_NV12_BUF_CFG_2(pipe)	_PIPE(pipe, _PLANE_NV12_BUF_CFG_2_A, _PLANE_NV12_BUF_CFG_2_B)
-#define PLANE_NV12_BUF_CFG(pipe, plane)	_MMIO_PLANE(plane, _PLANE_NV12_BUF_CFG_1(pipe), _PLANE_NV12_BUF_CFG_2(pipe))
+#define PLANE_NV12_BUF_CFG(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_NV12_BUF_CFG_1_A, _PLANE_NV12_BUF_CFG_1_B, \
+							_PLANE_NV12_BUF_CFG_2_A, _PLANE_NV12_BUF_CFG_2_B)
 
 #define _PLANE_BUF_CFG_1_A			0x7027c
 #define _PLANE_BUF_CFG_2_A			0x7037c
 #define _PLANE_BUF_CFG_1_B			0x7127c
 #define _PLANE_BUF_CFG_2_B			0x7137c
-#define _PLANE_BUF_CFG_1(pipe)		_PIPE(pipe, _PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B)
-#define _PLANE_BUF_CFG_2(pipe)		_PIPE(pipe, _PLANE_BUF_CFG_2_A, _PLANE_BUF_CFG_2_B)
-#define PLANE_BUF_CFG(pipe, plane)	_MMIO_PLANE(plane, _PLANE_BUF_CFG_1(pipe), _PLANE_BUF_CFG_2(pipe))
+#define PLANE_BUF_CFG(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B, \
+							_PLANE_BUF_CFG_2_A, _PLANE_BUF_CFG_2_B)
 /* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
 #define   PLANE_BUF_END_MASK			REG_GENMASK(27, 16)
 #define   PLANE_BUF_END(end)			REG_FIELD_PREP(PLANE_BUF_END_MASK, (end))
-- 
2.43.2

