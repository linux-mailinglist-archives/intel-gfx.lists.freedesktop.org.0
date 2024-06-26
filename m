Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D7B917ABA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 10:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC92510E7BB;
	Wed, 26 Jun 2024 08:18:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HgWUv9KS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBEAA10E7B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2024 08:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719389928; x=1750925928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eYS01XV/1vflYiVNmAwT/STOXcj2Y0EaLmP6S7nysgc=;
 b=HgWUv9KSArSdWbNEuKgYOo0qRdpI0B8MJ6H60xrwk/xzLdsdFuFZdi8W
 ltPqSslfk+lTJZNfjXaJpcZwLuaqn7BJJ+8yK8GryUTLgvQYIE+h+0UQA
 OUanYfhYe6GxEl8jUwVn4C/sQbJ4sUgH1Kk7DguOVBfQtCrEr0lY/QdZZ
 Ifyusdvi0CXLBAJuYjbMYhKzOnYTC+aG2p51Q3PxoanL2UZlDN5/OZ9ac
 lG1iftHdFDtxpW+QceUgJ/fwOIiuSAQL7qnSltQb5oUREYctc3+vuzHtY
 6K+BJZfFRqQEoNmpEAAundt0gidvjGriazt4AIZ9Brq2CTKqI3IJj5iDp A==;
X-CSE-ConnectionGUID: E8NLh1txRni3m9xgyqASPg==
X-CSE-MsgGUID: N7ojvBFRRZW+EAX4gf06iQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="20256536"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="20256536"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 01:18:47 -0700
X-CSE-ConnectionGUID: JA3G6gRPSHO8IzXbtRVmdA==
X-CSE-MsgGUID: Z99taEwMT1SIMc+btitrWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="75134424"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa001.fm.intel.com with ESMTP; 26 Jun 2024 01:18:46 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 2/4] drm/i915: Implement hw state readout for ultrajoiner
Date: Wed, 26 Jun 2024 11:18:40 +0300
Message-Id: <20240626081842.10614-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240626081842.10614-1-stanislav.lisovskiy@intel.com>
References: <20240626081842.10614-1-stanislav.lisovskiy@intel.com>
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

v2: - Split enabled_joiner_pipes readout procedure into
      3 parts, each of them taking care of uncompressed joiner,
      bigjoiner and ultrajoiner respectively and then do
      some sanity check(for example all the pipes which are used
      in ultrajoiner, should also belong to bigjoiner)

SIgned-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 162 +++++++++++++++---
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   3 +
 2 files changed, 142 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5bc867ff81e1..f702ead9b5f3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3580,8 +3580,42 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 	return tmp & TRANS_DDI_FUNC_ENABLE;
 }
 
-static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
-				 u8 *primary_pipes, u8 *secondary_pipes)
+static void enabled_uncompressed_joiner_pipes(struct drm_i915_private *dev_priv,
+					      u8 *primary_pipes, u8 *secondary_pipes)
+{
+	struct intel_crtc *crtc;
+
+	*primary_pipes = 0;
+	*secondary_pipes = 0;
+
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
+					 joiner_pipes(dev_priv)) {
+		enum intel_display_power_domain power_domain;
+		enum pipe pipe = crtc->pipe;
+		intel_wakeref_t wakeref;
+
+		if (DISPLAY_VER(dev_priv) < 13)
+			continue;
+
+		power_domain = POWER_DOMAIN_PIPE(pipe);
+		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
+			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
+
+			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
+				*primary_pipes |= BIT(pipe);
+			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
+				*secondary_pipes |= BIT(pipe);
+		}
+	}
+
+	/* Joiner pipes should always be consecutive primary and secondary */
+	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
+		 "Uncompressed joiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
+		 *primary_pipes, *secondary_pipes);
+}
+
+static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
+				    u8 *primary_pipes, u8 *secondary_pipes)
 {
 	struct intel_crtc *crtc;
 
@@ -3606,28 +3640,95 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 			else
 				*secondary_pipes |= BIT(pipe);
 		}
+	}
 
-		if (DISPLAY_VER(dev_priv) < 13)
-			continue;
+	/* Joiner pipes should always be consecutive primary and secondary */
+	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
+		 "Bigjoiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
+		 *primary_pipes, *secondary_pipes);
+}
 
-		power_domain = POWER_DOMAIN_PIPE(pipe);
+static void enabled_ultrajoiner_pipes(struct drm_i915_private *dev_priv,
+				      u8 *primary_pipes, u8 *secondary_pipes)
+{
+	struct intel_crtc *crtc;
+
+	*primary_pipes = 0;
+	*secondary_pipes = 0;
+
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
+					 joiner_pipes(dev_priv)) {
+		enum intel_display_power_domain power_domain;
+		enum pipe pipe = crtc->pipe;
+		intel_wakeref_t wakeref;
+
+		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
 		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
 			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
 
-			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
+			if (!(tmp & ULTRA_JOINER_ENABLE))
+				continue;
+
+			/*
+			 * As of now we always assume primary master to be PIPE A.
+			 * Otherwise we need a new field in crtc_state to track
+			 * primary master as well.
+			 */
+			drm_WARN(&dev_priv->drm,
+				 (tmp & PRIMARY_ULTRA_JOINER_ENABLE) && crtc->pipe != PIPE_A,
+				 "Ultrajoiner primary master isn't PIPE A(pipe %c)",
+				 pipe_name(crtc->pipe));
+
+			if (tmp & PRIMARY_ULTRA_JOINER_ENABLE)
 				*primary_pipes |= BIT(pipe);
-			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
+			else
 				*secondary_pipes |= BIT(pipe);
 		}
 	}
+}
 
-	/* Joiner pipes should always be consecutive primary and secondary */
-	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
-		 "Joiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
-		 *primary_pipes, *secondary_pipes);
+static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
+				 u8 *primary_pipes, u8 *secondary_pipes,
+				 bool *ultrajoiner_used)
+{
+	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
+	u8 primary_ultrajoiner_pipes;
+	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
+	u8 secondary_ultrajoiner_pipes;
+	u8 ultrajoiner_pipes, bigjoiner_pipes;
+
+	enabled_uncompressed_joiner_pipes(dev_priv, &primary_uncompressed_joiner_pipes,
+					  &secondary_uncompressed_joiner_pipes);
+
+	enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
+				&secondary_bigjoiner_pipes);
+
+	enabled_ultrajoiner_pipes(dev_priv, &primary_ultrajoiner_pipes,
+				  &secondary_ultrajoiner_pipes);
+
+	*primary_pipes = 0;
+	*secondary_pipes = 0;
+	*ultrajoiner_used = primary_ultrajoiner_pipes && secondary_ultrajoiner_pipes;
+	ultrajoiner_pipes = primary_ultrajoiner_pipes | secondary_ultrajoiner_pipes;
+	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
+
+	drm_WARN(&dev_priv->drm,
+		(ultrajoiner_pipes & bigjoiner_pipes) == ultrajoiner_pipes,
+		"Ultrajoiner/Bigjoiner misconfigured:"
+		"Ultrajoiner pipes: 0x%x(primary) 0x%x(secondary),"
+		"Bigjoiner pipes: 0x%x(primary) 0x%x(secondary)",
+		primary_ultrajoiner_pipes, secondary_ultrajoiner_pipes,
+		primary_bigjoiner_pipes, secondary_bigjoiner_pipes);
+
+	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes |
+			 primary_ultrajoiner_pipes;
+
+	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes |
+			   secondary_ultrajoiner_pipes;
 }
 
-static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
+static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes,
+					 u8 secondary_pipes, bool ultrajoiner_used)
 {
 	if ((secondary_pipes & BIT(pipe)) == 0)
 		return pipe;
@@ -3635,15 +3736,22 @@ static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 se
 	/* ignore everything above our pipe */
 	primary_pipes &= ~GENMASK(7, pipe);
 
-	/* highest remaining bit should be our primary pipe */
-	return fls(primary_pipes) - 1;
+	if (!ultrajoiner_used) {
+		/* highest remaining bit should be our master pipe */
+		return fls(primary_pipes) - 1;
+	} else {
+		/* lowest remaining bit should be our primary master pipe */
+		return ffs(primary_pipes) - 1;
+	}
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
@@ -3655,7 +3763,10 @@ static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 second
 	/* lowest remaining bit should be the next primary pipe */
 	next_primary_pipe = ffs(primary_pipes) - 1;
 
-	return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
+	if (!ultrajoiner_used)
+		return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
+	else
+		return (secondary_pipes | primary_pipes) & ~BIT(primary_pipe);
 }
 
 static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
@@ -3676,6 +3787,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 	enum transcoder cpu_transcoder;
 	u8 primary_pipes, secondary_pipes;
 	u8 enabled_transcoders = 0;
+	bool ultrajoiner_used;
 
 	/*
 	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
@@ -3726,11 +3838,12 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
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
+					       secondary_pipes, ultrajoiner_used);
 		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
 			enabled_transcoders |= BIT(cpu_transcoder);
 	}
@@ -3863,15 +3976,18 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u8 primary_pipes, secondary_pipes;
 	enum pipe pipe = crtc->pipe;
+	bool ultrajoiner_used;
 
-	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes);
+	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes, &ultrajoiner_used);
 
 	if (((primary_pipes | secondary_pipes) & BIT(pipe)) == 0)
 		return;
 
 	crtc_state->joiner_pipes =
-		BIT(get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes)) |
-		get_joiner_secondary_pipes(pipe, primary_pipes, secondary_pipes);
+		BIT(get_joiner_primary_pipe(pipe, primary_pipes,
+					    secondary_pipes, ultrajoiner_used)) |
+			get_joiner_secondary_pipes(pipe, primary_pipes,
+						   secondary_pipes, ultrajoiner_used);
 }
 
 static bool hsw_get_pipe_config(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index f921ad67b587..016d7ce48215 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -37,6 +37,9 @@
 #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
 #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
 #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
+
+#define  ULTRA_JOINER_ENABLE			(1 << 23)
+#define  PRIMARY_ULTRA_JOINER_ENABLE		(1 << 22)
 #define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
 #define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
 
-- 
2.37.3

