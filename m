Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EBB99C84F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 13:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67D5F10E42B;
	Mon, 14 Oct 2024 11:12:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HHXFpAVb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1BA610E423
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2024 11:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728904352; x=1760440352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LQE6BKg3fUvrFZnL34rj5wBTL8ydCGLtZvziFCsKI2E=;
 b=HHXFpAVbCDZn0q/PinEesYHW9FdSWAR1KZPWSeB4qQlvh1aEjvuDzH32
 uI0fzWYrQMhMDHXTSUzSeKKGrNlQkqgg6F09sZ4u6/HeJ32EDk4nZc/dh
 pUAX6+3AEj5e1ppz06s5cL7SlkDgquT/X4lQavjsheQkf3i5oihuWxNku
 Zmz/T0x3mAloc8snlr8zmmplpHmJMY8CZpydp0plSrDBI/ArSPTcS9HL8
 W70ZvFQldufBDtDp3q+/0cmeUMhPuLH3CgRN0RYdFs1PB1CfdhktltJu9
 CKr6d2lFH2e+ie/wG0G+MgRvdbJNu3lhLJ6J9MNZiUQHrzoi/Cc9LmnHQ A==;
X-CSE-ConnectionGUID: 0LnnXwA0TmqdxNzglTBmJQ==
X-CSE-MsgGUID: AxwN0GxNTmuofk3eGFx52A==
X-IronPort-AV: E=McAfee;i="6700,10204,11224"; a="28377960"
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="28377960"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 04:12:32 -0700
X-CSE-ConnectionGUID: nbfSZTCkTQ+6V0Y2uIPHSQ==
X-CSE-MsgGUID: +1v0WSo8TbKYz3/fHvO9hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="77473349"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa010.jf.intel.com with ESMTP; 14 Oct 2024 04:12:30 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v2 5/5] drm/i915/display: Load the lut values and enable
 sharpness
Date: Mon, 14 Oct 2024 16:43:02 +0530
Message-Id: <20241014111302.95362-6-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241014111302.95362-1-nemesa.garg@intel.com>
References: <20241014111302.95362-1-nemesa.garg@intel.com>
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

Load the lut values during pipe enable.

v2: Add the display version check

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c        |  3 +++
 drivers/gpu/drm/i915/display/intel_display.c     |  6 ++++++
 .../gpu/drm/i915/display/intel_display_types.h   |  2 ++
 drivers/gpu/drm/i915/display/skl_scaler.c        | 16 +++++++++++++++-
 4 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 1b578cad2813..a8aaea0d2932 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -379,6 +379,9 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 	drm_WARN_ON(&dev_priv->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
 
+	if (DISPLAY_VER(dev_priv) >= 20)
+		drm_crtc_create_sharpness_strength_property(&crtc->base);
+
 	return 0;
 
 fail:
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f85ed0c9a94d..e8044c0275dd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1783,6 +1783,9 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 			intel_crtc_wait_for_next_vblank(wa_crtc);
 		}
 	}
+
+	if (new_crtc_state->hw.casf_params.strength_changed)
+		intel_filter_lut_load(crtc, new_crtc_state);
 }
 
 void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
@@ -6934,6 +6937,9 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 			intel_vrr_set_transcoder_timings(new_crtc_state);
 	}
 
+	if (intel_casf_strength_changed(state))
+		intel_casf_enable(new_crtc_state);
+
 	intel_fbc_update(state, crtc);
 
 	drm_WARN_ON(&i915->drm, !intel_display_power_is_enabled(i915, POWER_DOMAIN_DC_OFF));
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index de3867faa4d7..56022193d4a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1047,6 +1047,8 @@ struct intel_casf {
 	struct scaler_filter_coeff coeff[SCALER_FILTER_NUM_TAPS];
 	u8 win_size;
 	bool need_scaler;
+	bool strength_changed;
+	u8 strength;
 };
 
 struct intel_crtc_state {
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 1cd2f7d6c080..4ee2f6e67d97 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -7,6 +7,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
+#include "intel_casf_regs.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 
@@ -914,15 +915,17 @@ void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state)
 
 void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	int id = -1;
 	int i;
 
 	/* find scaler attached to this pipe */
 	for (i = 0; i < crtc->num_scalers; i++) {
-		u32 ctl, pos, size;
+		u32 ctl, pos, size, sharp;
 
 		ctl = intel_de_read(dev_priv, SKL_PS_CTRL(crtc->pipe, i));
 		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) != (PS_SCALER_EN | PS_BINDING_PIPE))
@@ -930,6 +933,17 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 
 		id = i;
 
+		if (DISPLAY_VER(dev_priv) >= 20) {
+			sharp = intel_de_read(dev_priv, SHARPNESS_CTL(display, cpu_transcoder));
+			if (sharp & FILTER_EN) {
+				crtc_state->hw.casf_params.strength =
+					REG_FIELD_GET(FILTER_STRENGTH_MASK, sharp) - 16;
+				crtc_state->hw.casf_params.need_scaler = true;
+				crtc_state->hw.casf_params.win_size =
+					REG_FIELD_GET(FILTER_SIZE_MASK, sharp);
+			}
+		}
+
 		if (!crtc_state->hw.casf_params.need_scaler)
 			crtc_state->pch_pfit.enabled = true;
 
-- 
2.25.1

