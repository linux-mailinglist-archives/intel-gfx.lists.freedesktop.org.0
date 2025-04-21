Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D411A953BF
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 17:51:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F88B10E270;
	Mon, 21 Apr 2025 15:51:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QiIfullV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 364BA10E031;
 Mon, 21 Apr 2025 15:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745250682; x=1776786682;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OYsUgVZdr5hFwtT5NdQS9WIWULz1RcYmL1FojwKUPxk=;
 b=QiIfullV7gATq1SSzYXXfAgoPCvFZR0fB0tsjqHkpZTwG/OOiKw4B+E2
 eVG4BKqCcc2o2XrMEGrgBljwvOn2SVV4vIN7ZfMhetxpr8pLtDLCpXVO5
 P1ZQCi/Owir92Cx9Cp0Sx0EMXubDRZa5nccZvGKke0E+tlxgCnQhiWqJj
 1+MpGvrZR52CO/Rki0JwHxQjC6jhpFGOXsABW12wq0ZUgnKhDXiKkGw1F
 fjwt9iMztZDaX0Cf+ghmvMp2ivb2iWZ/sBTGOiSOJ0F7g+xa+Rz/KfX83
 OF94p2s9PTSIGyFyzrubRb4s0Q7ZlNxVlHh9iBEr0uI1o7aflnnmmiPrE w==;
X-CSE-ConnectionGUID: r+0TF80kSROpxASnGNDs7w==
X-CSE-MsgGUID: ir3+fVXbR/ywDEHA5avsGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="57434079"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="57434079"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 08:51:22 -0700
X-CSE-ConnectionGUID: bTaQdFi0QcOEO2uK5FG6BA==
X-CSE-MsgGUID: SYNIgSDxSxeRQ7mYbPSb5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="162725640"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 21 Apr 2025 08:51:20 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v2 09/13] drm/i915/dsb: Add pipedmc dc balance enable/disable
Date: Mon, 21 Apr 2025 21:18:56 +0530
Message-ID: <20250421154900.2095202-10-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_dmc.c      | 24 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h      |  5 ++++
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  9 +++++++
 3 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index ff2b97a752b1..e32599a4f68f 100644
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
@@ -1355,3 +1356,26 @@ void intel_dmc_debugfs_register(struct intel_display *display)
 	debugfs_create_file("i915_dmc_info", 0444, minor->debugfs_root,
 			    display, &intel_dmc_debugfs_status_fops);
 }
+
+void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct intel_crtc_state *crtc_state =
+		to_intel_crtc_state(crtc->base.state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	intel_de_write_dsb(display, dsb,
+			   PIPEDMC_DCB_CTL(display, cpu_transcoder),
+			   PIPEDMC_ADAPTIVE_DCB_ENABLE);
+}
+
+void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct intel_crtc_state *crtc_state =
+		to_intel_crtc_state(crtc->base.state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	intel_de_write_dsb(display, dsb,
+			   PIPEDMC_DCB_CTL(display, cpu_transcoder), 0);
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
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index 39e4f70005ab..6788afb816ea 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -174,4 +174,13 @@
 #define _PIPEDMC_DCB_VMAX_F			0x555A8
 #define PIPEDMC_DCB_VMAX(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VMAX_A)
 
+#define _PIPEDMC_DCB_CTL_A			0x5F1A0
+#define _PIPEDMC_DCB_CTL_B			0x5F5A0
+#define _PIPEDMC_DCB_CTL_C			0x5F9A0
+#define _PIPEDMC_DCB_CTL_D			0x5FDA0
+#define _PIPEDMC_DCB_CTL_E			0x551A0
+#define _PIPEDMC_DCB_CTL_F			0x555A0
+#define PIPEDMC_DCB_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_CTL_A)
+#define PIPEDMC_ADAPTIVE_DCB_ENABLE		REG_BIT(31)
+
 #endif /* __INTEL_DMC_REGS_H__ */
-- 
2.48.1

