Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6952E3E89C2
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Aug 2021 07:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FD4A89D86;
	Wed, 11 Aug 2021 05:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6249B89D86
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Aug 2021 05:31:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="214790466"
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="214790466"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 22:31:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="445693420"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.227.88.188])
 by fmsmga007.fm.intel.com with ESMTP; 10 Aug 2021 22:31:48 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, paulo.r.zanoni@intel.com,
 ville.syrjala@linux.intel.com, daniel.vetter@ffwll.ch,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, stable@vger.kernel.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Date: Wed, 11 Aug 2021 10:48:57 +0530
Message-Id: <20210811051857.109723-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/display: Fix the 12 BPC bits for
 PIPE_MISC reg
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

Till DISPLAY12 the PIPE_MISC bits 5-7 are used to set the
Dithering BPC, with valid values of 6, 8, 10 BPC.
For ADLP+ these bits are used to set the PORT OUTPUT BPC, with valid
values of: 6, 8, 10, 12 BPC, and need to be programmed whether
dithering is enabled or not.

This patch:
-corrects the bits 5-7 for PIPE MISC register for 12 BPC.
-renames the bits and mask to have generic names for these bits for
dithering bpc and port output bpc.

v3: Added a note for MIPI DSI which uses the PIPE_MISC for readout
for pipe_bpp. (Uma Shankar)

v2: Added 'display' to the subject and fixes tag. (Uma Shankar)

Fixes: 756f85cffef2 ("drm/i915/bdw: Broadwell has PIPEMISC")
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com> (v1)
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v3.13+

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 34 ++++++++++++++------
 drivers/gpu/drm/i915/i915_reg.h              | 16 ++++++---
 2 files changed, 35 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b25c596f6f7e..a257e5dc381c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5838,16 +5838,18 @@ static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
 
 	switch (crtc_state->pipe_bpp) {
 	case 18:
-		val |= PIPEMISC_DITHER_6_BPC;
+		val |= PIPEMISC_6_BPC;
 		break;
 	case 24:
-		val |= PIPEMISC_DITHER_8_BPC;
+		val |= PIPEMISC_8_BPC;
 		break;
 	case 30:
-		val |= PIPEMISC_DITHER_10_BPC;
+		val |= PIPEMISC_10_BPC;
 		break;
 	case 36:
-		val |= PIPEMISC_DITHER_12_BPC;
+		/* Port output 12BPC defined for ADLP+ */
+		if (DISPLAY_VER(dev_priv) > 12)
+			val |= PIPEMISC_12_BPC_ADLP;
 		break;
 	default:
 		MISSING_CASE(crtc_state->pipe_bpp);
@@ -5900,15 +5902,27 @@ int bdw_get_pipemisc_bpp(struct intel_crtc *crtc)
 
 	tmp = intel_de_read(dev_priv, PIPEMISC(crtc->pipe));
 
-	switch (tmp & PIPEMISC_DITHER_BPC_MASK) {
-	case PIPEMISC_DITHER_6_BPC:
+	switch (tmp & PIPEMISC_BPC_MASK) {
+	case PIPEMISC_6_BPC:
 		return 18;
-	case PIPEMISC_DITHER_8_BPC:
+	case PIPEMISC_8_BPC:
 		return 24;
-	case PIPEMISC_DITHER_10_BPC:
+	case PIPEMISC_10_BPC:
 		return 30;
-	case PIPEMISC_DITHER_12_BPC:
-		return 36;
+	/*
+	 * PORT OUTPUT 12 BPC defined for ADLP+.
+	 *
+	 * TODO:
+	 * For previous platforms with DSI interface, bits 5:7
+	 * are used for storing pipe_bpp irrespective of dithering.
+	 * Since the value of 12 BPC is not defined for these bits
+	 * on older platforms, need to find a workaround for 12 BPC
+	 * MIPI DSI HW readout.
+	 */
+	case PIPEMISC_12_BPC_ADLP:
+		if (DISPLAY_VER(dev_priv) > 12)
+			return 36;
+		fallthrough;
 	default:
 		MISSING_CASE(tmp);
 		return 0;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 167eaa87501b..664970f2bc62 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6203,11 +6203,17 @@ enum {
 #define   PIPEMISC_HDR_MODE_PRECISION	(1 << 23) /* icl+ */
 #define   PIPEMISC_OUTPUT_COLORSPACE_YUV  (1 << 11)
 #define   PIPEMISC_PIXEL_ROUNDING_TRUNC	REG_BIT(8) /* tgl+ */
-#define   PIPEMISC_DITHER_BPC_MASK	(7 << 5)
-#define   PIPEMISC_DITHER_8_BPC		(0 << 5)
-#define   PIPEMISC_DITHER_10_BPC	(1 << 5)
-#define   PIPEMISC_DITHER_6_BPC		(2 << 5)
-#define   PIPEMISC_DITHER_12_BPC	(3 << 5)
+/*
+ * For Display < 13, Bits 5-7 of PIPE MISC represent DITHER BPC with
+ * valid values of: 6, 8, 10 BPC.
+ * ADLP+, the bits 5-7 represent PORT OUTPUT BPC with valid values of:
+ * 6, 8, 10, 12 BPC.
+ */
+#define   PIPEMISC_BPC_MASK		(7 << 5)
+#define   PIPEMISC_8_BPC		(0 << 5)
+#define   PIPEMISC_10_BPC		(1 << 5)
+#define   PIPEMISC_6_BPC		(2 << 5)
+#define   PIPEMISC_12_BPC_ADLP		(4 << 5) /* adlp+ */
 #define   PIPEMISC_DITHER_ENABLE	(1 << 4)
 #define   PIPEMISC_DITHER_TYPE_MASK	(3 << 2)
 #define   PIPEMISC_DITHER_TYPE_SP	(0 << 2)
-- 
2.25.1

