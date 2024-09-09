Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EDA971920
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:16:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D21E010E4F5;
	Mon,  9 Sep 2024 12:16:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nGLv2Whk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CC4710E4A7;
 Mon,  9 Sep 2024 12:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725884190; x=1757420190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WrWZc3cnk/4CpP0inKrjykAPx3eGjiRR8tdRZIHPCto=;
 b=nGLv2Whk0mwcpQZ7qb/WB0k3DhVc4vMy37QplTQRkXGW+4F91LWKSMJ9
 FxlVcGr9OQuvtwPeWlP8NBnBt2U5jv3bo7QpOOneKx59lpTB7+BKZmWfi
 NP79G6HFJIoguHZ+dxpdcSAcGO+wz7mLTd2qWY+4KilyTiq7Nsl4juXMk
 MWmQX28HFc/CT7pSbmbmctnkE0zhCqMAI47KYVdMh/YxP04iTJ+D5jW8x
 vrvkPwCEQwx4S/RE6RYKQ1ak5aug2kNAScGl333XnQVL7ueGe8aqs1Sq+
 60uJeoDz9MmFlNU6PQLhvhGmOcnyqdhpo7+yoOV7io5UWHrk8zbt0X5X7 Q==;
X-CSE-ConnectionGUID: TMDl+8B8TdefkkR5/xBd+Q==
X-CSE-MsgGUID: mbbqqsKdRzS7qVnk7ui2ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="35719399"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="35719399"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:16:30 -0700
X-CSE-ConnectionGUID: kzVlDKRQQnWHwO/FYTWCNw==
X-CSE-MsgGUID: GCmMtQGsSxCm+K8/XORdVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="89942964"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:16:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 8/8] drm/i915/pps: move vlv_active_pipe() to intel_pps.c
Date: Mon,  9 Sep 2024 15:15:43 +0300
Message-Id: <0375672599e532984889a9b35bfd67849ca40fad.1725883885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725883885.git.jani.nikula@intel.com>
References: <cover.1725883885.git.jani.nikula@intel.com>
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
index 796ec2244a4d..14bd23c89742 100644
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
index 2fe23238c8a3..b8612a3cb5cc 100644
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

