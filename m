Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD0FA79FAE
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:12:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1922710E972;
	Thu,  3 Apr 2025 09:11:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m9onV3vT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48DAE10E96A;
 Thu,  3 Apr 2025 09:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743671515; x=1775207515;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SYq6cqzjGILDk7wBPrKM7aPpGBMUHto1sWVnntnxf8A=;
 b=m9onV3vTYshJolMMQHFZjqF4ld2XsyojoY16eSuWwkkib4ROPfenFhkQ
 NudMRtISoNXBgRBRT9Y6LpbJoYWbWxHV1/fRFL+GZsp2Haku5OiSb2vHf
 uQbBAeP+95QWquzgYX7hHYWMzwAIzA9K89lD47NALtfpU9IEBJK2ogbOl
 HLRnws6P9MF9w4CRxCexTTCLxhuc4ByX7dOLzcFmM2bA7vV8A7MdSIVUK
 ABMvac4yhzze0LotBAa0AkOsz5Tx2ObEREuI+nOCbuA56NEsDsJuiMEeq
 0IFOH7u1Y8kV/5bD7rfnuqAXOaVEf03TAV7jXoYSO6By/yJtIpD//4axR Q==;
X-CSE-ConnectionGUID: eF6XQs1fTbGGbNDGSMbXXg==
X-CSE-MsgGUID: ZDT4aXNOTQmQQYuNUO/KCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="44960772"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="44960772"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:11:54 -0700
X-CSE-ConnectionGUID: jxqI9KpJQieH+hScD3vJAg==
X-CSE-MsgGUID: IP0fRg2DS0evMpRWoDdblg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127447983"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.158])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:11:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/7] drm/i915/wm: convert intel_wm.c internally to struct
 intel_display
Date: Thu,  3 Apr 2025 12:11:34 +0300
Message-Id: <80ca91337285b4625edb1dab23ea309f11915e6e.1743671373.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1743671373.git.jani.nikula@intel.com>
References: <cover.1743671373.git.jani.nikula@intel.com>
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
pointer. Convert as much as possible of intel_wm.c to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_wm.c | 122 ++++++++++++------------
 1 file changed, 61 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index c6aff3ba8e3d..9899e4c3ae96 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -64,10 +64,10 @@ int intel_wm_compute(struct intel_atomic_state *state,
 bool intel_initial_watermarks(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 
-	if (i915->display.funcs.wm->initial_watermarks) {
-		i915->display.funcs.wm->initial_watermarks(state, crtc);
+	if (display->funcs.wm->initial_watermarks) {
+		display->funcs.wm->initial_watermarks(state, crtc);
 		return true;
 	}
 
@@ -77,27 +77,27 @@ bool intel_initial_watermarks(struct intel_atomic_state *state,
 void intel_atomic_update_watermarks(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 
-	if (i915->display.funcs.wm->atomic_update_watermarks)
-		i915->display.funcs.wm->atomic_update_watermarks(state, crtc);
+	if (display->funcs.wm->atomic_update_watermarks)
+		display->funcs.wm->atomic_update_watermarks(state, crtc);
 }
 
 void intel_optimize_watermarks(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 
-	if (i915->display.funcs.wm->optimize_watermarks)
-		i915->display.funcs.wm->optimize_watermarks(state, crtc);
+	if (display->funcs.wm->optimize_watermarks)
+		display->funcs.wm->optimize_watermarks(state, crtc);
 }
 
 int intel_compute_global_watermarks(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 
-	if (i915->display.funcs.wm->compute_global_watermarks)
-		return i915->display.funcs.wm->compute_global_watermarks(state);
+	if (display->funcs.wm->compute_global_watermarks)
+		return display->funcs.wm->compute_global_watermarks(state);
 
 	return 0;
 }
@@ -179,22 +179,22 @@ void intel_wm_init(struct intel_display *display)
 
 static void wm_latency_show(struct seq_file *m, const u16 wm[8])
 {
-	struct drm_i915_private *dev_priv = m->private;
+	struct intel_display *display = m->private;
 	int level;
 
-	drm_modeset_lock_all(&dev_priv->drm);
+	drm_modeset_lock_all(display->drm);
 
-	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
+	for (level = 0; level < display->wm.num_levels; level++) {
 		unsigned int latency = wm[level];
 
 		/*
 		 * - WM1+ latency values in 0.5us units
 		 * - latencies are in us on gen9/vlv/chv
 		 */
-		if (DISPLAY_VER(dev_priv) >= 9 ||
-		    IS_VALLEYVIEW(dev_priv) ||
-		    IS_CHERRYVIEW(dev_priv) ||
-		    IS_G4X(dev_priv))
+		if (DISPLAY_VER(display) >= 9 ||
+		    display->platform.valleyview ||
+		    display->platform.cherryview ||
+		    display->platform.g4x)
 			latency *= 10;
 		else if (level > 0)
 			latency *= 5;
@@ -203,18 +203,18 @@ static void wm_latency_show(struct seq_file *m, const u16 wm[8])
 			   level, wm[level], latency / 10, latency % 10);
 	}
 
-	drm_modeset_unlock_all(&dev_priv->drm);
+	drm_modeset_unlock_all(display->drm);
 }
 
 static int pri_wm_latency_show(struct seq_file *m, void *data)
 {
-	struct drm_i915_private *dev_priv = m->private;
+	struct intel_display *display = m->private;
 	const u16 *latencies;
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
+	if (DISPLAY_VER(display) >= 9)
+		latencies = display->wm.skl_latency;
 	else
-		latencies = dev_priv->display.wm.pri_latency;
+		latencies = display->wm.pri_latency;
 
 	wm_latency_show(m, latencies);
 
@@ -223,13 +223,13 @@ static int pri_wm_latency_show(struct seq_file *m, void *data)
 
 static int spr_wm_latency_show(struct seq_file *m, void *data)
 {
-	struct drm_i915_private *dev_priv = m->private;
+	struct intel_display *display = m->private;
 	const u16 *latencies;
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
+	if (DISPLAY_VER(display) >= 9)
+		latencies = display->wm.skl_latency;
 	else
-		latencies = dev_priv->display.wm.spr_latency;
+		latencies = display->wm.spr_latency;
 
 	wm_latency_show(m, latencies);
 
@@ -238,13 +238,13 @@ static int spr_wm_latency_show(struct seq_file *m, void *data)
 
 static int cur_wm_latency_show(struct seq_file *m, void *data)
 {
-	struct drm_i915_private *dev_priv = m->private;
+	struct intel_display *display = m->private;
 	const u16 *latencies;
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
+	if (DISPLAY_VER(display) >= 9)
+		latencies = display->wm.skl_latency;
 	else
-		latencies = dev_priv->display.wm.cur_latency;
+		latencies = display->wm.cur_latency;
 
 	wm_latency_show(m, latencies);
 
@@ -253,39 +253,39 @@ static int cur_wm_latency_show(struct seq_file *m, void *data)
 
 static int pri_wm_latency_open(struct inode *inode, struct file *file)
 {
-	struct drm_i915_private *dev_priv = inode->i_private;
+	struct intel_display *display = inode->i_private;
 
-	if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
+	if (DISPLAY_VER(display) < 5 && !display->platform.g4x)
 		return -ENODEV;
 
-	return single_open(file, pri_wm_latency_show, dev_priv);
+	return single_open(file, pri_wm_latency_show, display);
 }
 
 static int spr_wm_latency_open(struct inode *inode, struct file *file)
 {
-	struct drm_i915_private *dev_priv = inode->i_private;
+	struct intel_display *display = inode->i_private;
 
-	if (HAS_GMCH(dev_priv))
+	if (HAS_GMCH(display))
 		return -ENODEV;
 
-	return single_open(file, spr_wm_latency_show, dev_priv);
+	return single_open(file, spr_wm_latency_show, display);
 }
 
 static int cur_wm_latency_open(struct inode *inode, struct file *file)
 {
-	struct drm_i915_private *dev_priv = inode->i_private;
+	struct intel_display *display = inode->i_private;
 
-	if (HAS_GMCH(dev_priv))
+	if (HAS_GMCH(display))
 		return -ENODEV;
 
-	return single_open(file, cur_wm_latency_show, dev_priv);
+	return single_open(file, cur_wm_latency_show, display);
 }
 
 static ssize_t wm_latency_write(struct file *file, const char __user *ubuf,
 				size_t len, loff_t *offp, u16 wm[8])
 {
 	struct seq_file *m = file->private_data;
-	struct drm_i915_private *dev_priv = m->private;
+	struct intel_display *display = m->private;
 	u16 new[8] = {};
 	int level;
 	int ret;
@@ -302,15 +302,15 @@ static ssize_t wm_latency_write(struct file *file, const char __user *ubuf,
 	ret = sscanf(tmp, "%hu %hu %hu %hu %hu %hu %hu %hu",
 		     &new[0], &new[1], &new[2], &new[3],
 		     &new[4], &new[5], &new[6], &new[7]);
-	if (ret != dev_priv->display.wm.num_levels)
+	if (ret != display->wm.num_levels)
 		return -EINVAL;
 
-	drm_modeset_lock_all(&dev_priv->drm);
+	drm_modeset_lock_all(display->drm);
 
-	for (level = 0; level < dev_priv->display.wm.num_levels; level++)
+	for (level = 0; level < display->wm.num_levels; level++)
 		wm[level] = new[level];
 
-	drm_modeset_unlock_all(&dev_priv->drm);
+	drm_modeset_unlock_all(display->drm);
 
 	return len;
 }
@@ -319,13 +319,13 @@ static ssize_t pri_wm_latency_write(struct file *file, const char __user *ubuf,
 				    size_t len, loff_t *offp)
 {
 	struct seq_file *m = file->private_data;
-	struct drm_i915_private *dev_priv = m->private;
+	struct intel_display *display = m->private;
 	u16 *latencies;
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
+	if (DISPLAY_VER(display) >= 9)
+		latencies = display->wm.skl_latency;
 	else
-		latencies = dev_priv->display.wm.pri_latency;
+		latencies = display->wm.pri_latency;
 
 	return wm_latency_write(file, ubuf, len, offp, latencies);
 }
@@ -334,13 +334,13 @@ static ssize_t spr_wm_latency_write(struct file *file, const char __user *ubuf,
 				    size_t len, loff_t *offp)
 {
 	struct seq_file *m = file->private_data;
-	struct drm_i915_private *dev_priv = m->private;
+	struct intel_display *display = m->private;
 	u16 *latencies;
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
+	if (DISPLAY_VER(display) >= 9)
+		latencies = display->wm.skl_latency;
 	else
-		latencies = dev_priv->display.wm.spr_latency;
+		latencies = display->wm.spr_latency;
 
 	return wm_latency_write(file, ubuf, len, offp, latencies);
 }
@@ -349,13 +349,13 @@ static ssize_t cur_wm_latency_write(struct file *file, const char __user *ubuf,
 				    size_t len, loff_t *offp)
 {
 	struct seq_file *m = file->private_data;
-	struct drm_i915_private *dev_priv = m->private;
+	struct intel_display *display = m->private;
 	u16 *latencies;
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
+	if (DISPLAY_VER(display) >= 9)
+		latencies = display->wm.skl_latency;
 	else
-		latencies = dev_priv->display.wm.cur_latency;
+		latencies = display->wm.cur_latency;
 
 	return wm_latency_write(file, ubuf, len, offp, latencies);
 }
@@ -393,13 +393,13 @@ void intel_wm_debugfs_register(struct intel_display *display)
 	struct drm_minor *minor = display->drm->primary;
 
 	debugfs_create_file("i915_pri_wm_latency", 0644, minor->debugfs_root,
-			    i915, &i915_pri_wm_latency_fops);
+			    display, &i915_pri_wm_latency_fops);
 
 	debugfs_create_file("i915_spr_wm_latency", 0644, minor->debugfs_root,
-			    i915, &i915_spr_wm_latency_fops);
+			    display, &i915_spr_wm_latency_fops);
 
 	debugfs_create_file("i915_cur_wm_latency", 0644, minor->debugfs_root,
-			    i915, &i915_cur_wm_latency_fops);
+			    display, &i915_cur_wm_latency_fops);
 
 	skl_watermark_debugfs_register(i915);
 }
-- 
2.39.5

