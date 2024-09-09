Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 473E197222B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 20:59:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89C3610E638;
	Mon,  9 Sep 2024 18:59:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IeLqJOZy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A51BB10E638;
 Mon,  9 Sep 2024 18:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725908363; x=1757444363;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R2xiD8PjEYpUMcRzjvMKKyy6vcFf+41PEZxv2oC6wSA=;
 b=IeLqJOZyPHzkpIq5j7QX9pEZ9B1J/Ys6dlzzD3o7k0lnsR/3xioCfl5g
 GlGqjd3UShL8HCqDnIHgyheFlDugf6ajWYLokcSVyZYVFJ/VRUL7UJ/eO
 DYnonGjLE0iKe5iRzzSsXOZnjOZn/cI/m0pPcp+cfcJh2+1sFWXSK2vDd
 JsdKTJI+6K8aaEMX9Inh06YrTbnB56ktED9jx2rzfC3CRKAMxAEN0W1Y9
 jmC0Btg97zfRu4hSUG/ZV57xiGcIFi2VSdJFrsCciZjh0Ey6Mt84F9Lbu
 gFw3GI3XrTlSQ+4vSgiiX9TQJbh6dI4pqVohQR88L0x8MZ9JV0QqDbUIZ A==;
X-CSE-ConnectionGUID: 3ce4sm9GR4+PSYMeThmrbA==
X-CSE-MsgGUID: Lm614rstRjmXicl97cJvZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24499606"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="24499606"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:23 -0700
X-CSE-ConnectionGUID: uZdaeqHRREmigezA0jcc4A==
X-CSE-MsgGUID: 9JEDR4OdQYWnKgjfqX0HlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="90037650"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/11] drm/i915/reg: fix pipe conf, stat etc. register style
Date: Mon,  9 Sep 2024 21:58:54 +0300
Message-Id: <92ec54062ffa8a61b71c4cef6d9d7d3d4fbc9ccb.1725908152.git.jani.nikula@intel.com>
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

