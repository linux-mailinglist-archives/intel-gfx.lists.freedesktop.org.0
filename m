Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BC6A98663
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 11:47:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 997E710E65F;
	Wed, 23 Apr 2025 09:47:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V1ck6FW8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1335B10E661;
 Wed, 23 Apr 2025 09:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745401638; x=1776937638;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AoLr1sDVNRFEwtRQGTXjWCTZB6hoDMB8u1Y8M58FU14=;
 b=V1ck6FW8xiuSlpd5hd9CgLkzGWAq5aD02E2hu5KWXIAIEgnvXh7JOr+6
 v2nLxKnD4zfXlZbNhSSK7AV2HARycHxywk3Sw15cg8l6zhEXnkMqSrad+
 6dBOEMZ8kBbwS5T6kZ8T4BBpeWGvHDqxuIScTeUNqvoaCUhUjxPdVTivp
 Anp0C7Y9Bk7o9trehMSkDC+PLCQEJNEkrvL+gf/LMGAghQasdX/goPNgs
 Yf2G4i2XkRhZk0zgfwlJ/jP1tP+6di876UZUg9bb1l4+tV8xPGOqoeI1i
 aRGdvNi8N7V8e0Y0IttkHxCVbjWYcJb1Sc8cID0iwOtiIjjr27+JGRC2P A==;
X-CSE-ConnectionGUID: uGMQXlImT0i/Svcl8F3o6Q==
X-CSE-MsgGUID: ST9aY5ekRCCyEBBlKswuog==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="58358019"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="58358019"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:47:11 -0700
X-CSE-ConnectionGUID: ur0RshZgSZOBXncwuA8zwA==
X-CSE-MsgGUID: DDJW0RGJQBKalLwBGKYE5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="132811236"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 23 Apr 2025 02:47:09 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v10 10/11] drm/i915/alpm: Add intel_psr_need_alpm() to
 simplify alpm check
Date: Wed, 23 Apr 2025 14:53:33 +0530
Message-Id: <20250423092334.2294483-11-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250423092334.2294483-1-animesh.manna@intel.com>
References: <20250423092334.2294483-1-animesh.manna@intel.com>
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

Simplify the alpm check which will be used multiple places like
source configuration, sink enablement etc.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 5 +++--
 drivers/gpu/drm/i915/display/intel_psr.c  | 6 ++++++
 drivers/gpu/drm/i915/display/intel_psr.h  | 1 +
 3 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 24b666e6d8f9..c4b6da2e6ccf 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -13,6 +13,7 @@
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
+#include "intel_psr.h"
 #include "intel_psr_regs.h"
 
 bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp)
@@ -331,8 +332,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	enum port port = dp_to_dig_port(intel_dp)->base.port;
 	u32 alpm_ctl;
 
-	if (DISPLAY_VER(display) < 20 ||
-	    (!crtc_state->has_sel_update && !intel_dp_is_edp(intel_dp)))
+	if (DISPLAY_VER(display) < 20 || (!intel_psr_needs_alpm(intel_dp, crtc_state) &&
+					  !crtc_state->has_lobf))
 		return;
 
 	mutex_lock(&intel_dp->alpm_parameters.lock);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 43ed166007eb..1c5ec3f0b066 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3949,3 +3949,9 @@ void intel_psr_connector_debugfs_add(struct intel_connector *connector)
 		debugfs_create_file("i915_psr_status", 0444, root,
 				    connector, &i915_psr_status_fops);
 }
+
+bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state)
+{
+	return intel_dp_is_edp(intel_dp) && (crtc_state->has_sel_update ||
+					     crtc_state->has_panel_replay);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index a43a374cff55..cabaec334640 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -69,5 +69,6 @@ void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
 					  struct intel_crtc *crtc);
 void intel_psr_connector_debugfs_add(struct intel_connector *connector);
 void intel_psr_debugfs_register(struct intel_display *display);
+bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PSR_H__ */
-- 
2.29.0

