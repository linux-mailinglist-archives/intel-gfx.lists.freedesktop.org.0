Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD13882B3EA
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 18:21:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E81710E074;
	Thu, 11 Jan 2024 17:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A86D10E074
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 17:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704993693; x=1736529693;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WWWhQxKtJenmSWkFt981NvFjuqNWyi5Ic0erKsDvjik=;
 b=MvEjPpYPGMRcBHDWBZnTLziEvDQXQm2dWEReUq40aJ+6AO/KjPhrW6Cy
 idx4SPiLOgCc6CQxF8Vv5qC6/JQFEbe76hjPOgXUUNyTMtulNoo0Ymw+N
 yDIR5EmdRTvRqk6FrLITvQXTOY68K/scwTnWBeAmYpKrmkYa0/0+Kbkmy
 UqsYGg4AeusxptiVTE5oSHGWY6cHS7lqwE/IgnQib6iSNlf9d64KcVHbu
 xoSu+1WXD5PZW1/uXxRQwD2EwY9UjuZdLByGfmM2pR4qNjxkAv70azCmG
 udb0vsv7//3bwu9k7nuX3zI3T3WzZ6aa5YzmDGsGg0R996X0/J5vL6xck A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5657731"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; 
   d="scan'208";a="5657731"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 09:21:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="853030690"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="853030690"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 09:21:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/6] drm/i915/bios: move i915_vbt debugfs to intel_bios.c
Date: Thu, 11 Jan 2024 19:21:14 +0200
Message-Id: <5e14a9559b6916022b506e5eb8d943783dc627a2.1704992868.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1704992868.git.jani.nikula@intel.com>
References: <cover.1704992868.git.jani.nikula@intel.com>
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

All things VBT should be placed in intel_bios.c.

While at it, shove in a FIXME comment about VBT possibly originating
from other places than opregion.

Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 25 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h     |  2 ++
 .../drm/i915/display/intel_display_debugfs.c  | 13 +---------
 3 files changed, 28 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 0e61e424802e..cf8e6f7bd490 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3656,3 +3656,28 @@ void intel_bios_for_each_encoder(struct drm_i915_private *i915,
 	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node)
 		func(i915, devdata);
 }
+
+static int intel_bios_vbt_show(struct seq_file *m, void *unused)
+{
+	struct drm_i915_private *i915 = m->private;
+	struct intel_opregion *opregion = &i915->display.opregion;
+
+	/*
+	 * FIXME: VBT might originate from other places than opregion, and then
+	 * this would be incorrect.
+	 */
+	if (opregion->vbt)
+		seq_write(m, opregion->vbt, opregion->vbt_size);
+
+	return 0;
+}
+
+DEFINE_SHOW_ATTRIBUTE(intel_bios_vbt);
+
+void intel_bios_debugfs_register(struct drm_i915_private *i915)
+{
+	struct drm_minor *minor = i915->drm.primary;
+
+	debugfs_create_file("i915_vbt", 0444, minor->debugfs_root,
+			    i915, &intel_bios_vbt_fops);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 96673dc707e7..41bfb009d4b0 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -280,4 +280,6 @@ void intel_bios_for_each_encoder(struct drm_i915_private *i915,
 				 void (*func)(struct drm_i915_private *i915,
 					      const struct intel_bios_encoder_data *devdata));
 
+void intel_bios_debugfs_register(struct drm_i915_private *i915);
+
 #endif /* _INTEL_BIOS_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d951edb36687..9ee7e0738059 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -97,17 +97,6 @@ static int i915_opregion(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static int i915_vbt(struct seq_file *m, void *unused)
-{
-	struct drm_i915_private *i915 = node_to_i915(m->private);
-	struct intel_opregion *opregion = &i915->display.opregion;
-
-	if (opregion->vbt)
-		seq_write(m, opregion->vbt, opregion->vbt_size);
-
-	return 0;
-}
-
 static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -1067,7 +1056,6 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_frontbuffer_tracking", i915_frontbuffer_tracking, 0},
 	{"i915_sr_status", i915_sr_status, 0},
 	{"i915_opregion", i915_opregion, 0},
-	{"i915_vbt", i915_vbt, 0},
 	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},
 	{"i915_power_domain_info", i915_power_domain_info, 0},
 	{"i915_display_info", i915_display_info, 0},
@@ -1105,6 +1093,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 				 ARRAY_SIZE(intel_display_debugfs_list),
 				 minor->debugfs_root, minor);
 
+	intel_bios_debugfs_register(i915);
 	intel_cdclk_debugfs_register(i915);
 	intel_dmc_debugfs_register(i915);
 	intel_fbc_debugfs_register(i915);
-- 
2.39.2

