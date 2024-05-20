Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 611538C9965
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 09:38:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DA2C10E2C0;
	Mon, 20 May 2024 07:38:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DAxzZDdB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA90B10E10E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 07:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716190727; x=1747726727;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ThRpxKIQJZ7zeB+xTUSy7rto1T9CeL16hDt8wrjTuzM=;
 b=DAxzZDdBUy1zoCf3ikyooHzloWJGJy96vWJ6Et2qK4Svc3oOPcjROR2p
 vs2BSYy/rhT+uCdpLVSo0+wXZu6WLtzyo5sWZlhhDP84p2ook0g0XwgZh
 HWJyVnM6eYhRMG0dEbNFoXjDrRwt0/x8nwxLhScd83yXR4BZFp0ADAskb
 T6RmifQ35NpNlOkBtRpwh0bpXqArmxb6GQJ7iRvrK+48lm7woT/De5tjp
 OB4PEXDRkUp+o6FWtHPJrBzx/WYXkOm9PF0TmWxayPvsEtjnLqVv1EUTJ
 nhta6xB+dmuGEVaaG9Y0rgaLIBtnHao6qGiOXpVT+76ejH4MBOGlGPvNi w==;
X-CSE-ConnectionGUID: LEgNg7HDRMCY2S0LCF1bQA==
X-CSE-MsgGUID: WjOtrqR/Rq691e5jRpjBbQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="23445002"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="23445002"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 00:38:47 -0700
X-CSE-ConnectionGUID: 9hf+P2HtQtGDLagannlt9g==
X-CSE-MsgGUID: xmJRRpFeQgy3eL4BAw2YTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="33053221"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa007.jf.intel.com with ESMTP; 20 May 2024 00:38:45 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 3/5] drm/i915: Implement hw state readout for ultrajoiner
Date: Mon, 20 May 2024 10:38:37 +0300
Message-Id: <20240520073839.23881-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240520073839.23881-1-stanislav.lisovskiy@intel.com>
References: <20240520073839.23881-1-stanislav.lisovskiy@intel.com>
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

Ultrajoiner mode has some new bits and states to be
read out from the hw. Lets make changes accordingly.

SIgned-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 56 +++++++++++++++----
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  2 +
 2 files changed, 46 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c390b79a43d6..0dc5349712f6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3537,12 +3537,14 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 }
 
 static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
-				    u8 *master_pipes, u8 *slave_pipes)
+				    u8 *master_pipes, u8 *slave_pipes,
+				    bool *ultrajoiner_used)
 {
 	struct intel_crtc *crtc;
 
 	*master_pipes = 0;
 	*slave_pipes = 0;
+	*ultrajoiner_used = false;
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
 					 joiner_pipes(dev_priv)) {
@@ -3557,6 +3559,20 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 			if (!(tmp & BIG_JOINER_ENABLE))
 				continue;
 
+			if (tmp & ULTRA_JOINER_ENABLE)
+				*ultrajoiner_used = true;
+
+			/*
+			 * As of now we always assume primary master to be PIPE A.
+			 * Otherwise we need a new field in crtc_state to track
+			 * primary master as well.
+			 */
+			drm_WARN(&dev_priv->drm,
+				 (tmp & MASTER_ULTRA_JOINER_ENABLE) && crtc->pipe != PIPE_A,
+				 "Ultrajoiner primary master isn't PIPE A(pipe %c)",
+				 pipe_name(crtc->pipe));
+
+
 			if (tmp & MASTER_BIG_JOINER_ENABLE)
 				*master_pipes |= BIT(pipe);
 			else
@@ -3583,7 +3599,8 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 		 *master_pipes, *slave_pipes);
 }
 
-static enum pipe get_joiner_master_pipe(enum pipe pipe, u8 master_pipes, u8 slave_pipes)
+static enum pipe get_joiner_master_pipe(enum pipe pipe, u8 master_pipes,
+					u8 slave_pipes, bool ultrajoiner_used)
 {
 	if ((slave_pipes & BIT(pipe)) == 0)
 		return pipe;
@@ -3591,15 +3608,22 @@ static enum pipe get_joiner_master_pipe(enum pipe pipe, u8 master_pipes, u8 slav
 	/* ignore everything above our pipe */
 	master_pipes &= ~GENMASK(7, pipe);
 
-	/* highest remaining bit should be our master pipe */
-	return fls(master_pipes) - 1;
+	if (!ultrajoiner_used) {
+		/* highest remaining bit should be our master pipe */
+		return fls(master_pipes) - 1;
+	} else {
+		/* lowest remaining bit should be our primary master pipe */
+		return ffs(master_pipes) - 1;
+	}
 }
 
-static u8 get_joiner_slave_pipes(enum pipe pipe, u8 master_pipes, u8 slave_pipes)
+static u8 get_joiner_slave_pipes(enum pipe pipe, u8 master_pipes,
+				 u8 slave_pipes, bool ultrajoiner_used)
 {
 	enum pipe master_pipe, next_master_pipe;
 
-	master_pipe = get_joiner_master_pipe(pipe, master_pipes, slave_pipes);
+	master_pipe = get_joiner_master_pipe(pipe, master_pipes,
+					     slave_pipes, ultrajoiner_used);
 
 	if ((master_pipes & BIT(master_pipe)) == 0)
 		return 0;
@@ -3611,7 +3635,10 @@ static u8 get_joiner_slave_pipes(enum pipe pipe, u8 master_pipes, u8 slave_pipes
 	/* lowest remaining bit should be the next master pipe */
 	next_master_pipe = ffs(master_pipes) - 1;
 
-	return slave_pipes & GENMASK(next_master_pipe - 1, master_pipe);
+	if (!ultrajoiner_used)
+		return slave_pipes & GENMASK(next_master_pipe - 1, master_pipe);
+	else
+		return (slave_pipes | master_pipes) & ~BIT(master_pipe);
 }
 
 static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
@@ -3632,6 +3659,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 	enum transcoder cpu_transcoder;
 	u8 master_pipes, slave_pipes;
 	u8 enabled_transcoders = 0;
+	bool ultrajoiner_used;
 
 	/*
 	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
@@ -3682,10 +3710,11 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 		enabled_transcoders |= BIT(cpu_transcoder);
 
 	/* joiner slave -> consider the master pipe's transcoder as well */
-	enabled_joiner_pipes(dev_priv, &master_pipes, &slave_pipes);
+	enabled_joiner_pipes(dev_priv, &master_pipes, &slave_pipes, &ultrajoiner_used);
 	if (slave_pipes & BIT(crtc->pipe)) {
 		cpu_transcoder = (enum transcoder)
-			get_joiner_master_pipe(crtc->pipe, master_pipes, slave_pipes);
+			get_joiner_master_pipe(crtc->pipe, master_pipes,
+					       slave_pipes, ultrajoiner_used);
 		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
 			enabled_transcoders |= BIT(cpu_transcoder);
 	}
@@ -3816,15 +3845,18 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u8 master_pipes, slave_pipes;
 	enum pipe pipe = crtc->pipe;
+	bool ultrajoiner_used;
 
-	enabled_joiner_pipes(i915, &master_pipes, &slave_pipes);
+	enabled_joiner_pipes(i915, &master_pipes, &slave_pipes, &ultrajoiner_used);
 
 	if (((master_pipes | slave_pipes) & BIT(pipe)) == 0)
 		return;
 
 	crtc_state->joiner_pipes =
-		BIT(get_joiner_master_pipe(pipe, master_pipes, slave_pipes)) |
-		get_joiner_slave_pipes(pipe, master_pipes, slave_pipes);
+		BIT(get_joiner_master_pipe(pipe, master_pipes,
+					   slave_pipes, ultrajoiner_used)) |
+			get_joiner_slave_pipes(pipe, master_pipes,
+					       slave_pipes, ultrajoiner_used);
 }
 
 static bool hsw_get_pipe_config(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index 8b21dc8e26d5..b3d91c0a17a6 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -37,6 +37,8 @@
 #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
 #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
 #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
+#define  ULTRA_JOINER_ENABLE                    (1 << 23)
+#define  MASTER_ULTRA_JOINER_ENABLE             (1 << 22)
 #define  UNCOMPRESSED_JOINER_MASTER		(1 << 21)
 #define  UNCOMPRESSED_JOINER_SLAVE		(1 << 20)
 
-- 
2.37.3

