Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 790CAA3AAB7
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:20:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B65810E771;
	Tue, 18 Feb 2025 21:20:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gSsTV2dD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 070EC10E779
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913609; x=1771449609;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=huyCHgMn1jRMoVtrdz+coGv5P+FW3ZDicetyk7NzlrA=;
 b=gSsTV2dDoBTjI4gYqm7ccpcheCuwsaP2uED+AlyO4aP2fB5WXV6T3+8f
 HqdK3hadjoOJnpqljL3O41JnNBKqWQvJiV9O1P+4rDJUTR2pd0yeGlNXA
 jgTEwe0BmKJfrZ6IdvG5gu3jpLzWwXbPenPgymZBH+NYew7+yX+vDicbX
 fXtQG57n7FEIE6sT1fzb0pVhxe9mJHhqAakK5IJCONj0K5/Zn1xpDlie5
 xtBYE0qRRZSDKGkHx3It2WTJrrZOjnNivcduihkLId7CEyKoNTj8RzTUe
 JYDdRvu/lcjZ6yF6fA6Y1Z/px4xCZ3PvKPjDyIdEQChLT5er9TF76UqFm A==;
X-CSE-ConnectionGUID: /jlh9w92S2ekAIUWlfsB+Q==
X-CSE-MsgGUID: yTRL4GScRc+8mHL5laG8dA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862333"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862333"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:20:09 -0800
X-CSE-ConnectionGUID: cURSmlkVQXirPjrlMW/SSw==
X-CSE-MsgGUID: cCcm8BvsREWT3wjrU+57kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693544"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:20:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:20:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 16/19] drm/i915: Split wm sanitize from readout
Date: Tue, 18 Feb 2025 23:19:10 +0200
Message-ID: <20250218211913.27867-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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

I'll need to move the wm readout to an earlier point in the
sequence (since the bw state readout will need ddb information
from the wm readout). But (at least for now) the wm sanitation
will need to stay put as it needs to also sanitize things for
any pipes/planes we disable later during the hw state takeover.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c         | 18 ++++--------------
 .../gpu/drm/i915/display/intel_display_core.h  |  1 +
 .../gpu/drm/i915/display/intel_modeset_setup.c |  1 +
 drivers/gpu/drm/i915/display/intel_wm.c        |  6 ++++++
 drivers/gpu/drm/i915/display/intel_wm.h        |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c   |  7 +++----
 6 files changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 497850a6ac81..7c80e37c1c5f 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -3902,12 +3902,6 @@ static void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
-static void g4x_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
-{
-	g4x_wm_get_hw_state(i915);
-	g4x_wm_sanitize(i915);
-}
-
 static void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 {
 	struct vlv_wm_values *wm = &dev_priv->display.wm.vlv;
@@ -4055,12 +4049,6 @@ static void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
 	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
-static void vlv_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
-{
-	vlv_wm_get_hw_state(i915);
-	vlv_wm_sanitize(i915);
-}
-
 /*
  * FIXME should probably kill this and improve
  * the real watermark readout/sanitation instead
@@ -4122,14 +4110,16 @@ static const struct intel_wm_funcs vlv_wm_funcs = {
 	.initial_watermarks = vlv_initial_watermarks,
 	.optimize_watermarks = vlv_optimize_watermarks,
 	.atomic_update_watermarks = vlv_atomic_update_fifo,
-	.get_hw_state = vlv_wm_get_hw_state_and_sanitize,
+	.get_hw_state = vlv_wm_get_hw_state,
+	.sanitize = vlv_wm_sanitize,
 };
 
 static const struct intel_wm_funcs g4x_wm_funcs = {
 	.compute_watermarks = g4x_compute_watermarks,
 	.initial_watermarks = g4x_initial_watermarks,
 	.optimize_watermarks = g4x_optimize_watermarks,
-	.get_hw_state = g4x_wm_get_hw_state_and_sanitize,
+	.get_hw_state = g4x_wm_get_hw_state,
+	.sanitize = g4x_wm_sanitize,
 };
 
 static const struct intel_wm_funcs pnv_wm_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 554870d2494b..ce41a1d20a7b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -91,6 +91,7 @@ struct intel_wm_funcs {
 				    struct intel_crtc *crtc);
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
 	void (*get_hw_state)(struct drm_i915_private *i915);
+	void (*sanitize)(struct drm_i915_private *i915);
 };
 
 struct intel_audio_state {
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 70fad9f89cea..03c0facfad7a 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -991,6 +991,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 	intel_dpll_sanitize_state(display);
 
 	intel_wm_get_hw_state(i915);
+	intel_wm_sanitize(i915);
 
 	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index d7dc49aecd27..f00f4cfc58e5 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -108,6 +108,12 @@ void intel_wm_get_hw_state(struct drm_i915_private *i915)
 		return i915->display.funcs.wm->get_hw_state(i915);
 }
 
+void intel_wm_sanitize(struct drm_i915_private *i915)
+{
+	if (i915->display.funcs.wm->sanitize)
+		return i915->display.funcs.wm->sanitize(i915);
+}
+
 bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_wm.h b/drivers/gpu/drm/i915/display/intel_wm.h
index e97cdca89a5c..7d3a447054b3 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.h
+++ b/drivers/gpu/drm/i915/display/intel_wm.h
@@ -25,6 +25,7 @@ void intel_optimize_watermarks(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc);
 int intel_compute_global_watermarks(struct intel_atomic_state *state);
 void intel_wm_get_hw_state(struct drm_i915_private *i915);
+void intel_wm_sanitize(struct drm_i915_private *i915);
 bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state);
 void intel_print_wm_latency(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index da7ffcfd9478..0bd7aa3b2877 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3837,10 +3837,8 @@ static void skl_dbuf_sanitize(struct drm_i915_private *i915)
 	}
 }
 
-static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
+static void skl_wm_sanitize(struct drm_i915_private *i915)
 {
-	skl_wm_get_hw_state(i915);
-
 	skl_mbus_sanitize(i915);
 	skl_dbuf_sanitize(i915);
 }
@@ -4016,7 +4014,8 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 
 static const struct intel_wm_funcs skl_wm_funcs = {
 	.compute_global_watermarks = skl_compute_wm,
-	.get_hw_state = skl_wm_get_hw_state_and_sanitize,
+	.get_hw_state = skl_wm_get_hw_state,
+	.sanitize = skl_wm_sanitize,
 };
 
 void skl_wm_init(struct drm_i915_private *i915)
-- 
2.45.3

