Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E53F7D68E4
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 12:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5C7B10E63E;
	Wed, 25 Oct 2023 10:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C07910E62F
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 10:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698230228; x=1729766228;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xhb2iRZR1ft8RqOjtfXp8G2rGX64HIUluEMSlQT5ads=;
 b=SOafeUJRLZls5gMv7uTgXYD3Hjh1RgYU+1JdOU0O9t315pHGA+2IxbrS
 ViTk5d7Z8YAhcuHBoukiKVKLU9Poxj0ASh9grFmDRYORex7BHl3B9BgfV
 648rQFLRQocPTspEkmrIx6SjDTct3FjYD63cKpXde64iT/TqHOwIA0GvT
 kuL6JXbJkVVlmRzXvYvn19DfHqlyual8sQW8tYAdPKo91/UigdKPkCA8h
 XG4IRlZq81DfThT67NK5F/Tww/+6QQVEDaGJNxXj/G4+TKd8t2cTzQEtl
 3xFpguJZMSmEc3jKdOsreyclFidwrCFaPupMGQl0Ufb2UF9LUZ3JZQywv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="43857"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="43857"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:30:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="882409907"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="882409907"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orsmga004.jf.intel.com with ESMTP; 25 Oct 2023 03:30:01 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Oct 2023 15:57:34 +0530
Message-Id: <20231025102734.2783492-3-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231025102734.2783492-1-nemesa.garg@intel.com>
References: <20231025102734.2783492-1-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add the darkscreen debugfs under
 crtc
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

Add debugfs entry for darkscreen to know the status
bpc and timer value .

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 .../gpu/drm/i915/display/intel_darkscreen.c   | 38 +++++++++++++++++++
 .../drm/i915/display/intel_display_debugfs.c  |  2 +
 2 files changed, 40 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.c b/drivers/gpu/drm/i915/display/intel_darkscreen.c
index ef68dbc7a296..c6490c16fdb5 100644
--- a/drivers/gpu/drm/i915/display/intel_darkscreen.c
+++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
@@ -67,3 +67,41 @@ void dark_screen_enable(struct intel_crtc_state *crtc_state)
 	intel_de_rmw(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder), 0, DARK_SCREEN_DETECT |
 		       DARK_SCREEN_DONE);
 }
+
+static int intel_darkscreen_debugfs_status_get(void *data, u64 *val)
+{
+	struct intel_crtc *crtc = data;
+
+	*val = crtc->dark_screen.enable;
+
+	return 0;
+}
+
+static int intel_darkscreen_debugfs_status_set(void *data, u64 val)
+{
+	struct intel_crtc *crtc = data;
+	struct intel_crtc_state *crtc_state;
+
+	crtc->dark_screen.enable = val;
+
+	crtc_state = to_intel_crtc_state(crtc->base.state);
+
+	if (crtc_state)
+		dark_screen_enable(crtc_state);
+
+	return 0;
+}
+
+/*
+ * Check the status whether the darkscreen
+ * is enabled or not.
+ */
+DEFINE_DEBUGFS_ATTRIBUTE(intel_darkscreen_debugfs_status_fops,
+			 intel_darkscreen_debugfs_status_get,
+			 intel_darkscreen_debugfs_status_set, "%llu\n");
+
+void intel_darkscreen_crtc_debugfs_add(struct intel_crtc *crtc)
+{
+	debugfs_create_file("i915_darkscreen_status", 0644, crtc->base.debugfs_entry,
+			    crtc, &intel_darkscreen_debugfs_status_fops);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 2836826f8c05..27a6141eab3e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -33,6 +33,7 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_wm.h"
+#include "intel_darkscreen.h"
 
 static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
 {
@@ -1539,6 +1540,7 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc)
 	intel_drrs_crtc_debugfs_add(crtc);
 	intel_fbc_crtc_debugfs_add(crtc);
 	hsw_ips_crtc_debugfs_add(crtc);
+	intel_darkscreen_crtc_debugfs_add(crtc);
 
 	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
 			    &i915_current_bpc_fops);
-- 
2.25.1

