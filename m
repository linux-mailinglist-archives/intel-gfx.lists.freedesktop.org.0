Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BEA8C780B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 15:56:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 705D210ED39;
	Thu, 16 May 2024 13:56:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K1AsdOio";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 465E210ED3A
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 13:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715867816; x=1747403816;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3ORABT9J2MJFKLWQ6X4NVwVMSHJvJjmUk5eGZo+i8HQ=;
 b=K1AsdOioKDsQfoC87kp9X/AUpNPOBlEm/Vy10ZjzKvzMmqdtTFfAYGf5
 CeL+UQR+CvsSo2Zcc7/Q2vX1csKZKF2QYGYWv7ZihGsMle8lMq7DA4fy6
 mgmjxMCmC9s1E4zpAeX3r9RwoBebDTkZhCkmFo8nYXXBSU9XBvG9hhtF9
 0SYHCddbAELgHUdgzu3/z4RyU8lC2HhD+s96xXcUDKdWaMaWy3TzoP0d7
 FPIOlW/ZDtTEcI9xrAingLCnI9ReobhA59sFATIkD1dPTxn5JiT3qADEF
 nj2YpJrbkf5hYuQwp5fhLEA0k2/NXOy7TEcKO0IqQHrhdjVtPqJQhgVyx g==;
X-CSE-ConnectionGUID: rv03SJEnRiOistRkKjqpwg==
X-CSE-MsgGUID: rzNrFl99Rm6mdv5inx0yZQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="37357213"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="37357213"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 06:56:56 -0700
X-CSE-ConnectionGUID: QjSCXa0oTo2iIK/tvx9scQ==
X-CSE-MsgGUID: m2gc9Y49St2fE2BVZhkPkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31435197"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 May 2024 06:56:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 May 2024 16:56:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/13] drm/i915: Document a few pre-skl primary plane platform
 dependencies
Date: Thu, 16 May 2024 16:56:20 +0300
Message-ID: <20240516135622.3498-12-ville.syrjala@linux.intel.com>
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

Add some notes indicatign which plane registers/bits are
valid for which platforms.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/i9xx_plane_regs.h    | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index 929b26faf31e..d74a74d1f29a 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -37,53 +37,53 @@
 #define   DISP_LINE_DOUBLE		REG_BIT(20)
 #define   DISP_STEREO_POLARITY_SECOND	REG_BIT(18)
 #define   DISP_ALPHA_PREMULTIPLY	REG_BIT(16) /* CHV pipe B */
-#define   DISP_ROTATE_180		REG_BIT(15)
+#define   DISP_ROTATE_180		REG_BIT(15) /* i965+ */
 #define   DISP_TRICKLE_FEED_DISABLE	REG_BIT(14) /* g4x+ */
-#define   DISP_TILED			REG_BIT(10)
+#define   DISP_TILED			REG_BIT(10) /* i965+ */
 #define   DISP_ASYNC_FLIP		REG_BIT(9) /* g4x+ */
 #define   DISP_MIRROR			REG_BIT(8) /* CHV pipe B */
 
-#define _DSPAADDR				0x70184
+#define _DSPAADDR				0x70184 /* pre-i965 */
 #define DSPADDR(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPAADDR)
 
-#define _DSPALINOFF				0x70184
+#define _DSPALINOFF				0x70184 /* i965+ */
 #define DSPLINOFF(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPALINOFF)
 
 #define _DSPASTRIDE				0x70188
 #define DSPSTRIDE(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPASTRIDE)
 
-#define _DSPAPOS				0x7018C /* reserved */
+#define _DSPAPOS				0x7018C /* pre-g4x */
 #define DSPPOS(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPAPOS)
 #define   DISP_POS_Y_MASK		REG_GENMASK(31, 16)
 #define   DISP_POS_Y(y)			REG_FIELD_PREP(DISP_POS_Y_MASK, (y))
 #define   DISP_POS_X_MASK		REG_GENMASK(15, 0)
 #define   DISP_POS_X(x)			REG_FIELD_PREP(DISP_POS_X_MASK, (x))
 
-#define _DSPASIZE				0x70190
+#define _DSPASIZE				0x70190 /* pre-g4x */
 #define DSPSIZE(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPASIZE)
 #define   DISP_HEIGHT_MASK		REG_GENMASK(31, 16)
 #define   DISP_HEIGHT(h)		REG_FIELD_PREP(DISP_HEIGHT_MASK, (h))
 #define   DISP_WIDTH_MASK		REG_GENMASK(15, 0)
 #define   DISP_WIDTH(w)			REG_FIELD_PREP(DISP_WIDTH_MASK, (w))
 
-#define _DSPASURF				0x7019C /* 965+ only */
+#define _DSPASURF				0x7019C /* i965+ */
 #define DSPSURF(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPASURF)
 #define   DISP_ADDR_MASK		REG_GENMASK(31, 12)
 
-#define _DSPATILEOFF				0x701A4 /* 965+ only */
+#define _DSPATILEOFF				0x701A4 /* i965+ */
 #define DSPTILEOFF(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPATILEOFF)
 #define   DISP_OFFSET_Y_MASK		REG_GENMASK(31, 16)
 #define   DISP_OFFSET_Y(y)		REG_FIELD_PREP(DISP_OFFSET_Y_MASK, (y))
 #define   DISP_OFFSET_X_MASK		REG_GENMASK(15, 0)
 #define   DISP_OFFSET_X(x)		REG_FIELD_PREP(DISP_OFFSET_X_MASK, (x))
 
-#define _DSPAOFFSET				0x701A4 /* HSW */
+#define _DSPAOFFSET				0x701A4 /* hsw+ */
 #define DSPOFFSET(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPAOFFSET)
 
-#define _DSPASURFLIVE				0x701AC
+#define _DSPASURFLIVE				0x701AC /* g4x+ */
 #define DSPSURFLIVE(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPASURFLIVE)
 
-#define _DSPAGAMC				0x701E0
+#define _DSPAGAMC				0x701E0 /* pre-g4x */
 #define DSPGAMC(plane, i)			_MMIO_PIPE2(dev_priv, plane, _DSPAGAMC + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */
 
 /* CHV pipe B primary plane */
-- 
2.44.1

