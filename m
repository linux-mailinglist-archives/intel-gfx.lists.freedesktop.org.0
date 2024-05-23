Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FA88CD303
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:00:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7EDE10E594;
	Thu, 23 May 2024 13:00:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CKlWJr3W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9457B10E62D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469213; x=1748005213;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WrKwj4CoHAK2A/T2OJssf6jxxyDExU6usSr40Zx4rik=;
 b=CKlWJr3WfD/8MbfTReWpVGdzimSDTbPAhlS3zPQMFQRVPMSFc2jl6ILK
 6y8qIKrIShUaztQZ97owLWC7FMXTwYP3ctCU8uy2bxYLDcgAVjgHIih5l
 W2MRgww6CJzZbyiQL4zB+kLtHRpkzDplUp3HTf8oTHuy6LxauwvJcFZDO
 JO501+w445BTbbAG8Rq9cVJwnKAvvS7TrBPN+Y9lU6+Lr6yTFDeCMVnSG
 RIhbituNx3FDCvFEJteYwbNIKz4KAAMEWrSwUQIfCmwSAWn3hE7q+8xL3
 HemPqWCZD4PVNaH496jgAVYlsReFgE6Vghyh7398VT5/4ImzUCWRPInuN Q==;
X-CSE-ConnectionGUID: nZlaY2X5Sq6kAK14azSQvg==
X-CSE-MsgGUID: JF9l6GXMSX+cQXab+5TaHg==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="38164702"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="38164702"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:13 -0700
X-CSE-ConnectionGUID: CqGHSsd7SBqxwzc++lXCOw==
X-CSE-MsgGUID: fHbmDsHpQAugORwESNopUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33731775"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 06/16] drm/i915: pass dev_priv explicitly to DSPPOS
Date: Thu, 23 May 2024 15:59:34 +0300
Message-Id: <fbe6b94f03926175611b51c5054466dd27656d2a.1716469091.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716469091.git.jani.nikula@intel.com>
References: <cover.1716469091.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the DSPPOS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c      | 2 +-
 drivers/gpu/drm/i915/display/i9xx_plane_regs.h | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c    | 6 +++---
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 34760ecd5d34..b23135ed1a38 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -437,7 +437,7 @@ static void i9xx_plane_update_noarm(struct intel_plane *plane,
 		 * generator but let's assume we still need to
 		 * program whatever is there.
 		 */
-		intel_de_write_fw(dev_priv, DSPPOS(i9xx_plane),
+		intel_de_write_fw(dev_priv, DSPPOS(dev_priv, i9xx_plane),
 				  DISP_POS_Y(crtc_y) | DISP_POS_X(crtc_x));
 		intel_de_write_fw(dev_priv, DSPSIZE(i9xx_plane),
 				  DISP_HEIGHT(crtc_h - 1) | DISP_WIDTH(crtc_w - 1));
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index 049114620d93..13a49550c456 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -53,7 +53,7 @@
 #define DSPSTRIDE(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPASTRIDE)
 
 #define _DSPAPOS				0x7018C /* pre-g4x */
-#define DSPPOS(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPAPOS)
+#define DSPPOS(dev_priv, plane)			_MMIO_PIPE2(dev_priv, plane, _DSPAPOS)
 #define   DISP_POS_Y_MASK		REG_GENMASK(31, 16)
 #define   DISP_POS_Y(y)			REG_FIELD_PREP(DISP_POS_Y_MASK, (y))
 #define   DISP_POS_X_MASK		REG_GENMASK(15, 0)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 02c5dafc0c93..00dd2b647c83 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -168,7 +168,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPCNTR(dev_priv, PIPE_A));
 	MMIO_D(DSPADDR(dev_priv, PIPE_A));
 	MMIO_D(DSPSTRIDE(dev_priv, PIPE_A));
-	MMIO_D(DSPPOS(PIPE_A));
+	MMIO_D(DSPPOS(dev_priv, PIPE_A));
 	MMIO_D(DSPSIZE(PIPE_A));
 	MMIO_D(DSPSURF(PIPE_A));
 	MMIO_D(DSPOFFSET(PIPE_A));
@@ -177,7 +177,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPCNTR(dev_priv, PIPE_B));
 	MMIO_D(DSPADDR(dev_priv, PIPE_B));
 	MMIO_D(DSPSTRIDE(dev_priv, PIPE_B));
-	MMIO_D(DSPPOS(PIPE_B));
+	MMIO_D(DSPPOS(dev_priv, PIPE_B));
 	MMIO_D(DSPSIZE(PIPE_B));
 	MMIO_D(DSPSURF(PIPE_B));
 	MMIO_D(DSPOFFSET(PIPE_B));
@@ -186,7 +186,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPCNTR(dev_priv, PIPE_C));
 	MMIO_D(DSPADDR(dev_priv, PIPE_C));
 	MMIO_D(DSPSTRIDE(dev_priv, PIPE_C));
-	MMIO_D(DSPPOS(PIPE_C));
+	MMIO_D(DSPPOS(dev_priv, PIPE_C));
 	MMIO_D(DSPSIZE(PIPE_C));
 	MMIO_D(DSPSURF(PIPE_C));
 	MMIO_D(DSPOFFSET(PIPE_C));
-- 
2.39.2

