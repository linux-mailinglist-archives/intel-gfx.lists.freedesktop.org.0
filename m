Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECDE2E063B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 07:51:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDCBC6E16D;
	Tue, 22 Dec 2020 06:51:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC0566E141
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 06:51:33 +0000 (UTC)
IronPort-SDR: sEWqoR1U4hKD4VGRaGLYTb9c0/4CK6D72Gior77jeLsKtf97eZUSRcdIfjY1BfqGtCaFlcBUEr
 s506exNLaR8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="162883460"
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="162883460"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 22:51:33 -0800
IronPort-SDR: ZRpMlj/iWC5OcDQUER7Xxf2ovnXBC+PsJBW9Cnct72mLGwShzc7DV8/HTWecyIl0I1ibU8v6h4
 D2gGw8I75M8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="356209237"
Received: from amanna.iind.intel.com ([10.223.74.76])
 by orsmga002.jf.intel.com with ESMTP; 21 Dec 2020 22:51:32 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Dec 2020 12:03:59 +0530
Message-Id: <20201222063400.9509-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20201222063400.9509-1-animesh.manna@intel.com>
References: <20201222063400.9509-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/dsb: multi dsb instance support in
 dsb-write()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To support multiple dsb instances per pipe dsb-id is passed
as argumnet in dsb-write() which will write into respective
dsb cmd-buffer.

v1: Initial version.
v2: Improved commit description.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 40 +++++++++++++---------
 drivers/gpu/drm/i915/display/intel_dsb.c   | 10 +++---
 drivers/gpu/drm/i915/display/intel_dsb.h   |  4 +--
 3 files changed, 31 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 172d398081ee..02f31bcf0d24 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -728,9 +728,12 @@ static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 
 	/* Program the max register to clamp values > 1.0. */
-	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 0), 1 << 16);
-	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 1), 1 << 16);
-	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 2), 1 << 16);
+	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 0), 1 << 16,
+			    DSB1);
+	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 1), 1 << 16,
+			    DSB1);
+	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 2), 1 << 16,
+			    DSB1);
 
 	/*
 	 * Program the gc max 2 register to clamp values > 1.0.
@@ -739,11 +742,11 @@ static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
 	 */
 	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
 		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0),
-				    1 << 16);
+				    1 << 16, DSB1);
 		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1),
-				    1 << 16);
+				    1 << 16, DSB1);
 		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 2),
-				    1 << 16);
+				    1 << 16, DSB1);
 	}
 }
 
@@ -931,9 +934,12 @@ icl_load_gcmax(const struct intel_crtc_state *crtc_state,
 	enum pipe pipe = crtc->pipe;
 
 	/* FIXME LUT entries are 16 bit only, so we can prog 0xFFFF max */
-	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 0), color->red);
-	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 1), color->green);
-	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 2), color->blue);
+	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 0), color->red,
+			    DSB1);
+	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 1), color->green,
+			    DSB1);
+	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 2), color->blue,
+			    DSB1);
 }
 
 static void
@@ -953,15 +959,15 @@ icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
 	 * 2/(8 * 128 * 256) ... 8/(8 * 128 * 256).
 	 */
 	intel_dsb_reg_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
-			    PAL_PREC_AUTO_INCREMENT);
+			    PAL_PREC_AUTO_INCREMENT, DSB1);
 
 	for (i = 0; i < 9; i++) {
 		const struct drm_color_lut *entry = &lut[i];
 
 		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
-					    ilk_lut_12p4_ldw(entry));
+					    ilk_lut_12p4_ldw(entry), DSB1);
 		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
-					    ilk_lut_12p4_udw(entry));
+					    ilk_lut_12p4_udw(entry), DSB1);
 	}
 }
 
@@ -986,13 +992,13 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 	 * seg2[0] being unused by the hardware.
 	 */
 	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
-			    PAL_PREC_AUTO_INCREMENT);
+			    PAL_PREC_AUTO_INCREMENT, DSB1);
 	for (i = 1; i < 257; i++) {
 		entry = &lut[i * 8];
 		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
-					    ilk_lut_12p4_ldw(entry));
+					    ilk_lut_12p4_ldw(entry), DSB1);
 		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
-					    ilk_lut_12p4_udw(entry));
+					    ilk_lut_12p4_udw(entry), DSB1);
 	}
 
 	/*
@@ -1010,9 +1016,9 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 	for (i = 0; i < 256; i++) {
 		entry = &lut[i * 8 * 128];
 		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
-					    ilk_lut_12p4_ldw(entry));
+					    ilk_lut_12p4_ldw(entry), DSB1);
 		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
-					    ilk_lut_12p4_udw(entry));
+					    ilk_lut_12p4_udw(entry), DSB1);
 	}
 
 	/* The last entry in the LUT is to be programmed in GCMAX */
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index cef1015cc04f..2a9df1d7cbc5 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -82,6 +82,7 @@ static bool intel_dsb_disable_engine(struct drm_i915_private *i915,
  * @crtc_state: intel_crtc_state structure
  * @reg: register address.
  * @val: value.
+ * @id: dsb id.
  *
  * This function is used for writing register-value pair in command
  * buffer of DSB for auto-increment register. During command buffer overflow,
@@ -90,9 +91,9 @@ static bool intel_dsb_disable_engine(struct drm_i915_private *i915,
  */
 
 void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
-				 i915_reg_t reg, u32 val)
+				 i915_reg_t reg, u32 val, enum dsb_id id)
 {
-	struct intel_dsb *dsb = crtc_state->dsb[0];
+	struct intel_dsb *dsb = crtc_state->dsb[id];
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 *buf;
@@ -160,6 +161,7 @@ void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
  * @crtc_state: intel_crtc_state structure
  * @reg: register address.
  * @val: value.
+ * @id: dsb id.
  *
  * This function is used for writing register-value pair in command
  * buffer of DSB. During command buffer overflow, a warning  is thrown
@@ -167,14 +169,14 @@ void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
  * through mmio write.
  */
 void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
-			 i915_reg_t reg, u32 val)
+			 i915_reg_t reg, u32 val, enum dsb_id id)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_dsb *dsb;
 	u32 *buf;
 
-	dsb = crtc_state->dsb[0];
+	dsb = crtc_state->dsb[id];
 	if (!dsb) {
 		intel_de_write(dev_priv, reg, val);
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 654a11f24b80..0040941d6a56 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -43,9 +43,9 @@ struct intel_dsb {
 void intel_dsb_prepare(struct intel_crtc_state *crtc_state);
 void intel_dsb_cleanup(struct intel_crtc_state *crtc_state);
 void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
-			 i915_reg_t reg, u32 val);
+			 i915_reg_t reg, u32 val, enum dsb_id id);
 void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
-				 i915_reg_t reg, u32 val);
+				 i915_reg_t reg, u32 val, enum dsb_id id);
 void intel_dsb_commit(const struct intel_crtc_state *crtc_state);
 
 #endif
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
