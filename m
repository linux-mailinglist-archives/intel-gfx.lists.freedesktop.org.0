Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5509656BC
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:09:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828B310E7FC;
	Fri, 30 Aug 2024 05:08:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B33S3u2k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E20CC10E7EA;
 Fri, 30 Aug 2024 05:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724994534; x=1756530534;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kw6NRjuI4Fza8jr27vUjilBUbU+GY4l+yuxz4fhcabA=;
 b=B33S3u2ksJfA3jl/rABzbgA0mhsm/Ez+s+jyqI3bvT+56MtG920x88Fx
 DD+CWyDtC6KJV/71MFvauiD/4TONMfGE31CC+BepthcGOTS0pWG2JoHJ+
 LByLGrHGbdDLvLilBEFhzknMkDq4oc1u6B4ol3gw5J0XNGWACx9s53PMy
 Pf8SJe04nZSqCMvKM+Y9QkN5uld9GTDAXHD+jyvi7iw8uef5hhZm4Fkwa
 jXKlnztDzKf6PYoa8NS/InVBeanlaA3iJaUjP3vprxCi5l/TTqezbI3VO
 eUd84Ydkwn1738UMz/l/0uJdzGnkTz8c9dVj8bLhxhTnkWFPYeAuhxTSM w==;
X-CSE-ConnectionGUID: yhMadJptQ5e9NW3NoMZvuQ==
X-CSE-MsgGUID: 0jW40+jvRoK+lCsg0HgL+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23421701"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23421701"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:54 -0700
X-CSE-ConnectionGUID: NYP0SLSQQoitGFl89zVCkA==
X-CSE-MsgGUID: 3JC3KfTCQR6wGkUVIGq3hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="94610313"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 18/19] drm/i915/joiner: Use struct intel_display in
 intel_joiner_enabled_pipes
Date: Fri, 30 Aug 2024 10:39:48 +0530
Message-ID: <20240830050950.2528450-19-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
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
index 556c7774a0b0..22a65d66f45e 100644
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

