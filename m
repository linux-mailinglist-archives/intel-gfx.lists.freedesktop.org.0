Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F4796BF82
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 16:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E266F10E7CD;
	Wed,  4 Sep 2024 14:03:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dg7Q7edP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FDA710E7CD
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 14:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725458584; x=1756994584;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LlI+fiLwWA58I8q8Jlt6cOMVHdY29tOTxtGS4in1Z+M=;
 b=dg7Q7edPMO2RV2MeYJhC0TJKtlBLQblDJl6m987HNdsDrn4YyYGcD1cZ
 8VOs2fb8FpnMKFvXnnsdiwaJRo7JsLBedVTLD8M39N8rqZsMf1PCoIRy8
 feN1MKXFDNnzkETj2FdOgwlo99/1lTdqgXePK8eGWXncGNetY6A1gge4e
 4dItV9OcOR5YVgSgwylA0X+e3bZNpalCCNssyhiXlAQ9XnquA3SUb/aaW
 kj/L5qs2Ab9yV9YW0Rn31EC7/qwRisyIWLJlwyytaojwKAm7DyyWz2lQY
 o6Eax0BhgSstIOecATRE6OLMhSMRrZOdASNtEb81qHsLhDFXCy5kQ9MTD w==;
X-CSE-ConnectionGUID: 6Mk5WW2JQfiNkm7hsK5G8g==
X-CSE-MsgGUID: PVr2i20gRz2DakfDj4IFNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="34784240"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="34784240"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 07:02:58 -0700
X-CSE-ConnectionGUID: 9521jwnaR1GCMIu3OpcSAw==
X-CSE-MsgGUID: 5X3f0+yNTem3CHHNKe+azg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="66012903"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 07:02:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/4] drm/i915/pps: add intel_pps_dp_init() for all DP init
Date: Wed,  4 Sep 2024 17:02:31 +0300
Message-Id: <4a6d30e8dc37ada323b0ca242abc4cf80e3e703e.1725458428.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725458428.git.jani.nikula@intel.com>
References: <cover.1725458428.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We need to track PPS also for non-eDP usage on VLV/CHV. Add new
intel_pps_dp_init() for initializing the related parts, hiding the PPS
pipe details inside PPS code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  |  5 +----
 drivers/gpu/drm/i915/display/intel_pps.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_pps.h |  2 ++
 3 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a1fcedfd404b..d1c02de97f5b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6843,8 +6843,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		return false;
 
 	intel_dp->reset_link_params = true;
-	intel_dp->pps.pps_pipe = INVALID_PIPE;
-	intel_dp->pps.active_pipe = INVALID_PIPE;
 
 	/* Preserve the current hw state. */
 	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
@@ -6871,8 +6869,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	intel_dp_set_default_sink_rates(intel_dp);
 	intel_dp_set_default_max_sink_lane_count(intel_dp);
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		intel_dp->pps.active_pipe = vlv_active_pipe(intel_dp);
+	intel_pps_dp_init(intel_dp);
 
 	intel_dp_aux_init(intel_dp);
 	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index feddc30e3375..2b71e1bf519f 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1625,6 +1625,19 @@ void intel_pps_encoder_reset(struct intel_dp *intel_dp)
 	}
 }
 
+/* Call on all DP, not just eDP */
+void intel_pps_dp_init(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	intel_dp->pps.pps_pipe = INVALID_PIPE;
+	intel_dp->pps.active_pipe = INVALID_PIPE;
+
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		intel_dp->pps.active_pipe = vlv_active_pipe(intel_dp);
+}
+
 bool intel_pps_init(struct intel_dp *intel_dp)
 {
 	intel_wakeref_t wakeref;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 0c5da83a559e..343798461f49 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -42,6 +42,8 @@ void intel_pps_wait_power_cycle(struct intel_dp *intel_dp);
 
 bool intel_pps_init(struct intel_dp *intel_dp);
 void intel_pps_init_late(struct intel_dp *intel_dp);
+
+void intel_pps_dp_init(struct intel_dp *intel_dp);
 void intel_pps_encoder_reset(struct intel_dp *intel_dp);
 void intel_pps_reset_all(struct intel_display *display);
 
-- 
2.39.2

