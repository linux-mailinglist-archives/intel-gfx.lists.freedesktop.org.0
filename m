Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BC7A9E823
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 08:23:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 589D610E3B0;
	Mon, 28 Apr 2025 06:23:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F/hTDYE7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E40B910E39C;
 Mon, 28 Apr 2025 06:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745821400; x=1777357400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z9k/sPTxxrzzj5botb9qXG/fwl1mmblcCCsxRfpqKZ4=;
 b=F/hTDYE7J+JeX+ekEfbs250Ti0gLbA/dHu0inlmcxBKuOdv6LB4Fov5N
 8rmPJSvbYMh+V/ucS9tkcDSigzLkjUoamdIlgxroYQY8B+fJ/+fF4lVdW
 IXwPAFf3aS9MpMg1UGBjHDIznlP+7ivhs9r37NCeYlCtJxR0q8cxvAx1W
 B+IuS4jv0jG617e25MMUenMwkjCivzdiiSwy4tekq4pPLg960uTSP3ZXH
 wN9x1O8WHGa2mpmCajye7n8rdRMgsdjd59Oo3MqFXAuv3Bis6qvABVGGN
 8pDNl1JoG0RuFtqB7rwUMhxxl26qk0Fky5qI/LbKFS7iREgaGCKtpLVoY Q==;
X-CSE-ConnectionGUID: GVkUAi58SYa4R2iMsy2dFQ==
X-CSE-MsgGUID: vLB3TjJiTbSMuVuxNtZFFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51204193"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51204193"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:23:19 -0700
X-CSE-ConnectionGUID: QKtRSqGYQ6KYEN6ynKjs5Q==
X-CSE-MsgGUID: WofMpoGaQdawSc5n5UBheA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="138231239"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa005.fm.intel.com with ESMTP; 27 Apr 2025 23:23:18 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v3 12/15] drm/i915/dsb: Add pipedmc dc balance enable/disable
Date: Mon, 28 Apr 2025 11:50:55 +0530
Message-ID: <20250428062058.2811655-13-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dmc.c | 24 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  5 +++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index b58189d24e7e..c5e27facaacd 100644
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
@@ -1403,3 +1404,26 @@ void intel_dmc_debugfs_register(struct intel_display *display)
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

