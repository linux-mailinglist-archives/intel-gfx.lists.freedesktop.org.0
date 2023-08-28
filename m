Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1A978A54E
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 07:42:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 752B710E04D;
	Mon, 28 Aug 2023 05:42:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B0C410E04B
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 05:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693201313; x=1724737313;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mJze8PHUwP/FkrJNl/7Rkd+oF9TeEPxZBXeSofsWqLo=;
 b=WSORkBeAm9FvfHKPeTlRIkcQHGekQeJItLaoQZW6ntAM6VAni/Vhmu56
 y6zKQcAmgF4MF+YgS8bt1WwQDW3ZYgq2sT91E6HPo4zn4PeqBwHOWMrqF
 r6dSsWkWgJyXf27/LZc6yv6p6K6+1b2SonKOCAIgzS0s2W+nIwBKSjl8g
 Hz4MvH0AXnVCngiS/C8poTxEF2aggUiyXXOvx37vJlQOWtuHIHA9sjmbp
 cMS3eoLo99/9F4YfglFvjMhpE6NaKN+LuZD8R7SP6vO5qaNwlyyheIOks
 zFU/c+UhweNMd9I+At8phwIC6jvGMv9nTNeTWC8cwpw+DZwRfjGcU6Ti5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="372420509"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="372420509"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 22:41:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="852707960"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="852707960"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 27 Aug 2023 22:41:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Aug 2023 08:41:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 08:41:37 +0300
Message-ID: <20230828054140.28054-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
References: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Extract
 intel_crtc_vblank_evade_scanlines()
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

Pull the vblank evasion scanline calculations into their own helper
to declutter intel_pipe_update_start() a bit.

Cc: Manasi Navare <navaremanasi@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 53 +++++++++++++----------
 1 file changed, 31 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 461949b48411..e46a15d59d79 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -468,6 +468,36 @@ static int intel_mode_vblank_start(const struct drm_display_mode *mode)
 	return vblank_start;
 }
 
+static void intel_crtc_vblank_evade_scanlines(struct intel_atomic_state *state,
+					      struct intel_crtc *crtc,
+					      int *min, int *max, int *vblank_start)
+{
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct drm_display_mode *adjusted_mode = &new_crtc_state->hw.adjusted_mode;
+
+	if (new_crtc_state->vrr.enable) {
+		if (intel_vrr_is_push_sent(new_crtc_state))
+			*vblank_start = intel_vrr_vmin_vblank_start(new_crtc_state);
+		else
+			*vblank_start = intel_vrr_vmax_vblank_start(new_crtc_state);
+	} else {
+		*vblank_start = intel_mode_vblank_start(adjusted_mode);
+	}
+
+	/* FIXME needs to be calibrated sensibly */
+	*min = *vblank_start - intel_usecs_to_scanlines(adjusted_mode,
+							VBLANK_EVASION_TIME_US);
+	*max = *vblank_start - 1;
+
+	/*
+	 * M/N is double buffered on the transcoder's undelayed vblank,
+	 * so with seamless M/N we must evade both vblanks.
+	 */
+	if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state))
+		*min -= adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
+}
+
 /**
  * intel_pipe_update_start() - start update of a set of display registers
  * @state: the atomic state
@@ -487,7 +517,6 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	const struct drm_display_mode *adjusted_mode = &new_crtc_state->hw.adjusted_mode;
 	long timeout = msecs_to_jiffies_timeout(1);
 	int scanline, min, max, vblank_start;
 	wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
@@ -503,27 +532,7 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	if (intel_crtc_needs_vblank_work(new_crtc_state))
 		intel_crtc_vblank_work_init(new_crtc_state);
 
-	if (new_crtc_state->vrr.enable) {
-		if (intel_vrr_is_push_sent(new_crtc_state))
-			vblank_start = intel_vrr_vmin_vblank_start(new_crtc_state);
-		else
-			vblank_start = intel_vrr_vmax_vblank_start(new_crtc_state);
-	} else {
-		vblank_start = intel_mode_vblank_start(adjusted_mode);
-	}
-
-	/* FIXME needs to be calibrated sensibly */
-	min = vblank_start - intel_usecs_to_scanlines(adjusted_mode,
-						      VBLANK_EVASION_TIME_US);
-	max = vblank_start - 1;
-
-	/*
-	 * M/N is double buffered on the transcoder's undelayed vblank,
-	 * so with seamless M/N we must evade both vblanks.
-	 */
-	if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state))
-		min -= adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
-
+	intel_crtc_vblank_evade_scanlines(state, crtc, &min, &max, &vblank_start);
 	if (min <= 0 || max <= 0)
 		goto irq_disable;
 
-- 
2.41.0

