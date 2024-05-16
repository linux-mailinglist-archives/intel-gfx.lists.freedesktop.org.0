Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 679FC8C780A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 15:56:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DA5D10ED36;
	Thu, 16 May 2024 13:56:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lmk/afTJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1A1910ED2E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 13:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715867813; x=1747403813;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ieqnlBxlXDXG/l4G+Db1C67FxoCwidM8m8/EzC/VZsI=;
 b=lmk/afTJNuoGZwoMoWfEuOZhwPvq8xu3BVInwK3lwAykeuP2blQAffda
 z3MoPxntvPDkgzZLj4lQB11NMlixeqVFmipYJ7BsfuuK0S+DxBdy5N8nM
 xvJZe8G3hcRZLAaJAZthcnlhFQgtqvDwHJR5V9mssHG89insHmLmT1T6A
 0pUBqzSyjvNXasTh0g75K7L/+FVp0crnT8utEcIR/PZJ4SxsWI27H0I0v
 LOBVjXjWakZzVxwwMZtoae8vj6EB3zJVZbQHc68CXIqkY11lZ4Hwm7v5L
 u2j9Jxolm7xQw9g6Q9Ej1tgUr8MIGu7joiOKm67ax9Ke5Qz66CA5CjBYv Q==;
X-CSE-ConnectionGUID: T+imZ9I1Sz2XPokgoMD7Ug==
X-CSE-MsgGUID: ZJ67+XnFSZaRylZVrNddmQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="37357209"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="37357209"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 06:56:53 -0700
X-CSE-ConnectionGUID: 303Ws4C8RvaM5yvDIduXGw==
X-CSE-MsgGUID: QjykiHlRS4OZ2/8fHct4dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31435187"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 May 2024 06:56:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 May 2024 16:56:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/13] drm/i915: Polish pre-skl primary plane registers
Date: Thu, 16 May 2024 16:56:19 +0300
Message-ID: <20240516135622.3498-11-ville.syrjala@linux.intel.com>
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

Group the pre-skl primary plane register definitions
sensible, and toss in a few comments to indicate which
platforms have what.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/i9xx_plane_regs.h    | 46 ++++++++++++-------
 1 file changed, 29 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index 0bf2cd42bce7..929b26faf31e 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -9,7 +9,10 @@
 #include "intel_display_reg_defs.h"
 
 #define _DSPAADDR_VLV				0x7017C /* vlv/chv */
+#define DSPADDR_VLV(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPAADDR_VLV)
+
 #define _DSPACNTR				0x70180
+#define DSPCNTR(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPACNTR)
 #define   DISP_ENABLE			REG_BIT(31)
 #define   DISP_PIPE_GAMMA_ENABLE	REG_BIT(30)
 #define   DISP_FORMAT_MASK		REG_GENMASK(29, 26)
@@ -39,60 +42,69 @@
 #define   DISP_TILED			REG_BIT(10)
 #define   DISP_ASYNC_FLIP		REG_BIT(9) /* g4x+ */
 #define   DISP_MIRROR			REG_BIT(8) /* CHV pipe B */
+
 #define _DSPAADDR				0x70184
+#define DSPADDR(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPAADDR)
+
+#define _DSPALINOFF				0x70184
+#define DSPLINOFF(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPALINOFF)
+
 #define _DSPASTRIDE				0x70188
+#define DSPSTRIDE(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPASTRIDE)
+
 #define _DSPAPOS				0x7018C /* reserved */
+#define DSPPOS(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPAPOS)
 #define   DISP_POS_Y_MASK		REG_GENMASK(31, 16)
 #define   DISP_POS_Y(y)			REG_FIELD_PREP(DISP_POS_Y_MASK, (y))
 #define   DISP_POS_X_MASK		REG_GENMASK(15, 0)
 #define   DISP_POS_X(x)			REG_FIELD_PREP(DISP_POS_X_MASK, (x))
+
 #define _DSPASIZE				0x70190
+#define DSPSIZE(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPASIZE)
 #define   DISP_HEIGHT_MASK		REG_GENMASK(31, 16)
 #define   DISP_HEIGHT(h)		REG_FIELD_PREP(DISP_HEIGHT_MASK, (h))
 #define   DISP_WIDTH_MASK		REG_GENMASK(15, 0)
 #define   DISP_WIDTH(w)			REG_FIELD_PREP(DISP_WIDTH_MASK, (w))
+
 #define _DSPASURF				0x7019C /* 965+ only */
+#define DSPSURF(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPASURF)
 #define   DISP_ADDR_MASK		REG_GENMASK(31, 12)
+
 #define _DSPATILEOFF				0x701A4 /* 965+ only */
+#define DSPTILEOFF(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPATILEOFF)
 #define   DISP_OFFSET_Y_MASK		REG_GENMASK(31, 16)
 #define   DISP_OFFSET_Y(y)		REG_FIELD_PREP(DISP_OFFSET_Y_MASK, (y))
 #define   DISP_OFFSET_X_MASK		REG_GENMASK(15, 0)
 #define   DISP_OFFSET_X(x)		REG_FIELD_PREP(DISP_OFFSET_X_MASK, (x))
+
 #define _DSPAOFFSET				0x701A4 /* HSW */
+#define DSPOFFSET(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPAOFFSET)
+
 #define _DSPASURFLIVE				0x701AC
+#define DSPSURFLIVE(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPASURFLIVE)
+
 #define _DSPAGAMC				0x701E0
-
-#define DSPADDR_VLV(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPAADDR_VLV)
-#define DSPCNTR(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPACNTR)
-#define DSPADDR(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPAADDR)
-#define DSPSTRIDE(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPASTRIDE)
-#define DSPPOS(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPAPOS)
-#define DSPSIZE(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPASIZE)
-#define DSPSURF(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPASURF)
-#define DSPTILEOFF(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPATILEOFF)
-#define DSPLINOFF(plane)	DSPADDR(plane)
-#define DSPOFFSET(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPAOFFSET)
-#define DSPSURFLIVE(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPASURFLIVE)
-#define DSPGAMC(plane, i)	_MMIO_PIPE2(dev_priv, plane, _DSPAGAMC + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */
+#define DSPGAMC(plane, i)			_MMIO_PIPE2(dev_priv, plane, _DSPAGAMC + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */
 
 /* CHV pipe B primary plane */
 #define _PRIMPOS_A		0x60a08
+#define PRIMPOS(plane)		_MMIO_TRANS2(dev_priv, plane, _PRIMPOS_A)
 #define   PRIM_POS_Y_MASK	REG_GENMASK(31, 16)
 #define   PRIM_POS_Y(y)		REG_FIELD_PREP(PRIM_POS_Y_MASK, (y))
 #define   PRIM_POS_X_MASK	REG_GENMASK(15, 0)
 #define   PRIM_POS_X(x)		REG_FIELD_PREP(PRIM_POS_X_MASK, (x))
+
 #define _PRIMSIZE_A		0x60a0c
+#define PRIMSIZE(plane)		_MMIO_TRANS2(dev_priv, plane, _PRIMSIZE_A)
 #define   PRIM_HEIGHT_MASK	REG_GENMASK(31, 16)
 #define   PRIM_HEIGHT(h)	REG_FIELD_PREP(PRIM_HEIGHT_MASK, (h))
 #define   PRIM_WIDTH_MASK	REG_GENMASK(15, 0)
 #define   PRIM_WIDTH(w)		REG_FIELD_PREP(PRIM_WIDTH_MASK, (w))
+
 #define _PRIMCNSTALPHA_A	0x60a10
+#define PRIMCNSTALPHA(plane)	_MMIO_TRANS2(dev_priv, plane, _PRIMCNSTALPHA_A)
 #define   PRIM_CONST_ALPHA_ENABLE	REG_BIT(31)
 #define   PRIM_CONST_ALPHA_MASK		REG_GENMASK(7, 0)
 #define   PRIM_CONST_ALPHA(alpha)	REG_FIELD_PREP(PRIM_CONST_ALPHA_MASK, (alpha))
 
-#define PRIMPOS(plane)		_MMIO_TRANS2(dev_priv, plane, _PRIMPOS_A)
-#define PRIMSIZE(plane)		_MMIO_TRANS2(dev_priv, plane, _PRIMSIZE_A)
-#define PRIMCNSTALPHA(plane)	_MMIO_TRANS2(dev_priv, plane, _PRIMCNSTALPHA_A)
-
 #endif /* __I9XX_PLANE_REGS_H__ */
-- 
2.44.1

