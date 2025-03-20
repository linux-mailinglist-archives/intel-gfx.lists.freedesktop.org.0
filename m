Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF7BA6A8EF
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 15:46:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B158510E63B;
	Thu, 20 Mar 2025 14:46:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dF9oiLcM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AC3310E63E;
 Thu, 20 Mar 2025 14:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742481989; x=1774017989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YRFcuIMFd//g0hAxlESfkmaBtzk3YB/yzrgGTj+G7fU=;
 b=dF9oiLcMuKDNH3pu9/gEc/C7hY3fAi8rkv0el5R6M7GqO3U4Iup4M6UI
 T3k5kFArDAy1bVtdVN+3V9bvlc9LshxntYfEYnLPPzvm+KQPsvms9F1aF
 pghGXb9WhVfSd8vmEnqXG6jsM4c14UFPRYN9mEEAibzCn5gg4VMOHYnZs
 fvYMgDkK8P+AfdW68Q22cBrYp4mAXIb15IWb+MqwhzE42VVRPnwXD+SqC
 f2BGup48T/WpIcwChWM4IAhKkAJdgAkCIZVklqxqIHn9145Ie+dnSIkKP
 yzEodRCQf2ENuZ7dzneCagkUFEyBrUsTSqZjQ8BCPMFjIOHJ6X8P4ZeRi w==;
X-CSE-ConnectionGUID: h4oxKpQwQyiWFlKpdnF6ZQ==
X-CSE-MsgGUID: 5beD3LIZQTy/C/11/uq8hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="43599897"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="43599897"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 07:46:28 -0700
X-CSE-ConnectionGUID: ykj32fBQRzi0LRqYJw7MRw==
X-CSE-MsgGUID: xm2GJq6IT6616FbB98+a3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="146326808"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 07:46:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Uma Shankar <uma.shankar@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI 4/9] drm/i915/hotplug: convert hotplug debugfs to struct
 intel_display
Date: Thu, 20 Mar 2025 16:46:00 +0200
Message-Id: <b1cbf64d366ca97005f9b139e85d8a32b460623a.1742481923.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742481923.git.jani.nikula@intel.com>
References: <cover.1742481923.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Pass struct intel_display as the cookie to debugfs functions.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 9bde28ce1979..7683b3ce124d 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -1202,8 +1202,8 @@ bool intel_hpd_schedule_detection(struct intel_display *display)
 
 static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)
 {
-	struct drm_i915_private *dev_priv = m->private;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = m->private;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 
 	/* Synchronize with everything first in case there's been an HPD
@@ -1225,8 +1225,8 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *file,
 					loff_t *offp)
 {
 	struct seq_file *m = file->private_data;
-	struct drm_i915_private *dev_priv = m->private;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = m->private;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 	unsigned int new_threshold;
 	int i;
@@ -1287,8 +1287,7 @@ static const struct file_operations i915_hpd_storm_ctl_fops = {
 
 static int i915_hpd_short_storm_ctl_show(struct seq_file *m, void *data)
 {
-	struct drm_i915_private *dev_priv = m->private;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = m->private;
 
 	seq_printf(m, "Enabled: %s\n",
 		   str_yes_no(display->hotplug.hpd_short_storm_enabled));
@@ -1308,8 +1307,8 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
 					      size_t len, loff_t *offp)
 {
 	struct seq_file *m = file->private_data;
-	struct drm_i915_private *dev_priv = m->private;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = m->private;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 	char *newline;
 	char tmp[16];
@@ -1363,12 +1362,11 @@ static const struct file_operations i915_hpd_short_storm_ctl_fops = {
 void intel_hpd_debugfs_register(struct intel_display *display)
 {
 	struct drm_minor *minor = display->drm->primary;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	debugfs_create_file("i915_hpd_storm_ctl", 0644, minor->debugfs_root,
-			    i915, &i915_hpd_storm_ctl_fops);
+			    display, &i915_hpd_storm_ctl_fops);
 	debugfs_create_file("i915_hpd_short_storm_ctl", 0644, minor->debugfs_root,
-			    i915, &i915_hpd_short_storm_ctl_fops);
+			    display, &i915_hpd_short_storm_ctl_fops);
 	debugfs_create_bool("i915_ignore_long_hpd", 0644, minor->debugfs_root,
 			    &display->hotplug.ignore_long_hpd);
 }
-- 
2.39.5

