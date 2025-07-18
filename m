Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C894B0A1ED
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 13:29:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D99310E974;
	Fri, 18 Jul 2025 11:29:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GPQabwLN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3B2510E97E
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 11:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752838172; x=1784374172;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PTvUv7rtz78ktBFi5kigyhUM5YKp8eXgwVL5OcN/OOU=;
 b=GPQabwLNvIMadyWIuKFOyFjInTohWKTEKlP7+yBIETXmcFCgKgy8IEIC
 tBnCoHn8R/AeTfu9uOt7WwnwcOXCJ1adEHNbfcgKYaiM1zUOVCqQEPJRQ
 S8QfNE0Np82jdCN1/X0W/mkifF8KxgSJVx8rs1zuNwZNJdIgdGNkcT/C3
 FFoT6//X6dG62KaHtnrnOl02Gz/s/qiuvytc5oIQAQnx7a36ANZ/XRFyD
 SttvxckLNEzXDNiUOnVpxOX+ksQm6uaCvtkgBEPxLze7kmh0SQEDbmfsd
 LHt+YWs219fMXJ9OxGrQ3F+1wOi6TpNFK6wiFH+liPDTdhQqqWC3zRiGv A==;
X-CSE-ConnectionGUID: e0Yhi+SwR82qLnkOhy8/OQ==
X-CSE-MsgGUID: CQ0KR8i2RR2mOqVQPya12w==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="80574122"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="80574122"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 04:29:31 -0700
X-CSE-ConnectionGUID: C+v5Lc81QHSZSLIi0+rZdg==
X-CSE-MsgGUID: 4BB3cNH8RZK5kSSOvCTC5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="163669047"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.63])
 by orviesa005.jf.intel.com with SMTP; 18 Jul 2025 04:29:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Jul 2025 14:29:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2] drm/i915/dsi: Don't set/read the DSI C clock divider on GLK
Date: Fri, 18 Jul 2025 14:29:28 +0300
Message-ID: <20250718112928.27669-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

GLK doesn't use the DSI C clock at all, no need to program
the divider for it. Bspec even says: "Do not program this field".

However looks like some firmware versions program this and
some do not. In order to avoid bogus fastset mismatches
we should also filter it out during readout.

v2: Clear all the DSI C clock bits during readout (Jani)
    Adjust platform checks for new style, and add
    has_dsic_clock() while at it.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index d42b61e6f076..b52463fdec47 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -262,6 +262,11 @@ void vlv_dsi_pll_disable(struct intel_encoder *encoder)
 	vlv_cck_put(display->drm);
 }
 
+static bool has_dsic_clock(struct intel_display *display)
+{
+	return display->platform.broxton;
+}
+
 bool bxt_dsi_pll_is_enabled(struct intel_display *display)
 {
 	bool enabled;
@@ -284,7 +289,7 @@ bool bxt_dsi_pll_is_enabled(struct intel_display *display)
 	 * causes a system hang.
 	 */
 	val = intel_de_read(display, BXT_DSI_PLL_CTL);
-	if (display->platform.geminilake) {
+	if (!has_dsic_clock(display)) {
 		if (!(val & BXT_DSIA_16X_MASK)) {
 			drm_dbg_kms(display->drm,
 				    "Invalid PLL divider (%08x)\n", val);
@@ -358,6 +363,8 @@ u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
 	u32 pclk;
 
 	config->dsi_pll.ctrl = intel_de_read(display, BXT_DSI_PLL_CTL);
+	if (!has_dsic_clock(display))
+		config->dsi_pll.ctrl &= ~BXT_DSIC_16X_MASK;
 
 	pclk = bxt_dsi_pclk(encoder, config);
 
@@ -514,7 +521,9 @@ int bxt_dsi_pll_compute(struct intel_encoder *encoder,
 	 * Spec says both have to be programmed, even if one is not getting
 	 * used. Configure MIPI_CLOCK_CTL dividers in modeset
 	 */
-	config->dsi_pll.ctrl = dsi_ratio | BXT_DSIA_16X_BY2 | BXT_DSIC_16X_BY2;
+	config->dsi_pll.ctrl = dsi_ratio | BXT_DSIA_16X_BY2;
+	if (has_dsic_clock(display))
+		config->dsi_pll.ctrl |= BXT_DSIC_16X_BY2;
 
 	/* As per recommendation from hardware team,
 	 * Prog PVD ratio =1 if dsi ratio <= 50
-- 
2.49.0

