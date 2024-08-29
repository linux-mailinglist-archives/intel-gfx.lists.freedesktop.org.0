Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 026C596463C
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 15:17:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DFD210E6A3;
	Thu, 29 Aug 2024 13:17:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jI5kHmwM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D19910E6A3;
 Thu, 29 Aug 2024 13:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724937452; x=1756473452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q0qwqHPxSW97xXDWRpNrCe+wuFos2CpUV/k3swINIAw=;
 b=jI5kHmwM/KAJf4zKU6nr1WflaYpxKHPzeNb41TczepB6D7efDm3NSQjZ
 lEnQApeahm5IBVC+tTUI2UvrO6kYp/StO4Lhm7rA+zt0dDsGuxA1/ogl3
 mgPTsMgwjq79XcXRiv1y/iB6VoO76hC8RK4fDqUkvHq0I9Z2IhHlEDs/M
 kgugsYfGoxHjLjTYAEaKnup8Q+77DHIzQ6y0EZ8FvGWQdgPVYLzWwmti9
 XoDtXvcgJCVdHJol8MYXIiMI8CsGOfrOazwXpvV4p8GR9qW1y4tJ6N2ju
 CPu+tHPU81Y/ufS1eU9uPJZXk9AqpqCfePWCXO3HPCGSJqxF9Xv7+3Uaa w==;
X-CSE-ConnectionGUID: llrZKtryQY6WpKW3zjnpBQ==
X-CSE-MsgGUID: kVX1ddMdQWum4abZLyjFTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23667302"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23667302"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:17:32 -0700
X-CSE-ConnectionGUID: 9cuZ+N1vSLabUS/GJq2tpw==
X-CSE-MsgGUID: qGipe7RSSy2Fzrs3PJWXog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63261787"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:17:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 18/19] drm/i915/joiner: Use struct intel_display in
 intel_joiner_enabled_pipes
Date: Thu, 29 Aug 2024 18:48:26 +0530
Message-ID: <20240829131828.2350930-19-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
References: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
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

Replace struct drm_i915_private with struct intel_display in the helper
intel_joiner_enabled_pipes and its callers.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_joiner.c  | 13 +++++++------
 drivers/gpu/drm/i915/display/intel_joiner.h  |  3 ++-
 3 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 894ca4abe187..abcb45d492b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3444,6 +3444,7 @@ static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
 
 static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	u8 panel_transcoder_mask = hsw_panel_transcoders(dev_priv);
@@ -3501,7 +3502,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 		enabled_transcoders |= BIT(cpu_transcoder);
 
 	/* joiner secondary -> consider the primary pipe's transcoder as well */
-	intel_joiner_enabled_pipes(dev_priv, &primary_pipes, &secondary_pipes);
+	intel_joiner_enabled_pipes(display, &primary_pipes, &secondary_pipes);
 	if (secondary_pipes & BIT(crtc->pipe)) {
 		cpu_transcoder = (enum transcoder)
 			intel_joiner_find_primary_pipe(crtc->pipe, primary_pipes, secondary_pipes);
diff --git a/drivers/gpu/drm/i915/display/intel_joiner.c b/drivers/gpu/drm/i915/display/intel_joiner.c
index 0899cf51a825..2c7477914f74 100644
--- a/drivers/gpu/drm/i915/display/intel_joiner.c
+++ b/drivers/gpu/drm/i915/display/intel_joiner.c
@@ -86,16 +86,17 @@ u8 intel_joiner_supported_pipes(struct drm_i915_private *i915)
 	return pipes & DISPLAY_RUNTIME_INFO(i915)->pipe_mask;
 }
 
-void intel_joiner_enabled_pipes(struct drm_i915_private *dev_priv,
+void intel_joiner_enabled_pipes(struct intel_display *display,
 				u8 *primary_pipes, u8 *secondary_pipes)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_crtc *crtc;
 
 	*primary_pipes = 0;
 	*secondary_pipes = 0;
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
-					 intel_joiner_supported_pipes(dev_priv)) {
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
+					 intel_joiner_supported_pipes(i915)) {
 		intel_dss_get_compressed_joiner_pipes(crtc,
 						      primary_pipes,
 						      secondary_pipes);
@@ -106,7 +107,7 @@ void intel_joiner_enabled_pipes(struct drm_i915_private *dev_priv,
 	}
 
 	/* Joiner pipes should always be consecutive primary and secondary */
-	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
+	drm_WARN(display->drm, *secondary_pipes != *primary_pipes << 1,
 		 "Joiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
 		 *primary_pipes, *secondary_pipes);
 }
@@ -144,12 +145,12 @@ u8 intel_joiner_find_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 second
 
 void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u8 primary_pipes, secondary_pipes;
 	enum pipe pipe = crtc->pipe;
 
-	intel_joiner_enabled_pipes(i915, &primary_pipes, &secondary_pipes);
+	intel_joiner_enabled_pipes(display, &primary_pipes, &secondary_pipes);
 
 	if (((primary_pipes | secondary_pipes) & BIT(pipe)) == 0)
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_joiner.h b/drivers/gpu/drm/i915/display/intel_joiner.h
index cae9971c44f6..49cb2d78f4c8 100644
--- a/drivers/gpu/drm/i915/display/intel_joiner.h
+++ b/drivers/gpu/drm/i915/display/intel_joiner.h
@@ -13,6 +13,7 @@ struct drm_display_mode;
 struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc_state;
+struct intel_display;
 
 enum pipe intel_joiner_get_primary_pipe(const struct intel_crtc_state *crtc_state);
 int intel_joiner_get_num_pipes(const struct intel_crtc_state *crtc_state);
@@ -21,7 +22,7 @@ void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_state,
 void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state);
 void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state);
 u8 intel_joiner_supported_pipes(struct drm_i915_private *i915);
-void intel_joiner_enabled_pipes(struct drm_i915_private *dev_priv,
+void intel_joiner_enabled_pipes(struct intel_display *display,
 				u8 *primary_pipes, u8 *secondary_pipes);
 enum pipe intel_joiner_find_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes);
 u8 intel_joiner_find_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes);
-- 
2.45.2

