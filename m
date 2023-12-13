Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F798810D00
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 10:08:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6CA110E75F;
	Wed, 13 Dec 2023 09:08:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6DC710E74E
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 09:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702458522; x=1733994522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ps5yutj6+RFEYvJ+nfDMAn3K+Ni6dSajQIIW6756pxc=;
 b=VR6rS2f5t1DUMMn1E6/O/wxBrkrA8K41m0iAx59MjkwxYddGsY3CRjNF
 SX5n5B3KRclypA/jTPMdEIUue+tJj/lh7xuHVRQg6AW6LgHPuO56hbd5z
 kaQGdHs4vbIGkz9yEueH1/GokudZp8AkpdS1RKr+q+3QxRLu1GvqRAwiS
 qBXQ/0gwjaPJ3f6W/04mFe1+MaFlzCZFimLZLi++vozLc56gZ8Y+Ar2to
 yKhZv2LQSorNzdnAbdlF/U2wqZk3bKf3roveq9oJiC1mvGhnSUkrODBUi
 /od/gJbAM2dltCvd4Ng/MG6c2jaUi4HCHfVmak+vo2BtlyIA1Mt7nVHVl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="379930514"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="379930514"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:08:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="864553920"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="864553920"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Dec 2023 01:08:32 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 2/2] drm/i915/display: Add darkscreen debugfs entry under
 crtc
Date: Wed, 13 Dec 2023 14:36:41 +0530
Message-Id: <20231213090641.1153030-3-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231213090641.1153030-1-nemesa.garg@intel.com>
References: <20231213090641.1153030-1-nemesa.garg@intel.com>
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

This is to set the enable/disable status.

v2: Addressed review comments [Jani]

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 .../gpu/drm/i915/display/intel_darkscreen.c   | 36 +++++++++++++++++++
 .../drm/i915/display/intel_display_debugfs.c  |  2 ++
 2 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.c b/drivers/gpu/drm/i915/display/intel_darkscreen.c
index 7c42988af354..6342f5ed9360 100644
--- a/drivers/gpu/drm/i915/display/intel_darkscreen.c
+++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
@@ -93,3 +93,39 @@ void intel_dark_screen_disable(struct intel_crtc_state *crtc_state)
 
 	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder), 0);
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
+	if (val)
+		intel_dark_screen_enable(crtc_state);
+	else
+		intel_dark_screen_disable(crtc_state);
+
+	return 0;
+}
+
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
index f05b52381a83..036b331cdad2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -16,6 +16,7 @@
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_crtc_state_dump.h"
+#include "intel_darkscreen.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_power.h"
 #include "intel_display_power_well.h"
@@ -1541,6 +1542,7 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc)
 	intel_drrs_crtc_debugfs_add(crtc);
 	intel_fbc_crtc_debugfs_add(crtc);
 	hsw_ips_crtc_debugfs_add(crtc);
+	intel_darkscreen_crtc_debugfs_add(crtc);
 
 	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
 			    &i915_current_bpc_fops);
-- 
2.25.1

