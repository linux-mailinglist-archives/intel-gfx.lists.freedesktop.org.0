Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7008C5B99
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A3F10EB29;
	Tue, 14 May 2024 19:14:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gxm+j0IV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 928F910E703
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714063; x=1747250063;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1uH1cYbtuvOo4/mwQkXPfvBj6X71daVKEaAFjQza7Kc=;
 b=gxm+j0IVH+yAH/Kc0ysBI8IBxyQyOlCyUfI9z1ljtqHAeucob93VYVfy
 hnV4ejTW8WOzRD77Bf84u87hF9pBItIdsQuRjwJk8WFnWDVGkG0dgM6Xb
 9ZXHG/St9L1P/fSBGLzm+8IAaU5SUldnQOosRPUj/+jJ3y8o1I0908XD8
 UuYz1RRMqoSz/+b2nxzEbAlr5i63VglcEfbd6zmgO0M7VFn+IlX2nUM0R
 cNrO5L8TSwHQtx4xVE1MvJXaf7ydoVfVa5h2RkcTxLWSd+8K3X7P0GqP/
 8/MVUk44+zNoUNJz07dIHFabM0A0P+PKUTI26sMxM4VK11OfbkFFa+4R9 g==;
X-CSE-ConnectionGUID: jiO+dUZsR56fVOuw7PhdsQ==
X-CSE-MsgGUID: ZTt9Xv94Tjq/DFT99+DtAA==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23124989"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23124989"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:23 -0700
X-CSE-ConnectionGUID: ssZuXVnuS46TKmSshDTnIg==
X-CSE-MsgGUID: lcgVk+mEQ0WcvlkLSGDw/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724603"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:21 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/20] drm/i915/dp: Recheck link state after modeset
Date: Tue, 14 May 2024 22:14:05 +0300
Message-ID: <20240514191418.2863344-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240514191418.2863344-1-imre.deak@intel.com>
References: <20240514191418.2863344-1-imre.deak@intel.com>
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

Recheck the link state after a passing link training, with a 2 sec delay
to account for cases where the link goes bad following the link training
and the sink doesn't report this via an HPD IRQ.

The delayed work added here will be also used by a later patch after a
failed link training to try to retrain the link with unchanged link
params before reducing the link params.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 24 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
 .../drm/i915/display/intel_dp_link_training.c | 10 +++++---
 4 files changed, 34 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7edb533758416..0da7649e4ba9e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1773,6 +1773,8 @@ struct intel_dp {
 	u32 aux_busy_last_status;
 	u8 train_set[4];
 
+	struct delayed_work check_link_work;
+
 	struct intel_pps pps;
 
 	bool is_mst;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index abf1aec2f3217..2ec6e9c34e282 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -75,6 +75,7 @@
 #include "intel_hotplug_irq.h"
 #include "intel_lspcon.h"
 #include "intel_lvds.h"
+#include "intel_modeset_lock.h"
 #include "intel_panel.h"
 #include "intel_pch_display.h"
 #include "intel_pps.h"
@@ -5230,6 +5231,26 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 	return 0;
 }
 
+static void intel_dp_link_check_work_fn(struct work_struct *work)
+{
+	struct intel_dp *intel_dp =
+		container_of(work, typeof(*intel_dp), check_link_work.work);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct drm_modeset_acquire_ctx ctx;
+	int ret;
+
+	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret)
+		ret = intel_dp_retrain_link(encoder, &ctx);
+}
+
+void intel_dp_queue_link_check(struct intel_dp *intel_dp, int delay_ms)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	mod_delayed_work(i915->unordered_wq,
+			 &intel_dp->check_link_work, msecs_to_jiffies(delay_ms));
+}
+
 static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
 				  struct drm_modeset_acquire_ctx *ctx,
 				  u8 *pipe_mask)
@@ -6000,6 +6021,8 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
 	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
 	struct intel_dp *intel_dp = &dig_port->dp;
 
+	cancel_delayed_work_sync(&intel_dp->check_link_work);
+
 	intel_dp_mst_encoder_cleanup(dig_port);
 
 	intel_dp_tunnel_destroy(intel_dp);
@@ -6609,6 +6632,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	/* Initialize the work for modeset in case of link train failure */
 	intel_dp_init_modeset_retry_work(intel_connector);
+	INIT_DELAYED_WORK(&intel_dp->check_link_work, intel_dp_link_check_work_fn);
 
 	if (drm_WARN(dev, dig_port->max_lanes < 1,
 		     "Not enough lanes (%d) for DP on [ENCODER:%d:%s]\n",
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index e7b47e7bcd98b..6a1f2a2856998 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -60,6 +60,7 @@ int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 			      u8 *pipe_mask);
 int intel_dp_retrain_link(struct intel_encoder *encoder,
 			  struct drm_modeset_acquire_ctx *ctx);
+void intel_dp_queue_link_check(struct intel_dp *intel_dp, int delay_ms);
 void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
 void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 1ea4aaf9592f1..85074c1c2281d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1483,6 +1483,11 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 	else
 		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
 
+	if (passed) {
+		intel_dp_queue_link_check(intel_dp, 2000);
+		return;
+	}
+
 	/*
 	 * Ignore the link failure in CI
 	 *
@@ -1495,13 +1500,12 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 	 * For test cases which rely on the link training or processing of HPDs
 	 * ignore_long_hpd flag can unset from the testcase.
 	 */
-	if (!passed && i915->display.hotplug.ignore_long_hpd) {
+	if (i915->display.hotplug.ignore_long_hpd) {
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Ignore the link failure\n");
 		return;
 	}
 
-	if (!passed)
-		intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
+	intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
 }
 
 void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
-- 
2.43.3

