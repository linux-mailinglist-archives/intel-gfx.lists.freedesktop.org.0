Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDABA5CCFF
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 19:01:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9AA410E650;
	Tue, 11 Mar 2025 18:01:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QlRV975K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC25210E655;
 Tue, 11 Mar 2025 18:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741716067; x=1773252067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Oy28d1YkJxOFgWkZkxcNWAC5H1UVCHnZoskLsjoJXJo=;
 b=QlRV975KU8Pz2saRi006eiiFWiHJNvyqkiYyNXQ6R2sbcc5OFZQ53YZQ
 //H2vYSPv/PiOnrIqMxAsumc7SuE/pAl2Dm8+Oq/RYTjkcxVjmXje+zHf
 cJKRbLIc8x9mVcN4qfr6NBblN/zmYen1LV4wws4eckOCNJIKZI6knGc/i
 cZbj+8eLqcKs3Vln5Y9P4gwEGiBtfO3gPfh8DxI4CvYsNbbsck9lsqll8
 rS8IHfLOnLYZG1nodwZhx6SpbtFR/9Rgcx8hKjnnIqGMIQ1sgDysx01HR
 I2MlVegFcYoflLsl3khRntdsqJaNDkxljq73e6QumcVZYYryJtGqcBvBA Q==;
X-CSE-ConnectionGUID: SbTjAmqvT4y4ShNidE/TNg==
X-CSE-MsgGUID: O2JrEdEdSjyyrdioHf0gYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42805801"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="42805801"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:01:07 -0700
X-CSE-ConnectionGUID: nUgBaIGjTiOF5Ya6nox8yA==
X-CSE-MsgGUID: jr3+B8uYTrS73slRJhxJPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125457213"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:01:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/9] drm/i915/hotplug: convert hotplug debugfs to struct
 intel_display
Date: Tue, 11 Mar 2025 20:00:38 +0200
Message-Id: <ce4ca9d1c23557823179b844d4e7f1756185b8da.1741715981.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741715981.git.jani.nikula@intel.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
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

Pass struct intel_display as the cookie to debugfs functions.

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

