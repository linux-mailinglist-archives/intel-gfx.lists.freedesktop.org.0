Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B49FA49D58
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 16:25:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9977D10ECDA;
	Fri, 28 Feb 2025 15:25:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cqWf93ol";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65DDD10ECD9;
 Fri, 28 Feb 2025 15:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740756336; x=1772292336;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YuluBeh5jttpFKaM7jWCKcGRURDEQgI1yXAUo/om04Q=;
 b=cqWf93ol8Cf5fwhY0sU+k1eVCEGDnrPoEB3KfqRyC/AuO+tnyaXSLAb3
 YBcEf77xQrfxJH04/vyEPOhyncTN8YxQimaSPw2P6u5lSM9Q56lIzdwGl
 O6Hc7gP5s2fDc6nkugnqjuSc19IwvS7D1O15fePU8VVaKw8Tq5htQGPI1
 o3+ikN4G0hnQJR2a53zHKKVfiNWNUYtta86jpK7ZyaIyvcD2ZMDvKXDGE
 +kBESRbxqges0P8l/b+1TDdaKyxP5ZDfLpmnoAGYN2o/V8fzcpHt7Vp7M
 Y2toNukFlSHP+J6JlBfn4aKXPY9/Dcd2lADrBAKtPwXczN7Q7xLMCr1rm Q==;
X-CSE-ConnectionGUID: iOTxnAuaTTahBL3Pf/FS7w==
X-CSE-MsgGUID: qSuPtC9uTGKap5Ce9XOTvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="41535573"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="41535573"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 07:25:36 -0800
X-CSE-ConnectionGUID: Bhnp8mcISuOHRWRu06gLVA==
X-CSE-MsgGUID: 4ZZyYhk8SBu7CctLhsBlUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122598675"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa005.jf.intel.com with ESMTP; 28 Feb 2025 07:25:34 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, william.tseng@intel.com,
 jani.nikula@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI panels
Date: Fri, 28 Feb 2025 20:55:32 +0530
Message-Id: <20250228152531.403026-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Some DSI panel vendors end up hardcoding PPS params because of which
it does not listen to the params sent from the source. We use the
default config tables for DSI panels when using DSC 1.1 rather than
calculate our own rc parameters.

--v2
-Use intel_crtc_has_type [Jani]

--v4
-Use a function to check Mipi dsi dsc 1.1 condition [Ankit]
-Add documentation for using this condition [Ankit]
-Rebase

--v5
-Pass only the crtc_state [Jani]
-Fixup the comment [Jani]
-Check for dsc major version [Jani]
-Use co-developed-by tag [Jani]

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719
Co-developed-by: William Tseng <william.tseng@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 3ed64c17bdff..04ba9f6b7ea2 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -259,6 +259,15 @@ static int intel_dsc_slice_dimensions_valid(struct intel_crtc_state *pipe_config
 	return 0;
 }
 
+static bool is_dsi_dsc_1_1(struct intel_crtc_state *crtc_state)
+{
+	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
+
+	return vdsc_cfg->dsc_version_major == 1 &&
+		vdsc_cfg->dsc_version_minor == 1 &&
+		intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI);
+}
+
 int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 {
 	struct intel_display *display = to_intel_display(pipe_config);
@@ -317,8 +326,14 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	 * From XE_LPD onwards we supports compression bpps in steps of 1
 	 * upto uncompressed bpp-1, hence add calculations for all the rc
 	 * parameters
+	 *
+	 * We also don't want to calculate all rc parameters when the panel
+	 * is MIPI DSI and it's using DSC 1.1. The reason being that some
+	 * DSI panels vendors have hardcoded PPS params in the VBT causing
+	 * the parameters sent from the source to be ignore. This causes a
+	 * noise in the display.
 	 */
-	if (DISPLAY_VER(display) >= 13) {
+	if (DISPLAY_VER(display) >= 13 && !is_dsi_dsc_1_1(pipe_config)) {
 		calculate_rc_params(vdsc_cfg);
 	} else {
 		if ((compressed_bpp == 8 ||
-- 
2.34.1

