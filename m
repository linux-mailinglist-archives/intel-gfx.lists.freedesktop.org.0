Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7889738A0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D735610E7CD;
	Tue, 10 Sep 2024 13:29:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I84AXPVr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4607A10E7C0;
 Tue, 10 Sep 2024 13:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725974958; x=1757510958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hCuHlWxC8Trmz0LX3scmXT7GMpCg8YV1w+XF69TJ9+Q=;
 b=I84AXPVrHGcYKqX9TtTi/Alb3hhwC53rMy83ozZcdo5KwYb9ULfte+s7
 wZ3uBbOJRqETYjbDFGBGvezRlAuQUuslv7jPMd8YwB8sGxZ1Q39ez3q1q
 6wEUXYeUS2SWYluO1EXIUuKcbOfxrr2ZyvEErPqwgyHkQ2ksU7TjK8v5f
 Ss4TNDSH0wPqVwvcayOh74cXOgbTYBjc+5KNgVG/C9fZMsekqiqWJYBc2
 IEyl16vL6MYcbGvcNfGSLy5p2sb2BxSGfaK9AZ7OSWljlDAF92BuC/LqY
 u2ngNdrn/UnSTyV+XzNx3YB/KSDVNZyhgM6CQN/cOUlkEV6Phw6a5uwlt g==;
X-CSE-ConnectionGUID: 8KVHjWdiS4iPn8j9TwiOIQ==
X-CSE-MsgGUID: gAPLRVErQzu9SM8ffowYmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24870309"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="24870309"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:16 -0700
X-CSE-ConnectionGUID: Akq1ni/jSJKbWm338VV2Og==
X-CSE-MsgGUID: HsZiT4EtRgiSD2iUpGdp6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67796089"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 03/11] drm/i915/reg: fix pipe conf, stat etc. register style
Date: Tue, 10 Sep 2024 16:28:47 +0300
Message-Id: <4360912222c8c0516d84253c3a05ef1cf421da01.1725974820.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725974820.git.jani.nikula@intel.com>
References: <cover.1725974820.git.jani.nikula@intel.com>
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

Adhere to the style described at the top of i915_reg.h.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 32 +++++++++++++++++---------------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a1f86b32efac..591a6dc9c3bc 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1585,9 +1585,12 @@
 
 /* Pipe A */
 #define _PIPEADSL		0x70000
+#define PIPEDSL(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEADSL)
 #define   PIPEDSL_CURR_FIELD	REG_BIT(31) /* ctg+ */
 #define   PIPEDSL_LINE_MASK	REG_GENMASK(19, 0)
+
 #define _TRANSACONF		0x70008
+#define TRANSCONF(dev_priv, trans)	_MMIO_PIPE2(dev_priv, (trans), _TRANSACONF)
 #define   TRANSCONF_ENABLE			REG_BIT(31)
 #define   TRANSCONF_DOUBLE_WIDE			REG_BIT(30) /* pre-i965 */
 #define   TRANSCONF_STATE_ENABLE			REG_BIT(30) /* i965+ */
@@ -1647,6 +1650,7 @@
 #define   TRANSCONF_PIXEL_COUNT_SCALING_X4	1
 
 #define _PIPEASTAT		0x70024
+#define PIPESTAT(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
 #define   PIPE_FIFO_UNDERRUN_STATUS		(1UL << 31)
 #define   SPRITE1_FLIP_DONE_INT_EN_VLV		(1UL << 30)
 #define   PIPE_CRC_ERROR_ENABLE			(1UL << 29)
@@ -1693,15 +1697,8 @@
 #define   PIPE_VBLANK_INTERRUPT_STATUS		(1UL << 1)
 #define   PIPE_HBLANK_INT_STATUS		(1UL << 0)
 #define   PIPE_OVERLAY_UPDATED_STATUS		(1UL << 0)
-
-#define PIPESTAT_INT_ENABLE_MASK		0x7fff0000
-#define PIPESTAT_INT_STATUS_MASK		0x0000ffff
-
-#define TRANSCONF(dev_priv, trans)	_MMIO_PIPE2(dev_priv, (trans), _TRANSACONF)
-#define PIPEDSL(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEADSL)
-#define PIPEFRAME(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEHIGH)
-#define PIPEFRAMEPIXEL(dev_priv, pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
-#define PIPESTAT(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
+#define   PIPESTAT_INT_ENABLE_MASK		0x7fff0000
+#define   PIPESTAT_INT_STATUS_MASK		0x0000ffff
 
 #define _PIPE_ARB_CTL_A			0x70028 /* icl+ */
 #define PIPE_ARB_CTL(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPE_ARB_CTL_A)
@@ -1709,6 +1706,7 @@
 
 #define _PIPE_MISC_A			0x70030
 #define _PIPE_MISC_B			0x71030
+#define PIPE_MISC(pipe)			_MMIO_PIPE(pipe, _PIPE_MISC_A, _PIPE_MISC_B)
 #define   PIPE_MISC_YUV420_ENABLE		REG_BIT(27) /* glk+ */
 #define   PIPE_MISC_YUV420_MODE_FULL_BLEND	REG_BIT(26) /* glk+ */
 #define   PIPE_MISC_HDR_MODE_PRECISION		REG_BIT(23) /* icl+ */
@@ -1736,16 +1734,15 @@
 #define   PIPE_MISC_DITHER_TYPE_ST1		REG_FIELD_PREP(PIPE_MISC_DITHER_TYPE_MASK, 1)
 #define   PIPE_MISC_DITHER_TYPE_ST2		REG_FIELD_PREP(PIPE_MISC_DITHER_TYPE_MASK, 2)
 #define   PIPE_MISC_DITHER_TYPE_TEMP		REG_FIELD_PREP(PIPE_MISC_DITHER_TYPE_MASK, 3)
-#define PIPE_MISC(pipe)			_MMIO_PIPE(pipe, _PIPE_MISC_A, _PIPE_MISC_B)
 
 #define _PIPE_MISC2_A					0x7002C
 #define _PIPE_MISC2_B					0x7102C
+#define PIPE_MISC2(pipe)		_MMIO_PIPE(pipe, _PIPE_MISC2_A, _PIPE_MISC2_B)
 #define   PIPE_MISC2_BUBBLE_COUNTER_MASK	REG_GENMASK(31, 24)
 #define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_EN	REG_FIELD_PREP(PIPE_MISC2_BUBBLE_COUNTER_MASK, 80)
 #define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_DIS	REG_FIELD_PREP(PIPE_MISC2_BUBBLE_COUNTER_MASK, 20)
 #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK		REG_GENMASK(2, 0) /* tgl+ */
 #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
-#define PIPE_MISC2(pipe)		_MMIO_PIPE(pipe, _PIPE_MISC2_A, _PIPE_MISC2_B)
 
 #define _ICL_PIPE_A_STATUS			0x70058
 #define ICL_PIPESTATUS(dev_priv, pipe)			_MMIO_PIPE2(dev_priv, pipe, _ICL_PIPE_A_STATUS)
@@ -2068,33 +2065,38 @@
  *  frame = (high1 << 8) | low1;
  */
 #define _PIPEAFRAMEHIGH          0x70040
+#define PIPEFRAME(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEHIGH)
 #define   PIPE_FRAME_HIGH_MASK    0x0000ffff
 #define   PIPE_FRAME_HIGH_SHIFT   0
+
 #define _PIPEAFRAMEPIXEL         0x70044
+#define PIPEFRAMEPIXEL(dev_priv, pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
 #define   PIPE_FRAME_LOW_MASK     0xff000000
 #define   PIPE_FRAME_LOW_SHIFT    24
 #define   PIPE_PIXEL_MASK         0x00ffffff
 #define   PIPE_PIXEL_SHIFT        0
+
 /* GM45+ just has to be different */
 #define _PIPEA_FRMCOUNT_G4X	0x70040
-#define _PIPEA_FLIPCOUNT_G4X	0x70044
 #define PIPE_FRMCOUNT_G4X(dev_priv, pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FRMCOUNT_G4X)
+
+#define _PIPEA_FLIPCOUNT_G4X	0x70044
 #define PIPE_FLIPCOUNT_G4X(dev_priv, pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FLIPCOUNT_G4X)
 
 /* CHV pipe B blender */
 #define _CHV_BLEND_A		0x60a00
+#define CHV_BLEND(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _CHV_BLEND_A)
 #define   CHV_BLEND_MASK	REG_GENMASK(31, 30)
 #define   CHV_BLEND_LEGACY	REG_FIELD_PREP(CHV_BLEND_MASK, 0)
 #define   CHV_BLEND_ANDROID	REG_FIELD_PREP(CHV_BLEND_MASK, 1)
 #define   CHV_BLEND_MPO		REG_FIELD_PREP(CHV_BLEND_MASK, 2)
+
 #define _CHV_CANVAS_A		0x60a04
+#define CHV_CANVAS(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _CHV_CANVAS_A)
 #define   CHV_CANVAS_RED_MASK	REG_GENMASK(29, 20)
 #define   CHV_CANVAS_GREEN_MASK	REG_GENMASK(19, 10)
 #define   CHV_CANVAS_BLUE_MASK	REG_GENMASK(9, 0)
 
-#define CHV_BLEND(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _CHV_BLEND_A)
-#define CHV_CANVAS(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _CHV_CANVAS_A)
-
 /* Display/Sprite base address macros */
 #define DISP_BASEADDR_MASK	(0xfffff000)
 #define I915_LO_DISPBASE(val)	((val) & ~DISP_BASEADDR_MASK)
-- 
2.39.2

