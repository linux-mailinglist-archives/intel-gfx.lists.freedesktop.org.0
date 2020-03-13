Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 569381849E4
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 15:48:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43C456EBE1;
	Fri, 13 Mar 2020 14:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02D046EBE1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 14:48:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 07:48:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="444331166"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga006.fm.intel.com with ESMTP; 13 Mar 2020 07:48:33 -0700
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	ville.syrjala@linux.intel.com
Date: Fri, 13 Mar 2020 16:48:20 +0200
Message-Id: <20200313144821.29592-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: use effective iDisp BCLK value
 for CDCLK calculation
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
Cc: tiwai@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of assuming maximum value of BCLK (96Mhz), use the actual value
as configured by BIOS.

Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 13 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_audio.h |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c |  6 ++++--
 drivers/gpu/drm/i915/i915_reg.h            |  2 ++
 4 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 19bf206037c2..e6389b9c2044 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -810,11 +810,22 @@ void intel_init_audio_hooks(struct drm_i915_private *dev_priv)
 	}
 }
 
+int intel_get_audio_bclk(struct drm_i915_private *dev_priv)
+{
+	if (INTEL_GEN(dev_priv) >= 9 &&
+	    (dev_priv->audio_freq_cntrl & AUD_FREQ_48M_BCLK))
+		return 48000;
+
+	return 96000;
+}
+
 static int glk_force_audio_cdclk_commit(struct intel_atomic_state *state,
 					struct intel_crtc *crtc,
 					bool enable)
 {
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_cdclk_state *cdclk_state;
+	int bclk = intel_get_audio_bclk(dev_priv);
 	int ret;
 
 	/* need to hold at least one crtc lock for the global state */
@@ -827,7 +838,7 @@ static int glk_force_audio_cdclk_commit(struct intel_atomic_state *state,
 		return PTR_ERR(cdclk_state);
 
 	cdclk_state->force_min_cdclk_changed = true;
-	cdclk_state->force_min_cdclk = enable ? 2 * 96000 : 0;
+	cdclk_state->force_min_cdclk = enable ? 2 * bclk : 0;
 
 	ret = intel_atomic_lock_global_state(&cdclk_state->base);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index a3657c7a7ba2..e4116d969d5e 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -20,5 +20,6 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 			       const struct drm_connector_state *old_conn_state);
 void intel_audio_init(struct drm_i915_private *dev_priv);
 void intel_audio_deinit(struct drm_i915_private *dev_priv);
+int intel_get_audio_bclk(struct drm_i915_private *dev_priv);
 
 #endif /* __INTEL_AUDIO_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 979a0241fdcb..98a45a296cbb 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -23,6 +23,7 @@
 
 #include "intel_atomic.h"
 #include "intel_cdclk.h"
+#include "intel_audio.h"
 #include "intel_display_types.h"
 #include "intel_sideband.h"
 
@@ -2001,6 +2002,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv =
 		to_i915(crtc_state->uapi.crtc->dev);
+	int bclk = intel_get_audio_bclk(dev_priv);
 	int min_cdclk;
 
 	if (!crtc_state->hw.enable)
@@ -2032,10 +2034,10 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 
 	/*
 	 * According to BSpec, "The CD clock frequency must be at least twice
-	 * the frequency of the Azalia BCLK." and BCLK is 96 MHz by default.
+	 * the frequency of the Azalia BCLK.".
 	 */
 	if (crtc_state->has_audio && INTEL_GEN(dev_priv) >= 9)
-		min_cdclk = max(2 * 96000, min_cdclk);
+		min_cdclk = max(2 * bclk, min_cdclk);
 
 	/*
 	 * "For DP audio configuration, cdclk frequency shall be set to
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 79ae9654dac9..aabcc31de676 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9294,6 +9294,8 @@ enum {
 #define   SKL_AUD_CODEC_WAKE_SIGNAL		(1 << 15)
 
 #define AUD_FREQ_CNTRL			_MMIO(0x65900)
+#define   AUD_FREQ_48M_BCLK		REG_BIT(3)
+#define   AUD_FREQ_96M_BCLK		REG_BIT(4)
 #define AUD_PIN_BUF_CTL		_MMIO(0x48414)
 #define   AUD_PIN_BUF_ENABLE		REG_BIT(31)
 
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
