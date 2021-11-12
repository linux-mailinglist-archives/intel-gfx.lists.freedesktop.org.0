Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFF044ED5A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 20:38:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E016F471;
	Fri, 12 Nov 2021 19:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10B7D6E288
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Nov 2021 19:38:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10166"; a="213229427"
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="213229427"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 11:38:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="643700221"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 12 Nov 2021 11:38:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Nov 2021 21:38:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Nov 2021 21:38:09 +0200
Message-Id: <20211112193813.8224-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/9] drm/i915: Clean up
 PCH_TRANSCONF/TRANS_DP_CTL bit defines
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

Use REG_BIT & co. for PCH_TRANSCONF/TRANS_DP_CTL bits, and
adjust the naming a some bits to be more consistent.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_pch_display.c  | 13 +++--
 drivers/gpu/drm/i915/i915_reg.h               | 58 +++++++++----------
 2 files changed, 33 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 81ab761251ae..155c2d19a6bb 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -166,11 +166,11 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 	if ((pipeconf_val & PIPECONF_INTERLACE_MASK_ILK) == PIPECONF_INTERLACE_IF_ID_ILK) {
 		if (HAS_PCH_IBX(dev_priv) &&
 		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO))
-			val |= TRANS_LEGACY_INTERLACED_ILK;
+			val |= TRANS_INTERLACE_LEGACY_VSYNC_IBX;
 		else
-			val |= TRANS_INTERLACED;
+			val |= TRANS_INTERLACE_INTERLACED;
 	} else {
-		val |= TRANS_PROGRESSIVE;
+		val |= TRANS_INTERLACE_PROGRESSIVE;
 	}
 
 	intel_de_write(dev_priv, reg, val | TRANS_ENABLE);
@@ -279,7 +279,8 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 
 		temp = intel_de_read(dev_priv, reg);
 		temp &= ~(TRANS_DP_PORT_SEL_MASK |
-			  TRANS_DP_SYNC_MASK |
+			  TRANS_DP_VSYNC_ACTIVE_HIGH |
+			  TRANS_DP_HSYNC_ACTIVE_HIGH |
 			  TRANS_DP_BPC_MASK);
 		temp |= TRANS_DP_OUTPUT_ENABLE;
 		temp |= bpc << 9; /* same format but at 11:9 */
@@ -423,9 +424,9 @@ static void lpt_enable_pch_transcoder(struct drm_i915_private *dev_priv,
 	pipeconf_val = intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
 
 	if ((pipeconf_val & PIPECONF_INTERLACE_MASK_HSW) == PIPECONF_INTERLACE_IF_ID_ILK)
-		val |= TRANS_INTERLACED;
+		val |= TRANS_INTERLACE_INTERLACED;
 	else
-		val |= TRANS_PROGRESSIVE;
+		val |= TRANS_INTERLACE_PROGRESSIVE;
 
 	intel_de_write(dev_priv, LPT_TRANSCONF, val);
 	if (intel_de_wait_for_set(dev_priv, LPT_TRANSCONF,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d2d5b2fa2a4a..eea009e76e15 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8994,22 +8994,19 @@ enum {
 #define _PCH_TRANSBCONF              0xf1008
 #define PCH_TRANSCONF(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSACONF, _PCH_TRANSBCONF)
 #define LPT_TRANSCONF		PCH_TRANSCONF(PIPE_A) /* lpt has only one transcoder */
-#define  TRANS_DISABLE          (0 << 31)
-#define  TRANS_ENABLE           (1 << 31)
-#define  TRANS_STATE_MASK       (1 << 30)
-#define  TRANS_STATE_DISABLE    (0 << 30)
-#define  TRANS_STATE_ENABLE     (1 << 30)
-#define  TRANS_FRAME_START_DELAY_MASK	(3 << 27) /* ibx */
-#define  TRANS_FRAME_START_DELAY(x)	((x) << 27) /* ibx: 0-3 */
-#define  TRANS_INTERLACE_MASK   (7 << 21)
-#define  TRANS_PROGRESSIVE      (0 << 21)
-#define  TRANS_INTERLACED       (3 << 21)
-#define  TRANS_LEGACY_INTERLACED_ILK (2 << 21)
-#define  TRANS_8BPC             (0 << 5)
-#define  TRANS_10BPC            (1 << 5)
-#define  TRANS_6BPC             (2 << 5)
-#define  TRANS_12BPC            (3 << 5)
-
+#define  TRANS_ENABLE			REG_BIT(31)
+#define  TRANS_STATE_ENABLE		REG_BIT(30)
+#define  TRANS_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27) /* ibx */
+#define  TRANS_FRAME_START_DELAY(x)	REG_FIELD_PREP(TRANS_FRAME_START_DELAY_MASK, (x)) /* ibx: 0-3 */
+#define  TRANS_INTERLACE_MASK		REG_GENMASK(23, 21)
+#define  TRANS_INTERLACE_PROGRESSIVE	REG_FIELD_PREP(TRANS_INTERLACE_MASK, 0)
+#define  TRANS_INTERLACE_LEGACY_VSYNC_IBX	REG_FIELD_PREP(TRANS_INTERLACE_MASK, 2) /* ibx */
+#define  TRANS_INTERLACE_INTERLACED	REG_FIELD_PREP(TRANS_INTERLACE_MASK, 3)
+#define  TRANS_BPC_MASK			REG_GENMASK(7, 5) /* ibx */
+#define  TRANS_BPC_8			REG_FIELD_PREP(TRANS_BPC_MASK, 0)
+#define  TRANS_BPC_10			REG_FIELD_PREP(TRANS_BPC_MASK, 1)
+#define  TRANS_BPC_6			REG_FIELD_PREP(TRANS_BPC_MASK, 2)
+#define  TRANS_BPC_12			REG_FIELD_PREP(TRANS_BPC_MASK, 3)
 #define _TRANSA_CHICKEN1	 0xf0060
 #define _TRANSB_CHICKEN1	 0xf1060
 #define TRANS_CHICKEN1(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN1, _TRANSB_CHICKEN1)
@@ -9219,22 +9216,19 @@ enum {
 #define _TRANS_DP_CTL_B		0xe1300
 #define _TRANS_DP_CTL_C		0xe2300
 #define TRANS_DP_CTL(pipe)	_MMIO_PIPE(pipe, _TRANS_DP_CTL_A, _TRANS_DP_CTL_B)
-#define  TRANS_DP_OUTPUT_ENABLE	(1 << 31)
-#define  TRANS_DP_PORT_SEL_MASK		(3 << 29)
-#define  TRANS_DP_PORT_SEL_NONE		(3 << 29)
-#define  TRANS_DP_PORT_SEL(port)	(((port) - PORT_B) << 29)
-#define  TRANS_DP_AUDIO_ONLY	(1 << 26)
-#define  TRANS_DP_ENH_FRAMING	(1 << 18)
-#define  TRANS_DP_8BPC		(0 << 9)
-#define  TRANS_DP_10BPC		(1 << 9)
-#define  TRANS_DP_6BPC		(2 << 9)
-#define  TRANS_DP_12BPC		(3 << 9)
-#define  TRANS_DP_BPC_MASK	(3 << 9)
-#define  TRANS_DP_VSYNC_ACTIVE_HIGH	(1 << 4)
-#define  TRANS_DP_VSYNC_ACTIVE_LOW	0
-#define  TRANS_DP_HSYNC_ACTIVE_HIGH	(1 << 3)
-#define  TRANS_DP_HSYNC_ACTIVE_LOW	0
-#define  TRANS_DP_SYNC_MASK	(3 << 3)
+#define  TRANS_DP_OUTPUT_ENABLE		REG_BIT(31)
+#define  TRANS_DP_PORT_SEL_MASK		REG_GENMASK(30, 29)
+#define  TRANS_DP_PORT_SEL_NONE		REG_FIELD_PREP(TRANS_DP_PORT_SEL_MASK, 3)
+#define  TRANS_DP_PORT_SEL(port)	REG_FIELD_PREP(TRANS_DP_PORT_SEL_MASK, (port) - PORT_B)
+#define  TRANS_DP_AUDIO_ONLY		REG_BIT(26)
+#define  TRANS_DP_ENH_FRAMING		REG_BIT(18)
+#define  TRANS_DP_BPC_MASK		REG_GENMASK(10, 9)
+#define  TRANS_DP_BPC_8			REG_FIELD_PREP(TRANS_DP_BPC_MASK, 0)
+#define  TRANS_DP_BPC_10		REG_FIELD_PREP(TRANS_DP_BPC_MASK, 1)
+#define  TRANS_DP_BPC_6			REG_FIELD_PREP(TRANS_DP_BPC_MASK, 2)
+#define  TRANS_DP_BPC_12		REG_FIELD_PREP(TRANS_DP_BPC_MASK, 3)
+#define  TRANS_DP_VSYNC_ACTIVE_HIGH	REG_BIT(4)
+#define  TRANS_DP_HSYNC_ACTIVE_HIGH	REG_BIT(3)
 
 #define _TRANS_DP2_CTL_A			0x600a0
 #define _TRANS_DP2_CTL_B			0x610a0
-- 
2.32.0

