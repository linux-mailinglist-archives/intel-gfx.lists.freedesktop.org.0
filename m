Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0B0AF0A05
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 06:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1166E10E2AB;
	Wed,  2 Jul 2025 04:45:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OAcBpRkj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C271C10E27F;
 Wed,  2 Jul 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751431554; x=1782967554;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zczYWATbtajgpsXAjE+hZJFsImrZ744GjQ/oU1lVZ5g=;
 b=OAcBpRkjZwndUVQQCcq2cPYfbDfsRoKmJPLJgsfZhRx9D7nhSkfyBjOr
 Z4nNFYXqNZMPMR77481VoNVZ6Nril5UKsPuWIuVvpbjTwPXatU5tY38HP
 30257KBSPmdUKbaxVahA6t49TOKJRJHcI8tDG6U7te6o4iIYbxGgQe1cp
 poVgdNBcCZWph9prsGfq/VDTC+m9XtK7OY2/f7zo9LMyL3K+TFRtAI2N8
 wCqtHwp/BCaVvs5kshiLEJiBLtfN7akE6yv6sIew6kkagrMFATVXocKE8
 2jBkE58QHlHwHhMWKAm27xLDDH7QEWsQIQN3FSnqZPD/Qb0iKYYXDOlWH A==;
X-CSE-ConnectionGUID: 7fpDzPywS2OLBbDNhZVBVA==
X-CSE-MsgGUID: kUPhC0EHQWGr/6ifcSKWvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="57492522"
X-IronPort-AV: E=Sophos;i="6.16,280,1744095600"; d="scan'208";a="57492522"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 21:45:53 -0700
X-CSE-ConnectionGUID: NZzDUqkCTkWVFdoiVQEPnw==
X-CSE-MsgGUID: lpBbwPtjQ4mmkO96b98abA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,280,1744095600"; d="scan'208";a="158344088"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa003.jf.intel.com with ESMTP; 01 Jul 2025 21:45:52 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH] drm/i915/display: Add upper limit check for pixel clock
Date: Wed,  2 Jul 2025 09:57:54 +0530
Message-Id: <20250702042754.3335382-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

Add upper limit check for pixel clock by platform. Limits don't apply
when DSC is enabled.

For the currently supported versions of HDMI, pixel clock is already
limited to 600Mhz so nothing needs to be done there as of now.

BSpec: 49199, 68912

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c      |  3 +++
 3 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 456fc4b04cda..bf0faff50c2e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7902,6 +7902,18 @@ void intel_setup_outputs(struct intel_display *display)
 	drm_helper_move_panel_connectors_to_head(display->drm);
 }
 
+int intel_dotclock_limit(struct intel_display *display)
+{
+	if (DISPLAY_VERx100(display) == 3002)
+		return 937500;
+	else if (DISPLAY_VER(display) >= 30)
+		return 1350000;
+	else if (DISPLAY_VER(display) >= 13)
+		return 1200000;
+	else
+		return 1100000;
+}
+
 static int max_dotclock(struct intel_display *display)
 {
 	int max_dotclock = display->cdclk.max_dotclk_freq;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 37e2ab301a80..9ad896a15ba7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -486,6 +486,7 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    struct intel_link_m_n *m_n);
 int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
 int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config);
+int intel_dotclock_limit(struct intel_display *display);
 enum intel_display_power_domain intel_port_to_power_domain(struct intel_digital_port *dig_port);
 enum intel_display_power_domain
 intel_aux_power_domain(struct intel_digital_port *dig_port);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f48912f308df..3ff2beeed801 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1507,6 +1507,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
+	if (target_clock > (intel_dotclock_limit(display) * num_joined_pipes) && !dsc)
+		return MODE_CLOCK_HIGH;
+
 	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
 		return MODE_CLOCK_HIGH;
 
-- 
2.25.1

