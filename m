Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 105C97D9455
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 11:56:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A7E710E96D;
	Fri, 27 Oct 2023 09:56:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FDAA10E96D
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 09:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698400572; x=1729936572;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MrgKxwWMMeOlA9BtDsmUa1wkajGDUhHK0NyqwT1KjXw=;
 b=EGqu00VSHOIFA1iiVKX1KzXpO+91GL3V5R/JI/vZtSJFcs30XMKVY63H
 DhoOIlrmsqJxFb6ONBodgpuGIVajMa1UNaS8e6IuIRT9xprqjYqOXISyZ
 4dTpuN1bKRBQp/JK3C7S6ZzPga/GZaLjnpCRhPST4q0+zYoiZQNVZsnby
 XQz0cJBtur83EIxZbs1yx4X7iH6R23Zbo3DhzTaEAciaZBV79zLdhQqyt
 BvYcREFwvoA9wXlOuiHdiyOoy7eDTzALiqAJwEDrpnUoKLXAUTo12ZULm
 N0MYBNacef8+dH4tImCz624z1AlZauceP1scz17+uhtzXkFTf+/YkxCRQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="384953774"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="384953774"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 02:56:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="1090879046"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="1090879046"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmsmga005.fm.intel.com with ESMTP; 27 Oct 2023 02:56:10 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Oct 2023 15:23:36 +0530
Message-Id: <20231027095336.3059445-3-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231027095336.3059445-1-nemesa.garg@intel.com>
References: <20231027095336.3059445-1-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2 2/2] drm/i915/display: Add darkscreen debugfs entry
 under crtc
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

v2: Addressed review comments (Jani)

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 .../gpu/drm/i915/display/intel_darkscreen.c   | 36 +++++++++++++++++++
 .../drm/i915/display/intel_display_debugfs.c  |  2 ++
 2 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.c b/drivers/gpu/drm/i915/display/intel_darkscreen.c
index 0be719c76c4e..2d0b78c4d645 100644
--- a/drivers/gpu/drm/i915/display/intel_darkscreen.c
+++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
@@ -85,3 +85,39 @@ void intel_dark_screen_disable(struct intel_crtc_state *crtc_state)
 
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
index d76f9aa0b192..48a0d802b838 100644
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
@@ -1551,6 +1552,7 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc)
 	intel_drrs_crtc_debugfs_add(crtc);
 	intel_fbc_crtc_debugfs_add(crtc);
 	hsw_ips_crtc_debugfs_add(crtc);
+	intel_darkscreen_crtc_debugfs_add(crtc);
 
 	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
 			    &i915_current_bpc_fops);
-- 
2.25.1

