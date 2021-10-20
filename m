Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 225F34355E9
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 00:33:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 318C76EA10;
	Wed, 20 Oct 2021 22:33:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 713876EA10
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 22:33:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="227663916"
X-IronPort-AV: E=Sophos;i="5.87,168,1631602800"; d="scan'208";a="227663916"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 15:33:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,168,1631602800"; d="scan'208";a="533096608"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 20 Oct 2021 15:33:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Oct 2021 01:33:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Oct 2021 01:33:39 +0300
Message-Id: <20211020223339.669-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211020223339.669-1-ville.syrjala@linux.intel.com>
References: <20211020223339.669-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Use unlocked register accesses
 for LUT loads
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

We have to bash in a lot of registers to load the higher
precision LUT modes. The locking overhead is significant, especially
as we have to get this done as quickly as possible during vblank.
So let's switch to unlocked accesses for these. Fortunately the LUT
registers are mostly spread around such that two pipes do not have
any registers on the same cacheline. So as long as commits on the
same pipe are serialized (which they are) we should get away with
this without angering the hardware.

The only exceptions are the PREC_PIPEGCMAX registers on ilk/snb which
we don't use atm as they are only used in the 12bit gamma mode. If/when
we add support for that we may need to remember to still serialize
those registers, though I'm not sure ilk/snb are actually affected
by the same cacheline issue. I think ivb/hsw at least were, but they
use a different set of registers for the precision LUT.

I have a test case which is updating the LUTs on two pipes from a
single atomic commit. Running that in a loop for a minute I get the
following worst case with the locks in place:
 intel_crtc_vblank_work_start: pipe B, frame=10037, scanline=1081
 intel_crtc_vblank_work_start: pipe A, frame=12274, scanline=769
 intel_crtc_vblank_work_end: pipe A, frame=12274, scanline=58
 intel_crtc_vblank_work_end: pipe B, frame=10037, scanline=74

And here's the worst case with the locks removed:
 intel_crtc_vblank_work_start: pipe B, frame=5869, scanline=1081
 intel_crtc_vblank_work_start: pipe A, frame=7616, scanline=769
 intel_crtc_vblank_work_end: pipe B, frame=5869, scanline=1096
 intel_crtc_vblank_work_end: pipe A, frame=7616, scanline=777

The test was done on a snb using the 10bit 1024 entry LUT mode.
The vtotals for the two displays are 793 and 1125. So we can
see that with the locks ripped out the LUT updates are pretty
nicely confined within the vblank, whereas with the locks in
place we're routinely blasting past the vblank end which causes
visual artifacts near the top of the screen.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 128 ++++++++++-----------
 drivers/gpu/drm/i915/display/intel_dsb.c   |   4 +-
 2 files changed, 66 insertions(+), 66 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 5359b7305a78..c870a0e50cb1 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -552,8 +552,8 @@ static void i9xx_load_lut_8(struct intel_crtc *crtc,
 	lut = blob->data;
 
 	for (i = 0; i < 256; i++)
-		intel_de_write(dev_priv, PALETTE(pipe, i),
-			       i9xx_lut_8(&lut[i]));
+		intel_de_write_fw(dev_priv, PALETTE(pipe, i),
+				  i9xx_lut_8(&lut[i]));
 }
 
 static void i9xx_load_luts(const struct intel_crtc_state *crtc_state)
@@ -576,15 +576,15 @@ static void i965_load_lut_10p6(struct intel_crtc *crtc,
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size - 1; i++) {
-		intel_de_write(dev_priv, PALETTE(pipe, 2 * i + 0),
-			       i965_lut_10p6_ldw(&lut[i]));
-		intel_de_write(dev_priv, PALETTE(pipe, 2 * i + 1),
-			       i965_lut_10p6_udw(&lut[i]));
+		intel_de_write_fw(dev_priv, PALETTE(pipe, 2 * i + 0),
+				  i965_lut_10p6_ldw(&lut[i]));
+		intel_de_write_fw(dev_priv, PALETTE(pipe, 2 * i + 1),
+				  i965_lut_10p6_udw(&lut[i]));
 	}
 
-	intel_de_write(dev_priv, PIPEGCMAX(pipe, 0), lut[i].red);
-	intel_de_write(dev_priv, PIPEGCMAX(pipe, 1), lut[i].green);
-	intel_de_write(dev_priv, PIPEGCMAX(pipe, 2), lut[i].blue);
+	intel_de_write_fw(dev_priv, PIPEGCMAX(pipe, 0), lut[i].red);
+	intel_de_write_fw(dev_priv, PIPEGCMAX(pipe, 1), lut[i].green);
+	intel_de_write_fw(dev_priv, PIPEGCMAX(pipe, 2), lut[i].blue);
 }
 
 static void i965_load_luts(const struct intel_crtc_state *crtc_state)
@@ -618,8 +618,8 @@ static void ilk_load_lut_8(struct intel_crtc *crtc,
 	lut = blob->data;
 
 	for (i = 0; i < 256; i++)
-		intel_de_write(dev_priv, LGC_PALETTE(pipe, i),
-			       i9xx_lut_8(&lut[i]));
+		intel_de_write_fw(dev_priv, LGC_PALETTE(pipe, i),
+				  i9xx_lut_8(&lut[i]));
 }
 
 static void ilk_load_lut_10(struct intel_crtc *crtc,
@@ -631,8 +631,8 @@ static void ilk_load_lut_10(struct intel_crtc *crtc,
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size; i++)
-		intel_de_write(dev_priv, PREC_PALETTE(pipe, i),
-			       ilk_lut_10(&lut[i]));
+		intel_de_write_fw(dev_priv, PREC_PALETTE(pipe, i),
+				  ilk_lut_10(&lut[i]));
 }
 
 static void ilk_load_luts(const struct intel_crtc_state *crtc_state)
@@ -681,16 +681,16 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
 		const struct drm_color_lut *entry =
 			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
 
-		intel_de_write(dev_priv, PREC_PAL_INDEX(pipe), prec_index++);
-		intel_de_write(dev_priv, PREC_PAL_DATA(pipe),
-			       ilk_lut_10(entry));
+		intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe), prec_index++);
+		intel_de_write_fw(dev_priv, PREC_PAL_DATA(pipe),
+				  ilk_lut_10(entry));
 	}
 
 	/*
 	 * Reset the index, otherwise it prevents the legacy palette to be
 	 * written properly.
 	 */
-	intel_de_write(dev_priv, PREC_PAL_INDEX(pipe), 0);
+	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe), 0);
 }
 
 /* On BDW+ the index auto increment mode actually works */
@@ -704,23 +704,23 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write(dev_priv, PREC_PAL_INDEX(pipe),
-		       prec_index | PAL_PREC_AUTO_INCREMENT);
+	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe),
+			  prec_index | PAL_PREC_AUTO_INCREMENT);
 
 	for (i = 0; i < hw_lut_size; i++) {
 		/* We discard half the user entries in split gamma mode */
 		const struct drm_color_lut *entry =
 			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
 
-		intel_de_write(dev_priv, PREC_PAL_DATA(pipe),
-			       ilk_lut_10(entry));
+		intel_de_write_fw(dev_priv, PREC_PAL_DATA(pipe),
+				  ilk_lut_10(entry));
 	}
 
 	/*
 	 * Reset the index, otherwise it prevents the legacy palette to be
 	 * written properly.
 	 */
-	intel_de_write(dev_priv, PREC_PAL_INDEX(pipe), 0);
+	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe), 0);
 }
 
 static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
@@ -821,9 +821,9 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
 	 * ignore the index bits, so we need to reset it to index 0
 	 * separately.
 	 */
-	intel_de_write(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
-	intel_de_write(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
-		       PRE_CSC_GAMC_AUTO_INCREMENT);
+	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
+	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
+			  PRE_CSC_GAMC_AUTO_INCREMENT);
 
 	for (i = 0; i < lut_size; i++) {
 		/*
@@ -839,15 +839,15 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
 		 * ToDo: Extend to max 7.0. Enable 32 bit input value
 		 * as compared to just 16 to achieve this.
 		 */
-		intel_de_write(dev_priv, PRE_CSC_GAMC_DATA(pipe),
-			       lut[i].green);
+		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe),
+				  lut[i].green);
 	}
 
 	/* Clamp values > 1.0. */
 	while (i++ < 35)
-		intel_de_write(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
+		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
 
-	intel_de_write(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
+	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
 }
 
 static void glk_load_degamma_lut_linear(const struct intel_crtc_state *crtc_state)
@@ -862,21 +862,21 @@ static void glk_load_degamma_lut_linear(const struct intel_crtc_state *crtc_stat
 	 * ignore the index bits, so we need to reset it to index 0
 	 * separately.
 	 */
-	intel_de_write(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
-	intel_de_write(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
-		       PRE_CSC_GAMC_AUTO_INCREMENT);
+	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
+	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
+			  PRE_CSC_GAMC_AUTO_INCREMENT);
 
 	for (i = 0; i < lut_size; i++) {
 		u32 v = (i << 16) / (lut_size - 1);
 
-		intel_de_write(dev_priv, PRE_CSC_GAMC_DATA(pipe), v);
+		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), v);
 	}
 
 	/* Clamp values > 1.0. */
 	while (i++ < 35)
-		intel_de_write(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
+		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
 
-	intel_de_write(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
+	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
 }
 
 static void glk_load_luts(const struct intel_crtc_state *crtc_state)
@@ -1071,10 +1071,10 @@ static void chv_load_cgm_degamma(struct intel_crtc *crtc,
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size; i++) {
-		intel_de_write(dev_priv, CGM_PIPE_DEGAMMA(pipe, i, 0),
-			       chv_cgm_degamma_ldw(&lut[i]));
-		intel_de_write(dev_priv, CGM_PIPE_DEGAMMA(pipe, i, 1),
-			       chv_cgm_degamma_udw(&lut[i]));
+		intel_de_write_fw(dev_priv, CGM_PIPE_DEGAMMA(pipe, i, 0),
+				  chv_cgm_degamma_ldw(&lut[i]));
+		intel_de_write_fw(dev_priv, CGM_PIPE_DEGAMMA(pipe, i, 1),
+				  chv_cgm_degamma_udw(&lut[i]));
 	}
 }
 
@@ -1105,10 +1105,10 @@ static void chv_load_cgm_gamma(struct intel_crtc *crtc,
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size; i++) {
-		intel_de_write(dev_priv, CGM_PIPE_GAMMA(pipe, i, 0),
-			       chv_cgm_gamma_ldw(&lut[i]));
-		intel_de_write(dev_priv, CGM_PIPE_GAMMA(pipe, i, 1),
-			       chv_cgm_gamma_udw(&lut[i]));
+		intel_de_write_fw(dev_priv, CGM_PIPE_GAMMA(pipe, i, 0),
+				  chv_cgm_gamma_ldw(&lut[i]));
+		intel_de_write_fw(dev_priv, CGM_PIPE_GAMMA(pipe, i, 1),
+				  chv_cgm_gamma_udw(&lut[i]));
 	}
 }
 
@@ -1131,8 +1131,8 @@ static void chv_load_luts(const struct intel_crtc_state *crtc_state)
 	else
 		i965_load_luts(crtc_state);
 
-	intel_de_write(dev_priv, CGM_PIPE_MODE(crtc->pipe),
-		       crtc_state->cgm_mode);
+	intel_de_write_fw(dev_priv, CGM_PIPE_MODE(crtc->pipe),
+			  crtc_state->cgm_mode);
 }
 
 void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
@@ -1808,7 +1808,7 @@ static struct drm_property_blob *i9xx_read_lut_8(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < LEGACY_LUT_LENGTH; i++) {
-		u32 val = intel_de_read(dev_priv, PALETTE(pipe, i));
+		u32 val = intel_de_read_fw(dev_priv, PALETTE(pipe, i));
 
 		i9xx_lut_8_pack(&lut[i], val);
 	}
@@ -1843,15 +1843,15 @@ static struct drm_property_blob *i965_read_lut_10p6(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < lut_size - 1; i++) {
-		u32 ldw = intel_de_read(dev_priv, PALETTE(pipe, 2 * i + 0));
-		u32 udw = intel_de_read(dev_priv, PALETTE(pipe, 2 * i + 1));
+		u32 ldw = intel_de_read_fw(dev_priv, PALETTE(pipe, 2 * i + 0));
+		u32 udw = intel_de_read_fw(dev_priv, PALETTE(pipe, 2 * i + 1));
 
 		i965_lut_10p6_pack(&lut[i], ldw, udw);
 	}
 
-	lut[i].red = i965_lut_11p6_max_pack(intel_de_read(dev_priv, PIPEGCMAX(pipe, 0)));
-	lut[i].green = i965_lut_11p6_max_pack(intel_de_read(dev_priv, PIPEGCMAX(pipe, 1)));
-	lut[i].blue = i965_lut_11p6_max_pack(intel_de_read(dev_priv, PIPEGCMAX(pipe, 2)));
+	lut[i].red = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(pipe, 0)));
+	lut[i].green = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(pipe, 1)));
+	lut[i].blue = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(pipe, 2)));
 
 	return blob;
 }
@@ -1886,8 +1886,8 @@ static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < lut_size; i++) {
-		u32 ldw = intel_de_read(dev_priv, CGM_PIPE_GAMMA(pipe, i, 0));
-		u32 udw = intel_de_read(dev_priv, CGM_PIPE_GAMMA(pipe, i, 1));
+		u32 ldw = intel_de_read_fw(dev_priv, CGM_PIPE_GAMMA(pipe, i, 0));
+		u32 udw = intel_de_read_fw(dev_priv, CGM_PIPE_GAMMA(pipe, i, 1));
 
 		chv_cgm_gamma_pack(&lut[i], ldw, udw);
 	}
@@ -1922,7 +1922,7 @@ static struct drm_property_blob *ilk_read_lut_8(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < LEGACY_LUT_LENGTH; i++) {
-		u32 val = intel_de_read(dev_priv, LGC_PALETTE(pipe, i));
+		u32 val = intel_de_read_fw(dev_priv, LGC_PALETTE(pipe, i));
 
 		i9xx_lut_8_pack(&lut[i], val);
 	}
@@ -1947,7 +1947,7 @@ static struct drm_property_blob *ilk_read_lut_10(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < lut_size; i++) {
-		u32 val = intel_de_read(dev_priv, PREC_PALETTE(pipe, i));
+		u32 val = intel_de_read_fw(dev_priv, PREC_PALETTE(pipe, i));
 
 		ilk_lut_10_pack(&lut[i], val);
 	}
@@ -1999,16 +1999,16 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
 
 	lut = blob->data;
 
-	intel_de_write(dev_priv, PREC_PAL_INDEX(pipe),
-		       prec_index | PAL_PREC_AUTO_INCREMENT);
+	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe),
+			  prec_index | PAL_PREC_AUTO_INCREMENT);
 
 	for (i = 0; i < lut_size; i++) {
-		u32 val = intel_de_read(dev_priv, PREC_PAL_DATA(pipe));
+		u32 val = intel_de_read_fw(dev_priv, PREC_PAL_DATA(pipe));
 
 		ilk_lut_10_pack(&lut[i], val);
 	}
 
-	intel_de_write(dev_priv, PREC_PAL_INDEX(pipe), 0);
+	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe), 0);
 
 	return blob;
 }
@@ -2050,17 +2050,17 @@ icl_read_lut_multi_segment(struct intel_crtc *crtc)
 
 	lut = blob->data;
 
-	intel_de_write(dev_priv, PREC_PAL_MULTI_SEG_INDEX(pipe),
-		       PAL_PREC_AUTO_INCREMENT);
+	intel_de_write_fw(dev_priv, PREC_PAL_MULTI_SEG_INDEX(pipe),
+			  PAL_PREC_AUTO_INCREMENT);
 
 	for (i = 0; i < 9; i++) {
-		u32 ldw = intel_de_read(dev_priv, PREC_PAL_MULTI_SEG_DATA(pipe));
-		u32 udw = intel_de_read(dev_priv, PREC_PAL_MULTI_SEG_DATA(pipe));
+		u32 ldw = intel_de_read_fw(dev_priv, PREC_PAL_MULTI_SEG_DATA(pipe));
+		u32 udw = intel_de_read_fw(dev_priv, PREC_PAL_MULTI_SEG_DATA(pipe));
 
 		icl_lut_multi_seg_pack(&lut[i], ldw, udw);
 	}
 
-	intel_de_write(dev_priv, PREC_PAL_MULTI_SEG_INDEX(pipe), 0);
+	intel_de_write_fw(dev_priv, PREC_PAL_MULTI_SEG_INDEX(pipe), 0);
 
 	/*
 	 * FIXME readouts from PAL_PREC_DATA register aren't giving
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 62a8a69f9f5d..83a69a4a4fea 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -100,7 +100,7 @@ void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
 	u32 reg_val;
 
 	if (!dsb) {
-		intel_de_write(dev_priv, reg, val);
+		intel_de_write_fw(dev_priv, reg, val);
 		return;
 	}
 	buf = dsb->cmd_buf;
@@ -177,7 +177,7 @@ void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
 
 	dsb = crtc_state->dsb;
 	if (!dsb) {
-		intel_de_write(dev_priv, reg, val);
+		intel_de_write_fw(dev_priv, reg, val);
 		return;
 	}
 
-- 
2.32.0

