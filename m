Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDDFA8B053
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 08:29:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE4B10E83D;
	Wed, 16 Apr 2025 06:29:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AknK0aeV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D4B410E83A
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 06:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744784994; x=1776320994;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gwZ50pXEifEkr848GbwVXdapzs/JCFSEHahnFekRU+s=;
 b=AknK0aeVPWw29Xpclxw4cIMxBSTs9RSw8seHqAfrSEt1U3g+klkk2uAE
 OfL22dbu+Nw/Y4Co4ta3AmdI4R/k7iZ6iN3Zrly9IBm8Euh3Z5qzGgKhr
 sOLMepqLyCL6XxsZNCqsFcy2Kem06a8mKQUQMbFwKqacwIwOfkYgs6EvX
 kfgW7uoxs7DqwBdHNn6YCW0M+BHBxgRMuabDTTg8Al3GRoXBjjfJVfz7k
 G/aRgCL6uHXakRHFSbZYrpKiz2VMH3L0dDgBeWzbbKoPxxj8aZQfaYcy/
 yxqld+hjHOVUHGi8DjhAmFY0lMTMzCrsw6uDindlKglov2F41zWjLXwdZ g==;
X-CSE-ConnectionGUID: 5vs5KlSvQhOmG+/VU9BrCw==
X-CSE-MsgGUID: ETZYX4BVTZe+QhZlqyoENg==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="71710255"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="71710255"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 23:29:54 -0700
X-CSE-ConnectionGUID: zpAZi5pSSqyv//HyrQ0qnw==
X-CSE-MsgGUID: fuqfBqLYTXKi07zQu0fiuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="130880214"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 15 Apr 2025 23:29:53 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 7/8] drm/i915/dsb: Add pipedmc dc balance enable/disable
Date: Wed, 16 Apr 2025 11:57:36 +0530
Message-ID: <20250416062737.1766703-8-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add function to control DC balance enable/disable bit via DSB.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  5 +++++
 2 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 98f80a6c63e8..17835b297f6d 100644
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
@@ -1362,3 +1363,18 @@ void intel_dmc_debugfs_register(struct intel_display *display)
 	debugfs_create_file("i915_dmc_info", 0444, minor->debugfs_root,
 			    display, &intel_dmc_debugfs_status_fops);
 }
+
+void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	intel_de_write_dsb(display, dsb, PIPEDMC_DCB_CTL(crtc->pipe),
+			   PIPEDMC_ADAPTIVE_DCB_ENABLE);
+}
+
+void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	intel_de_write_dsb(display, dsb, PIPEDMC_DCB_CTL(crtc->pipe), 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index c78426eb4cd5..74dcd142f5b1 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -10,8 +10,10 @@
 
 enum pipe;
 struct drm_printer;
+struct intel_crtc;
 struct intel_display;
 struct intel_dmc_snapshot;
+struct intel_dsb;
 
 void intel_dmc_init(struct intel_display *display);
 void intel_dmc_load_program(struct intel_display *display);
@@ -30,4 +32,7 @@ void intel_dmc_update_dc6_allowed_count(struct intel_display *display, bool star
 
 void assert_dmc_loaded(struct intel_display *display);
 
+void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *crtc);
+void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc *crtc);
+
 #endif /* __INTEL_DMC_H__ */
-- 
2.48.1

