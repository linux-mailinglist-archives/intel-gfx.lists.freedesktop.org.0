Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2FFAB4ADE
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:19:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E65B210E526;
	Tue, 13 May 2025 05:19:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nFjIrYTp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EE5210E522;
 Tue, 13 May 2025 05:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747113551; x=1778649551;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HT/sW3R/+Q9TGTqp0b43zeufYEh2jetmPzav17I8hgo=;
 b=nFjIrYTpag056oaBjM2GqiTbUOqvz/SbYfOBct4tz65Aef6MSq0eCSkG
 ek5sbFdkzpoIWFNlxv3CNqVLKuWdvPa4aL/1VgG+PW+ocZBiNV5MjHmpT
 c85xfxGX+U8d00bDpaHuieHnvHYqRWCFYggYSdOZwU/jUbUgg3Qxm/1js
 txqRt9PMxkHbXsNCzNZxM1ccc0GYiIKFUKITW3mjHO45BCYU7Oy63z6Ft
 LWVQUG7K6bUU5KPkf9Qm4Q/jgyTP8YStZB3aTA7omXRnqHLd0RbvWrqgu
 jdkhiJWwr7Ji8wjs1ZrxnQYRpmkten26zTz+v95sYrF9x5U4ePa+R6okN w==;
X-CSE-ConnectionGUID: avvXeXiHTBKGDlriF4KGSQ==
X-CSE-MsgGUID: MK0/7Y59TeGhrBasDkPNFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="51597863"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="51597863"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:19:11 -0700
X-CSE-ConnectionGUID: /kdS04RkSpmkmF4LDj9iHg==
X-CSE-MsgGUID: H5sBGQ3NR8ijU3RVegQmaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137506213"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 12 May 2025 22:19:09 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v5 12/17] drm/i915/dsb: Add pipedmc dc balance enable/disable
Date: Tue, 13 May 2025 10:46:55 +0530
Message-ID: <20250513051700.507389-13-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add function to control DC balance enable/disable bit via DSB.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  5 +++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index b58189d24e7e..593f5140475b 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -30,6 +30,7 @@
 #include "intel_de.h"
 #include "intel_display_rpm.h"
 #include "intel_display_power_well.h"
+#include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dmc_regs.h"
 #include "intel_step.h"
@@ -1403,3 +1404,20 @@ void intel_dmc_debugfs_register(struct intel_display *display)
 	debugfs_create_file("i915_dmc_info", 0444, minor->debugfs_root,
 			    display, &intel_dmc_debugfs_status_fops);
 }
+
+void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	enum pipe pipe = crtc->pipe;
+
+	intel_de_write_dsb(display, dsb, PIPEDMC_DCB_CTL(pipe),
+			   PIPEDMC_ADAPTIVE_DCB_ENABLE);
+}
+
+void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	enum pipe pipe = crtc->pipe;
+
+	intel_de_write_dsb(display, dsb, PIPEDMC_DCB_CTL(pipe), 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index bd1c459b0075..48869f19079a 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -9,9 +9,11 @@
 #include <linux/types.h>
 
 enum pipe;
+struct intel_crtc;
 struct drm_printer;
 struct intel_display;
 struct intel_dmc_snapshot;
+struct intel_dsb;
 
 void intel_dmc_init(struct intel_display *display);
 void intel_dmc_load_program(struct intel_display *display);
@@ -34,4 +36,7 @@ void intel_dmc_update_dc6_allowed_count(struct intel_display *display, bool star
 
 void assert_dmc_loaded(struct intel_display *display);
 
+void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *crtc);
+void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc *crtc);
+
 #endif /* __INTEL_DMC_H__ */
-- 
2.48.1

