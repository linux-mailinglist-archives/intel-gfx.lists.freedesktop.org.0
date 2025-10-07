Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB8EBC0896
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 09:57:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B9310E595;
	Tue,  7 Oct 2025 07:57:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JknQxxYV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74FE610E592
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Oct 2025 07:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759823869; x=1791359869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W5vrTpkfC/ve/k36FBWXLdKZT4hEqOho6JiL0Labk+U=;
 b=JknQxxYViTDYeaa0v7mLwg3H2xMbW9qU94812r4jUH+BrGeyUCwEaRs6
 jneUnoewp1TiB4YXvVzLgb+s/crsAz+bJyERsTUocd70VVaVEeZcRyv9E
 0qvrDkxmGo3BYKhIkkH8XJAQrSODnXaOkKe71VgqjXCAzWU4D5vzL8QXy
 6VcKUgXLEpLa4mVzEjw9fFhXVmdJ22X34OFDJU2TqimNV233s8n1cA+ba
 JWiZAQbFMBnQ/mhAsNzNkvOXJiMJbw9Avo82GOEB3LpdtfxtZEn0inSyv
 lcweueM3Q6GdRQFqWaq2+yCHqJMKM2x3Ua8cBt1atyJWkMS+ryGKVy09K w==;
X-CSE-ConnectionGUID: CQdM/HfrRVOlz9anehNkxg==
X-CSE-MsgGUID: 1pwHv0sTQ7ajNpLlER+fKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73104897"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="73104897"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:49 -0700
X-CSE-ConnectionGUID: yrlxO2nOSP21iYnzwR1rTw==
X-CSE-MsgGUID: 2fSlhr2CQVa29wnqnL4gHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="180017672"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.206])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:48 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 2/7] drm/i915/wm: move intel_sagv_init() to avoid forward
 declaration
Date: Tue,  7 Oct 2025 10:56:36 +0300
Message-ID: <20251007075729.468669-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251007075729.468669-1-luciano.coelho@intel.com>
References: <20251007075729.468669-1-luciano.coelho@intel.com>
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

There's no need to have a forward-declaration for skl_sagv_disable(),
so move the intel_sagv_init() function below the called function to
prevent it.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 60 ++++++++++----------
 1 file changed, 29 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 9df9ee137bf9..5e69fe034d6a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -53,8 +53,6 @@ struct intel_dbuf_state {
 #define intel_atomic_get_new_dbuf_state(state) \
 	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_intel_display(state)->dbuf.obj))
 
-static void skl_sagv_disable(struct intel_display *display);
-
 /* Stores plane specific WM parameters */
 struct skl_wm_params {
 	bool x_tiled, y_tiled;
@@ -130,35 +128,6 @@ intel_sagv_block_time(struct intel_display *display)
 	}
 }
 
-static void intel_sagv_init(struct intel_display *display)
-{
-	if (!HAS_SAGV(display))
-		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
-
-	/*
-	 * Probe to see if we have working SAGV control.
-	 * For icl+ this was already determined by intel_bw_init_hw().
-	 */
-	if (DISPLAY_VER(display) < 11)
-		skl_sagv_disable(display);
-
-	drm_WARN_ON(display->drm, display->sagv.status == I915_SAGV_UNKNOWN);
-
-	display->sagv.block_time_us = intel_sagv_block_time(display);
-
-	drm_dbg_kms(display->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
-		    str_yes_no(intel_has_sagv(display)), display->sagv.block_time_us);
-
-	/* avoid overflow when adding with wm0 latency/etc. */
-	if (drm_WARN(display->drm, display->sagv.block_time_us > U16_MAX,
-		     "Excessive SAGV block time %u, ignoring\n",
-		     display->sagv.block_time_us))
-		display->sagv.block_time_us = 0;
-
-	if (!intel_has_sagv(display))
-		display->sagv.block_time_us = 0;
-}
-
 /*
  * SAGV dynamically adjusts the system agent voltage and clock frequencies
  * depending on power and performance requirements. The display engine access
@@ -233,6 +202,35 @@ static void skl_sagv_disable(struct intel_display *display)
 	display->sagv.status = I915_SAGV_DISABLED;
 }
 
+static void intel_sagv_init(struct intel_display *display)
+{
+	if (!HAS_SAGV(display))
+		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
+
+	/*
+	 * Probe to see if we have working SAGV control.
+	 * For icl+ this was already determined by intel_bw_init_hw().
+	 */
+	if (DISPLAY_VER(display) < 11)
+		skl_sagv_disable(display);
+
+	drm_WARN_ON(display->drm, display->sagv.status == I915_SAGV_UNKNOWN);
+
+	display->sagv.block_time_us = intel_sagv_block_time(display);
+
+	drm_dbg_kms(display->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
+		    str_yes_no(intel_has_sagv(display)), display->sagv.block_time_us);
+
+	/* avoid overflow when adding with wm0 latency/etc. */
+	if (drm_WARN(display->drm, display->sagv.block_time_us > U16_MAX,
+		     "Excessive SAGV block time %u, ignoring\n",
+		     display->sagv.block_time_us))
+		display->sagv.block_time_us = 0;
+
+	if (!intel_has_sagv(display))
+		display->sagv.block_time_us = 0;
+}
+
 static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-- 
2.51.0

