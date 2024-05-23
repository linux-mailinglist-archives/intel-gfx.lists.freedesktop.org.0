Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 950B78CD30E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:00:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1424410E685;
	Thu, 23 May 2024 13:00:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="keRw+e+L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0C6010E5A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469230; x=1748005230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x0KRGAWLQNHl92H6OR3UMG0d2lnpQPb/GqWphK7JPNg=;
 b=keRw+e+LemCIYjcMsNif4+xmwIxqBm17nXDrcBnexYqHuE2IWO2w/IPH
 QSWDDbnNEMxNpggYIA3Wpr65L6khjOKrVPm9HgTiCxPWNT51gBAR2IT+b
 p/XTTs56pVq7G3crz87akNwIc6IcS78qhCvj0ohlVEnemN2w6eQUW/eb4
 6H9jIioZjBD8J/oW+2F6vLJwo566dH3t2xRMBveI5y7fBlsLFf5tRVzsD
 vkGaJDhle992FhNMpgVcd85dcoiGCuF5p48vekufuYZ3hr7jwmA/SE7UN
 Xzu/gOu14gsz55xaucLrUcgOIxIECHxBB7l3qMKZFgg4VhL+omcZen3pH g==;
X-CSE-ConnectionGUID: Q0Zuy4VSSTys4hWUYvK1mw==
X-CSE-MsgGUID: 2GTxV006T46oo9x7jOwJTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="23451196"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="23451196"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:29 -0700
X-CSE-ConnectionGUID: jXIOpvr2Rk6n6fEzik34EA==
X-CSE-MsgGUID: xkg4tgQfRh+TwTfhZ3YBkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="34128841"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 10/16] drm/i915: pass dev_priv explicitly to DSPOFFSET
Date: Thu, 23 May 2024 15:59:38 +0300
Message-Id: <c1d487d2c753221144e8fb8f17e5eb2826dba5f2.1716469091.git.jani.nikula@intel.com>
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
explicitly to the DSPOFFSET register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c      | 5 +++--
 drivers/gpu/drm/i915/display/i9xx_plane_regs.h | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c    | 6 +++---
 3 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 36225c2aa1c8..2026323d88ac 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -482,7 +482,7 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 	}
 
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		intel_de_write_fw(dev_priv, DSPOFFSET(i9xx_plane),
+		intel_de_write_fw(dev_priv, DSPOFFSET(dev_priv, i9xx_plane),
 				  DISP_OFFSET_Y(y) | DISP_OFFSET_X(x));
 	} else if (DISPLAY_VER(dev_priv) >= 4) {
 		intel_de_write_fw(dev_priv, DSPLINOFF(dev_priv, i9xx_plane),
@@ -1033,7 +1033,8 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 	fb->format = drm_format_info(fourcc);
 
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		offset = intel_de_read(dev_priv, DSPOFFSET(i9xx_plane));
+		offset = intel_de_read(dev_priv,
+				       DSPOFFSET(dev_priv, i9xx_plane));
 		base = intel_de_read(dev_priv, DSPSURF(dev_priv, i9xx_plane)) & DISP_ADDR_MASK;
 	} else if (DISPLAY_VER(dev_priv) >= 4) {
 		if (plane_config->tiling)
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index baa3d348c77e..0930a76ccf3c 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -78,7 +78,7 @@
 #define   DISP_OFFSET_X(x)		REG_FIELD_PREP(DISP_OFFSET_X_MASK, (x))
 
 #define _DSPAOFFSET				0x701A4 /* hsw+ */
-#define DSPOFFSET(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPAOFFSET)
+#define DSPOFFSET(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPAOFFSET)
 
 #define _DSPASURFLIVE				0x701AC /* g4x+ */
 #define DSPSURFLIVE(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPASURFLIVE)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index a8be80bde2e7..50dfe1f81b99 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -171,7 +171,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPPOS(dev_priv, PIPE_A));
 	MMIO_D(DSPSIZE(dev_priv, PIPE_A));
 	MMIO_D(DSPSURF(dev_priv, PIPE_A));
-	MMIO_D(DSPOFFSET(PIPE_A));
+	MMIO_D(DSPOFFSET(dev_priv, PIPE_A));
 	MMIO_D(DSPSURFLIVE(PIPE_A));
 	MMIO_D(REG_50080(PIPE_A, PLANE_PRIMARY));
 	MMIO_D(DSPCNTR(dev_priv, PIPE_B));
@@ -180,7 +180,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPPOS(dev_priv, PIPE_B));
 	MMIO_D(DSPSIZE(dev_priv, PIPE_B));
 	MMIO_D(DSPSURF(dev_priv, PIPE_B));
-	MMIO_D(DSPOFFSET(PIPE_B));
+	MMIO_D(DSPOFFSET(dev_priv, PIPE_B));
 	MMIO_D(DSPSURFLIVE(PIPE_B));
 	MMIO_D(REG_50080(PIPE_B, PLANE_PRIMARY));
 	MMIO_D(DSPCNTR(dev_priv, PIPE_C));
@@ -189,7 +189,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPPOS(dev_priv, PIPE_C));
 	MMIO_D(DSPSIZE(dev_priv, PIPE_C));
 	MMIO_D(DSPSURF(dev_priv, PIPE_C));
-	MMIO_D(DSPOFFSET(PIPE_C));
+	MMIO_D(DSPOFFSET(dev_priv, PIPE_C));
 	MMIO_D(DSPSURFLIVE(PIPE_C));
 	MMIO_D(REG_50080(PIPE_C, PLANE_PRIMARY));
 	MMIO_D(SPRCTL(PIPE_A));
-- 
2.39.2

