Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96562BC7D1A
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 09:55:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3613810E967;
	Thu,  9 Oct 2025 07:55:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HVi4kloo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71CC510E967
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 07:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759996541; x=1791532541;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W5vrTpkfC/ve/k36FBWXLdKZT4hEqOho6JiL0Labk+U=;
 b=HVi4klooi8xxS/aPt4ylPmUzNX9ztp3hQXTBb9Q7A2OK8Eeh2HD7wYda
 MzTEzLHxlWtt/Nt2lQj6Oe3hM8q9pkvI2Hws0n122D4kiFrSBCCLubcVm
 OHfxnodrwEoxO0j80EdaijIBHUl3IY/UNWh3JqkfaONt7Qyw7iqLuYbdn
 kpdbMEtqCoBBxwk8j3E/lIRvjTf8cQBH7HikHGmqGEezkgdXCXtAouZ9T
 /mayv7bL0fcj1oILlhBEsyIHSFQ7lvsQ54j4uDbNWWftiB7HotJMYzq+V
 OP6OjkHvahjt40IAjxJRGYdLCXSyUO20tm5e290RzygsDhENzvtd9Jxwh g==;
X-CSE-ConnectionGUID: McyxW/ouRcmq3a9qptVkFA==
X-CSE-MsgGUID: E6oEvxj/SUGxkty3kZdUvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72880727"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="72880727"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:41 -0700
X-CSE-ConnectionGUID: 2thfXNh3R3uXyN9GYifGEg==
X-CSE-MsgGUID: 5GULuZ0JQ36vBZiTC1Zacg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="211600934"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.0])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:38 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v3 2/7] drm/i915/wm: move intel_sagv_init() to avoid forward
 declaration
Date: Thu,  9 Oct 2025 10:54:33 +0300
Message-ID: <20251009075517.837587-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009075517.837587-1-luciano.coelho@intel.com>
References: <20251009075517.837587-1-luciano.coelho@intel.com>
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

