Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1F096F4D0
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 14:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E8C010EA4B;
	Fri,  6 Sep 2024 12:56:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H+7pibj6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 568A810EA47
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 12:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725627402; x=1757163402;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=35DDSlxXrkCKJIp9BoQB8VpboyXDP5Aw6ZACAVfIgU4=;
 b=H+7pibj6JsrE3A2BbJgfYl96ccTE0Gdt9T/bONeUC86TUmzLIaOODIdH
 MKsYV/UErQljehQAHVHn1lTY6HU+L2hUdUHVQMxOhWi1Ygmv4G3A2h6ow
 jb+tQQnAO2ll/6QJ+HocDhIEiwLeGbQKZ3g43L4D6jFX7t1NrSnUVgSzx
 Py6tl8dlvG9w9XIxPVDnV+KFFA0ka/mDsYfDmGCMK8iHqzx4QHTHlAd4T
 yYNhFPdTIKCesjUiif1OoSU/x1yy/l9GnuxtLpue8XgwkMWIaaJae6mlq
 e1oSfkOYICz/srLVcApgA2wLTW+Whl5NIyDU1slVcrjyT00+dWsEJ3uIN A==;
X-CSE-ConnectionGUID: 7pZRXQbdTOurbFu4K/L1EA==
X-CSE-MsgGUID: mBaVRjZkRj+Ae28X2ieH7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="24257411"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24257411"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:42 -0700
X-CSE-ConnectionGUID: MZKXg8W/TJugQYOSTL40aw==
X-CSE-MsgGUID: OruVjrriQ0WM6vKgbVS/ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="66691079"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:41 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 08/14] drm/i915: Implement hw state readout and checks for
 ultrajoiner
Date: Fri,  6 Sep 2024 18:28:01 +0530
Message-ID: <20240906125807.3960642-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
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
v3: Add separate functions for computing expected secondary_big/ultrajoiner
pipes. (Ankit)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 133 ++++++++++++++----
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   3 +
 2 files changed, 108 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6f098383479f..1243e4b24acc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3638,17 +3638,63 @@ static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
 	}
 }
 
-static u8 expected_secondary_pipes(u8 primary_pipes)
+static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
+				      u8 *primary_pipes, u8 *secondary_pipes)
 {
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
+static u8 expected_secondary_bigjoiner_pipes(u8 primary_pipes)
+{
+	if (!primary_pipes)
+		return 0;
+
 	return primary_pipes << 1;
 }
 
+static u8 expected_secondary_ultrajoiner_pipes(u8 primary_pipes)
+{
+	if (!primary_pipes)
+		return 0;
+
+	return GENMASK(2, primary_pipes);
+}
+
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
@@ -3656,33 +3702,50 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
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
+		 expected_secondary_bigjoiner_pipes(primary_bigjoiner_pipes),
 		 "Wrong secondary bigjoiner pipes(expected %x, current %x)\n",
-		 expected_secondary_pipes(primary_bigjoiner_pipes),
+		 expected_secondary_bigjoiner_pipes(primary_bigjoiner_pipes),
 		 secondary_bigjoiner_pipes);
 	drm_WARN(&dev_priv->drm, secondary_uncompressed_joiner_pipes !=
-		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 expected_secondary_bigjoiner_pipes(primary_uncompressed_joiner_pipes),
 		 "Wrong secondary uncompressed joiner pipes(expected %x, current %x)\n",
-		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 expected_secondary_bigjoiner_pipes(primary_uncompressed_joiner_pipes),
 		 secondary_uncompressed_joiner_pipes);
+	drm_WARN(&dev_priv->drm, secondary_ultrajoiner_pipes !=
+		 expected_secondary_ultrajoiner_pipes(primary_ultrajoiner_pipes),
+		 "Wrong secondary ultrajoiner pipes(expected %x, current %x)\n",
+		 expected_secondary_ultrajoiner_pipes(primary_ultrajoiner_pipes),
+		 secondary_ultrajoiner_pipes);
 
 	*primary_pipes = 0;
 	*secondary_pipes = 0;
 
-	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
+	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes |
+			 primary_ultrajoiner_pipes;
 
-	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
+	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes |
+			 secondary_ultrajoiner_pipes;
 }
 
-static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
+static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes,
+					 u8 secondary_pipes, bool ultrajoiner_used)
 {
 	if ((secondary_pipes & BIT(pipe)) == 0)
 		return pipe;
@@ -3690,27 +3753,37 @@ static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 se
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
@@ -3731,6 +3804,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 	enum transcoder cpu_transcoder;
 	u8 primary_pipes, secondary_pipes;
 	u8 enabled_transcoders = 0;
+	bool ultrajoiner_used;
 
 	/*
 	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
@@ -3781,11 +3855,12 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
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
@@ -3917,16 +3992,18 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
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

