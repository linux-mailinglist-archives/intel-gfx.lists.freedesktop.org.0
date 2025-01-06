Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DA3A01E95
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 05:36:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F88610E579;
	Mon,  6 Jan 2025 04:36:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pz69PwbX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0291010E577;
 Mon,  6 Jan 2025 04:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736138187; x=1767674187;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OtRDFCqk8VNGGQtE2eV3xlsqASSNVUYnrgU6rBoMH5w=;
 b=Pz69PwbX3prpi5fsfI4xXjIwSHa0dfP2e+i/QIbCQIvi6W8X3Qc4PS3e
 5jula8AMALO/9GWB5Ov4cpvoTeUYbDiOHsuNZ817Z/SvlK7xt3a/FLIv6
 vf8mRLKpKFZ6Ex+rvo9SvvVBPk0TU4whj6iNg9Ho0Fi9yMskFxjjPVOnn
 m+TNM6J4m/hydZRGMy66KhcVBMHw1M99nZUW8gL4UakuPJYaxccTDtPxG
 JtD6enPsQJMu95b2WT/VLFHqQ0EjfltgvXoK8SRPoURDWtysv5LfXV5As
 lBoPcre9Zr3rNJ9RzgP5g92JsbppUJ0dWlQyJhNsbH6PrF8HR6mKwX+ep A==;
X-CSE-ConnectionGUID: MhvzxzCIQF2KzSaxFQgTuQ==
X-CSE-MsgGUID: HQFTJHyJR9yQnkVh2w5RlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="23880602"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="23880602"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2025 20:36:26 -0800
X-CSE-ConnectionGUID: WEm502/oS2iICr355MmXBw==
X-CSE-MsgGUID: f/iGE2f+SFeqM71swQuI6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="107306376"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa004.jf.intel.com with ESMTP; 05 Jan 2025 20:36:24 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v3 4/6] drm/i915/lobf: Add debug interface for lobf
Date: Mon,  6 Jan 2025 09:45:14 +0530
Message-Id: <20250106041516.924101-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250106041516.924101-1-animesh.manna@intel.com>
References: <20250106041516.924101-1-animesh.manna@intel.com>
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

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 51 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  6 +++
 2 files changed, 57 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 197c67363f0e..1cc0e5ed3f74 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -276,6 +276,9 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	int waketime_in_lines, first_sdp_position;
 	int context_latency, guardband;
 
+	if (intel_dp->alpm_parameters.lobf_debug & I915_LOBF_DEBUG_DISABLE)
+		return;
+
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
@@ -448,6 +451,51 @@ static int i915_edp_lobf_info_show(struct seq_file *m, void *data)
 
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
@@ -457,6 +505,9 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
 	    connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
 		return;
 
+	debugfs_create_file("i915_edp_lobf_debug", 0644, root,
+			    connector, &i915_edp_lobf_debug_fops);
+
 	debugfs_create_file("i915_edp_lobf_info", 0444, root,
 			    connector, &i915_edp_lobf_info_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f230163226d1..37f061acb204 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1800,6 +1800,12 @@ struct intel_dp {
 		u8 aux_less_wake_lines;
 		u8 silence_period_sym_clocks;
 		u8 lfps_half_cycle_num_of_syms;
+
+#define I915_LOBF_DEBUG_MODE_MASK		0x0f
+#define I915_LOBF_DEBUG_DEFAULT			0x00
+#define I915_LOBF_DEBUG_DISABLE			0x01
+#define I915_LOBF_DEBUG_FORCE_EN		0x02
+		bool lobf_debug;
 	} alpm_parameters;
 
 	u8 alpm_dpcd;
-- 
2.29.0

