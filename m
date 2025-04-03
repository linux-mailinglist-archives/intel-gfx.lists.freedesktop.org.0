Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA37A7A079
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:51:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B11F10E984;
	Thu,  3 Apr 2025 09:51:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VVhEkAeD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E878310E984;
 Thu,  3 Apr 2025 09:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743673887; x=1775209887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qu3WvYWHmneRNJYjizbdb1JHMTB97rmzXKUpu7st8/E=;
 b=VVhEkAeDayJ51s8T8oIhJWbb9XZl71+uYiOQOuy43HKJLrmI3Vk5cPsq
 FUBAV/4+Cyuu6wiLAflQEtVaOfhAtAqnSW49LbWPNYqjtD5mT1boz4sW2
 86JhLzXa8voKJckAYpENbAEc7lljJwE1YbG7qtzvvKC4bhPsDkyTjx8hv
 WReRaIrONckoKMBOR9Nraa6+0hjb1fgMgOvf3kknI+7xNkKCsiT5aLS7t
 oh8E1IgP9kqtNNHn18eA6Vb5jT9vitBrokjyGkR/ZxwIp0EASXoubUCpZ
 +5g7DdmKCbLu/uwdl7s1jHl4NCsEClI1GomRlCGTQ91GAZ1Bu1Cbya3lc g==;
X-CSE-ConnectionGUID: vplwmu9KQd2T1iXtyysbdg==
X-CSE-MsgGUID: 0S6jr7ABTfOVGag6mDoGWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="45196661"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="45196661"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:51:27 -0700
X-CSE-ConnectionGUID: WP3xNHjDSvWaHpIv93a+gg==
X-CSE-MsgGUID: /SddAKWhRbyhjZn9Qi7k0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127463796"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 03 Apr 2025 02:51:23 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 6/8] drm/i915/lobf: Add debug interface for lobf
Date: Thu,  3 Apr 2025 14:58:23 +0530
Message-Id: <20250403092825.484347-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250403092825.484347-1-animesh.manna@intel.com>
References: <20250403092825.484347-1-animesh.manna@intel.com>
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
v5:
- Remove READ_ONCE(). [Jani]
- Modify variable name to *_disable_*. [Jouni]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 32 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  1 +
 2 files changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 7ab29c5fef38..46d569df37c0 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -276,6 +276,9 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	int waketime_in_lines, first_sdp_position;
 	int context_latency, guardband;
 
+	if (intel_dp->alpm_parameters.lobf_disable_debug)
+		return;
+
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
@@ -440,6 +443,32 @@ static int i915_edp_lobf_info_show(struct seq_file *m, void *data)
 
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
@@ -449,6 +478,9 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
 	    connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
 		return;
 
+	debugfs_create_file("i915_edp_lobf_debug", 0644, root,
+			    connector, &i915_edp_lobf_debug_fops);
+
 	debugfs_create_file("i915_edp_lobf_info", 0444, root,
 			    connector, &i915_edp_lobf_info_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0b3d29d42ee2..daa5e2438c94 100644
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

