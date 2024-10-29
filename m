Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF699B554E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:52:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E91410E70B;
	Tue, 29 Oct 2024 21:52:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EgfffRtM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6D3410E715
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730238763; x=1761774763;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Jm3PTjSmGGuEITx847OWdIhqc4TmirtDNoMIUZJgT3A=;
 b=EgfffRtMs08mycglEHuYYkHxNYZ9Pu08HL0PcPPKaIug7uhzk7LN6NpS
 6lBeSlZXD6pOi7uMPcMZfgRaUbe4xqWPwzCK3SfFn2bq90jT6xjQXXgOl
 aTB8UADG2CYlJO7EqY08HqkHr3XoI7gwkjKDWq8zW6okgfQjwiGz0UN8H
 rVwWma1gGdxmPGwAl6GMow7ijQyo6GyKXv1pU0UiSO1kSUMG1Mqxl6a7U
 4l9Bg+ORkO6NDZRDlrTXyffYL3QgvfKCrCEjRkcjJBfJL9CMIBD3W3TK/
 3PurgYhj8BXe3zbLO/1qGS6Qm8UKMWrNiqHHjQAzTeTYyBwgPwDO8tr02 A==;
X-CSE-ConnectionGUID: K9jdPhdVT4mqHsjwjVH69g==
X-CSE-MsgGUID: i9D7SLJEQYWmJ25oAz/ofw==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41275165"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="41275165"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:52:37 -0700
X-CSE-ConnectionGUID: GWN9x4EWRmqbFCTgzCRYKQ==
X-CSE-MsgGUID: 0spDqbpsTa63y5KTzSLTYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82200243"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:52:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:52:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/11] drm/i915/cdclk: Extract vlv_dsi_min_cdclk()
Date: Tue, 29 Oct 2024 23:52:12 +0200
Message-ID: <20241029215217.3697-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the DSI min cdclk calculation into a helper and hide
it inside vlv_dsi.c in order to keep most DSI related
details in one place.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 23 ++------------------
 drivers/gpu/drm/i915/display/vlv_dsi.c     | 25 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/vlv_dsi.h     |  8 +++++++
 3 files changed, 35 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 89d12c521411..e10378744607 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -46,6 +46,7 @@
 #include "intel_vdsc.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
+#include "vlv_dsi.h"
 #include "vlv_sideband.h"
 
 /**
@@ -2849,8 +2850,6 @@ static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 
 int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int min_cdclk;
 
 	if (!crtc_state->hw.enable)
@@ -2859,25 +2858,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	min_cdclk = intel_pixel_rate_to_cdclk(crtc_state);
 	min_cdclk = max(hsw_ips_min_cdclk(crtc_state), min_cdclk);
 	min_cdclk = max(intel_audio_min_cdclk(crtc_state), min_cdclk);
-
-	/*
-	 * On Valleyview some DSI panels lose (v|h)sync when the clock is lower
-	 * than 320000KHz.
-	 */
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
-	    IS_VALLEYVIEW(dev_priv))
-		min_cdclk = max(320000, min_cdclk);
-
-	/*
-	 * On Geminilake once the CDCLK gets as low as 79200
-	 * picture gets unstable, despite that values are
-	 * correct for DSI PLL and DE PLL.
-	 */
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
-	    IS_GEMINILAKE(dev_priv))
-		min_cdclk = max(158400, min_cdclk);
-
-	/* Account for additional needs from the planes */
+	min_cdclk = max(vlv_dsi_min_cdclk(crtc_state), min_cdclk);
 	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
 
 	if (crtc_state->dsc.compression_enable)
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 9383eedee2d4..49a895589150 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1760,6 +1760,31 @@ static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
 	intel_dsi_log_params(intel_dsi);
 }
 
+int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	int min_cdclk = 0;
+
+	/*
+	 * On Valleyview some DSI panels lose (v|h)sync when the clock is lower
+	 * than 320000KHz.
+	 */
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
+	    IS_VALLEYVIEW(dev_priv))
+		min_cdclk = max(320000, min_cdclk);
+
+	/*
+	 * On Geminilake once the CDCLK gets as low as 79200
+	 * picture gets unstable, despite that values are
+	 * correct for DSI PLL and DE PLL.
+	 */
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
+	    IS_GEMINILAKE(dev_priv))
+		min_cdclk = max(158400, min_cdclk);
+
+	return min_cdclk;
+}
+
 typedef void (*vlv_dsi_dmi_quirk_func)(struct intel_dsi *intel_dsi);
 
 /*
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.h b/drivers/gpu/drm/i915/display/vlv_dsi.h
index cf9d7b82f288..5f99059b4c48 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.h
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.h
@@ -8,13 +8,17 @@
 
 #include <linux/types.h>
 
+#include <drm/drm_mipi_dsi.h>
+
 enum port;
 struct drm_i915_private;
+struct intel_crtc_state;
 struct intel_dsi;
 
 #ifdef I915
 void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port);
 enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt);
+int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state);
 void vlv_dsi_init(struct drm_i915_private *dev_priv);
 #else
 static inline void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port)
@@ -24,6 +28,10 @@ static inline enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt
 {
 	return 0;
 }
+static inline int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state)
+{
+	return 0;
+}
 static inline void vlv_dsi_init(struct drm_i915_private *dev_priv)
 {
 }
-- 
2.45.2

