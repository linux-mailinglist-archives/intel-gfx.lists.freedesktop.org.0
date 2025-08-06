Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC957B1CA20
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:56:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B8CB10E7C1;
	Wed,  6 Aug 2025 16:56:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XTXVXwig";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F016510E7C1;
 Wed,  6 Aug 2025 16:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499384; x=1786035384;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Me1CkvlOY8ggRYDfG11yFTX7acBDY+wmNmK2+EVu3kE=;
 b=XTXVXwigSuV+1+VHcPkTvSF56gL29MO/RNIcR4oHd6pk5h0kKUNENoFJ
 sW8B7sURc0QE4jykbeY+ZpHHh/vAGFsHJzmMPmSryFRYbvE30BUKPsxBZ
 wCfUg2TyxwjxRy8PnUsHPiLOWKg4tXHuW3NPbZaiKT+nV8w3gjDECyb75
 JZDkjyoEmK6PX33uzNJGUJU9PygbcxOhHKwrjhXvsc7wh/VU24s6gFkfP
 KrSpnE3d+GHhqZDeOc2dZUkR8HCt3Nd1z1kc0uHSgLLr1jbPJjgwJmu8Y
 TUha5lLGVdQjV2Kt5MtQJtN4ot9lPPfDXK6f5qZmMYGeBzJB12Aja0HT6 A==;
X-CSE-ConnectionGUID: xIYStc4+T0WdKqJbzy7UvA==
X-CSE-MsgGUID: +l+aGdgUQTGVNXGZUvOEjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="60456022"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60456022"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:56:24 -0700
X-CSE-ConnectionGUID: xQQfNoVSSlWIVpZ9BgY1Vg==
X-CSE-MsgGUID: dMpObVeRTv6STkV6tKMebg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165164866"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:56:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 13/15] drm/i915/gvt: convert mmio table to struct intel_display
Date: Wed,  6 Aug 2025 19:55:14 +0300
Message-Id: <ef50b08c9bf6066201c86dc7e0f08f008c7c47d5.1754499175.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754499174.git.jani.nikula@intel.com>
References: <cover.1754499174.git.jani.nikula@intel.com>
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

Underneath, the register macros really expect a struct
intel_display. Switch to it in preparation for removing the transitional
__to_intel_display() macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 266 ++++++++++----------
 1 file changed, 134 insertions(+), 132 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 87ac4446d306..ca57a3dd3148 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -62,6 +62,7 @@
 static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 {
 	struct drm_i915_private *dev_priv = iter->i915;
+	struct intel_display *display = dev_priv->display;
 
 	MMIO_RING_D(RING_IMR);
 	MMIO_D(SDEIMR);
@@ -133,38 +134,38 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(_MMIO(0x650b4));
 	MMIO_D(_MMIO(0xc4040));
 	MMIO_D(DERRMR);
-	MMIO_D(PIPEDSL(dev_priv, PIPE_A));
-	MMIO_D(PIPEDSL(dev_priv, PIPE_B));
-	MMIO_D(PIPEDSL(dev_priv, PIPE_C));
-	MMIO_D(PIPEDSL(dev_priv, _PIPE_EDP));
-	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPESTAT(dev_priv, PIPE_A));
-	MMIO_D(PIPESTAT(dev_priv, PIPE_B));
-	MMIO_D(PIPESTAT(dev_priv, PIPE_C));
-	MMIO_D(PIPESTAT(dev_priv, _PIPE_EDP));
-	MMIO_D(PIPE_FLIPCOUNT_G4X(dev_priv, PIPE_A));
-	MMIO_D(PIPE_FLIPCOUNT_G4X(dev_priv, PIPE_B));
-	MMIO_D(PIPE_FLIPCOUNT_G4X(dev_priv, PIPE_C));
-	MMIO_D(PIPE_FLIPCOUNT_G4X(dev_priv, _PIPE_EDP));
-	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, PIPE_A));
-	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, PIPE_B));
-	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, PIPE_C));
-	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, _PIPE_EDP));
-	MMIO_D(CURCNTR(dev_priv, PIPE_A));
-	MMIO_D(CURCNTR(dev_priv, PIPE_B));
-	MMIO_D(CURCNTR(dev_priv, PIPE_C));
-	MMIO_D(CURPOS(dev_priv, PIPE_A));
-	MMIO_D(CURPOS(dev_priv, PIPE_B));
-	MMIO_D(CURPOS(dev_priv, PIPE_C));
-	MMIO_D(CURBASE(dev_priv, PIPE_A));
-	MMIO_D(CURBASE(dev_priv, PIPE_B));
-	MMIO_D(CURBASE(dev_priv, PIPE_C));
-	MMIO_D(CUR_FBC_CTL(dev_priv, PIPE_A));
-	MMIO_D(CUR_FBC_CTL(dev_priv, PIPE_B));
-	MMIO_D(CUR_FBC_CTL(dev_priv, PIPE_C));
+	MMIO_D(PIPEDSL(display, PIPE_A));
+	MMIO_D(PIPEDSL(display, PIPE_B));
+	MMIO_D(PIPEDSL(display, PIPE_C));
+	MMIO_D(PIPEDSL(display, _PIPE_EDP));
+	MMIO_D(TRANSCONF(display, TRANSCODER_A));
+	MMIO_D(TRANSCONF(display, TRANSCODER_B));
+	MMIO_D(TRANSCONF(display, TRANSCODER_C));
+	MMIO_D(TRANSCONF(display, TRANSCODER_EDP));
+	MMIO_D(PIPESTAT(display, PIPE_A));
+	MMIO_D(PIPESTAT(display, PIPE_B));
+	MMIO_D(PIPESTAT(display, PIPE_C));
+	MMIO_D(PIPESTAT(display, _PIPE_EDP));
+	MMIO_D(PIPE_FLIPCOUNT_G4X(display, PIPE_A));
+	MMIO_D(PIPE_FLIPCOUNT_G4X(display, PIPE_B));
+	MMIO_D(PIPE_FLIPCOUNT_G4X(display, PIPE_C));
+	MMIO_D(PIPE_FLIPCOUNT_G4X(display, _PIPE_EDP));
+	MMIO_D(PIPE_FRMCOUNT_G4X(display, PIPE_A));
+	MMIO_D(PIPE_FRMCOUNT_G4X(display, PIPE_B));
+	MMIO_D(PIPE_FRMCOUNT_G4X(display, PIPE_C));
+	MMIO_D(PIPE_FRMCOUNT_G4X(display, _PIPE_EDP));
+	MMIO_D(CURCNTR(display, PIPE_A));
+	MMIO_D(CURCNTR(display, PIPE_B));
+	MMIO_D(CURCNTR(display, PIPE_C));
+	MMIO_D(CURPOS(display, PIPE_A));
+	MMIO_D(CURPOS(display, PIPE_B));
+	MMIO_D(CURPOS(display, PIPE_C));
+	MMIO_D(CURBASE(display, PIPE_A));
+	MMIO_D(CURBASE(display, PIPE_B));
+	MMIO_D(CURBASE(display, PIPE_C));
+	MMIO_D(CUR_FBC_CTL(display, PIPE_A));
+	MMIO_D(CUR_FBC_CTL(display, PIPE_B));
+	MMIO_D(CUR_FBC_CTL(display, PIPE_C));
 	MMIO_D(_MMIO(0x700ac));
 	MMIO_D(_MMIO(0x710ac));
 	MMIO_D(_MMIO(0x720ac));
@@ -172,32 +173,32 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(_MMIO(0x70094));
 	MMIO_D(_MMIO(0x70098));
 	MMIO_D(_MMIO(0x7009c));
-	MMIO_D(DSPCNTR(dev_priv, PIPE_A));
-	MMIO_D(DSPADDR(dev_priv, PIPE_A));
-	MMIO_D(DSPSTRIDE(dev_priv, PIPE_A));
-	MMIO_D(DSPPOS(dev_priv, PIPE_A));
-	MMIO_D(DSPSIZE(dev_priv, PIPE_A));
-	MMIO_D(DSPSURF(dev_priv, PIPE_A));
-	MMIO_D(DSPOFFSET(dev_priv, PIPE_A));
-	MMIO_D(DSPSURFLIVE(dev_priv, PIPE_A));
+	MMIO_D(DSPCNTR(display, PIPE_A));
+	MMIO_D(DSPADDR(display, PIPE_A));
+	MMIO_D(DSPSTRIDE(display, PIPE_A));
+	MMIO_D(DSPPOS(display, PIPE_A));
+	MMIO_D(DSPSIZE(display, PIPE_A));
+	MMIO_D(DSPSURF(display, PIPE_A));
+	MMIO_D(DSPOFFSET(display, PIPE_A));
+	MMIO_D(DSPSURFLIVE(display, PIPE_A));
 	MMIO_D(REG_50080(PIPE_A, PLANE_PRIMARY));
-	MMIO_D(DSPCNTR(dev_priv, PIPE_B));
-	MMIO_D(DSPADDR(dev_priv, PIPE_B));
-	MMIO_D(DSPSTRIDE(dev_priv, PIPE_B));
-	MMIO_D(DSPPOS(dev_priv, PIPE_B));
-	MMIO_D(DSPSIZE(dev_priv, PIPE_B));
-	MMIO_D(DSPSURF(dev_priv, PIPE_B));
-	MMIO_D(DSPOFFSET(dev_priv, PIPE_B));
-	MMIO_D(DSPSURFLIVE(dev_priv, PIPE_B));
+	MMIO_D(DSPCNTR(display, PIPE_B));
+	MMIO_D(DSPADDR(display, PIPE_B));
+	MMIO_D(DSPSTRIDE(display, PIPE_B));
+	MMIO_D(DSPPOS(display, PIPE_B));
+	MMIO_D(DSPSIZE(display, PIPE_B));
+	MMIO_D(DSPSURF(display, PIPE_B));
+	MMIO_D(DSPOFFSET(display, PIPE_B));
+	MMIO_D(DSPSURFLIVE(display, PIPE_B));
 	MMIO_D(REG_50080(PIPE_B, PLANE_PRIMARY));
-	MMIO_D(DSPCNTR(dev_priv, PIPE_C));
-	MMIO_D(DSPADDR(dev_priv, PIPE_C));
-	MMIO_D(DSPSTRIDE(dev_priv, PIPE_C));
-	MMIO_D(DSPPOS(dev_priv, PIPE_C));
-	MMIO_D(DSPSIZE(dev_priv, PIPE_C));
-	MMIO_D(DSPSURF(dev_priv, PIPE_C));
-	MMIO_D(DSPOFFSET(dev_priv, PIPE_C));
-	MMIO_D(DSPSURFLIVE(dev_priv, PIPE_C));
+	MMIO_D(DSPCNTR(display, PIPE_C));
+	MMIO_D(DSPADDR(display, PIPE_C));
+	MMIO_D(DSPSTRIDE(display, PIPE_C));
+	MMIO_D(DSPPOS(display, PIPE_C));
+	MMIO_D(DSPSIZE(display, PIPE_C));
+	MMIO_D(DSPSURF(display, PIPE_C));
+	MMIO_D(DSPOFFSET(display, PIPE_C));
+	MMIO_D(DSPSURFLIVE(display, PIPE_C));
 	MMIO_D(REG_50080(PIPE_C, PLANE_PRIMARY));
 	MMIO_D(SPRCTL(PIPE_A));
 	MMIO_D(SPRLINOFF(PIPE_A));
@@ -238,73 +239,73 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(SPRSCALE(PIPE_C));
 	MMIO_D(SPRSURFLIVE(PIPE_C));
 	MMIO_D(REG_50080(PIPE_C, PLANE_SPRITE0));
-	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_A));
-	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPESRC(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_B));
-	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPESRC(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_C));
-	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPESRC(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
-	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_EDP));
-	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_EDP));
-	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_EDP));
-	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_EDP));
-	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_EDP));
-	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_EDP));
-	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPE_LINK_N2(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPE_LINK_N2(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPE_LINK_N2(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_LINK_N2(dev_priv, TRANSCODER_EDP));
+	MMIO_D(TRANS_HTOTAL(display, TRANSCODER_A));
+	MMIO_D(TRANS_HBLANK(display, TRANSCODER_A));
+	MMIO_D(TRANS_HSYNC(display, TRANSCODER_A));
+	MMIO_D(TRANS_VTOTAL(display, TRANSCODER_A));
+	MMIO_D(TRANS_VBLANK(display, TRANSCODER_A));
+	MMIO_D(TRANS_VSYNC(display, TRANSCODER_A));
+	MMIO_D(BCLRPAT(display, TRANSCODER_A));
+	MMIO_D(TRANS_VSYNCSHIFT(display, TRANSCODER_A));
+	MMIO_D(PIPESRC(display, TRANSCODER_A));
+	MMIO_D(TRANS_HTOTAL(display, TRANSCODER_B));
+	MMIO_D(TRANS_HBLANK(display, TRANSCODER_B));
+	MMIO_D(TRANS_HSYNC(display, TRANSCODER_B));
+	MMIO_D(TRANS_VTOTAL(display, TRANSCODER_B));
+	MMIO_D(TRANS_VBLANK(display, TRANSCODER_B));
+	MMIO_D(TRANS_VSYNC(display, TRANSCODER_B));
+	MMIO_D(BCLRPAT(display, TRANSCODER_B));
+	MMIO_D(TRANS_VSYNCSHIFT(display, TRANSCODER_B));
+	MMIO_D(PIPESRC(display, TRANSCODER_B));
+	MMIO_D(TRANS_HTOTAL(display, TRANSCODER_C));
+	MMIO_D(TRANS_HBLANK(display, TRANSCODER_C));
+	MMIO_D(TRANS_HSYNC(display, TRANSCODER_C));
+	MMIO_D(TRANS_VTOTAL(display, TRANSCODER_C));
+	MMIO_D(TRANS_VBLANK(display, TRANSCODER_C));
+	MMIO_D(TRANS_VSYNC(display, TRANSCODER_C));
+	MMIO_D(BCLRPAT(display, TRANSCODER_C));
+	MMIO_D(TRANS_VSYNCSHIFT(display, TRANSCODER_C));
+	MMIO_D(PIPESRC(display, TRANSCODER_C));
+	MMIO_D(TRANS_HTOTAL(display, TRANSCODER_EDP));
+	MMIO_D(TRANS_HBLANK(display, TRANSCODER_EDP));
+	MMIO_D(TRANS_HSYNC(display, TRANSCODER_EDP));
+	MMIO_D(TRANS_VTOTAL(display, TRANSCODER_EDP));
+	MMIO_D(TRANS_VBLANK(display, TRANSCODER_EDP));
+	MMIO_D(TRANS_VSYNC(display, TRANSCODER_EDP));
+	MMIO_D(BCLRPAT(display, TRANSCODER_EDP));
+	MMIO_D(TRANS_VSYNCSHIFT(display, TRANSCODER_EDP));
+	MMIO_D(PIPE_DATA_M1(display, TRANSCODER_A));
+	MMIO_D(PIPE_DATA_N1(display, TRANSCODER_A));
+	MMIO_D(PIPE_DATA_M2(display, TRANSCODER_A));
+	MMIO_D(PIPE_DATA_N2(display, TRANSCODER_A));
+	MMIO_D(PIPE_LINK_M1(display, TRANSCODER_A));
+	MMIO_D(PIPE_LINK_N1(display, TRANSCODER_A));
+	MMIO_D(PIPE_LINK_M2(display, TRANSCODER_A));
+	MMIO_D(PIPE_LINK_N2(display, TRANSCODER_A));
+	MMIO_D(PIPE_DATA_M1(display, TRANSCODER_B));
+	MMIO_D(PIPE_DATA_N1(display, TRANSCODER_B));
+	MMIO_D(PIPE_DATA_M2(display, TRANSCODER_B));
+	MMIO_D(PIPE_DATA_N2(display, TRANSCODER_B));
+	MMIO_D(PIPE_LINK_M1(display, TRANSCODER_B));
+	MMIO_D(PIPE_LINK_N1(display, TRANSCODER_B));
+	MMIO_D(PIPE_LINK_M2(display, TRANSCODER_B));
+	MMIO_D(PIPE_LINK_N2(display, TRANSCODER_B));
+	MMIO_D(PIPE_DATA_M1(display, TRANSCODER_C));
+	MMIO_D(PIPE_DATA_N1(display, TRANSCODER_C));
+	MMIO_D(PIPE_DATA_M2(display, TRANSCODER_C));
+	MMIO_D(PIPE_DATA_N2(display, TRANSCODER_C));
+	MMIO_D(PIPE_LINK_M1(display, TRANSCODER_C));
+	MMIO_D(PIPE_LINK_N1(display, TRANSCODER_C));
+	MMIO_D(PIPE_LINK_M2(display, TRANSCODER_C));
+	MMIO_D(PIPE_LINK_N2(display, TRANSCODER_C));
+	MMIO_D(PIPE_DATA_M1(display, TRANSCODER_EDP));
+	MMIO_D(PIPE_DATA_N1(display, TRANSCODER_EDP));
+	MMIO_D(PIPE_DATA_M2(display, TRANSCODER_EDP));
+	MMIO_D(PIPE_DATA_N2(display, TRANSCODER_EDP));
+	MMIO_D(PIPE_LINK_M1(display, TRANSCODER_EDP));
+	MMIO_D(PIPE_LINK_N1(display, TRANSCODER_EDP));
+	MMIO_D(PIPE_LINK_M2(display, TRANSCODER_EDP));
+	MMIO_D(PIPE_LINK_N2(display, TRANSCODER_EDP));
 	MMIO_D(PF_CTL(PIPE_A));
 	MMIO_D(PF_WIN_SZ(PIPE_A));
 	MMIO_D(PF_WIN_POS(PIPE_A));
@@ -513,12 +514,12 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(GAMMA_MODE(PIPE_A));
 	MMIO_D(GAMMA_MODE(PIPE_B));
 	MMIO_D(GAMMA_MODE(PIPE_C));
-	MMIO_D(TRANS_MULT(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_MULT(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_MULT(dev_priv, TRANSCODER_C));
-	MMIO_D(HSW_TVIDEO_DIP_CTL(dev_priv, TRANSCODER_A));
-	MMIO_D(HSW_TVIDEO_DIP_CTL(dev_priv, TRANSCODER_B));
-	MMIO_D(HSW_TVIDEO_DIP_CTL(dev_priv, TRANSCODER_C));
+	MMIO_D(TRANS_MULT(display, TRANSCODER_A));
+	MMIO_D(TRANS_MULT(display, TRANSCODER_B));
+	MMIO_D(TRANS_MULT(display, TRANSCODER_C));
+	MMIO_D(HSW_TVIDEO_DIP_CTL(display, TRANSCODER_A));
+	MMIO_D(HSW_TVIDEO_DIP_CTL(display, TRANSCODER_B));
+	MMIO_D(HSW_TVIDEO_DIP_CTL(display, TRANSCODER_C));
 	MMIO_D(SFUSE_STRAP);
 	MMIO_D(SBI_ADDR);
 	MMIO_D(SBI_DATA);
@@ -1111,6 +1112,7 @@ static int iterate_skl_plus_mmio(struct intel_gvt_mmio_table_iter *iter)
 static int iterate_bxt_mmio(struct intel_gvt_mmio_table_iter *iter)
 {
 	struct drm_i915_private *dev_priv = iter->i915;
+	struct intel_display *display = dev_priv->display;
 
 	MMIO_F(_MMIO(0x80000), 0x3000);
 	MMIO_D(GEN7_SAMPLER_INSTDONE);
@@ -1242,9 +1244,9 @@ static int iterate_bxt_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(BXT_DSI_PLL_ENABLE);
 	MMIO_D(GEN9_CLKGATE_DIS_0);
 	MMIO_D(GEN9_CLKGATE_DIS_4);
-	MMIO_D(HSW_TVIDEO_DIP_GCP(dev_priv, TRANSCODER_A));
-	MMIO_D(HSW_TVIDEO_DIP_GCP(dev_priv, TRANSCODER_B));
-	MMIO_D(HSW_TVIDEO_DIP_GCP(dev_priv, TRANSCODER_C));
+	MMIO_D(HSW_TVIDEO_DIP_GCP(display, TRANSCODER_A));
+	MMIO_D(HSW_TVIDEO_DIP_GCP(display, TRANSCODER_B));
+	MMIO_D(HSW_TVIDEO_DIP_GCP(display, TRANSCODER_C));
 	MMIO_D(RC6_CTX_BASE);
 	MMIO_D(GEN8_PUSHBUS_CONTROL);
 	MMIO_D(GEN8_PUSHBUS_ENABLE);
-- 
2.39.5

