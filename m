Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B17DA42193
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8914110E560;
	Mon, 24 Feb 2025 13:42:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bsER6BgB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80BAC10E16F;
 Mon, 24 Feb 2025 08:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740385864; x=1771921864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=elte8tu8H+pnwhB4iHya55quWjD3aVcoWGZoci5ile8=;
 b=bsER6BgBh8pVLq462TdEEqgA08U/IFRDBzHXI4pQsjijpBbTzIEtrymi
 XldPA4LKxzFBJ7AIC85ekZFfYjyFRHFHlVfp/QybNXnaBCffkHGKxd+72
 GGeDiGiSYunQTid3R8gzBo7DkuCd/D4tZ6JJAchVIZE5yVYKAlDG4nZFr
 TMPtYU3Hz5JcOVaUIFp0jpjDoSYUqkZky/nxd7FSrETJg5L3N2DU9wCfj
 zIlzs/DmeoaFWS1eFROYs3TXKkFGFzwNTeuYaI1GoK9A5dsQUH6Oxcyrg
 PbTCcygMHLTCdx3yXHJGjV3x67W6V3V0EWnGWvgIpzCKRErbtPzmb/JKW Q==;
X-CSE-ConnectionGUID: vo3KpufpTi6awo4kmn244Q==
X-CSE-MsgGUID: fjsXGEmgSIG+k6KSHZRA6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="41250281"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="41250281"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 00:31:04 -0800
X-CSE-ConnectionGUID: 16MWtfkfQX2CBdeRsceGEg==
X-CSE-MsgGUID: XVFxfl35R5yyGhJzpcK+Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116630777"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 24 Feb 2025 00:31:01 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 5/8] drm/i915/lobf: Add debug interface for lobf
Date: Mon, 24 Feb 2025 13:38:44 +0530
Message-Id: <20250224080847.326350-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250224080847.326350-1-animesh.manna@intel.com>
References: <20250224080847.326350-1-animesh.manna@intel.com>
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

Add an interface in debugfs which will help in debugging LOBF
feature.

v1: Initial version.
v2:
- Remove FORCE_EN flag. [Jouni]
- Change prefix from I915 to INTEL. [Jani]
- Use u8 instead of bool for lobf-debug flag. [Jani]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 51 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  5 ++
 2 files changed, 56 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 83719ee1721c..5c70677ac3c0 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -276,6 +276,9 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	int waketime_in_lines, first_sdp_position;
 	int context_latency, guardband;
 
+	if (intel_dp->alpm_parameters.lobf_debug & INTEL_LOBF_DEBUG_DISABLE)
+		return;
+
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
@@ -449,6 +452,51 @@ static int i915_edp_lobf_info_show(struct seq_file *m, void *data)
 
 DEFINE_SHOW_ATTRIBUTE(i915_edp_lobf_info);
 
+static int
+i915_edp_lobf_debug_get(void *data, u64 *val)
+{
+	struct intel_display *display = data;
+	struct intel_encoder *encoder;
+	int ret = -ENODEV;
+
+	for_each_intel_dp(display->drm, encoder) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		if (!intel_dp_is_edp(intel_dp))
+			return ret;
+
+		// TODO: split to each edp transcoder.
+		*val = READ_ONCE(intel_dp->alpm_parameters.lobf_debug);
+		ret = 0;
+	}
+
+	return ret;
+}
+
+static int
+i915_edp_lobf_debug_set(void *data, u64 val)
+{
+	struct intel_display *display = data;
+	struct intel_encoder *encoder;
+	int ret = -ENODEV;
+
+	for_each_intel_dp(display->drm, encoder) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		if (!intel_dp_is_edp(intel_dp))
+			return ret;
+
+		// TODO: split to each edp transcoder.
+		intel_dp->alpm_parameters.lobf_debug = val;
+	}
+
+	return ret;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(i915_edp_lobf_debug_fops,
+			i915_edp_lobf_debug_get, i915_edp_lobf_debug_set,
+			"%llu\n");
+
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
@@ -458,6 +506,9 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
 	    connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
 		return;
 
+	debugfs_create_file("i915_edp_lobf_debug", 0644, root,
+			    connector, &i915_edp_lobf_debug_fops);
+
 	debugfs_create_file("i915_edp_lobf_info", 0444, root,
 			    connector, &i915_edp_lobf_info_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b78721c451b8..b6ec9a8fadd9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1808,6 +1808,11 @@ struct intel_dp {
 		u8 aux_less_wake_lines;
 		u8 silence_period_sym_clocks;
 		u8 lfps_half_cycle_num_of_syms;
+
+#define INTEL_LOBF_DEBUG_MODE_MASK		0x0f
+#define INTEL_LOBF_DEBUG_DEFAULT		0x00
+#define INTEL_LOBF_DEBUG_DISABLE		0x01
+		u8 lobf_debug;
 	} alpm_parameters;
 
 	u8 alpm_dpcd;
-- 
2.29.0

