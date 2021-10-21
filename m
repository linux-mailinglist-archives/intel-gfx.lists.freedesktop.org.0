Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD56435FF1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 13:06:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 629EB6E42A;
	Thu, 21 Oct 2021 11:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA3C16E42A
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 11:06:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="315210818"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="315210818"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 04:06:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="595060691"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga004.jf.intel.com with ESMTP; 21 Oct 2021 04:06:21 -0700
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, Kai Vehmanen <kai.vehmanen@linux.intel.com>
Date: Thu, 21 Oct 2021 13:59:15 +0300
Message-Id: <20211021105915.4128635-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/display: program audio CDCLK-TS for
 keepalives
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

XE_LPD display adds support for display audio codec keepalive feature.
This feature works also when display codec is in D3 state and the audio
link is off (BCLK off). To enable this functionality, display driver
must update the AUD_TS_CDCLK_M/N registers whenever CDCLK is changed.
Actual timestamps are generated only when the audio codec driver
specifically enables the KeepAlive (KAE) feature.

This patch adds new hooks to intel_set_cdclk() in order to inform
display audio driver when CDCLK change is started and when it is
complete.

Bspec: 53679
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 37 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_audio.h |  2 ++
 drivers/gpu/drm/i915/display/intel_cdclk.c |  5 +++
 drivers/gpu/drm/i915/i915_reg.h            |  4 +++
 4 files changed, 48 insertions(+)

Changes V2->V3:
 - added review sign-offs by Uma and Ville
 - rebase to latest upstream, no other changes
Changes V1->V2:
 - addressed review comments Jani Nikula (Sep 10)
 - added an initial call to intel_audio_cdclk_change_post() so 
   that AUD_CDCLK initial configuration is always performance


diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 03e8c05a74f6..a96523f1b052 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -947,6 +947,40 @@ void intel_init_audio_hooks(struct drm_i915_private *dev_priv)
 	}
 }
 
+struct aud_ts_cdclk_m_n {
+	u8 m;
+	u16 n;
+};
+
+void intel_audio_cdclk_change_pre(struct drm_i915_private *i915)
+{
+	if (DISPLAY_VER(i915) >= 13)
+		intel_de_rmw(i915, AUD_TS_CDCLK_M, AUD_TS_CDCLK_M_EN, 0);
+}
+
+static void get_aud_ts_cdclk_m_n(int refclk, int cdclk, struct aud_ts_cdclk_m_n *aud_ts)
+{
+	if (refclk == 24000)
+		aud_ts->m = 12;
+	else
+		aud_ts->m = 15;
+
+	aud_ts->n = cdclk * aud_ts->m / 24000;
+}
+
+void intel_audio_cdclk_change_post(struct drm_i915_private *i915)
+{
+	struct aud_ts_cdclk_m_n aud_ts;
+
+	if (DISPLAY_VER(i915) >= 13) {
+		get_aud_ts_cdclk_m_n(i915->cdclk.hw.ref, i915->cdclk.hw.cdclk, &aud_ts);
+
+		intel_de_write(i915, AUD_TS_CDCLK_N, aud_ts.n);
+		intel_de_write(i915, AUD_TS_CDCLK_M, aud_ts.m | AUD_TS_CDCLK_M_EN);
+		drm_dbg_kms(&i915->drm, "aud_ts_cdclk set to M=%u, N=%u\n", aud_ts.m, aud_ts.n);
+	}
+}
+
 static int glk_force_audio_cdclk_commit(struct intel_atomic_state *state,
 					struct intel_crtc *crtc,
 					bool enable)
@@ -1330,6 +1364,9 @@ static void i915_audio_component_init(struct drm_i915_private *dev_priv)
 		dev_priv->audio_freq_cntrl = aud_freq;
 	}
 
+	/* init with current cdclk */
+	intel_audio_cdclk_change_post(dev_priv);
+
 	dev_priv->audio_component_registered = true;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index a3657c7a7ba2..dcb259dd2da7 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -18,6 +18,8 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 void intel_audio_codec_disable(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *old_crtc_state,
 			       const struct drm_connector_state *old_conn_state);
+void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
+void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
 void intel_audio_init(struct drm_i915_private *dev_priv);
 void intel_audio_deinit(struct drm_i915_private *dev_priv);
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 9e466d829019..63d1e3b225c6 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -24,6 +24,7 @@
 #include <linux/time.h>
 
 #include "intel_atomic.h"
+#include "intel_audio.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_de.h"
@@ -1975,6 +1976,8 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 		intel_psr_pause(intel_dp);
 	}
 
+	intel_audio_cdclk_change_pre(dev_priv);
+
 	/*
 	 * Lock aux/gmbus while we change cdclk in case those
 	 * functions use cdclk. Not all platforms/ports do,
@@ -2003,6 +2006,8 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 		intel_psr_resume(intel_dp);
 	}
 
+	intel_audio_cdclk_change_post(dev_priv);
+
 	if (drm_WARN(&dev_priv->drm,
 		     intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config),
 		     "cdclk state doesn't match!\n")) {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d9f7a729333f..66b99dfc9e9d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9781,6 +9781,10 @@ enum {
 #define AUD_PIN_BUF_CTL		_MMIO(0x48414)
 #define   AUD_PIN_BUF_ENABLE		REG_BIT(31)
 
+#define AUD_TS_CDCLK_M			_MMIO(0x65ea0)
+#define   AUD_TS_CDCLK_M_EN		REG_BIT(31)
+#define AUD_TS_CDCLK_N			_MMIO(0x65ea4)
+
 /* Display Audio Config Reg */
 #define AUD_CONFIG_BE			_MMIO(0x65ef0)
 #define HBLANK_EARLY_ENABLE_ICL(pipe)		(0x1 << (20 - (pipe)))
-- 
2.33.0

