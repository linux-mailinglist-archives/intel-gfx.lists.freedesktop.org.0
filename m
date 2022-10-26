Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCF360DFBB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 13:39:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11D4D10E4BF;
	Wed, 26 Oct 2022 11:39:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1678A10E4B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 11:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666784364; x=1698320364;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DFgvPM73mir5p4vzofGA90gPzasPbZKwIB6/tfBeFMY=;
 b=CZ1eLs+KXc9RRRIP1GWg+yZ4CI7UHVZF/56tAJg+rHv/okoHq1Pihe0k
 rQ3O5cpZvr67EP8NRgiS2G/k9/FYxNKtgFly/XliFBTWb4KlXoOmU32BK
 gF7oBP8dimcrNm8EKFcOQId0VL4000/KmQKk2eCGKUiKzK09P6M+acbA0
 DSSsb6+6e0d7kIKBYDLtJSQ21WLPa/T8v3GBCjRjegEaoH50SGsUjjXFV
 BVTLPUo9hD92RMhIJIp0HbAbFbFE6xcyvEjl0YyXmgtrswYkEC1gFhgOq
 XoaRxIApE4X44cpHtyCCzLTV/o3aJ+tZSFRZn/p5VEfsuollUUdVBXUFi Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="309614248"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="309614248"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 04:39:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="663164472"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="663164472"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 26 Oct 2022 04:39:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 14:39:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 14:39:00 +0300
Message-Id: <20221026113906.10551-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/11] drm/i915: Split ivb_load_lut_ext_max()
 into two parts
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

Split the EXT2_MAX register progrmaming into its own funciton.
More in line with the whole "cobble together stuff from small
pieces" approach used in this code.

The EXT(2)_MAX registers are also not really part of the
multi-segment section of the LUT, so hoise the calls to a
higher level, just like we do in other gamma modes as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 29 +++++++++++-----------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index e73e6ea6f82f..3b78b882e0c0 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -764,27 +764,23 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
 static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
 	/* Program the max register to clamp values > 1.0. */
 	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 0), 1 << 16);
 	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 1), 1 << 16);
 	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 2), 1 << 16);
+}
 
-	/*
-	 * Program the gc max 2 register to clamp values > 1.0.
-	 * ToDo: Extend the ABI to be able to program values
-	 * from 3.0 to 7.0
-	 */
-	if (DISPLAY_VER(i915) >= 10) {
-		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0),
-				    1 << 16);
-		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1),
-				    1 << 16);
-		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 2),
-				    1 << 16);
-	}
+static void glk_load_lut_ext2_max(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
+
+	/* Program the max register to clamp values > 1.0. */
+	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0), 1 << 16);
+	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1), 1 << 16);
+	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 2), 1 << 16);
 }
 
 static void ivb_load_luts(const struct intel_crtc_state *crtc_state)
@@ -913,6 +909,7 @@ static void glk_load_luts(const struct intel_crtc_state *crtc_state)
 	case GAMMA_MODE_MODE_10BIT:
 		bdw_load_lut_10(crtc, post_csc_lut, PAL_PREC_INDEX_VALUE(0));
 		ivb_load_lut_ext_max(crtc_state);
+		glk_load_lut_ext2_max(crtc_state);
 		break;
 	default:
 		MISSING_CASE(crtc_state->gamma_mode);
@@ -1029,7 +1026,6 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 	/* The last entry in the LUT is to be programmed in GCMAX */
 	entry = &lut[256 * 8 * 128];
 	ivb_load_lut_max(crtc_state, entry);
-	ivb_load_lut_ext_max(crtc_state);
 }
 
 static void icl_load_luts(const struct intel_crtc_state *crtc_state)
@@ -1048,10 +1044,13 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
 		icl_program_gamma_superfine_segment(crtc_state);
 		icl_program_gamma_multi_segment(crtc_state);
+		ivb_load_lut_ext_max(crtc_state);
+		glk_load_lut_ext2_max(crtc_state);
 		break;
 	case GAMMA_MODE_MODE_10BIT:
 		bdw_load_lut_10(crtc, post_csc_lut, PAL_PREC_INDEX_VALUE(0));
 		ivb_load_lut_ext_max(crtc_state);
+		glk_load_lut_ext2_max(crtc_state);
 		break;
 	default:
 		MISSING_CASE(crtc_state->gamma_mode);
-- 
2.37.4

