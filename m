Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC929349AF
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6655E10E5D2;
	Thu, 18 Jul 2024 08:17:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pun3zF60";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B76910E5D2
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 08:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721290638; x=1752826638;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qpze7MxVOkVN74PUfRyUP8kS9glt67I2xDcvMrtZ6Lk=;
 b=Pun3zF60WsOT3K5a4G79Q9clCjz24zKuVDafgYHHe+R6WZIKqhAu1Yij
 HAZLiZv3xrZj9wPsSx2gTEB5S/ldznKlfEt842hHF2SJ0plsS42C+GRsV
 3enrgLbOOnbariHQ9moBQ8uD4WFvV2Wr0UjEpNj8xMNKpsprJ1bB+Ix1j
 Z++QUZti8sLth2khPI1QfQDBUoK85enC1DHB5psX+DCdv0XT1u7HxgMow
 szDcbEtxlr/KFahzcFMC3sk/f+TBbQ/sJxl1Nrh2KRLwu34gCwBcdYyBH
 3sJ5HBL6/CONs2MgdRTPnJC/PCCwAUQovqxM8v4uYhqfNAfS4zqYGxq2E g==;
X-CSE-ConnectionGUID: Mthw51EMS4qhx/4uA4AFQg==
X-CSE-MsgGUID: tkmCG48TTWqdeT5KowskfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18706067"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18706067"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:17 -0700
X-CSE-ConnectionGUID: iJ9RiTcITa2GhCBqRxMDFg==
X-CSE-MsgGUID: F+oqI8RdQp+76qA670j6qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="51400657"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stanislav.lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 08/12] drm/i915: Implement hw state readout and checks for
 ultrajoiner
Date: Thu, 18 Jul 2024 13:47:59 +0530
Message-ID: <20240718081803.3338564-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Ultrajoiner mode has some new bits and states to be
read out from the hw. Lets make changes accordingly.

v2: Fix checkpatch warnings. (Ankit)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 127 ++++++++++++++----
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   3 +
 2 files changed, 101 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 59cb0d2f773b..d032fd8011d5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3648,17 +3648,55 @@ static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
 	}
 }
 
-static u8 expected_secondary_pipes(u8 primary_pipes)
+static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
+				      u8 *primary_pipes, u8 *secondary_pipes)
 {
-	return primary_pipes << 1;
+	struct intel_crtc *crtc;
+
+	*primary_pipes = 0;
+	*secondary_pipes = 0;
+
+	if (DISPLAY_VER(i915) < 14)
+		return;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
+					 joiner_pipes(i915)) {
+		enum intel_display_power_domain power_domain;
+		enum pipe pipe = crtc->pipe;
+		intel_wakeref_t wakeref;
+
+		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
+		with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
+			u32 tmp = intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
+
+			if (!(tmp & ULTRA_JOINER_ENABLE))
+				continue;
+
+			if (tmp & PRIMARY_ULTRA_JOINER_ENABLE)
+				*primary_pipes |= BIT(pipe);
+			else
+				*secondary_pipes |= BIT(pipe);
+		}
+	}
+}
+
+static u8 expected_secondary_pipes(u8 primary_pipes, bool ultrajoiner_used)
+{
+	if (!ultrajoiner_used)
+		return primary_pipes << 1;
+	else
+		return GENMASK(3, primary_pipes + 1);
 }
 
 static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
-				 u8 *primary_pipes, u8 *secondary_pipes)
+				 u8 *primary_pipes, u8 *secondary_pipes,
+				 bool *ultrajoiner_used)
 {
 	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
+	u8 primary_ultrajoiner_pipes;
 	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
-	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
+	u8 secondary_ultrajoiner_pipes;
+	u8 uncompressed_joiner_pipes, bigjoiner_pipes, ultrajoiner_pipes;
 
 	enabled_uncompressed_joiner_pipes(dev_priv, &primary_uncompressed_joiner_pipes,
 					  &secondary_uncompressed_joiner_pipes);
@@ -3666,32 +3704,49 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 	enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
 				&secondary_bigjoiner_pipes);
 
+	enabled_ultrajoiner_pipes(dev_priv, &primary_ultrajoiner_pipes,
+				  &secondary_ultrajoiner_pipes);
+
 	uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
 				    secondary_uncompressed_joiner_pipes;
 	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
+	ultrajoiner_pipes = primary_ultrajoiner_pipes | secondary_ultrajoiner_pipes;
+	*ultrajoiner_used = ultrajoiner_pipes != 0;
 
 	drm_WARN(&dev_priv->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
 		 "Uncomressed joiner pipes(%x) and bigjoiner pipes(%x) can't intersect\n",
 		 uncompressed_joiner_pipes, bigjoiner_pipes);
+	drm_WARN(&dev_priv->drm, (ultrajoiner_pipes & bigjoiner_pipes) != ultrajoiner_pipes,
+		 "Ultrajoiner pipes(%x) should be bigjoiner pipes(%x)\n",
+		 ultrajoiner_pipes, bigjoiner_pipes);
+
 	drm_WARN(&dev_priv->drm, secondary_bigjoiner_pipes !=
-		 expected_secondary_pipes(primary_bigjoiner_pipes),
+		 expected_secondary_pipes(primary_bigjoiner_pipes, *ultrajoiner_used),
 		 "Wrong secondary bigjoiner pipes(expected %x, current %x)\n",
-		 expected_secondary_pipes(primary_bigjoiner_pipes),
+		 expected_secondary_pipes(primary_bigjoiner_pipes, *ultrajoiner_used),
 		 secondary_bigjoiner_pipes);
 	drm_WARN(&dev_priv->drm, secondary_uncompressed_joiner_pipes !=
-		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 expected_secondary_pipes(primary_uncompressed_joiner_pipes, *ultrajoiner_used),
 		 "Wrong secondary uncompressed joiner pipes(expected %x, current %x)\n",
-		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 expected_secondary_pipes(primary_uncompressed_joiner_pipes, *ultrajoiner_used),
 		 secondary_uncompressed_joiner_pipes);
+	drm_WARN(&dev_priv->drm, secondary_ultrajoiner_pipes !=
+		 expected_secondary_pipes(primary_ultrajoiner_pipes, *ultrajoiner_used),
+		 "Wrong secondary ultrajoiner pipes(expected %x, current %x)\n",
+		 expected_secondary_pipes(primary_ultrajoiner_pipes, *ultrajoiner_used),
+		 secondary_ultrajoiner_pipes);
 
 	*primary_pipes = 0;
 	*secondary_pipes = 0;
 
-	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
-	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
+	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes |
+			 primary_ultrajoiner_pipes;
+	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes |
+			 secondary_ultrajoiner_pipes;
 }
 
-static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
+static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes,
+					 u8 secondary_pipes, bool ultrajoiner_used)
 {
 	if ((secondary_pipes & BIT(pipe)) == 0)
 		return pipe;
@@ -3699,27 +3754,37 @@ static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 se
 	/* ignore everything above our pipe */
 	primary_pipes &= ~GENMASK(7, pipe);
 
-	/* highest remaining bit should be our primary pipe */
-	return fls(primary_pipes) - 1;
+	if (!ultrajoiner_used)
+		/* highest remaining bit should be our master pipe */
+		return fls(primary_pipes) - 1;
+
+	/* lowest remaining bit should be our primary master pipe */
+	return ffs(primary_pipes) - 1;
 }
 
-static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
+static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes,
+				     u8 secondary_pipes, bool ultrajoiner_used)
 {
 	enum pipe primary_pipe, next_primary_pipe;
 
-	primary_pipe = get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes);
+	primary_pipe = get_joiner_primary_pipe(pipe, primary_pipes,
+					       secondary_pipes, ultrajoiner_used);
 
 	if ((primary_pipes & BIT(primary_pipe)) == 0)
 		return 0;
 
-	/* ignore our primary pipe and everything below it */
-	primary_pipes &= ~GENMASK(primary_pipe, 0);
-	/* make sure a high bit is set for the ffs() */
-	primary_pipes |= BIT(7);
-	/* lowest remaining bit should be the next primary pipe */
-	next_primary_pipe = ffs(primary_pipes) - 1;
+	if (!ultrajoiner_used) {
+		/* ignore our primary pipe and everything below it */
+		primary_pipes &= ~GENMASK(primary_pipe, 0);
+		/* make sure a high bit is set for the ffs() */
+		primary_pipes |= BIT(7);
+		/* lowest remaining bit should be the next primary pipe */
+		next_primary_pipe = ffs(primary_pipes) - 1;
 
-	return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
+		return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
+	} else {
+		return (secondary_pipes | primary_pipes) & ~BIT(primary_pipe);
+	}
 }
 
 static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
@@ -3740,6 +3805,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 	enum transcoder cpu_transcoder;
 	u8 primary_pipes, secondary_pipes;
 	u8 enabled_transcoders = 0;
+	bool ultrajoiner_used;
 
 	/*
 	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
@@ -3790,11 +3856,12 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 	if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
 		enabled_transcoders |= BIT(cpu_transcoder);
 
-	/* joiner secondary -> consider the primary pipe's transcoder as well */
-	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes);
+	/* joiner slave -> consider the master pipe's transcoder as well */
+	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes, &ultrajoiner_used);
 	if (secondary_pipes & BIT(crtc->pipe)) {
 		cpu_transcoder = (enum transcoder)
-			get_joiner_primary_pipe(crtc->pipe, primary_pipes, secondary_pipes);
+			get_joiner_primary_pipe(crtc->pipe, primary_pipes,
+						secondary_pipes, ultrajoiner_used);
 		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
 			enabled_transcoders |= BIT(cpu_transcoder);
 	}
@@ -3926,16 +3993,18 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u8 primary_pipes, secondary_pipes;
+	bool ultrajoiner_used;
 	enum pipe pipe = crtc->pipe;
 
-	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes);
+	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes, &ultrajoiner_used);
 
 	if (((primary_pipes | secondary_pipes) & BIT(pipe)) == 0)
 		return;
 
-	crtc_state->joiner_pipes =
-		BIT(get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes)) |
-		get_joiner_secondary_pipes(pipe, primary_pipes, secondary_pipes);
+	crtc_state->joiner_pipes = BIT(get_joiner_primary_pipe(pipe, primary_pipes,
+							       secondary_pipes, ultrajoiner_used)) |
+				   get_joiner_secondary_pipes(pipe, primary_pipes,
+							      secondary_pipes, ultrajoiner_used);
 }
 
 static bool hsw_get_pipe_config(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index f921ad67b587..db07c9775892 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -37,6 +37,9 @@
 #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
 #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
 #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
+
+#define  ULTRA_JOINER_ENABLE			REG_BIT(23)
+#define  PRIMARY_ULTRA_JOINER_ENABLE		REG_BIT(22)
 #define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
 #define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
 
-- 
2.45.2

