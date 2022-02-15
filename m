Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D94084B745C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 19:32:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15C5010E535;
	Tue, 15 Feb 2022 18:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AEA610E51C
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 18:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644949949; x=1676485949;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jRZddujSmZ3w7MFniIH8TRg3PRpSwpbi30FIxk2NrpA=;
 b=hBaiEchcWEsVNnrL4XAvVq/+B2aazq5OzKuGVLnp83oITKkcPbMtSCm9
 Qn9iT3f+PUSv88njV9UCl36iImc6ypn7IJXfbngsRIjumQ/gMnvNXYQpY
 w9l93I2bewkD0BgrybRrtTK2YPDezryqpIPIqMG2RgL8OUJ6Z5sbekGVd
 yk1x51gwoBPz1i/2vakz5pFwqbdiKhQeYcX6ac9aWdeYxVsQTrlmPSt5K
 kxugFWSonsWn01iTtlhbxm7/xlT5Deis5jZyhgmZtwwSSsIXIyGP7aSNI
 1RiFDLD4mE5E52d03CfGn9DH45oo9mx6+ZR2UwbShpRzCvu1nQ5AGVrEC w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="248022733"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="248022733"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 10:32:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="497364554"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 15 Feb 2022 10:32:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Feb 2022 20:32:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 20:32:02 +0200
Message-Id: <20220215183208.6143-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/12] drm/i915: Extract
 intel_crtc_compute_pipe_src()
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

intel_crtc_compute_config() doesn't really tell a unified story.
Let's chunk it up into pieces. We'll start with
intel_crtc_compute_pipe_src().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 62 ++++++++++++--------
 1 file changed, 39 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 19417ff975c6..3d3fddd3f452 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2798,18 +2798,55 @@ static void intel_encoder_get_config(struct intel_encoder *encoder,
 	intel_crtc_readout_derived_state(crtc_state);
 }
 
+static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	if (crtc_state->bigjoiner)
+		crtc_state->pipe_src_w /= 2;
+
+	/*
+	 * Pipe horizontal size must be even in:
+	 * - DVO ganged mode
+	 * - LVDS dual channel mode
+	 * - Double wide pipe
+	 */
+	if (crtc_state->pipe_src_w & 1) {
+		if (crtc_state->double_wide) {
+			drm_dbg_kms(&i915->drm,
+				    "[CRTC:%d:%s] Odd pipe source width not supported with double wide pipe\n",
+				    crtc->base.base.id, crtc->base.name);
+			return -EINVAL;
+		}
+
+		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
+		    intel_is_dual_link_lvds(i915)) {
+			drm_dbg_kms(&i915->drm,
+				    "[CRTC:%d:%s] Odd pipe source width not supported with dual link LVDS\n",
+				    crtc->base.base.id, crtc->base.name);
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
 static int intel_crtc_compute_config(struct intel_crtc *crtc,
 				     struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
 	int clock_limit = i915->max_dotclk_freq;
+	int ret;
+
+	ret = intel_crtc_compute_pipe_src(crtc_state);
+	if (ret)
+		return ret;
 
 	drm_mode_copy(pipe_mode, &crtc_state->hw.adjusted_mode);
 
 	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
-	if (crtc_state->bigjoiner)
-		crtc_state->pipe_src_w /= 2;
 
 	intel_splitter_adjust_timings(crtc_state, pipe_mode);
 
@@ -2837,27 +2874,6 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 		return -EINVAL;
 	}
 
-	/*
-	 * Pipe horizontal size must be even in:
-	 * - DVO ganged mode
-	 * - LVDS dual channel mode
-	 * - Double wide pipe
-	 */
-	if (crtc_state->pipe_src_w & 1) {
-		if (crtc_state->double_wide) {
-			drm_dbg_kms(&i915->drm,
-				    "Odd pipe source width not supported with double wide pipe\n");
-			return -EINVAL;
-		}
-
-		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
-		    intel_is_dual_link_lvds(i915)) {
-			drm_dbg_kms(&i915->drm,
-				    "Odd pipe source width not supported with dual link LVDS\n");
-			return -EINVAL;
-		}
-	}
-
 	intel_crtc_compute_pixel_rate(crtc_state);
 
 	if (crtc_state->has_pch_encoder)
-- 
2.34.1

