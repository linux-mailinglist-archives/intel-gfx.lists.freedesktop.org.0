Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 369DCA69983
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 20:37:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B479910E57D;
	Wed, 19 Mar 2025 19:37:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VDO2e5qO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A65CB10E57C;
 Wed, 19 Mar 2025 19:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742413068; x=1773949068;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XGS/zKtZSFX70jTDZUGQR05x9GVoysAPMbYkYCsgUnU=;
 b=VDO2e5qOwl/EnQvJblaIr/SlajIHgZacXyNF4pI5+gE7ILisxbo2+fxG
 y5sPnY+qORxOyAIWOH94FYMqa+R1BDmolcx2ffJM0bzf6awAIuDs9k8WA
 QdJmg4de+Z2O2BRORZPWr0hWrelCejkL4tI7yP7uqIlTG2obCPgJN3oYQ
 +nsntTVVwJFKMvGAugQ+SsLcwB8OxRT+8pjqfzxWgmYYtyBp2GatqNlC7
 fNt1A4fA9FTN8NBpG1tB8Z3YIW9Qmbn3WOw91J9ANNH3Q6CxufeVjhM6S
 bQVeUOiPU+HcRUPZn85UfnufmepIyf9mLMvXzU+WtpyU7bjiakH6AZRXJ g==;
X-CSE-ConnectionGUID: ajWvr2s8SFqP8GBJmhK4Lw==
X-CSE-MsgGUID: fpvLYcxZS8qJvErCooeC2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="31203410"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="31203410"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 12:37:48 -0700
X-CSE-ConnectionGUID: k3g6r+71S5eBIwVpdS79SQ==
X-CSE-MsgGUID: huViEuTLR1OX0BRmV9qwCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="123241776"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 19 Mar 2025 12:37:46 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v6 5/8] drm/i915/lobf: Add debug interface for lobf
Date: Thu, 20 Mar 2025 00:45:05 +0530
Message-Id: <20250319191508.2751216-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250319191508.2751216-1-animesh.manna@intel.com>
References: <20250319191508.2751216-1-animesh.manna@intel.com>
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
v3:
- Use intel_connector instead of display. [Jani]
- Remove edp connector check as it was already present
in caller function. [Jani]
- Remove loop of searching edp encoder which is directly
accessible from intel_connector. [Jani]
v4:
- Simplify alpm debug to bool instead of bit-mask. [Jani]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 32 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  1 +
 2 files changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 5df1253a6b6c..dc24772743b8 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -276,6 +276,9 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	int waketime_in_lines, first_sdp_position;
 	int context_latency, guardband;
 
+	if (intel_dp->alpm_parameters.lobf_enable_debug)
+		return;
+
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
@@ -436,6 +439,32 @@ static int i915_edp_lobf_info_show(struct seq_file *m, void *data)
 
 DEFINE_SHOW_ATTRIBUTE(i915_edp_lobf_info);
 
+static int
+i915_edp_lobf_debug_get(void *data, u64 *val)
+{
+	struct intel_connector *connector = data;
+	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
+
+	*val = READ_ONCE(intel_dp->alpm_parameters.lobf_enable_debug);
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
+	intel_dp->alpm_parameters.lobf_enable_debug = val;
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
@@ -445,6 +474,9 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
 	    connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
 		return;
 
+	debugfs_create_file("i915_edp_lobf_debug", 0644, root,
+			    connector, &i915_edp_lobf_debug_fops);
+
 	debugfs_create_file("i915_edp_lobf_info", 0444, root,
 			    connector, &i915_edp_lobf_info_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index bef54b23273f..0b109aac5306 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1812,6 +1812,7 @@ struct intel_dp {
 		u8 aux_less_wake_lines;
 		u8 silence_period_sym_clocks;
 		u8 lfps_half_cycle_num_of_syms;
+		bool lobf_enable_debug;
 	} alpm_parameters;
 
 	u8 alpm_dpcd;
-- 
2.29.0

