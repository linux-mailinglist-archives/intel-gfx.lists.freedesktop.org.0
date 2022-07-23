Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DB557EA99
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jul 2022 02:20:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09B7E8DBF0;
	Sat, 23 Jul 2022 00:20:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69C8F8D8BE
 for <Intel-gfx@lists.freedesktop.org>; Sat, 23 Jul 2022 00:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658535621; x=1690071621;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bssYbK4P9ObaS8jQT1FAifKWAguhbvIx+W83m5U36fQ=;
 b=iHsGd6i5mMpf7kBTm23TZDGscZ9FjZW7LiZh2QZH26xGf2ZM9djVbvDZ
 Ldog6k3viK/N6pFla8d3R2HRIOXtKH1iq5QHy7j1mJQ/QFcP2Xjz4c9Lg
 y0nmFekXI1esv5HJYS0KPtczq4F5KLFyV+lucz/HscIofEk8yl9ceHuA2
 Xi/6W5iiyWmsgrRLLiMj9IEeGbVpQZlnQ4qrknUU13kvejXyBEa002Yzi
 GsMcnvC3iSHmljDUVec9hFKF85yr9OTYmqJeBz1FGpwhbjDtIEyQhLH5N
 Bu0HmZBoeSfxjvu61PwpkO4y0pVA3KPwBDWEFxc6h4HoWwIx//jmjhRXz g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10416"; a="288184857"
X-IronPort-AV: E=Sophos;i="5.93,186,1654585200"; d="scan'208";a="288184857"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 17:20:20 -0700
X-IronPort-AV: E=Sophos;i="5.93,186,1654585200"; d="scan'208";a="626754552"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 17:20:20 -0700
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jul 2022 17:18:59 -0700
Message-Id: <20220723001859.3883378-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Audio keep alive timestamp
 cdclk divisors
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

Use BSPEC values for the Audio Keep alive M and N values as included in
the cdclk BSPEC pages for display > 13

BSPEC: 54034, 55409
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Taylor, Clinton A <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 23 +------
 drivers/gpu/drm/i915/display/intel_cdclk.c | 79 ++++++++++++++--------
 drivers/gpu/drm/i915/display/intel_cdclk.h |  1 +
 3 files changed, 51 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 6c9ee905f132..cb45be5edfec 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -945,37 +945,16 @@ void intel_audio_hooks_init(struct drm_i915_private *dev_priv)
 	}
 }
 
-struct aud_ts_cdclk_m_n {
-	u8 m;
-	u16 n;
-};
-
 void intel_audio_cdclk_change_pre(struct drm_i915_private *i915)
 {
 	if (DISPLAY_VER(i915) >= 13)
 		intel_de_rmw(i915, AUD_TS_CDCLK_M, AUD_TS_CDCLK_M_EN, 0);
 }
 
-static void get_aud_ts_cdclk_m_n(int refclk, int cdclk, struct aud_ts_cdclk_m_n *aud_ts)
-{
-	if (refclk == 24000)
-		aud_ts->m = 12;
-	else
-		aud_ts->m = 15;
-
-	aud_ts->n = cdclk * aud_ts->m / 24000;
-}
-
 void intel_audio_cdclk_change_post(struct drm_i915_private *i915)
 {
-	struct aud_ts_cdclk_m_n aud_ts;
-
 	if (DISPLAY_VER(i915) >= 13) {
-		get_aud_ts_cdclk_m_n(i915->cdclk.hw.ref, i915->cdclk.hw.cdclk, &aud_ts);
-
-		intel_de_write(i915, AUD_TS_CDCLK_N, aud_ts.n);
-		intel_de_write(i915, AUD_TS_CDCLK_M, aud_ts.m | AUD_TS_CDCLK_M_EN);
-		drm_dbg_kms(&i915->drm, "aud_ts_cdclk set to M=%u, N=%u\n", aud_ts.m, aud_ts.n);
+		intel_update_audio_keep_alive(i915);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 86a22c3766e5..57021ecad509 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -37,6 +37,7 @@
 #include "intel_pcode.h"
 #include "intel_psr.h"
 #include "vlv_sideband.h"
+#include "intel_audio_regs.h"
 
 /**
  * DOC: CDCLK / RAWCLK
@@ -1231,6 +1232,8 @@ struct intel_cdclk_vals {
 	u16 waveform;
 	u8 divider;	/* CD2X divider * 2 */
 	u8 ratio;
+	u16 aud_m;
+	u16 aud_n;
 };
 
 static const struct intel_cdclk_vals bxt_cdclk_table[] = {
@@ -1313,40 +1316,40 @@ static const struct intel_cdclk_vals adlp_a_step_cdclk_table[] = {
 };
 
 static const struct intel_cdclk_vals adlp_cdclk_table[] = {
-	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
-	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
-	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
-	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
-	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
-
-	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
-	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
-	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
-	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
-	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
-
-	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
-	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
-	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
-	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
-	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
+	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27, .aud_m = 0x3C, .aud_n = 0x140 },
+	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20, .aud_m = 0x3C, .aud_n = 0x1E0 },
+	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32, .aud_m = 0x3C, .aud_n = 0x300 },
+	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58, .aud_m = 0x3C, .aud_n = 0x570 },
+	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68, .aud_m = 0x3C, .aud_n = 0x660 },
+
+	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22, .aud_m = 0x3C, .aud_n = 0x1B8 },
+	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16, .aud_m = 0x3C, .aud_n = 0x1E0  },
+	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26, .aud_m = 0x3C, .aud_n = 0x30C },
+	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46, .aud_m = 0x3C, .aud_n = 0x564 },
+	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54, .aud_m = 0x3C, .aud_n = 0x654 },
+
+	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14, .aud_m = 0x3C, .aud_n = 0x1C0 },
+	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10, .aud_m = 0x3C, .aud_n = 0x1E0 },
+	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .aud_m = 0x3C, .aud_n = 0x300 },
+	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .aud_m = 0x3C, .aud_n = 0x570 },
+	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .aud_m = 0x3C, .aud_n = 0x660 },
 	{}
 };
 
 static const struct intel_cdclk_vals dg2_cdclk_table[] = {
-	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
-	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
-	{ .refclk = 38400, .cdclk = 244800, .divider = 2, .ratio = 34, .waveform = 0xa4a4 },
-	{ .refclk = 38400, .cdclk = 285600, .divider = 2, .ratio = 34, .waveform = 0xa54a },
-	{ .refclk = 38400, .cdclk = 326400, .divider = 2, .ratio = 34, .waveform = 0xaaaa },
-	{ .refclk = 38400, .cdclk = 367200, .divider = 2, .ratio = 34, .waveform = 0xad5a },
-	{ .refclk = 38400, .cdclk = 408000, .divider = 2, .ratio = 34, .waveform = 0xb6b6 },
-	{ .refclk = 38400, .cdclk = 448800, .divider = 2, .ratio = 34, .waveform = 0xdbb6 },
-	{ .refclk = 38400, .cdclk = 489600, .divider = 2, .ratio = 34, .waveform = 0xeeee },
-	{ .refclk = 38400, .cdclk = 530400, .divider = 2, .ratio = 34, .waveform = 0xf7de },
-	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
-	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
-	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888, .aud_m = 0x3C, .aud_n = 0x198 },
+	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248, .aud_m = 0x3C, .aud_n = 0x1FE },
+	{ .refclk = 38400, .cdclk = 244800, .divider = 2, .ratio = 34, .waveform = 0xa4a4, .aud_m = 0x3C, .aud_n = 0x264 },
+	{ .refclk = 38400, .cdclk = 285600, .divider = 2, .ratio = 34, .waveform = 0xa54a, .aud_m = 0x3C, .aud_n = 0x2CA },
+	{ .refclk = 38400, .cdclk = 326400, .divider = 2, .ratio = 34, .waveform = 0xaaaa, .aud_m = 0x3C, .aud_n = 0x330 },
+	{ .refclk = 38400, .cdclk = 367200, .divider = 2, .ratio = 34, .waveform = 0xad5a, .aud_m = 0x3C, .aud_n = 0x396 },
+	{ .refclk = 38400, .cdclk = 408000, .divider = 2, .ratio = 34, .waveform = 0xb6b6, .aud_m = 0x3C, .aud_n = 0x3FC },
+	{ .refclk = 38400, .cdclk = 448800, .divider = 2, .ratio = 34, .waveform = 0xdbb6, .aud_m = 0x3C, .aud_n = 0x462 },
+	{ .refclk = 38400, .cdclk = 489600, .divider = 2, .ratio = 34, .waveform = 0xeeee, .aud_m = 0x3C, .aud_n = 0x4C8 },
+	{ .refclk = 38400, .cdclk = 530400, .divider = 2, .ratio = 34, .waveform = 0xf7de, .aud_m = 0x3C, .aud_n = 0x52E },
+	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe, .aud_m = 0x3C, .aud_n = 0x594 },
+	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe, .aud_m = 0x3C, .aud_n = 0x5FA },
+	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff, .aud_m = 0x3C, .aud_n = 0x660 },
 	{}
 };
 
@@ -2189,6 +2192,22 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 	}
 }
 
+void intel_update_audio_keep_alive(struct drm_i915_private *i915)
+{
+	const struct intel_cdclk_vals *table = i915->cdclk.table;
+	int i;
+
+	for (i = 0; table[i].cdclk; i++)
+		if (table[i].cdclk == i915->cdclk.hw.cdclk) {
+			intel_de_write(i915, AUD_TS_CDCLK_N, table[i].aud_n);
+			intel_de_write(i915, AUD_TS_CDCLK_M, table[i].aud_m | AUD_TS_CDCLK_M_EN);
+			drm_dbg_kms(&i915->drm, "aud_ts_cdclk set to M=%u, N=%u\n", table[i].aud_m, table[i].aud_n);
+			return;
+		}
+
+	drm_WARN(&i915->drm, 1, "aud_ts_cdclk %d not valid\n", i915->cdclk.hw.cdclk);
+}
+
 static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index b535cf6a7d9e..c9e0d5a21f19 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -82,5 +82,6 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
 	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj))
 
 int intel_cdclk_init(struct drm_i915_private *dev_priv);
+void intel_update_audio_keep_alive(struct drm_i915_private *dev_priv);
 
 #endif /* __INTEL_CDCLK_H__ */
-- 
2.25.1

