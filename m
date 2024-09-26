Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA3C986D75
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 09:25:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4658610EABA;
	Thu, 26 Sep 2024 07:25:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UrGKB2L8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0BB910EAB8;
 Thu, 26 Sep 2024 07:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727335499; x=1758871499;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jZwgrPfzMKqkep+ohmaNmU6XGBe1rE+TzODoJQrV8As=;
 b=UrGKB2L8bvC928m4MHFiUla0twPCJ+xgguXJ4vAUzy2DES78bM32KFp1
 7T7i73o1SNsCGHI3qYNuM8tTwk2wwmR+IUaFEPEPfDFCvoHBMbyTBCw25
 oUyhbfS1fQkajAGvC0qXHGY0Sd6/pvLY0iW/R2qnPfxk+t6xde1/caSgA
 iUYXWTwrf1cSIrffaj/9v+wg5ZyPXjlULXQmwRLRI2ctfRd8tROLKZxsy
 T4wIHYGdP32gtJ717G8QOPEmswnt8+V89pPlotFkb0xXECxpBXutNNx1J
 fjLXnRKQfP2ADAbUnWM9lq7iYmdlcE21DHpZ9o5QPJ5loRBfOPAKK+rWR g==;
X-CSE-ConnectionGUID: 05yBl1bgRWKxutoywzGLZg==
X-CSE-MsgGUID: vBEJ7ZYJTTuhQG2XqUi9cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="51829453"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="51829453"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:24:59 -0700
X-CSE-ConnectionGUID: 2IQKFHQdQ7eCaCYDbEGB2Q==
X-CSE-MsgGUID: 6yRC0hXnT/W5lNbC4Pfieg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72334436"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:24:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 08/15] drm/i915/display: Refactor enable_joiner_pipes
Date: Thu, 26 Sep 2024 12:56:31 +0530
Message-ID: <20240926072638.3689367-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
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

Pass the current pipe into enabled_joiner_pipes(), and let it figure out
the proper bitmasks for us. Since the enabled_joiner_pipes now gets the
primary and secondary pipe wrt a given pipe, the helpers
to get primary pipe and secondary pipes are no longer required.

v2:
-Simplify helper get_joiner_primary_pipes. (Ville)
-Nuke get_joiner_secondary_pipes. (Ville)
-Add more drm_WARNs final primary/secondary pipes. (Ville)
v3:
-Drop ultrajoiner stuff and add it in subsequent patches. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 89 ++++++++++----------
 1 file changed, 44 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2d6260c3bca5..ea259b142786 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3663,7 +3663,15 @@ static u8 expected_bigjoiner_secondary_pipes(u8 bigjoiner_primary_pipes)
 	return expected_secondary_pipes(bigjoiner_primary_pipes, 2);
 }
 
+static u8 get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes)
+{
+	primary_pipes &= GENMASK(pipe, 0);
+
+	return primary_pipes ? BIT(fls(primary_pipes) - 1) : 0;
+}
+
 static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
+				 enum pipe pipe,
 				 u8 *primary_pipes, u8 *secondary_pipes)
 {
 	struct intel_display *display = to_intel_display(&dev_priv->drm);
@@ -3703,45 +3711,38 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 		 expected_uncompressed_joiner_secondary_pipes(primary_uncompressed_joiner_pipes),
 		 secondary_uncompressed_joiner_pipes);
 
-	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
-
-	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
-
-	/* Joiner pipes should always be consecutive primary and secondary */
-	drm_WARN(display->drm, *secondary_pipes != *primary_pipes << 1,
-		 "Joiner misconfigured (primary pipes %#x, secondary pipes %#x)\n",
-		 *primary_pipes, *secondary_pipes);
-}
-
-static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
-{
-	if ((secondary_pipes & BIT(pipe)) == 0)
-		return pipe;
-
-	/* ignore everything above our pipe */
-	primary_pipes &= ~GENMASK(7, pipe);
-
-	/* highest remaining bit should be our primary pipe */
-	return fls(primary_pipes) - 1;
-}
-
-static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
-{
-	enum pipe primary_pipe, next_primary_pipe;
-
-	primary_pipe = get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes);
-
-	if ((primary_pipes & BIT(primary_pipe)) == 0)
-		return 0;
-
-	/* ignore our primary pipe and everything below it */
-	primary_pipes &= ~GENMASK(primary_pipe, 0);
-	/* make sure a high bit is set for the ffs() */
-	primary_pipes |= BIT(7);
-	/* lowest remaining bit should be the next primary pipe */
-	next_primary_pipe = ffs(primary_pipes) - 1;
-
-	return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
+	*primary_pipes = 0;
+	*secondary_pipes = 0;
+
+	if (uncompressed_joiner_pipes & BIT(pipe)) {
+		*primary_pipes = get_joiner_primary_pipe(pipe, primary_uncompressed_joiner_pipes);
+		*secondary_pipes = secondary_uncompressed_joiner_pipes &
+				   expected_uncompressed_joiner_secondary_pipes(*primary_pipes);
+
+		drm_WARN(display->drm,
+			 expected_uncompressed_joiner_secondary_pipes(*primary_pipes) !=
+			 *secondary_pipes,
+			 "Wrong uncompressed joiner secondary pipes for primary_pipes %#x (expected %#x, current %#x)\n",
+			 *primary_pipes,
+			 expected_uncompressed_joiner_secondary_pipes(*primary_pipes),
+			 *secondary_pipes);
+		return;
+	}
+
+	if (bigjoiner_pipes & BIT(pipe)) {
+		*primary_pipes = get_joiner_primary_pipe(pipe, primary_bigjoiner_pipes);
+		*secondary_pipes = secondary_bigjoiner_pipes &
+				   expected_bigjoiner_secondary_pipes(*primary_pipes);
+
+		drm_WARN(display->drm,
+			 expected_bigjoiner_secondary_pipes(*primary_pipes) !=
+			 *secondary_pipes,
+			 "Wrong bigjoiner secondary pipes for primary_pipes %#x (expected %#x, current %#x)\n",
+			 *primary_pipes,
+			 expected_bigjoiner_secondary_pipes(*primary_pipes),
+			 *secondary_pipes);
+		return;
+	}
 }
 
 static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
@@ -3813,10 +3814,10 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 		enabled_transcoders |= BIT(cpu_transcoder);
 
 	/* joiner secondary -> consider the primary pipe's transcoder as well */
-	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes);
+	enabled_joiner_pipes(dev_priv, crtc->pipe, &primary_pipes, &secondary_pipes);
 	if (secondary_pipes & BIT(crtc->pipe)) {
 		cpu_transcoder = (enum transcoder)
-			get_joiner_primary_pipe(crtc->pipe, primary_pipes, secondary_pipes);
+			ffs(get_joiner_primary_pipe(crtc->pipe, primary_pipes)) - 1;
 		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
 			enabled_transcoders |= BIT(cpu_transcoder);
 	}
@@ -3950,14 +3951,12 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
 	u8 primary_pipes, secondary_pipes;
 	enum pipe pipe = crtc->pipe;
 
-	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes);
+	enabled_joiner_pipes(i915, pipe, &primary_pipes, &secondary_pipes);
 
 	if (((primary_pipes | secondary_pipes) & BIT(pipe)) == 0)
 		return;
 
-	crtc_state->joiner_pipes =
-		BIT(get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes)) |
-		get_joiner_secondary_pipes(pipe, primary_pipes, secondary_pipes);
+	crtc_state->joiner_pipes = primary_pipes | secondary_pipes;
 }
 
 static bool hsw_get_pipe_config(struct intel_crtc *crtc,
-- 
2.45.2

