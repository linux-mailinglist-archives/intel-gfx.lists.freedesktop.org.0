Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C2A318DA8
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 15:53:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35546EE43;
	Thu, 11 Feb 2021 14:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B1966EE43
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 14:53:14 +0000 (UTC)
IronPort-SDR: X3kMn1d4X+IGH9VAp259zlBHQaBOmt+RKuBrPYsM7FMTaZdk8Ko/suMT7N4+I3QYMVtO4DLqWq
 GNSMeg5tlwFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="178741457"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="178741457"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:53:13 -0800
IronPort-SDR: RiifOFG6yjz5FdeWyiAFVj5FTfciKNE3ZxBmF06EXgt/6dLK5CLvTckSCHl2FUqXG+TsWAIIlJ
 ICLKjObDiBCQ==
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="510872168"
Received: from hblancoa-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.99])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:53:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Feb 2021 16:52:18 +0200
Message-Id: <d4d6e9e6b62923d3915cb69b94bcf4b8795db749.1613054234.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1613054234.git.jani.nikula@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 8/9] drm/i915/edp: modify fixed and downclock
 modes for MSO
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
Cc: jani.nikula@intel.com, Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the case of MSO (Multi-SST Operation), the EDID contains the timings
for a single panel segment. We'll want to hide the fact from userspace,
and expose modes that span the entire display.

Don't modify the EDID, as the userspace should not use that for
modesetting, only modify the actual modes.

v3: Use pixel overlap if available.

v2: Rename intel_dp_mso_mode_fixup -> intel_edp_mso_mode_fixup

Cc: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 29 +++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 48e65b9a967a..5d5b16f70ed2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3516,6 +3516,31 @@ static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
 	}
 }
 
+static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
+				     struct drm_display_mode *mode)
+{
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	int n = intel_dp->mso_link_count;
+	int overlap = intel_dp->mso_pixel_overlap;
+
+	if (!mode || !n)
+		return;
+
+	mode->hdisplay = (mode->hdisplay - overlap) * n;
+	mode->hsync_start = (mode->hsync_start - overlap) * n;
+	mode->hsync_end = (mode->hsync_end - overlap) * n;
+	mode->htotal = (mode->htotal - overlap) * n;
+	mode->clock *= n;
+
+	drm_mode_set_name(mode);
+
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] using generated MSO mode: ",
+		    connector->base.base.id, connector->base.name);
+	drm_mode_debug_printmodeline(mode);
+}
+
 static void intel_edp_mso_init(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
@@ -6493,6 +6518,10 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	if (fixed_mode)
 		downclock_mode = intel_dp_drrs_init(intel_connector, fixed_mode);
 
+	/* multiply the mode clock and horizontal timings for MSO */
+	intel_edp_mso_mode_fixup(intel_connector, fixed_mode);
+	intel_edp_mso_mode_fixup(intel_connector, downclock_mode);
+
 	/* fallback to VBT if available for eDP */
 	if (!fixed_mode)
 		fixed_mode = intel_panel_vbt_fixed_mode(intel_connector);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
