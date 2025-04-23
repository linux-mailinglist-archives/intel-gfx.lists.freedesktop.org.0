Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E06A98661
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 11:47:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C88310E665;
	Wed, 23 Apr 2025 09:47:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FQZ5gUbr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4AED10E661;
 Wed, 23 Apr 2025 09:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745401636; x=1776937636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HsKlON1kEG5kJs3aMractfij8mZeDn7K4FdVb9ikxV4=;
 b=FQZ5gUbrX1Qp7kXca/VJnry/nXmPVhIYqJi0A/0ucsixHvMgWlysZ4Hr
 QkYX49z6qMZo0cBh7eyghHek9KXn4TQ/qogsOr1n/UmkPU/vAInmoPa5c
 Gc0oX6dMq3vYDM2G2fg/NwgDwiMWP+mYS5iL3oWsJcvphE3gqy78ball5
 9BW5GMA6i6vSYIewnTfXIVYQK3Y1Bnq7PMDIQ56ubJh4f0380MvI9ObTC
 NfYM22TDGXQfeiVjFRrScrJ2JL1Uv88yn9p2NF072AQ8eqw6jdU8/klXX
 TJ30iXovtc+5kHsGG/yjXPQ6y9cBc3Kbm2rCxBnBCl49S86o3LaGLjMkk A==;
X-CSE-ConnectionGUID: XAd4NgRuSBCXRPOgnkRHQg==
X-CSE-MsgGUID: l5RzxevQT8S3kHGqr/H8BA==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="58357985"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="58357985"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:47:00 -0700
X-CSE-ConnectionGUID: cAbxmvY3TAe+I5ZynLlozg==
X-CSE-MsgGUID: XSXegXWiS8KT5zWdoDXjjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="132811186"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 23 Apr 2025 02:46:58 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v10 07/11] drm/i915/lobf: Add debug interface for lobf
Date: Wed, 23 Apr 2025 14:53:30 +0530
Message-Id: <20250423092334.2294483-8-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250423092334.2294483-1-animesh.manna@intel.com>
References: <20250423092334.2294483-1-animesh.manna@intel.com>
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

Add an interface in debugfs which will help in debugging LOBF
feature.

v1: Initial version.
v2:
- Remove FORCE_EN flag. [Jouni]
- Change prefix from I915 to INTEL. [Jani]
- Use u8 instead of bool for lobf-debug flag. [Jani]
v3:
- Use intel_connector instead of display. [Jani]
- Remove edp connector check as it was already present
in caller function. [Jani]
- Remove loop of searching edp encoder which is directly
accessible from intel_connector. [Jani]
v4:
- Simplify alpm debug to bool instead of bit-mask. [Jani]
v5:
- Remove READ_ONCE(). [Jani]
- Modify variable name to *_disable_*. [Jouni]
v6: Improved debug print. [Jouni]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 34 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  1 +
 2 files changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index d38e729682ce..269768c95a3d 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -278,6 +278,11 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	int waketime_in_lines, first_sdp_position;
 	int context_latency, guardband;
 
+	if (intel_dp->alpm_parameters.lobf_disable_debug) {
+		drm_dbg_kms(display->drm, "LOBF is disabled by debug flag\n");
+		return;
+	}
+
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
@@ -476,6 +481,32 @@ static int i915_edp_lobf_info_show(struct seq_file *m, void *data)
 
 DEFINE_SHOW_ATTRIBUTE(i915_edp_lobf_info);
 
+static int
+i915_edp_lobf_debug_get(void *data, u64 *val)
+{
+	struct intel_connector *connector = data;
+	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
+
+	*val = intel_dp->alpm_parameters.lobf_disable_debug;
+
+	return 0;
+}
+
+static int
+i915_edp_lobf_debug_set(void *data, u64 val)
+{
+	struct intel_connector *connector = data;
+	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
+
+	intel_dp->alpm_parameters.lobf_disable_debug = val;
+
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(i915_edp_lobf_debug_fops,
+			i915_edp_lobf_debug_get, i915_edp_lobf_debug_set,
+			"%llu\n");
+
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
@@ -485,6 +516,9 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
 	    connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
 		return;
 
+	debugfs_create_file("i915_edp_lobf_debug", 0644, root,
+			    connector, &i915_edp_lobf_debug_fops);
+
 	debugfs_create_file("i915_edp_lobf_info", 0444, root,
 			    connector, &i915_edp_lobf_info_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e558f52c3039..389dd033c2d0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1812,6 +1812,7 @@ struct intel_dp {
 		u8 aux_less_wake_lines;
 		u8 silence_period_sym_clocks;
 		u8 lfps_half_cycle_num_of_syms;
+		bool lobf_disable_debug;
 	} alpm_parameters;
 
 	u8 alpm_dpcd;
-- 
2.29.0

