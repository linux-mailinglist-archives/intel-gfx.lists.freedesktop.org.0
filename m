Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3725E8C4578
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 18:59:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DBB410E885;
	Mon, 13 May 2024 16:59:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="htbS2BHw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22F2710E885
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 16:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715619559; x=1747155559;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=39Gzp3cyHVF/0/cuuEuxcnZ6o+lpQRPu4ZbLrtvWTYw=;
 b=htbS2BHwI9/XTJlniUE0/q/kLJeMW2Jh9Uwe0akSvpVn1nxn3BCYJM+E
 HJ6iZOYI/6OMkSEQIx4XLwwib9hAWB8z8F/hbS/nu+FIGQ8kDfm8L0+AQ
 4kGs1RsIYsHpB1hFgXpuRa9elJY0uw3P991nuzLFiNorrmcaGWwEZwmlD
 iPYOYicMBXX2FGK4pfRuyXPbjcQ3BPJ2NEJPjM0io4j9ulcfzq35h5vbI
 65pTlrJqerE/eVGnEUgmy5IkBOWtlikcc5R5+ycfx0jd+VKEbLKO2jTCx
 tL6Got58yDg7bXBWJJE+nO/XVwn8bmIjIu7qWZbqkOkYPYK27a0Z/Kt8R A==;
X-CSE-ConnectionGUID: ZqsAK5z7RTSicNhZQ/aLmQ==
X-CSE-MsgGUID: 67D3HAtESVusVZrvDAfuSw==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="15387617"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="15387617"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 09:58:50 -0700
X-CSE-ConnectionGUID: j+52NtPuT/6ALQ2UXtG7SQ==
X-CSE-MsgGUID: KKZ/T34BQ+K0j8DkVNvhRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="30378349"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 May 2024 09:58:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 May 2024 19:58:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 09/16] drm/i915: Drop useless PLANE_FOO_3 register defines
Date: Mon, 13 May 2024 19:58:42 +0300
Message-ID: <20240513165842.15199-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510152329.24098-10-ville.syrjala@linux.intel.com>
References: <20240510152329.24098-10-ville.syrjala@linux.intel.com>
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

We only need register defines for the first two planes
on the first two pipes. Nuke everything else.

v2: Drop a few more that snuck through

Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../i915/display/skl_universal_plane_regs.h   | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index 2222d0c760e8..49278584caa7 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -10,7 +10,6 @@
 
 #define _PLANE_CTL_1_A				0x70180
 #define _PLANE_CTL_2_A				0x70280
-#define _PLANE_CTL_3_A				0x70380
 #define   PLANE_CTL_ENABLE			REG_BIT(31)
 #define   PLANE_CTL_ARB_SLOTS_MASK		REG_GENMASK(30, 28) /* icl+ */
 #define   PLANE_CTL_ARB_SLOTS(x)		REG_FIELD_PREP(PLANE_CTL_ARB_SLOTS_MASK, (x)) /* icl+ */
@@ -76,31 +75,26 @@
 #define   PLANE_CTL_ROTATE_270			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 3)
 #define _PLANE_STRIDE_1_A			0x70188
 #define _PLANE_STRIDE_2_A			0x70288
-#define _PLANE_STRIDE_3_A			0x70388
 #define   PLANE_STRIDE__MASK			REG_GENMASK(11, 0)
 #define   PLANE_STRIDE_(stride)			REG_FIELD_PREP(PLANE_STRIDE__MASK, (stride))
 #define _PLANE_POS_1_A				0x7018c
 #define _PLANE_POS_2_A				0x7028c
-#define _PLANE_POS_3_A				0x7038c
 #define   PLANE_POS_Y_MASK			REG_GENMASK(31, 16)
 #define   PLANE_POS_Y(y)			REG_FIELD_PREP(PLANE_POS_Y_MASK, (y))
 #define   PLANE_POS_X_MASK			REG_GENMASK(15, 0)
 #define   PLANE_POS_X(x)			REG_FIELD_PREP(PLANE_POS_X_MASK, (x))
 #define _PLANE_SIZE_1_A				0x70190
 #define _PLANE_SIZE_2_A				0x70290
-#define _PLANE_SIZE_3_A				0x70390
 #define   PLANE_HEIGHT_MASK			REG_GENMASK(31, 16)
 #define   PLANE_HEIGHT(h)			REG_FIELD_PREP(PLANE_HEIGHT_MASK, (h))
 #define   PLANE_WIDTH_MASK			REG_GENMASK(15, 0)
 #define   PLANE_WIDTH(w)			REG_FIELD_PREP(PLANE_WIDTH_MASK, (w))
 #define _PLANE_SURF_1_A				0x7019c
 #define _PLANE_SURF_2_A				0x7029c
-#define _PLANE_SURF_3_A				0x7039c
 #define   PLANE_SURF_ADDR_MASK			REG_GENMASK(31, 12)
 #define   PLANE_SURF_DECRYPT			REG_BIT(2)
 #define _PLANE_OFFSET_1_A			0x701a4
 #define _PLANE_OFFSET_2_A			0x702a4
-#define _PLANE_OFFSET_3_A			0x703a4
 #define   PLANE_OFFSET_Y_MASK			REG_GENMASK(31, 16)
 #define   PLANE_OFFSET_Y(y)			REG_FIELD_PREP(PLANE_OFFSET_Y_MASK, (y))
 #define   PLANE_OFFSET_X_MASK			REG_GENMASK(15, 0)
@@ -145,7 +139,6 @@
 #define   PLANE_CUS_VPHASE_0_5			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, 2)
 #define _PLANE_COLOR_CTL_1_A			0x701CC /* GLK+ */
 #define _PLANE_COLOR_CTL_2_A			0x702CC /* GLK+ */
-#define _PLANE_COLOR_CTL_3_A			0x703CC /* GLK+ */
 #define   PLANE_COLOR_PIPE_GAMMA_ENABLE			REG_BIT(30) /* Pre-ICL */
 #define   PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(28)
 #define   PLANE_COLOR_PIPE_CSC_ENABLE			REG_BIT(23) /* Pre-ICL */
@@ -234,49 +227,38 @@
 
 #define _PLANE_CTL_1_B				0x71180
 #define _PLANE_CTL_2_B				0x71280
-#define _PLANE_CTL_3_B				0x71380
 #define _PLANE_CTL_1(pipe)	_PIPE(pipe, _PLANE_CTL_1_A, _PLANE_CTL_1_B)
 #define _PLANE_CTL_2(pipe)	_PIPE(pipe, _PLANE_CTL_2_A, _PLANE_CTL_2_B)
-#define _PLANE_CTL_3(pipe)	_PIPE(pipe, _PLANE_CTL_3_A, _PLANE_CTL_3_B)
 #define PLANE_CTL(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_CTL_1(pipe), _PLANE_CTL_2(pipe))
 
 #define _PLANE_STRIDE_1_B			0x71188
 #define _PLANE_STRIDE_2_B			0x71288
-#define _PLANE_STRIDE_3_B			0x71388
 #define _PLANE_STRIDE_1(pipe)	\
 	_PIPE(pipe, _PLANE_STRIDE_1_A, _PLANE_STRIDE_1_B)
 #define _PLANE_STRIDE_2(pipe)	\
 	_PIPE(pipe, _PLANE_STRIDE_2_A, _PLANE_STRIDE_2_B)
-#define _PLANE_STRIDE_3(pipe)	\
-	_PIPE(pipe, _PLANE_STRIDE_3_A, _PLANE_STRIDE_3_B)
 #define PLANE_STRIDE(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_STRIDE_1(pipe), _PLANE_STRIDE_2(pipe))
 
 #define _PLANE_POS_1_B				0x7118c
 #define _PLANE_POS_2_B				0x7128c
-#define _PLANE_POS_3_B				0x7138c
 #define _PLANE_POS_1(pipe)	_PIPE(pipe, _PLANE_POS_1_A, _PLANE_POS_1_B)
 #define _PLANE_POS_2(pipe)	_PIPE(pipe, _PLANE_POS_2_A, _PLANE_POS_2_B)
-#define _PLANE_POS_3(pipe)	_PIPE(pipe, _PLANE_POS_3_A, _PLANE_POS_3_B)
 #define PLANE_POS(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_POS_1(pipe), _PLANE_POS_2(pipe))
 
 #define _PLANE_SIZE_1_B				0x71190
 #define _PLANE_SIZE_2_B				0x71290
-#define _PLANE_SIZE_3_B				0x71390
 #define _PLANE_SIZE_1(pipe)	_PIPE(pipe, _PLANE_SIZE_1_A, _PLANE_SIZE_1_B)
 #define _PLANE_SIZE_2(pipe)	_PIPE(pipe, _PLANE_SIZE_2_A, _PLANE_SIZE_2_B)
-#define _PLANE_SIZE_3(pipe)	_PIPE(pipe, _PLANE_SIZE_3_A, _PLANE_SIZE_3_B)
 #define PLANE_SIZE(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_SIZE_1(pipe), _PLANE_SIZE_2(pipe))
 
 #define _PLANE_SURF_1_B				0x7119c
 #define _PLANE_SURF_2_B				0x7129c
-#define _PLANE_SURF_3_B				0x7139c
 #define _PLANE_SURF_1(pipe)	_PIPE(pipe, _PLANE_SURF_1_A, _PLANE_SURF_1_B)
 #define _PLANE_SURF_2(pipe)	_PIPE(pipe, _PLANE_SURF_2_A, _PLANE_SURF_2_B)
-#define _PLANE_SURF_3(pipe)	_PIPE(pipe, _PLANE_SURF_3_A, _PLANE_SURF_3_B)
 #define PLANE_SURF(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_SURF_1(pipe), _PLANE_SURF_2(pipe))
 
@@ -351,7 +333,6 @@
 
 #define _PLANE_COLOR_CTL_1_B			0x711CC
 #define _PLANE_COLOR_CTL_2_B			0x712CC
-#define _PLANE_COLOR_CTL_3_B			0x713CC
 #define _PLANE_COLOR_CTL_1(pipe)	\
 	_PIPE(pipe, _PLANE_COLOR_CTL_1_A, _PLANE_COLOR_CTL_1_B)
 #define _PLANE_COLOR_CTL_2(pipe)	\
-- 
2.43.2

