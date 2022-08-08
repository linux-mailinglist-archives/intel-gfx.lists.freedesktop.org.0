Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E4458C672
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Aug 2022 12:31:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8299918B74B;
	Mon,  8 Aug 2022 10:31:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4FB594DF5
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Aug 2022 10:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659954659; x=1691490659;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9SunKHBwGM/xrUP0OLAxaVYgpuilb/p9cVhE/Z4tHmo=;
 b=jSm+Mibu2tnEo/WaCHUFF/MiXqNz6PjHVnwii0a5lb5oPl090k346MOx
 jsA2jLsjSndZJRZXE0w3IfUui8DS8VKzzhW01j7+TlRdxw00zfRnuHk+W
 vH+Aneyw5d0PbiqBRNvlRBS77+UjGSnpl77/4r7tcY7Hvwd7ZPSquxxlf
 +gXSk6TlSjwroJ5dKrFewTzTB/gVJr4X0eVQ+IQNeubfL08VQqlIcJE+v
 XsVQ1a7DAYVTnFqvLV8l10V7KKbluIddH1aymxL0tSSs013hj50R/bi0M
 i1PwTQ+yVdhgj1V4qgrV/vJ1KJbMmyTOmIsD9igyYRR/xu61RwHpzZese A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10432"; a="376852081"
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="376852081"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 03:30:58 -0700
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="730681736"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 03:30:56 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Aug 2022 13:30:54 +0300
Message-Id: <20220808103054.3586074-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/d13: Fix unclaimed accesses while
 loading PIPEDMC-C/D
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

At the moment on DG2 at least loading the DMC firmware's PIPEDMC C and D
programs leads to sporadic unclaimed register accesses while programming
the initial state as described by the firmware's "MMIO init" table. This
will also lead to later unclaimed accesses for unrelated transcoder/pipe
registers backed by the pipe C and D display power wells.

Disabling the PIPEDMC clock gating during initialization - similarly to
Wa_16015201720 fixed this problem in my tests. While pipe A an B
requires the clock gating to be disabled all the time pipe C and D
requires this only while accessing the PIPEDMC registers.

Bspec: 49193
References: https://gitlab.freedesktop.org/drm/intel/-/issues/6526
References: https://gitlab.freedesktop.org/drm/intel/-/issues/6308
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power.c    |  8 -----
 drivers/gpu/drm/i915/display/intel_dmc.c      | 30 +++++++++++++++++++
 2 files changed, 30 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3f84af6beff31..e42797e1655da 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1615,14 +1615,6 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D, 0,
 			     PCH_DPMGUNIT_CLOCK_GATE_DISABLE);
 
-	/* Wa_16015201720:adl-p,dg2 */
-	if (DISPLAY_VER(dev_priv) == 13) {
-		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL_EXT(PIPE_A),
-			     0, PIPEDMC_GATING_DIS);
-		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL_EXT(PIPE_B),
-			     0, PIPEDMC_GATING_DIS);
-	}
-
 	/* 1. Enable PCH reset handshake. */
 	intel_pch_reset_handshake(dev_priv, !HAS_PCH_NOP(dev_priv));
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 00e18a4a5a5a4..6c35212c36256 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -383,6 +383,30 @@ static void disable_all_event_handlers(struct drm_i915_private *i915)
 	}
 }
 
+static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
+{
+	enum pipe pipe;
+
+	if (DISPLAY_VER(i915) != 13)
+		return;
+
+	/*
+	 * Wa_16015201720:adl-p,dg2
+	 * The WA requires clock gating to be disabled all the time
+	 * for pipe A and B.
+	 * For pipe C and D clock gating needs to be disabled only
+	 * during initializing the firmware.
+	 */
+	if (enable)
+		for (pipe = PIPE_A; pipe <= PIPE_D; pipe++)
+			intel_de_rmw(i915, CLKGATE_DIS_PSL_EXT(pipe),
+				     0, PIPEDMC_GATING_DIS);
+	else
+		for (pipe = PIPE_C; pipe <= PIPE_D; pipe++)
+			intel_de_rmw(i915, CLKGATE_DIS_PSL_EXT(pipe),
+				     PIPEDMC_GATING_DIS, 0);
+}
+
 /**
  * intel_dmc_load_program() - write the firmware from memory to register.
  * @dev_priv: i915 drm device.
@@ -399,6 +423,8 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 	if (!intel_dmc_has_payload(dev_priv))
 		return;
 
+	pipedmc_clock_gating_wa(dev_priv, true);
+
 	disable_all_event_handlers(dev_priv);
 
 	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
@@ -432,6 +458,8 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 	 * here.
 	 */
 	disable_all_flip_queue_events(dev_priv);
+
+	pipedmc_clock_gating_wa(dev_priv, false);
 }
 
 /**
@@ -446,7 +474,9 @@ void intel_dmc_disable_program(struct drm_i915_private *i915)
 	if (!intel_dmc_has_payload(i915))
 		return;
 
+	pipedmc_clock_gating_wa(i915, true);
 	disable_all_event_handlers(i915);
+	pipedmc_clock_gating_wa(i915, false);
 }
 
 void assert_dmc_loaded(struct drm_i915_private *i915)
-- 
2.37.1

