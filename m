Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E3F87184F
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 09:37:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA1EF11293F;
	Tue,  5 Mar 2024 08:37:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bx2zIgpM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F04A111293D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 08:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709627824; x=1741163824;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=d3r4OE9u4jjIl5jkj+IOWi1AHAspsSPNRjH8yXNEI5E=;
 b=bx2zIgpM26pUY/JAyP9ZVSeMHxmkW9osPrCH3FPwxETTqCvDN08zkUsp
 u+G+vRCiCQKvxtaa4KjrcsYfc9G6VhuKnffCXdpuzfwyvKN2sy2VeUcpB
 saJCKv1kwYD2N329GjFMq5M4ASSN69pmfylHz5nNebipepdJ3QhI3uWFk
 LA1uqHpbu2ZOWKd0/D2hTAqp/DnNMkOnjeImJd/c1L3pgby8nMiEXHurU
 KL7Wfd70SqyjGHiMZyqNQkZMlHSJ1BsbDmJY2/Jc46qIcgHRDdxJXddfO
 Cd+MAVGYoqDXrY1rFvJaQYmKjPLmXXLLDsTS8yrTwzN1sbePslNcZK5yS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7111425"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="7111425"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 00:37:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="827773656"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="827773656"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 05 Mar 2024 00:37:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Mar 2024 10:36:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org
Subject: [PATCH] drm/i915/dsi: Go back to the previous INIT_OTP/DISPLAY_ON
 order, mostly
Date: Tue,  5 Mar 2024 10:36:59 +0200
Message-ID: <20240305083659.8396-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

Reinstate commit 88b065943cb5 ("drm/i915/dsi: Do display on
sequence later on icl+"), for the most part. Turns out some
machines (eg. Chuwi Minibook X) really do need that updated order.
It is also the order the Windows driver uses.

However we can't just undo the revert since that would again
break Lenovo 82TQ. After staring at the VBT sequences for both
machines I've concluded that the Lenovo 82TQ sequences look
somewhat broken:
 - INIT_OTP is not present at all
 - what should be in INIT_OTP is found in DISPLAY_ON
 - what should be in DISPLAY_ON is found in BACKLIGHT_ON
   (along with the actual backlight stuff)

The Chuwi Minibook X on the other hand has a full complement
of sequences in its VBT.

So let's try to deal with the broken sequences in the
Lenovo 82TQ VBT by simply swapping the (non-existent)
INIT_OTP sequence with the DISPLAY_ON sequence. Thus we
execute DISPLAY_ON when intending to execute INIT_OTP,
and execute nothing at all when intending to execute
DISPLAY_ON. That should be 100% equivalent to the
revert, for such broken VBTs.

Cc: stable@vger.kernel.org
Fixes: dc524d05974f ("Revert "drm/i915/dsi: Do display on sequence later on icl+"")
References: https://gitlab.freedesktop.org/drm/intel/-/issues/10071
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10334
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_bios.c | 43 +++++++++++++++++++----
 2 files changed, 39 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index eda4a8b88590..ac456a2275db 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1155,7 +1155,6 @@ static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
 	}
 
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_INIT_OTP);
-	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
 
 	/* ensure all panel commands dispatched before enabling transcoder */
 	wait_for_cmds_dispatched_to_panel(encoder);
@@ -1256,6 +1255,8 @@ static void gen11_dsi_enable(struct intel_atomic_state *state,
 	/* step6d: enable dsi transcoder */
 	gen11_dsi_enable_transcoder(encoder);
 
+	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
+
 	/* step7: enable backlight */
 	intel_backlight_enable(crtc_state, conn_state);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_ON);
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 343726de9aa7..373291d10af9 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1955,16 +1955,12 @@ static int get_init_otp_deassert_fragment_len(struct drm_i915_private *i915,
  * these devices we split the init OTP sequence into a deassert sequence and
  * the actual init OTP part.
  */
-static void fixup_mipi_sequences(struct drm_i915_private *i915,
-				 struct intel_panel *panel)
+static void vlv_fixup_mipi_sequences(struct drm_i915_private *i915,
+				     struct intel_panel *panel)
 {
 	u8 *init_otp;
 	int len;
 
-	/* Limit this to VLV for now. */
-	if (!IS_VALLEYVIEW(i915))
-		return;
-
 	/* Limit this to v1 vid-mode sequences */
 	if (panel->vbt.dsi.config->is_cmd_mode ||
 	    panel->vbt.dsi.seq_version != 1)
@@ -2000,6 +1996,41 @@ static void fixup_mipi_sequences(struct drm_i915_private *i915,
 	panel->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP] = init_otp + len - 1;
 }
 
+/*
+ * Some machines (eg. Lenovo 82TQ) appear to have broken
+ * VBT sequences:
+ * - INIT_OTP is not present at all
+ * - what should be in INIT_OTP is in DISPLAY_ON
+ * - what should be in DISPLAY_ON is in BACKLIGHT_ON
+ *   (along with the actual backlight stuff)
+ *
+ * To make those work we simply swap DISPLAY_ON and INIT_OTP.
+ *
+ * TODO: Do we need to limit this to specific machines,
+ *       or examine the contents of the sequences to
+ *       avoid false positives?
+ */
+static void icl_fixup_mipi_sequences(struct drm_i915_private *i915,
+				     struct intel_panel *panel)
+{
+	if (!panel->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP] &&
+	    panel->vbt.dsi.sequence[MIPI_SEQ_DISPLAY_ON]) {
+		drm_dbg_kms(&i915->drm, "Broken VBT: Swapping INIT_OTP and DISPLAY_ON sequences\n");
+
+		swap(panel->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP],
+		     panel->vbt.dsi.sequence[MIPI_SEQ_DISPLAY_ON]);
+	}
+}
+
+static void fixup_mipi_sequences(struct drm_i915_private *i915,
+				 struct intel_panel *panel)
+{
+	if (DISPLAY_VER(i915) >= 11)
+		icl_fixup_mipi_sequences(i915, panel);
+	else if (IS_VALLEYVIEW(i915))
+		vlv_fixup_mipi_sequences(i915, panel);
+}
+
 static void
 parse_mipi_sequence(struct drm_i915_private *i915,
 		    struct intel_panel *panel)
-- 
2.43.0

