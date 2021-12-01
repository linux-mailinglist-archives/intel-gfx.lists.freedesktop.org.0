Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7643465189
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:26:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0E1C6EC2A;
	Wed,  1 Dec 2021 15:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 460276EC2A
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:26:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="322725003"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="322725003"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:25:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="512081599"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 01 Dec 2021 07:25:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:25:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 17:25:39 +0200
Message-Id: <20211201152552.7821-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/14] drm/i915: Get rid of the 64bit
 PLANE_CC_VAL mmio
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

Let's just stick to 32bit mmio accesses so we can get rid
of the bare "uncore" reg access in display code. The register
are defined as 32bit in the spec anyway.

We could define a 64bit "de" variant I suppose, but doesn't
really make much sense just for this one case, and when we
start to use the DSB for this stuff we'd also need another
64bit variant for that. Just easier to do 32bit always.

While at it we can reorder stuff a bit so that we write the
registers in order of increasing offset (more or less).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 11 +++++++----
 drivers/gpu/drm/i915/i915_reg.h                    | 12 ++++++------
 2 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 28890876bdeb..845b99844ec6 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1047,6 +1047,13 @@ skl_program_plane_noarm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, PLANE_SIZE(pipe, plane_id),
 			  (src_h << 16) | src_w);
 
+	if (intel_fb_is_rc_ccs_cc_modifier(fb->modifier)) {
+		intel_de_write_fw(dev_priv, PLANE_CC_VAL(pipe, plane_id, 0),
+				  lower_32_bits(plane_state->ccval));
+		intel_de_write_fw(dev_priv, PLANE_CC_VAL(pipe, plane_id, 1),
+				  upper_32_bits(plane_state->ccval));
+	}
+
 	if (icl_is_hdr_plane(dev_priv, plane_id))
 		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id),
 				  plane_state->cus_ctl);
@@ -1054,10 +1061,6 @@ skl_program_plane_noarm(struct intel_plane *plane,
 	if (fb->format->is_yuv && icl_is_hdr_plane(dev_priv, plane_id))
 		icl_program_input_csc(plane, crtc_state, plane_state);
 
-	if (intel_fb_is_rc_ccs_cc_modifier(fb->modifier))
-		intel_uncore_write64_fw(&dev_priv->uncore,
-					PLANE_CC_VAL(pipe, plane_id), plane_state->ccval);
-
 	skl_write_plane_wm(plane, crtc_state);
 
 	intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, color_plane);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3450818802c2..3c0471f20e53 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7363,12 +7363,12 @@ enum {
 #define _PLANE_NV12_BUF_CFG_1_A		0x70278
 #define _PLANE_NV12_BUF_CFG_2_A		0x70378
 
-#define _PLANE_CC_VAL_1_B			0x711b4
-#define _PLANE_CC_VAL_2_B			0x712b4
-#define _PLANE_CC_VAL_1(pipe)	_PIPE(pipe, _PLANE_CC_VAL_1_A, _PLANE_CC_VAL_1_B)
-#define _PLANE_CC_VAL_2(pipe)	_PIPE(pipe, _PLANE_CC_VAL_2_A, _PLANE_CC_VAL_2_B)
-#define PLANE_CC_VAL(pipe, plane)	\
-	_MMIO_PLANE(plane, _PLANE_CC_VAL_1(pipe), _PLANE_CC_VAL_2(pipe))
+#define _PLANE_CC_VAL_1_B		0x711b4
+#define _PLANE_CC_VAL_2_B		0x712b4
+#define _PLANE_CC_VAL_1(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_1_A, _PLANE_CC_VAL_1_B) + (dw) * 4)
+#define _PLANE_CC_VAL_2(pipe, dw)	(_PIPE(pipe, _PLANE_CC_VAL_2_A, _PLANE_CC_VAL_2_B) + (dw) * 4)
+#define PLANE_CC_VAL(pipe, plane, dw) \
+	_MMIO_PLANE((plane), _PLANE_CC_VAL_1((pipe), (dw)), _PLANE_CC_VAL_2((pipe), (dw)))
 
 /* Input CSC Register Definitions */
 #define _PLANE_INPUT_CSC_RY_GY_1_A	0x701E0
-- 
2.32.0

