Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFEAA446D2
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 17:49:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C90710E76B;
	Tue, 25 Feb 2025 16:49:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l3ryccr2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61E2F10E76A;
 Tue, 25 Feb 2025 16:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740502187; x=1772038187;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KPVVSSg5PwDXLfBno/JpBNXa1i4sHlj6pc8JqsSUULI=;
 b=l3ryccr2jtFuVg89w0c79AqVjGeAb83S0O6H3ECxvyhmhbkq0G9sPhge
 f5JTBgLOoa14IeoiiVMTB5QEPFm4c3xHSFmAsCccAIATf0FG70e/b+tgP
 c+GmIesVSYUTNLFpQt54NUA9UfZS06xZZysXzSm/EeFg3m/t/CvyeCM0N
 OQ91Vyu+wciWKMXXst6ynj/7esKKKMDWBKHOVxrInLbl+5q0XfeCzBBRX
 5qU4zMXlcrTbISpdzm67amdT8yOm26JjjrOajq4BC5a8sjCn0PAQ+Hh5i
 bwSYAra+GRgeRkEw0XiFOT0U2xBLgjFykEs102Uts/+uo6P1vyyKXSCIb g==;
X-CSE-ConnectionGUID: W+dhIEyJS0KqT5XSW+EJ0Q==
X-CSE-MsgGUID: 0jB4stg1QtaEUBpGwyK0YQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41454445"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41454445"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:47 -0800
X-CSE-ConnectionGUID: orBLlGyaS3y5gOpWQC1Zrg==
X-CSE-MsgGUID: MABaWO7zTg6M1yM4d0rHAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116930249"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/12] drm/i915/drrs: convert intel_drrs.[ch] to struct
 intel_display
Date: Tue, 25 Feb 2025 18:49:07 +0200
Message-Id: <02a5189e349f91e58d3907fdf8d0d3c4c5384f4d.1740502116.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740502116.git.jani.nikula@intel.com>
References: <cover.1740502116.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_drrs.[ch] to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     | 39 +++++++++----------
 drivers/gpu/drm/i915/display/intel_drrs.h     | 10 ++---
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  4 +-
 4 files changed, 28 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 03ca2e02ab02..bf96433d63c3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2912,7 +2912,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 			    const struct intel_crtc_state *pipe_config,
 			    const struct drm_display_mode *downclock_mode)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
 	if (pipe_config->vrr.enable)
 		return false;
@@ -2930,7 +2930,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 	if (pipe_config->has_pch_encoder)
 		return false;
 
-	if (!intel_cpu_transcoder_has_drrs(i915, pipe_config->cpu_transcoder))
+	if (!intel_cpu_transcoder_has_drrs(display, pipe_config->cpu_transcoder))
 		return false;
 
 	return downclock_mode &&
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 0fec01b79b23..bf420400b505 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -65,10 +65,10 @@ const char *intel_drrs_type_str(enum drrs_type drrs_type)
 	return str[drrs_type];
 }
 
-bool intel_cpu_transcoder_has_drrs(struct drm_i915_private *i915,
+bool intel_cpu_transcoder_has_drrs(struct intel_display *display,
 				   enum transcoder cpu_transcoder)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (HAS_DOUBLE_BUFFERED_M_N(display))
 		return true;
@@ -80,16 +80,16 @@ static void
 intel_drrs_set_refresh_rate_pipeconf(struct intel_crtc *crtc,
 				     enum drrs_refresh_rate refresh_rate)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum transcoder cpu_transcoder = crtc->drrs.cpu_transcoder;
 	u32 bit;
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	if (display->platform.valleyview || display->platform.cherryview)
 		bit = TRANSCONF_REFRESH_RATE_ALT_VLV;
 	else
 		bit = TRANSCONF_REFRESH_RATE_ALT_ILK;
 
-	intel_de_rmw(dev_priv, TRANSCONF(dev_priv, cpu_transcoder),
+	intel_de_rmw(display, TRANSCONF(display, cpu_transcoder),
 		     bit, refresh_rate == DRRS_REFRESH_RATE_LOW ? bit : 0);
 }
 
@@ -132,13 +132,13 @@ static void intel_drrs_schedule_work(struct intel_crtc *crtc)
 
 static unsigned int intel_drrs_frontbuffer_bits(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	unsigned int frontbuffer_bits;
 
 	frontbuffer_bits = INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
+	for_each_intel_crtc_in_pipe_mask(display->drm, crtc,
 					 crtc_state->joiner_pipes)
 		frontbuffer_bits |= INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
 
@@ -222,13 +222,13 @@ static void intel_drrs_downclock_work(struct work_struct *work)
 	mutex_unlock(&crtc->drrs.mutex);
 }
 
-static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
+static void intel_drrs_frontbuffer_update(struct intel_display *display,
 					  unsigned int all_frontbuffer_bits,
 					  bool invalidate)
 {
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		unsigned int frontbuffer_bits;
 
 		mutex_lock(&crtc->drrs.mutex);
@@ -262,7 +262,7 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
 
 /**
  * intel_drrs_invalidate - Disable Idleness DRRS
- * @dev_priv: i915 device
+ * @display: display device
  * @frontbuffer_bits: frontbuffer plane tracking bits
  *
  * This function gets called everytime rendering on the given planes start.
@@ -270,15 +270,15 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
  *
  * Dirty frontbuffers relevant to DRRS are tracked in busy_frontbuffer_bits.
  */
-void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
+void intel_drrs_invalidate(struct intel_display *display,
 			   unsigned int frontbuffer_bits)
 {
-	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, true);
+	intel_drrs_frontbuffer_update(display, frontbuffer_bits, true);
 }
 
 /**
  * intel_drrs_flush - Restart Idleness DRRS
- * @dev_priv: i915 device
+ * @display: display device
  * @frontbuffer_bits: frontbuffer plane tracking bits
  *
  * This function gets called every time rendering on the given planes has
@@ -288,10 +288,10 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
  *
  * Dirty frontbuffers relevant to DRRS are tracked in busy_frontbuffer_bits.
  */
-void intel_drrs_flush(struct drm_i915_private *dev_priv,
+void intel_drrs_flush(struct intel_display *display,
 		      unsigned int frontbuffer_bits)
 {
-	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, false);
+	intel_drrs_frontbuffer_update(display, frontbuffer_bits, false);
 }
 
 /**
@@ -312,7 +312,7 @@ void intel_drrs_crtc_init(struct intel_crtc *crtc)
 static int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)
 {
 	struct intel_crtc *crtc = m->private;
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const struct intel_crtc_state *crtc_state;
 	int ret;
 
@@ -325,7 +325,7 @@ static int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)
 	mutex_lock(&crtc->drrs.mutex);
 
 	seq_printf(m, "DRRS capable: %s\n",
-		   str_yes_no(intel_cpu_transcoder_has_drrs(i915,
+		   str_yes_no(intel_cpu_transcoder_has_drrs(display,
 							    crtc_state->cpu_transcoder)));
 
 	seq_printf(m, "DRRS enabled: %s\n",
@@ -353,7 +353,7 @@ DEFINE_SHOW_ATTRIBUTE(intel_drrs_debugfs_status);
 static int intel_drrs_debugfs_ctl_set(void *data, u64 val)
 {
 	struct intel_crtc *crtc = data;
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_state *crtc_state;
 	struct drm_crtc_commit *commit;
 	int ret;
@@ -375,8 +375,7 @@ static int intel_drrs_debugfs_ctl_set(void *data, u64 val)
 			goto out;
 	}
 
-	drm_dbg(&i915->drm,
-		"Manually %sactivating DRRS\n", val ? "" : "de");
+	drm_dbg_kms(display->drm, "Manually %sactivating DRRS\n", val ? "" : "de");
 
 	if (val)
 		intel_drrs_activate(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 0982f95eab72..32b45a93a68f 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -10,21 +10,21 @@
 
 enum drrs_type;
 enum transcoder;
-struct drm_i915_private;
 struct intel_atomic_state;
+struct intel_connector;
 struct intel_crtc;
 struct intel_crtc_state;
-struct intel_connector;
+struct intel_display;
 
-bool intel_cpu_transcoder_has_drrs(struct drm_i915_private *i915,
+bool intel_cpu_transcoder_has_drrs(struct intel_display *display,
 				   enum transcoder cpu_transcoder);
 const char *intel_drrs_type_str(enum drrs_type drrs_type);
 bool intel_drrs_is_active(struct intel_crtc *crtc);
 void intel_drrs_activate(const struct intel_crtc_state *crtc_state);
 void intel_drrs_deactivate(const struct intel_crtc_state *crtc_state);
-void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
+void intel_drrs_invalidate(struct intel_display *display,
 			   unsigned int frontbuffer_bits);
-void intel_drrs_flush(struct drm_i915_private *dev_priv,
+void intel_drrs_flush(struct intel_display *display,
 		      unsigned int frontbuffer_bits);
 void intel_drrs_crtc_init(struct intel_crtc *crtc);
 void intel_drrs_crtc_debugfs_add(struct intel_crtc *crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 2fa4b0bf27c3..89a145b3194c 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -99,7 +99,7 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 
 	might_sleep();
 	intel_td_flush(display);
-	intel_drrs_flush(i915, frontbuffer_bits);
+	intel_drrs_flush(display, frontbuffer_bits);
 	intel_psr_flush(display, frontbuffer_bits, origin);
 	intel_fbc_flush(i915, frontbuffer_bits, origin);
 }
@@ -189,7 +189,7 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 
 	might_sleep();
 	intel_psr_invalidate(display, frontbuffer_bits, origin);
-	intel_drrs_invalidate(i915, frontbuffer_bits);
+	intel_drrs_invalidate(display, frontbuffer_bits);
 	intel_fbc_invalidate(i915, frontbuffer_bits, origin);
 }
 
-- 
2.39.5

