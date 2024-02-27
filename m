Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF428690D4
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 13:44:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40A8410E48D;
	Tue, 27 Feb 2024 12:44:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LwqDCuN6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0270110E48D
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 12:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709037881; x=1740573881;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pyZ/PDXHY8O+ecYtBRG97twGvBMVHi6Bb93VvlFEpw8=;
 b=LwqDCuN65XRYqLrg6FeJGtSVC1BiupxolUoz41ErHoLTF6nFG3cwqCMy
 pXty5rGt5zx/phPAMTfvNvvafj289ynuHDzTbM81sdcBnnrct813zVXZk
 KdA8/Q9gi0Ey2ey4pr6hdInsQ76fTtSrenyDf9Sq58gi0peS1Hb0bfss/
 eNa/0OZ584LKoRF3EQH8UKP1UEaqR3LyqOZ726yrg2jbGISvglkfC0W9V
 AhARt3FugkZXe0yMTJ9gyi0pN8rsSsT03Er5I9uNBUM5IsN3o9jjr9udt
 VPiZQwAL7oBIQ8toBRD2TzGoZovVT4mKc+ezPUCcf3258jUo/dG2XdMA8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3294932"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="3294932"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 04:44:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6995610"
Received: from bhanu-nuclab.iind.intel.com ([10.145.169.172])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 04:44:38 -0800
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Bhanuprakash Modem <bhanuprakash.modem@intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 1/2] drm/i915/display/drrs: Refactor CPU transcoder DRRS check
Date: Tue, 27 Feb 2024 18:08:32 +0530
Message-ID: <20240227123833.2799647-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.43.0
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

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c      | 11 +----------
 3 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 00ac65a14029..2210d3bb2e0a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2582,6 +2582,15 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
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
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index f4a0773f0fca..0dc39a8a517e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -484,6 +484,8 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    enum transcoder cpu_transcoder,
 				    struct intel_link_m_n *m_n);
+bool intel_cpu_transcoder_has_drrs(struct drm_i915_private *i915,
+				    enum transcoder cpu_transcoder);
 int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
 int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config);
 enum intel_display_power_domain intel_port_to_power_domain(struct intel_digital_port *dig_port);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e13121dc3a03..5c3c0449e866 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2689,15 +2689,6 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
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
@@ -2720,7 +2711,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 	if (pipe_config->has_pch_encoder)
 		return false;
 
-	if (!cpu_transcoder_has_drrs(i915, pipe_config->cpu_transcoder))
+	if (!intel_cpu_transcoder_has_drrs(i915, pipe_config->cpu_transcoder))
 		return false;
 
 	return downclock_mode &&
-- 
2.43.0

