Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E55FB48582
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 09:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 055D210E47E;
	Mon,  8 Sep 2025 07:37:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YJGP6fsr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7583F10E47E
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 07:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757317073; x=1788853073;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=amhfCOAVT4BGcNQY+dUw5SvZrU/r5nLkpLjSlUO5WcE=;
 b=YJGP6fsr1aJTisGsTjiT48VEe5/fyb4dqQK0LaFUBvdrwm2+BUSQZ4Gb
 12R0KqtNmQOwZoXK2M7UcRZ+YIaXqfdAQiFZUZ3b4kqTeqCZ/yylNVv8X
 3tnUQ3zO4uzNxvEpgSzR7ZspcrJcnn/UrBtg6MuAYuZ0xDnSiuLKAXPUc
 avU0hj4kq2QOND9+EIw4p2AY9VGSoVzAPAlccPxt45OGkcY7bs1bm0fNz
 MM2B6hlcLEnKH9HLfvFU3OFp83tOHTVgXTpBmQMOn3xXzWdt+d99OVLeB
 9EayE4miJZayM1km/XsPuqQFVM/1b25waB180x6fxIumIs36yXs/lrLYj w==;
X-CSE-ConnectionGUID: U2JOChW8TuyVUNIF6B/sjQ==
X-CSE-MsgGUID: 5Pu2IP47S0WrgW0h8fEIdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="59506299"
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="59506299"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:37:52 -0700
X-CSE-ConnectionGUID: DPZng5N7SrymmnIT3AoZTQ==
X-CSE-MsgGUID: v9T9qk80To+jGvM2FxHP0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="171986987"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.210])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:37:52 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/6] drm/i915/wm: move intel_sagv_init() to avoid forward
 declaration
Date: Mon,  8 Sep 2025 10:35:31 +0300
Message-ID: <20250908073734.1180687-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250908073734.1180687-1-luciano.coelho@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
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

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 60 ++++++++++----------
 1 file changed, 29 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d74cbb43ae6f..3b409442db37 100644
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
2.50.1

