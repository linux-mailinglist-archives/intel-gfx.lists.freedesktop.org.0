Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D6FA80C8D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 15:39:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4641E10E69D;
	Tue,  8 Apr 2025 13:38:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QBn1qhaR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98CA410E234;
 Tue,  8 Apr 2025 13:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744119537; x=1775655537;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SYq6cqzjGILDk7wBPrKM7aPpGBMUHto1sWVnntnxf8A=;
 b=QBn1qhaRZRVoecRieqBw4rYoYX96V2qpXyU0afkjdMgM1PLjPLxTCCXG
 RWaJu2NwgjF5533N992jcms2ZAf4xN++v9ODqTxvD8gXkqpBnrzxgE1gS
 nVhW47/0EZiba6YaKvf03o6ON1Zg+dxY5wiYsRzCd2vJw/wLPYPN7POK1
 Tt4ynnoF9/eaZaIYVa1ihngmmmCwrm9wSa51cVCsBTWT3McBHkW/I9xSy
 azyBRdleTNBMR2qCsfGrGwtTmZUES5kcarZyvD/U2xOSeIgjK+rdFzSpq
 wItxdTSlvlSeBr1g+VWBt0gYh96uLb5sMMjPIenD6CKvwtzZctQLfFijU Q==;
X-CSE-ConnectionGUID: P1r5SRVNRYuAJtLoLWFPJw==
X-CSE-MsgGUID: nlRMWks0QD+2sBQ4pDQRwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45712033"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="45712033"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 06:38:55 -0700
X-CSE-ConnectionGUID: mlokH/6hQKqudN6VQafY9g==
X-CSE-MsgGUID: xu590zg0R6Wb4rj74dKUng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="129122701"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.137])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 06:38:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 2/7] drm/i915/wm: convert intel_wm.c internally to struct
 intel_display
Date: Tue,  8 Apr 2025 16:38:36 +0300
Message-Id: <6106c0313190ee904c7f7737d0b78b61983eed91.1744119460.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744119460.git.jani.nikula@intel.com>
References: <cover.1744119460.git.jani.nikula@intel.com>
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

