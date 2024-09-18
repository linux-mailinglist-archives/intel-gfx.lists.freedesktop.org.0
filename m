Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A522197BE1F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:42:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3376110E5CC;
	Wed, 18 Sep 2024 14:42:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nYFlAkL+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B5D10E5BF;
 Wed, 18 Sep 2024 14:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670534; x=1758206534;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a6V0jxlqrN3QUcQiLzM6tIwwV1ye/u/o4P5vr+caEO4=;
 b=nYFlAkL+Te7FTyW7yX1oQpMpOmh6bIhqPh4YIqKC+b5vh681OrbRxnC9
 iV7WSE/R3tbkCaSMMIQt+zSC83TDr4TN9RqYi+gDFSvGv+4I16OvcdTOH
 HSUtFptUZEw4jCUw82xW59MrO6y/+AeOXhKTkmzEjRxN+OD8WmevJq/AG
 3987CjEl3mCx7TgDuFTxMgrr9+cCllQ/w3hgTMYNHYmBoMoVh7RhoIZfz
 gzLnU7h8QNKtC6LTzkG92JstjpIaEa/tVbjBjI4OtIZ2iqWoErYBUCMZq
 iOWBA4TybHVU8cQgwd9x338xriQqIPTxvGH7O98YziUWFzgMO5SApSYK8 w==;
X-CSE-ConnectionGUID: JML3dDPDRpev5ZMPjCRdgQ==
X-CSE-MsgGUID: voHC6sRCSc6MCNk45HiYJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29481760"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="29481760"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:14 -0700
X-CSE-ConnectionGUID: V/9qu2MoQmWN2qkh7nEZfA==
X-CSE-MsgGUID: X7j65Md8SQu+LVcPNNymgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69200394"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:12 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 11/15] drm/i915/display: Refactor enable_joiner_pipes
Date: Wed, 18 Sep 2024 20:13:39 +0530
Message-ID: <20240918144343.2876184-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
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
the proper bitmasks for us.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 58 +++++++++++++-------
 1 file changed, 39 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1ce334f3a3ae..65119c26ec88 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3717,7 +3717,19 @@ static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
 	}
 }
 
-static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
+static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
+{
+	if ((secondary_pipes & BIT(pipe)) == 0)
+		return pipe;
+
+	/* ignore everything above our pipe */
+	primary_pipes &= ~GENMASK(7, pipe);
+
+	/* highest remaining bit should be our primary pipe */
+	return fls(primary_pipes) - 1;
+}
+
+static void enabled_joiner_pipes(struct drm_i915_private *dev_priv, enum pipe pipe,
 				 u8 *primary_pipes, u8 *secondary_pipes)
 {
 	struct intel_display *display = to_intel_display(&dev_priv->drm);
@@ -3782,10 +3794,30 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 		 expected_ultrajoiner_secondary_pipes(primary_ultrajoiner_pipes),
 		 secondary_ultrajoiner_pipes);
 
-	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes |
-			 primary_ultrajoiner_pipes;
-	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes |
-			 secondary_ultrajoiner_pipes;
+	*primary_pipes = 0;
+	*secondary_pipes = 0;
+
+	if (ultrajoiner_pipes & BIT(pipe)) {
+		*primary_pipes = BIT(get_joiner_primary_pipe(pipe, primary_ultrajoiner_pipes,
+							     secondary_ultrajoiner_pipes));
+		*secondary_pipes = secondary_ultrajoiner_pipes &
+				   expected_ultrajoiner_secondary_pipes(primary_ultrajoiner_pipes);
+		return;
+	}
+
+	if (uncompressed_joiner_pipes & BIT(pipe)) {
+		*primary_pipes = BIT(get_joiner_primary_pipe(pipe,
+							     primary_uncompressed_joiner_pipes,
+							     secondary_uncompressed_joiner_pipes));
+		*secondary_pipes =
+			secondary_uncompressed_joiner_pipes &
+			expected_uncompjoiner_secondary_pipes(primary_uncompressed_joiner_pipes);
+	} else if (bigjoiner_pipes & BIT(pipe)) {
+		*primary_pipes = BIT(get_joiner_primary_pipe(pipe, primary_bigjoiner_pipes,
+							     secondary_bigjoiner_pipes));
+		*secondary_pipes = secondary_bigjoiner_pipes &
+				   expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes);
+	}
 
 	/* Joiner pipes should always be consecutive primary and secondary */
 	drm_WARN(display->drm, *secondary_pipes != *primary_pipes << 1,
@@ -3793,18 +3825,6 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 		 *primary_pipes, *secondary_pipes);
 }
 
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
 static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
 {
 	enum pipe primary_pipe, next_primary_pipe;
@@ -3893,7 +3913,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 		enabled_transcoders |= BIT(cpu_transcoder);
 
 	/* joiner secondary -> consider the primary pipe's transcoder as well */
-	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes);
+	enabled_joiner_pipes(dev_priv, crtc->pipe, &primary_pipes, &secondary_pipes);
 	if (secondary_pipes & BIT(crtc->pipe)) {
 		cpu_transcoder = (enum transcoder)
 			get_joiner_primary_pipe(crtc->pipe, primary_pipes, secondary_pipes);
@@ -4030,7 +4050,7 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
 	u8 primary_pipes, secondary_pipes;
 	enum pipe pipe = crtc->pipe;
 
-	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes);
+	enabled_joiner_pipes(i915, pipe, &primary_pipes, &secondary_pipes);
 
 	if (((primary_pipes | secondary_pipes) & BIT(pipe)) == 0)
 		return;
-- 
2.45.2

