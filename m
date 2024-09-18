Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC43D97BFD8
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:48:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7007910E618;
	Wed, 18 Sep 2024 17:48:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HLk8Y+yd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 007F510E612;
 Wed, 18 Sep 2024 17:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726681721; x=1758217721;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xZXDt3K7ptN1hbTVwUNWBiTxPJy+N5UIIqNeHhTrKZ4=;
 b=HLk8Y+ydUJ/mbcrX7xnOw1dGQK7YnQ7a4zQKW/Kl3yYbe+8DgTSC7jbb
 y1Wwsuk5NFnvWRcFo91e8N8VlRTlE5U7/pr7kw7O135UR1wPCdvlvWt8w
 rKq67d1iKnxBLEVbnEUxQHUbkS+HAArfQWFIqvv8OvZBJ3ZGlHREOXiYn
 WA2fHtkzlZUYIQRJ+Lw5TRlbPMY1dbOet9os9JyQ7G/EBGKM2OlKaa6cW
 qJveK+cOgb1qi8RTXQ6zmz8nLY/x8ZPbpAzU2hykGApmwRZo7kVSnAx1j
 eOcggqsOObyAjjfvFTLeeVWd3SJO4+uqEaqJGMwE4kZ1gt/8p366T7acv A==;
X-CSE-ConnectionGUID: FqCx8bsNQa6VwaJcsc+Alg==
X-CSE-MsgGUID: bwdRC094R/W1Ada5qPCm0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25493023"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25493023"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:41 -0700
X-CSE-ConnectionGUID: mYsUC6BGR0qRfh0Bkh9pOw==
X-CSE-MsgGUID: JwBKdMqxSAa4WACLER4JRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69660552"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 9/9] drm/i915/pps: move vlv_active_pipe() to intel_pps.c
Date: Wed, 18 Sep 2024 20:47:49 +0300
Message-Id: <e12ae0a931f113f3bbbf1b4c66108b572a933efb.1726681620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726681620.git.jani.nikula@intel.com>
References: <cover.1726681620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

All the users for vlv_active_pipe() are within intel_pps.c now, and
there are already uses of g4x_dp_port_enabled() and intel_dp->output_reg
in there, so seems fine to reduce interfaces and move vlv_active_pipe()
to intel_pps.c too.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c    | 14 --------------
 drivers/gpu/drm/i915/display/g4x_dp.h    |  5 -----
 drivers/gpu/drm/i915/display/intel_pps.c | 14 ++++++++++++++
 3 files changed, 14 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 162802c54d4b..040478048b97 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1245,20 +1245,6 @@ static void intel_dp_encoder_destroy(struct drm_encoder *encoder)
 	kfree(enc_to_dig_port(to_intel_encoder(encoder)));
 }
 
-enum pipe vlv_active_pipe(struct intel_dp *intel_dp)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	enum pipe pipe;
-
-	if (g4x_dp_port_enabled(dev_priv, intel_dp->output_reg,
-				encoder->port, &pipe))
-		return pipe;
-
-	return INVALID_PIPE;
-}
-
 static void intel_dp_encoder_reset(struct drm_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder->dev);
diff --git a/drivers/gpu/drm/i915/display/g4x_dp.h b/drivers/gpu/drm/i915/display/g4x_dp.h
index a10638ab749c..c75e64ae79b7 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.h
+++ b/drivers/gpu/drm/i915/display/g4x_dp.h
@@ -19,7 +19,6 @@ struct intel_encoder;
 
 #ifdef I915
 const struct dpll *vlv_get_dpll(struct drm_i915_private *i915);
-enum pipe vlv_active_pipe(struct intel_dp *intel_dp);
 void g4x_dp_set_clock(struct intel_encoder *encoder,
 		      struct intel_crtc_state *pipe_config);
 bool g4x_dp_port_enabled(struct drm_i915_private *dev_priv,
@@ -32,10 +31,6 @@ static inline const struct dpll *vlv_get_dpll(struct drm_i915_private *i915)
 {
 	return NULL;
 }
-static inline int vlv_active_pipe(struct intel_dp *intel_dp)
-{
-	return 0;
-}
 static inline void g4x_dp_set_clock(struct intel_encoder *encoder,
 				    struct intel_crtc_state *pipe_config)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 9cb091e7c94a..819b2843946f 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1211,6 +1211,20 @@ static void vlv_steal_power_sequencer(struct intel_display *display,
 	}
 }
 
+static enum pipe vlv_active_pipe(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	enum pipe pipe;
+
+	if (g4x_dp_port_enabled(dev_priv, intel_dp->output_reg,
+				encoder->port, &pipe))
+		return pipe;
+
+	return INVALID_PIPE;
+}
+
 /* Call on all DP, not just eDP */
 void vlv_pps_pipe_init(struct intel_dp *intel_dp)
 {
-- 
2.39.2

