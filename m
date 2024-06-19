Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8885190E261
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 06:40:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91BE610E0E6;
	Wed, 19 Jun 2024 04:40:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MdEOyxwb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C98110E0E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 04:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718772029; x=1750308029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0kPYNNCM/QxpCZUCm2f4riLufUij6VjnAuop8c1s2Qc=;
 b=MdEOyxwbT3ICCaO0mPO1Hc0euHaAayUg9R22/Q6wdWDRjX+VGmeA+LZU
 fA+n1JZLjwGHD/kl5udiGE5c2B8Ia9faJDxVKMWBylyioCj+vkhdebiag
 a4NVvtoRb2+6oGu7Rg52rXNigF/NM4rxYxd+nQmIGqPnvYmIFSxoauSrl
 x7FYdAJgdj1+iPZbrdeHSyyg38lP0hqFUudogqKvuodUDo3WyIv783eFr
 my/4perp5OyRW0/PXlguxe2uA2j2uiBdCo5bxPzNsxQwf9h/D14D8kd4w
 AQhHdB23K/fPMJ/peOFAsm3N19OKeMVFYMI+h+MDjg8LQrk+WLcMhq2zP g==;
X-CSE-ConnectionGUID: nbAZa0onTeG+gsOIs8+k4Q==
X-CSE-MsgGUID: 8dq+UlH5SMKVERQrWIfNsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="27106539"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="27106539"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 21:40:29 -0700
X-CSE-ConnectionGUID: DnDjy1BQTiKTVKZ1Yftd7w==
X-CSE-MsgGUID: 6hDhVfQWTq+GnWd9Rpm6YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="46163376"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa003.fm.intel.com with ESMTP; 18 Jun 2024 21:40:27 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, arun.r.murthy@intel.com, jouni.hogander@intel.com,
 jani.nikula@linux.intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
Date: Wed, 19 Jun 2024 10:07:56 +0530
Message-ID: <20240619043756.2068376-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240619043756.2068376-1-suraj.kandpal@intel.com>
References: <20240619043756.2068376-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

To reach PC10 when PKG_C_LATENCY is configure we must do the following
things
1) Enter PSR1 only when delayed_vblank < 6 lines and DC5 can be entered
2) Allow PSR2 deep sleep when DC5 can be entered
3) DC5 can be entered when all transocoder have either PSR1, PSR2 or
eDP 1.5 PR ALPM enabled and VBI is disabled and flips and pushes are
not happening.

--v2
-Switch condition and do an early return [Jani]
-Do some checks in compute_config [Jani]
-Do not use register reads as a method of checking states for
DPKGC or delayed vblank [Jani]
-Use another way to see is vblank interrupts are disabled or not [Jani]

WA: 16023497226
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 82 ++++++++++++++++++-
 2 files changed, 83 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 46b3cbeb4a82..031f8e889b65 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1708,6 +1708,8 @@ struct intel_psr {
 	bool sink_support;
 	bool source_support;
 	bool enabled;
+	bool delayed_vblank;
+	bool is_dpkgc_configured;
 	bool paused;
 	enum pipe pipe;
 	enum transcoder transcoder;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 080bf5e51148..4ddea6737386 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -808,6 +808,73 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 	return idle_frames;
 }
 
+static bool intel_psr_check_delayed_vblank_limit(struct intel_crtc_state *crtc_state)
+{
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	return (adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay) >= 6;
+}
+
+/*
+ * PKG_C_LATENCY is configured only when DISPLAY_VER >= 20 and
+ * VRR is not enabled
+ */
+static bool intel_psr_is_dpkgc_configured(struct drm_i915_private *i915)
+{
+	struct intel_crtc *intel_crtc;
+
+	if (DISPLAY_VER(i915) < 20)
+		return false;
+
+	for_each_intel_crtc(&i915->drm, intel_crtc) {
+		struct intel_crtc_state *crtc_state;
+
+		if (!intel_crtc->active)
+			continue;
+
+		crtc_state = intel_crtc->config;
+
+		if (crtc_state->vrr.enable)
+			return false;
+	}
+
+	return true;
+}
+
+/*
+ * DC5 entry is only possible if vblank interrupt is disabled
+ * and either psr1, psr2, edp 1.5 pr alpm is enabled on all
+ * enabled encoders.
+ */
+static bool intel_psr_is_dc5_entry_possible(struct drm_i915_private *i915)
+{
+	struct intel_crtc *intel_crtc;
+
+	for_each_intel_crtc(&i915->drm, intel_crtc) {
+		struct intel_encoder *encoder;
+		struct drm_crtc *crtc = &intel_crtc->base;
+		struct drm_vblank_crtc *vblank;
+
+		if (!intel_crtc->active)
+			continue;
+
+		vblank = drm_crtc_vblank_crtc(crtc);
+
+		if (vblank->enabled)
+			return false;
+
+		for_each_encoder_on_crtc(&i915->drm, crtc, encoder) {
+			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+			struct intel_psr *psr = &intel_dp->psr;
+
+			if (!psr->enabled)
+				return false;
+		}
+	}
+
+	return true;
+}
+
 static bool hsw_activate_psr1(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -815,6 +882,14 @@ static bool hsw_activate_psr1(struct intel_dp *intel_dp)
 	u32 max_sleep_time = 0x1f;
 	u32 val = EDP_PSR_ENABLE;
 
+	/* WA: 16023497226*/
+	if (intel_dp->psr.is_dpkgc_configured &&
+	    (intel_dp->psr.delayed_vblank || intel_psr_is_dc5_entry_possible(dev_priv))) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "PSR1 not activated as it doesn't meet requirements of WA:16023497226\n");
+		return false;
+	}
+
 	val |= EDP_PSR_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
 
 	if (DISPLAY_VER(dev_priv) < 20)
@@ -907,7 +982,10 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	u32 val = EDP_PSR2_ENABLE;
 	u32 psr_val = 0;
 
-	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
+	/* WA: 16023497226*/
+	if (intel_dp->psr.is_dpkgc_configured &&
+	    intel_psr_is_dc5_entry_possible(dev_priv))
+		val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
 
 	if (DISPLAY_VER(dev_priv) < 14 && !IS_ALDERLAKE_P(dev_priv))
 		val |= EDP_SU_TRACK_ENABLE;
@@ -1502,6 +1580,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 
 	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
+	intel_dp->psr.delayed_vblank = intel_psr_check_delayed_vblank_limit(crtc_state);
+	intel_dp->psr.is_dpkgc_configured = intel_psr_is_dpkgc_configured(dev_priv);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
-- 
2.43.2

