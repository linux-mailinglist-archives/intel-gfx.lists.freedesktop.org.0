Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A776E64E543
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:38:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A83A710E5AC;
	Fri, 16 Dec 2022 00:38:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7725810E5AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 00:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671151119; x=1702687119;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cYfup3ROjizeO3jzs7oLCEuTxXfyBO92TesY22r4yOQ=;
 b=ChNgwXkRt9PzFTNbNvty+4Kf0NrGHHfHQJUDnvVupGcNk6xG0Tg8iA9G
 08gBCr7Fl/tHp3sJW3y3H5swshRdgdigW0wC3nWl+K4XLw3YEMs8O4ZcM
 f53vL30rViGMrGNwXs2Kyg02bfrARpMmeeOUtwO81eSJttM5VRNOOlhBX
 UpHmgK7pRQ1HQfnIi10k7TwAdftyY9IIeldosmnWYGAC0IZIeyOPE37+l
 98eLeUOWEh5GNQJ9BqdMC3V6ceTmHDlT3kMvdd+AQRCsm/F2K90ez7mgE
 eabvABh0HmGemf1QhW+NhP0LloS7zuBKuO7ao3t5lhiACB7Yz/iV6XI3d w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="405103857"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="405103857"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 16:38:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="643100218"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="643100218"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2022 16:38:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Dec 2022 02:38:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Dec 2022 02:38:05 +0200
Message-Id: <20221216003810.13338-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/13] drm/i915/dsb: Handle the indexed vs. not
 inside the DSB code
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

The DSB indexed register write insturction is purely an internal
DSB implementation detail, no reason why the caller should have to
know about it. So let's just have the caller emit blind register
writes let the DSB code convert things to an indexed write if/when
multiple writes occur to the same register offset in a row.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 45 ++++------
 drivers/gpu/drm/i915/display/intel_dsb.c   | 96 +++++++++-------------
 drivers/gpu/drm/i915/display/intel_dsb.h   |  2 -
 3 files changed, 54 insertions(+), 89 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index d57631b0bb9a..76603357252d 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -847,17 +847,6 @@ static void ilk_lut_write(const struct intel_crtc_state *crtc_state,
 		intel_de_write_fw(i915, reg, val);
 }
 
-static void ilk_lut_write_indexed(const struct intel_crtc_state *crtc_state,
-				  i915_reg_t reg, u32 val)
-{
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-
-	if (crtc_state->dsb)
-		intel_dsb_indexed_reg_write(crtc_state->dsb, reg, val);
-	else
-		intel_de_write_fw(i915, reg, val);
-}
-
 static void ilk_load_lut_8(const struct intel_crtc_state *crtc_state,
 			   const struct drm_property_blob *blob)
 {
@@ -962,8 +951,8 @@ static void bdw_load_lut_10(const struct intel_crtc_state *crtc_state,
 		      prec_index);
 
 	for (i = 0; i < lut_size; i++)
-		ilk_lut_write_indexed(crtc_state, PREC_PAL_DATA(pipe),
-				      ilk_lut_10(&lut[i]));
+		ilk_lut_write(crtc_state, PREC_PAL_DATA(pipe),
+			      ilk_lut_10(&lut[i]));
 
 	/*
 	 * Reset the index, otherwise it prevents the legacy palette to be
@@ -1093,13 +1082,13 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
 		 * ToDo: Extend to max 7.0. Enable 32 bit input value
 		 * as compared to just 16 to achieve this.
 		 */
-		ilk_lut_write_indexed(crtc_state, PRE_CSC_GAMC_DATA(pipe),
-				      lut[i].green);
+		ilk_lut_write(crtc_state, PRE_CSC_GAMC_DATA(pipe),
+			      lut[i].green);
 	}
 
 	/* Clamp values > 1.0. */
 	while (i++ < glk_degamma_lut_size(i915))
-		ilk_lut_write_indexed(crtc_state, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
+		ilk_lut_write(crtc_state, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
 
 	ilk_lut_write(crtc_state, PRE_CSC_GAMC_INDEX(pipe), 0);
 }
@@ -1165,10 +1154,10 @@ icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
 	for (i = 0; i < 9; i++) {
 		const struct drm_color_lut *entry = &lut[i];
 
-		ilk_lut_write_indexed(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
-				      ilk_lut_12p4_ldw(entry));
-		ilk_lut_write_indexed(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
-				      ilk_lut_12p4_udw(entry));
+		ilk_lut_write(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
+			      ilk_lut_12p4_ldw(entry));
+		ilk_lut_write(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
+			      ilk_lut_12p4_udw(entry));
 	}
 
 	ilk_lut_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
@@ -1204,10 +1193,10 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 	for (i = 1; i < 257; i++) {
 		entry = &lut[i * 8];
 
-		ilk_lut_write_indexed(crtc_state, PREC_PAL_DATA(pipe),
-				      ilk_lut_12p4_ldw(entry));
-		ilk_lut_write_indexed(crtc_state, PREC_PAL_DATA(pipe),
-				      ilk_lut_12p4_udw(entry));
+		ilk_lut_write(crtc_state, PREC_PAL_DATA(pipe),
+			      ilk_lut_12p4_ldw(entry));
+		ilk_lut_write(crtc_state, PREC_PAL_DATA(pipe),
+			      ilk_lut_12p4_udw(entry));
 	}
 
 	/*
@@ -1225,10 +1214,10 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 	for (i = 0; i < 256; i++) {
 		entry = &lut[i * 8 * 128];
 
-		ilk_lut_write_indexed(crtc_state, PREC_PAL_DATA(pipe),
-				      ilk_lut_12p4_ldw(entry));
-		ilk_lut_write_indexed(crtc_state, PREC_PAL_DATA(pipe),
-				      ilk_lut_12p4_udw(entry));
+		ilk_lut_write(crtc_state, PREC_PAL_DATA(pipe),
+			      ilk_lut_12p4_ldw(entry));
+		ilk_lut_write(crtc_state, PREC_PAL_DATA(pipe),
+			      ilk_lut_12p4_udw(entry));
 	}
 
 	ilk_lut_write(crtc_state, PREC_PAL_INDEX(pipe),
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index fcc3f49c5445..fa4b808a8134 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -114,32 +114,28 @@ static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
 	return prev_opcode == opcode && prev_reg == i915_mmio_reg_offset(reg);
 }
 
+static bool intel_dsb_prev_ins_is_mmio_write(struct intel_dsb *dsb, i915_reg_t reg)
+{
+	return intel_dsb_prev_ins_is_write(dsb, DSB_OPCODE_MMIO_WRITE, reg);
+}
+
 static bool intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, i915_reg_t reg)
 {
 	return intel_dsb_prev_ins_is_write(dsb, DSB_OPCODE_INDEXED_WRITE, reg);
 }
 
 /**
- * intel_dsb_indexed_reg_write() -Write to the DSB context for auto
- * increment register.
+ * intel_dsb_reg_write() - Emit register wriite to the DSB context
  * @dsb: DSB context
  * @reg: register address.
  * @val: value.
  *
  * This function is used for writing register-value pair in command
- * buffer of DSB for auto-increment register. During command buffer overflow,
- * a warning is thrown and rest all erroneous condition register programming
- * is done through mmio write.
+ * buffer of DSB.
  */
-
-void intel_dsb_indexed_reg_write(struct intel_dsb *dsb,
-				 i915_reg_t reg, u32 val)
+void intel_dsb_reg_write(struct intel_dsb *dsb,
+			 i915_reg_t reg, u32 val)
 {
-	u32 *buf = dsb->cmd_buf;
-
-	if (!assert_dsb_has_room(dsb))
-		return;
-
 	/*
 	 * For example the buffer will look like below for 3 dwords for auto
 	 * increment register:
@@ -156,57 +152,39 @@ void intel_dsb_indexed_reg_write(struct intel_dsb *dsb,
 	 * we are writing odd no of dwords, Zeros will be added in the end for
 	 * padding.
 	 */
-	if (!intel_dsb_prev_ins_is_indexed_write(dsb, reg)) {
-		/* Every instruction should be 8 byte aligned. */
-		dsb->free_pos = ALIGN(dsb->free_pos, 2);
-
-		dsb->ins_start_offset = dsb->free_pos;
-
-		/* Update the size. */
-		buf[dsb->free_pos++] = 1;
-
-		/* Update the opcode and reg. */
-		buf[dsb->free_pos++] = (DSB_OPCODE_INDEXED_WRITE  <<
-					DSB_OPCODE_SHIFT) |
-					i915_mmio_reg_offset(reg);
-
-		/* Update the value. */
-		buf[dsb->free_pos++] = val;
+	if (!intel_dsb_prev_ins_is_mmio_write(dsb, reg) &&
+	    !intel_dsb_prev_ins_is_indexed_write(dsb, reg)) {
+		intel_dsb_emit(dsb, val,
+			       (DSB_OPCODE_MMIO_WRITE << DSB_OPCODE_SHIFT) |
+			       (DSB_BYTE_EN << DSB_BYTE_EN_SHIFT) |
+			       i915_mmio_reg_offset(reg));
 	} else {
-		/* Update the new value. */
+		u32 *buf = dsb->cmd_buf;
+
+		if (!assert_dsb_has_room(dsb))
+			return;
+
+		/* convert to indexed write? */
+		if (intel_dsb_prev_ins_is_mmio_write(dsb, reg)) {
+			u32 prev_val = buf[dsb->ins_start_offset + 0];
+
+			buf[dsb->ins_start_offset + 0] = 1; /* size */
+			buf[dsb->ins_start_offset + 1] =
+				(DSB_OPCODE_INDEXED_WRITE << DSB_OPCODE_SHIFT) |
+				i915_mmio_reg_offset(reg);
+			buf[dsb->ins_start_offset + 2] = prev_val;
+
+			dsb->free_pos++;
+		}
+
 		buf[dsb->free_pos++] = val;
-
 		/* Update the size. */
 		buf[dsb->ins_start_offset]++;
+
+		/* if number of data words is odd, then the last dword should be 0.*/
+		if (dsb->free_pos & 0x1)
+			buf[dsb->free_pos] = 0;
 	}
-
-	/* if number of data words is odd, then the last dword should be 0.*/
-	if (dsb->free_pos & 0x1)
-		buf[dsb->free_pos] = 0;
-}
-
-/**
- * intel_dsb_reg_write() -Write to the DSB context for normal
- * register.
- * @crtc_state: intel_crtc_state structure
- * @reg: register address.
- * @val: value.
- *
- * This function is used for writing register-value pair in command
- * buffer of DSB. During command buffer overflow, a warning  is thrown
- * and rest all erroneous condition register programming is done
- * through mmio write.
- */
-void intel_dsb_reg_write(struct intel_dsb *dsb,
-			 i915_reg_t reg, u32 val)
-{
-	if (!assert_dsb_has_room(dsb))
-		return;
-
-	intel_dsb_emit(dsb, val,
-		       (DSB_OPCODE_MMIO_WRITE << DSB_OPCODE_SHIFT) |
-		       (DSB_BYTE_EN << DSB_BYTE_EN_SHIFT) |
-		       i915_mmio_reg_offset(reg));
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 25f13c4d5389..25d774049cc2 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -17,8 +17,6 @@ struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc);
 void intel_dsb_cleanup(struct intel_dsb *dsb);
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val);
-void intel_dsb_indexed_reg_write(struct intel_dsb *dsb,
-				 i915_reg_t reg, u32 val);
 void intel_dsb_commit(struct intel_dsb *dsb);
 
 #endif
-- 
2.37.4

