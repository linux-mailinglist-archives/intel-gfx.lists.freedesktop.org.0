Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCE386A82A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 07:01:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 461E410E2AC;
	Wed, 28 Feb 2024 06:01:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hMKusskW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7503810E2AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 06:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709100068; x=1740636068;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=71XBdu9cZh6Bvwv7UFqxEsa/wulVwiV3VDrK3vLtrfk=;
 b=hMKusskWKny3V4LqX+obXs5ea4oQhcsDSbbbMRRgoZ1GgBK0VIX8nHuj
 Atux+2fnRVQzR0N4LqMbk9D30wLn1YacxQ29vrEDGknQ7qMa0QSqGRVJo
 B8aUtYmj7ICB/0y5shZPJaoY4NqEglJ8NbeHpVmGPLd/2MrEW8NbYracf
 yV/jBNOQxX3vXwTNiI9vEH7bXDaVdNyXt0hiGWylhh4627VOUy1iemoFH
 d67O4z3ckWWHWkOVSLacPJD0LcJQ8H8/y3Axi23V4VokzGOBrJdic4SBI
 4VYS/YcRQ7mXIwCCi3QCo9pelFSA3HMcaHd8BLpSAS3ZDKdxySDMPsTrr Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="6432422"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="6432422"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 22:01:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="30505153"
Received: from bhanu-nuclab.iind.intel.com ([10.145.169.172])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 22:01:05 -0800
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Bhanuprakash Modem <bhanuprakash.modem@intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [V2 1/2] drm/i915/drrs: Refactor CPU transcoder DRRS check
Date: Wed, 28 Feb 2024 11:25:02 +0530
Message-ID: <20240228055502.2857819-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240227123833.2799647-1-bhanuprakash.modem@intel.com>
References: <20240227123833.2799647-1-bhanuprakash.modem@intel.com>
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

Rename cpu_transcoder_has_drrs() to intel_cpu_transcoder_has_drrs()
and make it as non-static, therefore it can be re-used.

V2:
 - Move helpers to intel_drrs.[ch] (Jani)
 - Fix commit message (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 12 ++----------
 drivers/gpu/drm/i915/display/intel_drrs.c |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_drrs.h |  3 +++
 3 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6ece2c563c7a..0f3cd072a8fb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -67,6 +67,7 @@
 #include "intel_dp_tunnel.h"
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
+#include "intel_drrs.h"
 #include "intel_fifo_underrun.h"
 #include "intel_hdcp.h"
 #include "intel_hdmi.h"
@@ -2683,15 +2684,6 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
 		intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
 }
 
-static bool cpu_transcoder_has_drrs(struct drm_i915_private *i915,
-				    enum transcoder cpu_transcoder)
-{
-	if (HAS_DOUBLE_BUFFERED_M_N(i915))
-		return true;
-
-	return intel_cpu_transcoder_has_m2_n2(i915, cpu_transcoder);
-}
-
 static bool can_enable_drrs(struct intel_connector *connector,
 			    const struct intel_crtc_state *pipe_config,
 			    const struct drm_display_mode *downclock_mode)
@@ -2714,7 +2706,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 	if (pipe_config->has_pch_encoder)
 		return false;
 
-	if (!cpu_transcoder_has_drrs(i915, pipe_config->cpu_transcoder))
+	if (!intel_cpu_transcoder_has_drrs(i915, pipe_config->cpu_transcoder))
 		return false;
 
 	return downclock_mode &&
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 169ef38ff188..4743495ad41f 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -63,6 +63,15 @@ const char *intel_drrs_type_str(enum drrs_type drrs_type)
 	return str[drrs_type];
 }
 
+bool intel_cpu_transcoder_has_drrs(struct drm_i915_private *i915,
+				   enum transcoder cpu_transcoder)
+{
+	if (HAS_DOUBLE_BUFFERED_M_N(i915))
+		return true;
+
+	return intel_cpu_transcoder_has_m2_n2(i915, cpu_transcoder);
+}
+
 static void
 intel_drrs_set_refresh_rate_pipeconf(struct intel_crtc *crtc,
 				     enum drrs_refresh_rate refresh_rate)
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 8ef5f93a80ff..d0af091ed4c5 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -9,12 +9,15 @@
 #include <linux/types.h>
 
 enum drrs_type;
+enum transcoder;
 struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_connector;
 
+bool intel_cpu_transcoder_has_drrs(struct drm_i915_private *i915,
+			   enum transcoder cpu_transcoder);
 const char *intel_drrs_type_str(enum drrs_type drrs_type);
 bool intel_drrs_is_active(struct intel_crtc *crtc);
 void intel_drrs_activate(const struct intel_crtc_state *crtc_state);
-- 
2.43.0

