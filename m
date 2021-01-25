Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2385302746
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 16:53:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 235D36E249;
	Mon, 25 Jan 2021 15:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 839506E247
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 15:53:22 +0000 (UTC)
IronPort-SDR: EqpMJLyrm8PHQ3iIsCg7/NhYVg6AIkwG92WtwK59uq6zJaN8ben/ZitsRnRcbFDn13mF4pkdWV
 rIO1AiN1PBwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="159522792"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="159522792"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:53:20 -0800
IronPort-SDR: wcpxnqTpSLNM3xAGx0onQTjQyXB2k5nqM/OMHCfR39j/X2vmiz3M8YxWEupDeLJ+QIMjlcuazH
 A8RDJPVemn1A==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="409747252"
Received: from grassena-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:53:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 17:52:32 +0200
Message-Id: <96bb408b6991171ebe68cde092a2cbbce2ddc18f.1611589818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1611589818.git.jani.nikula@intel.com>
References: <cover.1611589818.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/9] drm/i915/edp: modify fixed and downclock
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

v2: Rename intel_dp_mso_mode_fixup -> intel_edp_mso_mode_fixup

Cc: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 30 +++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 23f98e8dd7df..397c7f21b8f3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3512,6 +3512,32 @@ static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
 	}
 }
 
+static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
+				     struct drm_display_mode *mode)
+{
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	int n = intel_dp->mso_link_count;
+
+	if (!mode || !n)
+		return;
+
+	/*
+	 * FIXME: Does pixel overlap affect the computation? The below should be
+	 * fine for 0 overlap.
+	 */
+	mode->clock *= n;
+	mode->hdisplay *= n;
+	mode->hsync_start *= n;
+	mode->hsync_end *= n;
+	mode->htotal *= n;
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
@@ -6480,6 +6506,10 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
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
