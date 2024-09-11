Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA3D975353
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7321310EA26;
	Wed, 11 Sep 2024 13:12:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JjhU/CZw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A74610EA21
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060352; x=1757596352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kBw/d3Kr5rZ92iTX5wK9EM7OwBss6IHGPQcEmihJ+so=;
 b=JjhU/CZwz15GZT4rXOWmwpoyAvE8GfoVdSZmpf+e0+a1S16ahaGiXVCQ
 8fYsEUhIHBQWI9jo9pGQvDqD2LWgwCrci6IpWZnF76slwtIvbyk0RvQHa
 SKRTcx+8s0m66WjAtoixXrpv/1lJ7pZhv01JUvPWcuQUgQk1WGvNMZL4R
 i8gExEMe8ehzfZoJO0gqEh91gBPmNNldgiSPFsPISkTCBp1PGXKkjUGlD
 Z6ElY220reEXwoFoXXjezVNgtGMCq+eRMXC9vD9r7PnI3XydDEDnGBrEx
 O6vR634CyIAAyQaBtBDAnEF5ToH5Ol1KtVDh2fFy1/kt0yinMs8Ide9D5 w==;
X-CSE-ConnectionGUID: av3xYXhbQNy+8Dz11lElfQ==
X-CSE-MsgGUID: BdfKb0zGSMaNxcLDY5V8gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244410"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244410"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:32 -0700
X-CSE-ConnectionGUID: cE4qZt7oRO6cctK3hpxTkw==
X-CSE-MsgGUID: cBNOw4inTqO60z8PBjYMqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67381057"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:30 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 14/19] drm/i915/display: Percolate ultrajoiner info to
 get_joiner_config
Date: Wed, 11 Sep 2024 18:43:44 +0530
Message-ID: <20240911131349.933814-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
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

Modify the helpers get_primary/secondary_pipes to account for
ultrajoiner usage. Use the modified helpers to retrieve ultrajoiner
information in get_joiner_config.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 57 +++++++++++++-------
 1 file changed, 37 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 02926a8ef7c5..24698d8ed5d6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3716,7 +3716,8 @@ static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
 }
 
 static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
-				 u8 *primary_pipes, u8 *secondary_pipes)
+				 u8 *primary_pipes, u8 *secondary_pipes,
+				 bool *ultrajoiner_used)
 {
 	struct intel_display *display = to_intel_display(&dev_priv->drm);
 	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
@@ -3760,6 +3761,7 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 				    secondary_uncompressed_joiner_pipes;
 	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
 	ultrajoiner_pipes = primary_ultrajoiner_pipes | secondary_ultrajoiner_pipes;
+	*ultrajoiner_used = ultrajoiner_pipes != 0;
 
 	drm_WARN(display->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
 		 "Uncomressed joiner pipes(%#x) and bigjoiner pipes(%#x) can't intersect\n",
@@ -3794,7 +3796,8 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 		 *primary_pipes, *secondary_pipes);
 }
 
-static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
+static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes,
+					 u8 secondary_pipes, bool ultrajoiner_used)
 {
 	if ((secondary_pipes & BIT(pipe)) == 0)
 		return pipe;
@@ -3802,27 +3805,37 @@ static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 se
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
@@ -3843,6 +3856,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 	enum transcoder cpu_transcoder;
 	u8 primary_pipes, secondary_pipes;
 	u8 enabled_transcoders = 0;
+	bool ultrajoiner_used;
 
 	/*
 	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
@@ -3893,11 +3907,12 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
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
@@ -4029,16 +4044,18 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
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
-- 
2.45.2

